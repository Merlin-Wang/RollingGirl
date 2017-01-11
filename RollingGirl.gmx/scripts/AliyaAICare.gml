//如何移动
if(m_isAttacking == false && m_isInSkill == false && m_isInUltimate == false && m_isRolling == false){
var player = instance_find(obj_ysera,0);

if(m_xuegaonumnow==0) //距离够近了就放雪糕
{
//show_debug_message(1);
var maxdistance = 170;
betweentimemax = 20;
betweentime = 0;
thisturnover = 0;
var deltaX = player.x - x;
var deltaY = player.y - y;
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
        {sprite_index = sprskill;
        lastx = x;
        lasty = y;
        tmpang = point_direction(lastx,lasty,player.x,player.y);
        tmpang = tmpang - 120;
        m_isInSkill = true;
        image_index = 0;
        m_fired = false;
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
    sprite_index = sprskill;
    m_isInSkill = true;
    image_index = 0;
    m_fired = false;
    lastx = x;
    lasty = y;
    tmpang = point_direction(lastx,lasty,player.x,player.y);
    tmpang = tmpang - 90;
    betweentime = 0;
    if((m_xuegaonummax-m_xuegaonumnow)==1)
        {
        targetxuegaox = x;
        targetxuegaoy = y;
        }
    }
    
    }

else  //放完了
    {
    
    
    
    thisturnover = 1;
    
    
    }
}
    


//什么时候踢雪糕




//什么时候翻滚



//什么时候切换到远程模式



//什么时候切换到大胆模式
