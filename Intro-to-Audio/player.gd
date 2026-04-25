extends CharacterBody2D


#VARS AND CONSTS
@onready var sprite = $AnimatedSprite2D

const SPEED = 150


#START FUNC


#UPDATING FUNC
func _physics_process(_delta):
	#MOVEMENT
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	else:
		velocity.x = 0
	
	if Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
	elif Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
	else:
		velocity.y = 0
		
	#SPRITE VISUALS
	if Input.is_action_pressed("ui_left"):
		sprite.play("left")
	elif Input.is_action_pressed("ui_right"):
		sprite.play("right")
	elif Input.is_action_pressed("ui_up"):
		sprite.play("away")
	else:
		sprite.play("default")
		
	move_and_slide()
