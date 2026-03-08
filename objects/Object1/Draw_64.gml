var _heartstotal = maxhp / 4;
var _currenthearts = floor(hp / 4);
var _partialheart = hp - (_currenthearts * 4);
var _heartsremaining = _heartstotal - _currenthearts;
var _marginx = 5;
var _marginy = 15;
var _spacing = 20;
for (var i = 1; i <= _heartstotal; i ++)
{
	if (i <= _currenthearts) draw_sprite(Sprite7, 4, _marginx + (_spacing * i), _marginy);
	else if (i=_currenthearts + 1) && (_partialheart != 0) draw_sprite(Sprite7, _partialheart, _marginx + (_spacing * i) ,_marginy);
	else if (_heartsremaining > 0) draw_sprite(Sprite7, 0, _marginx + (_spacing * i), _marginy);
	
}

draw_set_halign(fa_right);
draw_set_valign(fa_top);

var _margin = 10;
draw_text(display_get_gui_width() - _margin, _margin, "Level: " + string(level));
if (leveling_up)
{
    var cx = display_get_gui_width()/2
    draw_set_color(c_white);
    draw_set_halign(fa_center)

    draw_text(cx,200,"LEVEL UP")
    draw_text(cx,250,"1 - Weapon (Lv " + string(weapon_level) + ")")
    draw_text(cx,300,"2 - Speed (Lv " + string(speed_level) + ")")
    draw_text(cx,350,"3 - HP (Lv " + string(hp_level) + ")")
}