extends Node2D
var lane_log = {}
var beat_log = {}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
signal jsondict(jsondictonary: Dictionary)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#Do this at the end of the song after testing
	var combined_dict = beat_log.duplicate()
	combined_dict.merge(lane_log)
	emit_signal("jsondict",combined_dict)
	

func _on_playercontroller_event(keypressed: Variant) -> void:
	var new_key = "lane" + str(lane_log.size() + 1)
	lane_log[new_key] = keypressed
	


func _on_metronome_beat(current_beat: Variant) -> void:
	var new_beat = "beat" + str(beat_log.size() + 1)
	beat_log[new_beat] = current_beat
