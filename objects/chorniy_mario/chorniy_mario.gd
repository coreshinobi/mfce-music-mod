extends Area2D

const DEATH_SOUNDS = [
	preload("res://objects/chorniy_mario/death_sounds/cs/ya te olvide conchetumare.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/8 hours on the clock.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/acracebest noooo.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/angry german kid.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/bbq bacon burger.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/bowser oh shit.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/callate la boca.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/canicallyoutoki.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/cantate otra wea.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/chaa hermano la wea loca.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/creeaaaature.wav"),preload("res://objects/chorniy_mario/death_sounds/cs/dane cook scream.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/dang it grandpa.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/do i look like your travel agent.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/esqueleto voz loquendo.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/gta 6.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/halawa.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/im on fire.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/imps give me gas.wav"),preload("res://objects/chorniy_mario/death_sounds/cs/iStraide_1.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/iStraide_2.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/iStraide_3.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/jaja perdedor.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/kid pix 3d - oh no.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/lexie try again.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/ME CAGO EN LA PUTA.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/MI PLAN PERFECTO.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/miu iruma - fucking virgin.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/ohhh shit.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/pastaroniravioli laugh.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/pickerwheelwin.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/poggy woggy.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/reaccion de mi huevo jajaja.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/rejanolg closet hit.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/rtc crash.wav"),preload("res://objects/chorniy_mario/death_sounds/cs/TUBAGUY.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/vincent knurpy.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/wake up call.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/ya te olvide conchetumare.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/OW MY BALLS.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/You fucking suck.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/KROOL OH MY GOD.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/pajaro loco y la conchetumare.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/AAA SUTA.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/I'm die thank you forever.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/COME ON, BRAD !!!.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/looper_whatthehell.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/looper_goodjob.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/looper_norush.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/RAMITAS EVERCRISP.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/abreme la puerta vieja conchetumare.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/uuuu youre fucking dumb.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/ah piensan que soy weon.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/OHH NOOOO.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/im your number one fan.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/hijo de puta la puta que te pario.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/anda a la conchetumare hijo de puta.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/miu iruma - start shit.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/miu iruma - mosquito bites.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/miu iruma - clumsy dipshit.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/Imagine dying.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/buenas tardes grupo.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/theduckvoice fall.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/2011X mom.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/PinkiePie_MadeEquestria.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/oh for crying out loud.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/fliqpyscreamlol.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/owen_laugh.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/owen_sickshit.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/shinypokemonfail.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/pogonyexcerptlol.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/samohud.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/sata andagi.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/Garv death sound.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/The lollipop company just called.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/bdeath.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/MEWWW.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/mew ah.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/mew toriell.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/vic_fukawa_99_040.wav"),preload("res://objects/chorniy_mario/death_sounds/cs/dr1_voice_hca_us.awb.06363.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/dr1_voice_hca_us.awb.06325.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/celestialudenberg.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/stupid.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/jaja se mamo.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/c mamut.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/its not that deep bro.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/vale perfecto.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/ahhh hahahaha.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/amatsuki_fuckyoumakoto.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/amatsuki_bankaccount.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/amatsuki_noqueen.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/amatsuki_nofollowrules.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/amatsuki_noattend.ogg"),
	preload("res://objects/chorniy_mario/death_sounds/cs/amatsuki_fishies.ogg"),preload("res://objects/chorniy_mario/death_sounds/cs/blud thought he ronaldo.ogg")
]

const EXPLOSION = preload("res://engine/objects/effects/explosion/explosion.tscn")
const APPEAR = preload("res://objects/chorniy_mario/appear.ogg")

@onready var mario: Player = Thunder._current_player
@onready var sprite = $Sprite
@onready var player = get_node_or_null("../Player")
@onready var kevin_text_2 = $KevinText2
@onready var _random_sounds_tweak: bool = SettingsManager.get_tweak("secret_mode_new_death_sounds", true)
@onready var cloud_light_effect: Sprite2D = $CloudLightEffect
@onready var stars: CPUParticles2D = $Stars

var mario_pos: Vector2
var _prev_follow_pos: Vector2
var appear_triggered = false
var cutscene: bool = false

var pause: bool = false
var warp_invinc_timer: float

func hide_text() -> void:
	kevin_text_2.visible = false

