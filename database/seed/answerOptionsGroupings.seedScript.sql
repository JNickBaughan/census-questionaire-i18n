MERGE INTO [dbo].[AnswerOptionsGroupings] AS TARGET
USING (VALUES
     (1,1)
    ,(1,2)
)
AS SOURCE ([answerOptionGroupingId],[answerOptionId])
ON TARGET.[answerOptionGroupingId] = Source.[answerOptionGroupingId] AND TARGET.[answerOptionId] = Source.[answerOptionId]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([answerOptionGroupingId],[answerOptionId])
    VALUES ([answerOptionGroupingId],[answerOptionId])
WHEN MATCHED THEN
    UPDATE SET [answerOptionId] = Source.[answerOptionId];

GO