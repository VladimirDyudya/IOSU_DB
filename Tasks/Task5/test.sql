EXEC dbo.pAccidentInsert 'EF546JG', 'Два автомобиля столкнулись', '2005-10-11'
EXEC dbo.pAccidentInsert 'EFERFDG', 'Два автомобиля столкнулись', '2010-10-11'

EXEC dbo.pAccidentMemberInsert 'ЕК323Х', 'EF546JG'
EXEC dbo.pAccidentMemberInsert 'ОК374Т', 'EF546JG'

EXEC dbo.pAccidentMemberInsert 'ЕК323Х', 'EFERFDG'
EXEC dbo.pAccidentMemberInsert 'ОК374Т', 'EFERFDG'