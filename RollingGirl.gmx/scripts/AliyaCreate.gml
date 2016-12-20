event_inherited();

m_playerid = 0;//0代表AI操控
m_hp = 20;
m_name = "aliya";
m_speed = 8;
m_beingarrow = 0;
m_attackcdmax = 0;
m_skillcdmax = 12;
m_rollcdmax = 5;
m_ultimatecdmax = 60;
m_arrowStatus = ArrowStatus.InHand;


m_attachedHitbox = instance_create(x, y, obj_aliya_hitbox);
m_attachedHitbox.father = id;//自身判定




