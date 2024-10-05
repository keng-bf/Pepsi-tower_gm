with (obj_player)
{
	switch state
	{
		case 0:
			scr_player_normal();
			break;
		case 10:
			scr_player_highjump();
			break;
		case 13:
			scr_player_mach4();
			break;
		case 36:
			scr_player_jump();
			break;
		case 37:
			scr_player_ladder();
			break;
		case 39:
			scr_player_comingoutdoor();
			break;
		case 41:
			scr_player_Sjump();
			break;
		case 43:
			scr_player_Sjumpprep();
			break;
		case 44:
			scr_player_crouch();
			break;
		case 45:
			scr_player_crouchjump();
			break;
		case 46:
			scr_player_crouchslide();
			break;  
		case 47:
 			scr_player_mach1();
			break;
		case 48:
			scr_player_mach2();
			break;
		case 49:
			scr_player_machslide();
			break;
		case 50:
			scr_player_bump();
			break;
		case 52:
			scr_player_freefall();
			break;
		case 55:
			scr_player_freefallland();
			break;
		case 56:
			scr_player_door();
			break;
		case 69:
			scr_player_freefallprep();
			break;
		case 70:
			scr_player_Sjumpland();
			break;
		case "turning":
			scr_player_turning();
			break;
	}
}
if (input_buffer_jump < 8)
    input_buffer_jump++;
if ((flash == 1) && (alarm[0] <= 0))
    alarm[0] = (0.15 * room_speed);
if (state != 0)
{
    idle = 0;
    dashdust = 0;
}