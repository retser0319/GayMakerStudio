// obj_Boss Step 이벤트

// 💀 죽었으면 이후 로직 전부 패스
if (is_dead) {
    // 여기서 죽는 연출만 처리해도 됨 (알파 감소, 회전 등)
    exit;
}

if (instance_exists(obj_Nietzsche)) {
    
    // 1. 이동 로직 (레이저를 쏘는 중이 아닐 때만 이동!)
    if (!is_firing && !global.Darkness) {
        x = lerp(x, obj_Nietzsche.x, 0.01);
    }
    
    // 2. 레이저 발사 판단 로직
    var _dist_x = abs(x - obj_Nietzsche.x);
    var _trigger_range = 200;

    if (_dist_x < _trigger_range && can_laser && !is_firing) {
        is_firing = true;
        can_laser = false;
        
        alarm[4] = game_get_speed(gamespeed_fps) * 0.7;
        audio_play_sound(snd_enerugipa, 1, false);
    }
}

// 3. 레이저 위치 동기화
if (is_firing && instance_exists(laser_inst)) {
    laser_inst.x = x;
    laser_inst.y = y + 20;
}

if (is_firing && !instance_exists(laser_inst)) {
    // 경고 이펙트 넣는 곳
}

if (global.BossHP <= 0 && !is_dead) {

    is_dead = true; // 더 이상 움직이지 않도록 플래그 ON

    // 레이저 패턴 중이면 강제 종료
    is_firing = false;
    can_laser = false;

    // 필요하면 레이저 인스턴스도 제거
    if (instance_exists(laser_inst)) {
        with (laser_inst) instance_destroy();
    }

    // WC는 한 번만 생성
    if (!has_spawned_WC) {
        instance_create_layer(x, y, "UI", WC);
        has_spawned_WC = true;
    }

    // 여기서 죽는 연출 시작 (원하면)
    // 예시:
    // death_timer = 60; // 1초간 연출 후 Destroy 같은 느낌
}