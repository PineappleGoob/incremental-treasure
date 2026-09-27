draw_set_font(gamefont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (variable_global_exists("dollars")) {
if (string(room) == "ref room SHipRoom"){
draw_set_color(c_black)
show_debug_message("yes")
}

if (string(room) == "ref room MilkRoom"){
draw_text_transformed(300,220,minevalues_text,2,2,0)
}

draw_text(15,70,minevalue_text)
draw_text(15,90,minedepth_text)
}
draw_set_color(c_white)