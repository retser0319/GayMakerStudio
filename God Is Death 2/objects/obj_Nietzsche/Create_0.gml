global.PlayerMaxHP = 100
global.PlayerHP = global.PlayerMaxHP
global.PlayerDamage = 20
size = 1
attackDelay = 30
tranceDelay = 0 // 무아지경
moveSpeed = 2

hspd = 0
vspd = 0
vspd_max = 40    // 최대 낙하 속도
jump_strength = -20 // 점프 초기 속도 (음수 = 위로)
jump_count = 0
jump_max = 2

gravity_ = 1      // 중력 가속도
attackNum = 1
wall_jump = 0

// 상태 변수
lastHP = global.PlayerHP
status = "idle"
current_jump_wall = noone
last_jump_wall = noone
can_fly_attack = true

// 피격시
unDamaged = false
blend = c_white

// 증강
augment_trance = false

image_xscale = size
image_yscale = size