DROP TABLE VisitEvent;
DROP TABLE POItem;
DROP TABLE PO;
DROP TABLE UserInfo;
DROP TABLE Address; 
DROP TABLE Book;

CREATE TABLE Book (
bid VARCHAR(20) NOT NULL,
title VARCHAR(60) NOT NULL,
price INT NOT NULL,
author VARCHAR(20) NOT NULL,
category VARCHAR(20) NOT NULL,
rating DOUBLE NOT NULL,
path VARCHAR(50) NOT NULL,
PRIMARY KEY(bid),
CHECK (category in ('Science','Fiction','Engineering'))
);

INSERT INTO Book (bid, title, price, author, category, rating, path) VALUES ('b001', 'The Little Prince', 20, 'A. Saint-Exupé', 'Fiction', 4.28, 'LittlePrince');
INSERT INTO Book (bid, title, price, author, category, rating, path) VALUES ('b002','Modern Physics', 201, 'Kenneth Krane', 'Science', 3.77, 'ModernPhysics');
INSERT INTO Book (bid, title, price, author, category, rating, path) VALUES ('b003','Chemical Engineering Design' ,100, 'R.K. Sinnot', 'Engineering', 4.27, 'ChemicalEngineeringDesign');
INSERT INTO Book (bid, title, price, author, category, rating, path) VALUES ('b004', 'Coffee', 20, 'A. Saint-Exupé', 'Fiction', 4.28, 'coffee');
INSERT INTO Book (bid, title, price, author, category, rating, path) VALUES ('b005','Biology', 201, 'Kenneth Krane', 'Science', 3.77, 'biology');
INSERT INTO Book (bid, title, price, author, category, rating, path) VALUES ('b006','Environment Science' ,100, 'R.K. Sinnot', 'Engineering', 4.27, 'envScience');
INSERT INTO Book (bid, title, price, author, category, rating, path) VALUES ('b007', 'Harry Potter', 20, 'A. Saint-Exupé', 'Fiction', 4.28, 'harryPotter');
INSERT INTO Book (bid, title, price, author, category, rating, path) VALUES ('b008','Lord Of the Rings', 201, 'Kenneth Krane', 'Science', 3.77, 'lordOfRings');
INSERT INTO Book (bid, title, price, author, category, rating, path) VALUES ('b009','Basic Civil Engineering' ,100, 'R.K. Sinnot', 'Engineering', 4.27, 'basicCivilEngineering');

/* Address
* id: address id
*/

CREATE TABLE Address (
id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
street VARCHAR(100) NOT NULL,
province VARCHAR(20) NOT NULL,
country VARCHAR(20) NOT NULL,
zip VARCHAR(20) NOT NULL,
phone VARCHAR(20),
PRIMARY KEY(id)
);
/*
*Inserting data for table 'address'
*/
INSERT INTO Address (street, province, country, zip, phone) VALUES ('123 Yonge St', 'ON','Canada', 'K1E 6T5' ,'647-123-4567');
INSERT INTO Address (street, province, country, zip, phone) VALUES ('445 Avenue rd', 'ON','Canada', 'M1C 6K5' ,'416-123-8569');
INSERT INTO Address (street, province, country, zip, phone) VALUES ('789 Keele St.', 'ON','Canada', 'K3C 9T5' ,'416-123-9568');

/* Purchase Order
* lname: last name
* fname: first name
* id: purchase order id
* status: status of purchase
*/

CREATE TABLE PO (
id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
lname VARCHAR(20) NOT NULL,
fname VARCHAR(20) NOT NULL,
status VARCHAR(20) NOT NULL,
address INT NOT NULL,
PRIMARY KEY(id),
--INDEX (address),
FOREIGN KEY (address) REFERENCES Address (id) ON DELETE CASCADE,
CHECK (status in ('ORDERED','PROCESSED','DENIED'))
);
/*
* Inserting data for table 'PO'
*/
INSERT INTO PO (lname, fname, status, address) VALUES ('White', 'John', 'PROCESSED', 1);
INSERT INTO PO (lname, fname, status, address) VALUES ('Black', 'Peter', 'DENIED', 2);
INSERT INTO PO (lname, fname, status, address) VALUES ('Green', 'Andy', 'ORDERED', 3);

/* Items on order
* id : purchase order id
* bid: unique identifier of Book
* price: unit price
*/

CREATE TABLE POItem (
id INT NOT NULL,
bid VARCHAR(20) NOT NULL,
price INT NOT NULL,
PRIMARY KEY(id,bid),
--INDEX (id),
FOREIGN KEY(id) REFERENCES PO(id) ON DELETE CASCADE,
--INDEX (bid),
FOREIGN KEY(bid) REFERENCES Book(bid) ON DELETE CASCADE
);
/*
* Inserting data for table 'POitem'
*/
INSERT INTO POItem (id, bid, price) VALUES (1, 'b001', 20);
INSERT INTO POItem (id, bid, price) VALUES (2, 'b002', 201);
INSERT INTO POItem (id, bid, price) VALUES (3, 'b003', 100);

/* visit to website
* day: date
* bid: unique identifier of Book
* eventtype: status of purchase
*/

CREATE TABLE VisitEvent (
day varchar(8) NOT NULL,
bid varchar(20) not null REFERENCES Book(bid),
eventtype VARCHAR(20) NOT NULL, 
FOREIGN KEY(bid) REFERENCES Book(bid),
CHECK (eventtype in('VIEW','CART','PURCHASE'))
);
/*
* Dumping data for table 'VisitEvent'
*/
INSERT INTO VisitEvent (day, bid, eventtype) VALUES ('12202015', 'b001', 'VIEW');
INSERT INTO VisitEvent (day, bid, eventtype) VALUES ('12242015', 'b001', 'CART');
INSERT INTO VisitEvent (day, bid, eventtype) VALUES ('12252015', 'b001', 'PURCHASE');

/* User
* id: references to address(id)
* fname: first name
* lnast: last name
* password: user password
* salt: unique salt added to password
*/

CREATE TABLE UserInfo (
id INT NOT NULL,
fname VARCHAR(20) NOT NULL,
lname VARCHAR(20) NOT NULL,
username VARCHAR(20) NOT NULL,
userType VARCHAR(20) NOT NULL,
password VARCHAR(20) NOT NULL,
salt VARCHAR(20) NOT NULL,
FOREIGN KEY (id) REFERENCES Address(id),
UNIQUE (username),
CHECK (userType in ('Customer', 'Administrator', 'Partner'))
);

/*
 *  Inserting data in UserInfo table
 */
INSERT INTO UserInfo (id, fname, lname, username, userType, password, salt) VALUES (1, 'John', 'White', 'JohnW', 'Customer', 'undecided', 'undecided');
INSERT INTO UserInfo (id, fname, lname, username, userType, password, salt) VALUES (2, 'Peter', 'Black', 'PeterB', 'Customer', 'undecided', 'undecided');
INSERT INTO UserInfo (id, fname, lname, username, userType, password, salt) VALUES (3, 'Andy', 'Green', 'AndyG', 'Customer', 'undecided', 'undecided');
