/// @description 
x=room_width/2;
y=room_height*.25;
m_x = x;
m_y = y;
button_h = font_get_size(fnt_menu)*2;

menu_control[0] = "Arrow/Scroll Up: Menu Up";
menu_control[1] = "Arrow/Scroll Down: Menu Down";
menu_control[2] = "Right Mouse/Space: Menu Select";
menu_controls = array_length(menu_control);

button[0] = "New Game";
button[1] = "Load Game";
button[2] = "Settings";
button[3] = "Exit";
buttons = array_length(button);

menu_index = 0;
previous_index = 0;
