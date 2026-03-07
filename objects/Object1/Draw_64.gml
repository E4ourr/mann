// @description?
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
	else if (_heartsremaining > 0) draw_sprite(Sprite7, 0, _marginx + (_spacingi), _marginy);
	
}