var dist = 1000; // 스킬 간격, 스프라이트 길이에 맞춰 조절해줘

if(global.Boss2Paze == 1){
// 오른쪽 4개
for (var i = 0; i < 4; i++)
{
    var sk = instance_create_layer(x + (i * dist), 1950, "Effect", Boss_SKill_2_4_2);
    sk.image_xscale = 1;   // 오른쪽
}

// 왼쪽 4개
for (var j = 0; j < 4; j++)
{
    var sk2 = instance_create_layer(x - (j * dist), 1950, "Effect", Boss_SKill_2_4_2);
    sk2.image_xscale = -1; // 왼쪽
}

}
obj_Boss_2.alarm[10] = global.attack_timer;
instance_destroy(self);