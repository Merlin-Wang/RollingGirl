image_speed = 0.25  //调整动画速度

if(m_isAttacking == false && m_isInSkill == false)
{
if(keyboard_check(ord('A')))
{
    phy_position_x = phy_position_x - 8;
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    m_playerDirection = PlayerDirection.LEFT;
}
else if(keyboard_check(ord('D')))
{
    phy_position_x = phy_position_x + 8;
    sprite_index = spr_ysera_walk_side;    
    image_xscale = -1;
    m_playerDirection = PlayerDirection.RIGHT;
}
else if(keyboard_check(ord('W')))
{
    phy_position_y = phy_position_y - 8;
    sprite_index = spr_ysera_walk_back;    
    m_playerDirection = PlayerDirection.UP;
}
else if(keyboard_check(ord('S')))
{
    phy_position_y = phy_position_y + 8;
    sprite_index = spr_ysera_walk_front;
    m_playerDirection = PlayerDirection.DOWN;
}
else if(keyboard_check(ord('J'))){
  switch(m_playerDirection)
  {
  case PlayerDirection.UP:
    sprite_index = spr_ysera_attack_back;
    break;
  case PlayerDirection.DOWN:
    sprite_index = spr_ysera_attack_front;
    break;
  case PlayerDirection.LEFT:
    sprite_index = spr_ysera_attack_side;
    break;
  case PlayerDirection.RIGHT:
    sprite_index = spr_ysera_attack_side;
    break;
  }
  m_isAttacking = true;
  image_index = 0;
  m_fired = false;
}
else if(keyboard_check(ord('K'))){
    sprite_index = spr_ysera_skill;
    image_index = 0;
    m_isInSkill = true;
    m_fired = false;
}
else
{
    sprite_index = spr_ysera_idle;
}
}




if(sprite_index == spr_ysera_attack_side
|| sprite_index == spr_ysera_attack_front
|| sprite_index == spr_ysera_attack_back){
    if(image_index > 2 && m_fired == false){
         var magicBullet = instance_create(x, y, obj_ysera_magic_bullet);
         magicBullet.shooter = id;
        var deltaX = 0;
        var deltaY = 0;
        switch(m_playerDirection){
        case PlayerDirection.UP:
          magicBullet.m_speedY = -10;
          deltaY = -89;
          deltaX = 0;
          magicBullet.image_angle = 270;
          break;
        case PlayerDirection.DOWN:
          magicBullet.m_speedY = 10;
          magicBullet.image_angle = 90;
          deltaY = 7;
          deltaX = 0;
          break;
        case PlayerDirection.LEFT:
          magicBullet.m_speedX = -10;
          deltaX = -65;
          deltaY = -33;
          break;
        case PlayerDirection.RIGHT:
          magicBullet.m_speedX = 10;
          magicBullet.image_angle = 180;
          deltaX = 65;
          deltaY = -33;
          break;
        } 
        magicBullet.phy_position_x += deltaX;
        magicBullet.phy_position_y += deltaY;
        m_fired = true;
    }
}

if(sprite_index == spr_ysera_skill){
    if(image_index > 2 && m_fired == false){
        m_skill=instance_create(x, y, obj_ysera_skill_effect);
        m_skill.shooter = id;
        m_fired = true
    }
}

