-- CRUD OPERATIONS --

-- C-Create, R-Read, U-Update, D-Delete --

-- CREATE --
-- Add new employee -- 
INSERT INTO Employee (FirstName, LastName, Email, Phone, HireDate, Salary, DepartmentID)
VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', '1122334455', '2024-01-15', 55000, 3);


-- READ --
-- View employees with department names --
SELECT E.EmployeeID, E.FirstName, E.LastName, D.DepartmentName
FROM Employee E
JOIN Department D ON E.DepartmentID = D.DepartmentID;

-- View all employee-project assignments --
SELECT EP.EmployeeID, E.FirstName, P.ProjectName, EP.Role
FROM Employee_Project EP
JOIN Employee E ON EP.EmployeeID = E.EmployeeID
JOIN Project P ON EP.ProjectID = P.ProjectID;


-- UPDATE --
-- Update employee salary --
UPDATE Employee
SET Salary = 58000
WHERE EmployeeID = 1;

-- DELETE --
-- Delete an employee --
DELETE FROM Employee
WHERE EmployeeID = 2;
