ball = instance_create_layer(x,y,"Effect",LightingBall)

ball.direction = dir * count * 51
ball.speed = 10

count++

if (count < 60)
{
	alarm[0] = 5
}
else
	instance_destroy(self)