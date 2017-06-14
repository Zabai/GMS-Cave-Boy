/// hurt_state()

sprite_index = spr_playerHurt;

if(hSpd != 0) image_xscale = sign(hSpd);

// Gravity
if(!place_meeting(x, y+1, obj_solid)) vSpd += grav;
else {
    vSpd = 0;
    
    // Use friction
    apply_friction(acc);
}

move_direction_bounce(obj_solid);

// Change back to move state
if(hSpd == 0 && hSpd == 0) {
    image_blend = c_white;
    if(obj_playerStats.hp <= 0) {
        obj_playerStats.shappires = 0;
        obj_playerStats.hp = obj_playerStats.maxHp;
        if(audio_is_playing(mus_totemBoss)) audio_stop_sound(mus_totemBoss);
        room_restart();
    }
    state = move_state;
}
