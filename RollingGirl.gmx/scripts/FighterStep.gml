if(m_isDead)  //死亡则退出
    return 0;
    
if(m_hp == 0){   //死了播死亡动画
   m_isDead = true;
    str = object_get_name(self.object_index);
    str1 = string_copy(str,5,string_length(str));
    str2 = "spr_"+str1+"_die";
    sprite_index = asset_get_index(str2);
    return 0;
}

