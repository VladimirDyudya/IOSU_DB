--6.	Выдавать список наиболее угоняемых автомобилей по марке.
SELECT b.ModelID, COUNT(*) as HijackingCount FROM Hijacking as a
JOIN Car as b ON a.CarID = b.CarID
GROUP BY b.ModelID