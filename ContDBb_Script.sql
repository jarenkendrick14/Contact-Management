USE [ContactDb]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 07/04/2025 3:43:35 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ID], [FirstName], [LastName], [Email], [Phone]) VALUES (1, N'John', N'Doe', N'john.doe@email.com', N'123-456-7890')
INSERT [dbo].[Contacts] ([ID], [FirstName], [LastName], [Email], [Phone]) VALUES (2, N'Jane', N'Smith', N'jane.smith@email.com', N'987-654-3210')
INSERT [dbo].[Contacts] ([ID], [FirstName], [LastName], [Email], [Phone]) VALUES (6, N'asdasd', N'sdsda', N'aqweqwe@dfds', N'343242342')
INSERT [dbo].[Contacts] ([ID], [FirstName], [LastName], [Email], [Phone]) VALUES (29, N'dfsd', N'sdfdsfs', N'asdasd@dfdsfsd', N'33434234234')
INSERT [dbo].[Contacts] ([ID], [FirstName], [LastName], [Email], [Phone]) VALUES (30, N's', N'sdsf', N'345@aderwwer', N'3242342342')
INSERT [dbo].[Contacts] ([ID], [FirstName], [LastName], [Email], [Phone]) VALUES (35, N'dfsd', N'sdfdsfsjk', N'asdasd@dfdsf', N'33434234234')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Contacts_Email]    Script Date: 07/04/2025 3:43:36 pm ******/
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [UQ_Contacts_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
