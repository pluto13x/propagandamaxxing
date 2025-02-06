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
		if mouse_x <= room_width / 2 {
			position = i; //highlight the option in column 1
		}
	    else {
			position = i + 6; //highlight the option in column 2
		}
	}
}
//funkcionalne opcije
if acceptKey {
	switch(menuLevel) { 
		case 0: //what project
			switch(position) {
				case 0: // Church
					
					break;
				case 1: // Train station
					
					break;
				case 2: // Media house
					
					break;
				case 3: // Military base
					
					break;
				case 4: // Prison
					
					break;
				case 5: // Stadion
					
					break;
				case 6: // Plaza
					
					break;
				case 7: // Student dorm
					
					break;
				case 8: // University
					
					break;
				case 9: // Court
					
					break;
				case 10: // Culture expo
					
					break;
				case 11: // Assembly
					
					break;
			}
			menuLevel = 1;
		    position = 0;
			break;
			
				
		case 1: //how much money
			switch(position) {
				case 0: //0%
					dontbreak = false;
					break;
				case 1: //25%
					dontbreak = false;
					break;
				case 2: //50%
					dontbreak = false;
				    break;
				case 3: //75%
					dontbreak = false;
					break;
				case 4: //back
					menuLevel = 0;
					position = 0;
					dontbreak = true;
				    break;
			}
			if !dontbreak {
				instance_destroy(oLaunderMenu);
				iTimeControl.step = 3;
				iTimeControl.go = true;
			}
			break;
	}   
	optionLength = array_length(option[menuLevel]);
}