//如何移动
if(m_isAttacking == false && m_isInSkill == false && m_isInUltimate == false && m_isRolling == false){
player = instance_find(obj_ysera,0);

if(m_xuegaonumnow==0||m_tracking) //距离够近了就放雪糕
{
maxdistance = 170;
betweentimemax = 20;
betweentime = 0;
thisturnover = 0;
deltaX = player.x - x;
deltaY = player.y - y;
distance = sqrt(power(deltaX,2)+power(deltaY,2));
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
    
    if(distance<=maxdistance)
        {
        m_fired = false;
        m_isInSkill = true;
        sprite_index = sprskill;
        lastx = x;
        lasty = y;
        tmpang = point_direction(lastx,lasty,player.x,player.y);
        tmpang = tmpang - 120;
        image_index = 0;
        m_tracking = 0;
     }    
}
else if((m_xuegaonummax-m_xuegaonumnow)>0&&thisturnover==0)//放了1个-留给后面处理
    {
    //show_debug_message(2);
    tmpy = sin(tmpang) * m_speed;
    tmpx = cos(tmpang) * m_speed;
    phy_position_x += tmpx;
    phy_position_y += tmpy;
    betweentime++;
    if(betweentime>=betweentimemax)
    {
    m_fired = false;
    m_isInSkill = true;
    sprite_index = sprskill;
    image_index = 0;
    lastx = x;
    lasty = y;
    tmpang = point_direction(lastx,lasty,player.x,player.y);
    tmpang = tmpang - 120;
    betweentime = 0;
    if((m_xuegaonummax-m_xuegaonumnow)==1)
        {
        targetxuegaox = x;
        targetxuegaoy = y;
        }
    }
    deltaX = player.x - x;
    deltaY = player.y - y;
    distance = sqrt(power(deltaX,2)+power(deltaY,2));
    if(distance>300)
        {
        m_tracking = 1;
        }
    rantime = 50;
    }

else  //放完了
    {
    if(rantime>=30)
    {
    ranX = cos(random(360))*m_speed;
    ranY = sin(random(360))*m_speed;
    rantime = 0;
    }
    phy_position_x += ranX;
    phy_position_y += ranY;
    thisturnover = 1;
    rantime++;
    
    }
}
    


//什么时候踢雪糕




//什么时候翻滚
if(instance_exists(obj_ysera_magic_bullet))
{
var bullet = instance_find(obj_ysera_magic_bullet,0);
var avoidX = bullet.x - x;
var avoidY = bullet.y - y;
bulletdistancemax = 100;
bulletdistance = sqrt(power(avoidX,2)+power(avoidY,2));
if(bulletdistance <= bulletdistancemax && m_rollcd <= 0 &&!m_isRolling)
    {
        m_fired = false;
        m_isRolling = true;
    if(sprroll>-1)
        {
            m_fullDirection = random(360);
            sprite_index = sprroll;
        }
        image_index = 0;
        
        m_rollcount = 0;
        m_tracking = 1;
        m_isInSkill = false;
    }

}
//什么时候切换到远程模式
show_debug_message(m_rollcd);


//什么时候切换到大胆模式
