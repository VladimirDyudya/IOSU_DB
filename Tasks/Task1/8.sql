--8. Из таблицы Production.WorkOrderRouting показать уникальные значения поля ProductID и поле LocationID.
--Отсортировать все строки в алфавитном порядке относительно поля LocationID.
SELECT DISTINCT ProductID, LocationID
FROM Production.WorkOrderRouting
ORDER BY LocationID