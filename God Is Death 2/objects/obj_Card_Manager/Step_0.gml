index += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)
if (index < 0) index = 2
if (index > 2) index = 0

if (index == 0) card[0].image_index = 1
else card[0].image_index = 0

if (index == 1) card[1].image_index = 1
else card[1].image_index = 0

if (index == 2) card[2].image_index = 1
else card[2].image_index = 0

if (keyboard_check_pressed(ord("X"))) 
{
	Add_Augment(index)
	global.Round += 1
	if (global.Round == 1) room_goto(Boss_Stage_1)
	if (global.Round == 2) room_goto(Boss_Stage_2)
	if (global.Round == 3) room_goto(Boss_Stage_3)
}
