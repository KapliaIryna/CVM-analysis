SELECT
    COUNT(
        CASE
            WHEN Recency > 90 THEN 1
        END
    ) as Churned_Customers,
    COUNT(CustomerID) as Total_Customers
FROM rfm_raw;