CREATE VIEW [market].[NutzungView] AS Select ArealAdresse.StrasseFull as [Areal Stasse], ArealOrt.PLZ as [Areal PLZ], ArealOrt.Bezeichnung as [Areal Ort], WochenmarktAdresse.StrasseFull as [Wochenmarkt Strasse], WochenmarktOrt.PLZ as [Wpchenmarktl PLZ], WochenmarktOrt.Bezeichnung as [Wochenmarkt Ort], StandbetreiberMitglied.Name as Standbetreiber from market.Nutzung as Nutzung
	inner join market.Areal as Areal
		on Nutzung.ArealId = Areal.ArealId
			inner join app.Adresse as ArealAdresse
				on Areal.AdresseId = ArealAdresse.AdresseId
					inner join app.Ort as ArealOrt
						on ArealAdresse.OrtId = ArealOrt.OrtId
							inner join market.Wochenmarkt as Wochenmarkt
								on Nutzung.WochenmarktId = Wochenmarkt.WochenmarktId
									inner join app.Adresse as WochenmarktAdresse
										on Wochenmarkt.AdresseId = WochenmarktAdresse.AdresseId
											inner join app.Ort as WochenmarktOrt
												on WochenmarktAdresse.OrtId = WochenmarktOrt.OrtId
													inner join app.Standbetreiber as s
														on Nutzung.StandbetreiberId = s.StandbetreiberId
															inner join app.Mitglied as StandbetreiberMitglied
																on s.MitgliedId = StandbetreiberMitglied.MitgliedId
