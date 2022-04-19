USE TrafficPolice;

-- Insert Manufacters
EXEC dbo.pManufacterInsert 'Porsche'
EXEC dbo.pManufacterInsert 'BMW'

-- Insert Models
EXEC dbo.pModelInsert 'Porsche', 'Cayenne'
EXEC dbo.pModelInsert 'Porsche', 'Macan'
EXEC dbo.pModelInsert 'BMW', 'x5'

-- Insert Colors
EXEC dbo.pColorInsert 'Yellow'
EXEC dbo.pColorInsert 'Gray'
EXEC dbo.pColorInsert 'Black'

-- Insert Drivers
EXEC dbo.pDriverInsert 'Petr', 'Vasilevich', 'Lovin', '1754 544037'
EXEC dbo.pDriverInsert 'Andrey', 'Sergeevich', 'Petrov', '3213 213321'

--Insert Cars
EXEC dbo.pCarInsert 'ЕК323Х', 'Cayenne', 'Yellow', '1999-04-12'
EXEC dbo.pCarInsert 'ОК374Т', 'x5', 'Gray', '2000-10-15'

-- Insert Owners
EXEC dbo.pOwnerInsert 'ЕК323Х', '1754 544037', '1999-04-19', NULL
EXEC dbo.pOwnerInsert 'ОК374Т', '3213 213321','2003-10-11', '2009-10-19'
EXEC dbo.pOwnerInsert 'ОК374Т', '1754 544037','2009-10-20', NULL

--Insert Hijacking
EXEC dbo.pHijackingInsert 'ЕК323Х', '2003-10-24', 1

--Insert Hijacking
EXEC dbo.pAccidentInsert 'EF546EF', 'Два автомобиля столкнулись', '2005-10-11'
EXEC dbo.pAccidentInsert 'EFER433', 'Два автомобиля столкнулись', '2010-10-11'

--Insert AccidentMembers
EXEC dbo.pAccidentMemberInsert 'ЕК323Х', 'EF546EF'
EXEC dbo.pAccidentMemberInsert 'ОК374Т', 'EF546EF'