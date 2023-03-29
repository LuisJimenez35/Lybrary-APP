
CREATE PROCEDURE spGetBook
	@ISBN varchar(50)
AS
BEGIN
	SELECT
		ISBN,
		Photo,
		Title,
		Author,
		ReleaseDate,
		Price
	FROM BookInformation
	WHERE @ISBN = ISBN
END
GO
