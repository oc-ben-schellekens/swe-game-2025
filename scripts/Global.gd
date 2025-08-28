extends Node

#region Global variables
var _score: int = 0
#endregion

#region Score managment Functions
func get_score():
	return _score

func set_score(new_score: int):
	_score = new_score

func add_score(to_add: int):
	_score += to_add

func remove_score(to_subtract: int):
	_score -= to_subtract
#endregion

# ---QUESTION SCHEMA---
# type: Questionhandler.QuestionType
#
# Type MULTI_CHOICE:
# 	text: String
# 	answers: [String] (array of strings)
# 	Correct answer: Integer

#region Questions
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
#endregion
