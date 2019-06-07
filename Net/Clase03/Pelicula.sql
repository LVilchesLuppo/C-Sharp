USE [master]
GO
/****** Object:  Database [Pelicula]    Script Date: 07/06/2019 9:54:28 ******/
CREATE DATABASE [Pelicula]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pelicula', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Pelicula.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Pelicula_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Pelicula_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Pelicula] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pelicula].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pelicula] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pelicula] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pelicula] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pelicula] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pelicula] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pelicula] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pelicula] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pelicula] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pelicula] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pelicula] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pelicula] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pelicula] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pelicula] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pelicula] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pelicula] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pelicula] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pelicula] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pelicula] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pelicula] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pelicula] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pelicula] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pelicula] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pelicula] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pelicula] SET  MULTI_USER 
GO
ALTER DATABASE [Pelicula] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pelicula] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pelicula] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pelicula] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Pelicula] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Pelicula]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 07/06/2019 9:54:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[IdGenero] [int] IDENTITY(1,1) NOT NULL,
	[NombreGenero] [varchar](50) NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 07/06/2019 9:54:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelicula](
	[IdPelicula] [int] IDENTITY(1,1) NOT NULL,
	[NombrePelicula] [varchar](50) NULL,
	[IdGenero] [int] NULL,
 CONSTRAINT [PK_Pelicula] PRIMARY KEY CLUSTERED 
(
	[IdPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Genero]
GO
USE [master]
GO
ALTER DATABASE [Pelicula] SET  READ_WRITE 
GO
