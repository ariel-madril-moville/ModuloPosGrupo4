extends Node2D

@export var Velocidade = 2
@export var possoCorrer = false
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_pressed("right")):
		position += Vector2(Velocidade, 0)


func correr():
	possoCorrer =  true
	pass # Replace with function body.


func parar():
	possoCorrer =  false
	pass # Replace with function body.
