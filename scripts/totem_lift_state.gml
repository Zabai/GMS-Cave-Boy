/// totem_lift_state()

image_index = 1;

if(vSpd >= -16) vSpd -= .5;

move(obj_solid);

if(place_meeting(x, y-32, obj_solid)) {
    vSpd = 0;
    state = totem_chase_state;
}
