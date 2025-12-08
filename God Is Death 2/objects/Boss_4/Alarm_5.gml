	// 타겟 설정
target = instance_nearest(x, y, obj_Nietzsche)
    // ★ 핵심 수정: 생성할 총 개수를 (페이즈 * 6)으로 설정
    var total_spawn = 8;
    
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
        var bullet = instance_create_layer(spawnX, spawnY, "Effect", Boss_Skill_4_5);
		
        // 투사체 속성 설정
        with (bullet) {
            // 플레이어 방향으로 날아가도록 설정
            direction = point_direction(x, y, other.target.x, other.target.y);
            image_angle = direction; // 머리 방향 맞춤
            speed = 7; // 날아가는 속도
            
            // (팁) 만약 너무 정확하게 날아오는 게 싫다면 아래 줄 주석을 해제하세요 (약간의 오차 추가)
            // direction += random_range(-15, 15);
        }
    }
	alarm[5] = 120