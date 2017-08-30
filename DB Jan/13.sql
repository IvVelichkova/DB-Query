CREATE DATABASE Movies
GO
USE Movies
GO
CREATE TABLE Directors
(Id int identity primary key,
DirectorName varchar(50) NOT NULL,
Notes varchar(50) NOT NULL)

CREATE TABLE Genres
(Id int identity primary key,
GenreName varchar(50) NOT NULL,
Notes varchar(50) NOT NULL)

CREATE TABLE Categories 
(Id int identity primary key,
CategoryName varchar(50) NOT NULL,
Notes varchar(50) NOT NULL)

CREATE TABLE Movies 
(Id int identity primary key,
Title varchar(50) NOT NULL,
DirectorId varchar(50),
CopyrightYear DATE,
Length int,
GenreId int,
CategoryId int,
Rating int,
Notes varchar(50))


INSERT INTO Categories
VALUES('BULGARIAN','BULGARIAN NOTES')
('RUSSIAN','RUSSIAN NOTES')
('USA','USA NOTES')
('AUSTRIA','AUSTRIA NOTES')
('GERMANY','GERMANY NOTES')

INSERT INTO Directors
VALUES ('Mel Brooks','Mel Brooks Notes')
('Jerry Lewis','Jerry Lewis NOTES')
('Peter Bogdanovich','Peter Bogdanovich NOTES')
('Blake Edwards','Blake Edwards notes')
('Charles Chaplin','Charles Chaplin notes')

INSERT INTO Genres
VALUES('Comedy','Comedy NOTES')
('Action','Action NOTES')
('FANTASY','FANTASY NOTES')
('CRIME','CRIME NOTES')
('MYSTERY','MYSTERY NOTES')

ALTER TABLE Movies
Alter Column DirectorId int

Alter table Movies
Alter Column GenreId int

Alter table Movies
Alter Column CategoryId int

Alter table Movies
Add constraint fk_DirectorId foreign key(DirectorId) references Directors(id)

Alter table Movies
Add constraint fk_GenreId foreign key(GenreId) references Genres(id)

Alter table Movies
Add constraint fk_CategoryId foreign key(CategoryId) references Categories(id)
