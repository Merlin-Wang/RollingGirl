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
    

//这里处理被击飞的状态
if(m_undercontrol == false)
{
phy_position_x = phy_position_x + m_speedX;
phy_position_y = phy_position_y + m_speedY;
if(m_speedX > 0)
    {m_speedX += m_accelerate;
    if(m_speedX < 0)
        {m_speedX = 0;}
    }
if(m_speedX < 0)
    {m_speedX -= m_accelerate;
    if(m_speedX > 0)
        {m_speedX = 0;}
    }

if(m_speedY > 0)
    {m_speedY += m_accelerate;
    if(m_speedY < 0)
        {m_speedY = 0;}
    }
if(m_speedY < 0)
    {m_speedY -= m_accelerate;
    if(m_speedY > 0)
        {m_speedY = 0;}
    }
if(m_speedX==0&&m_speedY==0)
    {
    m_undercontrol = true;
    }
}


//这里处理被Aliya减速的状态
if(position_meeting(x, y, obj_aliya_passive_area2)&&m_id!=2)
{
 m_speed = m_speedmax - 2;
}
if(position_meeting(x, y, obj_aliya_passive_area1)&&m_id!=2)
{
 m_speed = m_speedmax - 4;
}
