USE [master]
GO
/****** Object:  Database [Acedemic_Report_Blockchain]    Script Date: 01/27/2020 19:58:11 ******/
CREATE DATABASE [Acedemic_Report_Blockchain] ON  PRIMARY 
( NAME = N'Acedemic_Report_Blockchain', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Acedemic_Report_Blockchain.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Acedemic_Report_Blockchain_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Acedemic_Report_Blockchain_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Acedemic_Report_Blockchain].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET ARITHABORT OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET  DISABLE_BROKER
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET  READ_WRITE
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET RECOVERY FULL
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET  MULTI_USER
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Acedemic_Report_Blockchain] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Acedemic_Report_Blockchain', N'ON'
GO
USE [Acedemic_Report_Blockchain]
GO
/****** Object:  Table [dbo].[Tpo_Master]    Script Date: 01/27/2020 19:58:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tpo_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Company_Name] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tpo_Master] ON
INSERT [dbo].[Tpo_Master] ([Id], [Company_Name], [Name], [Email], [Phone], [Address], [Password]) VALUES (1, N'Infosis', N'Jim Manion', N'j@infosis.co.in', N'9821771615', N'Pune', N'gK3SyqNm')
SET IDENTITY_INSERT [dbo].[Tpo_Master] OFF
/****** Object:  Table [dbo].[Student_Master]    Script Date: 01/27/2020 19:58:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Student_Id] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[Semester] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[DOB] [nvarchar](50) NULL,
	[Profile] [nvarchar](max) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student_Master] ON
INSERT [dbo].[Student_Master] ([Id], [Student_Id], [Name], [Branch], [Semester], [Email], [Phone], [Address], [DOB], [Profile], [Password]) VALUES (1, N'IT201910', N'Shawn Ray', N'IT', N'Sem8', N's@gmail.com', N'8652415809', N'Malad,Mumbai', N'26/08/1995', N'img.jpg', N'pAU0M7er')
SET IDENTITY_INSERT [dbo].[Student_Master] OFF
/****** Object:  Table [dbo].[Sem_Master]    Script Date: 01/27/2020 19:58:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sem_Master](
	[Sem_Id] [int] IDENTITY(1,1) NOT NULL,
	[Semester] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sem_Master] ON
INSERT [dbo].[Sem_Master] ([Sem_Id], [Semester]) VALUES (1, N'Sem1')
INSERT [dbo].[Sem_Master] ([Sem_Id], [Semester]) VALUES (2, N'Sem2')
INSERT [dbo].[Sem_Master] ([Sem_Id], [Semester]) VALUES (3, N'Sem3')
INSERT [dbo].[Sem_Master] ([Sem_Id], [Semester]) VALUES (4, N'Sem4')
INSERT [dbo].[Sem_Master] ([Sem_Id], [Semester]) VALUES (5, N'Sem5')
INSERT [dbo].[Sem_Master] ([Sem_Id], [Semester]) VALUES (6, N'Sem6')
INSERT [dbo].[Sem_Master] ([Sem_Id], [Semester]) VALUES (7, N'Sem7')
INSERT [dbo].[Sem_Master] ([Sem_Id], [Semester]) VALUES (8, N'Sem8')
SET IDENTITY_INSERT [dbo].[Sem_Master] OFF
/****** Object:  Table [dbo].[File_Master]    Script Date: 01/27/2020 19:58:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[Sem] [nvarchar](50) NULL,
	[Student_Id] [nvarchar](50) NULL,
	[File_name] [nvarchar](max) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[File_Master] ON
INSERT [dbo].[File_Master] ([Id], [Date], [Branch], [Sem], [Student_Id], [File_name]) VALUES (1, N'Dec 25 2019 11:47AM', N'IT', N'Sem8', N'IT201910', N'rslt.jpg')
SET IDENTITY_INSERT [dbo].[File_Master] OFF
/****** Object:  Table [dbo].[Branch_Master]    Script Date: 01/27/2020 19:58:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch_Master](
	[Branch_Id] [int] IDENTITY(1,1) NOT NULL,
	[Branch_Name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Branch_Master] ON
INSERT [dbo].[Branch_Master] ([Branch_Id], [Branch_Name]) VALUES (1, N'Computer Enggineering')
INSERT [dbo].[Branch_Master] ([Branch_Id], [Branch_Name]) VALUES (2, N'Mechanical')
INSERT [dbo].[Branch_Master] ([Branch_Id], [Branch_Name]) VALUES (3, N'IT')
INSERT [dbo].[Branch_Master] ([Branch_Id], [Branch_Name]) VALUES (4, N'Electronics & Telecommunication')
INSERT [dbo].[Branch_Master] ([Branch_Id], [Branch_Name]) VALUES (5, N'Civil')
INSERT [dbo].[Branch_Master] ([Branch_Id], [Branch_Name]) VALUES (6, N'Electrical')
SET IDENTITY_INSERT [dbo].[Branch_Master] OFF
/****** Object:  Table [dbo].[Admin_master]    Script Date: 01/27/2020 19:58:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin_master] ON
INSERT [dbo].[Admin_master] ([ID], [Username], [Password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admin_master] OFF
