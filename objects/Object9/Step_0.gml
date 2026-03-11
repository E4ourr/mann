if (global.paused) return;

if (instance_exists(Object1) && Object1.leveling_up) return;
if (instance_exists(Object1))
{
var dir = point_direction(x, y, Object1.x, Object1.y);
x += lengthdir_x(move_speed, dir);
y += lengthdir_y(move_speed, dir);
var e = instance_place(x, y, Object9);
if (e != noone && e != id)
{
var push = point_direction(e.x, e.y, x, y);
x += lengthdir_x(1, push);
y += lengthdir_y(1, push);
}
}
if (hit_cooldown > 0)
{
    hit_cooldown -= 1;
}

if (place_meeting(x, y, Object1))
{
if (hit_cooldown <= 0)
{
    with (Object1)
{
    hp -= other.damage;
}
    hit_cooldown = room_speed / 5;
}
}
if (hp <= 0)
{
   with (Object1)
{
   _score += 1;
}

   instance_destroy();
}