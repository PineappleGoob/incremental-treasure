draw_set_font(gamefont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (variable_global_exists("dollars")) {
draw_text(15,70,minevalue_text)
draw_text(15,90,minedepth_text)
}