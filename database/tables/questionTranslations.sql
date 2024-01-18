CREATE TABLE [dbo].[QuestionTranlations](
	 [questionId]                     [INT]          NOT NULL FOREIGN KEY REFERENCES Questions(QuestionId)
    ,[question]                       [VARCHAR](250) NOT NULL
    ,[cultureCode]                    [VARCHAR](5)   NOT NULL  
    --TODO add a composite primary key 
)