# Write your MySQL query statement below
SELECT p.product_name, s.year, s.price
#From Sales s because we want the table to follow sales table 
FROM Sales s
LEFT JOIN Product p
ON p.product_id = s.product_id;