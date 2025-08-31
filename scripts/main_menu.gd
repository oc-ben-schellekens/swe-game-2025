extends Control

@onready var start_button: Button = $StartButton
@onready var quit_button: Button = $QuitButton

func start_game():
	get_tree().change_scene_to_file("res://scenes/quiz_scene.tscn")

func quit_game():
	get_tree().quit()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_button.connect("pressed", start_game)
	quit_button.connect("pressed", quit_game)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
