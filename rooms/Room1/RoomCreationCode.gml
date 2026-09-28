if (!variable_global_exists("mined")) {
global.mined = 0 //how much total mined ever
global.minespeed = 60 //self explanitory
global.minevalue = 0 //money from ore not sold yet
global.dollars = 100 //amount of money from selling ores
global.depth = 1 //depth of mine, higher depth, higher value
global.depthlevel = 1 //based on depth what level of value is rn.
global.pickaxespeed = 1 //checks how far down in depth each click goes
global.packsize = 20 //backpack
global.storedores = ds_list_create() //ores currently stored in backpac
global.cshovel = "shit shovel"
global.holewally = 0 //sans
global.orelist = ["Tree", "Bee", "ZaZa", "Methenphatemene"]
global.orelistprob = [50,30,15,15]

}										