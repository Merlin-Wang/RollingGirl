phy_fixed_rotation = true;//不旋转


m_hp = 1;
m_isDead = false;
m_playerid = 0;

enum FighterDirection{
    UP,
    DOWN,
    LEFT,
    RIGHT
}
m_playerDirection = FighterDirection.DOWN;

m_isAttacking = false;
m_isInSkill = false;
m_fired = false;
var deltaX = 0;
var deltaY = 0;
