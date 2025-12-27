extends Node2D

var hit_time: float = 0.0  
var scroll_speed: float = 500.0 

func _process(_delta):
	var time_to_hit = hit_time - Global.song_time
	position.y = -time_to_hit * scroll_speed
