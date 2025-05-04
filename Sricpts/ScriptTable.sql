USE Bar
GO

CREATE TABLE ��� 
(id ID identity (1,1),
�������� varchar(30) not null,
����� varchar(100) not null,
[���������� �����] Phone unique,
[E-mail] Email,
[����� ������] varchar(12),
[���������� ����] smallint,
[���� ��������] date,
�������� text)

CREATE TABLE ������
([����������� �����] ID unique,
[id ����] ID,
�������� varchar(150) not null,
��������� varchar(15) not null,
�������� varchar(50),
[���� ������������] date not null)

CREATE TABLE ������������ 
([����������� �����] ID unique,
[id ����] ID,
�������� varchar(100) not null,
��������� varchar(15) not null,
[���� ������������] date not null,
[����������� ����, ���] tinyint)	

CREATE TABLE ���� 
(����� int not null unique,
[id ����] ID,
[���������� ����] tinyint not null,
������������ varchar(15),
���� tinyint not null,
������ varchar(12) not null)

CREATE TABLE ����� 
(�������� varchar(50) not null unique,
�������� text,
[������� ������] float(2),
[���� ������ ��������] date,
[����� ������ ��������] time,
[���� ��������� ��������] date,
[����� ��������� ��������] time,
[������� ����������] varchar(100) not null,
[����������� �����] money,
[��� ������] varchar(50))

CREATE TABLE ��������� 
(id ID identity (1,1),
��� varchar(50) not null,
������� varchar(50) not null,
�������� varchar(50),
[���� ��������] date not null,
��������� varchar(13) not null,
������� Phone unique,
[����� ����������] varchar(100) not null,
[���� ����� �� ������] date not null,
[���� ����������] date,
�������� Cash)

-----------------------------
CREATE TABLE ����� 
(id smallint not null identity (1,1),
[����� ������] time not null,
[����� ���������] time not null,
���� date not null,
[�����������] varchar(30)) 
-----------------------------

CREATE TABLE ������� 
(id ID identity (1,1),
�������� varchar(30) not null,
�������� text,
������ varchar(15) not null,
[��������� ���������] date not null) 

CREATE TABLE ����� 
(id ID identity (1,1),
[��� �����] varchar(30) not null,
�������� varchar(50) not null,
����� smallint not null,
������������� money,
������������ smallint,
[����� �������������] smallint not null,
�������� text,
����������� text) 

CREATE TABLE ����� 
(����� ID identity (1,1),
[id ����������] ID,
���� ID,
[���� � ����� ����������] smalldatetime not null,
������ varchar(15) not null,
[������ ������] varchar(16),
����� money) 

CREATE TABLE ������� 
(id ID identity (1,1),
�������� varchar(100) not null,
��� varchar(15) not null,
��������� varchar(30) not null,
����� smallint not null,
[������� ���������] char(2) not null,
[���������� ��������] float(2),
�������� text,
����������� text) 

CREATE TABLE ������� 
(�������� nvarchar(100) not null unique,
�������� text,
��������� varchar(30) not null,
[����� ��������] varchar(30),
[����������� ��������] varchar(30),	
[���� �� �������] Cash,
���� char(2) not null,
���������� int not null,
[���� ��������] tinyint,
[�������� ����� ��������] varchar(6))

CREATE TABLE ��������� 
(�������� nvarchar(30) not null unique,
����� varchar(100) not null,
������� Phone unique,
[E-mail] Email,
[��� ����������� ����] varchar(50) not null,
[������� ����������� ����] varchar(50) not null,
[�������� ����������� ����] varchar(50)) 

CREATE TABLE ���� 
(������� ID,
����� ID,
������ varchar(12) not null,
���� Cash) 

CREATE TABLE [������ �����] 
(������� ID,
������� ID,
������ varchar(12) not null,
���� Cash)	

CREATE TABLE ����� 
(��������� ID,
[����� �����] ID,
[���� ������������] smalldatetime not null,
[������� �������] Phone,
[��� �������] varchar(50) not null,
[���������� �������] tinyint,
����������� text) 

CREATE TABLE [������ ������ ����] 
(����� ID,
����� ID,
���������� smallint not null,
��������� Cash) 

CREATE TABLE [������ ������ ��������] 
(����� ID,
������� ID,
���������� smallint not null,
��������� Cash) 

CREATE TABLE ������ 
(������� nvarchar(100) not null,
����� ID,
���������� smallint,
[������� ���������] varchar(5),
��������� varchar(30)) 

CREATE TABLE [���� ����] 
(������� ID,
��� ID,
������ varchar(12) not null) 

CREATE TABLE �������� 
([�������-��������] ID,
������� ID, 
���������� smallint,
[������� ���������] char(2)) 

CREATE TABLE [����� ������] 
(����� varchar(50) not null,
����� ID,
[����� ������] money) 

CREATE TABLE [����� ����] 
(����� varchar(50)  not null,
[id ����] ID,
[���� ������ ��������] date,
[���� ��������� ��������] date) 

CREATE TABLE [�������� ��������] 
(��������� nvarchar(30) not null,
������� ID,
��� ID,
[���� �� �������] Cash,
���������� smallint not null) 

CREATE TABLE [�������� ���������] 
(��������� nvarchar(30) not null,
������� nvarchar(100) not null,
��� ID,
[���� �� �������] Cash,
���������� smallint not null) 

CREATE TABLE [������ ������] 
(��������� ID,
��� ID,
����� smallint not null,
����������� varchar(13) not null) --������