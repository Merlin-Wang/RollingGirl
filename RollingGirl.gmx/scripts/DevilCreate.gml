phy_fixed_rotation = 1;


m_isAttacking = false;
m_isInSkill = false;
m_fired = false;
var deltaX = 0;
var deltaY = 0;

m_attachedHitbox = instance_create(x, y, obj_devil_hitbox);
m_attachedHitbox.m_attachedParent = id;//创建碰撞盒

m_hp = 1;
m_isDead = false;

enum DevilState{
    DEVIL_FOLLOW,    //追踪
    DEVIL_DASH,    //冲刺
    DEVIL_ATTACK,    //攻击
    DEVIL_RETREAT    //撤退
}
m_devilState = DevilState.DEVIL_FOLLOW;  

m_dashDistance = 200;
//用于定义冲刺至玩家角色两侧的距离，这个距离应当与恶魔行者的攻击动画匹配。若玩家角色保持静止不动，那么恶魔行者冲刺到这里时应当正好能够攻击到她
m_dashDelta = 40;
//冲刺的终点目标
m_dashTargetX = 0;
m_dashTargetY = 0;
m_dashSpeed = 10;

m_retreatCurrentTime = 0;
m_retreatTime = 2;    
m_retreatSpeed = 2; 

obj_character_bullet = obj_devil_attack_area; 
