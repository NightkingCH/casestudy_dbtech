CREATE VIEW [invoice].[Abonnement_ArealView] AS Select AboTyp.Bezeichnung as [Abo-Typ], AboTyp.Wert, AboTyp.Dauer, Abo.GueltigAb, Abo.GueltigBis, Adresse.StrasseFull as [Strasse], o.PLZ, o.Bezeichnung as Ort, Areal.Laenge, Areal.Breite, Areal.Flaeche, Areal.MietPreis from invoice.Abonnement_Areal as AboAreal
	inner join invoice.Abonnement as Abo
		on AboAreal.AbonnementId = Abo.AbonnementId
			inner join invoice.AbonnementTyp as AboTyp
				on Abo.AbonnementTypId = AboTyp.AbonnementTypId
					inner join market.Areal as Areal
						on AboAreal.ArealId = Areal.ArealId
							inner join app.Adresse as Adresse
								on Areal.AdresseId = Adresse.AdresseId
									inner join app.Ort as o
										on Adresse.OrtId = o.OrtId