CREATE DATABASE CHICK2;
GO

USE CHICK2;
CREATE TABLE Product
(FoodID				INT			NOT NULL IDENTITY PRIMARY KEY,
 FoodDescription	VARCHAR(50) NOT NULL,
 Price				FLOAT		NOT NULL);

 CREATE TABLE Orders
 (OrderID			INT			NOT NULL IDENTITY PRIMARY KEY,
 OrderDate			VARCHAR(50) NOT NULL,
 CustFName			VARCHAR(50)	NOT NULL,
 CustLName			VARCHAR(50)	);

CREATE TABLE OrderLineItems
 (OrderID			INT			NOT NULL PRIMARY KEY IDENTITY,
 FoodSequence		INT			NOT NULL,
 FoodCount			INT			NOT NULL,
 FoodID				INT			NOT NULL REFERENCES Product (FoodID)  );

INSERT INTO Orders
	(OrderDate, CustFName, CustLName )
VALUES
('2016-09-21', 'John', 'Doe' ),
('2016-09-21', 'Johnny', 'Appleseed' ),
('2016-09-22', 'Jane', 'Doe' ),
('2016-09-22', 'Dub', 'Oliver' ),
('2016-09-23', 'Susie', 'Oliver' ),
('2016-09-23', 'Hudson', 'Peden' ),
('2016-09-24', 'Daniel', 'Regan' ),
('2016-09-26', 'Hugo', 'Gaspar' ),
('2016-09-26', 'Peyton', 'Woods' ),
('2016-09-27', 'Max', 'Li' ),
('2016-10-01', 'John', 'Doe' ),
('2016-10-01', 'Johnny', 'Appleseed' ),
('2016-10-01', 'Jane', 'Doe' ),
('2016-10-02', 'Dub', 'Oliver' ),
('2016-10-02', 'Susie', 'Oliver' ),
('2016-10-03', 'Hudson', 'Peden' ),
('2016-10-04', 'Daniel', 'Regan' ),
('2016-10-04', 'Hugo', 'Gaspar' ),
('2016-10-05', 'Peyton', 'Woods' ),
('2016-10-05', 'Max', 'Li' );

INSERT INTO Product (FoodDescription,Price)
VALUES('Chick-fil-A Chicken Sandwich',3.09),
('Chick-fil-A Spicy Chicken Sandwich',3.35),
('Chick-fil-A Chicken Salad Sandwich',4.09),
('Grilled Chicken Cool Wrap',5.19),
('Chilled Grilled Chicken Sub Sandwich',4.69),
('Side Salad',2.85),
('Grilled Market Salad',7.09),
('Waffle Potato Chips',1.55),
('Greek Yogurt Parfait',2.95),
('Sweetened Gallon Iced Tea',5),
('Chick-fil-A Chicken Biscuit',2.25),
('Chick-fil-A Spicy Chicken Biscuit',2.39),
('3-ct Chick-n-Minis',2.35),
('4-ct Chick-n-Minis',2.99),
('Egg White Grill',3.39),
('Chicken Breakfast Burrito',2.59),
('Spicy Chicken Breakfast Burrito',2.75),
('Sausage Breakfast Burrito',2.59),
('Chicken, Egg, & Cheese Bagel',3.45),
('Hash Browns',0.99);

INSERT INTO OrderLineItems (FoodSequence, FoodID, FoodCount)
VALUES
(1, 2, 1),
(1, 1, 1),
(1, 2, 1),
(1, 3, 2),
(1, 4, 2),
(1, 5, 3),
(1, 1, 1),
(1, 4, 2),
(1, 2, 4),
(1, 9, 1),
(1, 10, 1),
(1, 11, 1),
(1, 12, 1),
(1, 13, 2),
(1, 14, 2),
(1, 15, 3),
(1, 11, 1),
(1, 14, 2),
(1, 12, 4),
(1, 19, 1);

