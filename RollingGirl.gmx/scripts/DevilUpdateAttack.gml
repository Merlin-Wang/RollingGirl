var player = instance_find(obj_ysera,0);
if(sprite_index == spr_devil_attack){
    if(x < player.x){
    var devilBullet = instance_create(x+30, y-30, obj_devil_attack_area);}
    else
    {var devilBullet = instance_create(x-30, y-30, obj_devil_attack_area);}
    devilBullet.shooter=id;
}
if(m_isAttacking == false)
{
    m_devilState = DevilState.DEVIL_RETREAT;
    sprite_index = spr_devil_walk;
    m_retreatCurrentTime = 0;
}
