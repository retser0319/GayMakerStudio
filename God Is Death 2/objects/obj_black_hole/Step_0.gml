/// @description 블랙홀 인력 (hspd/vspd 가산 방식)

if (instance_exists(obj_Nietzsche)) {
    
    // --- 설정값 ---
    var _max_range = 2000;      // 당기는 범위
    var _max_power = 2;         // 당기는 힘 (좌표 이동보다 값이 작아야 함. 매 프레임 속도가 누적되므로)
    var _min_dist = 10;         // 중심부 데드존
    
    // 거리 계산 (중심점 기준)
    var _dist = point_distance(x, y, obj_Nietzsche.x, obj_Nietzsche.y);
    
    if (_dist < _max_range && _dist > _min_dist) {
        
        // 힘 계산 (가까울수록 강함)
        var _strength = _max_power * (1 - (_dist / _max_range));
        
        // 방향(각도) 계산
        var _dir_angle = point_direction(obj_Nietzsche.x, obj_Nietzsche.y, x, y);
        
        // 각도에 따른 X, Y 힘 분배
        var _force_x = lengthdir_x(_strength, _dir_angle);
        var _force_y = lengthdir_y(_strength, _dir_angle);
        
        // [핵심] 플레이어의 속도 변수에 직접 힘을 더해줌
        obj_Nietzsche.hspd += _force_x;
        obj_Nietzsche.vspd += _force_y;
    }
}