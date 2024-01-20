SELECT TOP (1000) Q.[questionId]
		         ,QT.[question]
                 ,AT.[answerTypeDescription]
                 ,[answerOptionsGroupingId]
				 ,[answerOption]
	             ,*
  FROM [census].[dbo].[Questions] AS Q
  LEFT JOIN [dbo].[AnswerTypes] AS AT
  ON Q.[answerTypeId] = at.[answerTypeId]
  LEFT JOIN [dbo].[QuestionTranlations] AS QT 
  ON QT.[questionId] = Q.[questionId] AND QT.[cultureCode] = 'en-US'
  RIGHT JOIN [dbo].[AnswerOptionsGroupings] AS OG
  ON OG.[answerOptionGroupingId] = Q.[answerOptionsGroupingId]
  LEFT JOIN [dbo].[AnswerOptions] AS AO
  ON AO.[answerOptionId] = OG.[answerOptionId]
  LEFT JOIN [dbo].[AnswerOptionTranslations] AS AOT
  ON AOT.[answerOptionId] = AO.[answerOptionId] AND AOT.[cultureCode] = 'en-US'




