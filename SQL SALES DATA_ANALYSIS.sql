CREATE TABLE products ( 
product_id INT  PRIMARY KEY,
product_name VARCHAR (50),
category VARCHAR (50),
price DECIMAL
 );


CREATE TABLE customers (
 customer_id INT PRIMARY KEY,
 first_name VARCHAR (50),
 last_name VARCHAR (50),
 email VARCHAR (50),
phone_number INT
);

CREATE TABLE sales (
 sale_id INT PRIMARY KEY,
 product_id INT, 
 customer_id INT, 
 sale_date DATE,
quantity INT,
total_amount DECIMAL
);


CREATE TABLE payments (
 payment_id INT PRIMARY KEY, 
 sale_id  INT, 
 payment_method DECIMAL,
payment_date DATE,
amount_paid DECIMAL
 );
 
 ALTER TABLE payments
 MODIFY payment_method VARCHAR (50);

 
 -- 2 Data Insertion
-- Insert at least 10 products into the `products` table.
 -- Insert at least 40 customers into the `customers` table.
 -- Insert at least 20 records into the `sales` table, making sure some customers buy multiple
-- products.
 -- Insert payment records corresponding to the sales, with varying amounts and dates.
 SELECT *
 FROM products;
 
 insert into products ( product_id, product_name, category, price) VALUES
 (1, 'laptop', 'gadget', 800.00),
 (2, 'wrist', 'gadget', 700.00),
 (3, 'Phone', 'gadget', 1100.00),
 (4, 'TV', 'electronics', 300.00),
 (5, 'AC', 'electronics', 150.00),
 (6,'fridge', 'electronics',100.00),
 (7,'ipad', 'gadget', 800.00),
 (8, 'Generator', 'electronics', 250.00),
 (9, 'Fan', 'electronics', 100.00),
 (10, 'psp', 'Gadget', 400.00);

 SELECT *
 FROM products;
 
 
 SELECT *
 FROM customers;
 
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(100, 'Caroline', 'Rice', 'carolina71@gmail.com', '232539882'),
(101, 'Mark', 'Doe', 'markdoe@outmail.com', '873022345'),
(102, 'Jayden', 'Smith', 'jaydensmith@gmail.com', '856283923'),
(103, 'Bob', 'Johnson', 'bobjohnson@hotmail.com', '219909984'),
(104, 'Dale', 'Brown', 'dalebrown@yahoo.com', '673921105'),
(105, 'Mike', 'Davis', 'mikedavis@yandex.com', '828666921'),
(106, 'Jude', 'Chen', 'judechen@gmail.com', '981552020'),
(107, 'Chai', 'Lee', 'chailee@gmail.com', '642968674'),
(108, 'Seun', 'Taylor', 'seuntaylor@gmail.com', '781211313'),
(109, 'Kevin', 'White', 'kevinwhite@gmail.com', '231011312'),
(110, 'Biodun', 'Oluwafemi', 'olufemibiodun@gmail.com', '231781102'),
(111, 'Tomiwa', 'Makanjuola', 'tomiwamakanjuola@yahoo.com', '888771801'),
(112, 'Micheal', 'Lepage', 'micheallepage@gmail.com', '79073200'),
(113, 'Lola', 'Idije', 'lolaijidje@hotmail.com', '567909023'),
(114, 'Joy', 'Karma', 'joykarma@yahoo.com', '662919305'),
(115, 'Jolie', 'Joel', 'joliejoel@gmail.com', '902425021'),
(116, 'Tunde', 'Osinboyejo', 'tundeosinboyejo@yahoo.com', '820291942'),
(117, 'Tolu', 'Dhunsi', 'toludahunsi@hotmail.com', '923730183'),
(118, 'Wura', 'Danfo', 'wuradanfo@yahoo.com', '675430321'),
(119, 'Tobi', 'Ray', 'tobiray88@gmail.com', '038780923'),
(120, 'Paula', 'Huckabee', 'pualahuc54@gmail.com', '563932930'),
(121, 'Faith', 'Elube', 'faithelube4@yahoo.com', '776402839'),
(122, 'Godwin', 'Kinman', 'godwinkinman101@gmail.com', '927290813'),
(123, 'Racheal', 'Rowland', 'rachealrowland77@gmail.com', '294330182'),
(124, 'Rice', 'Julie', 'ricejulie@hotmail.com', '882283028'),
(125, 'Mayor', 'Kim', 'mayorkim7@gmail.com', '045982840'),
(126, 'Mane', 'July', 'manejuly3@gmail.com', '739044073'),
(127, 'Rolly', 'Dupe', 'rollydupe88@gmail.com', '102012183'),
(128, 'James', 'Duke', 'jamesduke00@outlook.com', '394232938'),
(129, 'Samuel', 'Doe', 'samueldoe@gmail.com', '859394380'),
(130, 'Joy', 'Karma', 'joykarma@gmail.com', '930235120'),
(131, 'Joyce', 'Hope', 'hopejoyce@gmail.com', '823903412'),
(132, 'Alex', 'Rowland', 'alexrow@outlook.com', '762190230'),
(133, 'Molo', 'Craig', 'craig.m@gmail.com', '876230952'),
(134, 'Jade', 'Pamela', 'pamelaj@yahoo.com', '765230981'),
(135, 'Kilty', 'Beeson', 'kiltybee@gmail.com', '654239876'),
(136, 'Harry', 'Lowe', 'harrylowe@yahoo.com', '879015439'),
(137, 'Smith', 'Wayman', 'smithway@gmail.com', '982450978'),
(138, 'Adele', 'Oliver', 'oliver.a@gmail.com', '340775179'),
(139, 'Lisa', 'Earnest', 'lisaearnest@yahoo.com', '707631198');





