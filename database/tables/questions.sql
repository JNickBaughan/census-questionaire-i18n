CREATE TABLE [dbo].[Questions](
	 [questionId]               [INT]           IDENTITY(1,1) NOT NULL PRIMARY KEY
    ,[questionText]             [VARCHAR](500)  NOT NULL -- TODO - move to translation table later
    ,[answerType]               [INT]           NOT NULL --used by the ui for type of control - select, multi-select, freeform 
    ,[order]                    [INT]           NOT NULL --used for the order to display questions in UI
)