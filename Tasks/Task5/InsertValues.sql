-- Insert Manufacters
INSERT INTO Manufacter VALUES ('Porche');
INSERT INTO Manufacter VALUES ('BMW');

-- Insert Models
INSERT INTO Model VALUES (1, 'Cayenne');
INSERT INTO Model VALUES (1, 'Macan');
INSERT INTO Model VALUES (2, 'x5');

-- Insert Colors
INSERT INTO Color VALUES ('Yellow');
INSERT INTO Color VALUES ('Gray');
INSERT INTO Color VALUES ('Black');

-- Insert Drivers
INSERT INTO Driver VALUES ('Petr', 'Vasilevich', 'Lovin', '1712 252037');
INSERT INTO Driver VALUES ('Andrey', 'Sergeevich', 'Petrov', '3213 213321');

--Insert Cars
INSERT INTO Car VALUES ('ЕК323Х', 1, 1, '1999-04-12');
INSERT INTO Car VALUES ('ОК374Т', 3, 2, '2000-10-15');

-- Insert Owners
INSERT INTO [Owner] VALUES (1,2,'1999-04-19',NULL);
INSERT INTO [Owner] VALUES (2,1,'2003-10-11', '2009-10-19');
INSERT INTO [Owner] VALUES (2,2,'2009-10-20', NULL);

--Insert Hijacking
INSERT INTO Hijacking VALUES (1,'2003-10-24', 1);

--Insert Hijacking
INSERT INTO Accident VALUES ('Два автомобиля столкнулись', '2005-10-11');
INSERT INTO Accident VALUES ('Два автомобиля столкнулись', '2010-10-11');

--Insert AccidentMembers
INSERT INTO AccidentMember VALUES (1, 1);
INSERT INTO AccidentMember VALUES (2, 1);
INSERT INTO AccidentMember VALUES (1, 2);
INSERT INTO AccidentMember VALUES (2, 2);
