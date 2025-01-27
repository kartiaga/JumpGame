extends Area2D

@onready var game_manager: Node = %GameManager

@onready var audio_bandeira: AudioStreamPlayer = %AudioBandeira

func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		game_manager.add_points()
		queue_free();
