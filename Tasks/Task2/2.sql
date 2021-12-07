--2)	Найти количество нулевых значений цвета (Color) из таблицы Production.Product.
SELECT COUNT(*) AS NullColors FROM Production.Product
WHERE Color IS NULL