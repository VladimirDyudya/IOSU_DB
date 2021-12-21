--7.	Показать комбинированный список таблиц Person.Person, Person.BusinessEntityAddress по полям
--BusinessEntityID, rowguid, ModifiedDate, используя UNION.
SELECT BusinessEntityID, rowguid, ModifiedDate FROM Person.Person
UNION
SELECT BusinessEntityID, rowguid, ModifiedDate FROM Person.BusinessEntityAddress