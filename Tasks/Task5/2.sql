--2.	Выдавать информацию об автовладельце по регистрационному знаку данного автомобиля.
SELECT c.* FROM [Owner] as a
JOIN Car as b ON a.CarID = b.CarID
JOIN Driver as c ON a.DriverID = c.DriverID
WHERE RegistrationNumber='ЕК323Х' AND a.EndDate IS NULL