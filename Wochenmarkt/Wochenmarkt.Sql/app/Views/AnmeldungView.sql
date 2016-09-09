CREATE VIEW [app].[AnmeldungView] AS Select Anmeldung.AngemeldetAm, m.Name as Mitglied, mBesucher.Name as Besucher, Anmeldung.AnmeldungValid, Anmeldung.StatutenUnterschrieben, Anmeldung.BesuchDurchgefuehrt, Anmeldung.BesuchDurchgefuehrtAm, Anmeldung.BonitaetsPruefungBestanden, Anmeldung.BonitaetsPruefungBestandenAm from app.Anmeldung as Anmeldung
	inner join app.Mitglied as m
		on Anmeldung.MitgliedId = m.MitgliedId
			inner join app.Mitglied as mBesucher
				on Anmeldung.BesucherMitgliedId = mBesucher.MitgliedId
