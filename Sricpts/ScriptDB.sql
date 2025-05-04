USE MASTER
GO
CREATE DATABASE Bar
ON
	(NAME = 'BarDB',
	FILENAME = 'H:\РГРТУ\Курсовые\КП КСПБД\Bar.mdf',
	SIZE = 10MB,
	MAXSIZE = 10GB,
	FILEGROWTH = 1GB)
LOG ON
	(NAME = 'BarLog',
	FILENAME = 'H:\РГРТУ\Курсовые\КП КСПБД\Bar.ldf',
	SIZE = 1MB,
	MAXSIZE = 2GB,
	FILEGROWTH = 100MB)
GO




