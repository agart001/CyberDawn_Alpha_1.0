
if (place_meeting(x, y, obj_BC_testPlayer))
{
	if(col_textbox==noone)
	{
		col_textbox=instance_create_layer(x,y - 80, "Text", obj_textbox);
		obj_textbox.text=col_text;
		obj_textbox.collision=self;
	};
}
else
{
	if(col_textbox!=noone){instance_destroy(col_textbox);col_textbox=noone;}; 	
} 