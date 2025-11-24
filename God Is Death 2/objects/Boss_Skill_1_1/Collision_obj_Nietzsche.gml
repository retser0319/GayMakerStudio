if (image_index == 9) 
{
	global.PlayerHP -= 40
	other.status = "stunned"
	other.vspd = other.vspd_max
	other.alarm[1] = 30
}