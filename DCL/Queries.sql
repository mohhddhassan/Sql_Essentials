-- Table: Employees
-- +------------+-----------+----------+------------+--------+
-- | EmployeeID | FirstName | LastName | HireDate   | Salary |
-- +------------+-----------+----------+------------+--------+
-- | 1          | John      | Doe      | 2020-01-15 | 60000  |
-- | 2          | Jane      | Smith    | 2021-02-10 | 55000  |
-- | 3          | Alice     | Johnson  | 2022-06-01 | 70000  |
-- +------------+-----------+----------+------------+--------+



-- 1. CREATE TABLE: Create a new table with columns
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- 2. ALTER TABLE: Add a new column to an existing table
ALTER TABLE Employees ADD COLUMN DepartmentID INT;

-- 3. CREATE INDEX: Create an index to optimize queries
CREATE INDEX idx_salary ON Employees(Salary);

-- 4. DROP TABLE: Delete a table and its data
DROP TABLE Employees;

-- 5. DROP INDEX: Delete an index
DROP INDEX idx_salary;


MORE ALTER FUNTIONS:

-- 1. Add a new column to the Employees table
ALTER TABLE Employees ADD Department VARCHAR(50);

-- 2. Modify the Salary column to allow larger values
ALTER TABLE Employees MODIFY COLUMN Salary DECIMAL(15, 2);

-- 3. Rename a column from Department to DepartmentName
ALTER TABLE Employees CHANGE COLUMN Department DepartmentName VARCHAR(50);

-- 4. Drop a column (remove DepartmentName column)

ALTER TABLE Employees DROP COLUMN DepartmentName;

-- 5. Rename the Employees table to Staff
ALTER TABLE Employees RENAME TO Staff;

-- 6. Add a Primary Key constraint to EmployeeID
ALTER TABLE Employees ADD PRIMARY KEY (EmployeeID);

-- 7. Drop the Primary Key constraint
ALTER TABLE Employees DROP PRIMARY KEY;

-- 8. Add a Foreign Key constraint to link Employees to Departments
ALTER TABLE Employees ADD CONSTRAINT fk_department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

-- 9. Drop a Foreign Key constraint
ALTER TABLE Employees DROP FOREIGN KEY fk_department;

-- 10. Add a Unique constraint to the Email column
ALTER TABLE Employees ADD CONSTRAINT unique_email UNIQUE (Email);

-- 11. Drop the Unique constraint
ALTER TABLE Employees DROP CONSTRAINT unique_email;
