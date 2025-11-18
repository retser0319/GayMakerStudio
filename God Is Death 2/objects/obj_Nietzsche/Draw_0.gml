if (status == "idle")
	draw_sprite_ext(spr_ch_idle, image_index, x, y, image_xscale, 1, image_angle, blend, 1);
else if (status == "jump")
	draw_sprite_ext(spr_ch_jump, image_index, x, y, image_xscale, 1, image_angle, blend, 1);
else if (status == "run")
	draw_sprite_ext(spr_ch_run, image_index, x, y, image_xscale, 1, image_angle, blend, 1);
else if (status == "wall")
	draw_sprite_ext(spr_ch_wall, image_index, x, y, -image_xscale, 1, image_angle, blend, 1);
else if (status == "attack" and attackNum == 1) {
	draw_sprite_ext(spr_ch_attack_1, image_index, x, y, image_xscale, 1, image_angle, blend, 1); }
else if (status == "attack" and attackNum == 2) {
	draw_sprite_ext(spr_ch_attack_2, image_index, x, y, image_xscale, 1, image_angle, blend, 1); }
else if (status == "attack" and attackNum == 3) {
	draw_sprite_ext(spr_ch_attack_3, image_index, x, y, image_xscale, 1, image_angle, blend, 1); }
else if (status == "dash")
	draw_sprite_ext(spr_ch_run, 0, x, y, image_xscale, 1, image_angle, blend, 1);