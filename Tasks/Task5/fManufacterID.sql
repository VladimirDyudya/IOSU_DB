CREATE FUNCTION dbo.fManufacterID
(
	@ManufacterName VARCHAR(255)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Manufacter UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Manufacter
			WHERE [Name] = @ManufacterName);
	RETURN @ID_Manufacter;
END;