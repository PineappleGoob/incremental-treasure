if (variable_global_exists("dollars")) {
if (string(room) == "ref room SHipRoom"){
draw_set_color(c_black)
}
minevalues_text = "$" + string(global.minevalue)
minevalue_text = "BACKPACK:" + string(global.minevalue) + "/" + string(global.packsize)
minedepth_text = "Depth:" + string(global.depth)
}

