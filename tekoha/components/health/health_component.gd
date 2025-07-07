class_name HealthComponent extends Node2D

@export var MAX_HEALTH: int = 100
@export var state_machine: StateMachine

var health : int

func _ready() -> void:
	health = MAX_HEALTH

func take_damage(attack: AttackData) -> void:
	print(attack.damage)
	health -= attack.damage

	if health <= 0:
		if get_parent() is Player:
			state_machine.current_state.transition_to("Death")
		else:
			get_parent().queue_free()
