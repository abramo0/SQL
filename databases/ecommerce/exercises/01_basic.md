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
