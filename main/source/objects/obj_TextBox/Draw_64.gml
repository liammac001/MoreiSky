draw_set_color(c_blue); //Make rectangle blue
draw_roundrect(PRoomWidth,PRoomHeight,display_get_gui_width()-PRoomWidth,textY,true); //Draw a rectangle
draw_set_color(c_red); //Make text red
draw_text_ext(textX,textY,string (string_copy(str,1,index)),-1,textW); //draw text with auto wrap
if (textCont = true) //Draws continue prompt if needed
{
	draw_text(textX,textY - 20,"Press E to continue")
}