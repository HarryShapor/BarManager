CREATE RULE NumberPhone
	AS
	(@number like '+[0-9 -]%' or @number like '[0-9 ]%')
			and @number not like '%[^+0-9 -]%'
			and LEN(@number) between 7 and 16
GO

CREATE RULE MoreThanZero
	AS
	@value > 0
GO

CREATE RULE LiteralWords
	AS
	@word like '%[А-Яа-яЁё -]%' and @word not like '%[^А-Яа-яЁё -]%'
GO

CREATE RULE EmailRule
	--AS @email like '[a-z0-9._%+-]%@[a-z0-9.-]%.[a-z]{2,}%'
	--AS @email like '^([a-zA-Z0-9_\-]+\.)*[a-zA-Z0-9_\-]+@([a-zA-Z0-9_\-]+\.)+(com|org|edu|net|ca|au|coop|de|ee|es|fm|fr|gr|ie|in|it|jp|me|nl|nu|ru|uk|us|za)$'
	AS @email LIKE '%_@%_.%_'
		AND @email NOT LIKE '%[^a-zA-Z0-9@._-]%'
		AND @email LIKE '%@%.%'
		AND LEN(@email) BETWEEN 5 AND 100
GO

CREATE RULE WorkingHours
	AS @time like '[0-1][0-9]:[0-5][0-9]-[0-1][0-9]:[0-5][0-9]' or @time like '2[0-3]:[0-5][0-9]-2[0-3]:[0-5][0-9]'
	or @time like '2[0-3]:[0-5][0-9]-[0-1][0-9]:[0-5][0-9]' or @time like '[0-1][0-9]:[0-5][0-9]-2[0-3]:[0-5][0-9]'
GO

CREATE RULE ConditionFurniture
	AS
	@condition in ('Новое','Отличное', 'Хорошее', 'Потрёпанное', 
		'Под замену', 'Требует ремонта')
GO

CREATE RULE ConditionEquipment
	AS
	@condition in ('Новое', 'Отличное', 'Хорошее',
			'Требует ремонта', 'Под списание', 'Устаревшее')
GO

CREATE RULE TableLocation
	AS
	@location in ('Барная стойка', 'В центре', 'У стены', 'На веранде', 'У окна')
GO

CREATE RULE TableStatus
	AS
	@status in ('Свободен', 'Занят', 'Забронирован')
GO

CREATE RULE Percentages
	AS @percentages >= 0 and @percentages < 100
GO

CREATE RULE Post
	AS @post in ('Бармен','Официант','Администратор','Повар')
GO

CREATE RULE TypeMenuStatus
	AS @status in ('Активно', 'Неактивно', 'Редактируется')
GO

CREATE RULE OrderStatus
	AS @status in ('Принят', 'Готовится', 'Оплачен', 'Ожидает оплаты', 'Отменён')
GO

CREATE RULE OrderPayment
	AS @status in ('Наличными', 'Картой', 'Подарочная карта')
GO

CREATE RULE DrinkType
	AS @type in ('Алкогольный', 'Безалкогольный')
GO

CREATE RULE DrinkUnitMeasurement
	AS @unit in ('мл','л')
GO

CREATE RULE Measure
	AS @measure in ('шт', 'г', 'кг', 'л', 'мл')
GO

CREATE RULE GreaterThanZero
	AS @value >= 0
GO

CREATE RULE Term
	AS @term in ('день', 'неделя', 'месяц', 'год')
GO

CREATE RULE MenuStatus
	AS @status in ('В наличии', 'Закончилось')
GO

CREATE RULE	BarCardStatus
	AS @status in ('В наличии', 'Закончился')
GO

CREATE RULE WorkSheduleComment
	AS @comment in ('Запланировано', 'Активно', 'Отработано',
	'Больничный', 'Отпуск', 'Отгул', 'Другое', 'Прогул', 'Смена')
GO

CREATE RULE MeasuringRecipe
	AS @measure in ('шт.','г.','кг.','ст.','ч.л.','ст.л.', 'л.', 'мл.')
GO

