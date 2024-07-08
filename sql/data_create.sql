CREATE DATABASE IF NOT EXISTS dataset;
USE dataset;

CREATE TABLE Contestants (
	CharacterId int NOT NULL AUTO_INCREMENT,
	CodeName varChar(16),
	Name varChar(32),
	Portrait varChar(128),
	SkillCount int,
	Skill_1 int,
	Skill_2 int,
	Skill_3 int,
	Skill_4 int,
	Skill_5 int,
	Skill_6 int,
	Health int,
	Mind int,
	Attack int,
	Defense int,
	MAttack int,
	MDefense int,
	Agility int,
	Price int,
	FrontSprite varChar(128),
	BackSprite varChar(128), 
	PRIMARY KEY (CharacterId)
);

CREATE TABLE Skills (
	SkillId int NOT NULL AUTO_INCREMENT,
	SkillName varChar(32),
	SkillDescription varChar(256),
	SkillType varChar(16),
	SkillPower int,
	SkillCost int,
	SkillExtra varChar(256),
	SkillPrice int,
	SkillAnim varChar(128),
	PRIMARY KEY (SkillId)
);

CREATE TABLE Weapons (
	WeaponId int NOT NULL AUTO_INCREMENT,
	WeaponName varChar(32),
	WeaponDescription varChar(256),
	WeaponType varChar(16),
	WeaponPower int,
	WeaponPrice int,
	PRIMARY KEY (WeaponId)
);

CREATE TABLE Headarmor (
	HeadarmorId int NOT NULL AUTO_INCREMENT,
	HeadarmorName varChar(32),
	HeadarmorDescription varChar(256),
	HeadarmorAttack int,
	HeadarmorDefense int,
	HeadarmorMAttack int,
	HeadarmorMDefense int,
	HeadarmorAgility int,
	HeadarmorResistance int,
	HeadarmorPrice int,
	PRIMARY KEY (HeadarmorId)
);

CREATE TABLE Bodyarmor (
	BodyarmorId int NOT NULL AUTO_INCREMENT,
	BodyarmorName varChar(32),
	BodyarmorDescription varChar(256),
	BodyarmorAttack int,
	BodyarmorDefense int,
	BodyarmorMAttack int,
	BodyarmorMDefense int,
	BodyarmorAgility int,
	BodyarmorResistance int,
	BodyarmorPrice int,
	PRIMARY KEY (BodyarmorId)
);

CREATE TABLE Acessory (
	AcessoryId int NOT NULL AUTO_INCREMENT,
	AcessoryName varChar(32),
	AcessoryDescription varChar(256),
	AcessoryAttack int,
	AcessoryDefense int,
	AcessoryMAttack int,
	AcessoryMDefense int,
	AcessoryAgility int,
	AcessoryResistance int,
	AcessoryPrice int,
	PRIMARY KEY (AcessoryId)
);

CREATE TABLE Pfps (
	PfpId int NOT NULL AUTO_INCREMENT,
	PfpUrl varChar(128),
	PRIMARY KEY (PfpId)
);