func _ready() -> void:
	if !is_instance_valid(mario): return
	mario_pos = mario.global_position
	_prev_follow_pos = mario_pos
	reset_physics_interpolation()
	if Scenes.current_scene && "expert_mode/otherworld/level_8.tscn" in Scenes.current_scene.scene_file_path:
		mario.death_music_ignore_pause = true
		var _22 = load("res://music/minix/custom/smp2_gameover.mp3")
		mario.death_music_override = _22
		mario.death_wait_time = -1
		KevinGlobal.wait_time = _22.get_length()
		return
	var _death_sound = DEATH_SOUNDS[0]
	if _random_sounds_tweak:
		_death_sound = DEATH_SOUNDS.pick_random()
	if _death_sound is String:
		_death_sound = load(_death_sound)
	mario.death_music_override = _death_sound
	KevinGlobal.wait_time = _death_sound.get_length()
	mario.death_music_ignore_pause = true


func _physics_process(delta: float) -> void:
	if !is_instance_valid(mario):
		if is_instance_valid(player):
			_map_process(delta)
		return
	if warp_invinc_timer > 0: warp_invinc_timer -= delta * 50
	
	if !appear_triggered && (is_instance_valid(mario) && mario_pos.distance_squared_to(mario.global_position) > 4 ):
		appear_triggered = true
		get_tree().create_timer(1.0, false, true).timeout.connect(func():
			visible = false
			if !cutscene:
				Audio.play_1d_sound(APPEAR, true, { ignore_pause = true })
			for i in 2:
				await get_tree().physics_frame
			visible = true
		)
	
	if !appear_triggered: return
	if !is_instance_valid(mario):
		return
	
	if mario.completed && !cutscene:
		kevin_podokh()
		return
	
	if _prev_follow_pos.distance_to(mario.global_position) > 100:
		reset_physics_interpolation()
	_prev_follow_pos = mario.global_position
	
	var pos: Vector2 = mario.global_position
	var animation = mario.sprite.animation
	var frame = mario.sprite.frame
	var flip_h = mario.sprite.flip_h
	var frames = mario.sprite.sprite_frames
	var z_ind = mario.sprite_container.z_index
	if mario.warp != 0 && mario.warp_dir == mario.WarpDir.UP:
		warp_invinc_timer = 15
	
	get_tree().create_timer(1.0, false, true).timeout.connect(func():
		if pause: return
		
		if !is_instance_valid(mario):
			kevin_podokh()
			return
		
		var is_resetting := false
		if global_position.distance_to(pos) > 100:
			is_resetting = true
		global_position = pos
		if is_resetting:
			reset_physics_interpolation()
		sprite.z_index = z_ind
		sprite.animation = animation
		sprite.frame = frame
		sprite.flip_h = flip_h
		sprite.sprite_frames = frames
	)
	
	if overlaps_body(mario) && !mario.warp && warp_invinc_timer <= 0 && !cutscene:
		mario.die()
		KevinGlobal.touched_kevin.emit()
		kevin_podokh()


var map_count: int

func _map_process(_delta: float) -> void:
	scale = Vector2(0.5, 0.5)
	
	var pos: Vector2 = player.global_position
	if !"player" in player: return
	var animation = player.player.animation
	var frame = player.player.frame
	var flip_h = player.player.flip_h
	var frames = player.player.sprite_frames
	
	if !appear_triggered:
		appear_triggered = true
		Thunder.reorder_on_top_of(self, player)
		cloud_light_effect.self_modulate.a = 0.75
	
	if _prev_follow_pos.distance_to(pos) > 100:
		reset_physics_interpolation()
	_prev_follow_pos = pos
	
	get_tree().create_timer(1.0 if !player.is_faster else 0.15, false, true).timeout.connect(func():
		if !player.reached:
			var is_resetting := false
			if global_position.distance_to(pos) > 100:
				is_resetting = true
			global_position = pos
			if is_resetting:
				reset_physics_interpolation()
		sprite.z_index = player.player.z_index
		if map_count < 2:
			visible = false
			map_count += 1
		else:
			visible = true
			#z_index = 1
		sprite.animation = animation
		sprite.frame = frame
		sprite.flip_h = flip_h
		sprite.sprite_frames = frames
	)


func kevin_podokh() -> void:
	queue_free()
	var ex = EXPLOSION.instantiate()
	ex.global_position = global_position
	Scenes.current_scene.add_child(ex)
