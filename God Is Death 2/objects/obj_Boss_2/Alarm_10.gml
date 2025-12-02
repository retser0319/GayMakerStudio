/// @description 
var pattern = choose(1,2,5) // choose(1)
if(pattern == 1){
	var type = choose("x","y")
	var rand = random_range(0.0, 1.0)
	
	if (type == "x")
		instance_create_layer(rand * room_width, 0,"Effect", Boss_SKill_2_Range)
	if (type == "y")
		instance_create_layer(0, rand * (room_height / 2),"Effect", Boss_SKill_2_Range)
	alarm[10] = 120
}
else if(pattern == 2){
	instance_create_layer(x, 320,"RedGround",Boss_SKill_2_lightning)
}
else if(pattern == 3){
	//instance_create_layer(obj_Nietzsche.x, obj_Nietzsche.y,"Instances",obj_pattern_3)
	//alarm[10] = 120
}

else if(pattern == 5){
	// 타겟 설정
target = instance_nearest(x, y, obj_Nietzsche);

// 타겟이 존재할 때만 실행
if (instance_exists(target)) {
    
    // ★ 핵심 수정: 생성할 총 개수를 (페이즈 * 6)으로 설정
    var total_spawn = global.BossPaze * 6;
    
    for (var i = 0; i < total_spawn; i++) 
    {
        var spawnX, spawnY;
        var offset = 100; // 맵 바깥 거리
        
        // 0~3 중 랜덤 방향 선택 (좌, 우, 상, 하)
        var side = irandom(3); 
        
        switch(side) {
            case 0: // 왼쪽 바깥
                spawnX = -offset;
                spawnY = random_range(0, room_height);
                break;
            case 1: // 오른쪽 바깥
                spawnX = room_width + offset;
                spawnY = random_range(0, room_height);
                break;
            case 2: // 위쪽 바깥
                spawnX = random_range(0, room_width);
                spawnY = -offset;
                break;
            case 3: // 아래쪽 바깥
                spawnX = random_range(0, room_width);
                spawnY = room_height + offset;
                break;
        }

        // 투사체 생성
        var bullet = instance_create_layer(spawnX, spawnY, "Effect", Boss_Skill_2_5);
        
        // 투사체 속성 설정
        with (bullet) {
            // 플레이어 방향으로 날아가도록 설정
            direction = point_direction(x, y, other.target.x, other.target.y);
            image_angle = direction; // 머리 방향 맞춤
            speed = 5; // 날아가는 속도
            
            // (팁) 만약 너무 정확하게 날아오는 게 싫다면 아래 줄 주석을 해제하세요 (약간의 오차 추가)
            // direction += random_range(-15, 15);
        }
    }
}
alarm[10] = 240
}