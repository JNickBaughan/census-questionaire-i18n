CREATE TABLE [dbo].[Questions](
	 [questionId]               [INT]           IDENTITY(1,1) NOT NULL PRIMARY KEY
    ,[questionText]             [VARCHAR](500)  NOT NULL -- TODO - move to translation table later
    ,[answerTypeId]             [INT]           NOT NULL FOREIGN KEY REFERENCES [AnswerTypes](answerTypeId) --used by the ui for type of control - select, multi-select, freeform 
    ,[houseHoldQuestion]        [BIT]           NOT NULL
    ,[order]                    [INT]           NOT NULL --used for the order to display questions in UI
)