--Query 1: Retrieve all employees whose address is in Elgin,IL
select * from employees where ADDRESS like '%Elgin,IL';

--Query 2: Retrieve all employees who were born during the 1970s.
select * from employees where B_DATE like '197%';
	
--Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000 .
select * from employees where DEP_ID = 5 and SALARY between 60000 and 70000;

--Query 4A: Retrieve a list of employees ordered by department ID.
select * from employees order by DEP_ID;
--Query 4B: Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
select * from employees order by DEP_ID desc, L_NAME desc;

--Query 5A: For each department ID retrieve the number of employees in the department.
select  COUNT(*) as count from employees group by DEP_ID;

--Query 5B: For each department retrieve the number of employees in the department, and the average employees salary in the department.
select  COUNT(*),AVG(SALARY) as count from employees group by DEP_ID;

--Query 5C: Label the computed columns in the result set of Query 5B as “NUM_EMPLOYEES” and “AVG_SALARY”.
select  COUNT(*) as NUM_EMPLOYEES ,AVG(SALARY) as AVG_SALARY from employees group by DEP_ID;

--Query 5D: In Query 5C order the result set by Average Salary.
select  COUNT(*) as NUM_EMPLOYEES ,AVG(SALARY) as AVG_SALARY from employees group by DEP_ID order by AVG(SALARY);

--Query 5E: In Query 5D limit the result to departments with fewer than 4 employees.
select  COUNT(*) as NUM_EMPLOYEES ,AVG(SALARY) as AVG_SALARY from employees group by DEP_ID having COUNT(*)  < 4 order by AVG(SALARY) ;

--BONUS Query 6: Similar to 4B but instead of department ID use department name. 
--Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name. 
select * from employees e, DEPARTMENTS d where e.DEP_ID = d.DEPT_ID_DEP order by d.DEP_NAME desc;
