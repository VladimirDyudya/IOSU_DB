--4.	Показать список продуктов (ProductID), которые имеют несколько различных количеств заказов
--(OrderQty), из таблицы Purchasing.PurchaseOrderDetail, используя SELF JOIN.
SELECT DISTINCT a.ProductID, a.OrderQty FROM Purchasing.PurchaseOrderDetail as a
JOIN Purchasing.PurchaseOrderDetail as b ON a.ProductID = b.ProductID
WHERE a.OrderQty <> b.OrderQty