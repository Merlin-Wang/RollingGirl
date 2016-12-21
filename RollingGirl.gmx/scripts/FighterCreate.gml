phy_fixed_rotation = true;//不旋转


m_hp = 1;
m_isDead = false;
m_playerid = 0;
m_rollingdistance = 10;
m_rollspeed = 15;
m_rollstepmax = 10;
m_rollcount = 0;
m_attackcd = 0;
m_skillcd = 0;
m_rollcd = 0;
m_ultimatecd = 0;//方便测试开头就能用
m_attackcdmax = 0;
m_skillcdmax = 12;
m_rollcdmax = 5;
m_ultimatecdmax = 60;


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

m_isAttacking = false;   //标记英雄是否在攻击
m_isInSkill = false;
m_isInUltimate = false;
m_isRolling = false;
m_fired = false;
var deltaX = 0;
var deltaY = 0;


