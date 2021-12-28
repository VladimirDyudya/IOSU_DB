--5.	Выдавать список автомобилей, попавших в аварию в данный период времени.
SELECT a.AccidentID, a.AccidentDescription, a.AccidentDate, c.RegistrationNumber FROM Accident as a
JOIN AccidentMember as b ON a.AccidentID = b.AccidentID
JOIN Car as c ON b.CarID = c.CarID
WHERE YEAR(a.AccidentDate) < 2007