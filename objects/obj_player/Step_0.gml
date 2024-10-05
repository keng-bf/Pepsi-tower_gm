// Get input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
key_dash = keyboard_check_pressed(vk_shift);

// Calculate movement
var move = key_right - key_left;

// Horizontal movement with acceleration
if (move != 0) {
    hsp = approach(hsp, move * walksp, acc);
} else {
    hsp = approach(hsp, 0, dec);
}

// Apply gravity
vsp += grav;

// Jumping
if (grounded && key_jump) {
    vsp = jumpsp;
    grounded = false;
}

// Wall sliding and wall jumping
wall_sliding = false;
if (!grounded && place_meeting(x + sign(hsp), y, obj_solid)) {
    wall_sliding = true;
    vsp = min(vsp, 2);
    
    if (key_jump) {
        hsp = -sign(hsp) * walksp;
        vsp = jumpsp;
    }
}

// Dashing
if (key_dash && can_dash) {
    hsp = sign(image_xscale) * dash_speed;
    vsp = 0;
    can_dash = false;
    dash_timer = dash_cooldown;
}

if (dash_timer > 0) {
    dash_timer--;
} else {
    can_dash = true;
}

// Collision and movement
if (place_meeting(x + hsp, y, obj_solid)) {
    while (!place_meeting(x + sign(hsp), y, obj_solid)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, obj_solid)) {
    while (!place_meeting(x, y + sign(vsp), obj_solid)) {
        y += sign(vsp);
    }
    vsp = 0;
    grounded = true;
} else {
    grounded = false;
}
y += vsp;

// Update sprite direction
if (hsp != 0) {
    image_xscale = sign(hsp);
}