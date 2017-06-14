/// spider_idle_state()

if(instance_exists(obj_player)) {
    var dist = distance_to_object(obj_player);
    
    if(dist < sight && canJump) {
        image_speed = .5;
        
        // Face the player
        if(obj_player.x != x) image_xscale = sign(obj_player.x-x);
    }
}
