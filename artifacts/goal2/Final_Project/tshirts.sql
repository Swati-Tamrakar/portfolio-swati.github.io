USE [master]
GO
/****** Object:  Database [Tshirts]    Script Date: 5/10/2018 11:36:47 AM ******/
CREATE DATABASE [Tshirts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tshirts', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Tshirts.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Tshirts_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Tshirts_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Tshirts] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tshirts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tshirts] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tshirts] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tshirts] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tshirts] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tshirts] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tshirts] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Tshirts] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tshirts] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tshirts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tshirts] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tshirts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tshirts] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tshirts] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tshirts] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tshirts] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Tshirts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tshirts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tshirts] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tshirts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tshirts] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tshirts] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tshirts] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tshirts] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tshirts] SET  MULTI_USER 
GO
ALTER DATABASE [Tshirts] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tshirts] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tshirts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tshirts] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Tshirts] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Tshirts]
GO
/****** Object:  Table [dbo].[Tshirts]    Script Date: 5/10/2018 11:36:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tshirts](
	[TshirtID] [varchar](25) NOT NULL,
	[ShortDescription] [varchar](25) NOT NULL,
	[LongDescription] [varchar](255) NOT NULL,
	[Image] [varchar](30) NULL,
	[Size] [varchar](10) NOT NULL,
	[Color] [varchar](30) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[InStock] [int] NULL,
 CONSTRAINT [PK_Tshirts] PRIMARY KEY CLUSTERED 
(
	[TshirtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tshirts] ([TshirtID], [ShortDescription], [LongDescription], [Image], [Size], [Color], [UnitPrice], [InStock]) VALUES (N'1234', N'Baby Batman', N'100% Cotton. Machine wash cold. One size fits all', N'babyBatman.jpg', N'Large', N'Gray', 15.9900, 15)
INSERT [dbo].[Tshirts] ([TshirtID], [ShortDescription], [LongDescription], [Image], [Size], [Color], [UnitPrice], [InStock]) VALUES (N'1455', N'Green Lantern', N'Unisex. Single hemmed sleeves and neck. Crew neck.', N'greenLantern.jpg', N'Larger', N'Green', 18.9900, 15)
INSERT [dbo].[Tshirts] ([TshirtID], [ShortDescription], [LongDescription], [Image], [Size], [Color], [UnitPrice], [InStock]) VALUES (N'1542', N'Flash', N'Double hemmed sleeves. 7" sleeves. Machine wash cold', N'flash.jpg', N'Medium', N'Black', 25.0000, 14)
INSERT [dbo].[Tshirts] ([TshirtID], [ShortDescription], [LongDescription], [Image], [Size], [Color], [UnitPrice], [InStock]) VALUES (N'2141', N'Batman', N'Batman graphic', N'batman.jpg', N'Small', N'Grey', 17.5500, 5)
INSERT [dbo].[Tshirts] ([TshirtID], [ShortDescription], [LongDescription], [Image], [Size], [Color], [UnitPrice], [InStock]) VALUES (N'2541', N'Combo Tshirt', N'5 superhero tshirts. 50% cotton. Machine wash cold.', N'combo_tee.jpg', N'Large', N'Blackish grey', 18.0000, 19)
INSERT [dbo].[Tshirts] ([TshirtID], [ShortDescription], [LongDescription], [Image], [Size], [Color], [UnitPrice], [InStock]) VALUES (N'2542', N'Captain America', N'50% Cotton. Double hemmed sleeves', N'captainAmerica.jpg', N'Medium', N'Blue', 20.5500, 10)
INSERT [dbo].[Tshirts] ([TshirtID], [ShortDescription], [LongDescription], [Image], [Size], [Color], [UnitPrice], [InStock]) VALUES (N'2887', N'DC ', N'DC combo shirt. 100% cotton. Machine wash cold. Tumble dry low. ', N'dcCombo.jpg', N'Medium', N'Black', 17.9900, 15)
INSERT [dbo].[Tshirts] ([TshirtID], [ShortDescription], [LongDescription], [Image], [Size], [Color], [UnitPrice], [InStock]) VALUES (N'4511', N'Wolverine', N'2 colored tee. Baseball shirt design. 6" long sleeve. Machine wash cold. Tumble dr y low.', N'wolverine.jpg', N'Medium', N'White', 19.4500, 6)
INSERT [dbo].[Tshirts] ([TshirtID], [ShortDescription], [LongDescription], [Image], [Size], [Color], [UnitPrice], [InStock]) VALUES (N'7845', N'Superman Vs Batman', N'Graphic tee. Wash Separately. 70% cotton. Short sleeve.', N'supermanVsBatman.jpg', N'Medium', N'Navy', 22.1400, 10)
USE [master]
GO
ALTER DATABASE [Tshirts] SET  READ_WRITE 
GO
