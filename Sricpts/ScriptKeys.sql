 ALTER TABLE Бар
	ADD CONSTRAINT PK_Бар primary key (id)

ALTER TABLE Мебель
	ADD CONSTRAINT PK_Мебель primary key ([Инвентарный номер])

ALTER TABLE Мебель
	ADD CONSTRAINT FK_Мебель_Бар foreign key ([id бара]) 
	references Бар(id)

ALTER TABLE Оборудование
	ADD CONSTRAINT PK_Оборудование primary key ([Инвентарный номер])

ALTER TABLE Оборудование
	ADD CONSTRAINT FK_Оборудование_Бар foreign key ([id бара]) 
	references Бар(id)

ALTER TABLE Стол
	ADD CONSTRAINT PK_Стол primary key (Номер)

ALTER TABLE Стол
	ADD CONSTRAINT FK_Стол_Бар foreign key ([id бара]) 
	references Бар(id)

ALTER TABLE Акция
	ADD CONSTRAINT PK_Акция primary key (Название)

ALTER TABLE Сотрудник
	ADD CONSTRAINT PK_Сотрудник primary key (id)

ALTER TABLE Смена
	ADD CONSTRAINT PK_Смена primary key (id)

ALTER TABLE ТипМеню
	ADD CONSTRAINT PK_ТипМеню primary key (id)

ALTER TABLE Блюдо
	ADD CONSTRAINT PK_Блюдо primary key (id)

ALTER TABLE Заказ
	ADD CONSTRAINT PK_Заказ primary key (Номер)

ALTER TABLE Заказ
	ADD CONSTRAINT FK_Заказ_Сотрудник foreign key ([id сотрудника]) 
	references Сотрудник(id)

ALTER TABLE Заказ
	ADD CONSTRAINT FK_Заказ_Стол foreign key (Стол) 
	references Стол(Номер)

ALTER TABLE Напиток
	ADD CONSTRAINT PK_Напиток primary key (id)

ALTER TABLE Продукт
	ADD CONSTRAINT PK_Продукт primary key (Название)

ALTER TABLE Поставщик
	ADD CONSTRAINT PK_Поставщик primary key (Название)

ALTER TABLE Меню
	ADD CONSTRAINT PK_Меню primary key (ТипМеню, Блюдо)

ALTER TABLE Меню
	ADD CONSTRAINT FK_Меню_ТипМеню foreign key (ТипМеню) 
	references ТипМеню(id)

ALTER TABLE Меню
	ADD CONSTRAINT FK_Меню_Блюдо foreign key (Блюдо) 
	references Блюдо(id)

ALTER TABLE [Барная карта]
	ADD CONSTRAINT PK_Барная_карта primary key (ТипМеню, Напиток)

ALTER TABLE [Барная карта]
	ADD CONSTRAINT FK_Барная_карта_ТипМеню foreign key (ТипМеню) 
	references ТипМеню(id)

ALTER TABLE [Барная карта]
	ADD CONSTRAINT FK_Барная_карта_Напиток foreign key (Напиток) 
	references Напиток(id)

ALTER TABLE Бронь
	ADD CONSTRAINT PK_Бронь primary key (Сотрудник, [Номер стола], [Дата бронирования])

ALTER TABLE Бронь
	ADD CONSTRAINT FK_Бронь_Сотрудник foreign key (Сотрудник) 
	references Сотрудник(id)

ALTER TABLE Бронь
	ADD CONSTRAINT FK_Бронь_Стол foreign key ([Номер стола]) 
	references Стол(Номер)

ALTER TABLE [Состав заказа блюд]
	ADD CONSTRAINT PK_Состав_заказа_блюд primary key (Заказ, Блюдо)

ALTER TABLE [Состав заказа блюд]
	ADD CONSTRAINT FK_Состав_заказа_блюд_Заказ foreign key (Заказ) 
	references Заказ(Номер)

ALTER TABLE [Состав заказа блюд]
	ADD CONSTRAINT FK_Состав_заказа_блюд_Блюдо foreign key (Блюдо) 
	references Блюдо(id)

ALTER TABLE [Состав заказа напитков]
	ADD CONSTRAINT PK_Состав_заказа_напитков primary key (Заказ, Напиток)

ALTER TABLE [Состав заказа напитков]
	ADD CONSTRAINT FK_Состав_заказа_напитков_Напиток foreign key (Напиток) 
	references Напиток(id)

