if (instance_exists(Object1) && distance_to_object(Object1) < distance_to_player)
{
	target_x = random_range(xstart - 100, xstart + 100);
	target_y = random_range(ystart - 100, ystart + 100);
}
else
{
	target_x = random_range(xstart - 100, xstart + 100);
	target_y = random_range(ystart - 100, ystart + 100);
}
alarm[0] = 60;