/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


USE [$(DatabaseName)]

INSERT INTO app.Ort	(Bezeichnung, PLZ) VALUES ('Uffikon',6253);
INSERT INTO app.Ort	(Bezeichnung, PLZ) VALUES ('Dagmersellen',6252);
INSERT INTO app.Ort	(Bezeichnung, PLZ) VALUES ('Buchs',6211);
INSERT INTO app.Ort	(Bezeichnung, PLZ) VALUES ('Altishofen',6246);
INSERT INTO app.Ort	(Bezeichnung, PLZ) VALUES ('Nebikon',6244);
INSERT INTO app.Ort	(Bezeichnung, PLZ) VALUES ('Schötz',6247);
INSERT INTO app.Ort	(Bezeichnung, PLZ) VALUES ('Wauwil',6242);

INSERT INTO app.Adresse	(OrtId, Strasse, Hausnummer, HausnummerZusatz) 	VALUES ((SELECT OrtId FROM app.Ort WHERE Bezeichnung LIKE 'Uffikon'),'Kantonsstrasse',77,'a');
INSERT INTO app.Adresse	(OrtId, Strasse, Hausnummer) 					VALUES ((SELECT OrtId FROM app.Ort WHERE Bezeichnung LIKE 'Buchs'),'Berg',1);
INSERT INTO app.Adresse	(OrtId, Strasse, Hausnummer, HausnummerZusatz) 	VALUES ((SELECT OrtId FROM app.Ort WHERE Bezeichnung LIKE 'Uffikon'),'Im Acherli',40,'b');
INSERT INTO app.Adresse	(OrtId, Strasse, Hausnummer) 					VALUES ((SELECT OrtId FROM app.Ort WHERE Bezeichnung LIKE 'Dagmersellen'),'Hubermatte',15);
INSERT INTO app.Adresse	(OrtId, Strasse, Hausnummer) 					VALUES ((SELECT OrtId FROM app.Ort WHERE Bezeichnung LIKE 'Altishofen'),'Dorf',2);
INSERT INTO app.Adresse	(OrtId, Strasse, Hausnummer) 					VALUES ((SELECT OrtId FROM app.Ort WHERE Bezeichnung LIKE 'Nebikon'),'Wiggerweg',900);
INSERT INTO app.Adresse	(OrtId, Strasse, Hausnummer) 					VALUES ((SELECT OrtId FROM app.Ort WHERE Bezeichnung LIKE 'Schötz'),'Huebeli',69);
INSERT INTO app.Adresse	(OrtId, Strasse, Hausnummer) 					VALUES ((SELECT OrtId FROM app.Ort WHERE Bezeichnung LIKE 'Wauwil'),'Rosenweg',9);

INSERT INTO app.Mitglied (AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProbezeitVon, ProbezeitBis) 	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Kantonsstrasse'),'mitglied1@tadaa.com', '12345678','0778885522','Peter','Maffay','1990-02-18','2016-05-01','2016-11-30');
INSERT INTO app.Mitglied (AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProbezeitVon, ProbezeitBis) 	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Berg'),'mitglied2@tadaa.com', '12345678','0884445566','Jürgen','Drews','1960-01-01','2016-05-01','2016-11-30');
INSERT INTO app.Mitglied (AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProbezeitVon, ProbezeitBis) 	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Im Acherli'),'mitglied3@tadaa.com', '12345678','0690696969','Sandra','Bullock','1954-08-31','2016-05-01','2016-11-30');
INSERT INTO app.Mitglied (AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProvisorischesMitglied, ProbezeitVon, ProbezeitBis) 	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Hubermatte'),'mitglied4@tadaa.com', '12345678','0666666666','Gina-Lisa','Pavarotti','1888-08-18',1,'2016-01-01','2016-03-31');
INSERT INTO app.Mitglied (AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProvisorischesMitglied, ProbezeitVon, ProbezeitBis) 	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Hubermatte'),'mitglied5@tadaa.com', '12345678','0777777777','Will','Smith','1888-08-18',1,'2016-01-01','2016-03-31');
INSERT INTO app.Mitglied (AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProvisorischesMitglied, ProbezeitVon, ProbezeitBis) 	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Hubermatte'),'mitglied6@tadaa.com', '12345678','0888888888','Leo','DiCaprio','1888-08-18',1,'2016-01-01','2016-03-31');
INSERT INTO app.Mitglied (AdresseId, Email, Passwort, Telefon, Vorname, Nachname, Geburtsdatum, ProvisorischesMitglied, ProbezeitVon, ProbezeitBis) 	VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Hubermatte'),'mitglied5@tadaa.com', '12345678','0777777777','Jaden','Smith-Quark','1888-08-18',1,'2016-01-01','2016-03-31');

