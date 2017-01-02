/*如何移动
if(m_isAttacking == false && m_isInSkill == false && m_isInUltimate == false && m_isRolling == false){
var player = instance_find(obj_ysera,0);
var deltaX = player.x - x-200;
var deltaY = player.y - y-200;
    if(deltaX > m_speed){
        phy_position_x += m_speed;
    }
    else if(deltaX < -m_speed){
        phy_position_x -= m_speed;
    }
    else{
        phy_position_x += deltaX;
    }
    
    if(deltaY > m_speed){
        phy_position_y += m_speed;
    }
    else if(deltaY < -m_speed){
        phy_position_y -= m_speed;
    }
    else{
        phy_position_y += deltaY;
    }
    
        if(deltaX > 0){
        image_xscale = -1;
    }
    else if(deltaX < 0){
        image_xscale = 1;
    }
    if(deltaX > 0.001||deltaX < -0.001)
    {sprite_index = spr_aliya_walk_side;}
    else if(deltaY > 0.001)
    {sprite_index = spr_aliya_walk_front;}
    else if(deltaY < -0.001)
    {sprite_index = spr_aliya_walk_back;}
    else
    {sprite_index = spr_aliya_idle;}
}
//如何放置雪糕



//什么时候踢雪糕




//什么时候翻滚



//什么时候切换到远程模式



//什么时候切换到大胆模式
