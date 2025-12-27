extends Node2D

@onready var music_player: AudioStreamPlayer = $"../MusicPlayer"
const FILE_PATH = "res://Resources/Data/Nokia.json"
@export var FILE_NAME = "Nokia"
@export var FILE_BPM = 120
@export var FILE_OFFSET = 0.0
var currentjsondictonary: Dictionary
func _on_jsonmaker_jsondict(jsondictonary: Dictionary) -> void:
	currentjsondictonary = jsondictonary
	var final_data = {
		"song_metadata": {
			"name": FILE_PATH,
			"bpm": FILE_BPM,
			"offset": FILE_OFFSET
		},
		"notes": [] 
	}

	
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ChartSend"):
		if FileAccess.file_exists(FILE_PATH):
			var write_file = FileAccess.open(FILE_PATH,FileAccess.WRITE)
			var jsonstring = JSON.stringify(currentjsondictonary)
			write_file.store_string(jsonstring)
			write_file.close()
			print(jsonstring)
			
			
			
			
			
		
	
	
	
