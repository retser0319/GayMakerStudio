base_y = y; // 기준 위치 저장 (보스가 처음 서 있는 y 위치)
angle = 0;
angle_speed = 0.05; // 값이 작을수록 느리게

move_range = 16; // 32px씩 위, 아래로
move_time = 15; // 한 번 이동하는 데 걸리는 시간 (스텝 기준)

// 현재 목표 y 위치
target_y = base_y - move_range;

// 자연스럽게 움직이기 위한 속도
// move_time 동안 move_range만큼 이동하려면:
vy = (target_y - y) / move_time;

// 첫 알람 설정 (위로 이동 시작)
alarm[0] = move_time;


Boss2_HP = 100 //보스채력 100

alarm[10] = 1
