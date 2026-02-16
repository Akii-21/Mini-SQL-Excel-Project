CREATE DATABASE project;
USE project;
SELECT*FROM sales;
ALTER TABLE sales MODIFY COLUMN Date DATE; #The dataset had date in TEXT format so I changed it data type to DATE from TEXT
SELECT Age FROM sales WHERE age<0; #did this to check weather the dataset has any -ive age and now this confirsm it does not have any -ive age 
SELECT Quantity FROM sales WHERE Quantity<=0; #did this to chec wheater the table has any data entry whihc is equal to 0 or is -ive in quantity col

ALTER TABLE sales #altered the table column names so that using the table can become easier in sql
RENAME COLUMN `Transaction ID` TO transaction_id,
RENAME COLUMN `Customer ID` TO customer_id,
RENAME COLUMN `Product Category` TO product_category,
RENAME COLUMN `Price per Unit` TO price_per_unit,
RENAME COLUMN `Total Amount` TO total_amount;

DESC sales;
ALTER TABLE sales
ADD PRIMARY KEY (transaction_id);


ALTER TABLE sales ADD COLUMN age_group VARCHAR(10);
SET SQL_SAFE_UPDATES=0;
UPDATE sales SET age_group=CASE
WHEN Age>=18 AND Age<26 THEN '18-25'
WHEN Age>=26 AND Age<31 THEN '26-30'
WHEN Age>=31 AND Age<36 THEN '31-35'
WHEN Age>=36 AND Age<41 THEN '36-40'
WHEN Age>=41 AND Age<46 THEN '41-45'
WHEN Age>=46 AND Age<51 THEN '46-50'
WHEN Age>=51 AND Age<56 THEN '51-55'
WHEN Age>=56 AND Age<60 THEN '56-60'
ELSE'60+'
END 
WHERE transaction_id IS NOT NULL;
SET SQL_SAFE_UPDATES=0;
SELECT*FROM sales 