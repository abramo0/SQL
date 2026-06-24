# SQL Basics

## Exercise 1 - Display all clients

**Question:** Who are all the clients stored in the database?

### Solution
```sql
SELECT *
FROM clients;
```

---

## Exercise 2 - Display all products

**Question:** Which products are available in the store?

### Solution
```sql
SELECT *
FROM products;
```

---

## Exercise 3 - Show client names and surnames

**Question:** What are the names and surnames of all clients?

### Solution
```sql
SELECT name, surname
FROM clients;
```

---

## Exercise 4 - Show client names and cities

**Question:** In which cities do the clients live?

### Solution
```sql
SELECT name, city
FROM clients;
```

---

## Exercise 5 - Display all client emails

**Question:** What are the email addresses of all clients?

### Solution
```sql
SELECT email
FROM clients;
```

---

## Exercise 6 - Find clients living in London

**Question:** Which clients live in London?

### Solution
```sql
SELECT *
FROM clients
WHERE city = 'London';
```

---

## Exercise 7 - Find clients not living in London

**Question:** Which clients live outside London?

### Solution
```sql
SELECT *
FROM clients
WHERE city <> 'London';
```

---

## Exercise 8 - Clients in London or New York

**Question:** Which clients live in London or New York?

### Solution
```sql
SELECT *
FROM clients
WHERE city = 'London' OR city = 'New York';
```

---

## Exercise 9 - Clients in multiple cities

**Question:** Which clients live in London, New York, or Boston?

### Solution
```sql
SELECT *
FROM clients
WHERE city IN ('London', 'New York', 'Boston');
```

---

## Exercise 10 - Products over 100€

**Question:** Which products cost more than 100€?

### Solution
```sql
SELECT *
FROM products
WHERE price > 100;
```

---

## Exercise 11 - Products under 100€

**Question:** Which products cost less than 100€?

### Solution
```sql
SELECT *
FROM products
WHERE price < 100;
```

---

## Exercise 12 - Products between 50 and 200

**Question:** Which products cost between 50 and 200?

### Solution
```sql
SELECT *
FROM products
WHERE price BETWEEN 50 AND 200;
```

---

## Exercise 13 - Products outside range

**Question:** Which products are NOT between 50 and 200?

### Solution
```sql
SELECT *
FROM products
WHERE price NOT BETWEEN 50 AND 200;
```

---

## Exercise 14 - Sort products ascending

**Question:** Cheapest products first?

### Solution
```sql
SELECT *
FROM products
ORDER BY price ASC;
```

---

## Exercise 15 - Sort products descending

**Question:** Most expensive products?

### Solution
```sql
SELECT *
FROM products
ORDER BY price DESC;
```

---

## Exercise 16 - Top 3 expensive products

**Question:** Three most expensive products?

### Solution
```sql
SELECT *
FROM products
ORDER BY price DESC
LIMIT 3;
```

---

## Exercise 17 - Count clients

**Question:** How many clients exist?

### Solution
```sql
SELECT COUNT(*) AS total_clients
FROM clients;
```

---

## Exercise 18 - Most expensive product

**Question:** Highest priced product?

### Solution
```sql
SELECT *
FROM products
ORDER BY price DESC
LIMIT 1;
```

---

## Exercise 19 - Unique cities

**Question:** Which cities do clients live in?

### Solution
```sql
SELECT DISTINCT city
FROM clients;
```

---

## Exercise 20 - Number of cities

**Question:** How many different cities?

### Solution
```sql
SELECT COUNT(DISTINCT city) AS total_cities
FROM clients;
```

---

## Exercise 21 - Names starting with J

**Question:** Clients whose name starts with J?

### Solution
```sql
SELECT *
FROM clients
WHERE name LIKE 'J%';
```

---

## Exercise 22 - Surname ending with n

**Question:** Clients whose surname ends with n?

### Solution
```sql
SELECT *
FROM clients
WHERE surname LIKE '%n';
```

---

## Exercise 23 - Products containing "phone"

**Question:** Products containing "phone"?

### Solution
```sql
SELECT *
FROM products
WHERE name LIKE '%phone%';
```

---

## Exercise 24 - Cheapest product

**Question:** Lowest price product?

