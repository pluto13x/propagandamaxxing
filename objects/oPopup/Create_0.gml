width = iPopupControl.width;
height = iPopupControl.height;
image_xscale = width/sprite_width;
image_yscale = height/sprite_height;

instance_create_layer(x + sprite_width - 64, y, "layerPopupExit", oExit);
instance_create_layer(x + sprite_width/4*3, y + sprite_height/4*3, "layerPopupExit", oYes);
instance_create_layer(x + sprite_width/4, y + sprite_height/4*3, "layerPopupExit", oNo);