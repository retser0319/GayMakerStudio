function Random_Augment(){
	var augment
	for (var i = 0; i < 3; i++) 
	{
		repeat(1000) {
			augment = choose(
			"Jump King", // 점프킹
			"Trickster", // 재간둥이
			"Acrobat", // 곡예사
			"Bladestorm", // 칼날바람
			"Lightfruit", // 빛빛열매
			"Opportunity", // 기회
			"Matryoshka", // 마트료시카
			"Tiny Giant", // 꼬꼬마 거인
			"Bloodlust", // 피바라기
			"Shock Bomb", // 충격폭탄
			"Momentum", // 가속도
			"Shuriken", // 표창
			"Greatsword", // 대검
			"Trance", // 무아지경
			)
			var dup = false
			for (var j = 0; j < 3; j++) {
				if (global.Augment[j] == augment or global.Card[j] == augment) dup = true
			}
			if (!dup) break
		}
		show_debug_message(augment)
		global.Card[i] = augment
	}
}