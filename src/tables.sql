
CREATE TABLE Suppliers(
    uID VARCHAR(20) NOT NULL,
    rep VARCHAR(20), 
    repPhNum VARCHAR(10),
    PRIMARY KEY(uID)
);
CREATE TABLE Orders(
    orderID INT(12) NOT NULL,
    addedToDelivery BOOLEAN NOT NULL, 
    amount INT,
    orderDate DATE NOT NULL,
    PRIMARY KEY(orderID)
);
CREATE TABLE Department(
    dName VARCHAR(20) NOT NULL,
    dSection INT(5),
    superID VARCHAR(20),
    PRIMARY KEY(dName)
);
/*ALTER TABLE Department
ADD FOREIGN KEY(superID) REFERENCES Employees(idNum);*/
CREATE TABLE Delivery(
    dID VARCHAR(20) NOT NULL,
    arrivalDate DATE, 
    truckNum VARCHAR(20) NOT NULL,
    numPallets INT,
    oID INT (12) NOT NULL,
    PRIMARY KEY(dID),
    FOREIGN KEY(oID) REFERENCES Orders(orderID)
);
CREATE TABLE Employees(
    idNum VARCHAR(20) NOT NULL,
    fName VARCHAR(20),
    lName VARCHAR(20),
    empDName VARCHAR(20) NOT NULL,
    permissionLVL BOOLEAN NOT NULL,
    PRIMARY KEY(idNum)
);
/*ALTER TABLE Employees
ADD FOREIGN KEY(empDName) REFERENCES Department(dName);*/
CREATE TABLE Customers(
    custID VARCHAR(20) NOT NULL,
    purchasedItems INT NOT NULL,
    fName VARCHAR(20),
    lNAme VARCHAR(20),
    PRIMARY KEY(custID)
);
CREATE TABLE Transactions(
    tID VARCHAR(20) NOT NULL,
    tDate DATE NOT NULL,
    tTime TIME NOT NULL,
    cuID VARCHAR(20) NOT NULL,
    PRIMARY KEY(tID),
    FOREIGN KEY(cuID) REFERENCES Customers(custID)
);
CREATE TABLE Items(
    upc CHAR(12) NOT NULL, 
    salePrice float(4) NOT NULL, 
    price float(4) NOT NULL, 
    wholeSalePrice float(4) NOT NULL, 
    currentStock INT, 
    restockAmt INT, 
    tID VARCHAR(20) NOT NULL,
    PRIMARY KEY(upc), 
    FOREIGN KEY(tID) REFERENCES Transactions(tID)
);
CREATE TABLE Coupons(
    unqID VARCHAR(20) NOT NULL,
    discountPercentage float(3) NOT NULL,
    minPurchaseAmt float(4) NOT NULL,
    upc CHAR(12) NOT NULL,
    PRIMARY KEY(unqID),
    FOREIGN KEY(upc) REFERENCES Items(upc)
);
CREATE TABLE Supplied(
    upc CHAR(12) NOT NULL, 
    supID VARCHAR(20) NOT NULL,
    PRIMARY KEY(upc,supID),
    FOREIGN KEY(upc) REFERENCES Items(upc),
    FOREIGN KEY(supID) REFERENCES Suppliers(uID)
);
CREATE TABLE forOrder(
    upc CHAR(12) NOT NULL, 
    oID INT(12) NOT NULL,
    PRIMARY KEY(upc,oID),
    FOREIGN KEY(upc) REFERENCES Items(upc), 
    FOREIGN KEY(oID) REFERENCES Orders(orderID)
);
CREATE TABLE inDpt(
    upc CHAR(12) NOT NULL,
    name VARCHAR(20) NOT NULL,
    PRIMARY KEY(upc,name),
    FOREIGN KEY(upc) REFERENCES Items(upc)
);
/*ALTER TABLE inDpt
ADD FOREIGN KEY(name) REFERENCES Department(dName);*/

CREATE TABLE PurchasedBy(
    upc CHAR(12) NOT NULL,
    uID VARCHAR(20) NOT NULL,
    PRIMARY KEY(upc,uID),
    FOREIGN KEY(upc) REFERENCES Items(upc), 
    FOREIGN KEY(uID) REFERENCES Customers(custID)
);
CREATE TABLE canDownload(
    cuID VARCHAR(20) NOT NULL,
    couponID VARCHAR(12) NOT NULL,
    PRIMARY KEY(cuID, couponID),
    FOREIGN KEY(cuID) REFERENCES Customers(custID),
    FOREIGN KEY(couponID) REFERENCES Coupons(unqID)
);
CREATE TABLE TransactWith(
    tID VARCHAR(20) NOT NULL,
    upc CHAR(12) NOT NULL,
    perchasedItems VARCHAR(20),
    numberOfItems INT,
    PRIMARY KEY(upc,tID),
    FOREIGN KEY(upc) REFERENCES Items(upc),
    FOREIGN KEY(tID) REFERENCES Transactions(tID)
);
CREATE TABLE Location(
    asileNum INT,
    asileSlide VARCHAR(2),
    asileSecNum INT,
    shelfNum INT,
    itemDistance VARCHAR(20),
    upc CHAR(12) NOT NULL,
    PRIMARY KEY(asileNum,asileSlide,asileSecNum,shelfNum,itemDistance),
    FOREIGN KEY(upc) REFERENCES Items(upc)
);
CREATE TABLE ExpirationDate(
    upc CHAR(12) NOT NULL,
    experationDate DATE,
    PRIMARY KEY(upc, experationDate),
    FOREIGN KEY(upc) REFERENCES Items(upc)
);
ALTER TABLE Department
ADD FOREIGN KEY(superID) REFERENCES Employees(idNum);

ALTER TABLE Employees
ADD FOREIGN KEY(empDName) REFERENCES Department(dName);

ALTER TABLE inDpt
ADD FOREIGN KEY(name) REFERENCES Department(dName);











/*
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS product;
SET FOREIGN_KEY_CHECKS = 1;
*/