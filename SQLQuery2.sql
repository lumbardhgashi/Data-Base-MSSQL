
CREATE DATABASE [Invertari2]

USE [Invertari2]
GO

CREATE TABLE [dbo].[Klienti](
	[Id] [varchar](10) NOT NULL,
	[Emri] [varchar](50) NULL,
	[Mbiemri] [varchar](50) NULL,
	[Datelindja] [date] NULL,
	[Vendbanimi] [varchar](50) NULL,
 CONSTRAINT [PK_Klienti] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Porosia](
	[PorosiaID] [varchar](10) NOT NULL,
	[Produkti] [varchar](10) NULL,
	[Klienti] [varchar](10) NULL,
	[Data] [date] NULL,
	[Sasia] [int] NULL,
 CONSTRAINT [PK_Porosia] PRIMARY KEY CLUSTERED 
(
	[PorosiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produkti](
	[ID] [varchar](10) NOT NULL,
	[EmriProduktit] [varchar](50) NOT NULL,
	[CmimiPerNjesi] [decimal](7, 2) NOT NULL,
	[Sasia] [int] NOT NULL,
	[prodhuesi] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C001', N'Blend', N'Gashi', CAST(N'1999-12-17' AS Date), N'Lipjan')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C002', N'Altin ', N'Shala', CAST(N'2000-02-15' AS Date), N'Prishtine')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C003', N'Visar', N'Krasniqi', CAST(N'2001-08-14' AS Date), N'Ferizaj')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C004', N'Anila ', N'Mehmeti', CAST(N'1999-06-19' AS Date), N'Gjilan')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C005', N'Gresa', N'Gashi', CAST(N'2001-08-25' AS Date), N'Lipjan')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C006', N'Enis', N'Zeka', CAST(N'2000-04-30' AS Date), N'Ferizaj')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C007', N'Valentina', N'Azemi', CAST(N'2000-01-09' AS Date), N'Prishtine')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C008', N'Albin', N'Krasniqi', CAST(N'2001-10-07' AS Date), N'Ferizaj')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C009', N'Taulant', N'Shala', CAST(N'2000-10-12' AS Date), N'Lipjan')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C010', N'Besa', N'Mehmeti', CAST(N'2001-05-27' AS Date), N'Prishtine')
INSERT [dbo].[Klienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi]) VALUES (N'C011', N'Adelina', N'Zeka', CAST(N'2000-07-13' AS Date), N'Gjilan')
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P001', N'PR-15', N'C003', CAST(N'2020-10-02' AS Date), 1)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P002', N'PR-9', N'C005', CAST(N'2020-09-15' AS Date), 2)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P003', N'PR-7', N'C010', CAST(N'2020-09-10' AS Date), 1)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P004', N'PR-10', N'C008', CAST(N'2020-10-21' AS Date), 1)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P005', N'PR-2', N'C008', CAST(N'2020-10-21' AS Date), 3)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P006', N'PR-3', N'C008', CAST(N'2020-10-21' AS Date), 7)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P007', N'PR-14', N'C003', CAST(N'2020-08-07' AS Date), 1)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P008', N'PR-3', N'C006', CAST(N'2020-10-14' AS Date), 10)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P009', N'PR-10', N'C001', CAST(N'2020-09-20' AS Date), 2)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P010', N'PR-2', N'C011', CAST(N'2020-10-10' AS Date), 5)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P011', N'PR-13', N'C003', CAST(N'2020-09-05' AS Date), 1)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P012', N'PR-2', N'C004', CAST(N'2020-02-12' AS Date), 2)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P013', N'PR-3', N'C009', CAST(N'2020-04-15' AS Date), 2)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P014', N'PR-1', N'C005', CAST(N'2020-06-14' AS Date), 5)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P015', N'PR-14', N'C005', CAST(N'2020-06-14' AS Date), 1)
INSERT [dbo].[Porosia] ([PorosiaID], [Produkti], [Klienti], [Data], [Sasia]) VALUES (N'P016', N'PR-8', N'C005', CAST(N'2020-06-14' AS Date), 2)
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-1', N'Monitor', CAST(130.00 AS Decimal(7, 2)), 15, N'HP')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-10', N'Kufje', CAST(5.00 AS Decimal(7, 2)), 12, N'Sony')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-11', N'Maus', CAST(2.00 AS Decimal(7, 2)), 5, N'Deluxe')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-12', N'Monitor', CAST(150.00 AS Decimal(7, 2)), 5, N'Dell')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-13', N'Laptop', CAST(800.00 AS Decimal(7, 2)), 1, N'Lenovo')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-14', N'Laptop', CAST(550.00 AS Decimal(7, 2)), 7, N'Dell')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-15', N'Monitor', CAST(300.00 AS Decimal(7, 2)), 2, NULL)
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-2', N'Maus', CAST(3.00 AS Decimal(7, 2)), 10, N'BENQ')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-3', N'Tastature', CAST(15.00 AS Decimal(7, 2)), 30, N'HP')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-4', N'Kufje', CAST(15.00 AS Decimal(7, 2)), 4, N'Remax')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-5', N'Laptop', CAST(700.00 AS Decimal(7, 2)), 2, N'Acer')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-6', N'PC', CAST(300.00 AS Decimal(7, 2)), 1, N'Dell')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-7', N'PC', CAST(450.00 AS Decimal(7, 2)), 3, N'Lenovo')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-8', N'PC', CAST(700.00 AS Decimal(7, 2)), 2, N'HP')
INSERT [dbo].[Produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-9', N'Kufje', CAST(2.50 AS Decimal(7, 2)), 5, N'Samsung')
ALTER TABLE [dbo].[Porosia]  WITH CHECK ADD  CONSTRAINT [FK_Porosia_Klienti] FOREIGN KEY([Klienti])
REFERENCES [dbo].[Klienti] ([Id])
GO
ALTER TABLE [dbo].[Porosia] CHECK CONSTRAINT [FK_Porosia_Klienti]
GO
ALTER TABLE [dbo].[Porosia]  WITH CHECK ADD  CONSTRAINT [FK_Porosia_Produkti] FOREIGN KEY([Produkti])
REFERENCES [dbo].[Produkti] ([ID])
GO
ALTER TABLE [dbo].[Porosia] CHECK CONSTRAINT [FK_Porosia_Produkti]
GO
USE [master]
GO
ALTER DATABASE [Invertari] SET  READ_WRITE 
GO




