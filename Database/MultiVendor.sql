USE [MultiVendor]
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attributes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](50) NOT NULL,
	[Value] [varchar](50) NOT NULL,
	[customer] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Customer] [varchar](30) NULL,
	[Status] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [varchar](2) NOT NULL,
	[Name] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Currency](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](30) NOT NULL,
	[Value] [varchar](30) NOT NULL,
	[Locale] [varchar](30) NOT NULL,
	[Active] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](200) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Status] [smallint] NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[ShopName] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Street] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](30) NULL,
	[Image] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Username] [varchar](250) NOT NULL,
	[Password] [varchar](250) NOT NULL,
	[FullName] [varchar](250) NOT NULL,
	[RoleId] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](30) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Phone] [varchar](30) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[DatePost] [datetime] NOT NULL,
	[Read] [smallint] NOT NULL,
	[Vendor] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [real] NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Price] [real] NULL,
	[CreationDate] [datetime] NULL,
	[Status] [smallint] NULL,
	[Employee] [varchar](50) NULL,
	[Customer] [varchar](50) NULL,
	[PaymentId] [int] NULL,
	[FullName] [varchar](50) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Country] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Street] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Price] [decimal](10, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [ntext] NOT NULL,
	[Photo] [varchar](250) NOT NULL,
	[Active] [smallint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Customer] [varchar](30) NULL,
	[Views] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductsAttributes]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsAttributes](
	[ProductId] [int] NOT NULL,
	[AttributeId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Setting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Value] [ntext] NOT NULL,
	[Choose] [smallint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Social]    Script Date: 2017/03/03 11:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Social](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](50) NOT NULL,
	[Value] [varchar](50) NOT NULL,
	[Vendor] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Attributes] ON 

