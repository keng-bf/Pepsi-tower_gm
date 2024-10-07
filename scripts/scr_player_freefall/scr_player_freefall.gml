function scr_player_freefall(){
	scr_getinput();
	grav = 0.4;
	movespeed = 0;
	hsp = 0;
	landAnim = 1;
	if (place_meeting(x, (y + 1), obj_collisionparent) && (!place_meeting(x, (y + 1), obj_destructibles)))
	{
	    state = 55;
	    jumpAnim = 1;
	    jumpstop = 0;
	    combo = 0;
	    bounce = 0;
	    image_index = 0;
	    if (!place_meeting(x, y, obj_water2))
	        instance_create_depth(x, y, -6, obj_landcloud);
	    freefallstart = 0;
	    audio_sound_gain(sfx_land, 0.7, 0);
		if (!audio_is_playing(sfx_land))
		    audio_play_sound(sfx_land, 1, false);
	}
	sprite_index = spr_player_freefall;
	image_speed = 0.30;
	if (!instance_exists(obj_mach2effect))
	    instance_create_depth(x, y, -4, obj_mach2effect);
	scr_collideandmove();
}