CREATE TABLE [dbo].[Questions](
	 [questionId]                     [INT]          IDENTITY(1,1) NOT NULL PRIMARY KEY
    ,[question]                       [VARCHAR](250) NOT NULL
    ,[answerTypeId]                   [INT]          NOT NULL
    ,[answerOptionsGroupingId]        [INT]          
)





