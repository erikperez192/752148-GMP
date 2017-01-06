///jump_state()

move_state()

// Jumping
if (key_jump){
    if (grounded) vsp = -10;
    //sprite_index = spr_player_jump;
}

if (place_meeting(x,y+1,parent_wall)){
    if (hsp!=0) sprite_index = spr_player_movement; else sprite_index = spr_player
}else{
    if (vsp < 0) sprite_index = spr_player_jump; else sprite_index = spr_player_fall;
}

script_collision()

