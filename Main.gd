extends Node2D
@export var crate : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("release") :
		var new_crate=crate.instantiate()
		add_child(new_crate)
		
		self.position.x= randi_range(100,600)
		self.position.y= 10
