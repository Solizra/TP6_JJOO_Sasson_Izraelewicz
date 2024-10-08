USE [master]
GO
/****** Object:  Database [JJOO]    Script Date: 15/8/2024 15:51:29 ******/
CREATE DATABASE [JJOO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JJOO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JJOO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JJOO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JJOO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JJOO] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JJOO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JJOO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JJOO] SET ARITHABORT OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JJOO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JJOO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JJOO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JJOO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JJOO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JJOO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JJOO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JJOO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JJOO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JJOO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JJOO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JJOO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JJOO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JJOO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JJOO] SET RECOVERY FULL 
GO
ALTER DATABASE [JJOO] SET  MULTI_USER 
GO
ALTER DATABASE [JJOO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JJOO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JJOO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JJOO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JJOO] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'JJOO', N'ON'
GO
ALTER DATABASE [JJOO] SET QUERY_STORE = OFF
GO
USE [JJOO]
GO
/****** Object:  User [alumno]    Script Date: 15/8/2024 15:51:29 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 15/8/2024 15:51:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportes](
	[IdDeporte] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Foto] [text] NOT NULL,
 CONSTRAINT [PK_Deportes] PRIMARY KEY CLUSTERED 
(
	[IdDeporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportistas]    Script Date: 15/8/2024 15:51:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportistas](
	[idDeportista] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [text] NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdDeporte] [int] NOT NULL,
 CONSTRAINT [PK_Deportistas] PRIMARY KEY CLUSTERED 
(
	[idDeportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 15/8/2024 15:51:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Bandera] [text] NOT NULL,
	[FechaFundacion] [date] NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deportes] ON 

INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (1, N'Gimnasia', N'https://estaticos.elcolombiano.com/binrepository/848x565/0c0/780d565/none/11101/QAGC/gettyimages-2164831741_45716140_20240803113130.jpg')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (2, N'Hockey', N'https://www.lanacion.com.ar/resizer/v2/las-leonas-tuvieron-un-debut-a-la-altura-de-las-JY5UDHCYB5FLJIIS4U55ACYCLE.JPG?auth=4efe351566e18031ce8bc7f3c20a080bae172c0dc630d43d3335c3db5a04d765&width=880&height=586&quality=70&smart=true')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (3, N'Saltos Ornamentales', N'https://www.lavoz.com.ar/resizer/v2/J324OB4J3JC5JG5NNNOPFKESSY.jpg?auth=5a66b469b73d8203beab266bc43373bc53c463101eedbc79e63b149b9cb1058c&width=1300&height=867')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (4, N'Salto con Garrocha', N'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/5615/live/2d1029f0-5422-11ef-9750-ef79ad7ed343.jpg.webp')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (5, N'Voley', N'https://www.clarin.com/2024/07/27/Obxj-E2SY_2000x1500__1.jpg')
SET IDENTITY_INSERT [dbo].[Deportes] OFF
GO
SET IDENTITY_INSERT [dbo].[Deportistas] ON 

INSERT [dbo].[Deportistas] ([idDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (1, N'Biles', N'Simone', CAST(N'1997-03-14' AS Date), N'https://images.foxtv.com/static.livenowfox.com/www.livenowfox.com/content/uploads/2024/07/764/432/GettyImages-2163621622.jpg?ve=1&tl=1', 3, 1)
INSERT [dbo].[Deportistas] ([idDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (2, N'Conte', N'Facundo', CAST(N'1989-08-25' AS Date), N'https://media.tycsports.com/files/2023/04/28/561679/facundo-conte_1440x810_wmk.webp?v=1', 1, 5)
INSERT [dbo].[Deportistas] ([idDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (3, N'Albertarrio', N'Agustina', CAST(N'1993-01-01' AS Date), N'https://www.conclusion.com.ar/wp-content/uploads/2023/10/albertario.jpg', 1, 2)
INSERT [dbo].[Deportistas] ([idDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (4, N'Moon', N'Katie', CAST(N'1991-06-13' AS Date), N'https://pbs.twimg.com/media/EIit6a7VUAAsU9i.jpg:large', 3, 4)
INSERT [dbo].[Deportistas] ([idDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (5, N'Yuan', N'Cao', CAST(N'1995-02-07' AS Date), N'https://p1.img.cctvpic.com/photoworkspace/contentimg/2016/08/17/2016081709333236983.jpg', 5, 3)
SET IDENTITY_INSERT [dbo].[Deportistas] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (1, N'Argentina', N'https://c.files.bbci.co.uk/D348/production/_95588045_178392703.jpg', CAST(N'1816-07-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (2, N'Brasil', N'https://t1.uc.ltmcdn.com/es/posts/1/2/5/significado_de_la_bandera_y_escudo_de_brasil_49521_600.webp', CAST(N'1822-09-07' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (3, N'Estados Unidos', N'https://media.istockphoto.com/id/1309757968/es/vector/bandera-americana-con-onda-ee-uu-agitando-fondo-estandarte-de-los-estados-unidos-de-am%C3%A9rica.jpg?s=612x612&w=0&k=20&c=j7-6bJdypEgxbTDT5hmFY3tK95K3OFPNNB9L4tLdwTc=', CAST(N'1776-07-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (4, N'España', N'https://banderas.top/wp-content/uploads/2020/08/Bandera-de-Espana.jpg', CAST(N'1814-04-17' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (5, N'China', N'https://img.freepik.com/vector-gratis/ilustracion-bandera-china_53876-27015.jpg', CAST(N'1911-10-10' AS Date))
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK_Deportistas_Deportes] FOREIGN KEY([IdDeporte])
REFERENCES [dbo].[Deportes] ([IdDeporte])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK_Deportistas_Deportes]
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK_Deportistas_Paises] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([IdPais])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK_Deportistas_Paises]
GO
USE [master]
GO
ALTER DATABASE [JJOO] SET  READ_WRITE 
GO
