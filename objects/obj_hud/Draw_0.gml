/// @description 

if(lives >= 1)draw_sprite_ext(spr_hud_lives,1,
				view_get_xport(view_current),
				view_get_yport(view_current)+camera_get_view_height(view_current),
				1,1,0,make_color_hsv(hsvhue1,32,255),$ff);
draw_sprite_ext(spr_hud_lives,0,
				view_get_xport(view_current),
				view_get_yport(view_current)+camera_get_view_height(view_current),
				1,1,0,make_color_hsv(hsvhue1,128,255),$ff);

if(lives >= 2)draw_sprite_ext(spr_hud_lives,1,
				view_get_xport(view_current)+4,
				view_get_yport(view_current)+camera_get_view_height(view_current),
				1,1,0,make_color_hsv(hsvhue2,64,255),$ff);
draw_sprite_ext(spr_hud_lives,0,
				view_get_xport(view_current)+4,
				view_get_yport(view_current)+camera_get_view_height(view_current),
				1,1,0,make_color_hsv(hsvhue2,128,255),$ff);


if(lives >= 3)draw_sprite_ext(spr_hud_lives,1,
				view_get_xport(view_current)+8,
				view_get_yport(view_current)+camera_get_view_height(view_current),
				1,1,0,make_color_hsv(hsvhue3,64,255),$ff);
draw_sprite_ext(spr_hud_lives,0,
				view_get_xport(view_current)+8,
				view_get_yport(view_current)+camera_get_view_height(view_current),
				1,1,0,make_color_hsv(hsvhue3,128,255),$ff);


if(lives >= 4)draw_sprite_ext(spr_hud_lives,1,
				view_get_xport(view_current)+12,
				view_get_yport(view_current)+camera_get_view_height(view_current),
				1,1,0,make_color_hsv(hsvhue4,64,255),$ff);
draw_sprite_ext(spr_hud_lives,0,
				view_get_xport(view_current)+12,
				view_get_yport(view_current)+camera_get_view_height(view_current),
				1,1,0,make_color_hsv(hsvhue4,128,255),$ff);
				

draw_sprite_ext(spr_1px,0,
				view_get_xport(view_current)+18,
				view_get_yport(view_current)+camera_get_view_height(view_current)-4,
				(obj_player.setspeed-.45)*29,3,0,make_color_hsv(hsvhue4,128,255),$ff);





























