CREATE TRIGGER PurchaseTrigger on AccidentMember
FOR INSERT
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @NewRecAccidentCarID UNIQUEIDENTIFIER

	SET @NewRecAccidentCarID = (SELECT ID_Car FROM inserted);

	DECLARE @ID_Record UNIQUEIDENTIFIER = (SELECT ID FROM Record WHERE ID_Car = @NewRecAccidentCarID);


	IF @ID_Record IS NOT NULL
	BEGIN
		UPDATE Record
		SET Accidents = Accidents + 1
		WHERE ID = @ID_Record
	END;
	ELSE
	BEGIN
		INSERT INTO Record (ID_Car, Accidents)
		VALUES (@NewRecAccidentCarID, 1)
	END;
END;