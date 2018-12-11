/// @desc stat_block_create(x,y)
 
with(instance_create_layer(argument0,argument1,"GUI",obj_textbox))
{
	var aim = string(global.selected.aim);
	var constitution = string(global.selected.constitution);
	var will = string(global.selected.will);
	var strength = string(global.selected.strength);
	var dexterity = string(global.selected.dexterity);
	text = ("Aim: " + aim + " \nConstitution: "+constitution+" \nWill: "+will+"\nStrength: "+strength+"\nDexterity: "+dexterity);
}