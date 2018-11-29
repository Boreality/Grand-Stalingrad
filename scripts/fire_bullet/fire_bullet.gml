with(instance_create_layer(x,y,"Soldiers",obj_bullet))
{
	direction = other.direction;
	image_angle = direction ;
	speed = bullet_speed;
	owner_gun = other.my_gun;
	owner_soldier = other.id;
	
}