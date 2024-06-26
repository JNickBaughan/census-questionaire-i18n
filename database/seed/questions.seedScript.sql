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
    ,(5
    ,'Please provide information for each person living here. If there is someone living here who pays the rent or owns this residence, start by listing him or her as Person 1. If the owner or the person who pays the rent does not live here, start by listing any adult living here as Person 1.'
    ,3,0,5)
     ,(6
    ,'What is Person {personNumber}s sex?'
    ,1,0,6)
    ,(7
    ,'What is Person {personNumber}s age and what is Person {personNumber}s date of birth?'
    ,4,0,7)
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