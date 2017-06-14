/// totem_idle_state()

var dis = point_distance(x, y, obj_player.x, obj_player.y);

if(dis <= 128) {
    state = totem_lift_state;
    
    if(!audio_is_playing(mus_bg)) {
        audio_emitter_gain(audioEmitter, .5);
        audio_play_sound_on(audioEmitter, mus_totemBoss, true, 10);
    }
}
