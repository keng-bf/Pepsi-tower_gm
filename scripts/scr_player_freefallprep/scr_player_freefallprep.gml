function scr_player_freefallprep(){
	scr_getinput();
	mach2 = 0;
	movespeed = 0;
	hsp = 0;
	vsp = 0;
	if (floor(image_index) == image_number - 1)
	{
	    state = 52;
		image_index = 0;
		vsp = 9;
	}
	sprite_index = spr_player_freefallprep;
	image_speed = 0.55;
	scr_collideandmove();
}