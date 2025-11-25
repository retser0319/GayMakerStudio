draw_set_font(TestFonts)
draw_set_colour(c_white)
draw_set_alpha(1)

draw_text(100, 100, global.BossHP)
draw_text(100, 200, global.PlayerHP)
draw_text(100, 300, global.PlayerEnergy)

if (room == Boss_Stage_1) {
	draw_sprite_part(spr_Boss_HP, image_index, 0, 0, global.BossHP, 72, 960-500, 28);
	draw_sprite(spr_Boss_Bar, 0, 960, 40)
}

//1024 72