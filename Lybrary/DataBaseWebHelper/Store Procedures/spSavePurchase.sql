
CREATE PROCEDURE spSavePurchase 
	@ISBN varchar(50),
	@Email varchar(50)
AS
BEGIN	
	INSERT INTO InvoiceControl
	(
		BookISBN,
		ClientEmail  
	)
	VALUES
	(	@ISBN,
		@Email
	)
		

   
END
GO
