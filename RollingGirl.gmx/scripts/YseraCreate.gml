
event_inherited();

m_playerid = 0;//暂时写在这里，当作主角
m_id = 1;
m_hp = 1;
m_name = "ysera";
m_speedmax = 8;
m_speed = m_speedmax;
m_beingarrow = 0;
m_attackcdmax = 0;
m_skillcdmax = 0;
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

//用于特定spr控制
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

//读入台词
TextRead(); 
m_voice1 = ini_read_string(string(m_name), "StrVoice1", 0);
ini_close();

