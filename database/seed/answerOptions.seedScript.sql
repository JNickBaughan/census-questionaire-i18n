SET IDENTITY_INSERT [dbo].[AnswerOptions] ON;

MERGE INTO [dbo].[AnswerOptions] AS TARGET
USING (VALUES
     (1,'Children, related or unrelated, such as newborn babies, grandchildren, or foster children', 0)
    ,(2,'Relatives, such as adult children, cousins, or in-laws', 0)
    ,(3,'Nonrelatives, such as roommates or live-in babysitters', 0)
    ,(4,'People saying here temporarily', 0)
    ,(5,'No additional people', 0)
    
)
AS SOURCE ([answerOptionId], [order])
ON TARGET.[answerOptionId] = Source.[answerOptionId]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([answerOptionId],[answerOptionText],[allowsComments])
    VALUES (
        [answerOptionId], [order])
WHEN MATCHED THEN
    UPDATE SET [order] = Source.[order];

SET IDENTITY_INSERT [dbo].[AnswerOptions] OFF;

GO