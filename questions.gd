extends Node

# ---QUESTION SCHEMA---
# type: Questionhandler.QuestionType
#
# Type MULTI_CHOICE:
# 	text: String
# 	answers: [String] (array of strings)
# 	Correct answer: Integer

var questions: Array[Dictionary] = [
	{
		"text": "This is test text for a question",
		"answers": ["Absolutely NOT", "Potentially", "Who are you?", "Die."],
		"correct_answer": 0
	},
	{
		"text": "[tornado]Twirling test text[/tornado]",
		"answers": ["okay?", "Go dire", "What?"],
		"correct_answer": 2
	},
	{
		"text": "Look the question has one answer!",
		"answers": ["What could the purpose of a one-answer question possibly be?"],
		"correct_answer": 0
	},
	{
		"text": "What LV multiblock allows for a player to make an incredibly large amount of steam, but also poses the risk of exploding?",
		"answers": ["Large bronze boiler", "Large Stainless steel boiler", "Large Turbine", "GregoriosT"],
		"correct_answer": 0
	},
]
