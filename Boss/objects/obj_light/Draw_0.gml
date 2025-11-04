if(surface_exists(light_surf)){
	
	surface_set_target(light_surf);
	draw_clear(c_black)
	
	with(obj_ch){
		gpu_set_blendmode(bm_subtract)
		draw_sprite_ext(spr_glow,0,x-10,y,1,1,0,c_white, 1)
//		gpu_set_blendmode(bm_normal)
//		draw_sprite_ext(spr_glow,0,x-10,y,1,1,0,c_white,1);
	}
	

	with(obj_Boss_02){
		gpu_set_blendmode(bm_subtract)
		draw_sprite_ext(spr_glow_Boss,0,x-10,y,1,1,0,c_white, .7)
		gpu_set_blendmode(bm_normal)
		draw_sprite_ext(spr_glow_Boss,0,x-10,y,1,1,0,c_white,1);
	}
	
	
	
		with(obj_Boss_02_Pt02_lazer){
		gpu_set_blendmode(bm_subtract)
		draw_sprite_ext(spr_glow_Boss,0,x,y,1,20,0,c_white, 1)
	//	gpu_set_blendmode(bm_normal)
	//	draw_sprite_ext(spr_glow_Boss,0,x-10,y,1,1,0,c_white,1);
	}
	
	
	
		with(obj_torch){
		gpu_set_blendmode(bm_subtract)
		draw_sprite_ext(spr_glow,0,x-10,y,0.8,0.8,0,c_white, 1)
		gpu_set_blendmode(bm_normal)
		draw_sprite_ext(spr_glow,0,x-10,y,0.8,0.8,0,c_white,0.3);
	}

	
	
	gpu_set_blendmode(bm_normal)
	surface_reset_target();
	draw_surface_ext(light_surf,0,0,1,1,0,c_white,darkness);
}
else{
	light_surf=surface_create(room_width,room_height)

}





