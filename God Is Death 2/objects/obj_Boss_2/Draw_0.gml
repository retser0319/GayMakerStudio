// Draw 이벤트

// 1. 그림자 그리기 (반투명한 검은 타원)
draw_set_alpha(0.3); // 투명도 설정
draw_set_color(c_black);

// 보스 위치보다 아래(바닥)에 그림자를 그립니다.
// 보스가 높이 올라갈수록 그림자가 작아지는 연출을 추가했습니다.
var shadowScale = 1 - (sin(floatTimer) * 0.2); 
draw_ellipse(x - 40 * shadowScale, anchorY + 100 - 10, x + 40 * shadowScale, anchorY + 100 + 10, false);

// 2. 설정 복구 및 보스 그리기
draw_set_alpha(1);
draw_set_color(c_white);
draw_self(); // 보스 본체 그리기