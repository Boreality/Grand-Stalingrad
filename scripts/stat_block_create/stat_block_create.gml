/// @desc stat_block_create(x,y)
 
if(ds_exists(global.selected,ds_type_list)) && (ds_list_size(global.selected) == 1)
{
    with(instance_create_layer(argument0,argument1,"GUI",obj_textbox))
    {
        var soldier = ds_list_find_value(global.selected,0);
    	var aim = string(soldier.aim);
    	var constitution = string(soldier.constitution);
    	var will = string(soldier.will);
    	var strength = string(soldier.strength);
    	var dexterity = string(soldier.dexterity);
    	text = ("Aim: " + aim + " \nConstitution: "+constitution+" \nWill: "+will+"\nStrength: "+strength+"\nDexterity: "+dexterity);
    	owner = soldier;
    }
}