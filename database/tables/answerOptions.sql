
CREATE TABLE [dbo].[AnswerOptions](
	 [answerOptionId]           [INT]           IDENTITY(1,1) NOT NULL PRIMARY KEY
    ,[answerOptionText]         [VARCHAR](250)  NOT NULL -- TODO - move to translation table later
    ,[allowsComments]           [BIT]           NOT NULL
)