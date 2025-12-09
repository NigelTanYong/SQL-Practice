# Write your MySQL query statement below
SELECT v.customer_id, COUNT(v.customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
on v.visit_id = t.visit_id
#condition keeps only visits that have no matching transaction
WHERE t.visit_id IS NULL
GROUP BY v.customer_id