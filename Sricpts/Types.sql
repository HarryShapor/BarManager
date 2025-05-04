CREATE TYPE Phone
	FROM varchar(16) not null
GO

CREATE TYPE Email
	FROM nvarchar(100)
GO

CREATE TYPE ID
	FROM int not null

CREATE TYPE Cash
	FROM money not null

DROP TYPE Phone
DROP TYPE Email
DROP TYPE ID