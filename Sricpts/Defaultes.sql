CREATE DEFAULT One
	AS 1
GO

CREATE DEFAULT NewCondition
	AS '�����'
GO

CREATE DEFAULT OdrerStatus
	AS '������'
GO

CREATE DEFAULT Zero
	AS 0
GO
--����������
EXEC sp_bindefault One, '����.[���������� ����]'
EXEC sp_bindefault One, '����.����'
EXEC sp_bindefault One, '�����.[���������� �������]'
EXEC sp_bindefault One, '[������ ������ ����].����������'
EXEC sp_bindefault One, '[������ ������ ��������].����������'
EXEC sp_bindefault One, '[�������� ��������].����������'
EXEC sp_bindefault One, '[�������� ���������].����������'
EXEC sp_bindefault NewCondition, '������.���������'
EXEC sp_bindefault NewCondition, '������������.���������'
EXEC sp_bindefault NewCondition, '����.[���������� ����]'
EXEC sp_bindefault OdrerStatus, '�����.������'
EXEC sp_bindefault Zero, '�������.[���������� ��������]'
EXEC sp_bindefault Zero, '�������.����������'
--��������
EXEC sp_unbindrule '����.[���������� ����]'
EXEC sp_unbindrule '����.����'
EXEC sp_unbindrule '�����.[���������� �������]'
EXEC sp_unbindrule '[������ ������ ����].����������'
EXEC sp_unbindrule '[������ ����� ��������].����������'
EXEC sp_unbindrule '[�������� ��������].����������'
EXEC sp_unbindrule '[�������� ���������].����������'
EXEC sp_unbindrule '������.���������'
EXEC sp_unbindrule '������������.���������'
EXEC sp_unbindrule '����.[���������� ����]'
EXEC sp_unbindrule '�����.������'
EXEC sp_unbindrule '�������.[���������� ��������]'
EXEC sp_unbindrule '�������.����������'