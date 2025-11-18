HP = 100
moveSpeed = 10

hspd = 0
vspd = 0
vspd_max = 20    // 최대 낙하 속도
jump_strength = -20 // 점프 초기 속도 (음수 = 위로)
jump_count = 0
jump_max = 2

gravity_ = 1      // 중력 가속도

attackNum = 1
wall_jump = 0

// 상태 변수
lastHP = HP
status = "idle"
current_jump_wall = noone
last_jump_wall = noone

// 피격시
unDamaged = false
blend = c_white