// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_entity(moveX, moveY) {
	#region Collision handling
	if(moveX != 0 && place_meeting(x+moveX, y, o_solid)) {
		repeat(abs(moveX)) {
			if(!place_meeting(x+sign(moveX), y, o_solid)) {
				x += sign(moveX);
				continue;
			}
			break;
		}
		moveX = 0;
	}
	if(moveY != 0 && place_meeting(x, y+moveY, o_solid)) {
		repeat(abs(moveY)) {
			if(!place_meeting(x, y+sign(moveY), o_solid)) {
				y += sign(moveY);
				continue;
			}
			break;
		}
		moveY = 0;
	}
	#endregion
	#region Update position
	x += moveX;
	y += moveY;
	#endregion
}