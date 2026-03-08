var player = instance_find(Object1,0);

if (instance_exists(player))
{
	if (instance_number(Object8) < max_enemies)
	{
    for (var i = 0; i < spawn_amount; i++)
	{
    var angle = random(360);
    var dist = random_range(spawn_distance_min, spawn_distance_max);
    var spawn_x = player.x + lengthdir_x(dist, angle);
    var spawn_y = player.y + lengthdir_y(dist, angle);

 instance_create_layer(spawn_x, spawn_y, "Instances", Object8);
 } }
}

difficulty_timer += 1;

if (difficulty_timer mod 1 == 0)
{
    spawn_amount += 3;
	move_speed += 10;
}
alarm[0] = spawn_delay;