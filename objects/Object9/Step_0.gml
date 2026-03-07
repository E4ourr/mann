if (instance_exists(Object1))
{
    var dir = point_direction(x, y, Object1.x, Object1.y);
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);
}