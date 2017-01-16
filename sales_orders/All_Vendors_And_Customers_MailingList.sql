
SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS MailingName,
        Customers.CustStreetAddress, Customers.CustCity,
        Customers.CustState, Customers.CustZipCode
FROM Customers UNION SELECT Vendors.VendName,
        Vendors.VendStreetAddress, Vendors.VendCity,
        Vendors.VendState, Vendors.VendZipCode
FROM Vendors;
