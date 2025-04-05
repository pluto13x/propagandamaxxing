
width = iMenuControl.width;
height = iMenuControl.height;
image_xscale = width/sprite_width;
image_yscale = height/sprite_height;

margin = iMenuControl.margin;
topMargin = 50;
lineSpacing = iMenuControl.lineSpacing - 30;
x = room_width / 2 - width / 2;
y = room_height / 2 - height / 2;

position = 0;
menuLevel = 0;

//main menu

option[0,0] = "Church";
option[0,1] = "Train station"
option[0,2] = "Media house";
option[0,3] = "Military base";
option[0,4] = "Prison";
option[0,5] = "Stadion";
option[0,6] = "Plaza";
option[0,7] = "Student dorm";
option[0,8] = "University";
option[0,9] = "Court";
option[0,10] = "Culture expo";
option[0,11] = "Assembly";

//settings menu
option[1,0] = "0%";
option[1,1] = "25%";
option[1,2] = "50%";
option[1,3] = "75%";
option[1,4] = "Back";

optionLength = array_length(option[0]);

dontbreak = true;

