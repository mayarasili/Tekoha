class_name HitboxComponent extends Area2D

@export var health_component: HealthComponent
@export var state_machine: StateMachine
@export var stun_state: State

func damage(attack: AttackData):
	if health_component:
		health_component.take_damage(attack)
		if stun_state and state_machine.current_state.name != "Stun" and state_machine.current_state.name != "Death":
			stun_state.receive_attack_info(attack)
			state_machine.current_state.transition_to("Stun")
			
func _on_area_entered(attack: HurtboxComponent) -> void:
	damage(attack.Attack)
	var attacker = attack.get_parent()
	if attacker.is_in_group("Projectile"):
		attacker.queue_free()
