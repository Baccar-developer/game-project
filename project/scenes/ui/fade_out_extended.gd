extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = create_tween()
	tween.tween_property($color_rect , "color" ,Color(0.04,0.04,0.04,0),1 )
	tween.play()
	tween.tween_callback(queue_free)
