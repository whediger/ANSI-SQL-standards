

SELECT  Vendors.VendName,
        ROUND(AVG(Product_Vendors.DaysToDeliver)) AS Avg_Days_To_Deliver
FROM Vendors
INNER JOIN Product_Vendors
  ON  Vendors.VendorID =
      Product_Vendors.VendorID
GROUP BY Vendors.VendName
HAVING  Avg_Days_To_Deliver
        > (SELECT AVG(PV.DaysToDeliver)
          FROM Product_Vendors AS PV);
