if (global.mining == true && global.packsize >= global.minevalue) {


holewalls.y = holewalls.y - (1+ (global.depth * 0.06))
global.mined = global.mined + 1;
global.depth = global.depth + global.pickaxespeed;
minedvalue = irandom(4*global.depthlevel) + 1;
global.minevalue = global.minevalue + minedvalue;
journalshow = irandom(1000)
audio_play_sound(minesound,150,false);
if (journalshow = 1) {
instance_create_depth(100, 10, -100, journal1);
}
//var thechosenone = weighted_choice(global.orelist,global.orelistprob);
//ds_list_add(global.storedores, thechosenone)
//for (var i = 0; i < ds_list_size(global.storedores); i++) {
//    show_debug_message(global.storedores[| i]); // Uses the DS list accessor [| ]
//}

if (textleft == true) {
	
	textleft = false
	text_y2 = 425
	} else {
		textleft = true
		text_y = 425 }

image_index = 1;

global.mining = false;
alarm[0] = global.minespeed;
} 

else if (global.packsize <= global.minevalue) {
show_debug_message("pack full")

var _layer_id = layer_get_id("Assets_1");


var _sprite_element_id = layer_sprite_get_id(_layer_id, "graphic_137DA1CD");

var _sprite_index = layer_sprite_get_sprite(_sprite_element_id);

layer_set_visible(_layer_id, true); 

}

//show_debug_message(global.minevalue);
