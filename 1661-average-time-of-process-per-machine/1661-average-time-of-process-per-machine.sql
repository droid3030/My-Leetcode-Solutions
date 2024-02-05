/* Write your T-SQL query statement below */
-- SELECT machine_id,
-- AVG(timestamp)
-- WHERE activity_type LIKE 'start' - WHERE activity_type LIKE 'end'
-- / COUNT(process_id)
-- AS processing_time
-- SELECT
-- MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_timestamp,
-- MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_timestamp

SELECT a1.machine_id, round(avg(a2.timestamp-a1.timestamp), 3) as processing_time 
from Activity AS a1
join Activity AS a2 
on a1.machine_id=a2.machine_id and a1.process_id=a2.process_id
--this below is the interesting line, never seen this before, uses
--copy of the table and multiple ANDs during the join to connect and set matching tables for both 
--enum values for activity_type
and a1.activity_type='start' and a2.activity_type='end'
group by a1.machine_id
