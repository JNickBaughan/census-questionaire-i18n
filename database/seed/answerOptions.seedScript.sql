SET IDENTITY_INSERT [dbo].[AnswerOptions] ON;

MERGE INTO [dbo].[AnswerOptions] AS TARGET
USING (VALUES
     (1,1)
    ,(2,2)
)
AS SOURCE ([answerOptionId], [order])
ON TARGET.[answerOptionId] = Source.[answerOptionId]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([answerOptionId], [order])
    VALUES (
        [answerOptionId], [order])
WHEN MATCHED THEN
    UPDATE SET [order] = Source.[order];

SET IDENTITY_INSERT [dbo].[AnswerOptions] OFF;

GO