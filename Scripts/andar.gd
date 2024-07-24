extends Area2D

@export var Velocidade = 400
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("right"):
		$AnimatedSprite2D.flip_h = false
		velocity.x += 1
	if Input.is_action_pressed("left"):
		$AnimatedSprite2D.flip_h = true
		transform.inverse()
		velocity.x -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * Velocidade
		position += velocity * delta
		$AnimatedSprite2D.play("walk")
	else:
		$AnimatedSprite2D.stop()
