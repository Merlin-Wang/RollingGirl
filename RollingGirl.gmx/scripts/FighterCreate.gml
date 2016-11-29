phy_fixed_rotation = true;//不旋转


m_hp = 1;
m_isDead = false;
m_playerid = 0;
m_rollingdistance = 10;
m_rollspeed = 15;
m_rollstepmax = 10;

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
m_fullDirection = 270;  //全方向

m_isAttacking = false;
m_isInSkill = false;
m_isInUltimate = false;
m_isRolling = false;
m_fired = false;
var deltaX = 0;
var deltaY = 0;
