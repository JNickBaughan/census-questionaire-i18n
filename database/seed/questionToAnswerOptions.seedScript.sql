MERGE INTO [dbo].[QuestionToAnswerOptions] AS TARGET
USING (VALUES
    (1
    ,'How many people were living or staying in this house, apartment, or mobile home on April 1, 2020?'
    ,1,1)
    ,(2
    ,'Were there any additional people staying here on April 1, 2020 that you did not include in Question 1?'
    ,2,2)
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