# Raksha Pipes Business Analyst Assignment

---



---


### **Diptiranjan Bal**
### **Email - diptiranjanbal.345@gmail.com**

---



---


This README file summarize the process of building data in python, creating database in MySQL and building a dashboard in Power BI for Raksha Pipes.
## Table of Contents
   1. [Project Overview](#Project-Overview)
   2. [Data Generation](#Data-Generation)
   3. [Database Design](#Database-Design)
   4. [Dashboard Creation](#Dashboard-Creation)
   5. [Setup Instructions](#Setup-Instructions)
   6. [Presentation](#Presentation)
   7. [Screenshots](#Screenshots)

## Project Overview
This project is designed to create, maintain and study the fake realistic data for Raksha Pipes. To create fake data various libraries like **pandas**, **Faker**, **random** and **BeautifulSoup** of `Python` are used. To create a database `MySQL workbench` is used. To further analyze the data and create dashboard I took the help of `Power BI Desktop`.

## Data Generation

**Generating Data in python:**

It is challenging to create lot of fake data from scratch in python. So I took the help of Faker library present in pandas to generate realistic datasets for Raksha Pipes. I created 8 fake datasets that describes the working of the company.

**The datasets include the data on:**


1. **`Product information:`** This dataset contains data on product id,product name and product types. To get the data on products, I took the help of beautifulsoup library to dig into company website and retract data on products.

2. **`customer information:`** This dataset contains data on customer id, name, address, email, phone number and date of birth. By the help of Faker library I created the instances for the customer table.

3. **`order information:`** This data set contains data on order id, customer id who ordered and order date. I took the help of random library to choose random customer ids.

4. **`order details:`** This dataset contains data on details id, order id, product id, quantity and price per unit. The price is in USD format.

5. **`inventory information:`** To know the stock, I created inventory table that contains inventory id, product name and availability. 

6. **`payments information:`** To get data on payments the already done and pending payments, I created payments table that contains data on payments id and order details id. By connecting it to order information and order details data, we can find a summery of payments.

7. **`supplier information:`** To keep track of suppliers the data stores supplier id, name, email, phone number, address and product they supply.

8. **`employee information:`** Employees are essences of a company. So to keep track of employees I created the dataset to store data on employee id, name, email, phone number and salary provided.

All of these tasks are performed in python by taking the help of google colab. After creating the datasets I saved them to .CSV file for further use. I created the data of 4 months.
### The link to the [Python Script](https://colab.research.google.com/drive/1rMavk9mc_sv454H4lbTELPhjMJ9y66sI?usp=sharing).




## Database Design

To generate database, I took the help of MySQL workbench. First I created a database, then generated tables by importing the .csv files saved in the local drive. So MySQL database contains 8 tables.

**The database in MySQL contains information on:**

1. **`Customers:`** product_id, name, address, phone, email, DOB.

2. **`Products:`** product_id, product_type and product_name

3. **`Orders info:`** order_id,customer_id and order_date.

4. **`Order details:`** order_details_id, order_id, product_id, quantity and price_per_unit_in_USD

5. **`Payments:`** payment_id, order_details_id, order_id, product_id, quantity, price_per_unit_in_USD, customer_id, order_date and total_price_payed_in_USD

6. **`Inventory:`** product_id, product_name and availability

7. **`Suppliers:`** supplier_id, supplier_name, address, email, supplier_phone_number and product_type

8. **`Employee:`** employee_id, employee_name, employee_position, employee_address, employee_email, employee_phone_number and employee_salary


**MySQL Workbench Schemas**
![Screenshot 2024-05-16 104930](https://github.com/diptiranjan1998/Raksha-pipes-assignment/assets/126856016/2183fd22-8d0b-4b25-a6b7-7a53b50761f6)



To ensure data integrity I ensured the concept of primary key and foreign key in the table. Primary key identifies each row uniquely and foreign key builds relation between tables for easy analysis.


## Dashboard Creation

I created an interactive dashboard in Power BI by using the same 8 datasets created in python. To build this dashboard, I took the help of Power BI desktop. 
Following steps were adhered to build the dashboard. 

1. **`Connect Database:`** To make the analysis, we need data first. So to get the data I directly connected my Power BI desktop to MySQL database server. Now the data was ready to wrangle.

**Power BI Model View**
![Screenshot 2024-05-16 110829](https://github.com/diptiranjan1998/Raksha-pipes-assignment/assets/126856016/1c0658df-c544-452e-8595-3cc1b32f1bcd)


3. **`Data preparations:`** To make further analysis I brought the data of different variables into proper format like date column. Then converted USD to INR format for easy Interpretability. I used DAX formulas to do this operations.

4. **`Creating measured:`** Created different measures like total sales, remaining payments, etc. These measures helps to build KPIs for dashboard and better analyze data.

5. **`Business KPIs:`** Business KPIs help an organization to get an overall idea of business. So I put following 4 different KPIs:

    * **`Total sales:`** This shows the total sales done by company in previous 4 months. 

    * **`Remaining Payments:`** This shows the amount remaining payments to be made by different customers.

    * **`Customer base:`** This shows the total customer base the company have. This means the total customer engagement of the company from beginning.

    * **`Total orders:`** This represents the total orders company have in previous 4 months. 

6. **`Build Visuals:`** Picture says thousand words. So I build different visual graphs to showcase my findings in a unique way.

    * **`Pie chart:`** The pie chart showcases the total sales by each month. It shows the percentage of sales for each month out of total sales.

    * **`Tree map:`** This shows top 5 customers according to sales. These customers have highest amount of purchases form the company.

    * **`Stacked column chart:`** This chart showcases the total sales by product types. From this chart we conclude that PVC pipes are most selling product of company.

    * **`Forecasting Line chart:`** This line chart is the crucial visual for the company. This showcases the sales for each month and forecasts the sales for coming months as well with a 95% confidence interval.

7. **`Tables:`** There are some data that are hard to interpret by visuals. So I plot different tables in my dashboard to convey my findings properly.

    * **`Sales by product:`** This table visual represents the total sales by different products and the number of product sales.

    * **`Employee salary:`** This table visual shows the amount of money disbursed or total salary payed according to positions like Data scientist, Data analyst, etc.

8. **`Slicers:`** Slicers are great option to filter data and visuals properly according to user’s need. So I added following 3 different slicers:

    * **`Product type:`** By using this slicer we can filter the findings according to different product types.

    * **`Date:`** This helps us to filter data according to date.

    * **`Product name:`** Withe the help of this slicer we can filter according to product.

**Power BI Dashboard**
![Screenshot 2024-05-15 213303](https://github.com/diptiranjan1998/Raksha-pipes-assignment/assets/126856016/d4ea705c-09a7-4bfa-bbc6-0b6dd0bca8d8)

We can refresh the dashboard to update the findings if the data gets updated. For example if we add the data of further months.

## Setup Instructions
   1. **`Clone the Repository:`** [git clone ](https://github.com/diptiranjan1998/Raksha-pipes-assignment)
   2. **`Install Dependencies:`** Necessary Python packages are `Pandas, Numpy, Faker, random and BeautifulSoup`

   **Installing Packages**
![Screenshot 2024-05-16 115056](https://github.com/diptiranjan1998/Raksha-pipes-assignment/assets/126856016/115ac336-fd86-41ad-898b-6d0d3b73f7f9)

   
   4. **`Run Data Generation Script:`** [Python Data generation Script](https://colab.research.google.com/drive/1rMavk9mc_sv454H4lbTELPhjMJ9y66sI?usp=sharing)
   5. **`Setup MySQL Database:`** Running this [SQL scripts](https://drive.google.com/file/d/18RUmAfaZFQS5pSEfOabZunZBEzIidNm1/view?usp=sharing) in MySQL Workbench will create and populate the database.
   6. **`Open Power BI Dashboard:`** Instructions to link the MySQL database to Power BI and open the dashboard file:
      * Open Power BI desktop.
      * Go to "Get data" ➡ "More" ➡ "MySQL database" and provide database details like (server: 127.0.0.1:3306, database: raksha_pipes).
      * Load the required 8 tables from table schemas.

## **Thank You**





