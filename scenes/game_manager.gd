extends Node

@onready var label_points: Label = %LabelPoints
@onready var vida_1: TextureRect = %Vida1
@onready var vida_2: TextureRect = %Vida2
@onready var vida_3: TextureRect = %Vida3

func add_points():
	%AudioPoint.play()
	Global.score = Global.score + 1
	label_points.text = "x " + str(Global.score)
	
func show_points():
	label_points.text = "x " + str(Global.score)

func show_lives():
	if Global.lives == 3:
		vida_3.visible = true
		vida_2.visible = true
		vida_1.visible = true
	elif Global.lives == 2:
		vida_3.visible = false
		vida_2.visible = true
		vida_1.visible = true
	else:
		vida_3.visible = false
		vida_2.visible = false
		vida_1.visible = true

func lose_lives():
	if Global.lives > 1:
		Global.lives -= 1
	else:
		get_tree().change_scene_to_file("res://scenes/menu_comeco.tscn")

func _ready() -> void:
	show_points()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
