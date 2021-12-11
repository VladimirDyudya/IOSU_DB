--8.	Показать список ProductID, которые содержатся в таблице Production.Product, но не содержатся в
--таблице Production. ProductInventory.
SELECT ProductID FROM Production.Product
EXCEPT
SELECT ProductID FROM Production.ProductInventory