USE [MedicalDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/13/2022 2:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExaminationObjects]    Script Date: 7/13/2022 2:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExaminationObjects](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [real] NOT NULL,
	[Deletable] [bit] NOT NULL,
 CONSTRAINT [PK_ExaminationObjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HealthTypes]    Script Date: 7/13/2022 2:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthTypes](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [real] NOT NULL,
	[Deletable] [bit] NOT NULL,
 CONSTRAINT [PK_HealthTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patients]    Script Date: 7/13/2022 2:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[IdentityCode] [nvarchar](max) NOT NULL,
	[DigitalInfo] [nvarchar](max) NOT NULL,
	[DoB] [datetime2](7) NOT NULL,
	[DoE] [datetime2](7) NOT NULL,
	[HealthType] [nvarchar](max) NOT NULL,
	[ExamObject] [nvarchar](max) NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[IsTest] [bit] NOT NULL,
	[IsXray] [bit] NOT NULL,
	[IsDoneTest] [bit] NOT NULL,
	[IsDoneXray] [bit] NOT NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/13/2022 2:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220713050336_CreateDatabase', N'6.0.7')
INSERT [dbo].[ExaminationObjects] ([Id], [Name], [Price], [Deletable]) VALUES (N'08f542b8-d57e-429c-9a62-80d9c640cde8', N'4 bánh', 0, 0)
INSERT [dbo].[ExaminationObjects] ([Id], [Name], [Price], [Deletable]) VALUES (N'85b0760f-61dd-4d9b-a985-4ab8f608cbdd', N'Cá nhân', 0, 0)
INSERT [dbo].[ExaminationObjects] ([Id], [Name], [Price], [Deletable]) VALUES (N'b499d9e4-5f06-4592-990f-db87a1e7287e', N'2 bánh', 0, 0)
INSERT [dbo].[HealthTypes] ([Id], [Name], [Price], [Deletable]) VALUES (N'3d09da42-b37a-4f06-868c-366d9df92c28', N'Đặng Lâm', 0, 0)
INSERT [dbo].[HealthTypes] ([Id], [Name], [Price], [Deletable]) VALUES (N'4d454304-38d0-449e-a619-01b9d4322bad', N'Trường TCN', 0, 0)
INSERT [dbo].[HealthTypes] ([Id], [Name], [Price], [Deletable]) VALUES (N'511d4ace-30d7-498e-9864-320c0eeab381', N'Cá nhân', 0, 0)
INSERT [dbo].[HealthTypes] ([Id], [Name], [Price], [Deletable]) VALUES (N'fb14430c-761b-4759-bdea-97780cd83011', N'Hải Vân', 0, 0)
INSERT [dbo].[Patients] ([Id], [FullName], [IdentityCode], [DigitalInfo], [DoB], [DoE], [HealthType], [ExamObject], [IsPaid], [IsTest], [IsXray], [IsDoneTest], [IsDoneXray]) VALUES (N'0c38402c-152b-42ea-9d34-cd5f54c53322', N'Nguyễn Văn A', N'123094857', N'10001982321', CAST(N'1990-01-01 00:00:00.0000000' AS DateTime2), CAST(N'2022-07-13 00:00:00.0000000' AS DateTime2), N'Cá nhân', N'4 bánh', 1, 1, 1, 0, 0)
INSERT [dbo].[Users] ([Id], [FullName], [UserName], [Password], [Email], [Address], [PhoneNumber], [Role], [Status]) VALUES (N'792A35D7-7377-444D-8717-B093912BA3BB', N'Admin', N'admin', N'$2a$10$NmSBIhLnBv8ASUKSnXTODu8bpqZ1/CmDcDWrNWj3klliy48pSj/JG', N'admin@gmail.com', N'Ha Noi', N'123987654', N'admin', 1)
INSERT [dbo].[Users] ([Id], [FullName], [UserName], [Password], [Email], [Address], [PhoneNumber], [Role], [Status]) VALUES (N'cce1867c-4175-4bb6-9fe6-820b566b4079', N'Tiếp nhận', N'tiepnhan', N'$2a$10$cv4ZR.H8xKaafuuPV31En.jcX0/SHDkdxOR.slyURN5igjH6YN7Bu', N'tiepnhan@gmail.com', N'Hà Nội', N'0129384759', N'Tiep nhan', 1)
