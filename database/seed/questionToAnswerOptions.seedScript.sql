
--TODO add foreign keys to this table
MERGE INTO [dbo].[QuestionToAnswerOptions] AS TARGET
USING (VALUES
     (1,2,1)
    ,(2,2,2)
    ,(3,2,3)
    ,(4,2,4)
    ,(5,2,5)

	,(6,2,1)
    ,(7,2,2)
    ,(8,2,3)
    ,(9,2,4)

    ,(10,6,1)
    ,(11,6,2)

    ,(12,8,1)
    ,(13,8,2)
    ,(14,8,3)
    ,(15,8,4)
    ,(16,8,5)

    ,(17,9,1)
    ,(18,9,2)
    ,(19,9,3)
    ,(20,9,4)
    ,(21,9,5)
    ,(22,9,6)
    ,(23,9,7)
    ,(24,9,8)
    ,(25,9,9)
    ,(26,9,10)
    ,(27,9,11)
    ,(28,9,12)
    ,(29,9,13)
    ,(30,9,14)
    ,(31,9,15)
)
AS SOURCE ([answerOptionId],[questionId],[order])
ON TARGET.[questionId] = Source.[questionId] AND TARGET.[answerOptionId] = Source.[answerOptionId] 
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([answerOptionId],[questionId],[order])
    VALUES (SOURCE.[answerOptionId],SOURCE.[questionId],SOURCE.[order])
WHEN MATCHED THEN
    UPDATE SET [answerOptionId] = SOURCE.[answerOptionId]
                        ,[questionId] = SOURCE.[questionId]
                        ,[order] = SOURCE.[order];

GO