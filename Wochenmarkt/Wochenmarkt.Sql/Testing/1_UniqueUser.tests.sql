USE Wochenmarkt
GO


BEGIN TRANSACTION TH_UniqueUser

	--TC:1.1 User mit anderem Vornamen --> möglich
	INSERT INTO app.Mitglied 
		(AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProbezeitVon, ProbezeitBis) 	
	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Kantonsstrasse'),'mitglied1@tadaa.com','12345678','0778885522','Rudolf','Maffay','1990-02-18','2016-05-01','2016-11-30');

	--TC:1.2 User mit anderem Nachnamen --> möglich
	INSERT INTO app.Mitglied 
		(AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProbezeitVon, ProbezeitBis) 	
	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Kantonsstrasse'),'mitglied1@tadaa.com','12345678','0778885522','Peter','Zwegat','1990-02-18','2016-05-01','2016-11-30');

	--TC:1.3 User mit anderer Adresse --> möglich
	INSERT INTO app.Mitglied 
		(AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProbezeitVon, ProbezeitBis) 
	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Berg'),'mitglied1@tadaa.com','12345678','0778885522','Peter','Maffay','1990-02-18','2016-05-01','2016-11-30');

	--TC:1.4 User mit anderem Geburtsdatum --> möglich
	INSERT INTO app.Mitglied 
		(AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProbezeitVon, ProbezeitBis) 	
	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Kantonsstrasse'),'mitglied1@tadaa.com','12345678','0778885522','Peter','Maffay','1980-01-01','2016-05-01','2016-11-30');

	--TC:1.5 Gleicher User erneut erstellen --> nicht möglich
	INSERT INTO app.Mitglied 
		(AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProbezeitVon, ProbezeitBis) 	
	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Kantonsstrasse'),'mitglied1@tadaa.com','12345678','0778885522','Peter','Maffay','1990-02-18','2016-05-01','2016-11-30');

	GO

ROLLBACK TRANSACTION TH_UniqueUser
