/*Sales by salesman and date*/
SELECT s.id_salesman, sa.name AS salesman_name, s.date, COUNT(s.id) AS total_sales
FROM sales s
JOIN salesman sa ON s.id_salesman = sa.id
WHERE s.date between '2023-07-01' AND '2023-08-30'
group by s.id_salesman, s.date;

/*Total sales by product category*/
SELECT p.category, SUM(sd.quantity * sd.unit_price) AS total_sales_amount
FROM sales_detail sd
JOIN product p ON sd.id_product = p.id
GROUP BY p.category
ORDER BY total_sales_amount DESC;

/*Customers who made recent purchases*/
SELECT c.id, c.name, c.email
FROM customer c
WHERE EXISTS (
	SELECT 1
    FROM sales s
    WHERE s.id_customer = c.id
    AND s.date >= DATE_SUB(NOW(), INTERVAL 30 DAY)
);
/*OBSERVATION:
WHERE EXISTS (...): Here's the interesting part. The EXISTS clause checks if the subquery inside the parentheses returns any results.
the parentheses returns any results. In this case, the subquery looks for sales where the
id_customer matches the id of the current customer (c.id) and where the date (s.date) is greater than or equal to
30 days ago using DATE_SUB(NOW(), INTERVAL 30 DAY).*/

/*Best selling products*/
SELECT p.name, SUM(sd.quantity) AS total_sold
FROM sales_detail sd
JOIN product p ON sd.id_product = p.id
GROUP BY p.id
ORDER BY total_sold DESC;

/*Monthly Revenue*/
SELECT YEAR(date) AS year, MONTH(date) As month, SUM(sd.quantity*sd.unit_price) as total_income
FROM sales s
JOIN sales_detail sd On s.id = sd.id_sales
WHERE YEAR(date) = 2023
GROUP BY year, month
ORDER BY month;

/*Sales by salesman and quantity sold*/
SELECT sa.name As salesman_name, p.name As product_name, SUM(sd.quantity) As total_quantity_sold
FROM sales_detail sd
JOIN sales s ON sd.id_sales = s.id
JOIN salesman sa ON s.id_salesman = sa.id
JOIN product p ON sd.id_product = p.id
WHERE sd.quantity >= 2
GROUP BY sa.id, p.id;