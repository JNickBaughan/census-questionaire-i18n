CREATE TABLE [dbo].[QuestionnaireToQuestion](
    [questionnaireId]     [INT]     NOT NULL
    ,[questionId]         [INT]     NOT NULL FOREIGN KEY REFERENCES [Questions](questionId)
    ,[answerId]           [INT]       
)