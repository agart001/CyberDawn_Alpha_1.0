for(var i = 0;i < laserLength;i++)
{
	draw_sprite_ext(spr_laserBeam,1,x+lengthdir_x(i,direction),y+lengthdir_y(i,direction),1,1,direction,c_white,1);
};