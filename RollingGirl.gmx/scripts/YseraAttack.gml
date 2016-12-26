if(m_isAttacking && m_fired == false){
    if(image_index >= 1 && m_arrowStatus == ArrowStatus.InHand){
        if(keyboard_check(ord('J'))||gamepad_button_check(global.slot,gp_face1))
            {image_index = 1;}
        if(image_index > 2)
        {
        if(gamepad_is_connected(global.slot))
        {
        m_fullDirection = point_direction(0, 0, gamepad_axis_value(global.slot, gp_axislh), gamepad_axis_value(global.slot, gp_axislv));
        }
        if(keyboard_check(ord('A')))
        {
        m_playerDirection = FighterDirection.LEFT;
        m_fullDirection = 180;
            if(keyboard_check(ord('W')))
            {
            m_playerDirection = FighterDirection.UPLEFT;
            m_fullDirection = 135;
            }
            if(keyboard_check(ord('S')))
            {
            m_playerDirection = FighterDirection.DOWNLEFT;
            m_fullDirection = 225;
            }
        }
        else if(keyboard_check(ord('D')))
        {
         m_playerDirection = FighterDirection.RIGHT;
         m_fullDirection = 0;
            if(keyboard_check(ord('W')))
            {
            m_playerDirection = FighterDirection.UPRIGHT;
            m_fullDirection = 45;
            }
            if(keyboard_check(ord('S')))
            {
            m_playerDirection = FighterDirection.DOWNRIGHT;
            m_fullDirection = 315;
            }
        }
        else if(keyboard_check(ord('W')))
        {
        m_playerDirection = FighterDirection.UP;
        m_fullDirection = 90;
        }
        else if(keyboard_check(ord('S')))
        {
        m_playerDirection = FighterDirection.DOWN;
        m_fullDirection = 270;    
        }
        
        if(m_fullDirection > 45 && m_fullDirection <135)
         {
          m_playerDirection = FighterDirection.UP;
         }
        else if(m_fullDirection > 135 && m_fullDirection <225)
         {
         m_playerDirection = FighterDirection.LEFT;
         }
        else if(m_fullDirection > 225 && m_fullDirection <315)
         {
         m_playerDirection = FighterDirection.DOWN;
         }
        else
         {
         m_playerDirection = FighterDirection.RIGHT;
         }
        
        var magicBullet = instance_create(x, y, obj_ysera_magic_bullet);
        magicBullet.shooter = id;
        magicBullet.originaldirection = m_fullDirection;
        
        var deltaX = 0;
        var deltaY = 0;
        switch(m_playerDirection){
        case FighterDirection.UP:
        {
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          deltaY = -89;
          deltaX = 0;
          magicBullet.phy_rotation = 90;
          break;
        }
        case FighterDirection.UPRIGHT:
        {
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          deltaY = -80;
          deltaX = 25;
          magicBullet.phy_rotation = 90;
          break;
        }
        case FighterDirection.UPLEFT:
        {
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          deltaY = -80;
          deltaX = -25;
          magicBullet.phy_rotation = 90;
          break;  
        }
        case FighterDirection.DOWN:
        {
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          magicBullet.phy_rotation = 270;
          deltaY = 7;
          deltaX = -5;
          break;
        }
        case FighterDirection.DOWNRIGHT:
        {
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          magicBullet.phy_rotation = 270;
          deltaY = 9;
          deltaX = 0;
          break;
        }
        case FighterDirection.DOWNLEFT:
        {
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          magicBullet.phy_rotation = 270;
          deltaY = 7;
          deltaX = 0;
          break;
        }
        case FighterDirection.LEFT:
        {
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          deltaX = -65;
          deltaY = -33;
          break;
        }
        case FighterDirection.RIGHT:
        {
          magicBullet.m_speedX = lengthdir_x(50,m_fullDirection)/2;
          magicBullet.m_speedY = lengthdir_y(50,m_fullDirection)/2;
          magicBullet.phy_rotation = 180;
          deltaX = 65;
          deltaY = -33;
          break;
        }
        default:
         {
          break;
         }
        } 
        magicBullet.phy_position_x += deltaX;
        magicBullet.phy_position_y += deltaY;
        m_fired = true;
    }
   }
}
if(m_arrowStatus != ArrowStatus.InHand)
    {
    if(keyboard_check(ord('J'))||gamepad_button_check(global.slot,gp_face1))
    image_index = 0;
    }