### Solution
```sql
SELECT *
FROM products
ORDER BY price ASC
LIMIT 1;
```

---

## Exercise 25 - Average price

**Question:** Average product price?

### Solution
```sql
SELECT AVG(price) AS average_price
FROM products;
```

---

## Exercise 26 - Max price

### Solution
```sql
SELECT MAX(price) AS highest_price
FROM products;
```

---

## Exercise 27 - Min price

### Solution
```sql
SELECT MIN(price) AS lowest_price
FROM products;
```

---

## Exercise 28 - Total value

### Solution
```sql
SELECT SUM(price) AS total_value
FROM products;
```

---

## Exercise 29 - Count products

### Solution
```sql
SELECT COUNT(*) AS total_products
FROM products;
```

---

## Exercise 30 - 5 cheapest

### Solution
```sql
SELECT *
FROM products
ORDER BY price ASC
LIMIT 5;
```

---

## Exercise 31 - 5 most expensive

### Solution
```sql
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;
```

---

## Exercise 32 - Clients per city

**Question:** How many clients per city?

### Solution
```sql
SELECT city, COUNT(*) AS total_clients
FROM clients
GROUP BY city;
```

---

## Exercise 33 - Cities with more than 1 client

**Question:** Which cities have more than 1 client?

### Solution
```sql
SELECT city, COUNT(*) AS total_clients
FROM clients
GROUP BY city
HAVING COUNT(*) > 1;
```

---

## Exercise 34 - Avg price per category

**Question:** Average price per category?

### Solution
```sql
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category;
```

---

## Exercise 35 - Total per category

**Question:** How much is the total price of all products for each category?

### Solution
```sql
SELECT category, SUM(price) AS total_value
FROM products
GROUP BY category;
```

---

## Exercise 36 - Category with the Highest Average Price

**Question:** Which category has the highest average product price?

### Solution
```sql
SELECT category, AVG(price) AS avg_price
FROM products
GROUP BY category
ORDER BY avg_price DESC
LIMIT 1;
```

---

## Exercise 37 - Clients without email

**Question:** Which clients do not have an email address?

### Solution
```sql
SELECT *
FROM clients
WHERE email IS NULL;
```

---

## Exercise 38 - Clients with email

**Question:** Which clients have an email address?

### Solution
```sql
SELECT *
FROM clients
WHERE email IS NOT NULL;
```

---

## Exercise 39 - Clients and orders

**Question:** Which clients have placed orders, and what are their order details?

### Solution
```sql
SELECT c.name, c.surname, o.id AS order_id, o.order_date
FROM clients c
JOIN orders o ON c.id = o.client_id;
```

---

## Exercise 40 - Orders with products

**Question:** What products were ordered in each order?

### Solution
```sql
SELECT o.id, p.name, p.price
FROM orders o
JOIN products p ON o.product_id = p.id;
```

---

## Exercise 41 - Full order details

**Question:** What are the full details of each order, including client, product, and quantity?

### Solution
```sql
SELECT c.name, c.surname, p.name AS product, o.quantity
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id;
```

---

## Exercise 42 - Total spent per client

**Question:** How much has each client spent in total?

### Solution
```sql
SELECT c.name, c.surname,
SUM(p.price * o.quantity) AS total_spent
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id;
```

---

## Exercise 43 - Clients spending > 1000

### Solution
```sql
SELECT c.name,
SUM(p.price * o.quantity) AS total_spent
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id
HAVING SUM(p.price * o.quantity) > 1000;
```

---

## Exercise 44 - Best selling product

### Solution
```sql
SELECT p.name, SUM(o.quantity) AS total_sold
FROM products p
JOIN orders o ON p.id = o.product_id
GROUP BY p.id
ORDER BY total_sold DESC
LIMIT 1;
```

---

## Exercise 45 - Products never ordered

### Solution
```sql
SELECT p.*
FROM products p
LEFT JOIN orders o ON p.id = o.product_id
WHERE o.product_id IS NULL;
```

---

## Exercise 46 - Most active client

### Solution
```sql
SELECT c.name, COUNT(o.id) AS total_orders
FROM clients c
JOIN orders o ON c.id = o.client_id
GROUP BY c.id
ORDER BY total_orders DESC
LIMIT 1;
```

