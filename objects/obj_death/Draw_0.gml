draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_color(c_red);

draw_text(m_x,m_y/3,"Congratualtions! You died!");

var i = 0;
repeat(buttons)
{
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_grey);
	
	if(menu_index=i){draw_set_color(c_red);};
	
	draw_text(m_x,m_y/.5+(button_h*i),button[i]);
	
	i++;
};

var k = 0;
repeat(menu_controls)
{
	draw_set_font(fnt_text);
	draw_set_halign(fa_center);
	draw_set_color(c_grey);
	
	draw_text(m_x*.45,m_y*.75+(button_h*k),menu_control[k]);
	
	k++;
};
