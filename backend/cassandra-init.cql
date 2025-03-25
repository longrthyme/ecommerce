-- Create the keyspace (database)
CREATE KEYSPACE IF NOT EXISTS ecommerce_keyspace
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

-- Use the keyspace
USE ecommerce_keyspace;

-- Create a table for products
CREATE TABLE IF NOT EXISTS products (
    id UUID PRIMARY KEY,
    name TEXT,
    description TEXT,
    price DECIMAL,
    stock INT,
    created_at TIMESTAMP
);

-- Create a table for orders
CREATE TABLE IF NOT EXISTS orders (
    id UUID PRIMARY KEY,
    user_id UUID,
    product_id UUID,
    quantity INT,
    total_price DECIMAL,
    status TEXT,
    created_at TIMESTAMP
);

-- Insert sample data
INSERT INTO products (id, name, description, price, stock, created_at)
VALUES (uuid(), 'iPhone 15', 'Latest Apple iPhone', 999.99, 50, toTimestamp(now()));

INSERT INTO orders (id, user_id, product_id, quantity, total_price, status, created_at)
VALUES (uuid(), uuid(), uuid(), 1, 999.99, 'pending', toTimestamp(now()));