INSERT [dbo].[Attributes] ([id], [Key], [Value], [customer]) VALUES (6, N'Color', N'XAnh', N'shop1')
INSERT [dbo].[Attributes] ([id], [Key], [Value], [customer]) VALUES (8, N'Size', N'M | L| XL', N'shop1')
INSERT [dbo].[Attributes] ([id], [Key], [Value], [customer]) VALUES (10, N'Màu s?c', N'?? | Vàng', N'shop1')
INSERT [dbo].[Attributes] ([id], [Key], [Value], [customer]) VALUES (11, N'color', N'red', N'shop1')
INSERT [dbo].[Attributes] ([id], [Key], [Value], [customer]) VALUES (12, N'color', N'red', N'shop10')
INSERT [dbo].[Attributes] ([id], [Key], [Value], [customer]) VALUES (13, N'color', N'd?', N'shop1')
SET IDENTITY_INSERT [dbo].[Attributes] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (1, N'Books & Audible', 0, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (20, N'Books', 1, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (21, N'Children''s Books', 1, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (22, N'Magazines', 1, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (23, N'Movies, Music & Games', 0, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (24, N'Movies & TV', 23, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (25, N'Blu-ray', 23, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (26, N'Headphones', 23, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (27, N'PC Gaming', 23, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (28, N'Electronics', 0, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (31, N'Cell Phones & Accessories', 28, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (32, N'Headphones', 28, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (33, N'Computers', 0, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (34, N'Computers & Tablets', 33, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (35, N'Monitors', 33, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (36, N'Networking', 33, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (37, N'CateVendor', 0, N'shop1', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (39, N'CateVendor 1.12', 37, N'shop1', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (58, N'shop1', 0, N'shop1', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (59, N'Category 1 - Shop 1', 0, N'shop1', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (60, N'Category 1.1 - Shop 1', 59, N'shop1', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (61, N'Handmade', 0, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (62, N'Jewelry', 61, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (63, N'Artwork', 61, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (64, N'Artwork', 0, N'shop10', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (65, N'Toys & Games', 0, N'shop10', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [Customer], [Status]) VALUES (66, N'Artwork 1', 64, N'shop10', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (1, N'AF', N'Afghanistan')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (2, N'AF', N'Afghanistan')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (3, N'AL', N'Albania')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (4, N'DZ', N'Algeria')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (5, N'DS', N'American Samoa')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (6, N'AD', N'Andorra')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (7, N'AO', N'Angola')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (8, N'AI', N'Anguilla')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (9, N'AQ', N'Antarctica')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (10, N'AG', N'Antigua and Barbuda')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (11, N'AR', N'Argentina')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (12, N'AM', N'Armenia')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (13, N'AW', N'Aruba')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (14, N'AU', N'Australia')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (15, N'AT', N'Austria')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (16, N'AZ', N'Azerbaijan')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (17, N'BS', N'Bahamas')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (18, N'BH', N'Bahrain')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (19, N'BD', N'Bangladesh')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (20, N'BB', N'Barbados')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (21, N'BY', N'Belarus')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (22, N'BE', N'Belgium')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (23, N'BZ', N'Belize')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (24, N'BJ', N'Benin')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (25, N'BM', N'Bermuda')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (26, N'BT', N'Bhutan')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (27, N'BO', N'Bolivia')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (28, N'BA', N'Bosnia and Herzegovina')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (29, N'BW', N'Botswana')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (30, N'BV', N'Bouvet Island')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (31, N'BR', N'Brazil')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (32, N'IO', N'British Indian Ocean Territory')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (33, N'BN', N'Brunei Darussalam')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (34, N'BG', N'Bulgaria')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (35, N'BF', N'Burkina Faso')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (36, N'BI', N'Burundi')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (37, N'KH', N'Cambodia')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (38, N'CM', N'Cameroon')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (39, N'CA', N'Canada')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (40, N'CV', N'Cape Verde')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (41, N'KY', N'Cayman Islands')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (42, N'CF', N'Central African Republic')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (43, N'TD', N'Chad')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (44, N'CL', N'Chile')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (45, N'CN', N'China')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (46, N'CX', N'Christmas Island')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (47, N'CC', N'Cocos (Keeling) Islands')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (48, N'CO', N'Colombia')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (49, N'KM', N'Comoros')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (50, N'CG', N'Congo')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (51, N'CK', N'Cook Islands')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (52, N'41', N'34-TRIAL-Costa Rica 100')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (53, N'26', N'78-TRIAL-Croatia (Hrvatska) 258')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (54, N'26', N'5-TRIAL-Cuba 245')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (55, N'18', N'61-TRIAL-Cyprus 191')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (56, N'29', N'27-TRIAL-Czech Republic 36')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (57, N'29', N'2-TRIAL-Denmark 153')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (58, N'29', N'21-TRIAL-Djibouti 116')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (59, N'21', N'47-TRIAL-Dominica 126')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (60, N'71', N'69-TRIAL-Dominican Republic 112')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (61, N'16', N'235-TRIAL-East Timor 294')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (62, N'20', N'122-TRIAL-Ecuador 33')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (63, N'27', N'141-TRIAL-Egypt 211')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (64, N'53', N'47-TRIAL-El Salvador 44')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (65, N'26', N'237-TRIAL-Equatorial Guinea 259')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (66, N'23', N'229-TRIAL-Eritrea 178')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (67, N'16', N'290-TRIAL-Estonia 42')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (68, N'28', N'40-TRIAL-Ethiopia 242')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (69, N'64', N'146-TRIAL-Falkland Islands (Malvinas) 105')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (70, N'29', N'70-TRIAL-Faroe Islands 50')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (71, N'6-', N'93-TRIAL-Fiji 248')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (72, N'12', N'84-TRIAL-Finland 154')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (73, N'15', N'166-TRIAL-France 176')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (74, N'13', N'144-TRIAL-France, Metropolitan 39')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (75, N'26', N'137-TRIAL-French Guiana 238')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (76, N'21', N'129-TRIAL-French Polynesia 41')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (77, N'33', N'139-TRIAL-French Southern Territories 258')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (78, N'20', N'177-TRIAL-Gabon 206')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (79, N'17', N'221-TRIAL-Gambia 245')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (80, N'22', N'270-TRIAL-Georgia 129')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (81, N'77', N'297-TRIAL-Germany 12')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (82, N'28', N'161-TRIAL-Ghana 36')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (83, N'15', N'255-TRIAL-Gibraltar 274')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (84, N'13', N'50-TRIAL-Guernsey 250')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (85, N'14', N'166-TRIAL-Greece 130')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (86, N'20', N'7-TRIAL-Greenland 237')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (87, N'15', N'153-TRIAL-Grenada 183')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (88, N'24', N'109-TRIAL-Guadeloupe 158')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (89, N'22', N'122-TRIAL-Guam 46')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (90, N'20', N'213-TRIAL-Guatemala 68')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (91, N'0-', N'162-TRIAL-Guinea 155')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (92, N'10', N'24-TRIAL-Guinea-Bissau 137')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (93, N'24', N'295-TRIAL-Guyana 141')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (94, N'2-', N'91-TRIAL-Haiti 236')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (95, N'74', N'96-TRIAL-Heard and Mc Donald Islands 21')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (96, N'48', N'168-TRIAL-Honduras 184')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (97, N'18', N'53-TRIAL-Hong Kong 199')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (98, N'18', N'0-TRIAL-Hungary 188')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (99, N'12', N'128-TRIAL-Iceland 193')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (100, N'48', N'107-TRIAL-India 21')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (101, N'21', N'13-TRIAL-Isle of Man 214')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (102, N'20', N'35-TRIAL-Indonesia 51')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (103, N'20', N'19-TRIAL-Iran (Islamic Republic of) 56')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (104, N'29', N'224-TRIAL-Iraq 208')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (105, N'14', N'289-TRIAL-Ireland 2')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (106, N'19', N'93-TRIAL-Israel 243')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (107, N'22', N'214-TRIAL-Italy 203')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (108, N'24', N'258-TRIAL-Ivory Coast 18')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (109, N'18', N'98-TRIAL-Jersey 281')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (110, N'89', N'109-TRIAL-Jamaica 157')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (111, N'72', N'238-TRIAL-Japan 292')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (112, N'38', N'190-TRIAL-Jordan 257')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (113, N'15', N'15-TRIAL-Kazakhstan 88')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (114, N'25', N'2-TRIAL-Kenya 234')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (115, N'27', N'228-TRIAL-Kiribati 146')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (116, N'26', N'275-TRIAL-Korea, Democratic People''s Republic of 233')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (117, N'16', N'144-TRIAL-Korea, Republic of 216')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (118, N'28', N'122-TRIAL-Kosovo 51')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (119, N'12', N'257-TRIAL-Kuwait 276')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (120, N'29', N'275-TRIAL-Kyrgyzstan 212')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (121, N'20', N'3-TRIAL-Lao People''s Democratic Republic 169')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (122, N'16', N'201-TRIAL-Latvia 189')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (123, N'25', N'202-TRIAL-Lebanon 85')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (124, N'18', N'88-TRIAL-Lesotho 226')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (125, N'11', N'232-TRIAL-Liberia 32')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (126, N'26', N'221-TRIAL-Libyan Arab Jamahiriya 89')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (127, N'17', N'268-TRIAL-Liechtenstein 192')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (128, N'12', N'134-TRIAL-Lithuania 49')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (129, N'24', N'145-TRIAL-Luxembourg 60')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (130, N'11', N'239-TRIAL-Macau 123')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (131, N'79', N'187-TRIAL-Macedonia 229')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (132, N'49', N'66-TRIAL-Madagascar 49')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (133, N'19', N'297-TRIAL-Malawi 16')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (134, N'86', N'188-TRIAL-Malaysia 82')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (135, N'15', N'114-TRIAL-Maldives 1')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (136, N'11', N'86-TRIAL-Mali 263')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (137, N'11', N'285-TRIAL-Malta 253')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (138, N'12', N'32-TRIAL-Marshall Islands 245')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (139, N'11', N'121-TRIAL-Martinique 58')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (140, N'24', N'181-TRIAL-Mauritania 244')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (141, N'96', N'229-TRIAL-Mauritius 61')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (142, N'13', N'73-TRIAL-Mayotte 266')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (143, N'44', N'192-TRIAL-Mexico 39')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (144, N'15', N'54-TRIAL-Micronesia, Federated States of 110')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (145, N'24', N'286-TRIAL-Moldova, Republic of 213')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (146, N'27', N'68-TRIAL-Monaco 218')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (147, N'18', N'258-TRIAL-Mongolia 191')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (148, N'2-', N'77-TRIAL-Montenegro 214')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (149, N'14', N'234-TRIAL-Montserrat 74')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (150, N'72', N'133-TRIAL-Morocco 170')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (151, N'28', N'18-TRIAL-Mozambique 77')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (152, N'73', N'263-TRIAL-Myanmar 268')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (153, N'92', N'102-TRIAL-Namibia 80')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (154, N'11', N'2-TRIAL-Nauru 199')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (155, N'22', N'43-TRIAL-Nepal 124')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (156, N'22', N'161-TRIAL-Netherlands 81')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (157, N'10', N'105-TRIAL-Netherlands Antilles 293')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (158, N'22', N'92-TRIAL-New Caledonia 142')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (159, N'12', N'164-TRIAL-New Zealand 100')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (160, N'28', N'213-TRIAL-Nicaragua 74')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (161, N'17', N'235-TRIAL-Niger 233')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (162, N'21', N'296-TRIAL-Nigeria 167')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (163, N'85', N'140-TRIAL-Niue 194')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (164, N'29', N'119-TRIAL-Norfolk Island 25')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (165, N'17', N'158-TRIAL-Northern Mariana Islands 202')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (166, N'27', N'178-TRIAL-Norway 93')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (167, N'15', N'118-TRIAL-Oman 264')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (168, N'11', N'100-TRIAL-Pakistan 87')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (169, N'16', N'10-TRIAL-Palau 257')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (170, N'70', N'276-TRIAL-Palestine 227')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (171, N'43', N'264-TRIAL-Panama 9')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (172, N'82', N'165-TRIAL-Papua New Guinea 187')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (173, N'17', N'225-TRIAL-Paraguay 127')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (174, N'22', N'223-TRIAL-Peru 20')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (175, N'2-', N'123-TRIAL-Philippines 296')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (176, N'13', N'295-TRIAL-Pitcairn 125')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (177, N'64', N'202-TRIAL-Poland 16')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (178, N'23', N'211-TRIAL-Portugal 171')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (179, N'11', N'153-TRIAL-Puerto Rico 220')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (180, N'90', N'188-TRIAL-Qatar 163')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (181, N'14', N'62-TRIAL-Reunion 29')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (182, N'0-', N'58-TRIAL-Romania 178')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (183, N'26', N'77-TRIAL-Russian Federation 0')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (184, N'25', N'203-TRIAL-Rwanda 160')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (185, N'15', N'177-TRIAL-Saint Kitts and Nevis 8')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (186, N'11', N'1-TRIAL-Saint Lucia 50')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (187, N'60', N'93-TRIAL-Saint Vincent and the Grenadines 84')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (188, N'20', N'211-TRIAL-Samoa 204')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (189, N'23', N'72-TRIAL-San Marino 250')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (190, N'22', N'156-TRIAL-Sao Tome and Principe 116')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (191, N'12', N'126-TRIAL-Saudi Arabia 157')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (192, N'23', N'169-TRIAL-Senegal 261')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (193, N'29', N'217-TRIAL-Serbia 212')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (194, N'11', N'185-TRIAL-Seychelles 41')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (195, N'12', N'229-TRIAL-Sierra Leone 65')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (196, N'25', N'96-TRIAL-Singapore 155')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (197, N'53', N'284-TRIAL-Slovakia 34')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (198, N'54', N'157-TRIAL-Slovenia 269')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (199, N'32', N'207-TRIAL-Solomon Islands 83')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (200, N'11', N'167-TRIAL-Somalia 48')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (201, N'17', N'123-TRIAL-South Africa 242')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (202, N'54', N'241-TRIAL-South Georgia South Sandwich Islands 75')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (203, N'15', N'221-TRIAL-Spain 170')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (204, N'12', N'205-TRIAL-Sri Lanka 283')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (205, N'15', N'79-TRIAL-St. Helena 201')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (206, N'19', N'137-TRIAL-St. Pierre and Miquelon 134')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (207, N'15', N'276-TRIAL-Sudan 205')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (208, N'62', N'281-TRIAL-Suriname 0')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (209, N'13', N'55-TRIAL-Svalbard and Jan Mayen Islands 255')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (210, N'24', N'11-TRIAL-Swaziland 277')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (211, N'24', N'252-TRIAL-Sweden 143')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (212, N'96', N'140-TRIAL-Switzerland 13')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (213, N'27', N'218-TRIAL-Syrian Arab Republic 10')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (214, N'11', N'212-TRIAL-Taiwan 95')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (215, N'26', N'240-TRIAL-Tajikistan 88')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (216, N'18', N'297-TRIAL-Tanzania, United Republic of 189')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (217, N'19', N'153-TRIAL-Thailand 114')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (218, N'51', N'144-TRIAL-Togo 158')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (219, N'35', N'92-TRIAL-Tokelau 105')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (220, N'64', N'3-TRIAL-Tonga 229')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (221, N'75', N'192-TRIAL-Trinidad and Tobago 297')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (222, N'14', N'61-TRIAL-Tunisia 127')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (223, N'16', N'29-TRIAL-Turkey 40')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (224, N'21', N'201-TRIAL-Turkmenistan 77')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (225, N'11', N'113-TRIAL-Turks and Caicos Islands 292')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (226, N'24', N'292-TRIAL-Tuvalu 159')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (227, N'27', N'127-TRIAL-Uganda 184')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (228, N'17', N'198-TRIAL-Ukraine 70')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (229, N'28', N'204-TRIAL-United Arab Emirates 203')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (230, N'22', N'6-TRIAL-United Kingdom 263')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (231, N'10', N'189-TRIAL-United States 240')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (232, N'16', N'119-TRIAL-United States minor outlying islands 213')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (233, N'91', N'18-TRIAL-Uruguay 232')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (234, N'15', N'175-TRIAL-Uzbekistan 39')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (235, N'3-', N'98-TRIAL-Vanuatu 147')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (236, N'84', N'271-TRIAL-Vatican City State 164')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (237, N'11', N'245-TRIAL-Venezuela 212')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (238, N'14', N'269-TRIAL-Vietnam 262')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (239, N'11', N'89-TRIAL-Virgin Islands (British) 44')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (240, N'16', N'145-TRIAL-Virgin Islands (U.S.) 8')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (241, N'11', N'1-TRIAL-Wallis and Futuna Islands 123')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (242, N'13', N'152-TRIAL-Western Sahara 187')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (243, N'70', N'201-TRIAL-Yemen 3')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (244, N'23', N'200-TRIAL-Zaire 269')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (245, N'21', N'28-TRIAL-Zambia 243')
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (246, N'14', N'243-TRIAL-Zimbabwe 37')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Currency] ON 

INSERT [dbo].[Currency] ([Id], [Key], [Value], [Locale], [Active]) VALUES (1, N'USA', N'$', N'en_US', 1)
INSERT [dbo].[Currency] ([Id], [Key], [Value], [Locale], [Active]) VALUES (2, N'Italia', N'Eu', N'it_IT', 0)
INSERT [dbo].[Currency] ([Id], [Key], [Value], [Locale], [Active]) VALUES (6, N'India', N'', N'hi_IN', 0)
INSERT [dbo].[Currency] ([Id], [Key], [Value], [Locale], [Active]) VALUES (7, N'VietNam', N'?', N'vi_VN', 0)
INSERT [dbo].[Currency] ([Id], [Key], [Value], [Locale], [Active]) VALUES (8, N'France', N'€', N'fr_FR', 0)
INSERT [dbo].[Currency] ([Id], [Key], [Value], [Locale], [Active]) VALUES (9, N'German', N'', N'de_DE', 0)
INSERT [dbo].[Currency] ([Id], [Key], [Value], [Locale], [Active]) VALUES (10, N'Brazil', N'', N'pt_BR', 0)
INSERT [dbo].[Currency] ([Id], [Key], [Value], [Locale], [Active]) VALUES (11, N'Spain', N'', N'es_ES', 0)
SET IDENTITY_INSERT [dbo].[Currency] OFF
INSERT [dbo].[Employee] ([Username], [Password], [FullName], [RoleId]) VALUES (N'admin', N'202cb962ac59075b964b07152d234b70', N'Administrator', 1)
INSERT [dbo].[Employee] ([Username], [Password], [FullName], [RoleId]) VALUES (N'emp01', N'202cb962ac59075b964b07152d234b70', N'Employee 1', 1)
INSERT [dbo].[Employee] ([Username], [Password], [FullName], [RoleId]) VALUES (N'emp02', N'202cb962ac59075b964b07152d234b70', N'Employee 2', 2)
INSERT [dbo].[Employee] ([Username], [Password], [FullName], [RoleId]) VALUES (N'emp03', N'202cb962ac59075b964b07152d234b70', N'Employee 3', 2)
INSERT [dbo].[Employee] ([Username], [Password], [FullName], [RoleId]) VALUES (N'emp04', N'202cb962ac59075b964b07152d234b70', N'Employee 4', 2)
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([Id], [Title], [Description], [Phone], [Email], [DatePost], [Read], [Vendor]) VALUES (5, N'Title 1', N'Description 1', N'123456', N'customer1@gmail.com', CAST(0x0000A6F9001487DC AS DateTime), 1, N'shop1')
INSERT [dbo].[Message] ([Id], [Title], [Description], [Phone], [Email], [DatePost], [Read], [Vendor]) VALUES (6, N'Title 2', N'Description 2', N'123456', N'customer2@gmail.com', CAST(0x0000A6F900368E68 AS DateTime), 1, N'shop1')
INSERT [dbo].[Message] ([Id], [Title], [Description], [Phone], [Email], [DatePost], [Read], [Vendor]) VALUES (7, N'Title 1', N'Description 1', N'123456', N'aaa@yahoo.com', CAST(0x0000A6F900B19CC0 AS DateTime), 1, N'shop10')
SET IDENTITY_INSERT [dbo].[Message] OFF
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (395, 52, 2, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (396, 52, 2, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (396, 53, 8, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (397, 52, 2, 3)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (397, 53, 8, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (398, 52, 2, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (398, 53, 8, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (399, 53, 8, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (400, 51, 6, 2)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (400, 54, 6, 2)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (400, 70, 7, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (401, 53, 8, 2)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (402, 51, 6, 2)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (402, 54, 6, 2)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (402, 70, 7, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (403, 52, 2, 2)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (404, 52, 2, 2)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (405, 52, 2, 3)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (406, 51, 6, 2)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (406, 54, 6, 2)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (406, 70, 7, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (407, 51, 6, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (407, 70, 7, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (407, 107, 6, 1)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (408, 51, 6, 4)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (408, 54, 6, 3)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [Price], [Quantity]) VALUES (408, 57, 2, 2)
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (395, N'Purchase Order', 2, CAST(0x0000A6F800B4D818 AS DateTime), 0, NULL, N'customer1', 6, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (396, N'Purchase Order', 10, CAST(0x0000A6F800C55D64 AS DateTime), 0, NULL, N'customer1', 7, N'Customer 1', N'customer1@gmail.com', N'123456', N'Tajikistan', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (397, N'Purchase Order', 14, CAST(0x0000A6F900778A58 AS DateTime), 0, NULL, N'customer1', 6, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (398, N'Purchase Order', 10, CAST(0x0000A6F90078B658 AS DateTime), 0, NULL, N'shop1', 6, N'David', N'shop1@gmail.com', N'1234567821212', N'United States', N'Chicago', N'123 Street')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (399, N'Purchase Order', 8, CAST(0x0000A6F90090C360 AS DateTime), 0, NULL, N'shop1', 4, N'David', N'shop1@gmail.com', N'1234567821212', N'United States', N'Chicago', N'123 Street')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (400, N'Purchase Order', 31, CAST(0x0000A6F900A5E5EC AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (401, N'Purchase Order', 16, CAST(0x0000A6F900A69488 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (402, N'Purchase Order', 31, CAST(0x0000A6F900A7C088 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (403, N'Purchase Order', 4, CAST(0x0000A6F900A92F54 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (404, N'Purchase Order', 4, CAST(0x0000A6F900AA2FF8 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (405, N'Purchase Order', 6, CAST(0x0000A6F900AA80D4 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (406, N'Purchase Order', 31, CAST(0x0000A6F900AADC3C AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (407, N'Purchase Order', 19, CAST(0x0000A6F900B05F2C AS DateTime), 0, NULL, N'customer2', 4, N'Customer 2', N'customer2@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[Orders] ([Id], [Name], [Price], [CreationDate], [Status], [Employee], [Customer], [PaymentId], [FullName], [Email], [Phone], [Country], [City], [Street]) VALUES (408, N'Purchase Order', 46, CAST(0x0000A6FA0016D67C AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([Id], [Name]) VALUES (4, N'Paypal')
INSERT [dbo].[Payment] ([Id], [Name]) VALUES (6, N'ATM')
INSERT [dbo].[Payment] ([Id], [Name]) VALUES (7, N'Cash')
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (51, N'Ipad Pro', CAST(6 AS Decimal(10, 0)), 8, N'<p>good</p>
        ', N'e0b41feaf083ddda09e439b3a7e20c04.png', 1, CAST(0x0000A6FA0044B128 AS DateTime), 31, N'shop1', 164)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (52, N'IPhone 1', CAST(2 AS Decimal(10, 0)), 1, N'<p>good</p>
        ', N'e8e5e1416f085eecf36cb2354e0ba710.png', 1, CAST(0x0000A6FA00416568 AS DateTime), 31, N'shop1', 44)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (53, N'IPhone 2', CAST(8 AS Decimal(10, 0)), 2, N'<p>good</p>
        ', N'c4277f7d3148c64a1b60adefcd3f81f0.png', 1, CAST(0x0000A6F9007D814C AS DateTime), 31, N'shop1', 50)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (54, N'Nokia Lumia 930', CAST(6 AS Decimal(10, 0)), 8, N'<p>good</p>
        ', N'dc17f5567e6772f9b0e787be10805155.jpg', 1, CAST(0x0000A6F800A9ADE4 AS DateTime), 31, N'shop4', 21)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (55, N'Nokia Lumia 929', CAST(5 AS Decimal(10, 0)), 44, N'<p>good</p>
        ', N'97c37fbd0543a010007f2a10dbdf1226.jpg', 1, CAST(0x0000A6F800A9B870 AS DateTime), 31, N'shop1', 12)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (56, N'Nokia X2 Dual SIM', CAST(4 AS Decimal(10, 0)), 44, N'<p>good</p>
        ', N'bbb54d208de33f635eecfbb1b7e7ff4e.jpg', 1, CAST(0x0000A6F800AA3E08 AS DateTime), 31, N'shop1', 15)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (57, N'Nokia XL', CAST(2 AS Decimal(10, 0)), 2, N'<p>good</p>
        ', N'52eaa13a23f5232b96a1bf6d11d52137.jpg', 1, CAST(0x0000A6FA0044B704 AS DateTime), 31, N'shop2', 62)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (58, N'Samsung Galaxy A9 2016', CAST(7 AS Decimal(10, 0)), 7, N'<p>good</p>
        ', N'c7be8d3a057ad75c7163736da465e564.jpg', 1, CAST(0x0000A6F9009E1DBC AS DateTime), 31, N'shop1', 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (59, N'Samsung Galaxy C5R3', CAST(2 AS Decimal(10, 0)), 66, N'<p>good</p>
        ', N'84148f40e9ae86a44ff04a91059caaaf.jpg', 1, CAST(0x0000A6F800AA2DA0 AS DateTime), 31, N'shop4', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (60, N'Samsung Galaxy J7-2016', CAST(3 AS Decimal(10, 0)), 8, N'<p>good</p>
        ', N'89276c7e27ed0260e5ad98dcbeabe774.jpg', 1, CAST(0x0000A6F800AA0F28 AS DateTime), 31, N'shop2', 3)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (61, N'Book 1', CAST(2 AS Decimal(10, 0)), 2, N'<p>Good</p>
        ', N'a74aa4e56da2a87ea7c770a651560e1b.jpg', 1, CAST(0x0000A6F9009BAAC8 AS DateTime), 20, N'shop1', 21)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (62, N'Book 1', CAST(6 AS Decimal(10, 0)), 12, N'<p>Good</p>
        ', N'5c4048e12b0f32e610f1f9a9df0f4a20.jpg', 1, CAST(0x0000A6F800AA0370 AS DateTime), 20, N'shop4', 6)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (63, N'Book 3', CAST(4 AS Decimal(10, 0)), 6, N'<p>Good</p>
        ', N'ce1e5f2965b25ccd5cd612bfbdede753.jpg', 1, CAST(0x0000A6F800A9D238 AS DateTime), 20, N'shop1', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (64, N'Book 4', CAST(3 AS Decimal(10, 0)), 33, N'<p>Good</p>
        ', N'b0977f8b74311bb13699ef62c18582e7.jpg', 1, CAST(0x0000A6F800A9F7B8 AS DateTime), 20, N'shop4', 2)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (65, N'Book 5', CAST(5 AS Decimal(10, 0)), 44, N'<p>Good</p>
        ', N'6444e7ec9330f16e627b38ca1393a8e9.jpg', 1, CAST(0x0000A6F800AC6020 AS DateTime), 20, N'shop1', 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (66, N'Book 6', CAST(2 AS Decimal(10, 0)), 8, N'<p>Good</p>
        ', N'f9b024017f5904aaa30b5563079568c1.jpg', 1, CAST(0x0000A6F800A9E9A8 AS DateTime), 20, N'shop3', 6)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (67, N'Book 7', CAST(4 AS Decimal(10, 0)), 4, N'<p>Good</p>
        ', N'61ae8ff60a7cb7f445315e32e7248ab6.jpg', 1, CAST(0x0000A6F800A9DDF0 AS DateTime), 20, N'shop2', 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (68, N'Monitor 1', CAST(9 AS Decimal(10, 0)), 2, N'<p>Good</p>
        ', N'6440bf65f82bd622dcd131bfc92310b9.jpg', 1, CAST(0x0000A6F800A95F60 AS DateTime), 35, N'shop3', 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (69, N'Monitor 2', CAST(8 AS Decimal(10, 0)), 6, N'<p>Good</p>
        ', N'8d85aa163ff1169916a35fc6a03056e2.jpg', 1, CAST(0x0000A6F800A9C680 AS DateTime), 35, N'shop2', 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (70, N'Monitor 3', CAST(7 AS Decimal(10, 0)), 8, N'<p>Good</p>
        ', N'033a23cbdc08ba862e26cbc59f6ec302.jpg', 1, CAST(0x0000A6F800A95150 AS DateTime), 35, N'shop3', 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (71, N'Monitor 4', CAST(2 AS Decimal(10, 0)), 5, N'<p>Good</p>
        ', N'015027ae3aae7c705b04492bc8cc957d.jpg', 1, CAST(0x0000A6F800AECD38 AS DateTime), 39, N'shop3', 14)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (76, N'Product Vendor2', CAST(323 AS Decimal(10, 0)), 32, N'<p>&aacute;dsad</p>
', N'0c6a6b365270f334a55774629f28d2f6.jpg', 1, CAST(0x0000A6F800AED698 AS DateTime), 39, N'shop2', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (102, N'tin 144', CAST(32432 AS Decimal(10, 0)), 423432, N'<p>sdfsf</p>
       ', N'99946d17283494aefc08c79b6fd2f52a.png', 1, CAST(0x0000A6F800A90E84 AS DateTime), 39, N'shop2', 22)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (103, N'Product 1 - Shop 1', CAST(111 AS Decimal(10, 0)), 2, N'<p>aa</p>
          ', N'e6578b7aa4aa55e2393b4b2fe4f40975.jpg', 1, CAST(0x0000A6F2004A9FE8 AS DateTime), 60, N'shop1', 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (104, N'Product 2 - Shop 1', CAST(55 AS Decimal(10, 0)), 2, N'<p>ggg</p>
         ', N'244b5c8469c8aa546e1cdad41e4f66bd.jpg', 1, CAST(0x0000A6F9007D8980 AS DateTime), 60, N'shop1', 23)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (105, N'Handmade 1', CAST(2 AS Decimal(10, 0)), 4, N'<p>Good</p>
        ', N'5ea84fe8cd0bd26f0668a450fc0bb2b2.jpg', 1, CAST(0x0000A6F900AF0B54 AS DateTime), 62, N'shop10', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (106, N'Handmade 2', CAST(5 AS Decimal(10, 0)), 4, N'<p>Good</p>
        ', N'0ecb53ddbc227ebddb3626afde481678.jpg', 1, CAST(0x0000A6F901811478 AS DateTime), 62, N'shop10', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Photo], [Active], [CreationDate], [CategoryId], [Customer], [Views]) VALUES (107, N'Handmade 3', CAST(6 AS Decimal(10, 0)), 2, N'<p>Good</p>
        ', N'bb66cb690d1af2e74edc54d81d75aa5b.jpg', 1, CAST(0x0000A6F900AFD610 AS DateTime), 66, N'shop10', 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[ProductsAttributes] ([ProductId], [AttributeId]) VALUES (102, 10)
INSERT [dbo].[ProductsAttributes] ([ProductId], [AttributeId]) VALUES (102, 10)
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Employee')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Customer')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (4, N'Vendor')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Setting] ON 

INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (1, N'websiteName', N'OctopusCode - Search Everythin                             ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (3, N'highlight', N'true                                                       ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (4, N'autoCompleteTooltip', N'true                                                       ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (6, N'rowsPerAutoComplete', N'3                                                          ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (7, N'rowsPerResultPage', N'5                                                          ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (8, N'tableSearch', N'oacs_mobiles                                               ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (9, N'columnsSearch', N'name                                                       ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (10, N'columnsDisplay', N'id,name,price,description,phot                             ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (13, N'resultLayout', N'<div class=''col-log-4 col-md-4                             ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (14, N'resultDetailLayout', N'<div style=''width: 100%''>
	<i                             ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (15, N'autoCompleteResultLayout', N'<div style=''width: 100%; heigh                             ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (19, N'autoCompleteTooltipLayout', N'<div style="width: 100% !impor                             ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (20, N'searchDirection', N'contains                                                   ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (23, N'tuoitre9x123456789-facilitator@gmail.com', N'fz3ZJ9Oc3-F6ulVigGusQbH7Ek1CMv                             ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (24, N'latest_product', N'9                                                          ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (25, N'best_seller', N'9                                                          ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (26, N'lastestvendor', N'5                                                          ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (27, N'newsproduct', N'9                                                          ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (28, N'viewsproduct', N'9                                                          ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (29, N'business', N'kevin-facilitator@findingsoftware.com                      ', 0)
INSERT [dbo].[Setting] ([Id], [Key], [Value], [Choose]) VALUES (30, N'authtoken', N'KED1sFNSDIkYeT7I_TUvduhGxw4kTOdesxQBdPy-13REDRf07w3InreHw0y', 0)
SET IDENTITY_INSERT [dbo].[Setting] OFF
SET IDENTITY_INSERT [dbo].[Social] ON 

INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (1, N'facebook', N'https://www.facebook.com/phan.h.tri?fref=ts', N'shop1')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (4, N'google', N'', N'shop1')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (7, N'linkedIn', N'', N'shop1')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (10, N'facebook', N'https://www.facebook.com/ta.tin.9275', N'shop2')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (11, N'google', N'https://plus.google.com/u/0/110394845880496862895', N'shop2')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (12, N'linkedIn', N'', N'shop2')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (13, N'twitter', N'', N'shop2')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (14, N'twitter', N'', N'shop1')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (15, N'facebook', N'', N'shop3')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (16, N'google', N'', N'shop3')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (17, N'twitter', N'', N'shop3')
INSERT [dbo].[Social] ([Id], [Key], [Value], [Vendor]) VALUES (18, N'linkedIn', N'', N'shop3')
SET IDENTITY_INSERT [dbo].[Social] OFF
/****** Object:  Index [attributes_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Attributes] ADD  CONSTRAINT [attributes_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [category_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [category_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [countries_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [countries_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [currency_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Currency] ADD  CONSTRAINT [currency_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [customer_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [customer_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [employee_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [employee_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [message_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [message_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ordersdetail_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [ordersdetail_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [orders_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [orders_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [payment_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [payment_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [product_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [product_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [role_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [role_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [setting_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Setting] ADD  CONSTRAINT [setting_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [social_PRIMARY]    Script Date: 2017/03/03 11:35:48 PM ******/
ALTER TABLE [dbo].[Social] ADD  CONSTRAINT [social_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ('') FOR [CountryCode]
GO
ALTER TABLE [dbo].[Message] ADD  DEFAULT (CONVERT([datetime],getdate(),(121))) FOR [DatePost]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (CONVERT([datetime],getdate(),(121))) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Attributes]  WITH NOCHECK ADD  CONSTRAINT [attributes_ibfk_1] FOREIGN KEY([customer])
REFERENCES [dbo].[Customer] ([Username])
GO
ALTER TABLE [dbo].[Attributes] NOCHECK CONSTRAINT [attributes_ibfk_1]
GO
ALTER TABLE [dbo].[Category]  WITH NOCHECK ADD  CONSTRAINT [category_ibfk_1] FOREIGN KEY([Customer])
REFERENCES [dbo].[Customer] ([Username])
GO
ALTER TABLE [dbo].[Category] NOCHECK CONSTRAINT [category_ibfk_1]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [customer_ibfk_1] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Customer] NOCHECK CONSTRAINT [customer_ibfk_1]
GO
ALTER TABLE [dbo].[Message]  WITH NOCHECK ADD  CONSTRAINT [message_ibfk_1] FOREIGN KEY([Vendor])
REFERENCES [dbo].[Customer] ([Username])
GO
ALTER TABLE [dbo].[Message] NOCHECK CONSTRAINT [message_ibfk_1]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [ordersdetail_ibfk_1] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] NOCHECK CONSTRAINT [ordersdetail_ibfk_1]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [ordersdetail_ibfk_2] FOREIGN KEY([Id])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] NOCHECK CONSTRAINT [ordersdetail_ibfk_2]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [product_ibfk_1] FOREIGN KEY([Customer])
REFERENCES [dbo].[Customer] ([Username])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [product_ibfk_1]
GO
ALTER TABLE [dbo].[ProductsAttributes]  WITH NOCHECK ADD  CONSTRAINT [products_attributes_ibfk_1] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductsAttributes] NOCHECK CONSTRAINT [products_attributes_ibfk_1]
GO
ALTER TABLE [dbo].[ProductsAttributes]  WITH NOCHECK ADD  CONSTRAINT [products_attributes_ibfk_2] FOREIGN KEY([AttributeId])
REFERENCES [dbo].[Attributes] ([id])
GO
ALTER TABLE [dbo].[ProductsAttributes] NOCHECK CONSTRAINT [products_attributes_ibfk_2]
GO
ALTER TABLE [dbo].[Social]  WITH NOCHECK ADD  CONSTRAINT [social_ibfk_1] FOREIGN KEY([Vendor])
REFERENCES [dbo].[Customer] ([Username])
GO
ALTER TABLE [dbo].[Social] NOCHECK CONSTRAINT [social_ibfk_1]
GO
