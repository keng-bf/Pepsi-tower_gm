if (fadealpha > 1)
{
    fadein = 1;
    if (room != obj_player.gotoroom)
        room_goto(obj_player.gotoroom);
}
if (fadein == 0)
    fadealpha += 0.1;
else if (fadein == 1)
    fadealpha -= 0.1;
with (obj_player)
{
    if ((other.fadein == 1) && place_meeting(x, y, obj_door))
    {  
        state = 39;
        image_index = 0;
    }
}