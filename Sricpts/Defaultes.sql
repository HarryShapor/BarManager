CREATE DEFAULT One
	AS 1
GO

CREATE DEFAULT NewCondition
	AS 'Новое'
GO

CREATE DEFAULT OdrerStatus
	AS 'Принят'
GO

CREATE DEFAULT Zero
	AS 0
GO
--Добавление
EXEC sp_bindefault One, 'Стол.[Количество мест]'
EXEC sp_bindefault One, 'Стол.Этаж'
EXEC sp_bindefault One, 'Бронь.[Количество человек]'
EXEC sp_bindefault One, '[Состав заказа блюд].Количество'
EXEC sp_bindefault One, '[Состав заказа напитков].Количество'
EXEC sp_bindefault One, '[Поставка напитков].Количество'
EXEC sp_bindefault One, '[Поставка продуктов].Количество'
EXEC sp_bindefault NewCondition, 'Мебель.Состояние'
EXEC sp_bindefault NewCondition, 'Оборудование.Состояние'
EXEC sp_bindefault NewCondition, 'Стол.[Количество мест]'
EXEC sp_bindefault OdrerStatus, 'Заказ.Статус'
EXEC sp_bindefault Zero, 'Напиток.[Содержание алкоголя]'
EXEC sp_bindefault Zero, 'Продукт.Количество'
--Удаление
EXEC sp_unbindrule 'Стол.[Количество мест]'
EXEC sp_unbindrule 'Стол.Этаж'
EXEC sp_unbindrule 'Бронь.[Количество человек]'
EXEC sp_unbindrule '[Состав заказа блюд].Количество'
EXEC sp_unbindrule '[Состав заказ напитков].Количество'
EXEC sp_unbindrule '[Поставка напитков].Количество'
EXEC sp_unbindrule '[Поставка продуктов].Количество'
EXEC sp_unbindrule 'Мебель.Состояние'
EXEC sp_unbindrule 'Оборудование.Состояние'
EXEC sp_unbindrule 'Стол.[Количество мест]'
EXEC sp_unbindrule 'Заказ.Статус'
EXEC sp_unbindrule 'Напиток.[Содержание алкоголя]'
EXEC sp_unbindrule 'Продукт.Количество'