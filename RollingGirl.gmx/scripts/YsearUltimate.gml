if(sprite_index == spr_ysera_ultimate){
    if(image_index > 2 && m_fired == false && m_beingarrow = 0){
        var ultimatebullet = instance_create(x, y, obj_ysera_ultimate_bullet);
        ultimatebullet.shooter = id;
        var deltaX = 0;
        var deltaY = 0;
        /*switch(m_playerDirection){
        case FighterDirection.UP:
          deltaY = -89;
          deltaX = 0;
          ultimatebullet.image_angle = 270;
          break;
        case FighterDirection.DOWN:
          ultimatebullet.image_angle = 90;
          deltaY = 7;
          deltaX = 0;
          break;
        case FighterDirection.LEFT:
        ultimatebullet.image_angle = 0;
          deltaX = -65;
          deltaY = -33;
          break;
        case FighterDirection.RIGHT:
          ultimatebullet.image_angle = 180;
          deltaX = 65;
          deltaY = -33;
          break;dd
        } 
        ultimatebullet.phy_position_x += deltaX;
        ultimatebullet.phy_position_y += deltaY;
        */
        self.visible = false;
        //show_debug_message("隐形了！");
        m_fired = true;
        m_beingarrow = 1;
    }
}
