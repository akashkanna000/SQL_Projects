-- Insert Departments --
INSERT INTO Department (Department_Name) VALUES 
('Human Resources'), ('IT'), ('Finance');

-- Insert Employees --
INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Hire_Date, Salary, Department_ID) VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', '2022-01-10', 50000, 2),
('Jane', 'Smith', 'jane.smith@example.com', '9876543210', '2023-03-20', 60000, 1),
('July', 'Smath', 'july.smath@example.com', '9876545210', '2023-12-07', 70000, 3);


-- Insert Projects --
INSERT INTO Project (Project_Name, Start_Date, End_Date) VALUES
('Migration Project', '2023-01-01', '2023-12-31'),
('Website Redesign', '2023-06-01', '2024-06-01');

-- Assign Employees to Projects --
INSERT INTO Employee_Project (Employee_ID, Project_ID, Role) VALUES
(1, 1, 'Developer'),
(2, 2, 'Project Manager');
