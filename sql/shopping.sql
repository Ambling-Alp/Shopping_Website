USE [master]
GO
/****** Object:  Database [Shopping]    Script Date: 06/24/2016 09:47:04 ******/
CREATE DATABASE [Shopping] ON  PRIMARY 
( NAME = N'Shopping', FILENAME = N'D:\worksoft\sql_server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Shopping.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shopping_log', FILENAME = N'D:\worksoft\sql_server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Shopping_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shopping] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shopping] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Shopping] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Shopping] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Shopping] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Shopping] SET ARITHABORT OFF
GO
ALTER DATABASE [Shopping] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Shopping] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Shopping] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Shopping] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Shopping] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Shopping] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Shopping] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Shopping] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Shopping] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Shopping] SET  DISABLE_BROKER
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Shopping] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Shopping] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Shopping] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Shopping] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Shopping] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Shopping] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Shopping] SET  READ_WRITE
GO
ALTER DATABASE [Shopping] SET RECOVERY FULL
GO
ALTER DATABASE [Shopping] SET  MULTI_USER
GO
ALTER DATABASE [Shopping] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Shopping] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Shopping', N'ON'
GO
USE [Shopping]
GO
/****** Object:  Table [dbo].[trolley]    Script Date: 06/24/2016 09:47:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trolley](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[goodId] [int] NOT NULL,
	[goodName] [nvarchar](50) NOT NULL,
	[goodPrice] [float] NOT NULL,
	[goodCount] [int] NOT NULL,
	[goodDe] [nvarchar](100) NOT NULL,
	[goodType] [int] NOT NULL,
	[userId] [int] NOT NULL,
 CONSTRAINT [PK_trolley] PRIMARY KEY CLUSTERED 
(
	[goodId] ASC,
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 06/24/2016 09:47:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] NOT NULL,
	[roleName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 06/24/2016 09:47:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[goodId] [int] NOT NULL,
	[goodName] [nvarchar](50) NOT NULL,
	[goodPrice] [float] NOT NULL,
	[goodCount] [int] NOT NULL,
	[goodDe] [nvarchar](100) NOT NULL,
	[goodType] [int] NOT NULL,
	[userId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[goodsType]    Script Date: 06/24/2016 09:47:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goodsType](
	[id] [int] NOT NULL,
	[typeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_goodsType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 06/24/2016 09:47:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[sex] [nvarchar](4) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[roleType] [int] NOT NULL,
	[question] [nvarchar](100) NOT NULL,
	[answer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[goods]    Script Date: 06/24/2016 09:47:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goods](
	[goodsId] [int] IDENTITY(1,1) NOT NULL,
	[goodsName] [nvarchar](50) NOT NULL,
	[goodsPrice] [float] NOT NULL,
	[goodsCount] [int] NOT NULL,
	[goodsDe] [nvarchar](100) NOT NULL,
	[goodsType] [int] NOT NULL,
 CONSTRAINT [PK_goods] PRIMARY KEY CLUSTERED 
(
	[goodsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[money]    Script Date: 06/24/2016 09:47:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[money](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[amount] [float] NOT NULL,
 CONSTRAINT [PK_money] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_users_roleType]    Script Date: 06/24/2016 09:47:05 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_roleType]  DEFAULT ((2)) FOR [roleType]
GO
/****** Object:  Check [CK_users]    Script Date: 06/24/2016 09:47:05 ******/
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [CK_users] CHECK  (([sex]='男' OR [sex]='女'))
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [CK_users]
GO
/****** Object:  ForeignKey [FK_users_roles]    Script Date: 06/24/2016 09:47:05 ******/
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([roleType])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
/****** Object:  ForeignKey [FK_goods_goodsType]    Script Date: 06/24/2016 09:47:05 ******/
ALTER TABLE [dbo].[goods]  WITH CHECK ADD  CONSTRAINT [FK_goods_goodsType] FOREIGN KEY([goodsType])
REFERENCES [dbo].[goodsType] ([id])
GO
ALTER TABLE [dbo].[goods] CHECK CONSTRAINT [FK_goods_goodsType]
GO
/****** Object:  ForeignKey [FK_money_users]    Script Date: 06/24/2016 09:47:05 ******/
ALTER TABLE [dbo].[money]  WITH CHECK ADD  CONSTRAINT [FK_money_users] FOREIGN KEY([userId])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[money] CHECK CONSTRAINT [FK_money_users]
GO
