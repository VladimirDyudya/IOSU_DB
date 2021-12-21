--3.	Показать список товаров (поле Name), в котором указан, есть ли у товара дата окончания отслеживания
--цены (EndDate) или нет, из таблицы Production.ProductListPriceHistory, Production.Product,
--используя RIGHT OUTER JOIN.
SELECT b.Name, a.EndDate FROM Production.ProductListPriceHistory as a
RIGHT OUTER JOIN Production.Product as b ON a.ProductID = b.ProductID