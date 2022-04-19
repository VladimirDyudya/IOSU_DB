CREATE PROC pModelInsert
(
	@ManufacterName VARCHAR(255),
	@ModelName VARCHAR(255)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_Manufacter UNIQUEIDENTIFIER = dbo.fManufacterID(@ManufacterName);

			INSERT INTO Model
			VALUES(NEWID(), @ID_Manufacter, @ModelName)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK;
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT 
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();

		RAISERROR	(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH;
END;