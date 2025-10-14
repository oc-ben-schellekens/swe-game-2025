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
# 	correct_answer: Integer
# 	reason: String

#region Questions
var questions: Array[Dictionary] = [
	{
		"text": "How do you initally make an LV circuit?",
		"answers": ["Crafting Table", "Assembler", "Circuit Assembler"],
		"correct_answer": 0,
		"reason": "The circuit assembler and assembler actually requires circuits to make"
	},
	{
		"text": "What is the highest tier circuit that you can make in a crafting table?",
		"answers": ["Tier 1 LV", "Tier 1 MV", "Tier 2 LV", "Teir 2 MV"],
		"correct_answer": 1,
		"reason": "The higher tier circuits are both cheaper, and can also be used for the next tier up/"
	},
	{
		"text": "How many voltage tiers are there",
		"answers": ["7", "8", "9", "6"],
		"correct_answer": 2,
		"reason": "The voltage tiers in base gregtech are as follows:\nLV, MV, HV, EV, IV, LuV, ZpM, UV"
	},
	{
		"text": "What LV multiblock allows for a player to make an incredibly large amount of steam, but also poses the risk of exploding?",
		"answers": ["Large bronze boiler", "Large Stainless steel boiler", "Large Steam Turbine"],
		"correct_answer": 0,
		"reason": "There is no large stainless steel boiler, and the turbine uses steam to make power."
	},
	{
		"text": "How many tiers of progression are there in gregtech?",
		"answers": ["7", "8", "9", "10"],
		"correct_answer": 3,
		"reason": "The progression tiers in base gregtech are:\nStone age, Steam age, LV, MV, HV, EV, IV, LuV, ZpM, UV"
	},
	{
		"text": "What area of science it gregtech known for having a large amount of accuracy in?",
		"answers": ["Physics", "Biology", "Chemistry", "Engineering"],
		"correct_answer": 2,
		"reason": "Its not biology because this is a tech mod, and its not engineering or physics because those would be really hard to accuratley make in minecraft."
	},
	{
		"text": "What machine allows for a more efficient rod recipie",
		"answers": ["Autoclave","Lathe","Bending machine","Arc furnace"],
		"correct_answer": 1,
		"reason": "The lathe turns 1 ingot into 2 rods."
	},
	{
		"text": "What CAN'T Covers be used for?",
		"answers": ["Storing items", "Storing fluids", "Generating unlimited water", "Filtering items"],
		"correct_answer": 1,
		"reason": "There is also solar panel covers that generate electricity."
	},
	{
		"text": "What steam age multiblock allows for grinding mass amounts of materials?",
		"answers": ["Steam Grinder", "Large Bronze Macerator"],
		"correct_answer": 0,
		"reason": "There is also the steam oven you can get to smelt in a similar volume."
	},
	{
		"text": "What is one of the first uses for steel in the steam age?",
		"answers": ["LV circuits", "Better pipes", "Better steam machines"],
		"correct_answer": 2,
		"reason": "Bronze steam machines have a efficency debuff, You can make High Pressure steam machines with steel, which removes this debuff"
	},
	{
		"text": "Which of these machines relates to batteries?",
		"answers": ["Packager", "Canning machine", "Polarizer", "Battery Machine"],
		"correct_answer": 1,
		"reason": "You use the canning machine to fill the batteris with their respective material (e.g: sodum, lithium)"
	},
	{
		"text": "What is the main material used in MV tier?",
		"answers": ["Steel", "Aluminum", "Stainless Steel", "Tin alloy"],
		"correct_answer": 1,
		"reason": "You gain the ability to smelt aluminum at the end of LV when you get the EBF."
	},
	{
		"text": "What is the first tier of coil that you obtain?",
		"answers": ["Kanthal", "Nichrome", "Cupronickel", "None of these"],
		"correct_answer": 2,
		"reason": "All the tiers above cupronickel requre an Electric Blast Furnace, Which needs coils to make."
	},
	{
		"text": "What tool is used for configuring a machine/cover?",
		"answers": ["Wrench", "Screwdriver", "Hammer", "Shovel"],
		"correct_answer": 1,
		"reason": "The wrench is used to configure what machine sides do, the hammer stops working and the shovel is a mining tool."
	},
	{
		"text": "What multiblock allows for the player to smelt aluminium",
		"answers": ["Primitive Blast Furnace", "Blast furnace", "Electric Blast Furnace"],
		"correct_answer": 2,
		"reason": "The primitive blast furnace can only smelt steel, and there is no multiblock just called the \"Blast furnace\""
	},
	{
		"text": "What is the main purpose of Advanced ore processing?",
		"answers": ["Getting more metal from ore", "Ore Byproducts", "Getting Usable Metals"],
		"correct_answer": 1,
		"reason": "Byproducts of ores are often the only way to move up a voltage/progression tier."
	},
#	{
#		"text": "",
#		"answers": ["", "", "", ""],
#		"correct_answer": 0,
#		"reason": ""
#	},
]
#endregion
