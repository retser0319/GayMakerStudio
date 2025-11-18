if (instance_exists(player)) {
	x = player.x
	y = player.y
}

count++
if (count < 120)
	alarm[0] = 1
else
	alarm[1] = 15