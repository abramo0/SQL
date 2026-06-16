-- CLIENTS
INSERT INTO clients (id, name, surname, email, city) VALUES
(1, 'Mario', 'Rossi', 'mario.rossi@email.com', 'Milano'),
(2, 'Luca', 'Bianchi', 'luca.bianchi@email.com', 'Roma'),
(3, 'Anna', 'Verdi', 'anna.verdi@email.com', 'Torino'),
(4, 'Giulia', 'Neri', 'giulia.neri@email.com', 'Napoli'),
(5, 'Marco', 'Ferrari', 'marco.ferrari@email.com', 'Milano'),
(6, 'Sara', 'Gallo', 'sara.gallo@email.com', 'Bologna'),
(7, 'Paolo', 'Conti', 'paolo.conti@email.com', 'Firenze'),
(8, 'Elena', 'Ricci', 'elena.ricci@email.com', 'Roma'),
(9, 'Davide', 'Greco', 'davide.greco@email.com', 'Genova'),
(10, 'Chiara', 'Moretti', 'chiara.moretti@email.com', 'Verona');

-- PRODUCTS
INSERT INTO products (id, name, price) VALUES
(1, 'Laptop', 899.99),
(2, 'Mouse', 25.50),
(3, 'Tastiera', 49.90),
(4, 'Monitor', 199.99),
(5, 'Stampante', 129.99),
(6, 'Webcam', 59.99),
(7, 'SSD 1TB', 89.99),
(8, 'Cuffie', 79.90),
(9, 'Tablet', 299.99),
(10, 'Smartphone', 699.99);

-- ORDERS
INSERT INTO orders (id, client_id, product_id, quantity, order_date) VALUES
(1, 1, 1, 1, '2025-01-10'),
(2, 1, 2, 2, '2025-01-10'),
(3, 2, 4, 1, '2025-01-15'),
(4, 3, 3, 1, '2025-01-20'),
(5, 4, 5, 1, '2025-01-22'),
(6, 5, 1, 1, '2025-02-01'),
(7, 6, 7, 2, '2025-02-05'),
(8, 7, 8, 1, '2025-02-10'),
(9, 8, 10, 1, '2025-02-15'),
(10, 9, 9, 1, '2025-02-20'),
(11, 10, 6, 2, '2025-02-22'),
(12, 2, 7, 1, '2025-03-01'),
(13, 3, 4, 2, '2025-03-05'),
(14, 4, 8, 3, '2025-03-10'),
(15, 5, 10, 1, '2025-03-12'),
(16, 6, 2, 4, '2025-03-15'),
(17, 7, 1, 1, '2025-03-20'),
(18, 8, 3, 2, '2025-03-22'),
(19, 9, 5, 1, '2025-03-25'),
(20, 10, 9, 1, '2025-03-28');
