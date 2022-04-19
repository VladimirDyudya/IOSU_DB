CREATE PROC pCarInsert
(
	@RegistrationNumber VARCHAR(255),
	@ModelName VARCHAR(255),
	@ColorName VARCHAR(255),
	@ReleaseDate DATE
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_Model UNIQUEIDENTIFIER = dbo.fModelID(@ModelName);

			DECLARE @ID_Color UNIQUEIDENTIFIER = dbo.fColorID(@ColorName);

			INSERT INTO Car
			VALUES(NEWID(), @RegistrationNumber, @ID_Model, @ID_Color, @ReleaseDate)
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