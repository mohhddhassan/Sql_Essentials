Table: Employees
+------------+-----------+----------+------------+--------+
| EmployeeID | FirstName | LastName | HireDate   | Salary |
+------------+-----------+----------+------------+--------+
| 1          | John      | Doe      | 2020-01-15 | 60000  |
| 2          | Jane      | Smith    | 2021-02-10 | 55000  |
| 3          | Alice     | Johnson  | 2022-06-01 | 70000  |
| 4          | Bob       | Brown    | 2023-03-25 | 80000  |
| 5          | Charlie   | Williams | 2023-05-15 | 65000  |
+------------+-----------+----------+------------+--------+





-- 1. INSERT INTO table (Single Record)
INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary)
VALUES (6, 'Dave', 'Miller', '2023-07-10', 70000);

-- 2. INSERT INTO table (Multiple Records)
INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary)
VALUES 
(7, 'Eva', 'Taylor', '2023-08-01', 65000),
(8, 'Frank', 'Davis', '2023-09-15', 72000);

-- 3. UPDATE table (Modify existing record)
UPDATE Employees
SET Salary = 75000
WHERE EmployeeID = 1;

-- 4. DELETE FROM table (Delete a record)
DELETE FROM Employees
WHERE EmployeeID = 6;

-- 5. SELECT (Retrieve data)
SELECT * FROM Employees WHERE Salary > 60000;
