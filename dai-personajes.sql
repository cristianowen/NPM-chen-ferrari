USE [master]
GO
/****** Object:  Database [dai-personajes]    Script Date: 3/5/2023 10:00:49 ******/
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
/****** Object:  User [alumno]    Script Date: 3/5/2023 10:00:49 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 3/5/2023 10:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[id] [int] NOT NULL,
	[imagen] [varchar](50) NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[fechaC] [date] NOT NULL,
	[calificacion] [int] NOT NULL,
	[personajesA] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 3/5/2023 10:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[id] [int] NOT NULL,
	[imagen] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[peso] [int] NOT NULL,
	[historia] [varchar](50) NOT NULL,
	[pelicula] [int] NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [dai-personajes] SET  READ_WRITE 
GO
