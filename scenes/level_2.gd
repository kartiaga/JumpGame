extends Node
@onready var game_manager: Node = %GameManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	game_manager.show_lives()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
