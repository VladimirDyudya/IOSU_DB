CREATE PROC pOwnerInsert
(
	@RegistrationNumber VARCHAR(255),
	@PassportID VARCHAR(255),
	@BeginDate DATE,
	@EndDate DATE
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_Car UNIQUEIDENTIFIER = dbo.fCarID(@RegistrationNumber);

			DECLARE @ID_Driver UNIQUEIDENTIFIER = dbo.fDriverID(@PassportID);

			INSERT INTO [Owner]
			VALUES(NEWID(), @ID_Car, @ID_Driver, @BeginDate, @EndDate)
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