INSERT INTO app.Standbetreiber (MitgliedId) VALUES ((SELECT MitgliedId FROM app.Mitglied WHERE Nachname LIKE 'Bullock'));
INSERT INTO app.Standbetreiber (MitgliedId) VALUES ((SELECT MitgliedId FROM app.Mitglied WHERE Nachname LIKE 'Drews'));
INSERT INTO app.Standbetreiber (MitgliedId) VALUES ((SELECT MitgliedId FROM app.Mitglied WHERE Nachname LIKE 'Smith'));

INSERT INTO app.Nachfrager (MitgliedId) VALUES ((SELECT MitgliedId FROM app.Mitglied WHERE Nachname LIKE 'Pavarotti'));
INSERT INTO app.Nachfrager (MitgliedId) VALUES ((SELECT MitgliedId FROM app.Mitglied WHERE Nachname LIKE 'DiCaprio'));

INSERT INTO app.Inspektor (MitgliedId) VALUES ((SELECT MitgliedId FROM app.Mitglied WHERE Nachname LIKE 'Maffay'));

INSERT INTO app.Beurteilung (StandbetreiberId, InspektorId, BeurteilungAm, BeurteilungDurchgefuehrt, Bestanden) VALUES ((SELECT StandbetreiberId FROM app.Standbetreiber WHERE MitgliedId LIKE 2),(SELECT InspektorId FROM app.Inspektor WHERE InspektorId LIKE 1),'2016-07-30',1,1);
INSERT INTO app.Beurteilung (StandbetreiberId, InspektorId, BeurteilungAm, BeurteilungDurchgefuehrt, Bestanden) VALUES ((SELECT StandbetreiberId FROM app.Standbetreiber WHERE MitgliedId LIKE 3),(SELECT InspektorId FROM app.Inspektor WHERE InspektorId LIKE 1),'2016-06-11',1,0);

INSERT INTO app.Anmeldung (MitgliedId, BesucherMitgliedId, AngemeldetAm, StatutenUnterschrieben, BesuchDurchgefuehrt, BesuchDurchgefuehrtAm, BonitaetsPruefungBestanden, BonitaetsPruefungBestandenAm) VALUES ((SELECT MitgliedId FROM app.Mitglied WHERE Nachname LIKE 'Pavarotti'),(SELECT MitgliedId FROM app.Mitglied WHERE Nachname LIKE 'Smith-Quark'),'2016-06-30',1,1,'2016-07-21',1,'2016-07-25');

INSERT INTO invoice.Miete (Betrag, Bezahlt) VALUES (500,1);
INSERT INTO invoice.Miete (Betrag, Bezahlt, Mahnstufe, GemahntAm) VALUES (1000,0,2,'2016-01-15');


INSERT INTO invoice.AbonnementTyp (Bezeichnung, Wert, Dauer) VALUES ('Abo für 6 Monate.',1,3);
INSERT INTO invoice.AbonnementTyp (Bezeichnung, Wert, Dauer) VALUES ('Abo für 6 Monate.',2,6);
INSERT INTO invoice.AbonnementTyp (Bezeichnung, Wert, Dauer) VALUES ('Abo für 12 Monate.',3,12);

