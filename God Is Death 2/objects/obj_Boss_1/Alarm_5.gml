// @description Move
if (spd > 3) spd -= 0.1
var done = false
if (pos == "left") {
	x -= spd
	if (x < room_width / 4) {
		x = room_width / 4
		done = true
	}
}
else if (pos == "center") {
	if (x < room_width / 2 + 4 and x > room_width / 2 - 4) x = room_width / 2
	
	if (x < room_width / 2) x += spd
	else if (x > room_width / 2) x -= spd
	else {
		x = room_width / 2
		done = true
	}
}
else if (pos == "right") {
	x += spd
	if (x > (room_width / 4) * 3) {
		x = (room_width / 4) * 3
		done = true
	}
}

if (done) alarm[0] = 60
else alarm[5] = 1