var ball = instance_create_layer(x,y,"Effect",Shuriken)
var boss = noone;

if (instance_exists(obj_Boss_1)) boss = obj_Boss_1;
else if (instance_exists(obj_Boss_2)) boss = obj_Boss_2;
else if (instance_exists(obj_Boss_3)) boss = obj_Boss_3;

ball.direction = point_direction(ball.x,ball.y,boss.x,boss.y)
ball.speed = 30

alarm[4] = 180