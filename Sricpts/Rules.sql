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
	@word like '%[�-��-��� -]%' and @word not like '%[^�-��-��� -]%'
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
	@condition in ('�����','��������', '�������', '����������', 
		'��� ������', '������� �������')
GO

CREATE RULE ConditionEquipment
	AS
	@condition in ('�����', '��������', '�������',
			'������� �������', '��� ��������', '����������')
GO

CREATE RULE TableLocation
	AS
	@location in ('������ ������', '� ������', '� �����', '�� �������', '� ����')
GO

CREATE RULE TableStatus
	AS
	@status in ('��������', '�����', '������������')
GO

CREATE RULE Percentages
	AS @percentages >= 0 and @percentages < 100
GO

CREATE RULE Post
	AS @post in ('������','��������','�������������','�����')
GO

CREATE RULE TypeMenuStatus
	AS @status in ('�������', '���������', '�������������')
GO

CREATE RULE OrderStatus
	AS @status in ('������', '���������', '�������', '������� ������', '������')
GO

CREATE RULE OrderPayment
	AS @status in ('���������', '������', '���������� �����')
GO

CREATE RULE DrinkType
	AS @type in ('�����������', '��������������')
GO

CREATE RULE DrinkUnitMeasurement
	AS @unit in ('��','�')
GO

CREATE RULE Measure
	AS @measure in ('��', '�', '��', '�', '��')
GO

CREATE RULE GreaterThanZero
	AS @value >= 0
GO

CREATE RULE Term
	AS @term in ('����', '������', '�����', '���')
GO

CREATE RULE MenuStatus
	AS @status in ('� �������', '�����������')
GO

CREATE RULE	BarCardStatus
	AS @status in ('� �������', '����������')
GO

CREATE RULE WorkSheduleComment
	AS @comment in ('�������������', '�������', '����������',
	'����������', '������', '�����', '������', '������', '�����')
GO

CREATE RULE MeasuringRecipe
	AS @measure in ('��.','�.','��.','��.','�.�.','��.�.', '�.', '��.')
GO

CREATE RULE StorageLocation
	AS @storage in ('����������� ', '����������� ������', '�������� ', '���� ', '����', '��������� ')
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

--����������
--EXEC sp_bindrule NumberPhone, Phone

EXEC sp_bindrule MoreThanZero, '���.[���������� ����]'
EXEC sp_bindrule MoreThanZero, '����.[���������� ����]'
--EXEC sp_bindrule MoreThanZero, '�����.[����������� �����]'
EXEC sp_bindrule MoreThanZero, '�����.�����'
EXEC sp_bindrule MoreThanZero, '�����.�������������'
EXEC sp_bindrule MoreThanZero, '�����.������������'
EXEC sp_bindrule MoreThanZero, '�����.[����� �������������]'
EXEC sp_bindrule MoreThanZero, '�����.�����'
EXEC sp_bindrule MoreThanZero, '�������.�����'
EXEC sp_bindrule MoreThanZero, '�������.[���� ��������]'
EXEC sp_bindrule MoreThanZero, '�����.[���������� �������]'
EXEC sp_bindrule MoreThanZero, '[������ ������ ����].����������'
EXEC sp_bindrule MoreThanZero, '[������ ������ ��������].����������'
EXEC sp_bindrule MoreThanZero, '��������.����������'
EXEC sp_bindrule MoreThanZero, '[�������� ��������].����������'
EXEC sp_bindrule MoreThanZero, '[�������� ���������].����������'

EXEC sp_bindrule MoreThanZero, Cash

EXEC sp_bindrule LiteralWords, '���������.���'
EXEC sp_bindrule LiteralWords, '���������.�������'
EXEC sp_bindrule LiteralWords, '���������.��������'
EXEC sp_bindrule LiteralWords, '���������.[��� ����������� ����]'
EXEC sp_bindrule LiteralWords, '���������.[������� ����������� ����]'
EXEC sp_bindrule LiteralWords, '���������.[�������� ����������� ����]'

--EXEC sp_bindrule EmailRule, Email
--EXEC sp_unbindrule Email

EXEC sp_bindrule WorkingHours, '���.[����� ������]'

