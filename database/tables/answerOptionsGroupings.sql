CREATE TABLE [dbo].[AnswerOptionsGroupings](
	 [answerOptionGroupingId]  [INT]  NOT NULL
    ,[answerOptionId]          [INT]  NOT NULL FOREIGN KEY REFERENCES AnswerOptions(answerOptionId)
    --TODO : make composite primary key
)