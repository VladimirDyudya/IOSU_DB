--4.	Показать товары, цена которых равна минимальной (больше нуля) цене товара той же линейки
--продуктов (линейка продуктов определена) (Таблица Production.Product). Показать поля 
--[Name], ListPrice и ProductLine.
SELECT a.[Name], a.ListPrice, a.ProductLine FROM Production.Product as a
JOIN (SELECT ProductLine, MIN(ListPrice) as MinListPrice FROM Production.Product
WHERE ProductLine IS NOT NULL AND ListPrice > 0
GROUP BY ProductLine) as b ON a.ProductLine = b.ProductLine
AND a.ListPrice = b.MinListPrice