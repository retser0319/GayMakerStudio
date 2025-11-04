
function ChDash(){

mvtLocked = max(mvtLocked - 1, 0);
dashDuration = max(dashDuration - 1, 0);
 
if (dashDuration > 0) ySpeed = 0;   	

else if (wall_dir != 0) ySpeed = min(ySpeed + 1, 5);    	

else ySpeed++;
     	


    dashDuration = 10;
    xSpeed = image_xscale * dashSpd;



if (dashDuration > 0) {
    sprite_index = spr_ch_run;

} 
 
if (place_meeting(x + xSpeed, y, obj_collision)) { 

    while (!place_meeting(x + sign(xSpeed), y, obj_collision)) {
        x += sign(xSpeed);

    }
    xSpeed = 0; 

}
 
x += xSpeed;


}