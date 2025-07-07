class_name EnemyWeapon extends Node2D

@export var attack_data: AttackData
@onready var weapon_collision: CollisionShape2D = $WeaponHurtbox/WeaponCollision

		
func turn_down():
	set_rotation_degrees(0)
	
func turn_left():
	set_rotation_degrees(90)
	
func turn_up():
	set_rotation_degrees(180)
	
func turn_right():
	set_rotation_degrees(270)