-- INSERT INTO sales(sale_id, product_id, customer_id, sale_date, quantity, total_amount) VALUES
-- Assuming the total_amount is pre-calculated as quantity * price




INSERT INTO sales (sale_id, product_id, customer_id, sale_date, quantity, total_amount) VALUES
(150, '1', '100', '2024-06-05', 2, 2 * 800.00),
(160, '2', '101', '2024-12-07', 1, 1 * 700.00),
(170, '3', '102', '2024-08-19', 1, 1 * 1100.00),
(180, '4', '103', '2024-08-20', 2, 2 * 300.00),
(190, '4', '103', '2024-09-12', 2, 2 * 150.00),
(200, '5', '109', '2024-10-08', 1, 1 * 800.00),
(210, '7', '105', '2024-10-08', 3, 3 * 800.00),
(220, '9', '107', '2024-10-11', 2, 2 * 100.00),
(230, '10', '107', '2024-10-12', 4, 4 * 400.00),
(240, '8', '110', '2024-10-13', 1, 1 * 250.00),
(250, '5', '112', '2024-10-14', 2, 2 * 150.00),
(260, '4', '115', '2024-10-15', 3, 3 * 300.00),
(280, '10', '122', '2024-10-15', 1, 1 * 400.00),
(290, '2', '123', '2024-10-15', 1, 1 * 700.00),
(300, '1', '108', '2024-10-16', 1, 1 * 800.00),
(310, '6', '121', '2024-10-16', 2, 2 * 100.00),
(320, '10', '122', '2024-10-16', 1, 1 * 400.00),
(330, '2', '123', '2024-10-17', 1, 1 * 700.00);


INSERT INTO payments (payment_id, sale_id, payment_method, payment_date, amount_paid) VALUES
(231, '150', 'Cash', '2024-06-05', 800.00),
(232, '160', 'E-trans', '2024-12-07', 700.00),
(233, '170', 'Cash', '2024-08-19', 1100.00),
(234, '180', 'Cash', '2024-08-20', 300.00),
 (235, '190', 'Cash', '2024-09-12', 150.00),
(236, '200', 'Cash', '2024-10-08', 800.00),
(237, '210', 'E-trans', '2024-10-08', 800.00),
(238, '220', 'Cash', '2024-10-11', 100.00),
(240, '240', 'Cash', '2024-10-13', 250.00),
(241, '250', 'Cash', '2024-10-14', 150.00),
(242, '260', 'E-trans',  '2024-10-15', 300.00),
(243, '280', 'Cash', '2024-10-15', 400.00),
(244, '290', 'Cash', '2024-10-15', 700.00),
(245, '300', 'E-trans', '2024-10-16', 800.00),
(246, '310', 'Cash', '2024-10-16', 100.00),
(247, '320', 'Cash', '2024-10-16', 400.00),
(248, '330', 'Cash', '2024-10-17', 700.00);

