upKey = keyboard_check_pressed(vk_up);
downKey = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("Y")) 
or mouse_check_button_pressed(mb_left) and mouseOnMenu(oMenu);

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
	if mouse_y >= y + margin + lineSpacing * i 
	and mouse_y < y + margin + lineSpacing * i + font_get_size(fAdamantSansProRegular) //if the mouse is hovering over the option
	and mouseOnMenu(oMenu) { //if the mouse is within the menu
		position = i; //highlight the option
	}
}
//funkcionalne opcije
if acceptKey {
	switch(menuLevel) { 
		case 0: //main and ingame menu
			switch(position) {
				case 0:
				    //"start game"
					if iMenuControl.menuType == "main" {
						room_goto(rMainRoom);
					}
					//"resume game"
					else {
						instance_destroy(id);	
					}
					break;
				case 1: 
				    //"settings"
					menuLevel = 1;
				    position = 0;
					break;
				case 2: 
				    //"quit game"
					if iMenuControl.menuType == "main" {
						game_end(0);
					}
					//"main menu"
					else {
						iMenuControl.menuType = "main";
						room_goto(rMainMenu);
					}
				    break;
				break;
			}
			break;
			
				
		case 1: //settings menu
			switch(position) {
				case 0: //Window size
					
					break;
				case 1: //Brightness
					
					break;
				case 2: //Controls
					
				    break;
				case 3: //Back
					menuLevel = 0;
					position = 1;
				    break;	
			}
			break;
	}   
	optionLength = array_length(option[menuLevel]);
}