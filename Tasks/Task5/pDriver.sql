CREATE PROC pDriverInsert
(
	@FirstName VARCHAR(255),
	@SurName VARCHAR(255),
	@LastName VARCHAR(255),
	@PassportID VARCHAR(255)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Driver
			VALUES(NEWID(), @FirstName, @SurName, @LastName, @PassportID)
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