if(sprite_index == spr_aliya_roll){
    if(image_index > 2 && m_fired == false && m_rollcount<m_rollstepmax){
       if(global.slot>0)
            {
            //motion_set(m_fullDirection,m_rollspeed);
            rollx = lengthdir_x(m_rollingdistance,m_fullDirection)/m_rollingdistance*m_rollspeed;
            rolly = lengthdir_y(m_rollingdistance,m_fullDirection)/m_rollingdistance*m_rollspeed;
            phy_position_x += rollx;
            phy_position_y += rolly;
            }
       else
            {
            rollx = lengthdir_x(m_rollingdistance,m_fullDirection)/m_rollingdistance*m_rollspeed;
            rolly = lengthdir_y(m_rollingdistance,m_fullDirection)/m_rollingdistance*m_rollspeed;
            phy_position_x += rollx;
            phy_position_y += rolly;
            
            //motion_set(m_playerDirection,m_rollspeed);
            }
            m_rollcount++;
            if(m_rollcount>=m_rollstepmax)
                {
                m_fired = true;
                m_rollcount = 0;
                }
    }
    
    
}
