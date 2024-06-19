/// @description Insert description here
// You can write your code in this editor
with(other) {
	image_blend = c_lime;
	//dano al objet player
	hp = hp - 1;
	//hp -= 1;
	//hp--;
	if(hp<=0) {
		//audio play sound
		audio_stop_sound(bgm_lights_out);
		room_goto(rm_game_over);
	}
}