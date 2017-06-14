/// spider_jump_state

image_index = image_number-1;
canJump = false;

// Gravity
if(!place_meeting(x, y+1, obj_solid)) vSpd += grav;
else {
    vSpd = 0;    

    // Friction
    apply_friction(acc);
    
    // Check for idle state
    if(hSpd == 0 && vSpd == 0) {
        state = spider_idle_state;
        alarm[0] = 15;
        image_index = 0;
        image_speed = 0;
    }
}

if(hSpd != 0) image_xscale = sign(hSpd);

horizontal_move_bounce(obj_solid);
