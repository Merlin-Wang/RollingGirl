if(m_attackcd > 0)  //控制技能cd
    {
    m_attackcd -= 1/room_battle.room_speed;
    if(m_attackcd < 0)
        {
        m_attackcd = 0;
        }
    }
    
if(m_skillcd > 0)  //控制技能cd
    {
    m_skillcd -= 1/room_battle.room_speed;
    if(m_skillcd < 0)
        {
        m_skillcd = 0;
        }
    }
    
if(m_rollcd > 0)  //控制技能cd
    {
    m_rollcd -= 1/room_battle.room_speed;
    if(m_rollcd < 0)
        {
        m_rollcd = 0;
        }
    }
    
if(m_ultimatecd > 0)  //控制技能cd
    {
    m_ultimatecd -= 1/room_battle.room_speed;
    if(m_ultimatecd < 0)
        {
        m_ultimatecd = 0;
        }
    }
