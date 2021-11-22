--6. Из таблицы Production.Document показать место документа в памяти (DocumentNode), заголовок документа (Title),
--расширение файла (FileExtension). Показать только строки со значением NULL в поле DocumentSummary и заменить все 
--значения NULL в данном поле на'No' («нет»). Названия полей оставить без изменений.
SELECT DocumentNode, Title, FileExtension, ISNULL(DocumentSummary, 'No') AS DocumentSummary
FROM Production.Document