CREATE DATABASE Mcdonalds;

 USE Mcdonalds ;

CREATE TABLE category(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT, 
    description TEXT
    );

CREATE TABLE product( 
    id INT PRIMARY KEY AUTO_INCREMENT, 
    name TEXT, 
     description TEXT, 
    price FLOAT, 
    categoryId INT, 
    FOREIGN KEY (categoryId) REFERENCES category(id)
     );

CREATE TABLE role(
INT PRIMARY KEY AUTO_INCREMENT,
name TEXT
 );

CREATE TABLE user(
id INT PRIMARY KEY AUTO_INCREMENT,
 name TEXT,
 roleId INT, 
 FOREIGN KEY (roleId) REFERENCES role(id)
 );

CREATE TABLE cart(
 id INT PRIMARY KEY AUTO_INCREMENT,
 userId INT, 
 FOREIGN KEY (userId) REFERENCES user(id)
 );

 CREATE TABLE productCart(
id INT PRIMARY KEY AUTO_INCREMENT, 
 quantity INT,
 productId INT,
cartId INT,
 FOREIGN KEY (productId) REFERENCES product(id),
 FOREIGN KEY (cartId) REFERENCES cart(id)
 );

CREATE TABLE order(
 id INT PRIMARY KEY AUTO_INCREMENT,
 date DATETIME,
 validation TINYINT,
 total FLOAT
   );
