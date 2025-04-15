# 🛒 Walmart Database

## 🚀 Overview
This project is a comprehensive relational database developed using Microsoft SQL Server to simulate Walmart's retail and backend operations. It includes modules for inventory control, supplier management, customer orders, employee records, banking, payroll, and more — structured for scalability and normalization.

## 📂 Features
- Manages product listings, brand hierarchy, and category relationships.
- Tracks inventory levels and supplier transactions.
- Handles customer orders, shipping, payments, and returns.
- Stores detailed employee information including personal, emergency, education, and salary data.
- Maintains banking info for both employees and company transactions.
- Includes departmental and designation structures within stores.
- Fully normalized with referential integrity and ERD support.

## 🛠️ Tech Stack
- **Database**: Microsoft SQL Server  
- **Language**: T-SQL (Transact-SQL)  
- **Tools**: SQL Server Management Studio (SSMS), draw.io (for ER modeling)

## 🧰 How to Run the Project

1. Clone or download this repository.
2. Open `Walmart_Database.sql` in SQL Server Management Studio (SSMS).
3. Execute the script to create all tables, relationships, and constraints.
4. (Optional) Run `Sample_Data.sql` to insert demo records.
5. Use SQL queries or connect with a backend application for further use.

## 📸 ER Diagram / Schema Visualization
> ![WALL_ERD](https://github.com/user-attachments/assets/be94ebbc-5973-4c85-99b0-a4a2a8da0204)


## 🧱 Database Entities

### 🧑‍💼 Employee Management
- `Employee`
- `Emp_Medical`
- `Employee_Personal`
- `Emp_Bank`
- `Salary`
- `Emergency`
- `Education`
- `Department`
- `Designation`

### 🛍️ Product & Inventory
- `Product`
- `Inventory`
- `Brand`
- `Category`
- `Parent_Category`

### 🚚 Supplier Management
- `Supplier`
- `Supplier_Order`
- `Supplier_Transaction`
- `Bank` *(used for financial processing)*

### 🧾 Customer & Orders
- `Customer`
- `Customer_Shipping`
- `Customer_Order`
- `Customer_Transaction`
- `Order_Return`

### 🏬 Store Management
- `Store`

## 💡 Sample Use Cases
- Track real-time inventory levels and restock based on supplier transactions.
- Generate employee salary and department-wise performance reports.
- Process customer orders and manage returns with full traceability.
- Maintain structured data on products, categories, and sales performance.
- Analyze supplier efficiency based on order history and transaction logs.

## ✍️ Author
- [Kritik Kumar]([(https://github.com/kritik26kumar/Walmart_Database)])
