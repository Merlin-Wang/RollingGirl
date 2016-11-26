event_inherited();

m_playerid = 1;//暂时写在这里，当作主角
m_hp = 20;
m_name = "ysera";
m_speed = 8;

m_attachedHitbox = instance_create(x, y, obj_ysera_hitbox);
m_attachedHitbox.father = id;//自身判定

