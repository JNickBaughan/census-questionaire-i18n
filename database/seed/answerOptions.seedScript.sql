SET IDENTITY_INSERT [dbo].[AnswerOptions] ON;

MERGE INTO [dbo].[AnswerOptions] AS TARGET
USING (VALUES
     (1,'Children, related or unrelated, such as newborn babies, grandchildren, or foster children', 0)
    ,(2,'Relatives, such as adult children, cousins, or in-laws', 0)
    ,(3,'Nonrelatives, such as roommates or live-in babysitters', 0)
    ,(4,'People saying here temporarily', 0)
    ,(5,'No additional people', 0)

    ,(6,'Owned by you or someone in this household with a morgage or loan? Include home equity loans', 0)
    ,(7,'Owned by you or someone in this household free and clear (without a mortgage or loan)?', 0)
    ,(8,'Rented?', 0)
    ,(9,'Occupied without payment or rent?', 0)

    ,(10,'Male', 0)
    ,(11,'Female', 0)
    
)
AS SOURCE ([answerOptionId],[answerOptionText],[allowsComments])
ON TARGET.[answerOptionId] = Source.[answerOptionId]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([answerOptionId],[answerOptionText],[allowsComments])
    VALUES (SOURCE.[answerOptionId],SOURCE.[answerOptionText],SOURCE.[allowsComments])
WHEN MATCHED THEN
    UPDATE SET [answerOptionText] = SOURCE.[answerOptionText]
	            ,[allowsComments] = SOURCE.[allowsComments];

SET IDENTITY_INSERT [dbo].[AnswerOptions] OFF;

GO
