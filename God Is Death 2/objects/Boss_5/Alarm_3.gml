var side = irandom(3);

switch (side) {
    case 0:
        x_ = -50;
        y_ = random_range(0, room_height);
    break;

    case 1:
        x_ = room_width + 50;
        y_ = random_range(0, room_height);
    break;
    
    case 2:
        x_ = random_range(0, room_width);
        y_ = -50;
    break;

    case 3:
        x_ = random_range(0, room_width);
        y_ = room_height + 50;
    break;
}

var dir = point_direction(x_, y_, room_width / 2, room_height / 2);

instance_create_layer(
    x_, y_, "Effect", Boss_Skill_5_5,
    { direction: dir, image_angle: dir + 90 }
);

alarm[3] = (50 * global.BossHP / 1000) + 10;
