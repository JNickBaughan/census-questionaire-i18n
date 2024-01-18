CREATE TABLE [dbo].[AnswerOptionTranslations](
	 [answerOptionId]   [INT]          NOT NULL FOREIGN KEY REFERENCES AnswerOptions(answerOptionId)
    ,[answerOption]     [VARCHAR](250) NOT NULL
    ,[cultureCode]      [VARCHAR](5)   NOT NULL
    --TODO add a composite primary key 
)