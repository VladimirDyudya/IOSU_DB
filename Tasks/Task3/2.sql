--2.	Показать список людей (поля FirstName, LastName), в котором указан «узел» человека (OrganizationNode)
--в организации или нет, из таблиц Person.Person, HumanResources.Employee, используя LEFT OUTER JOIN.
SELECT a.FirstName, a.LastName, b.OrganizationNode FROM Person.Person as a
LEFT OUTER JOIN HumanResources.Employee as b ON a.BusinessEntityID = b.BusinessEntityID