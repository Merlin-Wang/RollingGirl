if(m_isDead){   //死后动画停住
    image_speed = 0;
    image_index = image_number - 1;
}

if(m_isAttacking && sprite_index == spr_devil_attack){
    m_isAttacking = false;
}


