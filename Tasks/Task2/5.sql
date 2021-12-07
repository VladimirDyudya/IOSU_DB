--5)	Вывести EmployeeID, ShipDate и максимум по SubTotal для всевозможных EmployeeID с одинаковой
--ShipDate, предусмотреть вывод самого максимального StandardPrice за определнный ShipDate
--из таблицы Purchasing.PurchaseOrderHeader. (Использовать CUBE)
SELECT EmployeeID, ShipDate, Max(SubTotal) FROM Purchasing.PurchaseOrderHeader
GROUP BY CUBE(EmployeeID,ShipDate)