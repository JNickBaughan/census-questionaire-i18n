CREATE TABLE [dbo].[Questions](
	 [questionId]               [INT]    IDENTITY(1,1) NOT NULL PRIMARY KEY
    ,[answerTypeId]             [INT]    NOT NULL FOREIGN KEY REFERENCES AnswerTypes(answerTypeId),
    ,[answerOptionsGroupingId]  [INT]    NULL FOREIGN KEY REFERENCES AnswerOptionsGroupings(answerOptionGroupingId),  
    ,[order]                    [INT]    NOT NULL   
)