--7. Показать поля ProductID, Name из таблицы Production.Product с применением функции COALESCE(). Показать
--поле Meauserement, так, чтобы, если значение в поле Weight известно, то показать его, а иначе, показать значение
--в поле Style. Если и в поле Style значение неизвестно, то вывести значение 'UNKNOWN'.
SELECT ProductID, [Name], COALESCE(CAST(Weight AS VARCHAR), Style, 'UNKNOWN') AS Meauserement
FROM Production.Product