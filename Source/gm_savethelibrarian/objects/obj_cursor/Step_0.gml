///@desc Move to Mouse

x_to	= mouse_x;
x_pos	= lerp(x_pos,x_to,move_spd);
x		= x_pos;

y_to	= mouse_y;
y_pos	= lerp(y_pos,y_to,move_spd);
y		= y_pos;