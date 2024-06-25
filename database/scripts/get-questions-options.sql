SELECT TOP (1000) 
	  q.questionId
      ,[questionText]
	  ,[houseHoldQuestion]
      ,q.[order] as 'Question Order'
	  ,AO.answerOptioNText
	  ,QTA.[order] as 'Answer Option Order'
FROM [Census].[dbo].[Questions] Q
FULL JOIN [dbo].[QuestionToAnswerOptions] QTA
ON QTA.QuestionId = Q.QuestionId
LEFT JOIN [dbo].[AnswerOptions] AO
ON AO.answerOptionId = QTA.answerOptionId
ORDER BY Q.[order] ASC, QTA.[order] ASC




