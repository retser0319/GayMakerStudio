global.BossHP = 1000

global.Boss2Paze = 1

lightning_count = 0
randomize()
rands = 1
alarm[0] = 1
alarm[10] = 120


// 1. 기준 위치 저장 (현재 위치를 중심으로 움직임)
anchorY = y; 

// 2. 움직임을 위한 타이머
floatTimer = 0;

// 3. 설정 값 (이 값들을 조절하여 느낌을 바꿉니다)
floatRange = 40;  // 움직임 범위 (픽셀 단위): 위아래로 총 20픽셀씩 움직임
floatSpeed = 0.05; // 움직임 속도: 값이 클수록 빨리 움직임


audio_play_sound(snd_boss2, 1, false);