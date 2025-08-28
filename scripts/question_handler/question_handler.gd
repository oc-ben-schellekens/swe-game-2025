extends Control
class_name QuestionHandler

signal question_answered_correctly
signal question_answered_incorrectly

@onready var question_text: RichTextLabel = %QuestionText
@onready var question_container: HFlowContainer = %QuestionContainer
var buttons: Array[Button] = []

func show_question(question_data: Dictionary):
	question_text.text = question_data.text
	if question_data.answers.size() > 0 && question_data.answers.size() <= 4:
		for index in range(question_data.answers.size()):
			var answer_text = question_data.answers[index]
			if index == question_data.correct_answer:
				_add_button(answer_text, question_container, true)
			else:
				_add_button(answer_text, question_container, false)
	else:
		push_error("Question data had too many / too little answers")
		get_tree().quit(1)

func clear_question():
	for button: Button in buttons:
		button.queue_free()
	buttons.clear()

func _add_button(text: String, parent: Node, is_correct: bool):
	var button = Button.new()
	button.text = text
	
	if is_correct:
		button.connect("pressed", question_answered_correctly.emit)
	else:
		button.connect("pressed", question_answered_incorrectly.emit)
	
	buttons.append(button)
	parent.add_child(button)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Question handler is ready!!!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
