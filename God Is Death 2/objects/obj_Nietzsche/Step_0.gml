var on_ground = place_meeting(x, y+1, obj_solid)
var on_wall = false
var on_dir = keyboard_check(vk_right) - keyboard_check(vk_left)

dir = on_dir
hspd += on_dir
	
vspd += gravity_

if (dir > 0) image_xscale = 1
else if (dir < 0) image_xscale = -1
// 땅에서 점프 초기화
if (on_ground) 
{
	status = "idle"
	jump_count = 0
}

if (status != "jump") {
	if (on_dir == 0) status = "idle"
	else status = "run"
}

if (keyboard_check_pressed(ord("Z")))
{
	status = "dash"
	hspd = hspd * 4
	is_dash = true
}

if (keyboard_check_pressed(ord("C")) and status != "attack")
{
	if (status = "wall")
	{
		status = "jump"
		hspd = -hspd
		vspd = jump_strength
	}
	if (jump_count < jump_max)
	{
		status = "jump"
		jump_count += 1
		vspd = jump_strength	
	}
}

if (keyboard_check_pressed(ord("X")))
{
	status = "attack"
}


if (place_meeting(x+hspd, y-1, obj_solid))
{
	status = "wall"
	last_hit_wall = instance_place(x+hspd, y-1, obj_solid)
	
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
	last_hit_wall = instance_place(x, y+vspd, obj_solid)
	
	while(!place_meeting(x+sign(vspd),y,obj_solid))
	{
		y = y+sign(vspd)
	}
	vspd = 0
}

if (vspd > vspd_max) vspd = vspd_max

//if (status = "wall") vspd /= 4
y += vspd