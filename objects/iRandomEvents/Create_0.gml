events = undefined;

if (file_exists(working_directory + "random-events.json")) {
	var json = "";
	var file = file_text_open_read(working_directory + "random-events.json");
	
	while(!file_text_eof(file)) {
		json += file_text_readln(file);
	}
	
	file_text_close(file);
	
	events = json_parse(json);
}

show_debug_message(events[0][$ "title"]);