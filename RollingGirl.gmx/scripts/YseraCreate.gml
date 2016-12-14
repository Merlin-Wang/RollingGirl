event_inherited();

m_playerid = 1;//暂时写在这里，当作主角
m_hp = 20;
m_name = "ysera";
m_speed = 8;
m_beingarrow = 0;
m_attackcdmax = 0;
m_skillcdmax = 12;
m_rollcdmax = 5;
m_ultimatecdmax = 60;
m_arrowStatus = ArrowStatus.InHand;

enum ArrowStatus {
    InHand,
    FlyingTo,
    FlyingBack
};               //标记箭的当前状态
m_attachedHitbox = instance_create(x, y, obj_ysera_hitbox);
m_attachedHitbox.father = id;//自身判定




