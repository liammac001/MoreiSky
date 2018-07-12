 /****************\
*  Aidan David	 *
*      Aidan     *
\****************/

/// Draw the menu
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
draw_set_halign(fa_center);
draw_text(xx, yy - 64, title);

for (var i = 0; i<array_length_1d(option); i++) {
    draw_set_colour(c_gray);
    if (i = menuIndex) {
        draw_set_colour(c_white);
    }
    
    draw_text(xx, yy + (i * 32), option[i]);
}

draw_set_colour(c_white);
draw_set_halign(fa_left); 