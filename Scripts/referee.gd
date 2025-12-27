extends Node2D

var score:int = 0
var NOTE_SCENE = preload("res://Scenes/Game_Scenes/notes.tscn")
var playbackpos 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_judge_success() -> void:
	#print("He did good alright")
	pass
	


func _on_judge_failure() -> void:
	#print("what a mistake")
	pass


func _on_judge_chart(chart_data,thecurrentbeat) -> void:
	for entry in chart_data["chart"]:
		if thecurrentbeat == entry["beat"]:
			if entry["lane"] == 0:
					var NOTES = NOTE_SCENE.instantiate()
					NOTES.position = Vector2(150,(playbackpos*100))
					add_child(NOTES)
					print("AAAAH")
			elif entry["lane"] == 1:
				var NOTES = NOTE_SCENE.instantiate()
				NOTES.position = Vector2(150,(playbackpos*1000))
				add_child(NOTES)
			elif entry["lane"] == 2:
				var NOTES = NOTE_SCENE.instantiate()
				NOTES.position = Vector2(150,(playbackpos*1000))
				add_child(NOTES)
			elif entry["lane"] == 3:
				var NOTES = NOTE_SCENE.instantiate()
				NOTES.position = Vector2(150,(playbackpos*1000))
				add_child(NOTES)
			else:
				print("shi")
				return
		
			#print(NOTES)
			
			
			


func _on_metronome_playbackpos(playback_pos) -> void:
	playbackpos = playback_pos
	#print(playbackpos)
