if(m_isAttacking&&m_xuegaonumnow<m_xuegaonummax && m_fired == false){
    if(image_index > 2 && m_fired == false){
       var xuegao = instance_create(x,y-20,obj_aliya_xuegao);
       xuegao.shooter = id;
       m_xuegaonumnow++;
       m_fired = true;
    }
}
