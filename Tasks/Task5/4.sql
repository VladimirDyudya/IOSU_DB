--4.	Выдавать список угнанных автомобилей.
SELECT b.*, a.HijackingDate, a.Hijack FROM Hijacking as a
JOIN Car as b ON a.CarID = b.CarID