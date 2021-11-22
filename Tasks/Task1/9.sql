--9. Из таблицы Purchasing.Vendor показать поля BusinessEntityID, AccountNumber, Name и ActiveFlag, если
--значение последнего поля равно 0. В поле ActiveFlag заменить все значения 0 на NULL, а название поля
--заменить на 'Vendor is actively used'.
SELECT BusinessEntityID, AccountNumber, [Name], NULLIF(ActiveFlag, 0) AS 'Vendor is Actively Used'
FROM Purchasing.Vendor
WHERE ActiveFlag = 0