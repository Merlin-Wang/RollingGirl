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


m_attachedHitbox = instance_create(x, y, obj_aliya_hitbox);
m_attachedHitbox.father = id;//自身判定

//用于操作中的spr
sprroll = asset_get_index("spr_" + string(m_name) + "_roll");
spridle = asset_get_index("spr_" + string(m_name) + "_idle");
sprattack_front = asset_get_index("spr_" + string(m_name) + "_attack_front");
sprattack_back = asset_get_index("spr_" + string(m_name) + "_attack_back");
sprattack_side = asset_get_index("spr_" + string(m_name) + "_attack_side");
sprskill = asset_get_index("spr_" + string(m_name) + "_skill");
sprwalk_front = asset_get_index("spr_" + string(m_name) + "_walk_front");
sprwalk_back = asset_get_index("spr_" + string(m_name) + "_walk_back");
sprwalk_side = asset_get_index("spr_" + string(m_name) + "_walk_side");
sprultimate = asset_get_index("spr_" + string(m_name) + "_ultimate");
sprhitbox = asset_get_index("obj_" + string(m_name) + "_hitbox");

