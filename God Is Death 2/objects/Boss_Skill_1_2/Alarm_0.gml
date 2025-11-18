ball = instance_create_layer(x,y,"Instances",LightingBall)

if (count > 50 and count < 100)
	ball.direction = -count * 31
else
	ball.direction = count * 31
ball.speed = 15

count++

if (count < 150)
{
	if (count == 50 or count == 100 or count == 150) alarm[0] = 15
	else alarm[0] = 2
}
else
	instance_destroy(self)