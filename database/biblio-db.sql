
GO
ALTER DATABASE [biblio-db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [biblio-db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [biblio-db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [biblio-db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [biblio-db] SET ARITHABORT OFF 
GO
ALTER DATABASE [biblio-db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [biblio-db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [biblio-db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [biblio-db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [biblio-db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [biblio-db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [biblio-db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [biblio-db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [biblio-db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [biblio-db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [biblio-db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [biblio-db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [biblio-db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [biblio-db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [biblio-db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [biblio-db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [biblio-db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [biblio-db] SET RECOVERY FULL 
GO
ALTER DATABASE [biblio-db] SET  MULTI_USER 
GO
ALTER DATABASE [biblio-db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [biblio-db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [biblio-db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [biblio-db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [biblio-db] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'biblio-db', N'ON'
GO
ALTER DATABASE [biblio-db] SET QUERY_STORE = OFF
GO
USE [biblio-db]
GO
/****** Object:  User [NicoPereira]    Script Date: 27/10/2023 11:17:37 ******/
CREATE USER [NicoPereira] FOR LOGIN [NicoPereira] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [alumno]    Script Date: 27/10/2023 11:17:37 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [NicoPereira]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 27/10/2023 11:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[IdLibro] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [text] NOT NULL,
	[Resumen] [text] NOT NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[IdLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 27/10/2023 11:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamo](
	[IdPrestamo] [int] IDENTITY(1,1) NOT NULL,
	[IdLibro] [int] NOT NULL,
	[IdAlumno] [int] NOT NULL,
	[Nota] [text] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFinal] [date] NOT NULL,
 CONSTRAINT [PK_Prestamo] PRIMARY KEY CLUSTERED 
(
	[IdPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/10/2023 11:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [int] NOT NULL,
	[Contraseña] [text] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Libro] ON 

INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (1, N'Guerra y paz, de León Tolstói', N'La obra de León Tolstói.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (2, N'Memorias de una geisha', N'La novela de Arthur Golden.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (3, N'Frankenstein', N'La obra de Mary W. Shelley')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (4, N'Cien años de soledad', N'Una obra maestra de Gabriel García Márquez.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (5, N'El señor de los anillos (Trilogía)', N'La épica trilogía de J. R. R. Tolkien.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (6, N'1984', N'La distopía de George Orwell.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (7, N'Un mundo feliz', N'Una visión futurista de Aldous Huxley.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (8, N'Orgullo y prejuicio', N'La clásica novela de Jane Austen.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (9, N'Crimen y castigo', N'La obra maestra de Fiódor Dostoyevski.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (10, N'Lolita', N'La controvertida obra de Vladimir Nabokov.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (11, N'Ulises', N'La compleja novela de James Joyce.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (12, N'Madame Bovary', N'La historia de Gustave Flaubert.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (13, N'En busca del tiempo perdido', N'La monumental obra de Marcel Proust')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (14, N'Don Quijote de la Mancha', N'La clásica obra de Miguel de Cervantes.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (15, N'El retrato de Dorian Gray', N'La novela de Oscar Wilde.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (16, N'Ana Karenina', N'La obra de León Tolstói.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (17, N'El Principito', N'El clásico de Antoine de Saint-Exupéry.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (18, N'El proceso', N'La novela de Franz Kafka.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (19, N'El ruido y la furia', N'La obra de William Faulkner.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (20, N'Hamlet', N'La tragedia de William Shakespeare.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (21, N'Lo que el viento se llevó', N'La novela de Margaret Mitchell.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (22, N'La Odisea', N'La epopeya de Homero.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (23, N'Las uvas de la ira', N'La obra de John Steinbeck.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (24, N'El guardián entre el centeno', N'La novela de J. D. Salinger.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (25, N'Cumbres borrascosas', N'La novela de Emily Brontë.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (26, N'El gran Gatsby', N'La obra de F. Scott Fitzgerald.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (27, N'Mil soles espléndidos', N'La novela de Khaled Hosseini.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (28, N'Alicia en el país de las maravillas', N'La obra de Lewis Carroll.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (29, N'Rebelión en la granja', N'La obra de George Orwell.')
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Resumen]) VALUES (30, N'Los pilares de la tierra', N'La novela de Ken Follett')
SET IDENTITY_INSERT [dbo].[Libro] OFF
GO
SET IDENTITY_INSERT [dbo].[Prestamo] ON 

INSERT [dbo].[Prestamo] ([IdPrestamo], [IdLibro], [IdAlumno], [Nota], [FechaInicio], [FechaFinal]) VALUES (1, 1, 1, N'Nota del Prestamo 1', CAST(N'2023-10-27' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Prestamo] ([IdPrestamo], [IdLibro], [IdAlumno], [Nota], [FechaInicio], [FechaFinal]) VALUES (2, 2, 2, N'Nota del Prestamo 2', CAST(N'2023-10-28' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[Prestamo] ([IdPrestamo], [IdLibro], [IdAlumno], [Nota], [FechaInicio], [FechaFinal]) VALUES (3, 3, 3, N'Nota del Prestamo 3', CAST(N'2023-10-29' AS Date), CAST(N'2023-11-12' AS Date))
SET IDENTITY_INSERT [dbo].[Prestamo] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Dni], [Contraseña]) VALUES (1, 12345678, N'contraseña1')
INSERT [dbo].[Usuario] ([IdUsuario], [Dni], [Contraseña]) VALUES (2, 87654321, N'contraseña2')
INSERT [dbo].[Usuario] ([IdUsuario], [Dni], [Contraseña]) VALUES (3, 55555555, N'contraseña3')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Libro] FOREIGN KEY([IdLibro])
REFERENCES [dbo].[Libro] ([IdLibro])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Libro]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Usuario] FOREIGN KEY([IdLibro])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Usuario]
GO
USE [master]
GO
ALTER DATABASE [biblio-db] SET  READ_WRITE 
GO
