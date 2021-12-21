--3.	Показать товары, для которых существует только один стиль в одном размере (стиль и размер
--определен) (Таблица Production.Product). Показать поля [Name], Style и Size.
SELECT p1.[Name], p1.Style, p1.Size
FROM Production.Product as p1
WHERE p1.Size IS NOT NULL
AND p1.Style IS NOT NULL
AND (
SELECT COUNT(DISTINCT p2.Style) AS StyleCount
FROM Production.Product as p2
WHERE p2.Style is NOT NULL
AND p1.Size = p2.Size) = 1