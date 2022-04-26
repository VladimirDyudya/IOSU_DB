CREATE PROC pHijackingInsert
(
	@RegistrationNumber VARCHAR(255),
	@HijackingDate DATE,
	@Hijack BIT
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_Car UNIQUEIDENTIFIER = dbo.fCarID(@RegistrationNumber);

			INSERT INTO Hijacking
			VALUES(NEWID(), @ID_Car, @HijackingDate, @Hijack)
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