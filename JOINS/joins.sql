TABLE: Employees
+------------+-----------+----------+------------+--------+
| EmployeeID | FirstName | LastName | HireDate   | Salary |
+------------+-----------+----------+------------+--------+
| 1          | John      | Doe      | 2020-01-15 | 60000  |
| 2          | Jane      | Smith    | 2021-02-10 | 55000  |
| 3          | Alice     | Johnson  | 2022-06-01 | 70000  |
| 4          | Bob       | Brown    | 2023-03-25 | 80000  |
| 5          | Charlie   | Williams | 2023-05-15 | 65000  |
+------------+-----------+----------+------------+--------+


TABLE: Departments
+--------------+----------------+
| DepartmentID | DepartmentName |
+--------------+----------------+
| 101          | HR             |
| 102          | IT             |
| 103          | Sales          |
| 104          | Marketing      |
+--------------+----------------+
  

-- 1. INNER JOIN (Returns rows when there is a match in both tables)
SELECT Employees.EmployeeID, Employees.FirstName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- 2. LEFT JOIN (Returns all rows from the left table, and matching rows from the right table)
SELECT Employees.EmployeeID, Employees.FirstName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- 3. RIGHT JOIN (Returns all rows from the right table, and matching rows from the left table)
SELECT Employees.EmployeeID, Employees.FirstName, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- 4. FULL OUTER JOIN (Returns rows when there is a match in either left or right table)
SELECT Employees.EmployeeID, Employees.FirstName, Departments.DepartmentName
FROM Employees
FULL OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
