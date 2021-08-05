-- Displaying all the customers
SELECT * FROM SALES.CUSTOMERS;


-- Displaying the total number of customers
SELECT COUNT(*) FROM SALES.CUSTOMERS;


-- Display all transactions from Chennai market(market code for chennai is Mark001).
SELECT * FROM transactions where market_code = "Mark001";


-- Show distinct product codes that were sold in Chennai.
SELECT product_code FROM transactions
WHERE market_code = "Mark001";


-- Show transactions where currency is US dollars.
SELECT * FROM transactions
WHERE currency = "USD";


-- Show transactions in 2020 join by date table.
SELECT t.* 
FROM transactions t
INNER JOIN date d
ON t.order_date = d.date
WHERE d.year = "2020"; 


-- Show total revenue in year 2020.
SELECT d.year, SUM(sales_amount) AS revenue 
FROM transactions t
INNER JOIN date d
on t.order_date = d.date
where d.year=2020;


-- Show total revenue in year 2020, January Month.
SELECT d.year, SUM(sales_amount) AS revenue 
FROM transactions t
INNER JOIN date d
on t.order_date = d.date
where d.year=2020 and d.month_name = "January";


-- Show total revenue in year 2020 in Chennai.
SELECT d.year, SUM(sales_amount) AS revenue 
FROM transactions t
INNER JOIN date d
on t.order_date = d.date
where d.year=2020 and t.market_code = "Mark001";

