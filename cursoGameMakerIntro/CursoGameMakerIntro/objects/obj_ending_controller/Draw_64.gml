/// @description Insert description here
// You can write your code in this editor
mitadPantallaW = display_get_gui_width();
mitadPantallaH = display_get_gui_height();

//para que el texto se vea centrado
draw_set_halign(fa_center);

draw_text_ext_transformed_color(mitadPantallaW/2, mitadPantallaH/4, "Gracias por Jugar", 10, 100, 5, 5, 0, c_white, c_white, c_white, c_white, 1);
draw_text_ext_transformed_color(mitadPantallaW/2, mitadPantallaH/2, "Press Enter TO RESTART", 10, 200, 2, 5, 0, c_white, c_white, c_white, c_white, 1);

//restaurar draw_set_halign por que afecta como se dibujar todos los objetos mas adelantes;
draw_set_halign(fa_left);

if(keyboard_check(vk_enter)){
	game_restart();
}