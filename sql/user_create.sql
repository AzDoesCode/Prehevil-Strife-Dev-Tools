CREATE DATABASE IF NOT EXISTS playerset;
use playerset;

CREATE TABLE Users (
	UserId int NOT NULL AUTO_INCREMENT,
	UserName varChar(32),
	UserPassword varChar(128),
	UserPfp int DEFAULT '1',
	UserDate DATETIME DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (UserId)
);

CREATE TABLE Teams (
	TeamId int NOT NULL AUTO_INCREMENT,
	UserId int,
	TeamName varChar(64),
	Chr1 varChar(320),
	Chr2 varChar(320),
	Chr3 varChar(320),
	Chr4 varChar(320),
	PRIMARY KEY (TeamId),
	FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

CREATE TABLE Lobbies (
	LobbyId int NOT NULL AUTO_INCREMENT,
	P1Id int,
	P2Id int,
	P1Team varChar(1280),
	P2Team varChar(1280),
	Format int,
	PRIMARY KEY (LobbyId),
	FOREIGN KEY (P1Id) REFERENCES Users(UserId),
	FOREIGN KEY (P2Id) REFERENCES Users(UserId)
);

CREATE TABLE Battles (
	TurnId int NOT NULL AUTO_INCREMENT,
	LobbyId int,
	P1Id int,
	P2Id int,
	P1Action varChar(64),
	P2Action varChar(64),
	PRIMARY KEY (TurnId),
	FOREIGN KEY (LobbyId) REFERENCES Lobbies(LobbyId),
	FOREIGN KEY (P1Id) REFERENCES Users(UserId),
	FOREIGN KEY (P2Id) REFERENCES Users(UserId)
);