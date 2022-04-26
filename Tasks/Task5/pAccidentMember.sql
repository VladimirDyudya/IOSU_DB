CREATE PROC pAccidentMemberInsert
(
	@RegistrationNumber VARCHAR(255),
	@AccidentUni VARCHAR(255)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_Car UNIQUEIDENTIFIER = dbo.fCarID(@RegistrationNumber);

			DECLARE @ID_Accident UNIQUEIDENTIFIER = dbo.fAccidentID(@AccidentUni);

			INSERT INTO AccidentMember
			VALUES(NEWID(), @ID_Car, @ID_Accident)
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