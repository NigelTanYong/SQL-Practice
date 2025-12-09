# Write your MySQL query statement below
SELECT a1.machine_id, ROUND(AVG(a2.timestamp-a1.timestamp),3) as processing_time
FROM Activity a1
INNER JOIN Activity a2
ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
#bottom two conditions set that a1 will be start and a2 is for end
AND a1.activity_type='start'
AND a2.activity_type = 'end'
GROUP BY a1.machine_id;