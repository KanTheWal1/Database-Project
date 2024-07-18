INSERT INTO Suppliers
VALUES("0987654321","Rep Holder","7147460902");
INSERT INTO Orders
VALUES(808, 0, 20, '2021-11-11');
INSERT INTO Orders
VALUES(809, 1, 15, '2021-1-10');
INSERT INTO Department
Values("Sales", 1, "191123");
INSERT INTO Department
Values("Trade", 2, "191093" );
INSERT INTO Department
Values("Rings", 3, "881188");
INSERT INTO Delivery
VALUES("01928", '2022-05-10',"5", 6, 808);
INSERT INTO Employees
Values("191123", "Bilbo", "Baggins", "Sales", 0);
INSERT INTO Employees
Values("191093", "Sam", "Baggins","Trade", 0);
INSERT INTO Employees
Values("881188", "Gandalf", "Grey","Rings", 1);
INSERT INTO Customers
Values("11111", 2, "Saad", "Ansari");
INSERT INTO Customers
Values("22222", 54, "Ken", "LastimusNamimus");
INSERT INTO Customers
Values("33333", 19, "Ali", "LastoNamo");
INSERT INTO Customers
Values("44444", 5, "Sam", "Samison");
INSERT INTO Customers
Values("55555", 15, "Gupta", "Guptanson");
INSERT INTO Transactions
VALUES("531", '2020-01-01', '19:30:10', "33333");
INSERT INTO Items
VALUES("123456789012", 20.00, 15.00, 10.00, 50,30, "531");
INSERT INTO Items
VALUES("000000000000", 20.00, 15.00, 10.00, 30,50, "531");
INSERT INTO Items
VALUES("111111111111", 20.00, 15.00, 10.00, 50,30, "531");
INSERT INTO Items
VALUES("222222222222", 20.00, 15.00, 10.00, 50,30, "531");
INSERT INTO Items
VALUES("333333333333", 20.00, 15.00, 10.00, 50,30, "531");
INSERT INTO Coupons
VALUES("6969", 4.5, 20.00,"123456789012" );
INSERT INTO Coupons
VALUES("4200", .565, 20.00,"000000000000" );
INSERT INTO Supplied
VALUES("123456789012","0987654321");
INSERT INTO forOrder
VALUES("000000000000", 808);
INSERT INTO inDpt
VALUES("000000000000", "Rings");
INSERT INTO PurchasedBy
VALUES("000000000000","22222");
INSERT INTO canDownload
VALUES("22222","6969");
INSERT INTO TransactWith
VALUES("531","000000000000", "5", "10");
INSERT INTO Location 
VALUES(1,"A",2, 4, "5", "000000000000");
INSERT INTO ExpirationDate
VALUES("123456789012", '2022-12-12');
INSERT INTO ExpirationDate
VALUES("123456789012", '2022-12-16');