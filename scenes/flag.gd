extends Area2D

@onready var game_manager: Node = %GameManager

var has_played_animation: bool = false

func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D" and not has_played_animation:
		
		# tocar musica quando encostar e para a atual
		%SomAmbiente.stop()
		%AudioBandeira.play()
		
		has_played_animation = true
		
		$AnimatedSprite2D.play("showing")
		# espera a animacao tocar ate o final
		await $AnimatedSprite2D.animation_finished
		for i in range(8):
			$AnimatedSprite2D.play("moving")
			await $AnimatedSprite2D.animation_finished
			
		var current_scene = get_tree().current_scene
		if current_scene.name == "Main":
			get_tree().change_scene_to_file("res://scenes/level2.tscn")
		if current_scene.name == "Level2":
			get_tree().change_scene_to_file("res://scenes/end_menu.tscn")
		
