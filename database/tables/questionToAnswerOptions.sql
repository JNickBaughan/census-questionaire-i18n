CREATE TABLE [dbo].[QuestionToAnswerOptions](
	 [answerOptionId]           [INT]           NOT NULL FOREIGN KEY REFERENCES [AnswerOptions](answerOptionId)
    ,[questionId]               [INT]           NOT NULL FOREIGN KEY REFERENCES [Questions](QuestionId)
    ,[order]                    [INT]           NOT NULL --used for the order to display multiple select options
)