# 🗂️ SQL Projects

This repository contains simple SQL-based database projects built to practice core SQL concepts such as table creation, data manipulation, and CRUD operations.

---

## 📁 Structure

Each folder contains:

- `schema.sql` – Defines tables and relationships  
- `insert_data.sql` – Inserts sample records  
- `queries.sql` – Common SELECT, UPDATE, DELETE queries  
- `README.md` – (Optional) Project-specific explanation

---

## 💡 Sample SQL Operations

```sql
-- Create Table
CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert Data
INSERT INTO Users (Name, Email) VALUES ('Alice', 'alice@example.com');

-- Read Data
SELECT * FROM Users;

-- Update Data
UPDATE Users SET Name = 'Alicia' WHERE UserID = 1;

-- Delete Data
DELETE FROM Users WHERE UserID = 1;
