USE [master]
GO
/****** Object:  Database [ForFarming]    Script Date: 13.02.2022 18:27:03 ******/
CREATE DATABASE [ForFarming]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ForFarming', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ForFarming.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ForFarming_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ForFarming_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ForFarming] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ForFarming].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ForFarming] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ForFarming] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ForFarming] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ForFarming] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ForFarming] SET ARITHABORT OFF 
GO
ALTER DATABASE [ForFarming] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ForFarming] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ForFarming] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ForFarming] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ForFarming] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ForFarming] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ForFarming] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ForFarming] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ForFarming] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ForFarming] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ForFarming] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ForFarming] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ForFarming] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ForFarming] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ForFarming] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ForFarming] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ForFarming] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ForFarming] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ForFarming] SET  MULTI_USER 
GO
ALTER DATABASE [ForFarming] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ForFarming] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ForFarming] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ForFarming] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ForFarming] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ForFarming] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ForFarming] SET QUERY_STORE = OFF
GO
USE [ForFarming]
GO
/****** Object:  Table [dbo].[UserEntity]    Script Date: 13.02.2022 18:27:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEntity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokenEntityy]    Script Date: 13.02.2022 18:27:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokenEntityy](
	[Id] [int] NULL,
	[UserId] [int] NOT NULL,
	[AccessToken] [varchar](100) NOT NULL,
	[ExpiryDate] [datetime] NOT NULL,
	[RefreshToken] [varchar](100) NULL,
	[IsLogout] [int] NULL,
	[LoginTime] [datetime] NULL,
	[LogoutTime] [datetime] NULL,
	[CreatedIp] [varchar](100) NULL,
	[IsOldToken] [int] NULL,
	[UserEntity] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserEntity] ON 

INSERT [dbo].[UserEntity] ([Id], [FirstName], [LastName], [BirthDate], [EmailAddress], [UserName], [Password]) VALUES (1, N'orçun', N'gökçe', CAST(N'1991-07-16T00:00:00.000' AS DateTime), N'ogokce1991@gmail.com', N'ogokce', N'1234')
SET IDENTITY_INSERT [dbo].[UserEntity] OFF
GO
INSERT [dbo].[UserTokenEntityy] ([Id], [UserId], [AccessToken], [ExpiryDate], [RefreshToken], [IsLogout], [LoginTime], [LogoutTime], [CreatedIp], [IsOldToken], [UserEntity]) VALUES (NULL, 1, N'"1234"', CAST(N'2022-02-25T00:00:00.000' AS DateTime), N'"123"', 0, CAST(N'2022-02-13T00:00:00.000' AS DateTime), NULL, N'"0.0.0.1"', NULL, 1)
GO
USE [master]
GO
ALTER DATABASE [ForFarming] SET  READ_WRITE 
GO
