extends AnimatedSprite2D

const TONGUE = preload("res://objects/funny_jumpscares/thehell.tscn")
const SCREWTHATNOISE = preload("res://objects/funny_jumpscares/screwthatnoise.ogg")

@export var trigger_radius: float = 100
@export var precise_radius_area: NodePath

@onready var radius_area: Area2D = get_node_or_null(precise_radius_area)
var _triggered: bool

func _ready() -> void:
	if radius_area:
		radius_area.body_entered.connect(_on_body_entered)


func _physics_process(delta: float) -> void:
	var pl: Player = Thunder._current_player
	if !pl: return
	
	if !radius_area && pl.global_position.distance_squared_to(global_position) <= trigger_radius ** 2:
		if !_triggered:
			trigger()
			_triggered = true
	else:
		_triggered = false


func trigger() -> void:
	Audio.play_sound(SCREWTHATNOISE, self, true, { ignore_pause = true })
	var thehell = TONGUE.instantiate()
	thehell.position = Vector2(38, 158)
	add_child.call_deferred(thehell)


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		trigger()
