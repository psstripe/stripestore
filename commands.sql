/* This is a comment. */
CREATE TABLE product (
  id INTEGER PRIMARY KEY,
  product_name VARCHAR(255),
  price INTEGER
);

INSERT INTO product VALUES (1, "sneakers", 10000), (2, "sandals", 15000), (3, "heels",30000);
INSERT INTO product VALUES (4, "flip flops", 20000), (5, "high tops", 15000), (6, "wedges",30000);

CREATE TABLE orders2 (
  id INTEGER PRIMARY KEY,
  email_address VARCHAR (255),
  order_date INTEGER,
  product_id INTEGER,
  FOREIGN KEY (product_id) REFERENCES product(id)
);

INSERT INTO orders2 VALUES (1, "jane@gmail.com", 08012016, 1), (2, "zoe@gmail.com", 09012016, 2), (3, "deschanel@gmail.com", 10012016, 3);

SELECT orders2.id, orders2.email_address, orders2.order_date, product.product_name, product.price
FROM orders2
INNER JOIN product
ON orders2.product_id=product.id
