function scr_player_mach4(){
	scr_getinput();
	if (windingAnim < 200)
	    windingAnim += 5;
	hsp = (xscale * movespeed);
	machslideAnim = 1;
	move = (key_right + key_left);
	movespeed = 12;
	crouchslideAnim = 1;
	if ((input_buffer_jump < 5) && (place_meeting(x, (y + 1), obj_collisionparent) && ((!((move == 1) && (xscale == -1))) && (!((move == -1) && (xscale == 1))))))
		vsp = -7.8;
	if key_jump
	    input_buffer_jump = 0;
	if (key_down && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    machhitAnim = 0;
	    state = 46;
	}
	if ((!key_attack) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    scr_sound(sfx_slide);
	    state = 49;
	    image_index = 0;
	    mach2 = 35;
	}
	if (((move == -1) && (xscale == 1)) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    flash = 0;
	    state = 49;
	    image_index = 0;
	    mach2 = 35;
		scr_sound(sfx_slide);
	}
	if (((move == 1) && (xscale == -1)) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    flash = 0;
	    state = 49;
	    image_index = 0;
	    mach2 = 35;
		scr_sound(sfx_slide);
	}
	if ((place_meeting((x + 1), y, obj_bumpable) && (xscale == 1)) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))
	{
	    machhitAnim = 0;
	    state = 50;
	    hsp = -2.5;
	    vsp = -3;
	    mach2 = 0;
	    image_index = 0;
	    audio_sound_gain(sfx_bump, 0.7, 0);
	    if (!audio_is_playing(sfx_bump))
	        audio_play_sound(sfx_bump, 1, false);
		scr_sound(sfx_break);
	}
	else if ((place_meeting((x - 1), y, obj_bumpable) && (xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))
	{
	    machhitAnim = 0;
	    state = 50;
	    hsp = 2.5;
	    vsp = -3;
	    mach2 = 0;
	    image_index = 0;
	    audio_sound_gain(sfx_bump, 0.7, 0);
	    if (!audio_is_playing(sfx_bump))
	        audio_play_sound(sfx_bump, 1, false);
		scr_sound(sfx_break);
	}
	if key_up
	{
	    vsp = -2;
	    state = 43;
	    hsp = 0;
	    image_index = 0;
	    flash = 1;
	}
	if !place_meeting(x, y + 1, obj_collisionparent)
	{
		if key_down2
		{
		    state = 69;
			image_index = 0;
			vsp = -1;
		}	
	}
	audio_sound_gain(sfx_mach2, 0.7, 0);
	if (!audio_is_playing(sfx_mach2))
	    audio_play_sound(sfx_mach2, 1, false);
	sprite_index = spr_player_mach3;
	if ((!instance_exists(obj_dashcloud)) && (place_meeting(x, (y + 1), obj_collisionparent) && (!place_meeting(x, (y + 1), obj_water))))
	    instance_create_depth(x, y, -6, obj_dashcloud);
	if (!instance_exists(obj_mach2effect))
	    instance_create_depth(x, y, -4, obj_mach2effect);
	image_speed = 0.40;
	scr_collideandmove();
}