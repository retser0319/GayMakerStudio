
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_sprite(spr_Card, image_index, x, y)

draw_set_font(TestFonts)
draw_text(x,y-164, Get_Augment_Text_Name(num))

draw_set_font(TestFonts_small)
draw_text(x,y+100, Get_Augment_Text_Desc(num))