SET IDENTITY_INSERT [dbo].[Questions] ON;

MERGE INTO [dbo].[Questions] AS TARGET
USING (VALUES
    (1
    ,'How many people were living or staying in this house, apartment, or mobile home on April 1, 2020?'
    ,3,1,1)
    ,(2
    ,'Were there any additional people staying here on April 1, 2020 that you did not include in Question 1?'
    ,2,1,2)
    ,(3
    ,'Is this house, apartment, or mobile home'
    ,1,1,3)
    ,(4
    ,'What is your telephone number?'
    ,3,1,4)
)
AS SOURCE ([questionId],[questionText],[answerTypeId],[houseHoldQuestion],[order])
ON TARGET.[questionId] = Source.[questionId] 
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([questionId],[questionText],[answerTypeId],[houseHoldQuestion],[order])
    VALUES (
        SOURCE.[questionId]
		,SOURCE.[questionText]
        ,SOURCE.[answerTypeId]
        ,SOURCE.[houseHoldQuestion]
        ,SOURCE.[order])
WHEN MATCHED THEN
    UPDATE SET [questionText] = SOURCE.[questionText]
                        ,[answerTypeId] = SOURCE.[answerTypeId]
						,[houseHoldQuestion] = SOURCE.[houseHoldQuestion]
                        ,[order] = SOURCE.[order];

SET IDENTITY_INSERT [dbo].[Questions] OFF;

GO