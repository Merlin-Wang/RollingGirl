if(sprite_index == spr_aliya_skill &&image_index > 2 && m_fired == false&&m_xuegaonumnow<m_xuegaonummax){
       xuegao = instance_create(x,y-20,obj_aliya_xuegao);
       xuegao.shooter = id;
       m_xuegaonumnow++;
       m_isInSkill = false;
       m_fired = true;
       
       
       }
