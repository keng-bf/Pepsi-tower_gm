function scr_player_machslide(){
	scr_getinput();
	mach2 = 0;
	hsp = (xscale * movespeed);
	move = (key_right + key_left);
	if (movespeed >= 0)
	    movespeed -= 0.3;
	landAnim = 0;
	if (floor(hsp) == 0)
	{
	    movespeed = 0;
	    state = 0;
	    movespeed = 3;
	    mach2 = 0;
	    image_index = 0;
	    machslideAnim = 0;
	}
	if ((floor(hsp) == 0) && ((move == -1) && ((xscale == 1) && key_attack)))
	{
	    machhitAnim = 0;
	    state = 48;
	    image_index = 0;
	    xscale = -1;
	    mach2 = 35;
	}
	if ((floor(hsp) == 0) && ((move == 1) && ((xscale == -1) && key_attack)))
	{
	    machhitAnim = 0;
	    state = 48;
	    image_index = 0;
	    xscale = 1;
	    mach2 = 35;
	}
	if ((place_meeting((x + 1), y, obj_collisionparent) && (xscale == 1)) && (!place_meeting((x + 1), y, obj_slopes)))
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
	if ((place_meeting((x - 1), y, obj_collisionparent) && (xscale == -1)) && (!place_meeting((x - 1), y, obj_slopes)))
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
	if (machslideAnim == 1)
	{
	    sprite_index = spr_player_machslidestart;
	    if (floor(image_index) == 6)
	        machslideAnim = 0;
	}
	if (machslideAnim == 0)
	    sprite_index = spr_player_machslide;
	image_speed = 0.35;
	scr_collideandmove();
}