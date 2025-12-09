if (mode == "spawn" and speed > 0)
{
	speed -= 2
}
else if (mode == "aiming")
{
	direction = point_direction(x, y, target.x, target.y)
	image_angle = point_direction(x, y, target.x, target.y) + 90
}
else if (mode == "attack" and speed < 80) {
	speed += 4
}