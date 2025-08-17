# This repository demonstrates the usage of SQL Views with practical examples using an Employee (emp) and Department (dept) table.

# What is a View?

-- A View is a virtual table that does not store data itself but provides a way to look at data stored in one or more base tables.
-- It acts as a subset of a table (row-wise or column-wise).
-- A View is defined by a query and does not occupy physical memory.

# Types of Views
1. Simple View
   -- Created on a single table.
3. Complex View
   –- Created on multiple tables (joins, aggregate functions, etc.).

   --> Shows limited columns of the emp table.
   --> Shows employees working in department 30.
   --> Insert without restriction (possible if conditions match).
   --> Insert with WITH CHECK OPTION ensures data integrity by restricting inserts/updates               outside defined conditions.
   --> Displays employee details along with their department name and location.
   --> Provides department-wise salary statistics and employee count.

# Files Included
1. Used Table (emp, dept) – Base tables.
2. Create View Examples (ex1, ex2) – Simple views.
3. Insert Data into View – Examples with/without restrictions.
4. Using WITH CHECK OPTION – Data integrity enforcement.
5. Complex View Example – Joining multiple tables.
6. Using Aggregate Functions – Department-wise salary analysis.
7. Show / Drop Views – Manage created views.
