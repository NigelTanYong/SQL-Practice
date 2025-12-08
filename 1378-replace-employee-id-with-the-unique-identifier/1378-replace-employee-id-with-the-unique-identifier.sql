# Write your MySQL query statement below
SELECT e.name, euni.unique_id
FROM Employees e
LEFT JOIN EmployeeUNI euni
on e.id = euni.id;