function scr_getinput(){
	key_up = (keyboard_check(vk_up) || gamepad_button_check(0, gp_padu))
	key_right = (keyboard_check(vk_right) || gamepad_button_check(0, gp_padr))
	key_right2 = (keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr))
	key_left = (-(keyboard_check(vk_left) || gamepad_button_check(0, gp_padl)))
	key_left2 = (-(keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl)))
	key_down = (keyboard_check(vk_down) || gamepad_button_check(0, gp_padd))
	key_down2 = (keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd))
	key_jump = (keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face1))
	key_jump2 = (keyboard_check(ord("Z")) || gamepad_button_check(0, gp_face1))
	key_attack = (keyboard_check(ord("X")) || gamepad_button_check(0, gp_face3))
	key_attack2 = (keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, gp_face3))
	key_shoot = (keyboard_check(ord("C")) || gamepad_button_check(0, gp_shoulderr))
	key_shoot2 = (keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0, gp_shoulderlb))
	key_gun = (keyboard_check(ord("B")) || gamepad_button_check(0, gp_shoulderrb))
	key_gun2 = (keyboard_check_pressed(ord("B")) || gamepad_button_check_pressed(0, gp_shoulderrb))
	key_chainsaw = (keyboard_check(ord("V")) || gamepad_button_check(0, gp_shoulderr))
	key_chainsaw2 = (keyboard_check_pressed(ord("V")) || gamepad_button_check_pressed(0, gp_shoulderr))
	key_start = (keyboard_check_pressed(vk_return) || gamepad_button_check_pressed(0, gp_start))
	key_escape = (keyboard_check_pressed(vk_escape) || gamepad_button_check(0, gp_select))
}