var on_ground = place_meeting(x, y+1, obj_solid)
var on_dir = keyboard_check(vk_right) - keyboard_check(vk_left)

if (global.PlayerEnergy < 100) global.PlayerEnergy += 0.25
if (global.PlayerHP > global.PlayerMaxHP) global.PlayerHP = global.PlayerMaxHP
if (lastHP > global.PlayerHP) {
	if (augment_shock_bomb) instance_create_layer(x,y,"Effect",Player_skill)
	if (shield and augment_opportunity) {
		global.PlayerHP = lastHP
		shield = false
		alarm[3] = 120
	}
	lastHP = global.PlayerHP	
	unDamage = true
	blend = c_red
	alarm[0] = 5
}
if (global.PlayerHP <= 0) {
	if (augment_matryoshka and life > 0) {
		global.PlayerHP = life * 25
	}
	game_restart()
}

if (status != "attack")
	hspd += on_dir * moveSpeed
	
if (status != "dash" and status != "wall" and status != "idle")
	vspd += gravity_
else
	vspd = 0

if (on_dir > 0 and status != "attack") image_xscale = size
else if (on_dir < 0 and status != "attack") image_xscale = -size

// 땅에서 점프 초기화
if (on_ground and status != "attack" and status != "dash" and status != "stunned") 
{
	status = "idle"
	jump_count = 0
	current_jump_wall = noone
	can_fly_attack = true
}
else if (!on_ground and status != "attack" and status != "dash" and status != "stunned") 
{
	status = "jump"	
}

if (status != "jump" and status != "attack" and status != "dash" and status != "stunned") {
	if (on_dir == 0) status = "idle"
	else 
	{
		tranceDelay = 0
		status = "run"
	}
}

if (keyboard_check_pressed(ord("Z")) and global.PlayerEnergy >= dash_req and status != "attack" and status != "stunned")
{	
	dashX = x
	if (augment_Acrobat) can_fly_attack = true
	global.PlayerEnergy -= dash_req
	status = "dash"
	hspd = image_xscale * 30 * moveSpeed
	alarm[1] = 5
	
	audio_play_sound(snd_dash, 1, false);
}

if (keyboard_check_pressed(ord("C")) and status != "attack" and status != "stunned")
{
	if (augment_Acrobat) can_fly_attack = true
	if (current_jump_wall != last_jump_wall)
	{
		status = "jump"
		vspd = jump_strength
		last_jump_wall = current_jump_wall
		audio_play_sound(snd_jump, 1, false);
	}
	else if (jump_count < jump_max)
	{
		status = "jump"
		jump_count += 1
		vspd = jump_strength	
		audio_play_sound(snd_jump, 1, false);
	}
}

if (keyboard_check(ord("X")) and status != "attack" and status != "dash" and status != "stunned")
{
	if (status == "jump" and can_fly_attack) 
	{
		status = "attack"
		image_index = 0
		image_speed = 30 / attackDelay
		if (!augment_jump_king) vspd = -10
		attackNum = 4
		can_fly_attack = false
		alarm[1] = attackDelay / 2 + 1
		alarm[2] = (attackDelay / 6) + 1
		audio_play_sound(snd_sward, 1, false);
	}
	else if (status != "jump")
	{
		if (augment_trance and tranceDelay < attackDelay - 1) tranceDelay++
		status = "attack"
		image_index = 0
		image_speed = 30 / (attackDelay - tranceDelay)
		alarm[1] = (attackDelay - tranceDelay)
		alarm[2] = ((attackDelay - tranceDelay) / 6) + 1
		audio_play_sound(snd_sward, 1, false);
	}
}

if (place_meeting(x+hspd, y-1, obj_solid))
{
	var wall = instance_place(x+hspd, y-1, obj_solid)
	if (y < wall.y + 32 * wall.image_yscale) { 
		status = "wall"
		current_jump_wall = instance_place(x+hspd, y-1, obj_solid)
	}
	while(!place_meeting(x+sign(hspd),y-1,obj_solid))
	{
		x = x+sign(hspd)
	}
	hspd = 0
}
x += hspd
hspd *= 0.8

if (place_meeting(x, y+vspd, obj_solid))
{
	while(!place_meeting(x+sign(vspd),y,obj_solid))
	{
		y = y+sign(vspd)
	}
	vspd = 0
}

if (status != "dash" and status != "wall") {
	if (vspd > vspd_max) vspd = vspd_max
	y += vspd
}

