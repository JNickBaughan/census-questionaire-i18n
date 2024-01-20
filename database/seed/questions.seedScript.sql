MERGE INTO [dbo].[Questions] AS TARGET
USING (VALUES
    (1,1,1,1)
)
AS SOURCE ([questionId],[answerTypeId],[answerOptionsGroupingId],[order])
ON TARGET.[questionId] = Source.[questionId] 
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([questionId], [answerTypeId], [answerOptionsGroupingId], [order])
    VALUES (
        TARGET.[questionId]
        ,TARGET.[answerTypeId]
        ,TARGET.[answerOptionsGroupingId]
        ,TARGET.[order]);
WHEN MATCHED
    UPDATE TARGET SET [answerTypeId] = SOURCE.[answerTypeId]
                        ,[answerOptionsGroupingId] = SOURCE.[answerOptionsGroupingId]
                        ,[order] = SOURCE.[order]

GO