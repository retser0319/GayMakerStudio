// 1. 번개 하나 소환
instance_create_layer(random_range(400, 3500), 320, "RedGround", Boss_SKill_2_lightning_2);

// 2. 소환 횟수 1 증가
lightning_count += 1;

// 3. 아직 3발을 다 안 쐈다면?
if (lightning_count < 3) {
    // 0.5초(30프레임) 뒤에 이 알람을 다시 실행해라!
    alarm[1] = 30; 
}