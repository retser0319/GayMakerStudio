var ball = instance_create_layer(x, y, "Effect", Shuriken);
var boss = noone;

// 1. 우선순위대로 보스 찾기
if (instance_exists(obj_Boss_1)) {
    boss = instance_nearest(x, y, obj_Boss_1);
}
else if (instance_exists(obj_Boss_2)) {
    boss = instance_nearest(x, y, obj_Boss_2);
}
else if (instance_exists(obj_Boss_3_1)) {
    boss = instance_nearest(x, y, obj_Boss_3_1);
}

// 2. 보스가 실제로 존재할 때만 방향 설정
if (instance_exists(boss)) {
    ball.direction = point_direction(ball.x, ball.y, boss.x, boss.y);
} else {
    // 보스가 없으면: 그냥 앞으로 쏘거나, 랜덤 방향 등
    ball.direction = image_xscale > 0 ? 0 : 180; // 예: 캐릭터 바라보는 방향 기준
    // 또는 ball.direction = irandom(359);
}

ball.speed = 30;

alarm[4] = 180;