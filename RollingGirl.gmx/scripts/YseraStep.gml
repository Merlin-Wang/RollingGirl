image_speed = 0.25  //调整动画速度

if(m_isDead)  //死亡则退出
    return 0;
    
if(m_hp == 0){   //死了播死亡动画
    m_isDead = true;
    sprite_index = spr_devil_die;
    return 0;
}

if(m_playerid>0){//人手操
FighterStepKeyboard();
FighterStepGamepad();
}

else
{
//状态机代码

}


//攻击
YseraAttack();

//技能
YseraSkill();

//大招
YsearUltimate();