CREATE RULE StorageLocation
	AS @storage in ('Холодильник ', 'Морозильная камера', 'Кладовая ', 'Шкаф ', 'Ящик', 'Контейнер ')
GO

DROP RULE NumberPhone
DROP RULE MoreThanZero
DROP RULE LiteralWords
DROP RULE EmailRule
DROP RULE WorkingHours
DROP RULE ConditionFurniture
DROP RULE ConditionEquipment
DROP RULE TableLocation
DROP RULE TableStatus
DROP RULE Percentages
DROP RULE Post
DROP RULE TypeMenuStatus
DROP RULE OrderStatus
DROP RULE OrderPayment
DROP RULE DrinkType
DROP RULE DrinkUnitMeasurement
DROP RULE Measure
DROP RULE GreaterThanZero
DROP RULE Term
DROP RULE MenuStatus
DROP RULE BarCardStatus
DROP RULE WorkSheduleComment
DROP RULE StorageLocation
DROP RULE MeasuringRecipe

--Добавление
--EXEC sp_bindrule NumberPhone, Phone

EXEC sp_bindrule MoreThanZero, 'Бар.[Количество мест]'
EXEC sp_bindrule MoreThanZero, 'Стол.[Количество мест]'
--EXEC sp_bindrule MoreThanZero, 'Акция.[Минимальная сумма]'
EXEC sp_bindrule MoreThanZero, 'Блюдо.Масса'
EXEC sp_bindrule MoreThanZero, 'Блюдо.Себестоимость'
EXEC sp_bindrule MoreThanZero, 'Блюдо.Калорийность'
EXEC sp_bindrule MoreThanZero, 'Блюдо.[Время приготовления]'
EXEC sp_bindrule MoreThanZero, 'Заказ.Итого'
EXEC sp_bindrule MoreThanZero, 'Напиток.Объём'
EXEC sp_bindrule MoreThanZero, 'Продукт.[Срок годности]'
EXEC sp_bindrule MoreThanZero, 'Бронь.[Количество человек]'
EXEC sp_bindrule MoreThanZero, '[Состав заказа блюд].Количество'
EXEC sp_bindrule MoreThanZero, '[Состав заказа напитков].Количество'
EXEC sp_bindrule MoreThanZero, 'Коктейль.Количество'
EXEC sp_bindrule MoreThanZero, '[Поставка напитков].Количество'
EXEC sp_bindrule MoreThanZero, '[Поставка продуктов].Количество'

EXEC sp_bindrule MoreThanZero, Cash

EXEC sp_bindrule LiteralWords, 'Сотрудник.Имя'
EXEC sp_bindrule LiteralWords, 'Сотрудник.Фамилия'
EXEC sp_bindrule LiteralWords, 'Сотрудник.Отчество'
EXEC sp_bindrule LiteralWords, 'Поставщик.[Имя контактного лица]'
EXEC sp_bindrule LiteralWords, 'Поставщик.[Фамилия контактного лица]'
EXEC sp_bindrule LiteralWords, 'Поставщик.[Отчество контактного лица]'

--EXEC sp_bindrule EmailRule, Email
--EXEC sp_unbindrule Email

EXEC sp_bindrule WorkingHours, 'Бар.[Время работы]'

EXEC sp_bindrule ConditionFurniture, 'Мебель.Состояние'

EXEC sp_bindrule ConditionEquipment, 'Оборудование.Состояние'

EXEC sp_bindrule TableLocation, 'Стол.Расположение'

EXEC sp_bindrule TableStatus, 'Стол.Статус'

EXEC sp_bindrule Post, 'Сотрудник.Должность'

EXEC sp_bindrule TypeMenuStatus, 'ТипМеню.Статус'
EXEC sp_bindrule TypeMenuStatus, '[Меню бара].Статус'

EXEC sp_bindrule OrderStatus, 'Заказ.Статус'

EXEC sp_bindrule OrderPayment, 'Заказ.[Способ оплаты]'

EXEC sp_bindrule DrinkType, 'Напиток.Тип'

EXEC sp_bindrule Percentages, 'Напиток.[Содержание алкоголя]'
EXEC sp_bindrule Percentages, 'Акция.[Процент скидки]'

