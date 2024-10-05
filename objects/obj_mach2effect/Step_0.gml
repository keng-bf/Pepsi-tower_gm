if (obj_player.state != 48) && (obj_player.state != 11) && (obj_player.state != 13) && obj_player.sprite_index != spr_player_superjump && obj_player.sprite_index != spr_player_freefall
    instance_destroy();
image_alpha -= 0.1;