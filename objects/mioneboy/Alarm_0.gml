y = y + 60

global.mined = global.mined + 1;
global.depth = global.depth + 3;
global.minevalue = global.minevalue + irandom(4*global.depthlevel) + 1
holewalls.y = holewalls.y - (global.depth * 1)
global.mining = true
jumping = false
alarm[1] = 300