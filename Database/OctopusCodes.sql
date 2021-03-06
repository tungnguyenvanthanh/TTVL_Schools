USE [OctopusCodes]
GO
/****** Object:  Table [dbo].[ocmv_attributes]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_attributes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [varchar](50) NOT NULL,
	[value] [varchar](50) NOT NULL,
	[customer] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_category]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NOT NULL,
	[parent_id] [int] NOT NULL,
	[customer] [varchar](30) NULL,
	[status] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_countries]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_countries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_code] [varchar](2) NOT NULL,
	[name] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_currency]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_currency](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [varchar](30) NOT NULL,
	[value] [varchar](30) NOT NULL,
	[locale] [varchar](30) NOT NULL,
	[active] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_customer]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_customer](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](200) NOT NULL,
	[roleId] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[fullName] [varchar](50) NOT NULL,
	[shopname] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[street] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](30) NULL,
	[image] [varchar](50) NOT NULL,
	[creationdate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_employee]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_employee](
	[username] [varchar](250) NOT NULL,
	[password] [varchar](250) NOT NULL,
	[fullName] [varchar](250) NOT NULL,
	[roleId] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_message]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](30) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[phone] [varchar](30) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[datepost] [datetime] NOT NULL,
	[read] [smallint] NOT NULL,
	[vendor] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_orders]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[price] [real] NULL,
	[creationdate] [datetime] NULL,
	[status] [smallint] NULL,
	[employee] [varchar](50) NULL,
	[customer] [varchar](50) NULL,
	[paymentId] [int] NULL,
	[fullName] [varchar](50) NOT NULL,
	[email] [varchar](250) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[country] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[street] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_ordersdetail]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ocmv_ordersdetail](
	[orderId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[price] [real] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ocmv_payment]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_product]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NOT NULL,
	[price] [decimal](10, 0) NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [ntext] NOT NULL,
	[photo] [varchar](250) NOT NULL,
	[active] [smallint] NOT NULL,
	[creationdate] [datetime] NOT NULL,
	[categoryId] [int] NOT NULL,
	[customer] [varchar](30) NULL,
	[views] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_products_attributes]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ocmv_products_attributes](
	[productId] [int] NOT NULL,
	[attributesId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ocmv_role]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_setting]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_setting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [varchar](100) NOT NULL,
	[value] [ntext] NOT NULL,
	[choose] [smallint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ocmv_social]    Script Date: 2017/02/10 1:36:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ocmv_social](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [varchar](50) NOT NULL,
	[value] [varchar](50) NOT NULL,
	[vendor] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ocmv_attributes] ON 

INSERT [dbo].[ocmv_attributes] ([id], [key], [value], [customer]) VALUES (6, N'Color', N'XAnh', N'shop1')
INSERT [dbo].[ocmv_attributes] ([id], [key], [value], [customer]) VALUES (8, N'Size', N'M | L| XL', N'shop1')
INSERT [dbo].[ocmv_attributes] ([id], [key], [value], [customer]) VALUES (10, N'Màu s?c', N'Ð? | Vàng', N'shop1')
INSERT [dbo].[ocmv_attributes] ([id], [key], [value], [customer]) VALUES (11, N'color', N'red', N'shop1')
INSERT [dbo].[ocmv_attributes] ([id], [key], [value], [customer]) VALUES (12, N'color', N'red', N'shop10')
SET IDENTITY_INSERT [dbo].[ocmv_attributes] OFF
SET IDENTITY_INSERT [dbo].[ocmv_category] ON 

INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (1, N'Books & Audible', 0, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (20, N'Books', 1, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (21, N'Children''s Books', 1, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (22, N'Magazines', 1, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (23, N'Movies, Music & Games', 0, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (24, N'Movies & TV', 23, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (25, N'Blu-ray', 23, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (26, N'Headphones', 23, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (27, N'PC Gaming', 23, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (28, N'Electronics', 0, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (31, N'Cell Phones & Accessories', 28, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (32, N'Headphones', 28, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (33, N'Computers', 0, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (34, N'Computers & Tablets', 33, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (35, N'Monitors', 33, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (36, N'Networking', 33, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (37, N'CateVendor', 0, N'shop1', 1)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (39, N'CateVendor 1.12', 37, N'shop1', 1)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (58, N'shop1', 0, N'shop1', 1)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (59, N'Category 1 - Shop 1', 0, N'shop1', 1)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (60, N'Category 1.1 - Shop 1', 59, N'shop1', 1)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (61, N'Handmade', 0, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (62, N'Jewelry', 61, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (63, N'Artwork', 61, NULL, 0)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (64, N'Artwork', 0, N'shop10', 1)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (65, N'Toys & Games', 0, N'shop10', 1)
INSERT [dbo].[ocmv_category] ([id], [name], [parent_id], [customer], [status]) VALUES (66, N'Artwork 1', 64, N'shop10', 1)
SET IDENTITY_INSERT [dbo].[ocmv_category] OFF
SET IDENTITY_INSERT [dbo].[ocmv_countries] ON 

INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (1, N'AF', N'Afghanistan')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (2, N'AF', N'Afghanistan')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (3, N'AL', N'Albania')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (4, N'DZ', N'Algeria')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (5, N'DS', N'American Samoa')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (6, N'AD', N'Andorra')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (7, N'AO', N'Angola')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (8, N'AI', N'Anguilla')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (9, N'AQ', N'Antarctica')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (10, N'AG', N'Antigua and Barbuda')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (11, N'AR', N'Argentina')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (12, N'AM', N'Armenia')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (13, N'AW', N'Aruba')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (14, N'AU', N'Australia')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (15, N'AT', N'Austria')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (16, N'AZ', N'Azerbaijan')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (17, N'BS', N'Bahamas')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (18, N'BH', N'Bahrain')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (19, N'BD', N'Bangladesh')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (20, N'BB', N'Barbados')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (21, N'BY', N'Belarus')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (22, N'BE', N'Belgium')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (23, N'BZ', N'Belize')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (24, N'BJ', N'Benin')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (25, N'BM', N'Bermuda')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (26, N'BT', N'Bhutan')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (27, N'BO', N'Bolivia')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (28, N'BA', N'Bosnia and Herzegovina')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (29, N'BW', N'Botswana')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (30, N'BV', N'Bouvet Island')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (31, N'BR', N'Brazil')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (32, N'IO', N'British Indian Ocean Territory')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (33, N'BN', N'Brunei Darussalam')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (34, N'BG', N'Bulgaria')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (35, N'BF', N'Burkina Faso')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (36, N'BI', N'Burundi')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (37, N'KH', N'Cambodia')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (38, N'CM', N'Cameroon')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (39, N'CA', N'Canada')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (40, N'CV', N'Cape Verde')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (41, N'KY', N'Cayman Islands')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (42, N'CF', N'Central African Republic')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (43, N'TD', N'Chad')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (44, N'CL', N'Chile')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (45, N'CN', N'China')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (46, N'CX', N'Christmas Island')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (47, N'CC', N'Cocos (Keeling) Islands')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (48, N'CO', N'Colombia')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (49, N'KM', N'Comoros')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (50, N'CG', N'Congo')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (51, N'CK', N'Cook Islands')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (52, N'41', N'34-TRIAL-Costa Rica 100')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (53, N'26', N'78-TRIAL-Croatia (Hrvatska) 258')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (54, N'26', N'5-TRIAL-Cuba 245')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (55, N'18', N'61-TRIAL-Cyprus 191')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (56, N'29', N'27-TRIAL-Czech Republic 36')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (57, N'29', N'2-TRIAL-Denmark 153')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (58, N'29', N'21-TRIAL-Djibouti 116')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (59, N'21', N'47-TRIAL-Dominica 126')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (60, N'71', N'69-TRIAL-Dominican Republic 112')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (61, N'16', N'235-TRIAL-East Timor 294')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (62, N'20', N'122-TRIAL-Ecuador 33')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (63, N'27', N'141-TRIAL-Egypt 211')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (64, N'53', N'47-TRIAL-El Salvador 44')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (65, N'26', N'237-TRIAL-Equatorial Guinea 259')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (66, N'23', N'229-TRIAL-Eritrea 178')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (67, N'16', N'290-TRIAL-Estonia 42')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (68, N'28', N'40-TRIAL-Ethiopia 242')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (69, N'64', N'146-TRIAL-Falkland Islands (Malvinas) 105')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (70, N'29', N'70-TRIAL-Faroe Islands 50')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (71, N'6-', N'93-TRIAL-Fiji 248')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (72, N'12', N'84-TRIAL-Finland 154')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (73, N'15', N'166-TRIAL-France 176')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (74, N'13', N'144-TRIAL-France, Metropolitan 39')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (75, N'26', N'137-TRIAL-French Guiana 238')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (76, N'21', N'129-TRIAL-French Polynesia 41')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (77, N'33', N'139-TRIAL-French Southern Territories 258')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (78, N'20', N'177-TRIAL-Gabon 206')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (79, N'17', N'221-TRIAL-Gambia 245')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (80, N'22', N'270-TRIAL-Georgia 129')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (81, N'77', N'297-TRIAL-Germany 12')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (82, N'28', N'161-TRIAL-Ghana 36')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (83, N'15', N'255-TRIAL-Gibraltar 274')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (84, N'13', N'50-TRIAL-Guernsey 250')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (85, N'14', N'166-TRIAL-Greece 130')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (86, N'20', N'7-TRIAL-Greenland 237')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (87, N'15', N'153-TRIAL-Grenada 183')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (88, N'24', N'109-TRIAL-Guadeloupe 158')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (89, N'22', N'122-TRIAL-Guam 46')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (90, N'20', N'213-TRIAL-Guatemala 68')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (91, N'0-', N'162-TRIAL-Guinea 155')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (92, N'10', N'24-TRIAL-Guinea-Bissau 137')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (93, N'24', N'295-TRIAL-Guyana 141')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (94, N'2-', N'91-TRIAL-Haiti 236')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (95, N'74', N'96-TRIAL-Heard and Mc Donald Islands 21')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (96, N'48', N'168-TRIAL-Honduras 184')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (97, N'18', N'53-TRIAL-Hong Kong 199')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (98, N'18', N'0-TRIAL-Hungary 188')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (99, N'12', N'128-TRIAL-Iceland 193')
GO
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (100, N'48', N'107-TRIAL-India 21')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (101, N'21', N'13-TRIAL-Isle of Man 214')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (102, N'20', N'35-TRIAL-Indonesia 51')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (103, N'20', N'19-TRIAL-Iran (Islamic Republic of) 56')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (104, N'29', N'224-TRIAL-Iraq 208')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (105, N'14', N'289-TRIAL-Ireland 2')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (106, N'19', N'93-TRIAL-Israel 243')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (107, N'22', N'214-TRIAL-Italy 203')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (108, N'24', N'258-TRIAL-Ivory Coast 18')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (109, N'18', N'98-TRIAL-Jersey 281')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (110, N'89', N'109-TRIAL-Jamaica 157')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (111, N'72', N'238-TRIAL-Japan 292')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (112, N'38', N'190-TRIAL-Jordan 257')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (113, N'15', N'15-TRIAL-Kazakhstan 88')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (114, N'25', N'2-TRIAL-Kenya 234')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (115, N'27', N'228-TRIAL-Kiribati 146')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (116, N'26', N'275-TRIAL-Korea, Democratic People''s Republic of 233')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (117, N'16', N'144-TRIAL-Korea, Republic of 216')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (118, N'28', N'122-TRIAL-Kosovo 51')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (119, N'12', N'257-TRIAL-Kuwait 276')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (120, N'29', N'275-TRIAL-Kyrgyzstan 212')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (121, N'20', N'3-TRIAL-Lao People''s Democratic Republic 169')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (122, N'16', N'201-TRIAL-Latvia 189')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (123, N'25', N'202-TRIAL-Lebanon 85')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (124, N'18', N'88-TRIAL-Lesotho 226')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (125, N'11', N'232-TRIAL-Liberia 32')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (126, N'26', N'221-TRIAL-Libyan Arab Jamahiriya 89')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (127, N'17', N'268-TRIAL-Liechtenstein 192')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (128, N'12', N'134-TRIAL-Lithuania 49')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (129, N'24', N'145-TRIAL-Luxembourg 60')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (130, N'11', N'239-TRIAL-Macau 123')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (131, N'79', N'187-TRIAL-Macedonia 229')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (132, N'49', N'66-TRIAL-Madagascar 49')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (133, N'19', N'297-TRIAL-Malawi 16')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (134, N'86', N'188-TRIAL-Malaysia 82')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (135, N'15', N'114-TRIAL-Maldives 1')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (136, N'11', N'86-TRIAL-Mali 263')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (137, N'11', N'285-TRIAL-Malta 253')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (138, N'12', N'32-TRIAL-Marshall Islands 245')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (139, N'11', N'121-TRIAL-Martinique 58')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (140, N'24', N'181-TRIAL-Mauritania 244')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (141, N'96', N'229-TRIAL-Mauritius 61')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (142, N'13', N'73-TRIAL-Mayotte 266')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (143, N'44', N'192-TRIAL-Mexico 39')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (144, N'15', N'54-TRIAL-Micronesia, Federated States of 110')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (145, N'24', N'286-TRIAL-Moldova, Republic of 213')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (146, N'27', N'68-TRIAL-Monaco 218')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (147, N'18', N'258-TRIAL-Mongolia 191')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (148, N'2-', N'77-TRIAL-Montenegro 214')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (149, N'14', N'234-TRIAL-Montserrat 74')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (150, N'72', N'133-TRIAL-Morocco 170')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (151, N'28', N'18-TRIAL-Mozambique 77')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (152, N'73', N'263-TRIAL-Myanmar 268')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (153, N'92', N'102-TRIAL-Namibia 80')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (154, N'11', N'2-TRIAL-Nauru 199')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (155, N'22', N'43-TRIAL-Nepal 124')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (156, N'22', N'161-TRIAL-Netherlands 81')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (157, N'10', N'105-TRIAL-Netherlands Antilles 293')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (158, N'22', N'92-TRIAL-New Caledonia 142')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (159, N'12', N'164-TRIAL-New Zealand 100')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (160, N'28', N'213-TRIAL-Nicaragua 74')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (161, N'17', N'235-TRIAL-Niger 233')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (162, N'21', N'296-TRIAL-Nigeria 167')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (163, N'85', N'140-TRIAL-Niue 194')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (164, N'29', N'119-TRIAL-Norfolk Island 25')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (165, N'17', N'158-TRIAL-Northern Mariana Islands 202')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (166, N'27', N'178-TRIAL-Norway 93')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (167, N'15', N'118-TRIAL-Oman 264')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (168, N'11', N'100-TRIAL-Pakistan 87')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (169, N'16', N'10-TRIAL-Palau 257')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (170, N'70', N'276-TRIAL-Palestine 227')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (171, N'43', N'264-TRIAL-Panama 9')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (172, N'82', N'165-TRIAL-Papua New Guinea 187')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (173, N'17', N'225-TRIAL-Paraguay 127')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (174, N'22', N'223-TRIAL-Peru 20')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (175, N'2-', N'123-TRIAL-Philippines 296')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (176, N'13', N'295-TRIAL-Pitcairn 125')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (177, N'64', N'202-TRIAL-Poland 16')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (178, N'23', N'211-TRIAL-Portugal 171')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (179, N'11', N'153-TRIAL-Puerto Rico 220')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (180, N'90', N'188-TRIAL-Qatar 163')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (181, N'14', N'62-TRIAL-Reunion 29')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (182, N'0-', N'58-TRIAL-Romania 178')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (183, N'26', N'77-TRIAL-Russian Federation 0')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (184, N'25', N'203-TRIAL-Rwanda 160')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (185, N'15', N'177-TRIAL-Saint Kitts and Nevis 8')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (186, N'11', N'1-TRIAL-Saint Lucia 50')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (187, N'60', N'93-TRIAL-Saint Vincent and the Grenadines 84')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (188, N'20', N'211-TRIAL-Samoa 204')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (189, N'23', N'72-TRIAL-San Marino 250')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (190, N'22', N'156-TRIAL-Sao Tome and Principe 116')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (191, N'12', N'126-TRIAL-Saudi Arabia 157')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (192, N'23', N'169-TRIAL-Senegal 261')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (193, N'29', N'217-TRIAL-Serbia 212')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (194, N'11', N'185-TRIAL-Seychelles 41')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (195, N'12', N'229-TRIAL-Sierra Leone 65')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (196, N'25', N'96-TRIAL-Singapore 155')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (197, N'53', N'284-TRIAL-Slovakia 34')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (198, N'54', N'157-TRIAL-Slovenia 269')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (199, N'32', N'207-TRIAL-Solomon Islands 83')
GO
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (200, N'11', N'167-TRIAL-Somalia 48')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (201, N'17', N'123-TRIAL-South Africa 242')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (202, N'54', N'241-TRIAL-South Georgia South Sandwich Islands 75')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (203, N'15', N'221-TRIAL-Spain 170')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (204, N'12', N'205-TRIAL-Sri Lanka 283')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (205, N'15', N'79-TRIAL-St. Helena 201')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (206, N'19', N'137-TRIAL-St. Pierre and Miquelon 134')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (207, N'15', N'276-TRIAL-Sudan 205')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (208, N'62', N'281-TRIAL-Suriname 0')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (209, N'13', N'55-TRIAL-Svalbard and Jan Mayen Islands 255')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (210, N'24', N'11-TRIAL-Swaziland 277')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (211, N'24', N'252-TRIAL-Sweden 143')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (212, N'96', N'140-TRIAL-Switzerland 13')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (213, N'27', N'218-TRIAL-Syrian Arab Republic 10')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (214, N'11', N'212-TRIAL-Taiwan 95')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (215, N'26', N'240-TRIAL-Tajikistan 88')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (216, N'18', N'297-TRIAL-Tanzania, United Republic of 189')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (217, N'19', N'153-TRIAL-Thailand 114')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (218, N'51', N'144-TRIAL-Togo 158')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (219, N'35', N'92-TRIAL-Tokelau 105')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (220, N'64', N'3-TRIAL-Tonga 229')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (221, N'75', N'192-TRIAL-Trinidad and Tobago 297')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (222, N'14', N'61-TRIAL-Tunisia 127')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (223, N'16', N'29-TRIAL-Turkey 40')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (224, N'21', N'201-TRIAL-Turkmenistan 77')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (225, N'11', N'113-TRIAL-Turks and Caicos Islands 292')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (226, N'24', N'292-TRIAL-Tuvalu 159')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (227, N'27', N'127-TRIAL-Uganda 184')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (228, N'17', N'198-TRIAL-Ukraine 70')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (229, N'28', N'204-TRIAL-United Arab Emirates 203')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (230, N'22', N'6-TRIAL-United Kingdom 263')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (231, N'10', N'189-TRIAL-United States 240')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (232, N'16', N'119-TRIAL-United States minor outlying islands 213')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (233, N'91', N'18-TRIAL-Uruguay 232')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (234, N'15', N'175-TRIAL-Uzbekistan 39')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (235, N'3-', N'98-TRIAL-Vanuatu 147')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (236, N'84', N'271-TRIAL-Vatican City State 164')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (237, N'11', N'245-TRIAL-Venezuela 212')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (238, N'14', N'269-TRIAL-Vietnam 262')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (239, N'11', N'89-TRIAL-Virgin Islands (British) 44')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (240, N'16', N'145-TRIAL-Virgin Islands (U.S.) 8')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (241, N'11', N'1-TRIAL-Wallis and Futuna Islands 123')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (242, N'13', N'152-TRIAL-Western Sahara 187')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (243, N'70', N'201-TRIAL-Yemen 3')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (244, N'23', N'200-TRIAL-Zaire 269')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (245, N'21', N'28-TRIAL-Zambia 243')
INSERT [dbo].[ocmv_countries] ([id], [country_code], [name]) VALUES (246, N'14', N'243-TRIAL-Zimbabwe 37')
SET IDENTITY_INSERT [dbo].[ocmv_countries] OFF
SET IDENTITY_INSERT [dbo].[ocmv_currency] ON 

INSERT [dbo].[ocmv_currency] ([id], [key], [value], [locale], [active]) VALUES (1, N'USA', N'$', N'en_US', 1)
INSERT [dbo].[ocmv_currency] ([id], [key], [value], [locale], [active]) VALUES (2, N'Italia', N'Eu', N'it_IT', 0)
INSERT [dbo].[ocmv_currency] ([id], [key], [value], [locale], [active]) VALUES (6, N'India', N'', N'hi_IN', 0)
INSERT [dbo].[ocmv_currency] ([id], [key], [value], [locale], [active]) VALUES (7, N'VietNam', N'Ð', N'vi_VN', 0)
INSERT [dbo].[ocmv_currency] ([id], [key], [value], [locale], [active]) VALUES (8, N'France', N'€', N'fr_FR', 0)
INSERT [dbo].[ocmv_currency] ([id], [key], [value], [locale], [active]) VALUES (9, N'German', N'', N'de_DE', 0)
INSERT [dbo].[ocmv_currency] ([id], [key], [value], [locale], [active]) VALUES (10, N'Brazil', N'', N'pt_BR', 0)
INSERT [dbo].[ocmv_currency] ([id], [key], [value], [locale], [active]) VALUES (11, N'Spain', N'', N'es_ES', 0)
SET IDENTITY_INSERT [dbo].[ocmv_currency] OFF
INSERT [dbo].[ocmv_employee] ([username], [password], [fullName], [roleId]) VALUES (N'admin', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'Administrator', 1)
INSERT [dbo].[ocmv_employee] ([username], [password], [fullName], [roleId]) VALUES (N'emp01', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'Employee 1', 1)
INSERT [dbo].[ocmv_employee] ([username], [password], [fullName], [roleId]) VALUES (N'emp02', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'Employee 2', 2)
INSERT [dbo].[ocmv_employee] ([username], [password], [fullName], [roleId]) VALUES (N'emp03', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'Employee 3', 2)
INSERT [dbo].[ocmv_employee] ([username], [password], [fullName], [roleId]) VALUES (N'emp04', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'Employee 4', 2)
SET IDENTITY_INSERT [dbo].[ocmv_message] ON 

INSERT [dbo].[ocmv_message] ([id], [title], [description], [phone], [email], [datepost], [read], [vendor]) VALUES (5, N'Title 1', N'Description 1', N'123456', N'customer1@gmail.com', CAST(0x0000A6F9001487DC AS DateTime), 1, N'shop1')
INSERT [dbo].[ocmv_message] ([id], [title], [description], [phone], [email], [datepost], [read], [vendor]) VALUES (6, N'Title 2', N'Description 2', N'123456', N'customer2@gmail.com', CAST(0x0000A6F900368E68 AS DateTime), 1, N'shop1')
INSERT [dbo].[ocmv_message] ([id], [title], [description], [phone], [email], [datepost], [read], [vendor]) VALUES (7, N'Title 1', N'Description 1', N'123456', N'aaa@yahoo.com', CAST(0x0000A6F900B19CC0 AS DateTime), 1, N'shop10')
SET IDENTITY_INSERT [dbo].[ocmv_message] OFF
SET IDENTITY_INSERT [dbo].[ocmv_orders] ON 

INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (395, N'Purchase Order', 2, CAST(0x0000A6F800B4D818 AS DateTime), 0, NULL, N'customer1', 6, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (396, N'Purchase Order', 10, CAST(0x0000A6F800C55D64 AS DateTime), 0, NULL, N'customer1', 7, N'Customer 1', N'customer1@gmail.com', N'123456', N'Tajikistan', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (397, N'Purchase Order', 14, CAST(0x0000A6F900778A58 AS DateTime), 0, NULL, N'customer1', 6, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (398, N'Purchase Order', 10, CAST(0x0000A6F90078B658 AS DateTime), 0, NULL, N'shop1', 6, N'David', N'shop1@gmail.com', N'1234567821212', N'United States', N'Chicago', N'123 Street')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (399, N'Purchase Order', 8, CAST(0x0000A6F90090C360 AS DateTime), 0, NULL, N'shop1', 4, N'David', N'shop1@gmail.com', N'1234567821212', N'United States', N'Chicago', N'123 Street')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (400, N'Purchase Order', 31, CAST(0x0000A6F900A5E5EC AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (401, N'Purchase Order', 16, CAST(0x0000A6F900A69488 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (402, N'Purchase Order', 31, CAST(0x0000A6F900A7C088 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (403, N'Purchase Order', 4, CAST(0x0000A6F900A92F54 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (404, N'Purchase Order', 4, CAST(0x0000A6F900AA2FF8 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (405, N'Purchase Order', 6, CAST(0x0000A6F900AA80D4 AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (406, N'Purchase Order', 31, CAST(0x0000A6F900AADC3C AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (407, N'Purchase Order', 19, CAST(0x0000A6F900B05F2C AS DateTime), 0, NULL, N'customer2', 4, N'Customer 2', N'customer2@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
INSERT [dbo].[ocmv_orders] ([id], [name], [price], [creationdate], [status], [employee], [customer], [paymentId], [fullName], [email], [phone], [country], [city], [street]) VALUES (408, N'Purchase Order', 46, CAST(0x0000A6FA0016D67C AS DateTime), 0, NULL, N'customer1', 4, N'Customer 1', N'customer1@gmail.com', N'123456', N'United States', N'Chicago', N'Street 2')
SET IDENTITY_INSERT [dbo].[ocmv_orders] OFF
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (395, 52, 2, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (396, 52, 2, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (396, 53, 8, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (397, 52, 2, 3)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (397, 53, 8, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (398, 52, 2, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (398, 53, 8, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (399, 53, 8, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (400, 51, 6, 2)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (400, 54, 6, 2)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (400, 70, 7, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (401, 53, 8, 2)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (402, 51, 6, 2)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (402, 54, 6, 2)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (402, 70, 7, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (403, 52, 2, 2)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (404, 52, 2, 2)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (405, 52, 2, 3)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (406, 51, 6, 2)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (406, 54, 6, 2)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (406, 70, 7, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (407, 51, 6, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (407, 70, 7, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (407, 107, 6, 1)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (408, 51, 6, 4)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (408, 54, 6, 3)
INSERT [dbo].[ocmv_ordersdetail] ([orderId], [productId], [price], [quantity]) VALUES (408, 57, 2, 2)
SET IDENTITY_INSERT [dbo].[ocmv_payment] ON 

INSERT [dbo].[ocmv_payment] ([id], [name]) VALUES (4, N'Paypal')
INSERT [dbo].[ocmv_payment] ([id], [name]) VALUES (6, N'ATM')
INSERT [dbo].[ocmv_payment] ([id], [name]) VALUES (7, N'Cash')
SET IDENTITY_INSERT [dbo].[ocmv_payment] OFF
SET IDENTITY_INSERT [dbo].[ocmv_product] ON 

INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (51, N'Ipad Pro', CAST(6 AS Decimal(10, 0)), 8, N'<p>good</p>
        ', N'e0b41feaf083ddda09e439b3a7e20c04.png', 1, CAST(0x0000A6FA0044B128 AS DateTime), 31, N'shop1', 164)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (52, N'IPhone 1', CAST(2 AS Decimal(10, 0)), 1, N'<p>good</p>
        ', N'e8e5e1416f085eecf36cb2354e0ba710.png', 1, CAST(0x0000A6FA00416568 AS DateTime), 31, N'shop1', 44)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (53, N'IPhone 2', CAST(8 AS Decimal(10, 0)), 2, N'<p>good</p>
        ', N'c4277f7d3148c64a1b60adefcd3f81f0.png', 1, CAST(0x0000A6F9007D814C AS DateTime), 31, N'shop1', 50)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (54, N'Nokia Lumia 930', CAST(6 AS Decimal(10, 0)), 8, N'<p>good</p>
        ', N'dc17f5567e6772f9b0e787be10805155.jpg', 1, CAST(0x0000A6F800A9ADE4 AS DateTime), 31, N'shop4', 21)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (55, N'Nokia Lumia 929', CAST(5 AS Decimal(10, 0)), 44, N'<p>good</p>
        ', N'97c37fbd0543a010007f2a10dbdf1226.jpg', 1, CAST(0x0000A6F800A9B870 AS DateTime), 31, N'shop1', 12)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (56, N'Nokia X2 Dual SIM', CAST(4 AS Decimal(10, 0)), 44, N'<p>good</p>
        ', N'bbb54d208de33f635eecfbb1b7e7ff4e.jpg', 1, CAST(0x0000A6F800AA3E08 AS DateTime), 31, N'shop1', 15)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (57, N'Nokia XL', CAST(2 AS Decimal(10, 0)), 2, N'<p>good</p>
        ', N'52eaa13a23f5232b96a1bf6d11d52137.jpg', 1, CAST(0x0000A6FA0044B704 AS DateTime), 31, N'shop2', 62)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (58, N'Samsung Galaxy A9 2016', CAST(7 AS Decimal(10, 0)), 7, N'<p>good</p>
        ', N'c7be8d3a057ad75c7163736da465e564.jpg', 1, CAST(0x0000A6F9009E1DBC AS DateTime), 31, N'shop1', 9)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (59, N'Samsung Galaxy C5R3', CAST(2 AS Decimal(10, 0)), 66, N'<p>good</p>
        ', N'84148f40e9ae86a44ff04a91059caaaf.jpg', 1, CAST(0x0000A6F800AA2DA0 AS DateTime), 31, N'shop4', 4)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (60, N'Samsung Galaxy J7-2016', CAST(3 AS Decimal(10, 0)), 8, N'<p>good</p>
        ', N'89276c7e27ed0260e5ad98dcbeabe774.jpg', 1, CAST(0x0000A6F800AA0F28 AS DateTime), 31, N'shop2', 3)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (61, N'Book 1', CAST(2 AS Decimal(10, 0)), 2, N'<p>Good</p>
        ', N'a74aa4e56da2a87ea7c770a651560e1b.jpg', 1, CAST(0x0000A6F9009BAAC8 AS DateTime), 20, N'shop1', 21)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (62, N'Book 1', CAST(6 AS Decimal(10, 0)), 12, N'<p>Good</p>
        ', N'5c4048e12b0f32e610f1f9a9df0f4a20.jpg', 1, CAST(0x0000A6F800AA0370 AS DateTime), 20, N'shop4', 6)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (63, N'Book 3', CAST(4 AS Decimal(10, 0)), 6, N'<p>Good</p>
        ', N'ce1e5f2965b25ccd5cd612bfbdede753.jpg', 1, CAST(0x0000A6F800A9D238 AS DateTime), 20, N'shop1', 5)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (64, N'Book 4', CAST(3 AS Decimal(10, 0)), 33, N'<p>Good</p>
        ', N'b0977f8b74311bb13699ef62c18582e7.jpg', 1, CAST(0x0000A6F800A9F7B8 AS DateTime), 20, N'shop4', 2)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (65, N'Book 5', CAST(5 AS Decimal(10, 0)), 44, N'<p>Good</p>
        ', N'6444e7ec9330f16e627b38ca1393a8e9.jpg', 1, CAST(0x0000A6F800AC6020 AS DateTime), 20, N'shop1', 9)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (66, N'Book 6', CAST(2 AS Decimal(10, 0)), 8, N'<p>Good</p>
        ', N'f9b024017f5904aaa30b5563079568c1.jpg', 1, CAST(0x0000A6F800A9E9A8 AS DateTime), 20, N'shop3', 6)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (67, N'Book 7', CAST(4 AS Decimal(10, 0)), 4, N'<p>Good</p>
        ', N'61ae8ff60a7cb7f445315e32e7248ab6.jpg', 1, CAST(0x0000A6F800A9DDF0 AS DateTime), 20, N'shop2', 8)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (68, N'Monitor 1', CAST(9 AS Decimal(10, 0)), 2, N'<p>Good</p>
        ', N'6440bf65f82bd622dcd131bfc92310b9.jpg', 1, CAST(0x0000A6F800A95F60 AS DateTime), 35, N'shop3', 11)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (69, N'Monitor 2', CAST(8 AS Decimal(10, 0)), 6, N'<p>Good</p>
        ', N'8d85aa163ff1169916a35fc6a03056e2.jpg', 1, CAST(0x0000A6F800A9C680 AS DateTime), 35, N'shop2', 11)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (70, N'Monitor 3', CAST(7 AS Decimal(10, 0)), 8, N'<p>Good</p>
        ', N'033a23cbdc08ba862e26cbc59f6ec302.jpg', 1, CAST(0x0000A6F800A95150 AS DateTime), 35, N'shop3', 10)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (71, N'Monitor 4', CAST(2 AS Decimal(10, 0)), 5, N'<p>Good</p>
        ', N'015027ae3aae7c705b04492bc8cc957d.jpg', 1, CAST(0x0000A6F800AECD38 AS DateTime), 39, N'shop3', 14)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (76, N'Product Vendor2', CAST(323 AS Decimal(10, 0)), 32, N'<p>&aacute;dsad</p>
', N'0c6a6b365270f334a55774629f28d2f6.jpg', 1, CAST(0x0000A6F800AED698 AS DateTime), 39, N'shop2', 5)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (102, N'tin 144', CAST(32432 AS Decimal(10, 0)), 423432, N'<p>sdfsf</p>
       ', N'99946d17283494aefc08c79b6fd2f52a.png', 1, CAST(0x0000A6F800A90E84 AS DateTime), 39, N'shop2', 22)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (103, N'Product 1 - Shop 1', CAST(111 AS Decimal(10, 0)), 2, N'<p>aa</p>
          ', N'e6578b7aa4aa55e2393b4b2fe4f40975.jpg', 1, CAST(0x0000A6F2004A9FE8 AS DateTime), 60, N'shop1', 9)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (104, N'Product 2 - Shop 1', CAST(55 AS Decimal(10, 0)), 2, N'<p>ggg</p>
         ', N'244b5c8469c8aa546e1cdad41e4f66bd.jpg', 1, CAST(0x0000A6F9007D8980 AS DateTime), 60, N'shop1', 23)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (105, N'Handmade 1', CAST(2 AS Decimal(10, 0)), 4, N'<p>Good</p>
        ', N'5ea84fe8cd0bd26f0668a450fc0bb2b2.jpg', 1, CAST(0x0000A6F900AF0B54 AS DateTime), 62, N'shop10', 0)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (106, N'Handmade 2', CAST(5 AS Decimal(10, 0)), 4, N'<p>Good</p>
        ', N'0ecb53ddbc227ebddb3626afde481678.jpg', 1, CAST(0x0000A6F901811478 AS DateTime), 62, N'shop10', 1)
INSERT [dbo].[ocmv_product] ([id], [name], [price], [quantity], [description], [photo], [active], [creationdate], [categoryId], [customer], [views]) VALUES (107, N'Handmade 3', CAST(6 AS Decimal(10, 0)), 2, N'<p>Good</p>
        ', N'bb66cb690d1af2e74edc54d81d75aa5b.jpg', 1, CAST(0x0000A6F900AFD610 AS DateTime), 66, N'shop10', 0)
SET IDENTITY_INSERT [dbo].[ocmv_product] OFF
INSERT [dbo].[ocmv_products_attributes] ([productId], [attributesId]) VALUES (102, 10)
INSERT [dbo].[ocmv_products_attributes] ([productId], [attributesId]) VALUES (102, 10)
SET IDENTITY_INSERT [dbo].[ocmv_role] ON 

INSERT [dbo].[ocmv_role] ([id], [name]) VALUES (1, N'Admin')
INSERT [dbo].[ocmv_role] ([id], [name]) VALUES (2, N'Employee')
INSERT [dbo].[ocmv_role] ([id], [name]) VALUES (3, N'Customer')
INSERT [dbo].[ocmv_role] ([id], [name]) VALUES (4, N'Vendor')
SET IDENTITY_INSERT [dbo].[ocmv_role] OFF
SET IDENTITY_INSERT [dbo].[ocmv_setting] ON 

INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (1, N'websiteName', N'OctopusCode - Search Everythin                             ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (3, N'highlight', N'true                                                       ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (4, N'autoCompleteTooltip', N'true                                                       ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (6, N'rowsPerAutoComplete', N'3                                                          ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (7, N'rowsPerResultPage', N'5                                                          ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (8, N'tableSearch', N'oacs_mobiles                                               ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (9, N'columnsSearch', N'name                                                       ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (10, N'columnsDisplay', N'id,name,price,description,phot                             ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (13, N'resultLayout', N'<div class=''col-log-4 col-md-4                             ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (14, N'resultDetailLayout', N'<div style=''width: 100%''>
	<i                             ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (15, N'autoCompleteResultLayout', N'<div style=''width: 100%; heigh                             ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (19, N'autoCompleteTooltipLayout', N'<div style="width: 100% !impor                             ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (20, N'searchDirection', N'contains                                                   ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (23, N'tuoitre9x123456789-facilitator@gmail.com', N'fz3ZJ9Oc3-F6ulVigGusQbH7Ek1CMv                             ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (24, N'latest_product', N'9                                                          ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (25, N'best_seller', N'9                                                          ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (26, N'lastestvendor', N'5                                                          ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (27, N'newsproduct', N'9                                                          ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (28, N'viewsproduct', N'9                                                          ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (29, N'business', N'kevin-facilitator@findingsoftware.com                      ', 0)
INSERT [dbo].[ocmv_setting] ([id], [key], [value], [choose]) VALUES (30, N'authtoken', N'KED1sFNSDIkYeT7I_TUvduhGxw4kTOdesxQBdPy-13REDRf07w3InreHw0y', 0)
SET IDENTITY_INSERT [dbo].[ocmv_setting] OFF
SET IDENTITY_INSERT [dbo].[ocmv_social] ON 

INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (1, N'facebook', N'https://www.facebook.com/phan.h.tri?fref=ts', N'shop1')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (4, N'google', N'', N'shop1')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (7, N'linkedIn', N'', N'shop1')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (10, N'facebook', N'https://www.facebook.com/ta.tin.9275', N'shop2')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (11, N'google', N'https://plus.google.com/u/0/110394845880496862895', N'shop2')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (12, N'linkedIn', N'', N'shop2')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (13, N'twitter', N'', N'shop2')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (14, N'twitter', N'', N'shop1')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (15, N'facebook', N'', N'shop3')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (16, N'google', N'', N'shop3')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (17, N'twitter', N'', N'shop3')
INSERT [dbo].[ocmv_social] ([id], [key], [value], [vendor]) VALUES (18, N'linkedIn', N'', N'shop3')
SET IDENTITY_INSERT [dbo].[ocmv_social] OFF
/****** Object:  Index [ocmv_attributes_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_attributes] ADD  CONSTRAINT [ocmv_attributes_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_category_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_category] ADD  CONSTRAINT [ocmv_category_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_countries_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_countries] ADD  CONSTRAINT [ocmv_countries_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_currency_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_currency] ADD  CONSTRAINT [ocmv_currency_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ocmv_customer_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_customer] ADD  CONSTRAINT [ocmv_customer_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ocmv_employee_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_employee] ADD  CONSTRAINT [ocmv_employee_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_message_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_message] ADD  CONSTRAINT [ocmv_message_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_orders_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_orders] ADD  CONSTRAINT [ocmv_orders_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_ordersdetail_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_ordersdetail] ADD  CONSTRAINT [ocmv_ordersdetail_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[orderId] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_payment_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_payment] ADD  CONSTRAINT [ocmv_payment_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_product_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_product] ADD  CONSTRAINT [ocmv_product_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_role_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_role] ADD  CONSTRAINT [ocmv_role_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_setting_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_setting] ADD  CONSTRAINT [ocmv_setting_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ocmv_social_PRIMARY]    Script Date: 2017/02/10 1:36:49 AM ******/
ALTER TABLE [dbo].[ocmv_social] ADD  CONSTRAINT [ocmv_social_PRIMARY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ocmv_countries] ADD  DEFAULT ('') FOR [country_code]
GO
ALTER TABLE [dbo].[ocmv_message] ADD  DEFAULT (CONVERT([datetime],getdate(),(121))) FOR [datepost]
GO
ALTER TABLE [dbo].[ocmv_product] ADD  DEFAULT (CONVERT([datetime],getdate(),(121))) FOR [creationdate]
GO
ALTER TABLE [dbo].[ocmv_attributes]  WITH NOCHECK ADD  CONSTRAINT [ocmv_attributes_ibfk_1] FOREIGN KEY([customer])
REFERENCES [dbo].[ocmv_customer] ([username])
GO
ALTER TABLE [dbo].[ocmv_attributes] NOCHECK CONSTRAINT [ocmv_attributes_ibfk_1]
GO
ALTER TABLE [dbo].[ocmv_category]  WITH NOCHECK ADD  CONSTRAINT [ocmv_category_ibfk_1] FOREIGN KEY([customer])
REFERENCES [dbo].[ocmv_customer] ([username])
GO
ALTER TABLE [dbo].[ocmv_category] NOCHECK CONSTRAINT [ocmv_category_ibfk_1]
GO
ALTER TABLE [dbo].[ocmv_customer]  WITH NOCHECK ADD  CONSTRAINT [ocmv_customer_ibfk_1] FOREIGN KEY([roleId])
REFERENCES [dbo].[ocmv_role] ([id])
GO
ALTER TABLE [dbo].[ocmv_customer] NOCHECK CONSTRAINT [ocmv_customer_ibfk_1]
GO
ALTER TABLE [dbo].[ocmv_message]  WITH NOCHECK ADD  CONSTRAINT [ocmv_message_ibfk_1] FOREIGN KEY([vendor])
REFERENCES [dbo].[ocmv_customer] ([username])
GO
ALTER TABLE [dbo].[ocmv_message] NOCHECK CONSTRAINT [ocmv_message_ibfk_1]
GO
ALTER TABLE [dbo].[ocmv_ordersdetail]  WITH NOCHECK ADD  CONSTRAINT [ocmv_ordersdetail_ibfk_1] FOREIGN KEY([productId])
REFERENCES [dbo].[ocmv_product] ([id])
GO
ALTER TABLE [dbo].[ocmv_ordersdetail] NOCHECK CONSTRAINT [ocmv_ordersdetail_ibfk_1]
GO
ALTER TABLE [dbo].[ocmv_ordersdetail]  WITH NOCHECK ADD  CONSTRAINT [ocmv_ordersdetail_ibfk_2] FOREIGN KEY([orderId])
REFERENCES [dbo].[ocmv_orders] ([id])
GO
ALTER TABLE [dbo].[ocmv_ordersdetail] NOCHECK CONSTRAINT [ocmv_ordersdetail_ibfk_2]
GO
ALTER TABLE [dbo].[ocmv_product]  WITH NOCHECK ADD  CONSTRAINT [ocmv_product_ibfk_1] FOREIGN KEY([customer])
REFERENCES [dbo].[ocmv_customer] ([username])
GO
ALTER TABLE [dbo].[ocmv_product] NOCHECK CONSTRAINT [ocmv_product_ibfk_1]
GO
ALTER TABLE [dbo].[ocmv_products_attributes]  WITH NOCHECK ADD  CONSTRAINT [ocmv_products_attributes_ibfk_1] FOREIGN KEY([productId])
REFERENCES [dbo].[ocmv_product] ([id])
GO
ALTER TABLE [dbo].[ocmv_products_attributes] NOCHECK CONSTRAINT [ocmv_products_attributes_ibfk_1]
GO
ALTER TABLE [dbo].[ocmv_products_attributes]  WITH NOCHECK ADD  CONSTRAINT [ocmv_products_attributes_ibfk_2] FOREIGN KEY([attributesId])
REFERENCES [dbo].[ocmv_attributes] ([id])
GO
ALTER TABLE [dbo].[ocmv_products_attributes] NOCHECK CONSTRAINT [ocmv_products_attributes_ibfk_2]
GO
ALTER TABLE [dbo].[ocmv_social]  WITH NOCHECK ADD  CONSTRAINT [ocmv_social_ibfk_1] FOREIGN KEY([vendor])
REFERENCES [dbo].[ocmv_customer] ([username])
GO
ALTER TABLE [dbo].[ocmv_social] NOCHECK CONSTRAINT [ocmv_social_ibfk_1]
GO
