 ALTER TABLE ���
	ADD CONSTRAINT PK_��� primary key (id)

ALTER TABLE ������
	ADD CONSTRAINT PK_������ primary key ([����������� �����])

ALTER TABLE ������
	ADD CONSTRAINT FK_������_��� foreign key ([id ����]) 
	references ���(id)

ALTER TABLE ������������
	ADD CONSTRAINT PK_������������ primary key ([����������� �����])

ALTER TABLE ������������
	ADD CONSTRAINT FK_������������_��� foreign key ([id ����]) 
	references ���(id)

ALTER TABLE ����
	ADD CONSTRAINT PK_���� primary key (�����)

ALTER TABLE ����
	ADD CONSTRAINT FK_����_��� foreign key ([id ����]) 
	references ���(id)

ALTER TABLE �����
	ADD CONSTRAINT PK_����� primary key (��������)

ALTER TABLE ���������
	ADD CONSTRAINT PK_��������� primary key (id)

ALTER TABLE �����
	ADD CONSTRAINT PK_����� primary key (id)

ALTER TABLE �������
	ADD CONSTRAINT PK_������� primary key (id)

ALTER TABLE �����
	ADD CONSTRAINT PK_����� primary key (id)

ALTER TABLE �����
	ADD CONSTRAINT PK_����� primary key (�����)

ALTER TABLE �����
	ADD CONSTRAINT FK_�����_��������� foreign key ([id ����������]) 
	references ���������(id)

ALTER TABLE �����
	ADD CONSTRAINT FK_�����_���� foreign key (����) 
	references ����(�����)

ALTER TABLE �������
	ADD CONSTRAINT PK_������� primary key (id)

ALTER TABLE �������
	ADD CONSTRAINT PK_������� primary key (��������)

ALTER TABLE ���������
	ADD CONSTRAINT PK_��������� primary key (��������)

ALTER TABLE ����
	ADD CONSTRAINT PK_���� primary key (�������, �����)

ALTER TABLE ����
	ADD CONSTRAINT FK_����_������� foreign key (�������) 
	references �������(id)

ALTER TABLE ����
	ADD CONSTRAINT FK_����_����� foreign key (�����) 
	references �����(id)

ALTER TABLE [������ �����]
	ADD CONSTRAINT PK_������_����� primary key (�������, �������)

ALTER TABLE [������ �����]
	ADD CONSTRAINT FK_������_�����_������� foreign key (�������) 
	references �������(id)

ALTER TABLE [������ �����]
	ADD CONSTRAINT FK_������_�����_������� foreign key (�������) 
	references �������(id)

ALTER TABLE �����
	ADD CONSTRAINT PK_����� primary key (���������, [����� �����], [���� ������������])

ALTER TABLE �����
	ADD CONSTRAINT FK_�����_��������� foreign key (���������) 
	references ���������(id)

ALTER TABLE �����
	ADD CONSTRAINT FK_�����_���� foreign key ([����� �����]) 
	references ����(�����)

ALTER TABLE [������ ������ ����]
	ADD CONSTRAINT PK_������_������_���� primary key (�����, �����)

ALTER TABLE [������ ������ ����]
	ADD CONSTRAINT FK_������_������_����_����� foreign key (�����) 
	references �����(�����)

ALTER TABLE [������ ������ ����]
	ADD CONSTRAINT FK_������_������_����_����� foreign key (�����) 
	references �����(id)

ALTER TABLE [������ ������ ��������]
	ADD CONSTRAINT PK_������_������_�������� primary key (�����, �������)

ALTER TABLE [������ ������ ��������]
	ADD CONSTRAINT FK_������_������_��������_������� foreign key (�������) 
	references �������(id)

ALTER TABLE [������ ������ ��������]
	ADD CONSTRAINT FK_������_������_��������_����� foreign key (�����) 
	references �����(�����)

ALTER TABLE ������
	ADD CONSTRAINT PK_������ primary key (�������, �����)

ALTER TABLE ������
	ADD CONSTRAINT FK_������_������� foreign key (�������) 
	references �������(��������)

ALTER TABLE ������
	ADD CONSTRAINT FK_������_����� foreign key (�����) 
	references �����(id)

ALTER TABLE [���� ����]
	ADD CONSTRAINT PK_����_���� primary key (�������, ���)


ALTER TABLE [���� ����]
	ADD CONSTRAINT FK_����_����_������� foreign key (�������) 
	references �������(id)

ALTER TABLE [���� ����]
	ADD CONSTRAINT FK_����_����_��� foreign key (���) 
	references ���(id)

ALTER TABLE ��������
	ADD CONSTRAINT PK_�������� primary key ([�������-��������], �������)

ALTER TABLE ��������
	ADD CONSTRAINT FK_��������_�������_�������� foreign key ([�������-��������]) 
	references �������(id)

ALTER TABLE ��������
	ADD CONSTRAINT FK_��������_������� foreign key (�������) 
	references �������(id)

ALTER TABLE [����� ������]
	ADD CONSTRAINT PK_�����_������ primary key (�����, �����)

ALTER TABLE [����� ������]
	ADD CONSTRAINT FK_�����_������_����� foreign key (�����) 
	references �����(��������)

ALTER TABLE [����� ������]
	ADD CONSTRAINT FK_�����_������_����� foreign key (�����) 
	references �����(�����)

ALTER TABLE [����� ����]
	ADD CONSTRAINT PK_�����_���� primary key (�����, [id ����])

ALTER TABLE [����� ����]
	ADD CONSTRAINT FK_�����_����_����� foreign key (�����) 
	references �����(��������)

ALTER TABLE [����� ����]
	ADD CONSTRAINT FK_�����_����_��� foreign key ([id ����]) 
	references ���(id)

ALTER TABLE [�������� ��������]
	ADD CONSTRAINT PK_��������_�������� primary key (���������, �������, ���)

ALTER TABLE [�������� ��������]
	ADD CONSTRAINT FK_��������_��������_��������� foreign key (���������) 
	references ���������(��������)

ALTER TABLE [�������� ��������]
	ADD CONSTRAINT FK_��������_��������_������� foreign key (�������) 
	references �������(id)

ALTER TABLE [�������� ��������]
	ADD CONSTRAINT FK_��������_��������_��� foreign key (���) 
	references ���(id)

ALTER TABLE [�������� ���������]
	ADD CONSTRAINT PK_��������_��������� primary key (���������, �������, ���)

ALTER TABLE [�������� ���������]
	ADD CONSTRAINT FK_��������_���������_��������� foreign key (���������) 
	references ���������(��������)

ALTER TABLE [�������� ���������]
	ADD CONSTRAINT FK_��������_���������_������� foreign key (�������) 
	references �������(��������)

ALTER TABLE [�������� ���������]
	ADD CONSTRAINT FK_��������_���������_��� foreign key (���) 
	references ���(id)

ALTER TABLE [������ ������]
	ADD CONSTRAINT PK_������_������ primary key (���������, ���, �����)

ALTER TABLE [������ ������]
	ADD CONSTRAINT FK_������_������_��������� foreign key (���������) 
	references ���������(id)

ALTER TABLE [������ ������]
	ADD CONSTRAINT FK_������_������_��� foreign key (���) 
	references ���(id)

ALTER TABLE [������ ������]
	ADD CONSTRAINT FK_������_������_����� foreign key (�����) 
	references �����(id)