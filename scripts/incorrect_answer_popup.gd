extends Panel

signal button_clicked

@onready var button: Button = $Button
@onready var answer_label: Label = $AnswerLabel

func button_click():
	button_clicked.emit()
	self.visible = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	button.connect("pressed", button_click)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_question_handler_next_question_shown(answer: String) -> void:
	answer_label.text = answer
