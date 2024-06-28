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

    ,(12,'No, not of Hispanic, Latino, or Spanish origin', 0)
    ,(13,'Yes, Mexican, Mexican Am., Chicano', 0)
    ,(14,'Yes, Puerto Rican', 0)
    ,(15,'Yes, Cuban', 0)
    ,(16,'Yes, another Hispanic, Latino, or Spanish origin -Print, for example, Salvadoran, Dominican, Colombian, Guatemalan, Spaniard, Ecuadorian, etc.', 1)

    ,(17,'White - Print, for example, German, Irish, English, Italian, Lebanese, Egyptian, etc.', 1)
    ,(18,'Black or African Am. - Print, for example, African American, Jamaican, Haitian, Nigerian, Ethiopian, Somali, etc.', 1)
    ,(19,'American Indian or Alaska Native - Print name of enrolled or principal tribe(s), for example, Navajo Nation, Blackfeet Tribe, Mayan, Aztec, Native Village of Barrow Inupiat Traditional Government, Nome Eskimo Community, etc.', 1)
    ,(20,'Chinese', 0)
    ,(21,'Vietnamese', 0)
    ,(22,'Native Hawaiian', 0)
    ,(23,'Filipino', 0)
    ,(24,'Korean', 0)
    ,(25,'Samoan', 0)
    ,(26,'Asian Indian', 0)
    ,(27,'Japanese', 0)
    ,(28,'Chamorro', 0)
    ,(29,'Other Asian - Print, for example, Pakistani, Cambodian, Hmong, etc.', 1)
    ,(30,'Other Pacific Islander - Print, for example Tongan, Fijian, Marshallese, etc.', 1)
    ,(31,'Some other race - Print race or origin.', 1)
    
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
