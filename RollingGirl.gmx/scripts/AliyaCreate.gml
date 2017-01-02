event_inherited();

m_playerid = 0;//0代表AI操控
m_id = 2;
m_hp = 1;
m_name = "aliya";
m_speedmax = 8;
m_speed = m_speedmax;
m_beingarrow = 0;
m_attackcdmax = 0;
m_skillcdmax = 0;
m_rollcdmax = 5;
m_ultimatecdmax = 60;
m_xuegaonummax = 5;
m_xuegaonumnow = 0;

m_clever = 6;   //越高AI中越不容易犯错
enum AliyaState{   //设置状态机
    ALIYA_CARE,    //谨慎模式
    ALIYA_BOLD,    //大胆模式
    ALIYA_REMOTE,   //远程模式
    ALIYA_PERFORM
}
m_aliyastate = AliyaState.ALIYA_CARE;

m_attachedHitbox = instance_create(x, y, obj_aliya_hitbox);
m_passivearea1 = instance_create(x,y,obj_aliya_passive_area1);
m_passivearea2 = instance_create(x,y,obj_aliya_passive_area2);
m_attachedHitbox.father = id;//自身判定
m_passivearea1.shooter = id;
m_passivearea2.shooter = id;

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


//读入台词
TextRead(); 
m_voice1 = ini_read_string(string(m_name), "StrVoice1", 0);
ini_close();
