function scr_player_crouchslide(){
	scr_getinput();
	hsp = (xscale * movespeed);
	if (movespeed >= 0)
	    movespeed -= 0.26;
	mask_index = spr_crouchmask;
	if ((((hsp == 0) || ((place_meeting((x + 1), y, obj_collisionparent) && (xscale == 1)) || (place_meeting((x - 1), y, obj_collisionparent) && (xscale == -1)))) && (!place_meeting((x + sign(hsp)), y, obj_slopes))) || (movespeed <= 0))
	{
	    state = 44;
	    movespeed = 0;
	    mach2 = 0;
	    crouchslideAnim = 1;
	    image_index = 0;
	    crouchAnim = 1;
	    start_running = 1;
	    alarm[4] = 14;
	}
	if ((place_meeting((x + 1), y, obj_collisionparent) && (xscale == 1)) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))
	{
	    movespeed = 0;
	    state = 50;
	    hsp = -2.5;
	    vsp = -3;
	    mach2 = 0;
	    image_index = 0;
	    machslideAnim = 1;
	    machhitAnim = 0;
	    audio_sound_gain(sfx_bump, 0.7, 0);
	    if (!audio_is_playing(sfx_bump))
	        audio_play_sound(sfx_bump, 1, false);
	}
	if ((place_meeting((x - 1), y, obj_collisionparent) && (xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))
	{
	    movespeed = 0;
	    state = 50;
	    hsp = 2.5;
	    vsp = -3;
	    mach2 = 0;
	    image_index = 0;
	    machslideAnim = 1;
	    machhitAnim = 0;
	    audio_sound_gain(sfx_bump, 0.7, 0);
	    if (!audio_is_playing(sfx_bump))
	        audio_play_sound(sfx_bump, 1, false);
	}
	sprite_index = spr_player_crouchslip;
	if ((!instance_exists(obj_slidecloud)) && (place_meeting(x, (y + 1), obj_collisionparent) && (movespeed > 5)))
	    instance_create_depth(x, y, -6, obj_slidecloud)
	image_speed = 0.30;
	scr_collideandmove();
}