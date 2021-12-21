--2.	Показать количество сотрудников и должность, на которой работает минимальное количество
--сотрудников (Представление [HumanResources].[vEmployeeDepartment]).
SELECT JobTitle, COUNT(*) as EmployeeCount FROM HumanResources.vEmployeeDepartment
GROUP BY JobTitle
HAVING COUNT(*) = (SELECT MIN(b.EmployeeCount) FROM
(SELECT COUNT(*) as EmployeeCount FROM HumanResources.vEmployeeDepartment
GROUP BY JobTitle) as b)