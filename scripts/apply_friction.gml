/// apply_friction(amount)

var amount = argument0;

if(hSpd != 0) {
    if(abs(hSpd) - amount > 0) hSpd -= amount * image_xscale;
    else hSpd = 0;
}
