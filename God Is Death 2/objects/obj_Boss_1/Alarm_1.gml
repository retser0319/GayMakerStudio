if (skill_1 < 120) {
	direction = 90
	speed = 1
}
else if (skill_1 < 240) {
	speed = 0
}
else if (skill_1 < 360) {
	direction = 270
	speed = 1	
}

skill_1++

if (skill_1 > 360) {
	speed = 0
	skill_1 = 0	
}
else
	alarm[1] = 1