EXEC sp_bindrule Measure, 'Продукт.Мера'

EXEC sp_bindrule GreaterThanZero, 'Продукт.Количество'

EXEC sp_bindrule Term, 'Продукт.[Величина срока годности]'

EXEC sp_bindrule MenuStatus, 'Меню.Статус'


EXEC sp_bindrule BarCardStatus, '[Барная карта].Статус'

EXEC sp_bindrule DrinkUnitMeasurement, 'Коктейль.[Единица измерения]'
EXEC sp_bindrule DrinkUnitMeasurement, 'Напиток.[Единица измерения]'

EXEC sp_bindrule WorkSheduleComment, '[График работы].Комментарий'

EXEC sp_bindrule MeasuringRecipe, 'Рецепт.[Единица измерения]'

EXEC sp_bindrule StorageLocation, 'Продукт.[Место хранения]'
--Удаление

--EXEC sp_unbindrule Phone

EXEC sp_unbindrule 'Бар.[Количество мест]'
EXEC sp_unbindrule 'Стол.[Количество мест]'
--EXEC sp_unbindrule 'Акция.[Минимальная сумма]'
EXEC sp_unbindrule 'Блюдо.Масса'
EXEC sp_unbindrule 'Блюдо.Себестоимость'
EXEC sp_unbindrule 'Блюдо.Калорийность'
EXEC sp_unbindrule 'Блюдо.[Время приготовления]'
EXEC sp_unbindrule 'Заказ.Итого'
EXEC sp_unbindrule 'Напиток.Объём'
EXEC sp_unbindrule 'Продукт.[Срок годности]'
EXEC sp_unbindrule 'Бронь.[Количество человек]'
EXEC sp_unbindrule '[Состав заказа блюд].Количество'
EXEC sp_unbindrule '[Состав заказа напитков].Количество'
EXEC sp_unbindrule 'Коктейль.Количество'
EXEC sp_unbindrule '[Поставка напитков].Количество'
EXEC sp_unbindrule '[Поставка продуктов].Количество'

--EXEC sp_unbindrule Cash

EXEC sp_unbindrule 'Сотрудник.Имя'
EXEC sp_unbindrule 'Сотрудник.Фамилия'
EXEC sp_unbindrule 'Сотрудник.Отчество'
EXEC sp_unbindrule 'Поставщик.[Имя контактного лица]'
EXEC sp_unbindrule 'Поставщик.[Фамилия контактного лица]'
EXEC sp_unbindrule 'Поставщик.[Отчество контактного лица]'

--EXEC sp_unbindrule Email

EXEC sp_unbindrule 'Бар.[Время работы]'

EXEC sp_unbindrule 'Мебель.Состояние'

EXEC sp_unbindrule 'Оборудование.Состояние'

EXEC sp_unbindrule 'Стол.Расположение'

EXEC sp_unbindrule 'Стол.Статус'

EXEC sp_unbindrule 'Сотрудник.Должность'

EXEC sp_unbindrule 'ТипМеню.Статус'

EXEC sp_unbindrule 'Заказ.Статус'

EXEC sp_unbindrule 'Заказ.[Способ оплаты]'

EXEC sp_unbindrule 'Напиток.Тип'

EXEC sp_unbindrule 'Напиток.[Содержание алкоголя]'
EXEC sp_unbindrule 'Акция.[Процент скидки]'

EXEC sp_unbindrule 'Продукт.Мера'

EXEC sp_unbindrule 'Продукт.Количество'

EXEC sp_unbindrule 'Продукт.[Величина срока годности]'

EXEC sp_unbindrule 'Меню.Статус'

EXEC sp_unbindrule '[Барная карта].Статус'

EXEC sp_unbindrule 'Коктейль.[Единица измерения]'
EXEC sp_unbindrule 'Напиток.[Единица измерения]'

EXEC sp_unbindrule '[График работы].Комментарий'

EXEC sp_unbindrule 'Рецепт.[Единица измерения]'

EXEC sp_unbindrule 'Продукт.[Место хранения]'