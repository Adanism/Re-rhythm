extends Node2D
var FILE_PATH = "res://Resources/Data/Nokia.json"
var jsoncbeat:int = 0
var letterlane = 0
var data = {
	"beat": jsoncbeat, "lane": letterlane 
}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_playercontroller_event(keypressed: Variant) -> void:
	#for the dictionary
	letterlane = keypressed
	var file = FileAccess.open(FILE_PATH, FileAccess.WRITE)
	var data_to_send = keypressed
	
	file.store_string(keypressed)
	file.close()
	var file_read = FileAccess.open(FILE_PATH, FileAccess.READ)
	var json_string = file_read.get_as_text()
	print(json_string)


func _on_metronome_beat(current_beat: Variant) -> void:
	print("Beat: ", current_beat)
	jsoncbeat = current_beat
