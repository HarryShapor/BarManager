USE Bar
GO

CREATE TABLE Бар 
(id ID identity (1,1),
Название varchar(30) not null,
Адрес varchar(100) not null,
[Контактный номер] Phone unique,
[E-mail] Email,
[Время работы] varchar(12),
[Количество мест] smallint,
[Дата открытия] date,
Описание text)

CREATE TABLE Мебель
([Инвентарный номер] ID unique,
[id бара] ID,
Название varchar(150) not null,
Состояние varchar(15) not null,
Материал varchar(50),
[Дата приобретения] date not null)

CREATE TABLE Оборудование 
([Инвентарный номер] ID unique,
[id бара] ID,
Название varchar(100) not null,
Состояние varchar(15) not null,
[Дата приобретения] date not null,
[Гарантийный срок, мес] tinyint)	

CREATE TABLE Стол 
(Номер int not null unique,
[id бара] ID,
[Количество мест] tinyint not null,
Расположение varchar(15),
Этаж tinyint not null,
Статус varchar(12) not null)

CREATE TABLE Акция 
(Название varchar(50) not null unique,
Описание text,
[Процент скидки] float(2),
[Дата начала действия] date,
[Время начала действия] time,
[Дата окончания действия] date,
[Время окончания действия] time,
[Условия выполнения] varchar(100) not null,
[Минимальная сумма] money,
[Дни недели] varchar(50))

CREATE TABLE Сотрудник 
(id ID identity (1,1),
Имя varchar(50) not null,
Фамилия varchar(50) not null,
Отчество varchar(50),
[Дата рождения] date not null,
Должность varchar(13) not null,
Телефон Phone unique,
[Адрес проживания] varchar(100) not null,
[Дата приёма на работу] date not null,
[Дата увольнения] date,
Зарплата Cash)

-----------------------------
CREATE TABLE Смена 
(id smallint not null identity (1,1),
[Время начала] time not null,
[Время окончания] time not null,
Дата date not null,
[Комментарий] varchar(30)) 
-----------------------------

CREATE TABLE ТипМеню 
(id ID identity (1,1),
Название varchar(30) not null,
Описание text,
Статус varchar(15) not null,
[Последнее изменение] date not null) 

CREATE TABLE Блюдо 
(id ID identity (1,1),
[Тип блюда] varchar(30) not null,
Название varchar(50) not null,
Масса smallint not null,
Себестоимость money,
Калорийность smallint,
[Время приготовления] smallint not null,
Описание text,
Комментарий text) 

CREATE TABLE Заказ 
(Номер ID identity (1,1),
[id сотрудника] ID,
Стол ID,
[Дата и время оформления] smalldatetime not null,
Статус varchar(15) not null,
[Способ оплаты] varchar(16),
Итого money) 

CREATE TABLE Напиток 
(id ID identity (1,1),
Название varchar(100) not null,
Тип varchar(15) not null,
Категория varchar(30) not null,
Объём smallint not null,
[Единица измерения] char(2) not null,
[Содержание алкоголя] float(2),
Описание text,
Комментарий text) 

CREATE TABLE Продукт 
(Название nvarchar(100) not null unique,
Описание text,
Категория varchar(30) not null,
[Место хранения] varchar(30),
[Температура хранения] varchar(30),	
[Цена за единицу] Cash,
Мера char(2) not null,
Количество int not null,
[Срок годности] tinyint,
[Величина срока годности] varchar(6))

CREATE TABLE Поставщик 
(Название nvarchar(30) not null unique,
Адрес varchar(100) not null,
Телефон Phone unique,
[E-mail] Email,
[Имя контактного лица] varchar(50) not null,
[Фамилия контактного лица] varchar(50) not null,
[Отчество контактного лица] varchar(50)) 

CREATE TABLE Меню 
(ТипМеню ID,
Блюдо ID,
Статус varchar(12) not null,
Цена Cash) 

CREATE TABLE [Барная карта] 
(ТипМеню ID,
Напиток ID,
Статус varchar(12) not null,
Цена Cash)	

CREATE TABLE Бронь 
(Сотрудник ID,
[Номер стола] ID,
[Дата бронирования] smalldatetime not null,
[Телефон клиента] Phone,
[Имя клиента] varchar(50) not null,
[Количество человек] tinyint,
Комментарий text) 

CREATE TABLE [Состав заказа блюд] 
(Заказ ID,
Блюдо ID,
Количество smallint not null,
Стоимость Cash) 

CREATE TABLE [Состав заказа напитков] 
(Заказ ID,
Напиток ID,
Количество smallint not null,
Стоимость Cash) 

CREATE TABLE Рецепт 
(Продукт nvarchar(100) not null,
Блюдо ID,
Количество smallint,
[Единица измерения] varchar(5),
Состояние varchar(30)) 

CREATE TABLE [Меню бара] 
(ТипМеню ID,
Бар ID,
Статус varchar(12) not null) 

CREATE TABLE Коктейль 
([Напиток-коктейль] ID,
Напиток ID, 
Количество smallint,
[Единица измерения] char(2)) 

CREATE TABLE [Акция заказа] 
(Акция varchar(50) not null,
Заказ ID,
[Сумма скидки] money) 

CREATE TABLE [Акции бара] 
(Акция varchar(50)  not null,
[id бара] ID,
[Дата начала действия] date,
[Дата окончания действия] date) 

CREATE TABLE [Поставка напитков] 
(Поставщик nvarchar(30) not null,
Напиток ID,
Бар ID,
[Цена за единицу] Cash,
Количество smallint not null) 

CREATE TABLE [Поставка продуктов] 
(Поставщик nvarchar(30) not null,
Продукт nvarchar(100) not null,
Бар ID,
[Цена за единицу] Cash,
Количество smallint not null) 

CREATE TABLE [График работы] 
(Сотрудник ID,
Бар ID,
Смена smallint not null,
Комментарий varchar(13) not null) --статус