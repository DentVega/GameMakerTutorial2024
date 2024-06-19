/// @description Insert description here
// You can write your code in this editor
// Presione F1 sobre una funcion para abrir la documentacion online
if(keyboard_check(vk_right)) {
	x = x + spd;
	sprite_index = spr_main_player_running;
	image_xscale = 1; //xscale te permite volter la imagen
} else if (keyboard_check(vk_left)) {
	x = x - spd;
	sprite_index = spr_main_player_running;
	image_xscale = -1;
} else if (keyboard_check(vk_up)) {
	y = y - spd;
	sprite_index = spr_main_player_running;
	image_xscale = -1;
}else if (keyboard_check(vk_down)) {
	y = y + spd;
	sprite_index = spr_main_player_running;
	image_xscale = -1;
} else {
	sprite_index = spr_main_player_idle;
}

depth = -y;

if(hp<=0) {
	room_goto(rm_game_over);
}

show_debug_message("Vida:");
show_debug_message(hp);

