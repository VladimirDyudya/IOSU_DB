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
EXEC dbo.pCarInsert '��323�', 'Cayenne', 'Yellow', '1999-04-12'
EXEC dbo.pCarInsert '��374�', 'x5', 'Gray', '2000-10-15'

-- Insert Owners
EXEC dbo.pOwnerInsert '��323�', '1754 544037', '1999-04-19', NULL
EXEC dbo.pOwnerInsert '��374�', '3213 213321','2003-10-11', '2009-10-19'
EXEC dbo.pOwnerInsert '��374�', '1754 544037','2009-10-20', NULL

--Insert Hijacking
EXEC dbo.pHijackingInsert '��323�', '2003-10-24', 1

--Insert Hijacking
EXEC dbo.pAccidentInsert 'EF546EF', '��� ���������� �����������', '2005-10-11'
EXEC dbo.pAccidentInsert 'EFER433', '��� ���������� �����������', '2010-10-11'

--Insert AccidentMembers
EXEC dbo.pAccidentMemberInsert '��323�', 'EF546EF'
EXEC dbo.pAccidentMemberInsert '��374�', 'EF546EF'