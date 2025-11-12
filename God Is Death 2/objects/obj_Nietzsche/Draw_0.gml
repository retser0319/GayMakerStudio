if (status == "idle")
	draw_sprite_ext(spr_ch_idle, image_index, x, y, dir, 1, image_angle, c_white, 1);
else if (status == "jump")
	draw_sprite_ext(spr_ch_jump, image_index, x, y, dir, 1, image_angle, c_white, 1);
else if (status == "run")
	draw_sprite_ext(spr_ch_run, image_index, x, y, dir, 1, image_angle, c_white, 1);
else if (status == "wall")
	draw_sprite_ext(spr_ch_wall, image_index, x, y, -dir, 1, image_angle, c_white, 1);
else if (status == "attack")
	draw_sprite_ext(spr_ch_attack, image_index, x, y, dir, 1, image_angle, c_white, 1);
else if (status == "dash")
	draw_sprite_ext(spr_ch_run, 0, x, y, dir, 1, image_angle, c_white, 1);