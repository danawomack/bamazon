-- Drops the bamazon db if it exists currently --
DROP DATABASE IF EXISTS bamazon__db;
-- Creates the "bamazon" database --
CREATE DATABASE bamazon_db;


USE bamazon_db;

-- Creates the table 'products'
CREATE TABLE products (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(100),
  department_name VARCHAR(100)
  price DECIMAL(10,2) NULL,
  stock_quantity INTEGER(10),
  PRIMARY KEY (ID)

);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("5 Speed Bike","Sporting", 249.99, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Fishing Rod","Sporting", 99.99, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Eye Liner","Beauty", 18.99, 50);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Eye Shadow Palette","Beauty", 35.00, 40);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Phone Charger","Electronics", 12.99, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Wireless Iphone Charger","Electronics", 64.99, 100);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("5 piece Comforter Set","Home", 69.99, 15);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bath Towel Set","Home", 34.99, 20);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Silver Pendant Necklace","Jewelry", 149.99, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Stack Gold Ring Set","Jewelry", 25.00, 5);
