if(instance_exists(father)){
    //show_debug_message(other.shooter.object_index);
    if(father.object_index!=other.shooter.object_index)
    {
        with(father){
        OnDamage();}
    }
}
