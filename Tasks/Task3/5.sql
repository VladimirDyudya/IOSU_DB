--5.	Показать список количеств заказов (OrderQty), к которым относятся несколько продуктов (ProductID),
--из таблицы Purchasing.PurchaseOrderDetail, используя SELF JOIN.
SELECT DISTINCT a.OrderQty, a.ProductID FROM Purchasing.PurchaseOrderDetail as a
JOIN Purchasing.PurchaseOrderDetail as b ON a.OrderQty = b.OrderQty
WHERE a.ProductID <> b.ProductID