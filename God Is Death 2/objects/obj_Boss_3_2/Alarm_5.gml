// 레이저 끄기
is_firing = false;
if (instance_exists(laser_inst)) {
    instance_destroy(laser_inst);
}

// 쿨타임 시작: 3초 뒤에 다시 쏠 수 있게 함 (Alarm 6번 호출)
alarm[6] = game_get_speed(gamespeed_fps) * 3;