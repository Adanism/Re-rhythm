extends AudioStreamPlayer

signal musicpos(playpackpos: float)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#Get_playback_pos isnt always accurate if that ends up being the case check godot docs and change the code
	var playback_pos = get_playback_position() 
	#figure out if how im gonna save this data
	emit_signal("musicpos", playback_pos)