SELECT s. product_id, s.quantity, p.category,p.price * s.quantity 
FROM products AS p
INNER JOIN sales AS s
ON s. product_id = p.product_id;



SELECT sales.customer_id, COUNT(quantity) AS sales_count, customers.first_name, customers.last_name
FROM sales
INNER JOIN customers
ON sales.customer_id = customers.customer_id
GROUP BY sales.customer_id, customers.first_name, customers.last_name;











SELECT 
    p.payment_method, 
    SUM(s.total_amount) AS total_revenue
FROM payments AS p
INNER JOIN sales AS s ON p.sale_id = s.sale_id
GROUP BY p.payment_method;

-- Write a query to retrieve a list of products, sorted by price in descending order.


SELECT product_name, category, price
FROM products
GROUP BY category, product_name, price
ORDER BY price DESC; 

-- Write a query to get the sales records ordered by `sale_date` in ascending order.

SELECT product_id, sale_date,  quantity, total_amount
FROM sales
ORDER BY sale_date asc;

--- Write a query to display customers sorted by their last name alphabetically.
SELECT customer_id, first_name, last_name
FROM customers
GROUP BY first_name, customer_id, last_name
ORDER BY last_name;

-- Write a query to find products that have been sold more than 5 times, using `HAVING` with the
-- `GROUP BY` statement.

SELECT COUNT(products.product_id) AS product_count, products.category, sales.product_id, product_name
FROM products
INNER JOIN sales ON products.product_id = sales.product_id
GROUP BY products.category, sales.product_id
HAVING COUNT(products.product_id > 5);

-- Write a query to list customers who have made total purchases (sum of `total_amount`)
-- exceeding $100.


SELECT customers.customer_id, customers.first_name, customers.last_name, COUNT(sales.sale_id) AS sales_count, sum(sale_id)
FROM customers
INNER JOIN sales
ON customers.customer_id = sales.customer_id
GROUP BY customers.customer_id, customers.first_name, customers.last_name
HAVING sales_count < 100;

-- Write a query to find categories with a total sales revenue greater than $500.

SELECT products.product_id, products.category, products.price
FROM products
HAVING price > 500;



SELECT COUNT(*) AS product_count, products.product_name, products.price
FROM products
GROUP BY products.product_name, products.price 
ORDER BY price DESC
LIMIT 5 ; 



SELECT sales.sale_id, sales.product_id, (sales.sale_date) AS sale_date_count, products.product_name, products.category, products.price
FROM sales
INNER JOIN products ON sales.product_id = products.product_id
GROUP BY sales.sale_id, sales.product_id, products.product_name, products.category, products.price
ORDER BY sales.sale_date DESC
LIMIT 3;

--- Write a query to list the first 5 customers who made purchases.

SELECT customers.customer_id, customers.first_name, customers.last_name, sales.sale_date
FROM sales
INNER JOIN customers
ON  customers.customer_id = sales.customer_id
GROUP BY customers.customer_id, customers.first_name, customers.last_name, sales.sale_date
ORDER BY customers.first_name, customers.last_name, sales.sale_date DESC
LIMIT 5;


-- Write a query to calculate the total revenue (sum of `total_amount`) for each product and use an
-- alias `total_revenue` for the calculated field.


SELECT products.product_name, 
       COUNT(sales.quantity) AS total_sales, 
       SUM(products.price * sales.quantity) AS total_amount
FROM products
INNER JOIN sales ON products.product_id = sales.product_id
GROUP BY products.product_name
ORDER BY total_sales, total_amount;

--- Write a query to display each customer's full name as `customer_name` by concatenating
-- `first_name` and `last_name`.

SELECT concat(customers.first_name,customers.last_name)
FROM customers;

-- Use aliasing to create a column called `sales_value` representing the product of `price` and
-- `quantity` for each sale.
SELECT 
    s.sale_id,
    s.product_id,
    s.customer_id,
    s.sale_date,
    s.quantity,
    p.price,
    (p.price * s.quantity) AS sales_value
