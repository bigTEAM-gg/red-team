# TODO:
# - hunting mode timer
# - stats? (expiration time?, visibility level???)
# - different animals with different stats
# - equipment affecting stats
# - camo shader

extends Node

@onready var forest: Forest = $Forest
var hunt: Hunt = null

@onready var HuntScene = preload("res://scenes/hunt.tscn")

func _ready() -> void:
	var style: DialogicStyle = load("res://dialog/styles/default_dialog.tres")
	style.prepare()

func _on_forest_hunt_animal() -> void:
	printerr('DISABLED FOR NOW SORRY!')
	return
	forest.visible = false
	# TODO: Pause processing forest
	hunt = HuntScene.instantiate()
	self.add_child(hunt)
	hunt.connect("hunt_animal_done", self._on_hunt_animal_done)
	
func _on_hunt_animal_done() -> void:
	printerr('DISABLED FOR NOW SORRY!')
	return
	forest.visible = true
	hunt.queue_free()
	hunt = null
