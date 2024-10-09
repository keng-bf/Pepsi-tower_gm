if (keyboard_check(vk_up) && (!instance_exists(obj_fadeout)))
{
    obj_player.gotoroom = gotoroom
    obj_player.gotodoor = gotodoor
    instance_create_layer(x, y, "Instances", obj_fadeout)
    audio_play_sound(sfx_door, 10, false)
}
