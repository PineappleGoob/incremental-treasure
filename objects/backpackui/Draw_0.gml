draw_self()
draw_set_color(c_black);
draw_text(x+20,y+20,"Mines "+string(global.minevalue))
draw_text(x+20,y+40,""+string(global.cshovel))
draw_text(x+20,y+40,""+string(global.cshovel))
draw_text(x+20,y+70,"minespeed:")
draw_text(x+20,y+90,string(global.minespeed/60) + "sec")
draw_text(x+20,y+110,"$"+string(global.dollars))
draw_set_color(c_white);