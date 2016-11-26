if(m_isAttacking == false && m_isInSkill == false)
{
if(keyboard_check(ord('A')))
{
    if(keyboard_check(ord('W')))
    {
    //斜左上走
    
    }
    if(keyboard_check(ord('S')))
    {
    //斜向下走
    
    }
    phy_position_x = phy_position_x - m_speed;
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    m_playerDirection = FighterDirection.LEFT;
}
else if(keyboard_check(ord('D')))
{
    phy_position_x = phy_position_x + m_speed;
    sprite_index = spr_ysera_walk_side;    
    image_xscale = -1;
    m_playerDirection = FighterDirection.RIGHT;
}
else if(keyboard_check(ord('W')))
{
    phy_position_y = phy_position_y - m_speed;
    sprite_index = spr_ysera_walk_back;    
    m_playerDirection = FighterDirection.UP;
}
else if(keyboard_check(ord('S')))
{
    phy_position_y = phy_position_y + m_speed;
    sprite_index = spr_ysera_walk_front;
    m_playerDirection = FighterDirection.DOWN;
}
else if(keyboard_check(ord('J'))){
  switch(m_playerDirection)
  {
  case FighterDirection.UP:
    sprite_index = spr_ysera_attack_back;
    break;
  case FighterDirection.DOWN:
    sprite_index = spr_ysera_attack_front;
    break;
  case FighterDirection.LEFT:
    sprite_index = spr_ysera_attack_side;
    break;
  case FighterDirection.RIGHT:
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
else if(keyboard_check(ord('L'))){
    sprite_index = spr_ysera_ultimate;
    image_index = 0;
    m_isInSkill = true;
    m_fired = false;
}

else
{
    sprite_index = spr_ysera_idle;
}
}
