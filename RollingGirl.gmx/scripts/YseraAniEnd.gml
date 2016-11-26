if(m_isDead){   //死后动画停住
    image_speed = 0;
    image_index = image_number - 1;
}

if(m_isAttacking && sprite_index == spr_ysera_attack_side
    || sprite_index == spr_ysera_attack_front
    || sprite_index == spr_ysera_attack_back){
    m_isAttacking = false;
}
if(m_isInSkill && sprite_index == spr_ysera_skill){
    m_isInSkill = false;
}
if(m_isInUltimate && sprite_index == spr_ysera_ultimate){
    m_isInUltimate = false;
}
