var tint = mouseOnBuilding ? c_red : c_white;
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, tint, 1);
draw_set_color(c_white); 


draw_set_font(fAdamantSansProRegular);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

