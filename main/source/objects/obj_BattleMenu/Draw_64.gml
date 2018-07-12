  /****************\
*  Aidan David	 *
*      Aidan     *
\****************/

/// Draw the menu
var xx = display_get_gui_width() / 5;
var yy = display_get_gui_height() / 1.3;
draw_set_halign(fa_center);

for (var i = 0; i < array_length_1d(option); i++) {
    draw_set_colour(c_gray);
    if (i = menuIndex) {
        draw_set_colour(c_white);
    }
    
    draw_text(xx + (i * xx), yy, option[i]);
}

draw_set_colour(c_white);
draw_set_halign(fa_left); 