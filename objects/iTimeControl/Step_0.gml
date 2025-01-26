if room != rMainMenu {
	if step = 1 {
		instance_create_layer(room_width / 2 - iPopupControl.width / 2, room_height / 2 - iPopupControl.height / 2, "layerPopup", oPopup);
	}
	if step = 2 {
		instance_create_layer(room_width / 2 - iPopupControl.width / 2, room_height / 2 - iPopupControl.height / 2, "layerPopup", oLaunderMenu);
	}
	if step = 3 {
		week += 1;
		step = 1;
	}
}
if week == 53 {
	game_end();
}
