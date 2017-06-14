/// totem_smash_state()

var onGround = place_meeting(x, y+1, obj_solid);

if(!onGround) {
    if(vSpd < 16) vSpd += 2;
    move(obj_solid);
} else {
    state = totem_stall_state;
    alarm[0] = room_speed;
    audio_play_sound(snd_step, 8, false);
    
    if(place_meeting(x, y, obj_lava))  {
        hp -= 1;
        audio_play_sound(snd_snake, 9, false);
    }
}
