if(instance_exists(father)){
    //show_debug_message(other.shooter.object_index);
    if(father.object_index!=other.shooter.object_index)
    {
        switch(other.effect)
        {
        case 1: //1代表伤害
        with(father){
        OnDamage();}
        break;
        }
    }
}
