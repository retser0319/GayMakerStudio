



particle_system = part_system_create_layer("Weather", 0);  



particleType_Rain_MildDown = part_type_create();

part_type_sprite(particleType_Rain_MildDown,spr_Particel_Rain_Soft_lightBlue, 0,0,1 );
part_type_size(particleType_Rain_MildDown, 2,2, 0,0);
part_type_gravity(particleType_Rain_MildDown, 0.03, 270);
part_type_life(particleType_Rain_MildDown, 400,400);
part_type_orientation(particleType_Rain_MildDown, 0, 0 , 0,0,0 );






bufferX = 800;   // buffer left and right outsite from camera
bufferY = 150;     // buffer up from starting camera y

 // Capture x,y and with + height of camera 0
xStart = camera_get_view_x( view_camera[0] );
yStart = camera_get_view_y( view_camera[0] );
CameraWidth = camera_get_view_width(view_camera[0]);

 // Blank emitter, region/space to use , stream
emitterRain = part_emitter_create(particle_system);

  // Create rain
part_emitter_region(particle_system, emitterRain, xStart - bufferX , room_width + bufferX, yStart -bufferY, yStart - bufferY, ps_shape_rectangle,ps_distr_linear   );
part_emitter_stream(particle_system, emitterRain,particleType_Rain_MildDown, 20 );




