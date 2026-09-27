if (global.mining == true) {


holewalls.y = holewalls.y - (global.depth * 1)
global.mined = global.mined + 1;
global.depth = global.depth + global.pickaxespeed;
global.minevalue = global.minevalue + irandom(4*global.depthlevel) + 1
//var thechosenone = weighted_choice(global.orelist,global.orelistprob);
//ds_list_add(global.storedores, thechosenone)
//for (var i = 0; i < ds_list_size(global.storedores); i++) {
//    show_debug_message(global.storedores[| i]); // Uses the DS list accessor [| ]
//}



image_index = 1;

global.mining = false;
alarm[0] = global.minespeed;
}

//show_debug_message(global.minevalue);
