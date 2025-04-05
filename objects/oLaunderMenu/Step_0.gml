upKey = keyboard_check_pressed(vk_up);
downKey = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("Y")) 
or mouse_check_button_pressed(mb_left) and mouseOnMenu(oLaunderMenu, topMargin);

//selectuj opciju tastatura
position += downKey - upKey;
if position >= optionLength {
	position = 0;
}
if position < 0 {
	position = optionLength - 1;
}

//selectuj opciju miš
for (var i = 0; i < optionLength; i += 1) {
	if mouse_y >= y + topMargin + lineSpacing * i 
	and mouse_y < y + topMargin + lineSpacing * i + font_get_size(fAdamantSansProRegular) //if the mouse is hovering over the option
	and mouseOnMenu(oLaunderMenu, topMargin) { //if the mouse is within the menu
		position = i; 
	}
}
//funkcionalne opcije
if acceptKey {
	switch(position) {
		case 0: //0%
			
			break;
		case 1: //25%
			
			break;
		case 2: //50%
			
			break;
		case 3: //75%
			
			break;
		case 4: //back

			break;
	}
	instance_destroy(oLaunderMenu);
	iTimeControl.step = 2;
	iTimeControl.go = true;
}