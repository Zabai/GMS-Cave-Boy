/// get_input()

// Keyboard Controls
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check_pressed(vk_up);
upRelease = keyboard_check_released(vk_up);
down = keyboard_check_pressed(vk_down);

// Override Keyboard Controls
var gp_id = 0;
var thresh = .5;

if(gamepad_is_connected(gp_id)) {
    left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
    up = gamepad_button_check_pressed(gp_id, gp_face1);
    upRelease = gamepad_button_check_released(gp_id, gp_face1);
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
}
