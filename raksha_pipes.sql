-- Create the database
CREATE DATABASE raksha_pipes;

-- Use the database
USE raksha_pipes;

-- Create the Customers table
CREATE TABLE customer_info (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address TEXT,
    phone VARCHAR(50),
    email VARCHAR(255),
    DOB DATE
);

-- Create the Products table
CREATE TABLE product_info (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_type VARCHAR(255) NOT NULL,
    product_name VARCHAR(255) NOT NULL
);

-- Create the Orders info table
CREATE TABLE order_info (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the Order details table
CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price_per_unit_in_USD DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES OrdersInfo(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create the Payments table
CREATE TABLE payment_details (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_details_id INT NOT NULL,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price_per_unit_in_USD DECIMAL(10, 2) NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_price_payed_in_USD DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_details_id) REFERENCES order_details(order_details_id),
    FOREIGN KEY (order_id) REFERENCES order_info(order_id),
    FOREIGN KEY (product_id) REFERENCES product_info(product_id),
    FOREIGN KEY (customer_id) REFERENCES customer_info(customer_id)
);

-- Create the Inventory table
CREATE TABLE inventory_info (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    availability INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product_info(product_id)
);

-- Create the Suppliers table
CREATE TABLE supplier_info (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(255) NOT NULL,
    address TEXT,
    email VARCHAR(255),
    supplier_phone_number VARCHAR(50),
    product_type VARCHAR(255) NOT NULL
);

-- Create the Employee table
CREATE TABLE employee_info (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(255) NOT NULL,
    employee_position VARCHAR(255) NOT NULL,
    employee_address TEXT,
    employee_email VARCHAR(255),
    employee_phone_number VARCHAR(50),
    employee_salary DECIMAL(10, 2)
);
