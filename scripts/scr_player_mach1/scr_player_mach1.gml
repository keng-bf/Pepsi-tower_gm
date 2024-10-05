function scr_player_mach1(){
	scr_getinput();
	move = (key_left + key_right);
	landAnim = 0;
	if (place_meeting((x + 1), y, obj_collisionparent) && ((xscale == 1) && (!place_meeting((x + 1), y, obj_slopes))))
	{
	    mach2 = 0;
	    state = 0;
	    movespeed = 0;
	}
	if (place_meeting((x - 1), y, obj_collisionparent) && ((xscale == -1) && (!place_meeting((x - 1), y, obj_slopes))))
	{
	    mach2 = 0;
	    state = 0;
	    movespeed = 0;
	}
	if (key_down && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    machhitAnim = 0;
	    state = 46;
		sprite_index = spr_player_crouchslip;
	}
	if (movespeed <= 6.5)
	    movespeed += 0.3;
	machhitAnim = 0;
	crouchslideAnim = 1;
	hsp = floor((xscale * movespeed));
	if (place_meeting(x, (y + 1), obj_collisionparent) && ((xscale == 1) && (move == -1)))
	{
	    momemtum = 0;
	    mach2 = 0;
	    movespeed = 0;
	    image_index = 0;
	    xscale = -1;
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && ((xscale == -1) && (move == 1)))
	{
	    momemtum = 0;
	    mach2 = 0;
	    movespeed = 0;
	    image_index = 0;
	    xscale = 1;
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
	if (key_jump && (place_meeting(x, (y + 1), obj_collisionparent) && key_attack))
	{
	    vsp = -7;
	}
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    if (mach2 < 35)
	        mach2++;
	    if (mach2 >= 35)
	    {
	        state = 48;
	    }
	}
	if ((!key_attack) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    state = 0;
	    image_index = 0;
	    mach2 = 0;
	    machslideAnim = 1;
	}
	audio_sound_gain(sfx_mach1, 0.7, 0);
	if (!audio_is_playing(sfx_mach1))
	    audio_play_sound(sfx_mach1, 1, false);
	if (momemtum == 0)
	    sprite_index = spr_player_mach;
	else
	    sprite_index = spr_player_mach;
	if (movespeed < 3)
	    image_speed = 0.25;
	else if ((movespeed > 3) && (movespeed < 7))
	    image_speed = 0.30;
	else
	    image_speed = 0.4;
	if ((!instance_exists(obj_dashcloud)) && ((!place_meeting(x, y, obj_water2)) && place_meeting(x, (y + 1), obj_collisionparent)))
	    instance_create_depth(x, y, -6, obj_dashcloud);
	scr_collideandmove();
}