@tool
extends CanvasLayer

var exceptions: Array[String] = [
	" ",
	"res://engine",
	"res://objects/chorniy_mario/death_sounds/",
	"res://music/extra/hardcore-die-lol.ogg",
	"res://music/complete_tweaked.ogg",
	"res://music/extra/new_audio_stream_synchronized.tres",
	"res://music/extra/smw-death_extra.ogg",
	"res://music/extra/smw-bonus-clear.ogg",
	'res://music/lostmap/lostmap_completed.ogg',
	"res://music/newermod/Hi Hi Puffy AmiYumi Kaznapped - Stage Clear.ogg",
	"res://music/extra/expert_mode/short-die.ogg",
	"res://music/newermod/Azumanga Daioh Eye Catch 1.ogg",
	"res://music/newermod/Azumanga Daioh Eye Catch 2.ogg"
]

enum DisplayingMode {
	ROLL_IN_OUT,
	TYPER
}

@export var displaying_mode: DisplayingMode = DisplayingMode.ROLL_IN_OUT
var text: String = "[MUSIC NAME]":
	set(value):
		text = value
		$MusicText.text = 'NOW PLAYING:\n%s' % text

var current_scene

var id: int = 0

@onready var music_text: Label = $MusicText
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	if Engine.is_editor_hint(): return
	current_scene = Scenes.current_scene
	
	Audio.music_started.connect(_play)
	
	if current_scene is Map2D:
		current_scene.player_entered_level.connect(
			func():
				animation_player.speed_scale = 10
				var tw: Tween = create_tween().set_trans(Tween.TRANS_SINE)
				tw.tween_property(music_text, ^"modulate:a", 0, 1.0)
		)


func _play(index: int = 0) -> void:
	if Audio._music_channels.is_empty(): return
	var path: String = Audio._music_channels[index].stream.resource_path
	if exceptions.has(path): return
	for i in exceptions:
		if path.begins_with(i): return
	var dot_text = path.get_slice("/", path.get_slice_count("/") - 1)
	var extension_length: int = dot_text.get_slice(".", path.get_slice_count(".") - 1).length()
	var new_text = dot_text.erase(dot_text.length() - extension_length - 1, extension_length + 1)
	if !new_text || exceptions.has(new_text): return
	id = index
	text = new_text
	while is_inside_tree() && !animation_player:
		await get_tree().physics_frame
	animation_player.stop()
	animation_player.play(
		&"showing_roll" if displaying_mode == DisplayingMode.ROLL_IN_OUT else &"showing_typer"
	)
