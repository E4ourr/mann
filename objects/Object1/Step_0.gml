var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vert = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _vert * move_speed, tilemap);

move_wrap(true, true, 0);

if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x, y, "Instances", Object5_1)
}
