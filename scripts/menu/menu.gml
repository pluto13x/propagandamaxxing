function mouseOnMenu(menu, upperMargin = menu.margin){
	if mouse_x > menu.bbox_left + menu.margin and mouse_x < menu.bbox_right
		and mouse_y > menu.bbox_top + upperMargin and mouse_y < menu.bbox_bottom - upperMargin {
		return true;
	}
}