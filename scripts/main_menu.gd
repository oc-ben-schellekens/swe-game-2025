extends Control

@onready var start_button: Button = $Buttons/StartButton
@onready var quit_button: Button = $Buttons/QuitButton
@onready var progress: Control = $Progress
@onready var progress_bar: ProgressBar = $Progress/ProgressBar
@onready var progress_label: Label = $Progress/ProgressLabel

func start_game():
	get_tree().change_scene_to_file("res://scenes/quiz_scene.tscn")

func quit_game():
	get_tree().quit()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var current = 0
	var question_amount = Globals.questions.size()
	progress_label.text = "Parsing questions: %d/" % current + "%d" % question_amount
	
	progress_bar.max_value = question_amount
	for question in Globals.questions:
		current += 1
		progress_label.text = "Parsing questions: %d/" % current + "%d" % question_amount
		progress_bar.value = clamp(current, 0, progress_bar.max_value)
		var answers_amount: int = question.answers.size() 
		var correct_answer_index: int = question.correct_answer
		if answers_amount < 1 or answers_amount > 4:
			push_error("Question data had too many / too little answers")
			get_tree().quit(1)
		print(question.answers[correct_answer_index]) 
	progress.visible = false
	$Buttons.visible = true
	start_button.connect("pressed", start_game)
	quit_button.connect("pressed", quit_game)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
