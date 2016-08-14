CREATE FUNCTION [app].[fncCheckIsUniqueMitglied] (
    @vorname NVARCHAR(MAX)
	, @nachname NVARCHAR(MAX)
	, @adresseId INT
	, @geburtsdatum NVARCHAR(MAX)
)
RETURNS BIT
AS
BEGIN
    IF EXISTS (SELECT TOP 1 
					mt.[Vorname] 
				FROM [app].Mitglied mt
				WHERE mt.[Vorname] = @vorname
						AND mt.[Nachname] = @nachname
						AND mt.[AdresseId] = @adresseId
						AND mt.[Geburtsdatum]= @geburtsdatum
				)
		BEGIN
			RETURN CAST(0 AS BIT)
		END

    RETURN CAST(1 AS BIT)
END