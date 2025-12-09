image_alpha -= 0.04 * speed_
if (image_alpha <= 0) {
	if (count-- == 0) {
		instance_find(obj_Boss_4, 0).alarm[0] = 120
		instance_destroy(self)
	}
	speed_ = random_range(1.0,3.0)
	alarm[0] = 60
}
else alarm[1] = 1