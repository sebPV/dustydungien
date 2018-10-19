/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y+1,OBJ_wall))
{
	vsp = -7
}

if(place_meeting(x+HSP,y,OBJ_wall))
{
	while (!place_meeting(x+sign(HSP),y,OBJ_wall))
	{
		x = x +	sign(HSP)
	}
   HSP = 0
}
x = x + HSP

if (place_meeting(x,y+VSP,OBJ_wall))
{
	while (!place_meeting(x,y+sign(VSP),OBJ_wall))
	{
		y = y + sign(VSP)
	}

 VSP = 0
};