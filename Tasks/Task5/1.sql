--1.	Выдавать информацию об автомобиле по его регистрационному знаку (марка, цвет, модель и т.д.).
SELECT a.RegistrationNumber, b.[Name] as ModelName, d.[Name] as Manufacter, c.[Name] as Color FROM Car as a
JOIN Model as b ON a.ModelID = b.ModelID
JOIN Color as c ON a.ColorID = c.ColorID
JOIN Manufacter as d ON b.ManufacterID = d.ManufacterID
WHERE RegistrationNumber='ЕК323Х'