extends Node2D

signal event(keypressed)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("LeftKey"):
		emit_signal("event","d")
	if Input.is_action_just_pressed("RightKey"):
		emit_signal("event","f")
	if Input.is_action_just_pressed("UpKey"):
		emit_signal("event","j")
	if Input.is_action_just_pressed("DownKey"):
		emit_signal("event","k")

		
