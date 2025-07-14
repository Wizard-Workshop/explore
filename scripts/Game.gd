# scripts/Game.gd
extends Node
var greeting_loaded := false

const GREETING_SCENE := preload("res://scenes/ui/Greeting.tscn")

func _ready():
	WizardCore.Auth.login_guest()   # guest UID
	_swap_to("greeting")

func _swap_to(_id):
	if not greeting_loaded:
		var hud := GREETING_SCENE.instantiate()
		get_tree().root.add_child.call_deferred(hud)   # adds on top of everything
		greeting_loaded = true
