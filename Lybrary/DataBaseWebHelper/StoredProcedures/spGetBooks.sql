
CREATE PROCEDURE spGetBooks 

AS
BEGIN

	SELECT	
		ISBN,
		Photo,
		Title,
		Author,
		ReleaseDate,
		Price
	From BookIformation
END
GO
