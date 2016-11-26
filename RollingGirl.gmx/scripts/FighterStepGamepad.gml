var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
   {
   if gamepad_is_connected(i)
      {
      slot = i;
      }
   }
if(gamepad_is_connected(slot)){
if(m_isAttacking == false && m_isInSkill == false)
{
//m_speed2 = m_speed/1.414;
walkspeed = m_speed;
direction = point_direction(0, 0, gamepad_axis_value(slot, gp_axislh), gamepad_axis_value(slot, gp_axislv));
hspeed = lengthdir_x(gamepad_axis_value(slot, gp_axislh), direction) * 5;
vspeed = lengthdir_y(gamepad_axis_value(slot, gp_axislv), direction) * 5;

if(gamepad_button_check(slot,gp_face1)){
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
else if(gamepad_button_check(slot,gp_face3)){
    sprite_index = spr_ysera_skill;
    image_index = 0;
    m_isInSkill = true;
    m_fired = false;
}
else if(gamepad_button_check(slot,gp_face4)){
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
}
