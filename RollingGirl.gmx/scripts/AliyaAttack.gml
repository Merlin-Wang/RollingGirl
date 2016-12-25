if(m_isAttacking&&m_xuegaonumnow<m_xuegaonummax && m_fired == false){
    if(image_index > 2 && m_fired == false){
       deltax = lengthdir_x(50,m_fullDirection)/2;
       deltay = lengthdir_y(50,m_fullDirection)/2;
       var kickarea = instance_create(x+deltax,y+deltay,obj_aliya_kick_area);
       kickarea.shooter = id;
       m_fired = true;
       
    }
}
