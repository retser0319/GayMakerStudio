

if !(instance_exists(obj_camera_shake)){
halfViewWidth=camera_get_view_width(view_camera[0]/2);
halfViewHeight=camera_get_view_height(view_camera[0]/2);

camera_set_view_pos(view_camera[0],obj_ch.x-halfViewWidth,obj_ch.y-halfViewHeight+200)

}