EXEC sp_bindrule ConditionFurniture, '������.���������'

EXEC sp_bindrule ConditionEquipment, '������������.���������'

EXEC sp_bindrule TableLocation, '����.������������'

EXEC sp_bindrule TableStatus, '����.������'

EXEC sp_bindrule Post, '���������.���������'

EXEC sp_bindrule TypeMenuStatus, '�������.������'
EXEC sp_bindrule TypeMenuStatus, '[���� ����].������'

EXEC sp_bindrule OrderStatus, '�����.������'

EXEC sp_bindrule OrderPayment, '�����.[������ ������]'

EXEC sp_bindrule DrinkType, '�������.���'

EXEC sp_bindrule Percentages, '�������.[���������� ��������]'
EXEC sp_bindrule Percentages, '�����.[������� ������]'

EXEC sp_bindrule Measure, '�������.����'

EXEC sp_bindrule GreaterThanZero, '�������.����������'

EXEC sp_bindrule Term, '�������.[�������� ����� ��������]'

EXEC sp_bindrule MenuStatus, '����.������'


EXEC sp_bindrule BarCardStatus, '[������ �����].������'

EXEC sp_bindrule DrinkUnitMeasurement, '��������.[������� ���������]'
EXEC sp_bindrule DrinkUnitMeasurement, '�������.[������� ���������]'

EXEC sp_bindrule WorkSheduleComment, '[������ ������].�����������'

EXEC sp_bindrule MeasuringRecipe, '������.[������� ���������]'

EXEC sp_bindrule StorageLocation, '�������.[����� ��������]'
--��������

--EXEC sp_unbindrule Phone

EXEC sp_unbindrule '���.[���������� ����]'
EXEC sp_unbindrule '����.[���������� ����]'
--EXEC sp_unbindrule '�����.[����������� �����]'
EXEC sp_unbindrule '�����.�����'
EXEC sp_unbindrule '�����.�������������'
EXEC sp_unbindrule '�����.������������'
EXEC sp_unbindrule '�����.[����� �������������]'
EXEC sp_unbindrule '�����.�����'
EXEC sp_unbindrule '�������.�����'
EXEC sp_unbindrule '�������.[���� ��������]'
EXEC sp_unbindrule '�����.[���������� �������]'
EXEC sp_unbindrule '[������ ������ ����].����������'
EXEC sp_unbindrule '[������ ������ ��������].����������'
EXEC sp_unbindrule '��������.����������'
EXEC sp_unbindrule '[�������� ��������].����������'
EXEC sp_unbindrule '[�������� ���������].����������'

--EXEC sp_unbindrule Cash

EXEC sp_unbindrule '���������.���'
EXEC sp_unbindrule '���������.�������'
EXEC sp_unbindrule '���������.��������'
EXEC sp_unbindrule '���������.[��� ����������� ����]'
EXEC sp_unbindrule '���������.[������� ����������� ����]'
EXEC sp_unbindrule '���������.[�������� ����������� ����]'

--EXEC sp_unbindrule Email

EXEC sp_unbindrule '���.[����� ������]'

EXEC sp_unbindrule '������.���������'

EXEC sp_unbindrule '������������.���������'

EXEC sp_unbindrule '����.������������'

EXEC sp_unbindrule '����.������'

EXEC sp_unbindrule '���������.���������'

EXEC sp_unbindrule '�������.������'

EXEC sp_unbindrule '�����.������'

EXEC sp_unbindrule '�����.[������ ������]'

EXEC sp_unbindrule '�������.���'

EXEC sp_unbindrule '�������.[���������� ��������]'
EXEC sp_unbindrule '�����.[������� ������]'

EXEC sp_unbindrule '�������.����'

EXEC sp_unbindrule '�������.����������'

EXEC sp_unbindrule '�������.[�������� ����� ��������]'

EXEC sp_unbindrule '����.������'

EXEC sp_unbindrule '[������ �����].������'

EXEC sp_unbindrule '��������.[������� ���������]'
EXEC sp_unbindrule '�������.[������� ���������]'

EXEC sp_unbindrule '[������ ������].�����������'

EXEC sp_unbindrule '������.[������� ���������]'

EXEC sp_unbindrule '�������.[����� ��������]'