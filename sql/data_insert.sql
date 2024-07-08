USE dataset;

INSERT INTO Contestants (CodeName, Name, Portrait, SkillCount, Skill_1, Skill_2, Skill_3, Skill_4, Skill_5, Skill_6, Health, Mind, Attack, Defense, MAttack, MDefense, Agility, Price, FrontSprite, BackSprite) VALUES
	("daan", "Daan", "https://i.postimg.cc/6qYRgfX6/portrait-daan.png", "3",
		"1", "2", "3", "0", "0", "0",
		"100", "100", "16", "16", "16", "16", "12", "50",
		"https://i.postimg.cc/vm5n3NB8/front-daan.png", "https://i.postimg.cc/26hVzbvz/back-daan.png"),
	("abella", "Abella", "https://i.postimg.cc/Fz93Tnwn/portrait-abella.png", "2",
		"4", "5", "0", "0", "0", "0",
		"100", "100", "20", "20", "16", "16", "12", "60",
		"https://i.postimg.cc/GpKN8qCt/front-abella.png", "https://i.postimg.cc/FHCZSq6Y/back-abella.png"),
	("osaa", "O'saa", "https://i.postimg.cc/445zYs9C/portrait-osaa.png", "4",
	 	"6", "7", "8", "9", "0", "0",
		"125", "100", "16", "16", "20", "24", "12", "70",
		"https://i.postimg.cc/L6krFHbj/front-osaa.png", "https://i.postimg.cc/9XSCxFqb/back-osaa.png"),
	("olivia", "Olivia", "https://i.postimg.cc/GpFH7VHd/portrait-olivia.png", "1",
	 	"10", "2", "0", "0", "0", "0",
		"100", "100", "16", "16", "16", "16", "8", "60",
		"https://i.postimg.cc/wBZ02tyS/front-olivia.png", "https://i.postimg.cc/1zjYdCT7/back-olivia.png")
;

INSERT INTO Skills (SkillName, SkillDescription, SkillType, SkillPower, SkillCost, SkillExtra, SkillPrice, SkillAnim) VALUES
	("Precision Stance",
		"- Greatly increases the Attack of the user.<br>- Costs 20 mind.",
		"status_self", "0", "20", "status_self : focus;", "10", "status_generic"),
	("Loving Whispers",
		"- Heals entire party with 80 magic power.<br>- Costs 30 mind.",
		"team_heal", "0", "30", "heal_team : 80;", "30", "whispers_good"),
	("Analyze",
		"- Inflicts Vulnerable status to target.<br>- Costs 30 mind.",
		"status_target", "0", "30", "status_target : vulnerable;", "30", "status_generic"),
	("Wrench Toss",
		"- Attacks one target with 350 magic power.<br>- Lowers Attack stat after each use.",
		"attack_single", "350", "0", "status_target : concussion;status_self : mattack_down;", "30", "wrench"),
	("Weaponcraft",
		"- Increases the Attack and M.Attack of the user.<br>- Costs 20 mind.",
		"status_self", "0", "20", "status_self : attack_up;status_self : mattack_up;", "10", "status_generic"),
	("La Danse Macabre",
		"- Greatly increases M.Attack of the user.<br>- Costs 20 mind.",
		"status_self", "0", "20", "status_self : danse;", "40", "whispers_evil"),
	("Pyromancy Trick",
		"- Attacks one target with 100 magic power and inflicts Burning status.<br>- Costs 10 Mind.",
		"attack_single", "100", "10", "status_target : burning;", "20", "pyromancy"),
	("Hurting",
		"- Attacks one target with 200 magic power.<br>- Costs 20 mind.",
		"attack_single", "200", "20", "none;", "20", "black_orb"),
	("Black Orb",
		"- Attacks one target with 300 magic power.<br>- Costs 40 mind.",
		"attack_single", "300", "40", "none;", "40", "black_orb"),
	("Roots that Reap",
		"- Attacks all enemies with 150 magic power.<br>- Costs 40 mind.",
		"attack_team", "150", "40", "none;", "40", "roots")
;

