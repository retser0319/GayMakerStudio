global.PlayerMaxHP = 100
global.PlayerHP = global.PlayerMaxHP
global.PlayerDamage = 20
global.PlayerEnergy = 100
size = 1
attackDelay = 30
moveSpeed = 2
jump_strength = -20 // 점프 초기 속도 (음수 = 위로)
jump_max = 2

tranceDelay = 0 // 무아지경

dash_req = 40
hspd = 0
vspd = 0
vspd_max = 40    // 최대 낙하 속도
jump_count = 0

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
augment_bloodlust = false
augment_jump_king = false
augment_trickster = false //재간둥이
augment_Acrobat = false // 곡예사
augment_bladestorm = false //칼날바람
augment_opportunity = false // 기회
augment_matryoshka = false // 마트료시카
augment_tiny_giant = false // 꼬꼬마 거인
augment_shock_bomb = false // 충격폭탄
augment_momentum = false // 가속도
augment_shuriken = false // 표창
augment_greatsword = false // 대검

dashX = x
shield = false
life = 0

if (room != Main)
	Set_Player_Augment(self)

image_xscale = size
image_yscale = size