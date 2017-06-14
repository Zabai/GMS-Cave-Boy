/// take_damage()

if(state != hurt_state) {
    audio_emitter_pitch(audioEmitter, 1.6);
    audio_emitter_gain(audioEmitter, 1.4);
    audio_play_sound_on(audioEmitter, snd_ouch, false, 8);
    image_blend = make_colour_rgb(220, 150, 150);
    
    vSpd = -12;
    hSpd = sign(x-other.x) * 10;

    state = hurt_state;
    
    move(obj_solid);
    
    if(instance_exists(obj_playerStats)) obj_playerStats.hp--;
}
