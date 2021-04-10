****Activity o1****

SELECT Last_Name, Hire_Date
FROM emps
where year(Hire_date) = 1994

****Activity o2****

SELECT Last_Name, Salary, Commission_pct
FROM emps
WHERE Commission_pct is not NULL
ORDER by Salary and Commission_pct desc;

****Activity o3****

SELECT Last_Name
FROM emps
WHERE Last_Name LIKE "%a%e%"


****Activity o4****

SELECT Last_Name, d.Department_id, Department_Name
from emps e join depts d ON (e.Department_Id= d.Department_id)


****Activity o5****

SELECT e.last_name, d.Department_Name, d.Location_id, l.City
FROM emps e,depts d,locs l WHERE e.Department_Id= d.Department_id AND d.Location_id= l.Location_id
AND e.commission_pct IS NOT NULL;


****Activity o6****

SELECT e.Last_Name, e.Job_Id, d.Department_id, d.Department_Name
From empS e join depts d on (d.Department_id= e.Department_Id)
join locs l on (d.Location_id= l.Location_id)
where l.City="Toronto";

****Activity o7****

SELECT e.Last_Name, e.Salary, e.Commission_pct
from emps e
WHERE e.Commission_pct is not null
ORDER by Salary and Commission_pct desc;


****Activity o8***

SELECT e.Last_Name AS "Employee", e.Employee_Id as "Emp#", f.Last_Name as "Manager", f.Employee_Id AS "Mgr#"
from emps e join emps f ON (e.Manager_id= f.Employee_Id)
ORDER by f.Employee_Id;

****Activity o9***

SELECT ROUND(MAX(salary),0) "Maximum", ROUND(MIN(salary),0) "Minimum", 
ROUND(SUM(salary),0) "Sum", ROUND(AVG(salary),0) "Average" FROM emps

****Activity 10***

SELECT job_id, ROUND(MAX(salary),0) "Maximum", ROUND(MIN(salary),0) "Minimum", 
ROUND(SUM(salary),0) "Sum", ROUND(AVG(salary),0) "Average" FROM emps GROUP BY 
job_id


****Activity 11***

SELECT Job_Id, COUNT(*) FROM emps GROUP BY Job_Id;

****Activity 12***

SELECT Manager_id, MIN(Salary) 
FROM emps 
WHERE Manager_id IS NOT NULL GROUP 
BY Manager_id HAVING MIN(Salary) > 6000 ORDER BY MIN(Salary) DESC;



****HOME_WORK***

select d.department_name"NAME",d.location_id "LOCATIONS", count(*)"NUMBER OF 
PEOPLE" ,round(avg(e.salary),2) "SAL" 
from depts d, emps e 
where e.department_id=d.department_id group by d.department_name,d.location_id








