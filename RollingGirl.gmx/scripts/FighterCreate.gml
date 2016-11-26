phy_fixed_rotation = true;//不旋转


m_hp = 1;
m_isDead = false;
m_playerid = 0;

enum FighterDirection{
    UP,
    DOWN,
    LEFT,
    RIGHT,
    UPRIGHT,
    DOWNRIGHT,
    UPLEFT,
    DOWNLEFT
}
m_playerDirection = FighterDirection.DOWN; //给键盘用的八方向
m_fullDirection = 0;  //全方向

m_isAttacking = false;
m_isInSkill = false;
m_fired = false;
var deltaX = 0;
var deltaY = 0;
