global.BossHP = 500

global.BossPaze = 2

Boss4_2_count = 0
randomize()
rands = 1
alarm[10] = 1000
//alarm[5] = 1
alarm[1] = 30


// 1. 기준 위치 저장 (현재 위치를 중심으로 움직임)
anchorY = y; 

// 2. 움직임을 위한 타이머
floatTimer = 0;

// 3. 설정 값 (이 값들을 조절하여 느낌을 바꿉니다)
floatRange = 40;  // 움직임 범위 (픽셀 단위): 위아래로 총 20픽셀씩 움직임
floatSpeed = 0.05; // 움직임 속도: 값이 클수록 빨리 움직임
// obj_Boss의 Create 이벤트

can_laser = true;    // 레이저를 쏠 준비가 되었는가? (쿨타임)
is_firing = false;   // 지금 레이저를 쏘는 중인가?
laser_inst = noone;  // 생성된 레이저의 ID를 저장할 변수


skill_1 = 0
skill_2_x = 0
skill_2_y = 0
skill_5 = 0
skill_5_delay = 0
skill_5_dir = 0

idle_posV = 0
base_y = y

global.Darkness = false

 audio_play_sound(snd_boss3, 1, false);