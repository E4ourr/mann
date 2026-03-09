if (xp >= xp_to_next)
{
    xp = 0
    level += 1
    xp_to_next += 5
    leveling_up = true
}

if (leveling_up)
{
    if (keyboard_check_pressed(ord("1"))) weapon_level += 1
	 damage += 1

    if (keyboard_check_pressed(ord("2")))
{
        speed_level += 1
        move_speed += 0.1
}

    if (keyboard_check_pressed(ord("3")))
{
        hp_level += 1
        maxhp += 4
        hp = maxhp
}

    if (keyboard_check_pressed(ord("1")) ||
        keyboard_check_pressed(ord("2")) ||
        keyboard_check_pressed(ord("3")))
{
        leveling_up = false
}

    exit;
}
if (Object1.leveling_up) exit

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vert = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _vert * move_speed, tilemap);

move_wrap(true, true, 0);

if mouse_check_button_pressed(mb_left)
{
var b = instance_create_layer(x, y, "Instances", Object5_1);
b.direction = image_angle;
b.damage = damage;
b.image_xscale = 1 + (weapon_level * 0.2);
b.image_yscale = 1 + (weapon_level * 0.2);
var extra_bullets = clamp(weapon_level - 1, 0, 2)
for (var i = 0; i < extra_bullets; i++)
	
{
		var extra = instance_create_layer(x, y, "Instances", Object5_1);
		extra.damage = damage;
		extra.image_xscale = 1 + (weapon_level * 0.2);
		extra.image_yscale = 1 + (weapon_level * 0.2);
		extra.direction = image_angle + random_range(-25, 25);
}
	audio_play_sound(snd_gunshot, 0, false);
}

if (hp <= 0)
{
    room_goto(Room3);
}
if (keyboard_check(ord("W"))) 
{ 
	vspeed = -speed; image_angle = 90;
}    
if (keyboard_check(ord("S"))) 
{ 
	vspeed = speed; image_angle = 270;
}   
if (keyboard_check(ord("A"))) 
{ 
	hspeed = -speed; image_angle = 180; 
}  
if (keyboard_check(ord("D"))) 
{ 
	hspeed = speed; image_angle = 0; 
}     

