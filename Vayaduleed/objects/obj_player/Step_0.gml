//movement and colisions
hspd = ((keyboard_check(ord("D")) - keyboard_check(ord("A"))) * 5) * global.agl
vspd = ((keyboard_check(ord("S")) - keyboard_check(ord("W"))) * 5) * global.agl

//horizontal colision
if place_meeting(x + hspd, y, obj_wall){
	while !place_meeting(x + sign(hspd), y, obj_wall){
		x += sign(hspd);
	}
hspd = 0;
}
//vertical colision
if place_meeting(x,y + vspd,obj_wall){
	while !place_meeting(x, y + sign(vspd), obj_wall){
		y += sign(vspd);
	}
vspd = 0;
}

x += hspd 
y += vspd

//animation
if hspd != 0 && vspd == 0{
	if hspd <= 0{
		sprite_index = spr_playerSide_temp
		image_xscale = -.5
	}
	else{
		 sprite_index = spr_playerSide_temp
		 image_xscale = .5
	 }
}
if vspd != 0 && hspd == 0{
	if vspd <= 0{
		sprite_index = spr_playerBack_temp
		image_xscale = .5
	}
	else{
		sprite_index = spr_playerFront_temp
		image_xscale = .5
	}
}
if vspd != 0 && hspd != 0{
	if vspd <= 0{
		sprite_index = spr_playerBack_temp
		image_xscale = 0.5
	}
	else{
		sprite_index = spr_playerFront_temp
		image_xscale = 0.5
	}
}