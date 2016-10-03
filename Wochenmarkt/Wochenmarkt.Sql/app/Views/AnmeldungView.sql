CREATE VIEW [app].[AnmeldungView] 
	AS 
SELECT 
	an.AngemeldetAm, 
	m.Name AS Mitglied, 
	mBesucher.Name AS Besucher, 
	an.AnmeldungValid, 
	an.StatutenUnterschrieben, 
	an.BesuchDurchgefuehrt, 
	an.BesuchDurchgefuehrtAm, 
	an.BonitaetsPruefungBestanden, 
	an.BonitaetsPruefungBestandenAm 
FROM app.Anmeldung AS an
	INNER JOIN app.Mitglied AS m ON an.MitgliedId = m.MitgliedId
	INNER JOIN app.Mitglied AS mBesucher ON an.BesucherMitgliedId = mBesucher.MitgliedId
