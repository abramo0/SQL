# E-commerce SQL Database

## Description

This project is part of a SQL practice collection located in the `databases/` folder.

The `ecommerce` database simulates a simple online store with customers, products, and orders.

It is designed to practice SQL fundamentals such as:
- SELECT queries
- JOIN operations
- Aggregations
- Foreign key relationships

## Project Structure

```text
databases/
└── ecommerce/
    ├── schema.sql
    ├── data.sql
    ├── queries.sql
    └── README.md
```
## Database Schema

The database consists of three tables:

- clients
- products
- orders


### Clients Table

| Column   | Type              |
|----------|-------------------|
| id       | INT (Primary Key) |
| name     | VARCHAR(50)       |
| surname  | VARCHAR(50)       |
| email    | VARCHAR(100)      |
| city     | VARCHAR(50)       |


### Products Table

| Column | Type              |
|--------|-------------------|
| id     | INT (Primary Key) |
| name   | VARCHAR(100)      |
| price  | DECIMAL(8,2)      |

### Orders Table

| Column      | Type |
|-------------|------|
| id          | INT (Primary Key) |
| client_id   | INT (Foreign Key → clients.id) |
| product_id  | INT (Foreign Key → products.id) |
| quantity    | INT |
| order_date  | DATE |


### Relationships

- orders.client_id → clients.id  
- orders.product_id → products.id


## Setup

To run this project locally, you need to import the SQL files into your database.

Make sure you have MySQL installed.

### 1. Clone the repository
git clone https://github.com/abramo0/databases

### 2. Navigate to the project folder
cd databases/ecommerce

### 3. Create the database structure
mysql -u username -p database_name < schema.sql

### 4. Insert sample data
mysql -u username -p database_name < data.sql

### 5. (Optional) Run inside MySQL
SOURCE schema.sql;
SOURCE data.sql;

---

### Notes

- username → your MySQL username (e.g. root)  
- database_name → the database you created (e.g. ecommerce)

Example:
mysql -u root -p ecommerce < schema.sql
