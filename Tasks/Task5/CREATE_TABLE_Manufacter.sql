USE TrafficPolice;

CREATE TABLE Manufacter (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Manufacter PRIMARY KEY,
    [Name] VARCHAR(255) NOT NULL,
);

ALTER TABLE Manufacter
ADD CONSTRAINT u_ManufacterName UNIQUE([Name]);