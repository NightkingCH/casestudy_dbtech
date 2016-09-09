CREATE VIEW [invoice].[Abonnement_MieteView] AS Select AboTyp.Bezeichnung as [Abo-Typ], AboTyp.Wert as [Abo-Wert], AboTyp.Dauer as [Abo-Dauer], Abo.GueltigAb, Abo.GueltigBis, Mitglied.Name as [Standbetreiber], Miete.Betrag as [Mietbetrag], Miete.Bezahlt as [Miete bezahlt],  Miete.Mahnstufe, Miete.GemahntAm from invoice.AbonnementMiete as AboMiete
	inner join invoice.Abonnement as Abo
		on AboMiete.AbonnementId = Abo.AbonnementId
			inner join invoice.AbonnementTyp as AboTyp
				on Abo.AbonnementTypId = AboTyp.AbonnementTypId
					inner join app.Standbetreiber as Standbetreiber
						on AboTyp.AbonnementTypId = Standbetreiber.StandbetreiberId
							inner join app.Mitglied as Mitglied
								on Standbetreiber.MitgliedId = Mitglied.MitgliedId
									inner join invoice.Miete as Miete
										on AboMiete.MieteId = Miete.MieteId