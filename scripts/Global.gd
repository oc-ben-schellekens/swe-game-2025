extends Node

# I think gdscript needs private variables
#region "private" variables
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

#region Scene managment functions
func main_menu():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func win_screen():
	get_tree().change_scene_to_file("res://scenes/win_screen.tscn")

func lose_screen():
	get_tree().change_scene_to_file("res://scenes/lose_screen.tscn")

func new_game():
	get_tree().change_scene_to_file("res://scenes/quiz_scene.tscn")

func quit_game():
	get_tree().quit()
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
		"text": "How do you initally make an LV circuit?",
		"answers": ["Crafting Table", "Assembler", "Circuit Assembler"],
		"correct_answer": 0
	},
	{
		"text": "What is the highest tier circuit that you can make in a crafting table?",
		"answers": ["Tier 1 LV", "Tier 1 MV", "Tier 2 LV", "Teir 2 MV"],
		"correct_answer": 1
	},
	{
		"text": "How many voltage tiers are there",
		"answers": ["7", "8", "9", "6"],
		"correct_answer": 2
	},
	{
		"text": "What LV multiblock allows for a player to make an incredibly large amount of steam, but also poses the risk of exploding?",
		"answers": ["Large bronze boiler", "Large Stainless steel boiler", "Large Steam Turbine"],
		"correct_answer": 0
	},
	{
		"text": "How many tiers of progression are there in gregtech?",
		"answers": ["7", "8", "9", "10"],
		"correct_answer": 3
	},
	{
		"text": "What area of science it gregtech known for having a large amount of accuracy in?",
		"answers": ["Physics", "Biology", "Chemistry", "Engineering"],
		"correct_answer": 2
	},
	{
		"text": "What machine allows for a more efficient rod recipie",
		"answers": ["Autoclave","Lathe","Bending machine","Arc furnace"],
		"correct_answer": 1
	},
	{
		"text": "What CAN'T Covers be used for?",
		"answers": ["Storing items", "Storing fluids", "Generating unlimited water", "Filtering items"],
		"correct_answer": 0
	},
	{
		"text": "What steam age multiblock allows for grinding mass amounts of materials?",
		"answers": ["Steam Grinder", "Large Bronze Macerator"],
		"correct_answer": 0
	},
]
#endregion
