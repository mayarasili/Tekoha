class_name PlayerWeapon extends Node2D

@onready var weapon_collision: CollisionShape2D = $HurtboxComponent/WeaponCollision
@onready var hurtbox_component: HurtboxComponent = $HurtboxComponent

func turn_down():
	set_rotation_degrees(0)
	
func turn_left():
	set_rotation_degrees(90)
	
func turn_up():
	set_rotation_degrees(180)
	
func turn_right():
	set_rotation_degrees(270)
