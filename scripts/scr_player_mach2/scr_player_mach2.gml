function scr_player_mach2(){
	scr_getinput();
	if (windingAnim < 200)
	    windingAnim++;
	hsp = (xscale * movespeed);
	machslideAnim = 1;
	move2 = (key_right2 + key_left2);
	move = (key_right + key_left);
	movespeed = 8.7;
	crouchslideAnim = 1;
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    if (mach2 < 95)
	        mach2++;
	    if (mach2 >= 95)
	    {
	        machhitAnim = 0;
	        state = 13;
	        flash = 1;
	        sprite_index = spr_player_mach3;
	        movespeed = 9;
			mach2 = 100;
	    }
	}
	if key_jump
	    input_buffer_jump = 0;
	if (key_down && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    machhitAnim = 0;
	    state = 46;
		sprite_index = spr_player_crouchslip;
	}
	if ((!key_attack) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    state = 49;
	    image_index = 0;
	    mach2 = 35;
	}
	if (((move == -1) && (xscale == 1)) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    state = 49;
	    image_index = 0;
	    mach2 = 35;
	}
	if (((move == 1) && (xscale == -1)) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    state = 49;
	    image_index = 0;
	    mach2 = 35;
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
	if ((key_jump2 && (place_meeting(x, (y + 1), obj_collisionparent) && key_attack)))
	    vsp = -7.5;
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
	}
	audio_sound_gain(sfx_mach2, 0.7, 0);
	if (!audio_is_playing(sfx_mach2))
	    audio_play_sound(sfx_mach2, 1, false);
    if (machpunchAnim == 0)
    {
        if (machhitAnim == 0)
            sprite_index = spr_player_mach
        if (machhitAnim == 1)
            sprite_index = spr_player_machhit
    }
    if (machpunchAnim == 1)
    {
        if (punch == 0)
            sprite_index = spr_player_machhit;
        if (punch == 1)
            sprite_index = spr_player_machhit;
        if ((floor(image_index) == image_number - 1) && (sprite_index == spr_player_machhit))
        {
            punch = 1;
            machpunchAnim = 0;
        }
        if ((floor(image_index) == image_number - 1) && (sprite_index == spr_player_machhit))
        {
            punch = 0;
            machpunchAnim = 0;
        }
    }
	if (!place_meeting(x, (y + 1), obj_collisionparent))
	    machpunchAnim = 0;
	if ((!instance_exists(obj_dashcloud)) && (place_meeting(x, (y + 1), obj_collisionparent) && (!place_meeting(x, (y + 1), obj_water))))
    instance_create_depth(x, y, -6, obj_dashcloud);
	image_speed = 0.6;
	scr_collideandmove();
}