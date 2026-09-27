
if (variable_global_exists("dollars")) {
show_debug_message(room)
if (string(room) == "ref room SHipRoom"){
draw_set_color(c_black)
show_debug_message("yes")
}

if (string(room) == "ref room MilkRoom"){
show_debug_message("yes")
minevalues_text = "$" + string(global.minevalue)
minedepth_text = "Depth:" + string(global.depth)
}
minevalue_text = "$" + string(global.minevalue) + "/" + string(global.packsize)
minedepth_text = "Depth:" + string(global.depth)
}
draw_set_color(c_white)

text_y = 440
text_y_speed = 5