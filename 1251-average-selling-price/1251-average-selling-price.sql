# Write your MySQL query statement below
#IFNULL used to check if the units is 0, return 0 to prevent division by 0 error
SELECT p.product_id, IFNULL(ROUND(SUM(p.price * u.units) / SUM(u.units),2),0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND  u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id