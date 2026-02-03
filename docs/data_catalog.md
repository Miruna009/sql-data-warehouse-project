# Gold Layer Data Catalog

## Summary
The Gold Layer represents data at the business level, organized to facilitate analytical work and reporting needs. It includes **dimension tables** and **fact tables** designed for specific business measurements.

---

### 1. **gold.dim_customers**
- **Purpose:** Contains enriched customer information including demographic and geographic attributes.
- **Columns:**

| Column Name      | Data Type     | Description                                                                                   |
|------------------|---------------|-----------------------------------------------------------------------------------------------|
| customer_key     | INT           | A surrogate key that uniquely identifies each customer record within the dimension table.     |
| customer_id      | INT           | A unique numerical identifier given to each customer.                                         |
| customer_number  | NVARCHAR(50)  | An alphanumeric identifier used to represent, track, and reference the customer.              |
| first_name       | NVARCHAR(50)  | The first name of the customer as it appears in the system.                                   |
| last_name        | NVARCHAR(50)  | The customer's family name or last name.                                                      |
| country          | NVARCHAR(50)  | The customer's country of residence (e.g., 'Australia').                                      |
| marital_status   | NVARCHAR(50)  | The customer's marital status (e.g., 'Married', 'Single').                                    |
| gender           | NVARCHAR(50)  | The customer's gender (e.g., 'Male', 'Female', 'n/a').                                        |
| birthdate        | DATE          | The customer's date of birth, in YYYY-MM-DD format (e.g., 1971-10-06).                       |
| create_date      | DATE          | The date and time the customer record was created in the system|

---

### 2. **gold.dim_products**
- **Purpose:** Contains product information and associated attributes.
- **Columns:**

| Column Name         | Data Type     | Description                                                                                   |
|---------------------|---------------|-----------------------------------------------------------------------------------------------|
| product_key         | INT           | A surrogate key that uniquely identifies each product record within the product dimension table. |
| product_id          | INT           | A unique identifier given to the product for internal tracking and reference purposes.        |
| product_number      | NVARCHAR(50)  | A structured alphanumeric code that represents the product, frequently used for inventory or categorization purposes. |
| product_name        | NVARCHAR(50)  | A descriptive name for the product, which includes key attributes like type, color, and size. |
| category_id         | NVARCHAR(50)  | A unique identifier for the product's category, connecting it to its high-level classification. |
| category            | NVARCHAR(50)  | The high-level classification of the product (e.g., Bikes, Components) used to group similar items. |
| subcategory         | NVARCHAR(50)  | A more specific classification within the category, detailing the product type.               |
| maintenance_required| NVARCHAR(50)  | Shows whether maintenance is needed for the product (e.g., 'Yes', 'No').                     |
| cost                | INT           | The base price or cost of the product, expressed in monetary units.                           |
| product_line        | NVARCHAR(50)  | The particular product line or series the product is part of (e.g., Road, Mountain).          |
| start_date          | DATE          | The date the product became available for sale or use, stored in|

---

### 3. **gold.fact_sales**
- **Purpose:** Contains transactional sales data used for analysis.
- **Columns:**

| Column Name     | Data Type     | Description                                                                                   |
|-----------------|---------------|-----------------------------------------------------------------------------------------------|
| order_number    | NVARCHAR(50)  | A unique alphanumeric identifier assigned to each sales order (e.g., 'SO54496').              |
| product_key     | INT           | A surrogate key that links the order to the product dimension table.                          |
| customer_key    | INT           | A surrogate key that links the order to the customer dimension table.                         |
| order_date      | DATE          | The date the order was placed.                                                                |
| shipping_date   | DATE          | The date the order was shipped to the customer.                                               |
| due_date        | DATE          | The date the order payment was due.                                                           |
| sales_amount    | INT           | The total monetary value for the line item sale, expressed in whole currency units (e.g., 25). |
| quantity        | INT           | The number of product units ordered for the line item (e.g., 1).                              |
| price           | INT           | The per-unit price of the product for the line item, expressed in whole currency units (e.g., 25). |
