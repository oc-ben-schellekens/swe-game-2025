extends Node2D

@onready var question_handler: QuestionHandler = $question_handler

var data_of_question := {
	"text": "[shake]test question, true or false?[/shake]",
	"answers": ["True", "False", "a", "a"],
	"correct_answer": 0
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	question_handler.show_question(data_of_question)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_question_handler_question_answered_correctly() -> void:
	print("correct")

func _on_question_handler_question_answered_incorrectly() -> void:
	print("WRONG XXXXX")
