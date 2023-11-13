-- Comments in SQL Start with dash-dash --
-- price of 250, can_be_returned of true

INSERT INTO products
(name, price, can_be_returned)
VALUES('3 Wood', 250.00, 't')

-- add product named Golf Shoe
-- price of 80, can_be_returned of false

INSERT INTO products
(name, price, can_be_returned)
VALUES('Golf Shoe', 150.00, 'f')

-- add product to the table with the name of snowboard
-- price of 680 and can_be_returned of t
INSERT INTO products
(name, price, can_be_returned)
VALUES('Snowboard', 680.00, 't')

-- display all details of the table
SELECT * FROM products

-- display all of the names of the products
SELECT name FROM products

-- display all the names and their price
SELECT name, price FROM products

-- add a new product 
INSERT INTO products
(name, price, can_be_returned)
VALUES ('Snowboard Boot', 180.00, 'f')

-- display only the products that have a price less than 200

SELECT * FROM products WHERE price < 200.00

-- display only the products that have a price between 100 & 300
SELECT * FROM products WHERE price BETWEEN 100.00 AND 300.00

-- there's a sale going on; everything is $20 off
UPDATE products SET price = price - 20

-- because of the sale everything less than $25 has sold out
-- remove all products whose price meets the req.

DELETE FROM products WHERE price < 25;

-- AND now the sale is over for the remaining products - increase their price
UPDATE products SET price = price + 20

-- company policy has changed and all products are now returnable
UPDATE products SET can_be_returned ='t'