ALTER TABLE [Состав заказа напитков]
	ADD CONSTRAINT FK_Состав_заказа_напитков_Заказ foreign key (Заказ) 
	references Заказ(Номер)

ALTER TABLE Рецепт
	ADD CONSTRAINT PK_Рецепт primary key (Продукт, Блюдо)

ALTER TABLE Рецепт
	ADD CONSTRAINT FK_Рецепт_Продукт foreign key (Продукт) 
	references Продукт(Название)

ALTER TABLE Рецепт
	ADD CONSTRAINT FK_Рецепт_Блюдо foreign key (Блюдо) 
	references Блюдо(id)

ALTER TABLE [Меню бара]
	ADD CONSTRAINT PK_Меню_бара primary key (ТипМеню, Бар)


ALTER TABLE [Меню бара]
	ADD CONSTRAINT FK_Меню_бара_ТипМеню foreign key (ТипМеню) 
	references ТипМеню(id)

ALTER TABLE [Меню бара]
	ADD CONSTRAINT FK_Меню_бара_Бар foreign key (Бар) 
	references Бар(id)

ALTER TABLE Коктейль
	ADD CONSTRAINT PK_Коктейль primary key ([Напиток-коктейль], Напиток)

ALTER TABLE Коктейль
	ADD CONSTRAINT FK_Коктейль_Напиток_коктейль foreign key ([Напиток-коктейль]) 
	references Напиток(id)

ALTER TABLE Коктейль
	ADD CONSTRAINT FK_Коктейль_Напиток foreign key (Напиток) 
	references Напиток(id)

ALTER TABLE [Акция заказа]
	ADD CONSTRAINT PK_Акция_заказа primary key (Акция, Заказ)

ALTER TABLE [Акция заказа]
	ADD CONSTRAINT FK_Акция_заказа_Акция foreign key (Акция) 
	references Акция(Название)

ALTER TABLE [Акция заказа]
	ADD CONSTRAINT FK_Акция_заказа_Заказ foreign key (Заказ) 
	references Заказ(Номер)

ALTER TABLE [Акции бара]
	ADD CONSTRAINT PK_Акция_бара primary key (Акция, [id бара])

ALTER TABLE [Акции бара]
	ADD CONSTRAINT FK_Акция_бара_Заказ foreign key (Акция) 
	references Акция(Название)

ALTER TABLE [Акции бара]
	ADD CONSTRAINT FK_Акция_бара_Бар foreign key ([id бара]) 
	references Бар(id)

ALTER TABLE [Поставка напитков]
	ADD CONSTRAINT PK_Поставка_напитков primary key (Поставщик, Напиток, Бар)

ALTER TABLE [Поставка напитков]
	ADD CONSTRAINT FK_Поставка_напитков_Поставщик foreign key (Поставщик) 
	references Поставщик(Название)

ALTER TABLE [Поставка напитков]
	ADD CONSTRAINT FK_Поставка_напитков_Напиток foreign key (Напиток) 
	references Напиток(id)

ALTER TABLE [Поставка напитков]
	ADD CONSTRAINT FK_Поставка_напитков_Бар foreign key (Бар) 
	references Бар(id)

ALTER TABLE [Поставка продуктов]
	ADD CONSTRAINT PK_Поставка_продуктов primary key (Поставщик, Продукт, Бар)

ALTER TABLE [Поставка продуктов]
	ADD CONSTRAINT FK_Поставка_продуктов_Поставщик foreign key (Поставщик) 
	references Поставщик(Название)

ALTER TABLE [Поставка продуктов]
	ADD CONSTRAINT FK_Поставка_продуктов_Продукт foreign key (Продукт) 
	references Продукт(Название)

ALTER TABLE [Поставка продуктов]
	ADD CONSTRAINT FK_Поставка_продуктов_Бар foreign key (Бар) 
	references Бар(id)

ALTER TABLE [График работы]
	ADD CONSTRAINT PK_График_работы primary key (Сотрудник, Бар, Смена)

ALTER TABLE [График работы]
	ADD CONSTRAINT FK_График_работы_Сотрудник foreign key (Сотрудник) 
	references Сотрудник(id)

ALTER TABLE [График работы]
	ADD CONSTRAINT FK_График_работы_Бар foreign key (Бар) 
	references Бар(id)

ALTER TABLE [График работы]
	ADD CONSTRAINT FK_График_работы_Смена foreign key (Смена) 
	references Смена(id)