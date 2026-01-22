SELECT
    CustomerID,
    MAX(InvoiceDate) as LastPurchaseDate,
    COUNT(DISTINCT InvoiceNo) as Frequency,
    SUM(Quantity * UnitPrice) as Monetary
FROM transactions
WHERE
    CustomerID IS NOT NULL
GROUP BY
    CustomerID;