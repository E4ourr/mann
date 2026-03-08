global.paused = false;
global.paused = !global.paused;

if keyboard_check(vk_escape)
{
	global.paused = true
}