class_name PlayerWeapon extends Node2D

@export var attack : AttackData
@onready var weapon_collision = $WeaponHitbox/WeaponCollision

func _on_weapon_hitbox_area_entered(area: Area2D) -> void:
	if area.has_method("damage"):
		attack.source = global_position
		area.damage(attack)
	
	
func turn_down():
	set_rotation_degrees(0)
	
func turn_left():
	set_rotation_degrees(90)
	
func turn_up():
	set_rotation_degrees(180)
	
func turn_right():
	set_rotation_degrees(270)
