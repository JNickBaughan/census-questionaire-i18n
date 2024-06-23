MERGE INTO [dbo].[QuestionToAnswerOptions] AS TARGET
USING (VALUES
     (1,2,1)
    ,(2,2,2)
    ,(3,2,3)
    ,(4,2,4)
    ,(5,2,5)
)
AS SOURCE ([answerOptionId],[questionId],[order])
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