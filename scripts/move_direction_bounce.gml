/// move_direction_bounce(collisionObject)

var collisionObject = argument0;

// Horizontal Collision
if(place_meeting(x+hSpd, y, collisionObject)) {
    while(!place_meeting(x+sign(hSpd), y, collisionObject)) x += sign(hSpd);
    hSpd = -(hSpd/2);
}

x += hSpd;

// Vertical Collision
if(place_meeting(x, y+vSpd, collisionObject)) {
    while(!place_meeting(x, y+sign(vSpd), collisionObject)) y += sign(vSpd);
    vSpd = -(vSpd/2);
    if(abs(vSpd) < 2) vSpd = 0;
}

y += vSpd;
