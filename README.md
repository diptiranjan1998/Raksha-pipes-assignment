# Raksha Pipes Business Analyst Assignment
### **Diptiranjan Bal**
### **Email - diptiranjanbal.345@gmail.com**
This README file summarize the process of building data in python, creating database in MySQL and building a dashboard in Power BI for Raksha Pipes. 
**Step 1: Generate Data and Design Database**
**Generating Data in python:**
**Step 1: Generate Data and Design Database**

**Generating Data in python:**
It is challenging to create lot of fake data from scratch in python. So I took the help of Faker library present in pandas to generate realistic datasets for Raksha Pipes. I created 8 fake datasets that describes the working of the company.

**The datasets include the data on:**

**Product information:** This dataset contains data on product id,product name and product types. To get the data on products, I took the help of beautifulsoup library to dig into company website and retract data on products.

**customer information:** This dataset contains data on customer id, name, address, email, phone number and date of birth. By the help of Faker library I created the instances for the customer table.

**order information:** This data set contains data on order id, customer id who ordered and order date. I took the help of random library to choose random customer ids.

**order details:** This dataset contains data on details id, order id, product id, quantity and price per unit. The price is in USD format.

**inventory information:** To know the stock, I created inventory table that contains inventory id, product name and availability. 

**payments information:** To get data on payments the already done and pending payments, I created payments table that contains data on payments id and order details id. By connecting it to order information and order details data, we can find a summery of payments.

**supplier information:** To keep track of suppliers the data stores supplier id, name, email, phone number, address and product they supply.

**employee information:** Employees are essences of a company. So to keep track of employees I created the dataset to store data on employee id, name, email, phone number and salary provided.

All of these tasks are performed in python by taking the help of google colab. After creating the datasets I saved them to .CSV file for further use. I created the data of 4 months.





**Step 2: Generating database in MySQL:**

To generate databases in MySQL, I took the help of MySQL workbench. First I created a database, then generated tables by importing the .csv files saved in the local drive. So MySQL database contains 8 tables.

**The database in MySQL contains information on:**

**Customers:** product_id, name, address, phone, email, DOB.

**Products:** product_id, product_type and product_name

**Orders info:** order_id,customer_id and order_date.

**Order details:** order_details_id, order_id, product_id, quantity and price_per_unit_in_USD

**Payments:** payment_id, order_details_id, order_id, product_id, quantity, price_per_unit_in_USD, customer_id, order_date and total_price_payed_in_USD

**Inventory:** product_id, product_name and availability

**Suppliers:** supplier_id, supplier_name, address, email, supplier_phone_number and product_type

**Employee:** employee_id, employee_name, employee_position, employee_address, employee_email, employee_phone_number and employee_salary


To ensure data integrity I ensured the concept of primary key and foreign key in the table. Primary key identifies each row uniquely and foreign key builds relation between tables for easy analysis.

**Step 3: Creating Dashboard in Power BI**

I created an interactive dashboard in power bi by using the same 8 datasets created in python. To build this dashboard, I took the help of Power BI desktop. 
Following steps were adhered to build the dashboard. 

**Connect Database:** To make the analysis, we need data first. So to get the data I directly connected my Power BI desktop to MySQL database server. Now the data was ready to wrangle.

**Data preparations:** To make further analysis I brought the data of different variables into proper format like date column. Then converted USD to INR format for easy Interpretability. I used DAX formulas to do this operations.

**Creating measured:** Created different measures like total sales, remaining payments, etc. These measures helps to build KPIs for dashboard and better analyze data.

**Business KPIs:** Business KPIs help an organization to get an overall idea of business. So I put following 4 different KPIs:

**Total sales:** This shows the total sales done by company in previous 4 months. 

**Remaining Payments:** This shows the amount remaining payments to be made by different customers.

**Customer base:** This shows the total customer base the company have. This means the total customer engagement of the company from beginning.

**Total orders:** This represents the total orders company have in previous 4 months. 

**Build Visuals:** Picture says thousand words. So I build different visual graphs to showcase my findings in a unique way.

**Pie chart:** The pie chart showcases the total sales by each month. It shows the percentage of sales for each month out of total sales.

**Tree map:** This shows top 5 customers according to sales. These customers have highest amount of purchases form the company.

**Stacked column chart:** This chart showcases the total sales by product types. From this chart we conclude that PVC pipes are most selling product of company.

**Forecasting Line chart:** This line chart is the crucial visual for the company. This showcases the sales for each month and forecasts the sales for coming months as well with a 95% confidence interval.

**Tables:** There are some data that are hard to interpret by visuals. So I plot different tables in my dashboard to convey my findings properly.

**Sales by product:** This table visual represents the total sales by different products and the number of product sales.

**Employee salary:** This table visual shows the amount of money disbursed or total salary payed according to positions like Data scientist, Data analyst, etc.

**Slicers:** Slicers are great option to filter data and visuals properly according to user’s need. So I added following 3 different slicers:

**Product type:** By using this slicer we can filter the findings according to different product types.

**Date:** This helps us to filter data according to date.

**Product name:** Withe the help of this slicer we can filter according to product.

![Screenshot 2024-05-15 213303](https://github.com/diptiranjan1998/Raksha-pipes-assignment/assets/126856016/d4ea705c-09a7-4bfa-bbc6-0b6dd0bca8d8)

We can refresh the dashboard to update the findings if the data gets updated. For example if we add the data of further months.


## **Thank You**





