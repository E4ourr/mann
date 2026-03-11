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
	var cx = display_get_gui_width() / 2;
	draw_set_alpha(0.8)
    draw_set_color(c_black)
    draw_rectangle(cx - 450, 170, cx + 450, 650, false)
    draw_set_alpha(1)
	
    var cx = display_get_gui_width()/2
    draw_set_color(c_maroon);
    draw_set_halign(fa_center)
    draw_text(cx,200,"LEVEL UP")
    draw_text(cx,300,"1 - Weapon (Lv " + string(weapon_level) + ")")
    draw_text(cx,400,"2 - Speed (Lv " + string(speed_level) + ")")
    draw_text(cx,500,"3 - HP (Lv " + string(hp_level) + ")")
	draw_text(cx,600,"4 - XP Gain (Lv " + string(xp_level) + ")(MAX lvl=4)")
}

var txt = "Knock Outs: " + string(_score);
draw_text(display_get_gui_width() - _margin, _margin + 30, txt);

draw_set_alpha(1);
var bar_x = 20
var bar_y = 40
var bar_width = 200
var bar_height = 10
var margin = 20

draw_set_color(c_gray)
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false)
draw_set_color(c_blue)
draw_rectangle(bar_x, bar_y, bar_x + (xp / xp_to_next) * bar_width, bar_y + bar_height, false)
draw_set_color(c_white)
draw_text(bar_x + bar_width/2, bar_y + bar_height + 5, "XP");