if room != rMainMenu and go {
	if step == 0 {
		
	}
	if step == 1 {
		instance_create_layer(room_width / 2 - iPopupControl.width / 2, room_height / 2 - iPopupControl.height / 2, "layerPopup", oLaunderMenu);
		go = false;	
	}
	if step == 2 {
		instance_create_layer(room_width / 2 - iPopupControl.width / 2, room_height / 2 - iPopupControl.height / 2, "layerPopup", oPopup);
		go = false;
	}
	if step == 3 {
		week += 1;
		step = 0;
		go = true;
	}
}
if week == 53 {
	game_end();
}

