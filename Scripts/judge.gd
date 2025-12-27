extends Node2D

const TEMPLATE_CHART = "res://Resources/Data/Template_Chart.json"
var thecurrentbeat: Variant 
var thecurrentlanepressed: Variant
signal success
signal failure
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func whatismyjsondata():
	var chart_file = FileAccess.open(TEMPLATE_CHART,FileAccess.READ)
	var chart_text = chart_file.get_as_text()
	var chart_data = JSON.parse_string(chart_text) # Returns null if parsing failed.
	if chart_data == null:
		print("Error: Could not open chart")
		return 
	for entry in chart_data["chart"]:
		if thecurrentbeat == entry["beat"]:
			#print("chart_beat: ",entry["beat"])
			if thecurrentlanepressed == entry["lane"]:
				print("That was the correct lane")
				emit_signal("sucess")
			else:
				emit_signal("failure")	
			#print("chart_lane: ",entry["lane"])
		
	
	
	

	
func _on_player_controller_event(keypressed: Variant) -> void:
	if keypressed == "d":
		thecurrentlanepressed = 0
	elif keypressed == "f":
		thecurrentlanepressed = 1
	elif keypressed == "j":
		thecurrentlanepressed = 2
	elif keypressed == "k":
		thecurrentlanepressed = 3
	else:
		print("Error, keypressed not found")
		return
		
	print("key",keypressed)
	print("beat", thecurrentbeat)


func _on_metronome_beat(current_beat: Variant) -> void:
	thecurrentbeat = current_beat
	#print(beatindex)
	whatismyjsondata()
