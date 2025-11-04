/*//staminuer
draw_text(50,360,"X : "+string(obj_ch.x));
draw_text(50,340,"Y : "+string(obj_ch.y));


draw_text(50,320,"count_ : "+string(obj_ch.count_));
draw_text(50,300,"count__ : "+string(obj_ch.count__));
*/
//ch gui
draw_sprite(spr_ch_gui,0,1,768)


//hp_bar
draw_sprite_stretched(spr_ch_hp,1,106,713,(global.ChHp/global.ChHpMax)*240,23);
draw_sprite_stretched(spr_ch_sta,1,106,747,(global.stam/global.stamMax)*240,16);
//draw_sprite_stretched(spr_ch_hp,1,30,738,(global.ChHP/global.HP_ChHpMAX)*500,50);