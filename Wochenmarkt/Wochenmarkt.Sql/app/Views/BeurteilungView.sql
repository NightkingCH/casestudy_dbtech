CREATE VIEW [app].[BeurteilungView] AS Select Beurteilung.BeurteilungAm, MitgliedStandbetreiber.Name as [Name des Standbetreibers], MitgliedInspektor.Name as [Name des Inspektors], Beurteilung.BeurteilungDurchgefuehrt, Beurteilung.Bestanden from app.Beurteilung as Beurteilung
	inner join app.Standbetreiber as Standbetreiber
		on Beurteilung.StandbetreiberId = Standbetreiber.StandbetreiberId
			inner join app.Mitglied as MitgliedStandbetreiber
				on Standbetreiber.MitgliedId = MitgliedStandbetreiber.MitgliedId
					inner join app.Inspektor as Inspektor
						on Beurteilung.InspektorId = Inspektor.InspektorId
							inner join app.Mitglied as MitgliedInspektor
								on Inspektor.MitgliedId = MitgliedInspektor.MitgliedId
