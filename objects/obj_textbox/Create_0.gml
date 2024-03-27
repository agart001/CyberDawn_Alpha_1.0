var camera_id = view_camera[1];
var gui_w = camera_get_view_width(camera_id);
var gui_h = camera_get_view_height(camera_id);
display_set_gui_size(gui_w,gui_h);

text = "";
page = 0;

char_count = 0;

text_continue = "Press 'E'";

textbox_w = sprite_get_width(spr_textbox);
string_h = string_height(text)+(font_get_size(fnt_text)*1.25);
