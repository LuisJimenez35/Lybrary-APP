USE [Books]
GO
/****** Object:  Table [dbo].[BookInformation]    Script Date: 27/4/2023 07:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookInformation](
	[ISBN] [varchar](max) NOT NULL,
	[Photo] [varchar](max) NOT NULL,
	[Title] [varchar](max) NOT NULL,
	[Author] [varchar](max) NOT NULL,
	[ReleaseDate] [varchar](max) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Description] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 27/4/2023 07:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[BookISBN] [varchar](max) NOT NULL,
	[Photo] [varchar](max) NOT NULL,
	[Title] [varchar](max) NOT NULL,
	[Author] [varchar](max) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[BuyerEmail] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BookInformation] ([ISBN], [Photo], [Title], [Author], [ReleaseDate], [Price], [Description]) VALUES (N'1134', N'../Images/HPyLPiedra.jpg', N'Harry Potter y la Piedra Filosofal', N'J.K Rowling', N'16/06/1997', CAST(20 AS Decimal(18, 0)), N'«Con las manos temblorosas, Harry le dio la vuelta al sobre y vio un sello de lacre púrpura con un escudo de armas: un león, un águila, un tejón y una serpiente, que rodeaban una gran letra H.»

Harry Potter nunca ha oído hablar de Hogwarts hasta que empiezan a caer cartas en el felpudo del número 4 de Privet Drive. Llevan la dirección escrita con tinta verde en un sobre de pergamino amarillento con un sello de lacre púrpura, y sus horripilantes tíos se apresuran a confiscarlas. Más tarde, el día que Harry cumple once años, Rubeus Hagrid, un hombre gigantesco cuyos ojos brillan como escarabajos negros, irrumpe con una noticia extraordinaria: Harry Potter es un mago, y le han concedido una plaza en el Colegio Hogwarts de Magia y Hechicería. ¡Está a punto de comenzar una aventura increíble!')
INSERT [dbo].[BookInformation] ([ISBN], [Photo], [Title], [Author], [ReleaseDate], [Price], [Description]) VALUES (N'3367', N'../Images/3meters.jpg', N'A tres metros sobre el cielo', N'Federico Moccia', N'20/04/2000', CAST(20 AS Decimal(18, 0)), N'La primera novela de Federico Moccia, que lo lanzó a la fama.
Babi es una estudiante modelo y la hija perfecta. Step, en cambio, es violento y descarado. Provienen de dos mundos completamente distintos. A pesar de todo, entre los dos nacerá un amor más allá de todas las convenciones. Un amor controvertido por el que deberán luchar más de lo que esperaban. Babi y Step se erigen como un Romeo y Julieta contemporáneos en Roma, un escenario que parece creado para el amor.')
INSERT [dbo].[BookInformation] ([ISBN], [Photo], [Title], [Author], [ReleaseDate], [Price], [Description]) VALUES (N'5587', N'../Images/9786070785542_1.jpg', N'Trilogía Fuego 1. Ciudades de humo', N'Jona Marcús', N'16/02/2022', CAST(30 AS Decimal(18, 0)), N'Alice nunca ha salido al mundo.

Su cena es a las nueve en punto, su sueño dura exactamente ocho horas, jamás tiene una sola arruga en la ropa, parpadea 86400 veces al día, respira 30000 veces al día, solo habla cuando le preguntan, jamás ha levantado la voz y, lo más importante, jamás se ha preguntado qué pasaría si todo cambiara.

Pero, ¿y si eso ocurriera?

En un mundo donde la libertad está controlada, ¿hasta dónde serías capaz de llegar para recuperarla?

¿Hasta dónde serías capaz de llegar para sobrevivir?')
INSERT [dbo].[BookInformation] ([ISBN], [Photo], [Title], [Author], [ReleaseDate], [Price], [Description]) VALUES (N'8756', N'../Images/atravesventana.jpg', N'A traves de mi ventana', N'Ariana Goody', N'21/04/2021', CAST(17 AS Decimal(18, 0)), N'Raquel lleva toda la vida loca por Ares, su atractivo y misterioso vecino. Lo observa sin ser vista desde su ventana y es que, muy a su pesar, no han intercambiado ni una triste palabra. Lo que Raquel no sabe es que eso está a punto de cambiar...

Ares comenzará a cruzarse en su camino hasta en los lugares más inesperados y descubrirá que, en realidad, Raquel no es la niña inocente que creía.

Ahora, Raquel tiene muy claro su objetivo: conseguir que Ares se enamore de ella. Por supuesto, no está dispuesta a perderlo todo por el camino, y mucho menos a sí misma...')
INSERT [dbo].[BookInformation] ([ISBN], [Photo], [Title], [Author], [ReleaseDate], [Price], [Description]) VALUES (N'7895', N'../Images/anafrank.jpg', N'Diario de Ana Frank', N'Ana Frank', N'21/12/1998', CAST(15 AS Decimal(18, 0)), N'Un testimonio único sobre el horror y la barbarie nazi, y sobre los sentimientos y experiencias que vivió una niña judía recluida con su familia para huir del Holocausto

Tras la invasión de Holanda, los Frank, comerciantes judíos alemanes emigrados a Amsterdam en 1933, se ocultaron de la Gestapo en una buhardilla anexa al edificio donde el padre de Anne tenía sus oficinas. Eran ocho personas y permanecieron recluidas desde junio de 1942 hasta agosto de 1944, fecha en que fueron detenidas y enviadas a campos de concentración. En ese lugar y en las más precarias condiciones, Anne, a la sazón una niña de trece años, escribió su estremecedor Diario: un testimonio único en su género sobre el horror y la barbarie nazi, y sobre los sentimientos y experiencias de la propia Anne y sus acompañantes. Anne murió en el campo de Bergen-Belsen en marzo de 1945. Su Diario nunca morirá.

«De entre los muchos que, a lo largo de la historia, han hablado en nombre de la dignidad humana en tiempos de sufrimiento y muerte, no hay ninguna voz que tenga más peso que la de Anne Frank.»')
GO
/****** Object:  StoredProcedure [dbo].[spClearShoppingCart]    Script Date: 27/4/2023 07:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spClearShoppingCart]
    @BuyerEmail NVARCHAR(50)
AS
BEGIN
    DELETE FROM ShoppingCart WHERE BuyerEmail = @BuyerEmail
END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteBookFromShoppingCart]    Script Date: 27/4/2023 07:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteBookFromShoppingCart]
    @BuyerEmail nvarchar(100),
    @BookISBN nvarchar(50)
AS
BEGIN
    DELETE FROM ShoppingCart
    WHERE BuyerEmail = @BuyerEmail AND BookISBN = @BookISBN
END
GO
/****** Object:  StoredProcedure [dbo].[spGetBook]    Script Date: 27/4/2023 07:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetBook]
	@ISBN varchar(50)
AS
BEGIN
	SELECT
		ISBN,
		Photo,
		Title,
		Author,
		ReleaseDate,
		Price, 
		Description
	FROM BookInformation
	WHERE @ISBN = ISBN
END
GO
/****** Object:  StoredProcedure [dbo].[spGetBooks]    Script Date: 27/4/2023 07:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetBooks] 

AS
BEGIN

	SELECT	
		ISBN,
		Photo,
		Title,
		Author,
		ReleaseDate,
		Price,
		Description
	From BookInformation
END
GO
/****** Object:  StoredProcedure [dbo].[spGetMyShoppingCart]    Script Date: 27/4/2023 07:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetMyShoppingCart]
	@Email varchar(50)
AS
BEGIN
	SELECT * FROM ShoppingCart
	where BuyerEmail = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[spSaveToShoppingCart]    Script Date: 27/4/2023 07:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spSaveToShoppingCart]
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