FROM 
    sales AS s
JOIN 
    products AS p ON s.product_id = p.product_id;

-- Use aliasing to create a column called `sales_value` representing the product of `price` and
-- `quantity` for each sale.
SELECT 
    s.sale_id, 
    s.sale_date, 
    s.quantity, 
    p.product_name, 
    p.price, 
    (p.price * s.quantity) AS sales_value  -- Creating an alias for the calculated sales value
FROM 
    sales AS s
INNER JOIN 
    products AS p ON s.product_id = p.product_id;
    
    
    -- Write a query to display the product names in uppercase.
    
SELECT 
    UPPER(product_name) AS product_name_uppercase 
FROM 
    products;
    
    
    -- Write a query to extract the domain from the `email` field of each customer.
    SELECT 
    first_name, 
    last_name, 
    SUBSTRING_INDEX(email, '@', -1) AS email_domain
FROM 
    customers;

-- Write a query to display the first three characters of each customer's `last_name`.

SELECT 
    first_name, 
    last_name, 
    SUBSTRING(last_name, 1, 3) AS last_name_prefix
FROM 
    customers;
    
    
    -- Write a query that trims extra spaces around product names and displays them.
    
    SELECT 
    TRIM(product_name) AS trimmed_product_name
FROM 
    products;
    
    -- Write a query to calculate the average price of all products.
    
    SELECT 
    AVG(price) AS average_price
FROM 
    products;


-- Write a query to find the maximum `total_amount` from the `sales` table.

SELECT 
    MAX(total_amount) AS maximum_total_amount
FROM 
    sales;
    
    
    -- Write a query to calculate the total amount paid for all sales.
    
    SELECT 
    SUM(amount_paid) AS total_amount_paid
FROM 
    payments;
    

SELECT 
    MIN(quantity) AS minimum_quantity,
    MAX(quantity) AS maximum_quantity
FROM 
    sales;
    

-- Write a query to determine the number of distinct product categories available.

SELECT 
    COUNT(DISTINCT category) AS distinct_category_count
FROM 
    products;
    
    
    
SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(s.total_amount) AS total_purchase_amount
FROM 
    customers AS c
JOIN 
    sales AS s ON c.customer_id = s.customer_id
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    total_purchase_amount DESC
LIMIT 1;



-- Calculate the total number of products sold for each product category and sort the result in
-- descending order.

SELECT 
    p.category, 
    SUM(s.quantity) AS total_products_sold
FROM 
    products AS p
JOIN 
    sales AS s ON p.product_id = s.product_id
GROUP BY 
    p.category
ORDER BY 
    total_products_sold DESC;



--  Write a query that retrieves the details of sales made in the last 30 days.


--- Create a query to display the top 3 customers with the most sales in terms of quantity.
--

SELECT 
    s.sale_id,
    s.product_id,
    s.customer_id,
    s.sale_date,
    s.quantity,
    s.total_amount
FROM 
    sales AS s
WHERE 
    s.sale_date >= CURDATE() - INTERVAL 30 DAY;



 Write a query to list all customers whose names start with the letter "J".



-- Write a query to calculate the total unpaid amount for each sale by subtracting `amount_paid`
from `total_amount`.

SELECT 
    customer_id, 
    first_name, 
    last_name, 
    email, 
    phone_number
FROM 
    customers
WHERE 
    first_name LIKE 'J%' OR last_name LIKE 'J%';



-- Write a query to find sales where the payment method was "Credit Card" and the
-- total_amount` is greater than $50.

SELECT 
    s.sale_id,
    s.product_id,
    s.customer_id,
    s.sale_date,
    s.quantity,
    s.total_amount,
    p.payment_method
FROM 
    sales AS s
JOIN 
    payments AS p ON s.sale_id = p.sale_id
WHERE 
    p.payment_method = 'Credit Card' 
    AND s.total_amount > 50;




-- Write a query that lists all sales made by customers whose last names contain the letter "e"

SELECT 
    s.sale_id,
    s.product_id,
    s.customer_id,
    s.sale_date,
    s.quantity,
    s.total_amount
FROM 
    sales AS s
JOIN 
    customers AS c ON s.customer_id = c.customer_id
WHERE 
    c.last_name LIKE 'e';