INSERT INTO invoice.Abonnement (AbonnementTypId, StandbetreiberId, GueltigAb, GueltigBis) VALUES ((SELECT AbonnementTypId FROM invoice.AbonnementTyp WHERE Wert LIKE 2),(SELECT StandbetreiberId FROM app.Standbetreiber WHERE StandbetreiberId LIKE 1),'2016-10-01', '2016-10-05');
INSERT INTO invoice.Abonnement (AbonnementTypId, StandbetreiberId, GueltigAb, GueltigBis) VALUES ((SELECT AbonnementTypId FROM invoice.AbonnementTyp WHERE Bezeichnung LIKE 3),(SELECT StandbetreiberId FROM app.Standbetreiber WHERE StandbetreiberId LIKE 2),'2016-10-11', '2016-10-16');

INSERT INTO invoice.AbonnementMiete (MieteId, AbonnementId) VALUES ((SELECT MieteId FROM invoice.Miete WHERE Betrag LIKE 500.0000),(SELECT AbonnementId FROM invoice.Abonnement WHERE GueltigAb LIKE '2016-10-01 00:00:00.0000000'));
INSERT INTO invoice.AbonnementMiete (MieteId, AbonnementId) VALUES ((SELECT MieteId FROM invoice.Miete WHERE Betrag LIKE 1000.0000),(SELECT AbonnementId FROM invoice.Abonnement WHERE GueltigAb LIKE '2016-10-11 00:00:00.0000000'));

INSERT INTO market.Areal (AdresseId, Laenge, Breite, MietPreis) VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Huebeli'),10,3,25);
INSERT INTO market.Areal (AdresseId, Laenge, Breite, MietPreis) VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Rosenweg'),7,4,20);

INSERT INTO market.Wochenmarkt (AdresseId, MarktDatumVon, MarktDatumBis) VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Rosenweg'),'2016-10-01', '2016-10-05');
INSERT INTO market.Wochenmarkt (AdresseId, MarktDatumVon, MarktDatumBis) VALUES ((SELECT AdresseId FROM app.Adresse WHERE Strasse LIKE 'Huebeli'),'2016-10-11', '2016-10-16');

INSERT INTO market.Nutzung (ArealId, WochenmarktId, StandbetreiberId) VALUES ((SELECT ArealId FROM market.Areal WHERE Laenge LIKE 10.0000),(SELECT WochenmarktId FROM market.Wochenmarkt WHERE MarktDatumVon LIKE '2016-10-01 00:00:00.0000000'),(SELECT StandbetreiberId FROM app.Standbetreiber WHERE StandbetreiberId LIKE 2));
INSERT INTO market.Nutzung (ArealId, WochenmarktId, StandbetreiberId) VALUES ((SELECT ArealId FROM market.Areal WHERE Laenge LIKE 7.0000),(SELECT WochenmarktId FROM market.Wochenmarkt WHERE MarktDatumVon LIKE '2016-10-11 00:00:00.0000000'),(SELECT StandbetreiberId FROM app.Standbetreiber WHERE StandbetreiberId LIKE 1));

INSERT INTO invoice.Abonnement_Areal (AbonnementId, ArealId) VALUES ((SELECT AbonnementId FROM invoice.Abonnement WHERE GueltigAb LIKE '2016-10-01 00:00:00.0000000'),(SELECT ArealId FROM market.Areal WHERE Laenge LIKE 10.0000));
INSERT INTO invoice.Abonnement_Areal (AbonnementId, ArealId) VALUES ((SELECT AbonnementId FROM invoice.Abonnement WHERE GueltigAb LIKE '2016-10-11 00:00:00.0000000'),(SELECT ArealId FROM market.Areal WHERE Laenge LIKE 7.0000));

INSERT INTO invoice.PlatzMiete (MieteId, NutzungId) VALUES ((SELECT MieteId FROM invoice.Miete WHERE Betrag LIKE 500.0000),(SELECT NutzungId FROM market.Nutzung WHERE NutzungId LIKE 2));
INSERT INTO invoice.PlatzMiete (MieteId, NutzungId) VALUES ((SELECT MieteId FROM invoice.Miete WHERE Betrag LIKE 1000.0000),(SELECT NutzungId FROM market.Nutzung WHERE NutzungId LIKE 1));

