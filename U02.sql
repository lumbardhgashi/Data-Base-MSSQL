
CREATE DATABASE [Invertari1]
 
USE [Invertari1]

CREATE TABLE Produktii(
	[ID] [varchar](10) NOT NULL primary key,
	[EmriProduktit] [varchar](50) NOT NULL,
	[CmimiPerNjesi] [decimal](7, 2) NOT NULL,
	[Sasia] [int] NOT NULL,
	[prodhuesi] [varchar](50) NULL
)

INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-1', N'Monitor', CAST(130.00 AS Decimal(7, 2)), 15, N'HP')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-10', N'Kufje', CAST(5.00 AS Decimal(7, 2)), 12, N'Sony')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-11', N'Maus', CAST(2.00 AS Decimal(7, 2)), 5, N'Deluxe')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-12', N'Monitor', CAST(150.00 AS Decimal(7, 2)), 5, N'Dell')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-13', N'Laptop', CAST(800.00 AS Decimal(7, 2)), 1, N'Lenovo')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-14', N'Laptop', CAST(550.00 AS Decimal(7, 2)), 7, N'Dell')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-15', N'Monitor', CAST(300.00 AS Decimal(7, 2)), 2, NULL)
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-2', N'Maus', CAST(3.00 AS Decimal(7, 2)), 10, N'BENQ')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-3', N'Tastature', CAST(15.00 AS Decimal(7, 2)), 30, N'HP')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-4', N'Kufje', CAST(15.00 AS Decimal(7, 2)), 4, N'Remax')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-5', N'Laptop', CAST(700.00 AS Decimal(7, 2)), 2, N'Acer')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-6', N'PC', CAST(300.00 AS Decimal(7, 2)), 1, N'Dell')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-7', N'PC', CAST(450.00 AS Decimal(7, 2)), 3, N'Lenovo')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-8', N'PC', CAST(700.00 AS Decimal(7, 2)), 2, N'HP')
INSERT [dbo].[produktii] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-9', N'Kufje', CAST(2.50 AS Decimal(7, 2)), 5, N'Samsung')

--1. Te listohen te gjitha Produktet
Select*
From Produktii

--2. Te listohen te gjitha emrat e produkteve dhe cmimet
Select EmriProduktit , CmimiPerNjesi 
From Produktii

--3. Te listoni te gjitha emrat e prodhuese pa perseritjen e tyre
Select distinct prodhuesi 
From Produktii

--4. Te listohen te gjtiha produktet e prodhuesit "Dell"
Select*
From Produktii
where prodhuesi='Dell'

--5. Te listohen te gjitha produktet e prodhuesit "Lenovo" ose "Hp"
Select*
From Produktii
where prodhuesi='Lenovo' or prodhuesi='Hp' 

--6. Te listohen te gjithe monitoret qe nuk kane prodhues te specifikuar
Select *
From Produktii
where prodhuesi IS NULL

--7. Te listohen te gjithe laptopet qe kan cmim me te vogel se 750
Select*
From Produktii
where EmriProduktit='Laptop' AND CmimiPerNjesi<'750'

--8.Te listohen te gjitha produktet te cilat kane prodhuesin "Hp" dhe kan ne sasi mes 10 dhe 40 njesi
Select *
From Produktii
where prodhuesi='Hp' and Sasia Between 10 and 40

--9. Te listohen te gjitha produktet qe jan nga prodhuesi "Hp" ose "Lenovo" dhe te cilet kane cmimin me te lart se 150
Select *
From Produktii
where prodhuesi='Hp' and CmimiPerNjesi>'150' or prodhuesi='Lenovo' and CmimiPerNjesi>'150'

--10. Te  listohen te gjitha produktet e "Acer" ,"Hp","Lenovo","Samsung"
Select *
From Produktii
where prodhuesi='Acer' or prodhuesi='Hp' or prodhuesi='Lenovo' or prodhuesi='Samsung'

--11. Te renditen te gjitha produktet e prodhuesit "Hp" me vlere me te vogel se 500 duke i renditur sipas sasise , nga ma e madhja tek me e vogla
Select *
From Produktii
where prodhuesi='Hp' and CmimiPerNjesi<'500'
order by Sasia desc 