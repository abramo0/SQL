CREATE TABLE clients (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(8,2)
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    client_id INT,
    product_id INT,
    quantity INT,
    date_order DATE,

    FOREIGN KEY (client_id)
        REFERENCES clients(id),

    FOREIGN KEY (product_id)
        REFERENCES products(id)
);
