extends Node2D
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
signal event(keypressed)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("LeftKey"):
		emit_signal("event","d")
		audio_stream_player.pitch_scale = randf_range(0.1,1.2)
		audio_stream_player.play()
	if Input.is_action_just_pressed("RightKey"):
		emit_signal("event","f")
		audio_stream_player.pitch_scale = randf_range(0.1,1.2)
		audio_stream_player.play()
	if Input.is_action_just_pressed("UpKey"):
		emit_signal("event","j")
		audio_stream_player.pitch_scale = randf_range(0.1,1.2)
		audio_stream_player.play()
	if Input.is_action_just_pressed("DownKey"):
		emit_signal("event","k")
		audio_stream_player.pitch_scale = randf_range(0.1,1.2)
		audio_stream_player.play()

		
