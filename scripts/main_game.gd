extends Node2D

@onready var question_handler: QuestionHandler = $question_handler
@onready var score_indicator: Label = $ScoreIndicator
@onready var incorrect_answer_popup: Panel = $IncorrectAnswerPopup
@onready var correct_particle: CPUParticles2D = $CorrectParticle
@onready var correct_noise: AudioStreamPlayer2D = $CorrectNoise

var RNG := RandomNumberGenerator.new()

# var data_of_question := {
# 	"text": "[shake]test question, true or false?[/shake]",
# 	"answers": ["True", "False"],
# 	"correct_answer": 0
# }

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Globals.set_score(10)
	question_handler.show_question(Globals.questions.pick_random())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var current_frame_score: int = Globals.get_score()
	score_indicator.text = "Score: %d" % current_frame_score
	if current_frame_score >= 100:
		Globals.win_screen()
	elif current_frame_score < 0:
		Globals.lose_screen()

func _on_question_handler_question_answered_correctly() -> void:
	question_handler.clear_question()
	Globals.add_score(RNG.randi_range(-5,lerp(10, 5, (Globals.get_score()/100) )))
	correct_particle.restart()
	correct_noise.play()
	print(str(lerp(10, 5, (float(Globals.get_score())/100)) ) + " | " +str(float(Globals.get_score())/100))
	question_handler.show_question(Globals.questions.pick_random())

func _on_question_handler_question_answered_incorrectly() -> void:
	question_handler.clear_question()
	incorrect_answer_popup.visible = true

func _on_incorrect_answer_popup_button_clicked() -> void:
	question_handler.show_question(Globals.questions.pick_random())
