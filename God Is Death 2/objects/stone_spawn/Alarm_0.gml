if(global.BossHP <= 500){


randomize()
var count = instance_number(obj_platform_static);

if (count > 0) {
    var idx = irandom(count - 1);           // 0 ~ count-1 사이 랜덤 인덱스
    var plat = instance_find(obj_platform_static, idx); // 해당 인덱스의 플랫폼 인스턴스

    // plat 위쪽 좌표 계산
    var sx = plat.x;
    var sy = plat.y - 120; // 플랫폼 위 64px 정도 (원하는 만큼 조정)

    instance_create_layer(sx, sy, "Instances", stone_statue);
}
alarm[1] = 500
alarm[0] = 600
}
else alarm[0] = 10