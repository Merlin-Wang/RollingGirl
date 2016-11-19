image_speed = 0.25  //调整动画速度
if(keyboard_check(ord('A')))
{
    phy_position_x = phy_position_x - 8;
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
}
else if(keyboard_check(ord('D')))
{
    phy_position_x = phy_position_x + 8;
    sprite_index = spr_ysera_walk_side;    
    image_xscale = -1;
}
else if(keyboard_check(ord('W')))
{
    phy_position_y = phy_position_y - 8;
    sprite_index = spr_ysera_walk_back;    
}
else if(keyboard_check(ord('S')))
{
    phy_position_y = phy_position_y + 8;
    sprite_index = spr_ysera_walk_front;
}
else
{
    sprite_index = spr_ysera_idle;
}
