if(m_isAttacking && m_fired == false){
    if(image_index > 2 && m_arrowStatus == ArrowStatus.InHand){
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
        m_arrowStatus = ArrowStatus.FlyingTo;
    }
}
