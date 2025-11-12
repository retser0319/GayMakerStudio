var on_ground = place_meeting(x, y+1, obj_solid)
var on_wall = false
var on_attack = false
var on_dir = keyboard_check(vk_right) - keyboard_check(vk_left)
var hit_wall = noone
var is_dash = false


if (on_dir != 0) dir = on_dir

if (wall_jump != 0)
	hspd += wall_jump
else
	hspd += on_dir
vspd += gravity_

if (hspd > 0) image_xscale = 1
else if (hspd < 0) image_xscale = -1

if (on_ground) jump_count = 0

if (keyboard_check_pressed(ord("Z")))
{
	hspd = hspd * 4
	is_dash = true
}

if (place_meeting(x+hspd, y-1, obj_solid))
{
	hit_wall = instance_place(x+hspd, y-1, obj_solid)
	if (!on_ground) on_wall = true;
	
	while(!place_meeting(x+sign(hspd),y-1,obj_solid))
	{
		x = x+sign(hspd)
	}
	hspd = 0
}

x += hspd
hspd *= 0.9

if (place_meeting(x, y+vspd, obj_solid))
{
	last_wall_jump = instance_place(x, y+vspd, obj_solid)
	
	while(!place_meeting(x+sign(vspd),y,obj_solid))
	{
		y = y+sign(vspd)
	}
	vspd = 0
}

if (keyboard_check_pressed(ord("C")))
{
	if (on_wall && hit_wall != last_wall_jump)
	{
		last_wall_jump = hit_wall
		vspd = jump_strength
		wall_jump = -dir * 1
		alarm[0] = 5
	}
	else if (!on_wall and jump_count < jump_max)
	{
		jump_count += 1
		vspd = jump_strength	
	}
}

if (keyboard_check_pressed(ord("X")))
{
	on_attack = true
	image_index = 0
	if (on_ground)
		alarm[1] = 30
	else {
		vspd = jump_strength / 2
		alarm[1] = 10
	}
}



if (vspd > vspd_max) vspd = vspd_max
if (on_wall)
	y += vspd / 4
else 
	y += vspd
	
if (status == "attack") return
if (on_attack) status = "attack"
else if (is_dash) status = "dash"
else if (on_wall) status = "wall"
else if (!on_ground) status = "jump"
else if (on_dir != 0) status = "run"
else status = "idle"