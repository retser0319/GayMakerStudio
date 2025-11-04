/*draw_text(50,240,"BossHp1 : "+string(global.Boss3Hitted_01));
draw_text(50,260,"BossHp2 : "+string(global.Boss3Hitted_02));
/*
/*
draw_text(50,220,"Pt1: "+string(obj_Boss_02.Pt_01));
draw_text(50,200,"Pt2: "+string(obj_Boss_02.Pt_02));
draw_text(50,180,"Pt3: "+string(obj_Boss_02.Pt_03));

//posStart
draw_text(50,380,"Xstart : "+string(obj_Boss_02.xStart));
draw_text(50,400,"Ystart : "+string(obj_Boss_02.yStart));
*/

//Boss ui
draw_sprite(spr_Boss_ui_03,0,690,50)
draw_sprite_stretched(spr_ch_hp,1,301,53,(global.Boss3Hp/global.Boss3HpMax)*778,13);

