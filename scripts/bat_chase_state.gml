/// bat_chase_state()

if(instance_exists(obj_player)) {
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    
    hSpd = lengthdir_x(spd, dir);
    vSpd = lengthdir_y(spd, dir);
    
    sprite_index = spr_batFly;
    
    if(hSpd != 0) image_xscale = sign(hSpd);
    
    move(obj_solid);
}
