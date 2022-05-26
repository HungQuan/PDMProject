
use FoodDeli; 
CREATE TABLE Customer (
    customerID int NOT NULL AUTO_INCREMENT,
    fullName varchar(25),
    passwrd varchar(25),
    email varchar(25),
    username varchar(25),
    address varchar(25),
    PRIMARY KEY (customerID)
);
CREATE TABLE Driver (
    driverID int NOT NULL  AUTO_INCREMENT,
    fullName varchar(25),
    fontact_no int,
    license_no varchar(25),
    PRIMARY KEY (driverID)
);
ALTER TABLE Driver
MODIFY fontact_no varchar(25);

CREATE TABLE Orders (
    orderID int NOT NULL  AUTO_INCREMENT,
    ordStatus varchar(25),
    totalPrice decimal(18,0),
    amount int NOT NULL,
    customerID int,
    driverID int, 
    PRIMARY KEY (orderID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY(driverID) REFERENCES Driver(driverID)
);

ALTER TABLE Orders
DROP COLUMN totalPrice;



CREATE TABLE MenuType (
    typeID int NOT NULL,
    foodType varchar(25),
    PRIMARY KEY (typeID)
);
CREATE TABLE adminis (
    adminID int NOT NULL AUTO_INCREMENT,
    passwrd varchar(25),
    email varchar(25),
    username varchar(25),
    PRIMARY KEY (adminID)
);
CREATE TABLE Restaurant (
    restaurantID int NOT NULL AUTO_INCREMENT,
    address varchar(50),
    contact_no int,
    restName varchar(50),
    adminID int,
    PRIMARY KEY (restaurantID),
    FOREIGN KEY (adminID) REFERENCES adminis(adminID)
);
ALTER TABLE Restaurant
MODIFY contact_no varchar(50);


CREATE TABLE Food (
    foodID int NOT NULL  AUTO_INCREMENT,
    foodName varchar(25),
    image varchar(1000),
    price decimal(18,0),
    orderID int, 
    typeID int,
    restaurantID int,
    PRIMARY KEY (foodID),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID),
    FOREIGN KEY (typeID) REFERENCES MenuType(typeID),
    FOREIGN KEY (restaurantID) REFERENCES Restaurant(restaurantID)
);
ALTER TABLE Food 
MODIFY price varchar(10);
CREATE TABLE Payment (
    paymentID int NOT NULL,
    payment_type varchar(25),
    PRIMARY KEY (paymentID)
);
CREATE TABLE Transactions (
    transactionsID int NOT NULL AUTO_INCREMENT,
    restaurantID int,
    paymentID int, 
    customerID int, 
    driverID int, 
    PRIMARY KEY (transactionsID),
    FOREIGN KEY (restaurantID) REFERENCES Restaurant(restaurantID),
    FOREIGN KEY (paymentID) REFERENCES Payment(paymentID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (driverID) REFERENCES Driver(driverID)
);
CREATE TABLE Has (
    timeOrder date,
    orderID int, 
    transactionsID int , 
    FOREIGN KEY (orderID) REFERENCES Orders(orderID),
    FOREIGN KEY (transactionsID) REFERENCES Transactions(transactionsID)
);



