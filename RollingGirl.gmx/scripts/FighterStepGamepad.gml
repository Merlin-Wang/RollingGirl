var gp_num = gamepad_get_device_count();
global.slot = 0;
for (var i = 0; i < gp_num; i++;)
   {
   if gamepad_is_connected(i)
      {
      global.slot = i;
      }
   }
if(gamepad_is_connected(global.slot)){
if(m_isAttacking == false && m_isInSkill == false && m_isInUltimate == false)
{
if(abs(gamepad_axis_value(global.slot, gp_axislh))>0.1||abs(gamepad_axis_value(global.slot, gp_axislv))>0.1) //用0.1去掉扰动问题
{
m_fullDirection = point_direction(0, 0, gamepad_axis_value(global.slot, gp_axislh), gamepad_axis_value(global.slot, gp_axislv));
  //show_debug_message(m_fullDirection);

//这里先用了4方向的图做出了效果，等换了8方向的图这里要改
if(m_fullDirection > 45 && m_fullDirection <135)
    {
    sprite_index = spr_ysera_walk_back;
    m_playerDirection = FighterDirection.UP;
    }
else if(m_fullDirection > 135 && m_fullDirection <225)
    {
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    m_playerDirection = FighterDirection.LEFT;
    }
else if(m_fullDirection > 225 && m_fullDirection <315)
    {
    sprite_index = spr_ysera_walk_front;
    m_playerDirection = FighterDirection.DOWN;
    }
else
    {
    sprite_index = spr_ysera_walk_side;
    image_xscale = -1;
    m_playerDirection = FighterDirection.RIGHT;
    }
    
    deltaX = gamepad_axis_value(global.slot, gp_axislh)*m_speed;
    deltaY = gamepad_axis_value(global.slot, gp_axislv)*m_speed;
    phy_position_x += deltaX;
    phy_position_y += deltaY;
}


else if(gamepad_button_check(global.slot,gp_face1)){
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
else if(gamepad_button_check(global.slot,gp_face3)){
    sprite_index = spr_ysera_skill;
    image_index = 0;
    m_isInSkill = true;
    m_fired = false;
}
else if(gamepad_button_check(global.slot,gp_face4)){
    sprite_index = spr_ysera_ultimate;
    image_index = 0;
    m_isInUltimate = true;
    m_fired = false;
}

else
{
    sprite_index = spr_ysera_idle;
}
}
}
