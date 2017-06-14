/// bat_idle_state()

sprite_index = spr_batIdle;

if(instance_exists(obj_player)) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    
    if(dist < sight) state = bat_chase_state;
}
