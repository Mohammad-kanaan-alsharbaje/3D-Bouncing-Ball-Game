extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 2.5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var hr = Input.get_action_strength("moveRight") - Input.get_action_strength("moveleft") 
	var vr = Input.get_action_strength("moveb") - Input.get_action_strength("movef")
	
	if Input.is_action_just_pressed("jump"):
		#transform.origin.y+=0.09
		apply_central_impulse(Vector3.UP * 7.5)
	set_axis_velocity(Vector3(hr*speed,0,vr*speed*1.5))