---

## Exercise 47 - Clients with orders

### Solution
```sql
SELECT *
FROM clients c
WHERE EXISTS (
  SELECT 1 FROM orders o WHERE o.client_id = c.id
);
```

---

## Exercise 48 - Clients without orders

### Solution
```sql
SELECT *
FROM clients c
WHERE NOT EXISTS (
  SELECT 1 FROM orders o WHERE o.client_id = c.id
);
```

---

## Exercise 49 - Products ordered

### Solution
```sql
SELECT *
FROM products
WHERE id IN (SELECT product_id FROM orders);
```

---

## Exercise 50 - Products never ordered

### Solution
```sql
SELECT *
FROM products
WHERE id NOT IN (SELECT product_id FROM orders);
```

---

## Exercise 51 - Clients who bought product 1

### Solution
```sql
SELECT DISTINCT c.*
FROM clients c
JOIN orders o ON c.id = o.client_id
WHERE o.product_id = 1;
```

---

## Exercise 52 - Above average products

### Solution
```sql
SELECT *
FROM products
WHERE price > (SELECT AVG(price) FROM products);
```

---

## Exercise 53 - Max per category

### Solution
```sql
SELECT *
FROM products p1
WHERE price = (
  SELECT MAX(price)
  FROM products p2
  WHERE p1.category = p2.category
);
```

---

## Exercise 54 - Categories > 500

### Solution
```sql
SELECT DISTINCT category
FROM products
WHERE price > 500;
```

---

## Exercise 55 - CASE price

### Solution
```sql
SELECT name, price,
CASE
  WHEN price < 50 THEN 'Cheap'
  WHEN price BETWEEN 50 AND 200 THEN 'Medium'
  ELSE 'Expensive'
END
FROM products;
```

---

## Exercise 56 - Flag expensive

### Solution
```sql
SELECT name, price,
CASE WHEN price > 100 THEN 'YES' ELSE 'NO' END
FROM products;
```

---

## Exercise 57 - Client status

### Solution
```sql
SELECT c.name, COUNT(o.id),
CASE
  WHEN COUNT(o.id) = 0 THEN 'Inactive'
  WHEN COUNT(o.id) BETWEEN 1 AND 3 THEN 'Regular'
  ELSE 'VIP'
END
FROM clients c
LEFT JOIN orders o ON c.id = o.client_id
GROUP BY c.id;
```

---

## Exercise 58 - Orders 2025

### Solution
```sql
SELECT *
FROM orders
WHERE YEAR(order_date) = 2025;
```

---

## Exercise 59 - Last 30 days

### Solution
```sql
SELECT *
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 30 DAY;
```

---

## Exercise 60 - Monthly orders

### Solution
```sql
SELECT MONTH(order_date), COUNT(*)
FROM orders
GROUP BY MONTH(order_date);
```

---

## Exercise 61 - Yearly orders

### Solution
```sql
SELECT YEAR(order_date), COUNT(*)
FROM orders
GROUP BY YEAR(order_date);
```

---

## Exercise 62 - Total spent

### Solution
```sql
SELECT c.name, SUM(p.price * o.quantity)
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id;
```

---

## Exercise 63 - Avg order value

### Solution
```sql
SELECT c.name, AVG(p.price * o.quantity)
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id;
```

---

## Exercise 64 - Best sellers

### Solution
```sql
SELECT p.name, SUM(o.quantity)
FROM products p
JOIN orders o ON p.id = o.product_id
GROUP BY p.id;
```

---

## Exercise 65 - Revenue per product

### Solution
```sql
SELECT p.name, SUM(p.price * o.quantity)
FROM products p
JOIN orders o ON p.id = o.product_id
GROUP BY p.id;
```

---

## Exercise 66 - Revenue per category

### Solution
```sql
SELECT p.category, SUM(p.price * o.quantity)
FROM products p
JOIN orders o ON p.id = o.product_id
GROUP BY p.category;
```

---

## Exercise 67 - Top 3 clients

### Solution
```sql
SELECT c.name, SUM(p.price * o.quantity)
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id
ORDER BY SUM(p.price * o.quantity) DESC
LIMIT 3;
```

---

## Exercise 68 - Never sold products

