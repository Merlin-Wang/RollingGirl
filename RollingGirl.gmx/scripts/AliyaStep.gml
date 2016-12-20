image_speed = 0.25  //调整动画速度

event_inherited();

if(m_isDead)  //死亡则退出
    return 0;
    
if(m_hp <= 0){   //死了播死亡动画
    m_isDead = true;
    sprite_index = spr_devil_die;
    return 0;
}

if(m_playerid>0){//人手操
    if(m_beingarrow==0)
    {
    FighterStepKeyboard();
    FighterStepGamepad();
    }
    else
    {
    var ultbullet = instance_find(obj_ysera_ultimate_bullet,0);
    if point_distance(x, y, ultbullet.x, ultbullet.y) > 5
        {
         move_towards_point(ultbullet.x, ultbullet.y, 20);
         }
    else speed = 0;
    
    }
}

else
{
//状态机代码

}


//攻击
AliyaAttack();

//技能
AliyaSkill();

//大招
AliyaUltimate();

//翻滚
AliyaRoll();

