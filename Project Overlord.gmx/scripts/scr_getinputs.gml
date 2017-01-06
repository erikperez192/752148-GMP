//Get inputs

key_left = keyboard_check_direct(ord("A"));
key_right = keyboard_check_direct(ord("D"));
key_up = keyboard_check_direct(ord("W"));
key_down = keyboard_check_direct(ord("S"));
key_lm = keyboard_check_direct(mb_left);
key_jump = keyboard_check_direct(vk_space);

move = key_left + key_right;
