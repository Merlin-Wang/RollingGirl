if(m_isDead){   //死后动画停住
    image_speed = 0;
    image_index = image_number - 1;
}

if(m_isAttacking && sprite_index == sprattack_side
    || sprite_index == sprattack_front
    || sprite_index == sprattack_back){
    m_isAttacking = false;
    m_attackcd = m_attackcdmax;
}
if(m_isInSkill && sprite_index == sprskill){
    m_isInSkill = false;
    m_skillcd = m_skillcdmax;
}
if(m_isInUltimate && sprite_index == sprultimate){
    m_isInUltimate = false;
    m_ultimatecd = m_ultimatecdmax;
}
if(m_isRolling && sprite_index == sprroll){
    m_isRolling = false;
    m_rollcd = m_rollcdmax;
    m_attachedHitbox = instance_create(x, y, sprhitbox);
    m_attachedHitbox.father = id;//恢复判定
    m_rollcount = 0;

}
