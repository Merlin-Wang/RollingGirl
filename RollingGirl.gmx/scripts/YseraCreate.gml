event_inherited();
phy_fixed_rotation = 1;

enum PlayerDirection{
    UP,
    DOWN,
    LEFT,
    RIGHT
}
m_playerDirection = PlayerDirection.DOWN;

m_isAttacking = false;
m_isInSkill = false;
m_fired = false;
var deltaX = 0;
var deltaY = 0;


m_attachedHitbox = instance_create(x, y, obj_ysera_hitbox);
m_attachedHitbox.father = id;//创建碰撞盒
