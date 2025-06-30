class_name EnemyMelee extends Enemy

@onready var weapon: EnemyWeapon = $Weapon

func _ready() -> void:
	speed = 50
	
	radius_to_follow = 250
	radius_to_aim = 30
	radius_to_move_away = 15
	
	animation_tree = $AnimationTree
	state_machine = $StateMachine
	ray_cast = $RayCast
	nav_agent = $NavigationAgent2D
	
	owner_info = OwnerInfo.new()
	owner_info.owner_node = self
	owner_info.animation_tree = animation_tree
	owner_info.animation_root_node = animation_tree["parameters/playback"]
	state_machine.init(owner_info)
	
func _physics_process(_delta: float) -> void:
	last_facing_direction = move_direction
	move_and_slide()
