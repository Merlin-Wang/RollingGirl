if(m_isAttacking == false && m_isInSkill == false && m_isInUltimate == false && m_isRolling == false)
{
//m_speed2 = m_speed/1.414;
walkspeed = m_speed;
if(keyboard_check(ord('A')))
{
    m_playerDirection = FighterDirection.LEFT;
    m_fullDirection = 180;
    if(keyboard_check(ord('W')))
    {
    //斜向上走
    walkspeed = walkspeed/1.414
    phy_position_y = phy_position_y - walkspeed;
    
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    m_playerDirection = FighterDirection.UPLEFT;
    m_fullDirection = 135;
    if(keyboard_check_pressed(vk_space)&&m_rollcd <= 0){
        sprite_index = spr_ysera_roll;
        image_index = 0;
        m_isRolling = true;
        m_fired = false;
        m_rollcount = 0;
        }
    }
    if(keyboard_check(ord('S')))
    {
    //斜向下走
    walkspeed = walkspeed/1.414
    phy_position_y = phy_position_y + walkspeed;
    
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    m_playerDirection = FighterDirection.DOWNLEFT;
    m_fullDirection = 225;
    if(keyboard_check_pressed(vk_space)&&m_rollcd <= 0){
        sprite_index = spr_ysera_roll;
        image_index = 0;
        m_isRolling = true;
        m_fired = false;
        m_rollcount = 0;
        }
    }
    phy_position_x = phy_position_x - walkspeed;
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    if(keyboard_check_pressed(vk_space)&&m_rollcd <= 0){
        sprite_index = spr_ysera_roll;
        image_index = 0;
        m_isRolling = true;
        m_fired = false;
        m_rollcount = 0;
        }
}
else if(keyboard_check(ord('D')))
{
    m_playerDirection = FighterDirection.RIGHT;
    m_fullDirection = 0;
    if(keyboard_check(ord('W')))
    {
    //斜向上走
    walkspeed = walkspeed/1.414
    phy_position_y = phy_position_y - walkspeed;
    
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    m_playerDirection = FighterDirection.UPRIGHT;
    m_fullDirection = 45;
    
    if(keyboard_check_pressed(vk_space)&&m_rollcd <= 0){
        sprite_index = spr_ysera_roll;
        image_index = 0;
        m_isRolling = true;
        m_fired = false;
        m_rollcount = 0;
        }
    }
    if(keyboard_check(ord('S')))
    {
    //斜向下走
    walkspeed = walkspeed/1.414
    phy_position_y = phy_position_y + walkspeed;
    
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    m_playerDirection = FighterDirection.DOWNRIGHT;
    m_fullDirection = 315;
    if(keyboard_check_pressed(vk_space)&&m_rollcd <= 0){
        sprite_index = spr_ysera_roll;
        image_index = 0;
        m_isRolling = true;
        m_fired = false;
        m_rollcount = 0;
        }
    }
    phy_position_x = phy_position_x + walkspeed;
    sprite_index = spr_ysera_walk_side;    
    image_xscale = -1;
    if(keyboard_check_pressed(vk_space)&&m_rollcd <= 0){
        sprite_index = spr_ysera_roll;
        image_index = 0;
        m_isRolling = true;
        m_fired = false;
        m_rollcount = 0;
        }
}
else if(keyboard_check(ord('W')))
{
    phy_position_y = phy_position_y - m_speed;
    sprite_index = spr_ysera_walk_back;    
    m_playerDirection = FighterDirection.UP;
    m_fullDirection = 90;
    if(keyboard_check_pressed(vk_space)&&m_rollcd <= 0){
        sprite_index = spr_ysera_roll;
        image_index = 0;
        m_isRolling = true;
        m_fired = false;
        m_rollcount = 0;
        }
}
else if(keyboard_check(ord('S')))
{
    phy_position_y = phy_position_y + m_speed;
    sprite_index = spr_ysera_walk_front;
    m_playerDirection = FighterDirection.DOWN;
    m_fullDirection = 270;
    if(keyboard_check_pressed(vk_space)&&m_rollcd <= 0){
        sprite_index = spr_ysera_roll;
        image_index = 0;
        m_isRolling = true;
        m_fired = false;
        m_rollcount = 0;
        }
}
else if(keyboard_check(ord('J'))&&m_attackcd <= 0){
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
else if(keyboard_check(ord('K'))&&m_skillcd <= 0){
    sprite_index = spr_ysera_skill;
    image_index = 0;
    m_isInSkill = true;
    m_fired = false;
}
else if(keyboard_check(ord('L'))&&m_ultimatecd <= 0){
    sprite_index = spr_ysera_ultimate;
    image_index = 0;
    m_isInUltimate = true;
    m_fired = false;
}
else if(keyboard_check_pressed(vk_space)&&m_rollcd <= 0){
    sprite_index = spr_ysera_roll;
    image_index = 0;
    m_isRolling = true;
    m_fired = false;
}
else
{
    sprite_index = spr_ysera_idle;
}
}
