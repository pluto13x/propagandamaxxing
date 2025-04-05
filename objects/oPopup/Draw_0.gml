draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_set_font(fAdamantSansProRegular);
draw_set_valign(fa_top);
draw_set_halign(fa_left)

draw_text_ext_color(x + margin, y + topMargin, iRandomEvents.events[event][$ "title"], lineSpacing, sprite_width - margin * 2, textColor, textColor, textColor, textColor, 1);

draw_text_ext_color(x + margin, y + sprite_height / 2 - 60, iRandomEvents.events[event][$ "option-yes"], lineSpacing, sprite_width - margin * 2, textColor, textColor, textColor, textColor, 1);