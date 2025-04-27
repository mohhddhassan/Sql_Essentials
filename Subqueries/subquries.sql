-- 1. Subquery in SELECT (Return records where salary is higher than the average salary)
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

-- 2. Subquery in INSERT (Insert data based on a subquery result)
INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary)
SELECT 6, 'Dave', 'Miller', 70000
WHERE NOT EXISTS (SELECT * FROM Employees WHERE EmployeeID = 6);

-- 3. Subquery in UPDATE (Update salary based on department)
UPDATE Employees
SET Salary = Salary * 1.05
WHERE DepartmentID = (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'IT');

-- 4. Subquery in DELETE (Delete employees who are in a department with low performance)
DELETE FROM Employees
WHERE DepartmentID IN (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'Marketing');
