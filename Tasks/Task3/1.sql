--1.	Показать скидку на цену за штуку (UnitPriceDiscount) и поля Name, ProductNumber из таблиц
--Production.Product, Sales.SalesOrderDetail.
SELECT b.UnitPriceDiscount, a.Name, a.ProductNumber FROM Production.Product as a
JOIN Sales.SalesOrderDetail as b on a.ProductID = b.ProductID