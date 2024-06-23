CREATE TABLE [dbo].[QuestionToAnswerOptions](
	 [answerOptionId]           [INT]           IDENTITY(1,1) NOT NULL PRIMARY KEY
    ,[questionId]               [VARCHAR(500)]  NOT NULL
    ,[order]                    [INT]           NOT NULL --used for the order to display multiple select options
)