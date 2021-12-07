--4)	Вывести профессии из таблицы HumanResources.Employee, где суммарное количество человек,
--принятых позже 2010 года, больше 1
SELECT JobTitle, Count(*) AS EmployeeCount FROM HumanResources.Employee
WHERE YEAR(HireDate) > 2010
GROUP BY JobTitle
Having Count(*)> 1