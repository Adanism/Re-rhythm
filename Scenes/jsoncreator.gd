extends Node2D
@onready var music_player: AudioStreamPlayer = $"../MusicPlayer"
var FILE_PATH = "res://Resources/Data/Nokia.json"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(music_player.stream)
#format I need to get it in
#{
 # "song_metadata": {
 #   "name": "Lullaby",
  #  "bpm": 120,
 #   "offset": 0.1
 # },
  #"notes": [
  #  { "beat": 1, "lane": 0, "type": "tap" },
  #  { "beat": 2, "lane": 2, "type": "tap" },
  #  { "beat": 3, "lane": 1, "type": "hold", "duration": 0.5 }
  #]
#}

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_jsonmaker_jsondict(jsondictonary: Dictionary) -> void:
	var file = FileAccess.open(FILE_PATH, FileAccess.READ_WRITE)
	var stringedjson = JSON.stringify(jsondictonary)
	file.store_string(stringedjson)
	file.close()
	#var file_read = FileAccess.open(FILE_PATH, FileAccess.READ)
	#var json_string = file_read.get_as_text()
	#print(json_string)
