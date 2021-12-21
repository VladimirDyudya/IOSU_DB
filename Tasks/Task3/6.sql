--6.	Показать список моделей продуктов (ProductModelID), которые имеют несколько несколько цен реализации
--(ListPrice) больше 100, из таблицы Production.Product, используя SELF JOIN.
SELECT DISTINCT a.ProductModelID, b.ListPrice FROM Production.Product as a
JOIN Production.Product as b ON a.ProductModelID = b.ProductModelID
WHERE a.ListPrice <> b.ListPrice AND a.ListPrice > 100 AND b.ListPrice > 100