### Solution
```sql
SELECT p.*
FROM products p
LEFT JOIN orders o ON p.id = o.product_id
WHERE o.product_id IS NULL;
```

---

## Exercise 69 - Above avg spend

### Solution
```sql
SELECT c.name
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id
HAVING SUM(p.price * o.quantity) >
(
  SELECT AVG(total)
  FROM (
    SELECT SUM(p2.price * o2.quantity) AS total
    FROM orders o2
    JOIN products p2 ON o2.product_id = p2.id
    GROUP BY o2.client_id
  ) x
);
```

---

## Exercise 70 - Sales %

### Solution
```sql
SELECT p.name,
SUM(o.quantity) * 100.0 /
(SELECT SUM(quantity) FROM orders) AS percentage_sales
FROM products p
JOIN orders o ON p.id = o.product_id
GROUP BY p.id;
```

---

## Exercise 71 - Most profitable product

### Solution
```sql
SELECT p.name, SUM(p.price * o.quantity)
FROM products p
JOIN orders o ON p.id = o.product_id
GROUP BY p.id
ORDER BY SUM(p.price * o.quantity) DESC
LIMIT 1;
```

---

## Exercise 72 - Clients > 3 items

### Solution
```sql
SELECT c.name, SUM(o.quantity)
FROM clients c
JOIN orders o ON c.id = o.client_id
GROUP BY c.id
HAVING SUM(o.quantity) > 3;
```

---

## Exercise 73 - Products multiple orders

### Solution
```sql
SELECT p.name, COUNT(o.id)
FROM products p
JOIN orders o ON p.id = o.product_id
GROUP BY p.id
HAVING COUNT(o.id) > 1;
```

---

## Exercise 74 - Ranking clients

### Solution
```sql
SELECT c.name, SUM(p.price * o.quantity)
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id
ORDER BY SUM(p.price * o.quantity) DESC;
```

---

## Exercise 75 - Total revenue

### Solution
```sql
SELECT SUM(p.price * o.quantity)
FROM orders o
JOIN products p ON o.product_id = p.id;
```

---

## Exercise 76 - No orders but email

### Solution
```sql
SELECT *
FROM clients c
WHERE c.email IS NOT NULL
AND NOT EXISTS (
  SELECT 1 FROM orders o WHERE o.client_id = c.id
);
```

---

## Exercise 77 - Most active month

### Solution
```sql
SELECT MONTH(order_date), COUNT(*)
FROM orders
GROUP BY MONTH(order_date)
ORDER BY COUNT(*) DESC
LIMIT 1;
```

---

## Exercise 78 - Revenue per month

### Solution
```sql
SELECT MONTH(o.order_date), SUM(p.price * o.quantity)
FROM orders o
JOIN products p ON o.product_id = p.id
GROUP BY MONTH(o.order_date)
ORDER BY MONTH(o.order_date);
```

---

## Exercise 79 - Top category revenue

### Solution
```sql
SELECT p.category, SUM(p.price * o.quantity)
FROM orders o
JOIN products p ON o.product_id = p.id
GROUP BY p.category
ORDER BY SUM(p.price * o.quantity) DESC
LIMIT 1;
```

---

## Exercise 80 - Repeated clients

### Solution
```sql
SELECT c.name, c.surname, COUNT(o.id)
FROM clients c
JOIN orders o ON c.id = o.client_id
GROUP BY c.id
HAVING COUNT(o.id) > 1;
```

---

## Exercise 81 - Cities spending

### Solution
```sql
SELECT c.city, SUM(p.price * o.quantity)
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.city
ORDER BY SUM(p.price * o.quantity) DESC;
```

---

## Exercise 82 - Above avg orders

### Solution
```sql
SELECT *
FROM orders o
WHERE (
  SELECT SUM(p.price * o2.quantity)
  FROM orders o2
  JOIN products p ON o2.product_id = p.id
  WHERE o2.id = o.id
) >
(
  SELECT AVG(order_total)
  FROM (
    SELECT SUM(p.price * o3.quantity) AS order_total
    FROM orders o3
    JOIN products p ON o3.product_id = p.id
    GROUP BY o3.id
  ) x
);
```

---

## Exercise 83 - No sales last year

