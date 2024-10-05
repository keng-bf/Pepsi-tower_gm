function scr_player_Sjumpprep(){
	scr_getinput();
	combo = 0;
	movespeed = 4;
	mach2 = 0;
	start_running = 1;
	alarm[4] = 14;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	machslideAnim = 1;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	vsp = 0;
	hsp = 0;
	if (floor(image_index) == 6)
	{
	    state = 41;
	    vsp = -14;
	}
	sprite_index = spr_player_superjumpprep;
	image_speed = 0.30;
	scr_collideandmove();
}