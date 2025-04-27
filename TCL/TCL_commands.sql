-- 1. COMMIT (Make changes permanent)
BEGIN TRANSACTION;
UPDATE Employees
SET Salary = 90000
WHERE EmployeeID = 4;
COMMIT;

-- 2. ROLLBACK (Undo changes)
BEGIN TRANSACTION;
DELETE FROM Employees
WHERE EmployeeID = 5;
ROLLBACK;  -- The DELETE will not be permanent

-- 3. SAVEPOINT (Create a savepoint to roll back to later)
BEGIN TRANSACTION;
UPDATE Employees
SET Salary = 80000
WHERE EmployeeID = 3;
SAVEPOINT savepoint1;

-- Rollback to savepoint1 if needed
ROLLBACK TO SAVEPOINT savepoint1;
