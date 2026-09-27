if (variable_global_exists("dollars")) {
if (string(room) == "ref room SHipRoom"){
draw_set_color(c_black)
}
minevalues_text = "$" + string(global.minevalue)
minevalue_text = "$" + string(global.dollars)
minedepth_text = "Depth:" + string(global.depth)
}