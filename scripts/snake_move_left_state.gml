/// snake_move_left_state()

var col = place_meeting(x-1, y, obj_solid);
var edge = !position_meeting(bbox_left-1, bbox_bottom+1, obj_solid);

if(col || edge) state = snake_move_right_state;

image_xscale = -1;

x += -1;

