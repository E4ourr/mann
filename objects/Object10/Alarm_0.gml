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
 var enemy = instance_create_layer(spawn_x, spawn_y, "Instances", Object8);
enemy.hp = round(4 * (1 + difficulty_timer * 0.10));
enemy.move_speed = 1 * speed_multiplier;
enemy.damage = 1 * damage_multiplier;

 enemy.image_xscale = 1 + difficulty_timer * 0.02;
enemy.image_yscale = 1 + difficulty_timer * 0.02;
 }  
}
}

difficulty_timer += 1;

if (difficulty_timer mod 4 == 0)
{
 if (current_time < 300000)
{
    spawn_amount += 3;
}
 else
{
    spawn_amount += 9;
}

    damage_multiplier += 0.2;
    speed_multiplier += 0.05;
}

alarm[0] = spawn_delay;