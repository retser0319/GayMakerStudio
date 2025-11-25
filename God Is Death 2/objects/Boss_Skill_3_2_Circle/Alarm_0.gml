var X = random_range(100, room_width - 100)
var Y = random_range(1400,room_height - 200)
instance_create_layer(X, Y, "Effect", Boss_SKill_3_2_Range);

if (count++ < 100)
	alarm[0] = 1
else
	alarm[1] = 1