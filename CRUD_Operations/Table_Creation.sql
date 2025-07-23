-- Drop existing tables if they exist --
DROP TABLE IF EXISTS Employee_Project;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Project;
DROP TABLE IF EXISTS Department;

-- Creating Department table --
CREATE TABLE Department (
    Department_ID SERIAL PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL
);

-- Creating Employee table --
CREATE TABLE Employee (
    Employee_ID SERIAL PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Email VARCHAR(150) UNIQUE,
    Phone VARCHAR(20),
    Hire_Date DATE,
    Salary DECIMAL(10, 2),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

-- Creating Project table --
CREATE TABLE Project (
    Project_ID SERIAL PRIMARY KEY,
    Project_Name VARCHAR(100),
    Start_Date DATE,
    End_Date DATE
);

-- Many-to-many relation between Employee and Project --
CREATE TABLE Employee_Project (
    Employee_ID INT,
    Project_ID INT,
    Role VARCHAR(100),
    PRIMARY KEY (Employee_ID, Project_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
    FOREIGN KEY (Project_ID) REFERENCES Project(Project_ID)
);
