use demo;

/*View : 
---------
-- View is a sub set of table.i.e part of a table.
-- A View is a virtual table because it doesn't store data and doesn't occupy memory.
-- It derived data from base table.
-- View is a representation of a query.

 -- There are two types of View
 1. Simple view
    - It is created on single table.
 2. Complex View
    - It is created on multiple table.
*/

# table Used : emp
select * from emp;
select * from dept;

-- Create of View on columnwise Employee table on which user can only see Empno,Ename,Job,Hiredate, and Deptno columns.
create View V_emp  
as
Select Empno,Ename,Job,Hiredate,Deptno from emp;

select * from V_emp;

-- Create a view to access rowwise employee table Empno,Ename,Job,Deptno column and who are working under deptno is 30?
create View V_dept30 
as
Select empno, ename, job, deptno from emp where deptno=30;

select * from V_dept30;

-- Insert data into view (Error)
Insert into V_dept10(Empno,Ename,Job,Deptno) values(7012,'Joy','Clerk',10);

-- Insert data into view 
Insert into V_dept30(Empno,Ename,Job,Deptno) values(7012,'Joy','Clerk',10);
select * from V_dept30;
select * from V_emp;

/* View using WITH CHECK OPTION */
-- Create a view to accept and display Empno,Ename,Job,Deptno whose deptno only 30?
Create View V_D30 AS SELECT Empno,Ename,Job,Deptno  
From emp Where Deptno=30 WITH CHECK OPTION;
select * from V_D30;

-- Insert data into view with using check option (Error)
Insert into V_D30(Empno,Ename,Job,Deptno) values(7588,'John','Salesman',20);

-- Insert data into view with using check option
Insert into V_D30(Empno,Ename,Job,Deptno) values(7588,'John','Salesman',30);
select * from V_D30;

# Complex View
-- Create a view to show empno, ename, Job, Deptno., Dname, Location using Conmpelex view.
Create View CV_EmpDept AS SELECT E.EMPNO,E.ENAME,E.JOB,D.DEPTNO,D.DNAME,D.LOC 
FROM emp as E join Dept as D ON E.DEPTNO=D.DEPTNO;

Select * from CV_EmpDept;

# Using Aggrigate Function

-- Display Department wise Minimum, Maximum, and Total Salary on department and No. of employees in particular departments.
Create View CV_EmpAggFun AS 
Select Deptno, 
Min(Sal) as MinSal,
Max(Sal) as MaxSal,
Sum(Sal) as 'Total Salary',
Count(*) as 'Number of Employees' 
From emp
Group By Deptno;

Select * from CV_EmpAggFun;

-- Show View
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.VIEWS
WHERE TABLE_SCHEMA = 'demo';

-- Delete View
drop view V_emp;










