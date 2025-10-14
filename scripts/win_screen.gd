extends Control

@onready var subtitle_label: Label = $SubtitleLabel
@onready var play_again_button: Button = $PlayAgainButton
@onready var main_menu_button: Button = $MainMenuButton
@onready var quit_button: Button = $QuitButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	subtitle_label.text = subtitle_label.text % Globals.get_score()
	play_again_button.connect("pressed", Globals.new_game)
	main_menu_button.connect("pressed", Globals.main_menu)
	quit_button.connect("pressed", Globals.quit_game)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
