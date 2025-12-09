// obj_Boss의 Step 이벤트

if (instance_exists(obj_Nietzsche)) {
    
    // ====================================================
    // 1. 이동 로직 (레이저를 쏘는 중이 아닐 때만 이동!)
    // ====================================================
    if (is_firing == false and global.Darkness == false) {
        // 부드럽게 따라오기 (속도를 조절하려면 0.01 숫자를 변경하세요)
        x = lerp(x, obj_Nietzsche.x, 0.01);
    }
    
    // ====================================================
    // 2. 레이저 발사 판단 로직
    // ====================================================
    var _dist_x = abs(x - obj_Nietzsche.x);
    var _trigger_range = 200;

    if (_dist_x < _trigger_range && can_laser && !is_firing) {
        is_firing = true;
        can_laser = false;
        
        // 🔔 여기서 바로 레이저를 만들지 말고,
        //    0.7초 후에 만들도록 알람 설정
        alarm[4] = game_get_speed(gamespeed_fps) * 0.7;
		audio_play_sound(snd_enerugipa, 1, false);
    }
	
	
}

// ====================================================
// 3. 레이저 위치 동기화
// ====================================================
if (is_firing && instance_exists(laser_inst)) {
    laser_inst.x = x;
    laser_inst.y = y + 20;
}

// Step 안 어딘가
if (is_firing && !instance_exists(laser_inst)) {
    // 아직 레이저는 안 나간 상태 (0.7초 기다리는 중)
    // 여기서 눈 반짝 효과, 경고 사운드, 조준선 등 넣기
}

if(global.BossHP <= 0){
	audio_stop_sound(snd_boss3);
	room_goto_next()
}