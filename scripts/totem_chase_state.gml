/// totem_chase_state()

var dist = point_distance(x, y, obj_player.x, y);
var cLeft = place_meeting(x-1, y, obj_solid);
var cRight = place_meeting(x+1, y, obj_solid);

if(dist < sprite_width/2-16 || cLeft || cRight) {
    state = totem_smash_state;
    audio_play_sound(snd_jump, 6, false);
    hSpd = 0;
} else {
    hSpd = (obj_player.x - x) * .05;
}

move(obj_solid);
