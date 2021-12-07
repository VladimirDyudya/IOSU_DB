--3)	Показать суммарную и среднюю стоимость товаров каждого цвета из таблицы Production.Product
--(из выборки исключить пустые поля).
SELECT Color, SUM(ListPrice) AS SumListPrice, AVG(ListPrice) AS AvgListPrice FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color