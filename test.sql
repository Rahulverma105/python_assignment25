use company;

-- 2 write an sql query to fetch the list of employees with same salary;
SELECT Salary, GROUP_CONCAT(first_name SEPARATOR ',') AS worker
from worker
group by salary
having count(*)>1;
-- 3 write an sql query to fetch intecting records of two tables.
select w1.worker_id, w1.first_name, w2.first_name
from worker w1
INNER JOIN workerdetails w2
ON w1.worker_id =w2.worker_id
where w1.worker_id = w2.worker_id;

-- 4 write an sql query to show reords from one table that another table does not have.
SELECT w1.worker_id, w1.first_name
from worker w1
LEFT JOIN  workerdetails w2
on w1.worker_id = w2.worker_id
where w2.worker_id IS NULL;

-- 5 write a sql query tp clone a new table from another table.
create table worker1 like worker;
insert into
worker1
select * from worker;
select * from worker1;

-- 6 write an sql query to fetch duplicate records having matching data  in some fields of a table.
SELECT first_name, department
FROM worker
GROUP BY first_name, department
HAVING Count(*) > 1;


