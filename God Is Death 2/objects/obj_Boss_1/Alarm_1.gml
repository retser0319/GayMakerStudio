/// ALARM[1] EVENT
// 아래로 다 내려왔으니 이제 다시 위로 갈 목표 설정
target_y = base_y - move_range;

// move_time 동안 target_y까지 가려면 속도 재계산
move_time = 30;
vy = (target_y - y) / move_time;

// 다음 움직임이 끝나면 Alarm[0]이 울리도록 설정
alarm[0] = move_time;