if(!m_isAttacking && !m_isInSkill){
var player = instance_find(obj_ysera,0);
var deltaX = player.x - x;
var deltaY = player.y - y;
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
    
    sprite_index = spr_devil_walk;
    
    if (distance_to_point(player.x, player.y) < m_dashDistance){
    if(x < player.x){//冲刺至玩家左侧
        m_dashTargetX = player.x - m_dashDelta;
    }
    else{//冲刺至玩家右侧
        m_dashTargetX = player.x + m_dashDelta;
    }
    m_dashTargetY = player.y;
    m_devilState = DevilState.DEVIL_DASH;
}    
}
