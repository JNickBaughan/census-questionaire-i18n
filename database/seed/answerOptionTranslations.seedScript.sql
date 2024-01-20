MERGE INTO [dbo].[AnswerOptionTranslations] AS TARGET
USING (VALUES
     (1,'Male', 'en-US')
    ,(2,'Female', 'en-US')

    ,(1,'Masculino', 'es-US')
    ,(2,'Femenina','es-US')
)
AS SOURCE ([answerOptionId], [answerOption], [cultureCode])
ON TARGET.[answerOptionId] = Source.[answerOptionId] AND TARGET.[cultureCode] = SOURCE.[cultureCode]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([answerOptionId], [answerOption], [cultureCode])
    VALUES (
        [answerOptionId], [answerOption], [cultureCode]
        )
WHEN MATCHED THEN
    UPDATE SET [answerOption] = Source.[answerOption], [cultureCode] = SOURCE.[cultureCode];

GO