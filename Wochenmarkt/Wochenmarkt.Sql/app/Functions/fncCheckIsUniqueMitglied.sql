CREATE FUNCTION [app].[fncCheckIsUniqueMitglied] (
    @vorname NVARCHAR(MAX)
	, @nachname NVARCHAR(MAX)
	, @adresseId INT
	, @geburtsdatum DATETIME2(7)
)
RETURNS BIT
AS
BEGIN
	-- we have to use count because when the check fires, the data record is already inserted. therfore it would raise always an error!
    IF (SELECT
					COUNT(mt.[Vorname])
				FROM [app].Mitglied mt
				WHERE mt.[Vorname] = @vorname
						AND mt.[Nachname] = @nachname
						AND mt.[AdresseId] = @adresseId
						AND DATEADD(day, 0, mt.[Geburtsdatum]) = CAST(DATEADD(day, 0, @geburtsdatum) AS DATETIME2(7))
				) >= 2
		BEGIN
			RETURN CAST(0 AS BIT)
		END

    RETURN CAST(1 AS BIT)
END