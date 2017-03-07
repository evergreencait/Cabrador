USE [cabrador]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 3/7/2017 3:45:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[photo] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[password] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dogs]    Script Date: 3/7/2017 3:45:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[breed] [varchar](255) NULL,
	[photo] [varchar](255) NULL,
	[shelter] [varchar](255) NULL,
	[adopted] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[drivers]    Script Date: 3/7/2017 3:45:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drivers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[car] [varchar](255) NULL,
	[photo] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[trips]    Script Date: 3/7/2017 3:45:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trips](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_point] [varchar](255) NULL,
	[destination] [varchar](255) NULL,
	[price] [int] NULL,
	[miles] [int] NULL,
	[date] [datetime] NULL,
	[driver_id] [int] NULL,
	[dog_id] [int] NULL,
	[customer_id] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[customers] ON 

INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (1, N'sdf', N'dsf', N'gkjdsf@gmail.com', N'dfsdf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (2, N'keely', N'https://i.ytimg.com/vi/opKg3fyqWt4/hqdefault.jpg', N'zxcZX@gmail.com', N'dsfsadf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (5, N'Katy', N'fglkdhg', N'kakds@g.vom', N'')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (6, N'Katy', N'sgsdg', N'afjh@gdfg.com', N'zdgdf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (7, N'sdfas', N'sdf', N'sdfasd@gmai.com', N'sdfasdf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (8, N'werwe', N'wer', N'werwer@dsfsda.com', N'dsfdsaf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (9, N'werwe', N'wer', N'werwer@dsfsda.com', N'dsfdsaf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (10, N'werwe', N'wer', N'werwer@dsfsda.com', N'dsfdsaf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (11, N'werwe', N'wer', N'werwer@dsfsda.com', N'dsfdsaf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (12, N'werwe', N'wer', N'werwer@dsfsda.com', N'dsfdsaf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (13, N'werwe', N'wer', N'werwer@dsfsda.com', N'dsfdsaf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (14, N'sdafj', N'sdfasdf', N'sd@gmail.com', N'dsfsadf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (15, N'sdafj', N'sdfasdf', N'sd@gmail.com', N'dsfsadf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (16, N'sdfsadf', N'sadfasd', N'dsfsad@gmail.com', N'safdf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (17, N'sdsdf', N'dsaf', N'sdaf@gmail.com', N'dsfasd')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (18, N'sdfsadf', N'sadfsa', N'fdg@gmail.com', N'safasd')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (19, N'sdfsadf', N'sadfsa', N'fdg@gmail.com', N'safasd')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (20, N'asdA', N'asd', N'aSDas@gmai.com', N'dsfaasdf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (21, N'dsf', N'sadf', N'adsf@gmail.com', N'sdfasdf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (22, N'sadfa', N'sdaf', N'dsf@gmail.com', N'sdfsdf')
INSERT [dbo].[customers] ([id], [name], [photo], [email], [password]) VALUES (23, N'keely', N'dsfdsf', N'keelyzglenn@gmail.com', N'monkey1963')
SET IDENTITY_INSERT [dbo].[customers] OFF
SET IDENTITY_INSERT [dbo].[dogs] ON 

INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (1, N'Oakley', N'Boxer', N'/img/Oakley.jpg', N'Seattle Humane Society', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (2, N'Alex', N'Shepherd Mix', N'/img/Alex.jpg', N'SPCA of Seattle', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (3, N'Allie', N'Border Collie', N'/img/Allie.jpg', N'SPCA of Seattle', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (4, N'Bebe', N'Chihuahua', N'/img/Bebe.jpg', N'Seattle Humane Society', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (5, N'Bella', N'English Bulldog', N'/img/Bella.jpg', N'NW Bulldog Haven', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (6, N'Bowie', N'Terrier/Dachsund', N'/img/Bowie.jpg', N'SPCA', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (7, N'Tilly', N'Spaniel/Chihuahua', N'/img/TIlly.jpg', N'Santa Cruz Humane Society', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (8, N'Rapunzel', N'Retriever', N'/img/Rapunzel.jpg', N'Santa Cruz Humane Society', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (9, N'Cara', N'Retriever Mix', N'/img/Cara.jpg', N'Santa Cruz Humane Society', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (10, N'Loki', N'Chihuahua', N'/img/Loki.jpg', N'Seattle Humane', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (11, N'Sarge', N'Dutch Shepherd', N'/img/Sarge.jpg', N'Seattle Humane', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (12, N'Bert', N'Fox Terrier', N'/img/Bert.jpg', N'Seattle Humane', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (13, N'Chico', N'Pit Mix', N'/img/Chico.jpg', N'Seattle Humane', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (14, N'Sage', N'Pit Mix', N'/img/Sage.jpg', N'Seattle Humane', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (15, N'Beverely', N'Border Collie', N'/img/Beverely.jpg', N'Seattle Humane', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (16, N'Paddington Bear', N'Beagle Mix', N'/img/PaddingtonBear.jpg', N'Seattle Humane ', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (17, N'Mowgli', N'Terrier Bull Mix', N'/img/Mowgli.jpg', N'Seattle Humane', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (18, N'Frankie', N'English Bulldog', N'/img/Frankie.jpg', N'NW Bulldog Haven', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (19, N'Opal', N'Lab', N'/img/Opal.jpg', N'Seattle Animal Shelter', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (20, N'Snowflake', N'Terrier/American Pit Bull', N'/img/Snowflake.jpg', N'Seattle Animal Shelter', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (21, N'Pops', N'Terrier/American Pit Bull', N'/img/Pops.jpg', N'Seattle Animal Shelter', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (22, N'Honey', N'Chihuahua', N'/img/Honey.jpg', N'Seattle Animal Shelter', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (23, N'Lorisa', N'English Bulldog', N'/img/Lorisa.jpg', N'NW Bulldog Haven', 0)
INSERT [dbo].[dogs] ([id], [name], [breed], [photo], [shelter], [adopted]) VALUES (24, N'Sammy Orion', N'Retriever Mix', N'/img/Sammy_Orion.jpg', N'Seattle Humane', 0)
SET IDENTITY_INSERT [dbo].[dogs] OFF
SET IDENTITY_INSERT [dbo].[drivers] ON 

INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (1, N'Aniekan', N'Toyota Prius', N'/drivers/Aniekan.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (2, N'Ariel', N'Honda Element', N'/drivers.Ariel.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (3, N'Ayana', N'Mercedes E-Class', N'/drivers/Ayana.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (4, N'Ben', N'Ford Fusion', N'/drivers/Ben.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (5, N'Carl', N'Honda Civic', N'/drivers/Carl.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (6, N'Chris', N'Subaru Outback', N'/drivers/Chris.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (7, N'Dmitri', N'Toyota Camry', N'/driver/Dmitri.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (8, N'Elizabeth', N'Audi A4', N'/drivers/Elizabeth.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (9, N'Emilie', N'Volkswagen Jetta', N'/drivers/Emilie.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (10, N'Hamed', N'Mercedes C-Class', N'/drivers/Hamed.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (11, N'Heather', N'Toyota Prius', N'/drivers/Heather.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (12, N'Jack', N'Chevy Malibu', N'/drivers/Jack.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (13, N'Jamie', N'Subaru Impreza', N'/drivers/Jamie.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (14, N'Jenny', N'Subaru Forester', N'/drivers/Jenny.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (15, N'Junelle', N'Honda Civic', N'/drivers/Junelle.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (16, N'Kameran', N'Audi S6', N'/drivers/Kameran.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (17, N'Kevin', N'Honda Element', N'/drivers/Kevin.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (18, N'Leo', N'Volkswagen Rabbit', N'/drivers/leo.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (19, N'Madison', N'Hyundai Sonata', N'/drivers/Madison.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (20, N'Meg', N'Subaru Outback', N'/drivers/Meg.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (21, N'Michelle', N'Lexus RX', N'/drivers/Michelle.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (22, N'Miquel', N'Subaru Tribeca', N'/drivers/Miquel.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (23, N'Quin', N'Honda Accord', N'/drivers/quin.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (24, N'Ryan', N'BMW 745', N'/drivers/Ryan.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (25, N'Sabrina', N'Nissan Xterra', N'/drivers/Sabrina.jpg')
INSERT [dbo].[drivers] ([id], [name], [car], [photo]) VALUES (26, N'Trevor', N'Volkswagen Golf', N'/drivers/Trevor.jpg')
SET IDENTITY_INSERT [dbo].[drivers] OFF
