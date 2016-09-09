CREATE VIEW [invoice].[AbonnementView] AS Select Mitglied.Name, AboTyp.Bezeichnung as [Abo-Typ], AboTyp.Wert, AboTyp.Dauer, Abo.GueltigAb, Abo.GueltigBis from invoice.Abonnement as Abo
	inner join invoice.AbonnementTyp as AboTyp
		on Abo.AbonnementTypId = AboTyp.AbonnementTypId
			inner join app.Standbetreiber as Standbetreiber
				on AboTyp.AbonnementTypId = Standbetreiber.StandbetreiberId
					inner join app.Mitglied as Mitglied
						on Standbetreiber.MitgliedId = Mitglied.MitgliedId
