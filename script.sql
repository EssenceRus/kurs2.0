USE [master]
GO
/****** Object:  Database [kurs]    Script Date: 08.12.2023 11:24:59 ******/
CREATE DATABASE [kurs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kurs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\kurs.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kurs_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\kurs_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [kurs] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kurs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kurs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kurs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kurs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kurs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kurs] SET ARITHABORT OFF 
GO
ALTER DATABASE [kurs] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kurs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kurs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kurs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kurs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kurs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kurs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kurs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kurs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kurs] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kurs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kurs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kurs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kurs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kurs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kurs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kurs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kurs] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kurs] SET  MULTI_USER 
GO
ALTER DATABASE [kurs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kurs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kurs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kurs] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kurs] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kurs] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [kurs] SET QUERY_STORE = ON
GO
ALTER DATABASE [kurs] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [kurs]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08.12.2023 11:24:59 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 08.12.2023 11:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfDelivery] [int] NOT NULL,
	[SuppliersName] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Count] [int] NOT NULL,
	[DateOfDelivery] [datetime] NOT NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 08.12.2023 11:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[VendorCode] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Price] [nvarchar](50) NULL,
	[DateOfDelivery] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 08.12.2023 11:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 08.12.2023 11:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Name] [nvarchar](50) NULL,
	[surname] [nvarchar](50) NULL,
	[patronymic] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Delivery] ON 

INSERT [dbo].[Delivery] ([Id], [NumberOfDelivery], [SuppliersName], [ProductName], [Count], [DateOfDelivery]) VALUES (1, 1, N'dsa', N'dsa', 1, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Delivery] ([Id], [NumberOfDelivery], [SuppliersName], [ProductName], [Count], [DateOfDelivery]) VALUES (2, 1, N'dsa', N'asd', 2, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Delivery] ([Id], [NumberOfDelivery], [SuppliersName], [ProductName], [Count], [DateOfDelivery]) VALUES (3, 1, N'dsa', N'gfd', 3, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Delivery] ([Id], [NumberOfDelivery], [SuppliersName], [ProductName], [Count], [DateOfDelivery]) VALUES (4, 2, N'zxc', N'zzzz', 4, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Delivery] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [Name], [Email], [PhoneNumber], [Address], [Status]) VALUES (1, N'а', N'а', N'а', N'а', 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [Email], [PhoneNumber], [Address], [Status]) VALUES (2, N'b', N'qb', N'b', N'b', 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [Email], [PhoneNumber], [Address], [Status]) VALUES (3, N'z', N'z', N'z', N'z', 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [Email], [PhoneNumber], [Address], [Status]) VALUES (4, N'zzzzz', N'z', N'z', N'z', 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [Email], [PhoneNumber], [Address], [Status]) VALUES (5, N'zzzzz1', N'z', N'z', N'z', 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [Email], [PhoneNumber], [Address], [Status]) VALUES (6, N'e', N'e', N'e', N'e', 0)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Name], [surname], [patronymic], [Login], [Password], [Id]) VALUES (N'a', N'a', N'a', N'a', N'a', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [kurs] SET  READ_WRITE 
GO
