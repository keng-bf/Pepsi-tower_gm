if instance_exists(obj_player)
{
	draw_sprite(spr_wall, -1, 266, 30);
	if global.keyget == 1
	{
		draw_sprite(spr_player_template, -1, 266, 27);
	}
}