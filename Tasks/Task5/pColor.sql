CREATE PROC pColorInsert
(
	 @ColorName VARCHAR(255)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Color
			VALUES(NEWID(), @ColorName)
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