///move_state()

/// Movement

key_left = keyboard_check_direct(ord("A"));
key_right = keyboard_check_direct(ord("D"));
key_lm = keyboard_check_direct(mb_left);
key_jump = keyboard_check_direct(vk_space);

move = key_left + key_right;


// move left and right
if (key_left){
    hsp = -4;
    image_xscale = -1;
    //sprite_index = spr_player_movement;
}

if (key_right){
    hsp = 4;
    image_xscale = 1;
    //sprite_index = spr_player_movement;
}


//Neutral input = 0 movement
if ((key_right && key_left) or (!key_right && !key_left)){
    hsp = 0;
}

vsp += grav;

if (place_meeting(x,y+1,parent_wall)){
    if (hsp!=0) sprite_index = spr_player_movement; else sprite_index = spr_player
}else{
    if (vsp < 0) sprite_index = spr_player_jump; else sprite_index = spr_player_fall;
}
 
script_collision();

