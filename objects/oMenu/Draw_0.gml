draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_set_font(fAdamantSansProRegular);
draw_set_valign(fa_top);
draw_set_halign(fa_left)
for (var i = 0; i < optionLength; i += 1) {
	var optionColor = c_black;
	if i == position {
		optionColor = c_red; //draw everything in white, except the highlighted option
	}
	draw_text_color(x + margin, y + margin + lineSpacing * i, option[menuLevel, i], optionColor, optionColor, optionColor, optionColor, 1);
}