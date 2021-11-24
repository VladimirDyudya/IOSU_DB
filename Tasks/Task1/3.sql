--3. Показать поля ProductID, StartDate, EndDate, StandardCost из таблицы Production.ProductCostHistory.
--Показать только те записи, для которых стандартная стоимость (StandardCost) больше $150 и меньше $200 и
--известна дата окончания стоимости продукта (EndDate). Использовать оператор BETWEEN.
SELECT ProductID, StartDate, EndDate, StandardCost
FROM Production.ProductCostHistory
WHERE StandardCost BETWEEN 150 AND 200 AND EndDate IS NOT NULL