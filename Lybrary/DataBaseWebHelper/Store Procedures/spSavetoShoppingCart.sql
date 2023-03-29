
CREATE PROCEDURE spSaveToShoppingCart
	@BookISBN varchar(50),
	@Photo varchar(50),
	@Title varchar(50),
	@Author varchar(50),
	@ReleaseDate date,
	@Price decimal(18,0),
	@BuyerEmail varchar(50)

AS
BEGIN
	INSERT INTO ShoppingCart
	(
		BookISBN,
		Photo,
		Title,
		Author,
		ReleaseDate,
		Price,
		BuyerEmail
	)
	VALUES
	(	@BookISBN,
		@Photo,
		@Title,
		@Author,
		@ReleaseDate,
		@Price, 
		@BuyerEmail
	)
END
GO
