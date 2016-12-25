if(m_isAttacking && m_fired == false){
    if(image_index > 2 && m_arrowStatus == ArrowStatus.InHand){
        var magicBullet = instance_create(x, y, obj_ysera_magic_bullet);
        magicBullet.shooter = id;
        magicBullet.originaldirection = m_fullDirection;
        var deltaX = 0;
        var deltaY = 0;
        switch(m_playerDirection){
        case FighterDirection.UP:
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          deltaY = -89;
          deltaX = 0;
          magicBullet.image_angle = 270;
          break;
        case FighterDirection.DOWN:
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          magicBullet.image_angle = 90;
          deltaY = 7;
          deltaX = 0;
          break;
        case FighterDirection.LEFT:
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          deltaX = -65;
          deltaY = -33;
          break;
        case FighterDirection.RIGHT:
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
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
if(m_arrowStatus != ArrowStatus.InHand)
    {
    if(keyboard_check(ord('J'))||gamepad_button_check(global.slot,gp_face1))
    image_index = 0;
    }
