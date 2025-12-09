/// obj_Boss의 Alarm[4] 이벤트
// 0.7초 경과 후 실제 레이저 발사

// 혹시 그 사이에 패턴이 캔슬되었을 수도 있으니,
// is_firing 상태를 한 번 더 체크해 주면 안전
if (is_firing) {
    // 레이저 생성
    laser_inst = instance_create_layer(x, y, "Effect", obj_Laser);

    // 레이저 사운드 재생

    // 3초 동안 발사 유지 (Alarm 5번 세팅)
    alarm[5] = game_get_speed(gamespeed_fps) * 2; 
}