CREATE VIEW [app].[MitgliederView] AS Select Mitglied.Name, Adresse.StrasseFull, Ort.PLZ, Ort.Bezeichnung, Mitglied.Email, Mitglied.Telefon, Mitglied.Geburtsdatum, Mitglied.ProvisorischesMitglied, Mitglied.ProbezeitVon, Mitglied.ProbezeitBis, Mitglied.Abgelehnt, Mitglied.Ablehnungsgrund from app.Mitglied as Mitglied
		inner join app.Adresse as Adresse
			on Mitglied.AdresseId = Adresse.AdresseId
				inner join app.Ort as Ort
					on Adresse.OrtId = Ort.OrtId