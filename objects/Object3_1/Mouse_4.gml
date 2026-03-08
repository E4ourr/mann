event_inherited();

if (instance_exists(Object5))
{
	instance_destroy(Object5);
}

else
{
	instance_create_layer(room_width / 2, room_height - 100, "Instances", Object5);
}