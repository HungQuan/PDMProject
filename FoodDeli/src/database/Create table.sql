create database FoodDeli; 
use FoodDeli; 
CREATE TABLE Customer (
    CustomerID int NOT NULL AUTO_INCREMENT,
    FullName varchar(25),
    Password varchar(25),
    Email varchar(25),
    Username varchar(25),
    Address varchar(25),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders (
    OrderID int NOT NULL  AUTO_INCREMENT,
    Status varchar(25),
    TotalPrice decimal(18,0),
    CustomerID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE OrderDetails (
    OrdersDetailsID int NOT NULL  AUTO_INCREMENT,
    Amount int NOT NULL,
    OrderID int,
    PRIMARY KEY (OrdersDetailsID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
CREATE TABLE MenuType (
    TypeID int NOT NULL,
    FoodType varchar(25),
    PRIMARY KEY (TypeID)
);
CREATE TABLE Admin (
    AdminID int NOT NULL AUTO_INCREMENT,
    Password varchar(25),
    Email varchar(25),
    Username varchar(25),
    PRIMARY KEY (AdminID)
);
CREATE TABLE Restaurant (
    RestaurantID int NOT NULL AUTO_INCREMENT,
    Address varchar(50),
    Contact_no int,
    Name varchar(50),
    AdminID int,
    PRIMARY KEY (RestaurantID),
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);
CREATE TABLE Food (
    FoodID int NOT NULL  AUTO_INCREMENT,
    Name varchar(25),
    Image varbinary(50),
    Price decimal(18,0),
    OrdersDetailsID int, 
    TypeID int,
    RestaurantID int,
    PRIMARY KEY (FoodID),
    FOREIGN KEY (OrdersDetailsID) REFERENCES OrderDetails(OrdersDetailsID),
    FOREIGN KEY (TypeID) REFERENCES MenuType(TypeID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID)
);
CREATE TABLE Driver (
    DriverID int NOT NULL  AUTO_INCREMENT,
    FullName varchar(25),
    Contact_no int,
    License_no varchar(25),
    OrderID int,
    PRIMARY KEY (DriverID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
CREATE TABLE Payment (
    PaymentID int NOT NULL,
    Payment_type varchar(25),
    PRIMARY KEY (PaymentID)
);
CREATE TABLE Transactions (
    TransactionsID int NOT NULL AUTO_INCREMENT,
    RestaurantID int,
    PaymentID int, 
    CustomerID int, 
    DriverID int, 
    PRIMARY KEY (TransactionsID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID),
    FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (DriverID) REFERENCES Driver(DriverID)
);
CREATE TABLE Has (
    Date date,
    OrderID int, 
    TransactionsID int, 
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (TransactionsID) REFERENCES Transactions(TransactionsID)
);



