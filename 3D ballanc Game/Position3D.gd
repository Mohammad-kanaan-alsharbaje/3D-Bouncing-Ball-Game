extends Position3D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var player = get_parent().get_node('player')
var offset
# Called when the node enters the scene tree for the first time.
func _ready():
	offset = translation -player.translation


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translation =   player.translation + offset
