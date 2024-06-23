SET IDENTITY_INSERT [dbo].[AnswerTypes] ON;

MERGE INTO [dbo].[AnswerTypes] AS TARGET
USING (VALUES
     (1,'Multiple Choice - Select One')
    ,(2,'Multiple Choice - Mark All That Apply')
    ,(3,'Free Form')
)
AS SOURCE ([answerTypeId], [answerTypeDescription])
ON TARGET.[answerTypeId] = Source.[answerTypeId]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([answerTypeId], [answerTypeDescription])
    VALUES (
        [answerTypeId], [answerTypeDescription])
WHEN MATCHED THEN
    UPDATE SET [answerTypeDescription] = Source.[answerTypeDescription];

SET IDENTITY_INSERT [dbo].[AnswerTypes] OFF;

GO