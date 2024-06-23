CREATE TABLE [dbo].[Answers](
    [answerId]                [INT]           IDENTITY(1,1) NOT NULL PRIMARY KEY
    ,[answerText]             [VARCHAR(500)]
    ,[selectedAnswerOption]   [INT]  
)