if (card_select_mode) 
{
	index += keyboard_check_pressed(vk_right) -keyboard_check_pressed(vk_left)
	if (index < 0) index = 2
	if (index > 2) index = 0
}