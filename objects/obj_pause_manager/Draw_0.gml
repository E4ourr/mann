if (global.paused) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_set_color(c_black);
    draw_rectangle(0,0,room_width,room_height,false);

   draw_self();
   
   draw_set_font(Font1);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_set_color(c_white);
	draw_text(700, 300, "PAUSED");
	
	draw_set_color(c_white);
    draw_text(700, 300, "PAUSED");
}