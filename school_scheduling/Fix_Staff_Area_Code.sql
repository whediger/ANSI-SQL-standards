
UPDATE  Staff
SET     StfZipCode = '360'
WHERE   StaffID
        IN(SELECT Stf.StaffID
          FROM (SELECT S.StaffID
                FROM   Staff AS S
                WHERE  S.StfZipCode IN('98270', '98271'))
                AS Stf);
