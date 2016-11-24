image_speed = 0.25;

if(m_isDead)  //死亡则退出
    return 0;
    
if(m_hp == 0){   //死了播死亡动画
    m_isDead = true;
    sprite_index = spr_devil_die;
    return 0;
}

if(m_playerid>0){//人手操
if(!m_isAttacking && !m_isInSkill){
    if(keyboard_check(ord('J'))){
      m_isAttacking = true;
      switch(FighterDirection){
      case FighterDirection.UP:
        sprite_index = spr_devil_attack;
        break;
      case FighterDirection.DOWN:
        sprite_index = spr_devil_attack;
        break;
      case FighterDirection.LEFT:
        sprite_index = spr_devil_attack;
        break;
      case FighterDirection.RIGHT:
        sprite_index = spr_devil_attack;
        break;
      }  
      image_index = 0;
      m_fired = false;
    }
    else if(keyboard_check(ord('K'))){
        m_isInSkill = true;
        sprite_index = noone;
        image_index = 0;
        m_fired = false;
    }
    else if(keyboard_check(ord('A'))){
        phy_position_x = phy_position_x - 4;
        sprite_index = spr_devil_walk;
        image_xscale = 1;
        m_playerDirection = PlayerDirection.LEFT;
    }
    else if(keyboard_check(ord('D'))){
        phy_position_x = phy_position_x + 4;
        sprite_index = spr_devil_walk;    
        image_xscale = -1;
        m_playerDirection = FighterDirection.RIGHT;
    }
    else if(keyboard_check(ord('W'))){
        phy_position_y = phy_position_y - 4;
        sprite_index = spr_devil_walk;    
        m_playerDirection = FighterDirection.UP;
    }
    else if(keyboard_check(ord('S'))){
        phy_position_y = phy_position_y + 4;
        sprite_index = spr_devil_walk;
        m_playerDirection = FighterDirection.DOWN;
    }
    else{
        sprite_index = spr_devil_idle;
    }
}

if(sprite_index == spr_devil_attack 
|| sprite_index == spr_devil_attack
|| sprite_index == spr_devil_attack){
    if(image_index > 2 && m_fired == false){ 
        var magicBullet = instance_create(x, y, obj_ysera_magic_bullet);
        var deltaX = 0;
        var deltaY = 0;
        switch(m_playerDirection){
        case FighterDirection.UP:
          magicBullet.m_speedY = -10;
          magicBullet.image_angle = 270;
          deltaY = -89;
          break;
        case FighterDirection.DOWN:
          magicBullet.m_speedY = 10;
          magicBullet.image_angle = 90;
          deltaY = 7;
          break;
        case FighterDirection.LEFT:
          magicBullet.m_speedX = -10;
          deltaX = -65;
          deltaY = -33;
          break;
        case FighterDirection.RIGHT:
          magicBullet.m_speedX = 10;
          magicBullet.image_angle = 180;
          deltaX = 65;
          deltaY = -33;
          break;
        } 
        magicBullet.x += deltaX;
        magicBullet.y += deltaY;
        m_fired = true;
    }
}

if(sprite_index == spr_ysera_skill){
    if(image_index > 2 && m_fired == false){
        instance_create(x, y, obj_ysera_skill_effect);
        m_fired = true
    }
}
}

else  //状态机代码
{
if(m_devilState == DevilState.DEVIL_FOLLOW){
    DevilUpdateFollow();
}
else if(m_devilState == DevilState.DEVIL_DASH){
    DevilUpdateDash();
}
else if(m_devilState == DevilState.DEVIL_ATTACK){
    DevilUpdateAttack();
}
else if(m_devilState == DevilState.DEVIL_RETREAT){
    DevilUpdateRetreat();
}    
}

