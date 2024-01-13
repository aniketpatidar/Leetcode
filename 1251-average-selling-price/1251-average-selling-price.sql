# Write your MySQL query statement below
SELECT
    p.product_id,
    COALESCE(ROUND(SUM(u.units * p.price) / NULLIF(SUM(u.units), 0), 2), 0) AS average_price
FROM
    Prices p
LEFT JOIN
    UnitsSold u ON p.product_id = u.product_id AND u.purchase_date BETWEEN start_date AND end_date
GROUP BY
    p.product_id;