--5.	Показать товары, цена которых меньше средней цены в любой линейке продуктов (линейка
--продуктов определена) (Таблица Production.Product). Показать поля [Name],
--ListPrice и ProductLine.
SELECT [Name], ListPrice, ProductLine FROM Production.Product
WHERE ListPrice < ALL(SELECT AVG(ListPrice) as AvgListPrice FROM Production.Product
WHERE ProductLine IS NOT NULL AND ListPrice > 0
GROUP BY ProductLine)