INSERT INTO Weapons (WeaponName, WeaponDescription, WeaponType, WeaponPower, WeaponPrice) VALUES
	("Knife",
		"+10 Attack",
		"slash", "10", "10"),
	("Scalpel",
		"+25 Attack<br>+30% Accuracy",
		"slash", "25", "20"),
	("Pipe Wrench",
		"+35 Attack<br>",
		"blunt", "35", "30"),
	("Officer Sword",
		"+50 Attack",
		"slash", "50", "40")
;

INSERT INTO Headarmor (HeadarmorName, HeadarmorDescription, HeadarmorAttack, HeadarmorDefense, HeadarmorMAttack, HeadarmorMDefense, HeadarmorAgility, HeadarmorResistance, HeadarmorPrice) VALUES
	("Pickelhaube",
		"+1 Defense<br>+5% Damage Resistance",
		"0", "1", "0", "0", "0", "5", "10"),
	("Stahlhelm",
		"+2 Defense<br>+5% Damage Resistance",
		"0", "2", "0", "0", "0", "5", "20"),
	("Dragoon Helmet",
		"+3 Defense<br>+10% Damage Resistance",
		"0", "3", "0", "0", "0", "10", "30"),
	("Death Mask",
		"+2 Defense<br>+20 M.Attack<br>+5 M.Defense<br>+5% Damage Resistance",
		"0", "2", "20", "5", "0", "5", "50")
;

INSERT INTO Bodyarmor (BodyarmorName, BodyarmorDescription, BodyarmorAttack, BodyarmorDefense, BodyarmorMAttack, BodyarmorMDefense, BodyarmorAgility, BodyarmorResistance, BodyarmorPrice) VALUES
	("Fluted Breastplate",
		"+9 Defense<br>+20% Damage Resistance<br>-2 Agility",
		"0", "9", "0", "0", "-2", "20", "10"),
	("Fluted Armor",
		"+18 Defense<br>+25% Damage Resistance<br>-5 Agility",
		"0", "18", "0", "0", "-5", "25", "20"),
	("Bremen Chestplate",
		"+10 Defense<br>+20% Damage Resistance",
		"0", "10", "0", "0", "0", "20", "30"),
	("Chainmail Dress",
		"+9 Defense<br>+15% Damage Resistance",
		"0", "9", "0", "0", "0", "15", "20")
;

INSERT INTO Acessory (AcessoryName, AcessoryDescription, AcessoryAttack, AcessoryDefense, AcessoryMAttack, AcessoryMDefense, AcessoryAgility, AcessoryResistance, AcessoryPrice) VALUES
	("Shield of the Four",
		"+2 Defense<br>+6 M.Defense<br>+5% Damage Resistance",
		"0", "2", "0", "6", "0", "5", "10"),
	("Chac Chac",
		"+20 M.Attack",
		"0", "0", "20", "0", "0", "0", "50"),
	("Betel's Stone",
		"+10 M.Attack<br>+10 M.Defense",
		"0", "0", "10", "10", "0", "0", "20"),
	("Small Thing's Amulet",
		"+5 Agility",
		"0", "0", "0", "0", "5", "0", "20")
;

INSERT INTO Pfps (PfpUrl) VALUES
	("https://i.postimg.cc/1zMgYLjf/pfp-villager1.png"),
	("https://i.postimg.cc/3JpFbxCN/pfp-villager2.png"),
	("https://i.postimg.cc/nhJG8f0k/pfp-villager3.png"),
	("https://i.postimg.cc/G254bvrR/pfp-daan.png"),
	("https://i.postimg.cc/9MM43J61/pfp-abella.png"),
	("https://i.postimg.cc/kMLycbSL/pfp-osaa.png"),
	("https://i.postimg.cc/HjGjyHVP/pfp-daan-moonscorch.png"),
	("https://i.postimg.cc/Y2v3Y3v1/pfp-abella-moonscorch.png"),
	("https://i.postimg.cc/j2nL2Cd7/pfp-osaa-moonscorch.png")
;

INSERT INTO Pfps (PfpId, PfpUrl) VALUES
	("101", "https://i.postimg.cc/FRyhBcRG/pfp-kaiser.png")
;