if (mode == "spawn" and speed > 0)
{
	speed -= 1
}
else if (mode == "aiming")
{
	direction = point_direction(x, y, target.x, target.y)
	image_angle = point_direction(x, y, target.x, target.y) + 90
}
else if (mode == "attack" and speed < 40) {
	speed += 2
	    // 사운드 쿨타임 체크
    // MP_1이 안 나오는 중일 때만 새로 재생
    if (!audio_is_playing(MP_1)) {
        audio_play_sound(MP_1, 1, false);
    }
}