global.BossHP = 500

alarm[0] = 30
alarm[4] = 120

is_dead = false
hspd = 0

skill_1_can = true
skill_5 = 0
skill_5_dir = 0
skill_5_delay = 0
idle_posV = 0
image_speed = 0

var count = instance_number(obj_platform_static);

if (count > 0) {
    var idx = irandom(count - 1);           // 0 ~ count-1 사이 랜덤 인덱스
    var plat = instance_find(obj_platform_static, idx); // 해당 인덱스의 플랫폼 인스턴스
    instance_create_layer(plat.x, plat.y, "Instances", stone_statue);
}

audio_stop_all()
audio_play_sound(snd_boss3, 1, false);