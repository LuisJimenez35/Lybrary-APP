
CREATE PROCEDURE spGetMyShoppingCart
	@Email varchar(50)
AS
BEGIN
	SELECT * FROM ShoppingCart
	where BuyerEmail = @Email
END
GO
