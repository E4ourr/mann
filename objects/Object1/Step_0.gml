var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vert = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _vert * move_speed, tilemap);

move_wrap(true, true, 0);

if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x, y, "Instances", Object5_1)
}

if (hp <= 0)
{
    room_goto(Room3);
}

if (fire_cooldown > 0)
{
    fire_cooldown -= 1;
}

if (keyboard_check(vk_space) && fire_cooldown <= 0)
{
    instance_create_layer(x, y, "Instances", Object5_1);
    fire_cooldown = fire_delay;
}

if (keyboard_check(ord("W"))) { vspeed = -speed; image_angle = 90; }    
if (keyboard_check(ord("S"))) { vspeed = speed; image_angle = 270; }   
if (keyboard_check(ord("A"))) { hspeed = -speed; image_angle = 180; }  
if (keyboard_check(ord("D"))) { hspeed = speed; image_angle = 0; }     
