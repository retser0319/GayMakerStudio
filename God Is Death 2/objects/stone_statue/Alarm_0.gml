global.BossHP -= damage

var count = instance_number(obj_platform_static);

if (count > 0) {
    var idx = irandom(count - 1);           // 0 ~ count-1 사이 랜덤 인덱스
    var plat = instance_find(obj_platform_static, idx); // 해당 인덱스의 플랫폼 인스턴스
    x = plat.x
	y = plat.y
}

var boss = instance_find(obj_Boss_4,0)
var tag = instance_create_layer(boss.x,boss.y,"UI",obj_Tag)
tag.damage = damage

alarm[0] = 600