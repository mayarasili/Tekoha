class_name EnemyWeapon extends Node2D

@export var attack_data: AttackData
@onready var weapon_collision: CollisionShape2D = $WeaponHitbox/WeaponCollision

func _on_weapon_hitbox_area_entered(area: Node2D) -> void:
	if area.has_method("damage"):
		area.damage(attack_data)
		
func turn_down():
	set_rotation_degrees(0)
	
func turn_left():
	set_rotation_degrees(90)
	
func turn_up():
	set_rotation_degrees(180)
	
func turn_right():
	set_rotation_degrees(270)
