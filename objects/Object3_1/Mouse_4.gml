// Inherit the parent event
event_inherited();

if (instance_exists(Object7))
{
	instance_destroy(Object7);
}
else
{
	instance_create_layer(room_width / 2, room_height - 100, "Instances", Object7);
}