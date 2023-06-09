USE [master]
GO
/****** Object:  Database [dai-personajes]    Script Date: 11/5/2023 10:11:02 ******/
CREATE DATABASE [dai-personajes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dai-personajes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dai-personajes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dai-personajes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dai-personajes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dai-personajes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dai-personajes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dai-personajes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dai-personajes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dai-personajes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dai-personajes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dai-personajes] SET ARITHABORT OFF 
GO
ALTER DATABASE [dai-personajes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dai-personajes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dai-personajes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dai-personajes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dai-personajes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dai-personajes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dai-personajes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dai-personajes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dai-personajes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dai-personajes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dai-personajes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dai-personajes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dai-personajes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dai-personajes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dai-personajes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dai-personajes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dai-personajes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dai-personajes] SET RECOVERY FULL 
GO
ALTER DATABASE [dai-personajes] SET  MULTI_USER 
GO
ALTER DATABASE [dai-personajes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dai-personajes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dai-personajes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dai-personajes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dai-personajes] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dai-personajes', N'ON'
GO
ALTER DATABASE [dai-personajes] SET QUERY_STORE = OFF
GO
USE [dai-personajes]
GO
/****** Object:  User [alumno]    Script Date: 11/5/2023 10:11:02 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[fk]    Script Date: 11/5/2023 10:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fk](
	[fk_Peliculas] [int] NOT NULL,
	[fk_Personajes] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_fk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 11/5/2023 10:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[id] [int] NOT NULL,
	[imagen] [text] NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[fechaC] [date] NOT NULL,
	[calificacion] [int] NOT NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 11/5/2023 10:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[id] [int] NOT NULL,
	[imagen] [text] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[peso] [int] NOT NULL,
	[historia] [text] NOT NULL,
 CONSTRAINT [PK_Personajes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[fk] ON 

INSERT [dbo].[fk] ([fk_Peliculas], [fk_Personajes], [id]) VALUES (1, 1, 1)
INSERT [dbo].[fk] ([fk_Peliculas], [fk_Personajes], [id]) VALUES (2, 3, 2)
INSERT [dbo].[fk] ([fk_Peliculas], [fk_Personajes], [id]) VALUES (1, 2, 3)
INSERT [dbo].[fk] ([fk_Peliculas], [fk_Personajes], [id]) VALUES (2, 4, 4)
SET IDENTITY_INSERT [dbo].[fk] OFF
GO
INSERT [dbo].[Peliculas] ([id], [imagen], [titulo], [fechaC], [calificacion]) VALUES (1, N'https://www.latercera.com/resizer/PINEKzY7-hpiRXTIRr9rA6iIO9A=/900x600/smart/cloudfront-us-east-1.images.arcpublishing.com/copesa/LRO4CXACVRFILGSJ6COUSXZCPU.jpeg', N'Avatar', CAST(N'2010-01-01' AS Date), 8)
INSERT [dbo].[Peliculas] ([id], [imagen], [titulo], [fechaC], [calificacion]) VALUES (2, N'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2018/11/shrek.jpg?fit=1000%2C547&quality=50&strip=all&ssl=1', N'Shrek', CAST(N'2001-07-19' AS Date), 9)
GO
INSERT [dbo].[Personajes] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (1, N'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2022/09/Avatar2.png?fit=1200%2C676&quality=50&strip=all&ssl=1', N'Jake Sully', 43, 170, N'Olo''eyktan Jake Sully, o Tsyeyk Suli en lengua na''vi, es un personaje ficticio y protagonista principal de la serie de películas de ciencia ficción estadounidense Avatar, creada por James Cameron.')
INSERT [dbo].[Personajes] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (2, N'https://static.wikia.nocookie.net/cultura-navi-avatar/images/4/44/Na%27vi.jpg/revision/latest?cb=20130221144207&path-prefix=es', N'Neytiri', 40, 139, N'Neytiri te Tskaha Mo''at''ite, también conocida como Neytiri Sully, es un personaje ficticio de la serie de películas de ciencia ficción estadounidense Avatar, creada por James Cameron. En un bosque de Pandora, Neytiri conoce a Jake Sully, que se ha perdido, y lo salva de una manada de viperlobos.')
INSERT [dbo].[Personajes] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (3, N'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2018/11/shrek.jpg?fit=1000%2C547&quality=50&strip=all&ssl=1', N'Shrek', 35, 200, N'Shrek es un gran ogro verde que vive en un pantano. Allí reside felizmente, asustando a los humanos que se aventuran o se pierden, hasta que un día descubre que el lugar ha sido invadido por personajes de cuentos de hadas que han sido expulsados de la comarca por el villano Lord Farquaad.')
INSERT [dbo].[Personajes] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (4, N'https://static.wikia.nocookie.net/shrek/images/4/49/Shrek-the-third-cameron-diaz-as-princess-fiona-1.jpg/revision/latest?cb=20150809180938&path-prefix=es', N'Fiona', 35, 178, N'Fiona?? es un personaje ficticio de la franquicia Shrek de DreamWorks, que apareció por primera vez en la película de animación Shrek.')
GO
ALTER TABLE [dbo].[fk]  WITH CHECK ADD  CONSTRAINT [FK_fk_Peliculas] FOREIGN KEY([fk_Peliculas])
REFERENCES [dbo].[Peliculas] ([id])
GO
ALTER TABLE [dbo].[fk] CHECK CONSTRAINT [FK_fk_Peliculas]
GO
ALTER TABLE [dbo].[fk]  WITH CHECK ADD  CONSTRAINT [FK_fk_Personajes] FOREIGN KEY([fk_Personajes])
REFERENCES [dbo].[Personajes] ([id])
GO
ALTER TABLE [dbo].[fk] CHECK CONSTRAINT [FK_fk_Personajes]
GO
USE [master]
GO
ALTER DATABASE [dai-personajes] SET  READ_WRITE 
GO
