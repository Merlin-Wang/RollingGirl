image_speed = 0.25  //调整动画速度

if(m_isDead)  //死亡则退出
    return 0;
    
if(m_hp == 0){   //死了播死亡动画
    m_isDead = true;
    sprite_index = spr_devil_die;
    return 0;
}

if(m_playerid>0)//人手操
{

if(m_isAttacking == false && m_isInSkill == false)
{
if(keyboard_check(ord('A')))
{
    phy_position_x = phy_position_x - 8;
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    m_playerDirection = FighterDirection.LEFT;
}
else if(keyboard_check(ord('D')))
{
    phy_position_x = phy_position_x + 8;
    sprite_index = spr_ysera_walk_side;    
    image_xscale = -1;
    m_playerDirection = FighterDirection.RIGHT;
}
else if(keyboard_check(ord('W')))
{
    phy_position_y = phy_position_y - 8;
    sprite_index = spr_ysera_walk_back;    
    m_playerDirection = FighterDirection.UP;
}
else if(keyboard_check(ord('S')))
{
    phy_position_y = phy_position_y + 8;
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
else
{
    sprite_index = spr_ysera_idle;
}
}
}

else
{
//状态机代码

}


//技能1
if(sprite_index == spr_ysera_attack_side
|| sprite_index == spr_ysera_attack_front
|| sprite_index == spr_ysera_attack_back){
    if(image_index > 2 && m_fired == false){
         var magicBullet = instance_create(x, y, obj_ysera_magic_bullet);
         magicBullet.shooter = id;
        var deltaX = 0;
        var deltaY = 0;
        switch(m_playerDirection){
        case FighterDirection.UP:
          magicBullet.m_speedY = -10;
          deltaY = -89;
          deltaX = 0;
          magicBullet.image_angle = 270;
          break;
        case FighterDirection.DOWN:
          magicBullet.m_speedY = 10;
          magicBullet.image_angle = 90;
          deltaY = 7;
          deltaX = 0;
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
        magicBullet.phy_position_x += deltaX;
        magicBullet.phy_position_y += deltaY;
        m_fired = true;
    }
}
//技能2
if(sprite_index == spr_ysera_skill){
    if(image_index > 2 && m_fired == false){
        m_skill=instance_create(x, y, obj_ysera_skill_effect);
        m_skill.shooter = id;
        m_fired = true
    }
}

