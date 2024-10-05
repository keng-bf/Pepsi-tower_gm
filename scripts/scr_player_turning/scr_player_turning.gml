function scr_player_turning(){
	scr_getinput();
	move = (key_left + key_right);
	hsp = (move * movespeed);
	jumpstop = 0;
	if sprite_index == spr_player_turning && floor(image_index) == image_number - 1
	{
		state = 0;
		if xscale == -1
			xscale = 1;
		else if xscale == 1
			xscale = -1;
	}
	if xscale = -1
	{
		image_speed = -0.30;	
	}
	else if xscale = 1
	{
		image_speed = 0.30;	
	}
	movespeed = 0;
	scr_collideandmove();
}