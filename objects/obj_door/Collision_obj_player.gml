with (obj_player)
{
    if ((state == 0) && (key_up && (y == (other.y + 50))))
    {
        player_y = other.target_y;
        player_x = other.target_x;
        targetRoom = other.targetRoom;
        other.visited = 1;
        image_index = 0;
        state = 56;
        instance_create_depth(x, y, -9999, obj_fadeout);
		scr_sound(sfx_door);
    }
}