-- Insert Manufacters
INSERT INTO Manufacter VALUES (NEWID(), 'Porsche');
INSERT INTO Manufacter VALUES (NEWID(), 'BMW');

-- Insert Models
INSERT INTO Model VALUES (NEWID(), (SELECT ID FROM Manufacter WHERE [Name]='Porsche'), 'Cayenne');
INSERT INTO Model VALUES (NEWID(), (SELECT ID FROM Manufacter WHERE [Name]='Porsche'), 'Macan');
INSERT INTO Model VALUES (NEWID(), (SELECT ID FROM Manufacter WHERE [Name]='BMW'), 'x5');

-- Insert Colors
INSERT INTO Color VALUES (NEWID(), 'Yellow');
INSERT INTO Color VALUES (NEWID(), 'Gray');
INSERT INTO Color VALUES (NEWID(), 'Black');

-- Insert Drivers
INSERT INTO Driver VALUES (NEWID(), 'Petr', 'Vasilevich', 'Lovin', '1712 252037');
INSERT INTO Driver VALUES (NEWID(), 'Andrey', 'Sergeevich', 'Petrov', '3213 213321');

--Insert Cars
INSERT INTO Car VALUES (NEWID(), 'ЕК323Х', (SELECT ID FROM Model WHERE [Name]='Cayenne'), (SELECT ID FROM Color WHERE [Name]='Yellow'), '1999-04-12');
INSERT INTO Car VALUES (NEWID(), 'ОК374Т', (SELECT ID FROM Model WHERE [Name]='x5'), (SELECT ID FROM Color WHERE [Name]='Gray'), '2000-10-15');

-- Insert Owners
INSERT INTO [Owner] VALUES (NEWID(), (SELECT ID FROM Car WHERE RegistrationNumber='ЕК323Х'),(SELECT ID FROM Driver WHERE FirstName='Petr'),'1999-04-19',NULL);
INSERT INTO [Owner] VALUES (NEWID(), (SELECT ID FROM Car WHERE RegistrationNumber='ОК374Т'),(SELECT ID FROM Driver WHERE FirstName='Andrey'),'2003-10-11', '2009-10-19');
INSERT INTO [Owner] VALUES (NEWID(), (SELECT ID FROM Car WHERE RegistrationNumber='ОК374Т'),(SELECT ID FROM Driver WHERE FirstName='Petr'),'2009-10-20', NULL);

--Insert Hijacking
INSERT INTO Hijacking VALUES (NEWID(), (SELECT ID FROM Car WHERE RegistrationNumber='ЕК323Х'),'2003-10-24', 1);

--Insert Hijacking
INSERT INTO Accident VALUES (NEWID(), 'Два автомобиля столкнулись', '2005-10-11');
INSERT INTO Accident VALUES (NEWID(), 'Два автомобиля столкнулись', '2010-10-11');

--Insert AccidentMembers
INSERT INTO AccidentMember VALUES (NEWID(), (SELECT ID FROM Car WHERE RegistrationNumber='ЕК323Х'), (SELECT ID FROM Accident WHERE AccidentDate='2005-10-11'));
INSERT INTO AccidentMember VALUES (NEWID(), (SELECT ID FROM Car WHERE RegistrationNumber='ОК374Т'), (SELECT ID FROM Accident WHERE AccidentDate='2005-10-11'));