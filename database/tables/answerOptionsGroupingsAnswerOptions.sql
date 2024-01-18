CREATE TABLE [dbo].[AnswerOptionsGroupingsAnswerOptions](
	 [answerOptionGroupingId] [INT]  NOT NULL FOREIGN KEY REFERENCES AnswerOptionsGroupings(answerOptionGroupingId)
	,[answerOptionId]         [INT]   NOT NULL FOREIGN KEY REFERENCES AnswerOptions(answerOptionId)         
)