--1.	Показать наименование товаров с самой большой стандартной ценой (Таблица Production.Product).
SELECT [Name], StandardCost FROM Production.Product
WHERE StandardCost = (SELECT MAX(StandardCost) FROM Production.Product)