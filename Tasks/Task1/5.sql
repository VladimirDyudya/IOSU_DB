--6. Показать поля BusinessEntityID, AccountNumber, Name из таблицы Purchasing.Vendor. Показать только
--значения поля Name из списка ('Australia Bike Retailer', 'Chicago Rent-All', 'Light Speed', 
--'First National Sport Co.'). Использовать оператор IN.
SELECT BusinessEntityID, AccountNumber, [Name]
FROM Purchasing.Vendor
WHERE [Name] IN ('Australia Bike Retailer', 'Chicago Rent-All', 'Light Speed', 'First National Sport Co.')
