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
SELECT
    name,
    surname
FROM clients;
```

---

## Exercise 4 - Show client names and cities

**Question:** In which cities do the clients live?

### Solution

```sql
SELECT
    name,
    city
FROM clients;
```

---

## Exercise 5 - Display all client email addresses

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

## Exercise 7 - Find clients living in New York

**Question:** Which clients live in New York?

### Solution

```sql
SELECT *
FROM clients
WHERE city = 'New York';
```

---

## Exercise 8 - Show products costing more than €100

**Question:** Which products cost more than €100?

### Solution

```sql
SELECT *
FROM products
WHERE price > 100;
```

---

## Exercise 9 - Show products costing less than €100

**Question:** Which products cost less than €100?

### Solution

```sql
SELECT *
FROM products
WHERE price < 100;
```

---

## Exercise 10 - Find products priced between €50 and €200

**Question:** Which products have a price between €50 and €200?

### Solution

```sql
SELECT *
FROM products
WHERE price BETWEEN 50 AND 200;
```

---

## Exercise 11 - Sort products by price (lowest first)

**Question:** Which products are the cheapest?

### Solution

```sql
SELECT *
FROM products
ORDER BY price ASC;
```

---

## Exercise 12 - Sort products by price (highest first)

**Question:** Which products are the most expensive?

### Solution

```sql
SELECT *
FROM products
ORDER BY price DESC;
```

---

## Exercise 13 - Display the 3 most expensive products

**Question:** What are the three most expensive products?

### Solution

```sql
SELECT *
FROM products
ORDER BY price DESC
LIMIT 3;
```

---

## Exercise 14 - Count all clients

**Question:** How many clients are registered in the database?

### Solution

```sql
SELECT COUNT(*) AS total_clients
FROM clients;
```

---

## Exercise 15 - Find the most expensive product

**Question:** Which product has the highest price?

### Solution

```sql
SELECT *
FROM products
ORDER BY price DESC
LIMIT 1;
```

---

## Exercise 16 - Show all unique cities

**Question:** In which cities do clients live?

### Solution

```sql
SELECT DISTINCT city
FROM clients;
```

---

## Exercise 17 - Count the number of different cities

**Question:** How many different cities are represented in the client database?

### Solution

```sql
SELECT COUNT(DISTINCT city) AS total_cities
FROM clients;
```

---

## Exercise 18 - Find products cheaper than €50

**Question:** Which products cost less than €50?

### Solution

```sql
SELECT *
FROM products
WHERE price < 50;
```

---

## Exercise 19 - Find products costing at least €100

**Question:** Which products cost €100 or more?

### Solution

```sql
SELECT *
FROM products
WHERE price >= 100;
```

---

## Exercise 20 - Find clients who live in London or New York

**Question:** Which clients live in London or New York?

### Solution

```sql
SELECT *
FROM clients
WHERE city = 'London'
   OR city = 'New York';
```

---

## Exercise 21 - Find clients who do not live in London

**Question:** Which clients live outside London?

### Solution

```sql
SELECT *
FROM clients
WHERE city <> 'London';
```

---

## Exercise 22 - Find clients living in a list of cities

**Question:** Which clients live in London, New York, or Boston?

### Solution

```sql
SELECT *
FROM clients
WHERE city IN ('London', 'New York', 'Boston');
```

---

## Exercise 23 - Find products that are not between €50 and €200

**Question:** Which products cost less than €50 or more than €200?

### Solution

```sql
SELECT *
FROM products
WHERE price NOT BETWEEN 50 AND 200;
```

---

## Exercise 24 - Find clients whose name starts with 'J'

**Question:** Which clients have a first name starting with the letter J?

### Solution

```sql
SELECT *
FROM clients
WHERE name LIKE 'J%';
```

---

## Exercise 25 - Find clients whose surname ends with 'n'

**Question:** Which clients have a surname ending with the letter 'n'?

### Solution

```sql
SELECT *
FROM clients
WHERE surname LIKE '%n';
```

---

## Exercise 26 - Find products containing the word 'phone'

**Question:** Which products contain the word 'phone' in their name?

### Solution

```sql
SELECT *
FROM products
WHERE name LIKE '%phone%';
```

---

## Exercise 27 - Show the cheapest product

**Question:** Which product has the lowest price?

### Solution

```sql
SELECT *
FROM products
ORDER BY price ASC
LIMIT 1;
```

---

## Exercise 28 - Find the average product price

**Question:** What is the average price of all products?

### Solution

```sql
SELECT AVG(price) AS average_price
FROM products;
```

---

## Exercise 29 - Find the highest product price

**Question:** What is the highest product price?

### Solution

```sql
SELECT MAX(price) AS highest_price
FROM products;
```

---

## Exercise 30 - Find the lowest product price

**Question:** What is the lowest product price?

### Solution

```sql
SELECT MIN(price) AS lowest_price
FROM products;
```

---

## Exercise 31 - Calculate the total value of all products

**Question:** What is the sum of all product prices?

### Solution

```sql
SELECT SUM(price) AS total_value
FROM products;
```

---

## Exercise 32 - Count the number of products

**Question:** How many products are available in the store?

### Solution

```sql
SELECT COUNT(*) AS total_products
FROM products;
```

---

## Exercise 33 - Display the 5 cheapest products

**Question:** What are the five cheapest products?

### Solution

```sql
SELECT *
FROM products
ORDER BY price ASC
LIMIT 5;
```

---

## Exercise 34 - Display the 5 most expensive products

**Question:** What are the five most expensive products?

### Solution

```sql
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;
```
