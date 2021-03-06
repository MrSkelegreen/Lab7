USE [Forum]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 27.05.2022 7:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tittle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 27.05.2022 7:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tittle] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](350) NULL,
	[Date] [datetime] NOT NULL,
	[IdAuthor] [int] NOT NULL,
	[IdWorker] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27.05.2022 7:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([id], [tittle]) VALUES (1, N'Не готово')
INSERT [dbo].[Statuses] ([id], [tittle]) VALUES (2, N'Выполняется')
INSERT [dbo].[Statuses] ([id], [tittle]) VALUES (3, N'Выполнено')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([Id], [Tittle], [Description], [Date], [IdAuthor], [IdWorker], [Status]) VALUES (1, N'Барабанщик', N'Создать программу, которая будет выводить в консоль сообщение "Хэпэ хэпэ, я барабанщик!"', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 4, 1, 3)
INSERT [dbo].[Tasks] ([Id], [Tittle], [Description], [Date], [IdAuthor], [IdWorker], [Status]) VALUES (2, N'Помогите решить лабу!', N'Необходимо создать небольшую систему, позволяющую людям находить тех, кто сможет им помочь с их задачей', CAST(N'2022-03-19T00:00:00.000' AS DateTime), 2, 5, 2)
INSERT [dbo].[Tasks] ([Id], [Tittle], [Description], [Date], [IdAuthor], [IdWorker], [Status]) VALUES (3, N'Дурак на C++', N'Разработать карточную игру "Дурак" на языке C++ с интерфейсом, чтобы играть на парах', CAST(N'2021-10-11T00:00:00.000' AS DateTime), 2, NULL, 1)
INSERT [dbo].[Tasks] ([Id], [Tittle], [Description], [Date], [IdAuthor], [IdWorker], [Status]) VALUES (4, N'Статус бот', N'Создать бота, который будет изменять статус в ВК в заданный промежуток времени', CAST(N'2022-01-01T00:00:00.000' AS DateTime), 5, NULL, 2)
INSERT [dbo].[Tasks] ([Id], [Tittle], [Description], [Date], [IdAuthor], [IdWorker], [Status]) VALUES (5, N'Мод для Dont Starve Together', N'Создать мод для игры Dont Starve Together, чтобы при открытии холодильника произносилась фраза "Что вы делаете в моём холодильнике?"', CAST(N'2019-08-25T00:00:00.000' AS DateTime), 1, 3, 1)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [SecondName], [LastName], [Login], [Password], [Phone]) VALUES (1, N'Генадий', N'Горин', N'Александрович', N'sa', N'1', N'+79136784561')
INSERT [dbo].[Users] ([Id], [FirstName], [SecondName], [LastName], [Login], [Password], [Phone]) VALUES (2, N'Никита', N'Огнев', N'Игоревич', N'lul', N'luluonelove', N'+79138702165')
INSERT [dbo].[Users] ([Id], [FirstName], [SecondName], [LastName], [Login], [Password], [Phone]) VALUES (3, N'Антон', N'Колыванов', N'Юрьевич', N'kek', N'superkek', N'+78367362572')
INSERT [dbo].[Users] ([Id], [FirstName], [SecondName], [LastName], [Login], [Password], [Phone]) VALUES (4, N'Максим', N'Романов', N'Анатольевич', N'cheburek', N'nyamka228', N'+78467358624')
INSERT [dbo].[Users] ([Id], [FirstName], [SecondName], [LastName], [Login], [Password], [Phone]) VALUES (5, N'Татьяна', N'Корчуганова', N'Викторовна', N'gray', N'graydays', N'+76456371568')
INSERT [dbo].[Users] ([Id], [FirstName], [SecondName], [LastName], [Login], [Password], [Phone]) VALUES (6, N'Keker', N'Ognev', N'Igorevich', N'Keker', N'123', N'9928293674')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Statuses] FOREIGN KEY([Status])
REFERENCES [dbo].[Statuses] ([id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Statuses]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Users] FOREIGN KEY([IdAuthor])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Users]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Users1] FOREIGN KEY([IdWorker])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Users1]
GO
