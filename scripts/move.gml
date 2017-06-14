/// move(collisionObject)

var collisionObject = argument0;

// Horizontal Collision
if(place_meeting(x+hSpd, y, collisionObject)) {
    while(!place_meeting(x+sign(hSpd), y, collisionObject)) x += sign(hSpd);
    hSpd = 0;
}

x += hSpd;

// Vertical Collision
if(place_meeting(x, y+vSpd, collisionObject)) {
    while(!place_meeting(x, y+sign(vSpd), collisionObject)) y += sign(vSpd);
    vSpd = 0;
}

y += vSpd;
