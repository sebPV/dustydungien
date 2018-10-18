//spiler indput
if (keyboard_check(ord("p")))
{
instance_destroy()
}

//if (keyboard_check(ord("d")))
//{
//x = x + 4
//}

//if (keyboard_check(ord("a")))
//{
//x = x - 4
//}
//key_left = keyboard_check(vk_left)
//key_right = keyboard_check(vk_right)

key_left = keyboard_check(ord("A"))			// HUSK STORE BOGSTAVER NÅR MAN CHECKER FOR BOGSTAV TASTER! :D - ÆNDRET FRA "a" til "A"
key_right = keyboard_check(ord("D"))		// HUSK STORE BOGSTAVER NÅR MAN CHECKER FOR BOGSTAV TASTER! :D - ÆNDRET FRA "d" til "D"
key_jump = keyboard_check_pressed(vk_space)

var move = key_right - key_left

HSP = move * Walksp
VSP = VSP + GRV

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
y = y + VSP

if (keyboard_check(ord("d")))
{

}
if (!place_meeting(x,y+1,OBJ_wall))
{
	sprite_index = SPR_V_player_idle
	image_speed = 0
	if (sign(VSP)> 0) image_index = 1 
}