### Solution
```sql
SELECT *
FROM products p
WHERE NOT EXISTS (
  SELECT 1
  FROM orders o
  WHERE o.product_id = p.id
    AND o.order_date >= CURRENT_DATE - INTERVAL 1 YEAR
);
```

---

## Exercise 84 - Highest order

### Solution
```sql
SELECT o.id, SUM(p.price * o.quantity)
FROM orders o
JOIN products p ON o.product_id = p.id
GROUP BY o.id
ORDER BY SUM(p.price * o.quantity) DESC
LIMIT 1;
```

---

## Exercise 85 - Lowest order

### Solution
```sql
SELECT o.id, SUM(p.price * o.quantity)
FROM orders o
JOIN products p ON o.product_id = p.id
GROUP BY o.id
ORDER BY SUM(p.price * o.quantity) ASC
LIMIT 1;
```

---

## Exercise 86 - Avg quantity

### Solution
```sql
SELECT AVG(quantity)
FROM orders;
```

---

## Exercise 87 - >2 orders clients

### Solution
```sql
SELECT c.name, COUNT(o.id)
FROM clients c
JOIN orders o ON c.id = o.client_id
GROUP BY c.id
HAVING COUNT(o.id) > 2;
```

---

## Exercise 88 - Stable demand

### Solution
```sql
SELECT p.name, COUNT(o.id)
FROM products p
JOIN orders o ON p.id = o.product_id
GROUP BY p.id
HAVING COUNT(o.id) > 1;
```

---

## Exercise 89 - Year revenue

### Solution
```sql
SELECT YEAR(order_date), SUM(p.price * o.quantity)
FROM orders o
JOIN products p ON o.product_id = p.id
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);
```

---

## Exercise 90 - Revenue clients

### Solution
```sql
SELECT c.name, SUM(p.price * o.quantity)
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id
ORDER BY SUM(p.price * o.quantity) DESC;
```

---

## Exercise 91 - Top users

### Solution
```sql
SELECT c.name, SUM(p.price * o.quantity)
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id
ORDER BY SUM(p.price * o.quantity) DESC;
```

---

## Exercise 92 - First order

### Solution
```sql
SELECT *
FROM orders o1
WHERE o1.order_date = (
  SELECT MIN(o2.order_date)
  FROM orders o2
  WHERE o2.client_id = o1.client_id
);
```

---

## Exercise 93 - Last order

### Solution
```sql
SELECT *
FROM orders o1
WHERE o1.order_date = (
  SELECT MAX(o2.order_date)
  FROM orders o2
  WHERE o2.client_id = o1.client_id
);
```

---

## Exercise 94 - Days between

### Solution
```sql
SELECT client_id,
DATEDIFF(MAX(order_date), MIN(order_date)) AS days_between
FROM orders
GROUP BY client_id;
```

---

## Exercise 95 - Product frequency

### Solution
```sql
SELECT product_id, COUNT(*)
FROM orders
GROUP BY product_id
ORDER BY COUNT(*) DESC;
```

---

## Exercise 96 - Category dominance

### Solution
```sql
SELECT p.category, COUNT(*)
FROM orders o
JOIN products p ON o.product_id = p.id
GROUP BY p.category
ORDER BY COUNT(*) DESC;
```

---

## Exercise 97 - Lifetime value

### Solution
```sql
SELECT c.name, SUM(p.price * o.quantity)
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN products p ON o.product_id = p.id
GROUP BY c.id
ORDER BY SUM(p.price * o.quantity) DESC;
```

---

## Exercise 98 - Total revenue

### Solution
```sql
SELECT SUM(p.price * o.quantity)
FROM orders o
JOIN products p ON o.product_id = p.id;
```

---

## Exercise 99 - Order frequency

### Solution
```sql
SELECT c.name, COUNT(o.id)
FROM clients c
JOIN orders o ON c.id = o.client_id
GROUP BY c.id
ORDER BY COUNT(o.id) DESC;
```

---

## Exercise 100 - Business overview

### Solution
```sql
SELECT
  COUNT(DISTINCT c.id),
  COUNT(o.id),
  SUM(p.price * o.quantity)
FROM clients c
LEFT JOIN orders o ON c.id = o.client_id
LEFT JOIN products p ON o.product_id = p.id;
```
