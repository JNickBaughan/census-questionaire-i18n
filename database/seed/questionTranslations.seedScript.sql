MERGE INTO [dbo].[QuestionTranlations] AS TARGET
USING (VALUES
    (1,'What is Persons sex?','en-US')

    ,(1,'¿Qué es el sexo de las personas?','es-US')
)
AS SOURCE ([questionId],[question],[cultureCode])
ON TARGET.[questionId] = SOURCE.[questionId] AND TARGET.[cultureCode] = SOURCE.[cultureCode]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([questionId],[question],[cultureCode])
    VALUES (
        SOURCE.[questionId]
        ,SOURCE.[question]
        ,SOURCE.[cultureCode])
WHEN MATCHED THEN
    UPDATE SET [question] = SOURCE.[question];

GO