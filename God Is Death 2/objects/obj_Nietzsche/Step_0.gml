var on_ground = place_meeting(x, y+1, obj_solid)
var on_wall = false
var on_dir = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var hit = noone

if (on_dir != 0) dir = on_dir

if (wall_jump != 0)
	hspd += wall_jump
else
	hspd += keyboard_check(ord("D")) - keyboard_check(ord("A"))
vspd += gravity_

if (hspd > 0) image_xscale = 1
else if (hspd < 0) image_xscale = -1

if (on_ground) jump_count = 0

if (place_meeting(x+hspd, y-1, obj_solid))
{
	hit = instance_place(x+hspd, y-1, obj_solid)
	on_wall = true;
	
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
	while(!place_meeting(x+sign(vspd),y,obj_solid))
	{
		y = y+sign(vspd)
	}
	vspd = 0
}

if (keyboard_check_pressed(vk_space))
{
	if (on_wall && hit.can_wall_jump)
	{
		vspd = jump_strength
		wall_jump = -dir * 1
		hit.can_wall_jump = false
		alarm[0] = 10
	}
	else if (jump_count < jump_max)
	{
		jump_count += 1
		vspd = jump_strength	
	}
}

if (vspd > vspd_max) vspd = vspd_max
if (on_wall)
	y += vspd / 4
else 
	y += vspd
	
if (on_wall) status = "wall"
else if (!on_ground) status = "jump"
else if (on_dir != 0) status = "run"
else status = "idle"