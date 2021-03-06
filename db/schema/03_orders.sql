DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE orders (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  order_status VARCHAR(255),
  order_begin TIME DEFAULT CURRENT_TIME(2),
  order_end TIMESTAMP,
  owner_id VARCHAR(225),
  total_price DECIMAL
);



