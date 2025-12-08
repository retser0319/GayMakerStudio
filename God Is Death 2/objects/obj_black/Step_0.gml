
image_alpha += 0.01

if(image_alpha >= 1){
	blackgound = true

}
// 1. 움직임 입력 감지 (방향키 중 하나라도 눌렀는가?)

if(blackgound == true){
var _is_moving = keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down);

if (_is_moving) {
	global.PlayerHP -= 10;      // 체력 10 감소
	draw_text(x,y,"sadasdkasldksa;dsa")
	}
		
}