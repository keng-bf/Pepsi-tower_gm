function scr_player_Sjump(){
	scr_getinput();
	mach2 = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	machslideAnim = 1;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 0;
	machhitAnim = 0;
	movespeed = 0;
	vsp = -14;
	if (place_meeting(x, (y - 1), obj_collisionparent) && (!place_meeting(x, (y - 1), obj_destructibles)))
	{
	    combo = 0;
	    state = 70;
	    image_index = 0;
	    machhitAnim = 0;
	    audio_sound_gain(sfx_land, 0.7, 0);
	    if (!audio_is_playing(sfx_land))
	        audio_play_sound(sfx_land, 1, false);
		scr_sound(sfx_break);
	}
	sprite_index = spr_player_superjump;
	image_speed = 0.4;
	if (!instance_exists(obj_mach2effect))
	    instance_create_depth(x, y, -4, obj_mach2effect);
	scr_collideandmoveonlywall();
}