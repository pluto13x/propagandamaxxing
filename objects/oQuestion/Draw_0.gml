draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_set_font(fAdamantSansProRegular);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_text_ext_transformed_color(x + margin, y + topMargin, "\"What will I launder money on this week?\"", 45, 500, 1, 1, 0, timeColor, timeColor, timeColor, timeColor, 1);
