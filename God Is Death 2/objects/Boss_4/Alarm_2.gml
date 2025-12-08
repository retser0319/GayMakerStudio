instance_create_layer(x, y, "Effect", obj_Boos_Skill_4_2);


// 2. 소환 횟수 1 증가
Boss4_2_count += 1;

// 3. 아직 3발을 다 안 쐈다면?
if (Boss4_2_count < 100) {
    // 0.5초(30프레임) 뒤에 이 알람을 다시 실행해라!
    alarm[2] = 5; 
}
else if(Boss4_2_count >= 100){
	alarm[10] = 120
	Boss4_2_count = 0
	alarm[2] = -1
}