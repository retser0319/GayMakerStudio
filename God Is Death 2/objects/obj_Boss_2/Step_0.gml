
/// @description 부유 효과 적용

// 1. 타이머 증가 (시간 흐름)
floatTimer += floatSpeed;

// 2. 위치 계산 (sin 함수 사용)
// sin(floatTimer)는 -1에서 1 사이의 값을 부드럽게 오갑니다.
// 여기에 floatRange를 곱해서 이동 거리를 늘려줍니다.
y = anchorY + sin(floatTimer) * floatRange;


if(global.BossHP <= 400){
	global.Boss2Paze = 2
}

if (global.BossHP <= 0) instance_destroy(self)