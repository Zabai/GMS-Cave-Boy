/// move_state()

if(!place_meeting(x, y+1, obj_solid)) {
    vSpd += grav;
    
    // Player in the air
    sprite_index = spr_playerJump;
    image_speed = 0;
    image_index = (vSpd > 0);
    
    if(upRelease && vSpd < -jumpSpd/2) vSpd = -jumpSpd/2;
} else {
    vSpd = 0;
    
    if(up && !place_meeting(x, y, obj_exit)) {
        audio_play_sound(snd_jump, 5, false);
        vSpd = -jumpSpd;
    }
    
    // Player on the ground
    if(hSpd == 0) sprite_index = spr_playerIdle;
    else {
        sprite_index = spr_playerWalk;
        image_speed = .6;
    }
}

if(left || right) {
    hSpd += (right - left) * acc;
    
    if(hSpd > spd) hSpd = spd;
    if(hSpd < -spd) hSpd = -spd;
} else apply_friction(acc);

if(hSpd != 0) image_xscale = sign(hSpd);

// Play landing sound
if(place_meeting(x, y+vSpd+1, obj_solid) && vSpd > 0) {
    audio_emitter_pitch(audioEmitter, random_range(.8, 1.2));
    audio_emitter_gain(audioEmitter, .2);
    audio_play_sound_on(audioEmitter, snd_step, false, 6);
}

move(obj_solid);

// Check Edge Grab
var falling = y - yprevious > 0;
var previousWall = !position_meeting(x+(sprite_xoffset+1*image_xscale), yprevious, obj_solid);
var isWall = position_meeting(x+(sprite_xoffset+1*image_xscale), y, obj_solid);

if(falling && previousWall && isWall) {
    vSpd = 0;
    hSpd = 0;
    
    // Move against edge
    while(!place_meeting(x+image_xscale, y, obj_solid)) x += image_xscale;
    
    // Move to the right height
    while(position_meeting(x+(sprite_xoffset+1*image_xscale), y-1, obj_solid)) y -= 1;
    
    // Player grabbing
    sprite_index = spr_playerGrab;    
    
    state = grab_state;
    
    audio_emitter_pitch(audioEmitter, 1.5); 
    audio_emitter_gain(audioEmitter, .1);
    audio_play_sound_on(audioEmitter, snd_step, false, 6);
}
