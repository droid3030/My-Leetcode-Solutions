/* Write your T-SQL query statement below */
SELECT actor_id, director_id 
from ActorDirector 
group by actor_id, director_id
having COUNT(timestamp) >= 3 
