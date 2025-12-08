// obj_Boss의 Step 이벤트

if (instance_exists(obj_Nietzsche)) {
    
    // ====================================================
    // 1. 이동 로직 (레이저를 쏘는 중이 아닐 때만 이동!)
    // ====================================================
    if (is_firing == false) {
        // 부드럽게 따라오기 (속도를 조절하려면 0.05 숫자를 변경하세요)
        x = lerp(x, obj_Nietzsche.x, 0.01);
    }
    
    // ====================================================
    // 2. 레이저 발사 판단 로직
    // ====================================================
    // X축 거리 계산 (절댓값)
    var _dist_x = abs(x - obj_Nietzsche.x);
    var _trigger_range = 200; // [수정 추천] 4000은 너무 넓어서 시작하자마자 쏠 수 있습니다. 200~300 추천!

    // 발사 조건: 범위 안 + 쿨타임 참 + 현재 안 쏘는 중
    if (_dist_x < _trigger_range && can_laser && !is_firing) {
        is_firing = true;
        can_laser = false;
        
        // 레이저 생성
        laser_inst = instance_create_layer(x, y + 500, "Effect", obj_Laser);
        
        // 3초 동안 발사 유지 (Alarm 5번 세팅)
        alarm[5] = game_get_speed(gamespeed_fps) * 3; 
    }
}

// ====================================================
// 3. 레이저 위치 동기화 (레이저가 보스 눈 따라다니게)
// ====================================================
if (is_firing && instance_exists(laser_inst)) {
    laser_inst.x = x;       // 보스 X 위치 따라감
    laser_inst.y = y + 20;  // 눈 높이 고정
}



