extends Node2D

var bpm = 126.0 # Use floats to ensure precise division
var beat_duration = 60.0 / bpm # Duration of one beat in seconds
var last_beat = 0
var activebeat = -1
signal beat(current_beat)
var margin = 0.2

func _on_music_player_musicpos(playback_pos: float) -> void:
	# Determine which beat we SHOULD be on based on time
	var current_total_beat = floor(playback_pos / beat_duration)
	
	# If the calculated beat is higher than our last recorded beat, a beat happened
	if current_total_beat > last_beat:
		last_beat = current_total_beat
		emit_signal("beat", last_beat)
		#print("Beat: ", last_beat)
		#Makes sure the player doesnt need to have frame perfect timing 
		#Ima use this variable later on in another node
		var activebeatstartpos = current_total_beat - margin
		var activebeatendtpos = current_total_beat + margin
		
