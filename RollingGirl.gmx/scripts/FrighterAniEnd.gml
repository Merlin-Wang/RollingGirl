if(m_isDead){   //死后动画停住
    image_speed = 0;
    image_index = image_number - 1;
}

if(m_isAttacking && sprite_index == spr_ysera_attack_side
    || sprite_index == spr_ysera_attack_front
    || sprite_index == spr_ysera_attack_back){
    m_isAttacking = false;
    m_attackcd = m_attackcdmax;
}
if(m_isInSkill && sprite_index == spr_ysera_skill){
    m_isInSkill = false;
    m_skillcd = m_skillcdmax;
}
if(m_isInUltimate && sprite_index == spr_ysera_ultimate){
    m_isInUltimate = false;
    m_ultimatecd = m_ultimatecdmax;
}
if(m_isRolling && sprite_index == spr_ysera_roll){
    m_isRolling = false;
    m_rollcd = m_rollcdmax;
    m_attachedHitbox = instance_create(x, y, obj_ysera_hitbox);
    m_attachedHitbox.father = id;//恢复判定
    m_rollcount = 0;

}
