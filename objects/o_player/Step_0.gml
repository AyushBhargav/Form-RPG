#region Player movement
var _input_left = keyboard_check(vk_left);
var _input_right = keyboard_check(vk_right);
var _input_up = keyboard_check(vk_up);
var _input_down = keyboard_check(vk_down);
var _input_walk = keyboard_check(vk_control);
var _input_run = keyboard_check(vk_shift);

if(_input_walk || _input_run) {
	spd = abs(_input_walk * walk_spd - _input_run * run_spd);
} else {
	spd = normal_spd;	
}
var _moveX = (_input_right - _input_left) * spd;
var _moveY = _moveX == 0 ? (_input_down - _input_up) * spd : 0;

// Move the player
move_entity(_moveX, _moveY);
#endregion