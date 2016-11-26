if(sprite_index == spr_ysera_skill){
    if(image_index > 2 && m_fired == false){
        m_skill=instance_create(x, y, obj_ysera_skill_effect);
        m_skill.shooter = id;
        m_fired = true
    }
}
