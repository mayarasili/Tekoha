class_name StateStun extends State

@export var stun_timer: Timer
@export var hitbox: CollisionShape2D

@onready var attack_info: AttackData

func enter():
	if state_machine.current_state.name == "Stun":
		if owner_node is CharacterBody2D:
			owner_node.velocity = -(attack_info.source - owner_node.global_position).normalized() * attack_info.knockback
			
		stun_timer.wait_time = attack_info.stun_duration
		stun_timer.start()
		animation_root_node.travel("Stun")

func exit():
	if state_machine.current_state.name == "Stun":
		stop_stun()
		animation_root_node.travel("Idle")

func update(_delta: float):
	pass

func physics_update(_delta: float):
	pass

func receive_attack_info(attack: AttackData):
	attack_info = attack

func _on_stun_timer_timeout() -> void:
	transition_to("Idle")

func stun():
	if state_machine.current_state.name == "Stun":
		hitbox.set_deferred("disabled", true)

func stop_stun():
	if state_machine.current_state.name == "Stun":
		hitbox.set_deferred("disabled", false)
