###################################################
#20200319[终焉誓约][任务脚本]【雾海的危机】场景地图替换--模板替换(倪祖伟)
#by:倪祖伟
#date:2020-03-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-360696.aspx
###################################################
#注释部分
#DELETE FROM `gen_event` WHERE `id`>=3097020 AND `id`<=3097021;
#DELETE FROM `gen_event` WHERE `id`>=3099018 AND `id`<=3099021;
#DELETE FROM `gen_event` WHERE `id`>=3098018 AND `id`<=3098021;
#DELETE FROM `gen_event` WHERE `id`>=3096018 AND `id`<=3096021;
#DELETE FROM `gen_event` WHERE `id` in (3101011,3101018,3101019,3101020,3101021);
#DELETE FROM `gen_event` WHERE `id`>=3102018 AND `id`<=3102021;
#DELETE FROM `gen_event` WHERE `id`>=3105018 AND `id`<=3105021;
#DELETE FROM `gen_event` WHERE `id`>=3111018 AND `id`<=3111021;
#DELETE FROM `gen_event` WHERE `id` in (3115201,3115018,3115019,3115020,3115021);
#DELETE FROM `gen_event` WHERE `id`>=3104018 AND `id`<=3104021;
#DELETE FROM `gen_event` WHERE `id`>=3103018 AND `id`<=3103021;
#DELETE FROM `gen_event` WHERE `id`>=3113018 AND `id`<=3113021;
#DELETE FROM `gen_event` WHERE `id`>=3108017 AND `id`<=3108021;
#DELETE FROM `gen_event` WHERE `id`>=3110018 AND `id`<=3110021;
#DELETE FROM `gen_event` WHERE `id`>=3107018 AND `id`<=3107021;
#DELETE FROM `gen_event` WHERE `id`>=3106018 AND `id`<=3106021;
#DELETE FROM `gen_event` WHERE `id`>=3109017 AND `id`<=3109021;
#DELETE FROM `gen_event` WHERE `id`>=3116018 AND `id`<=3116021;
#DELETE FROM `gen_event` WHERE `id`>=3112018 AND `id`<=3112021;
#DELETE FROM `gen_event` WHERE `id`>=3114018 AND `id`<=3114021;
#DELETE FROM `gen_event` WHERE `id` in (3163001,3163002,3163003,3163004,3163005,3163011,3163012,3163013,3163018,3163019,3163020,3163021,3163201,3163202,3163203,3163204,3163205,3163301,3163302,3163303,3163304,
#3164001,3164002,3164003,3164004,3164005,3164011,3164012,3164013,3164018,3164019,3164020,3164021,3164201,3164202,3164203,3164204,3164205,3164301,3164302,3164303,3164304,
#3165001,3165002,3165003,3165004,3165005,3165011,3165012,3165013,3165018,3165019,3165020,3165021,3165201,3165202,3165203,3165204,3165205,3165301,3165302,3165303,3165304,
#3166001,3166002,3166003,3166004,3166005,3166011,3166012,3166013,3166018,3166019,3166020,3166021,3166201,3166202,3166203,3166204,3166205,3166301,3166302,3166303,3166304,
#3167001,3167002,3167003,3167004,3167005,3167011,3167012,3167013,3167018,3167019,3167020,3167021,3167201,3167202,3167203,3167204,3167205,3167301,3167302,3167303,3167304,
#3168001,3168002,3168003,3168004,3168005,3168011,3168012,3168013,3168018,3168019,3168020,3168021,3168201,3168202,3168203,3168204,3168205,3168301,3168302,3168303,3168304,
#3169001,3169002,3169003,3169004,3169005,3169011,3169012,3169013,3169018,3169019,3169020,3169021,3169201,3169202,3169203,3169204,3169205,3169301,3169302,3169303,3169304,
#3170001,3170002,3170003,3170004,3170005,3170011,3170012,3170013,3170018,3170019,3170020,3170021,3170201,3170202,3170203,3170204,3170205,3170301,3170302,3170303,3170304,
#3171001,3171002,3171003,3171004,3171005,3171011,3171012,3171013,3171018,3171019,3171020,3171021,3171201,3171202,3171203,3171204,3171205,3171301,3171302,3171303,3171304,
#3172001,3172002,3172003,3172004,3172005,3172011,3172012,3172013,3172018,3172019,3172020,3172021,3172201,3172202,3172203,3172204,3172205,3172301,3172302,3172303,3172304);
#DELETE FROM `game_map` WHERE `id`>=3163 AND `id`<=3172;
#DELETE FROM `valve` WHERE `id`=1141;
#DELETE FROM `npc_group` WHERE `id`=21021;
#DELETE FROM `npc_group` WHERE `id`>=21279 AND `id`<=21368;
#DELETE FROM `attribute` WHERE `id`>=1001701 AND `id`<=1001750;
#DELETE FROM `monster` WHERE `id`>=1001701 AND `id`<=1001750;
#DELETE FROM `monster_group` WHERE `id`>=200860 AND `id`<=200909;
#DELETE FROM `dungeon_level` WHERE `id` in (51,52,53,54,55,61,62,63,64,65);

#打开注释部分
DELETE FROM `gen_event` WHERE `id` in (3097001,3097002,3097006,3097007,3097012,3097014,3097015);
DELETE FROM `attribute` WHERE `id` in (1001247,1001248);
DELETE FROM `monster` WHERE `id` in (1001247,1001248);
DELETE FROM `monster_group` WHERE `id` in (200775,200776);
###################################################
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3097003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 150 WHERE `id`=3097004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3097005;
UPDATE `gen_event` SET `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3097013;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id`=3097016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -134.5 WHERE `id`=3097017;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3097008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3097009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3097010;
#第二层
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3099003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 150 WHERE `id`=3099004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3099005;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id`=3099009;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -134.5 WHERE `id`=3099010;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3099017;
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3099011;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3099012;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id`=3099013;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3099014;
UPDATE `gen_event` SET `position`='-9.2,0.01,-15', `rotation_y`=180, `scale`=1 WHERE `id`=3099001;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3099002;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3099006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3099007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3099008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3099015;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3099016;
#第三层
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3098003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3098004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3098005;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id`=3098016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3098017;
UPDATE `gen_event` SET `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3098011;
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3098001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3098002;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id`=3098014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3098015;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3098012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3098013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3098006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3098007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3098008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3098009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3098010;
#第四层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3096001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3096002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3096003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3096004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3096005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3096014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3096015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3096016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3096017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3096011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3096012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3096013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3096006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3096007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3096008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3096009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3096010;
#第五层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3101001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3101002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3101003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3101004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3101005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3101014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3101015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3101016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3101017;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3101012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3101013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3101006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3101007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3101008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3101009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3101010;
#第六层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3102006;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3102007;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3102008;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3102009;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3102010;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3102012;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3102013;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3102014;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3102015;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3102011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3102016;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3102017;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3102001;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3102002;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3102003;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3102004;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3102005;
#第七层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3105001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3105002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3105003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3105004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3105005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3105014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3105015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3105016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3105017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3105011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3105012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3105013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3105006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3105007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3105008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3105009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3105010;
#第八层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3111001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3111002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3111003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3111004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3111005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3111014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3111015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3111016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3111017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3111011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3111012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3111013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3111006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3111007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3111008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3111009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3111010;
#第九层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3115001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3115002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3115003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3115004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3115005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3115301;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3115302;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3115303;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3115304;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3115202;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3115203;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3115101;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3115102;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3115103;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3115104;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3115105;
#第十层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3104006;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3104007;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3104008;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3104009;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3104010;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3104012;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3104013;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3104014;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3104015;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3104011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3104016;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3104017;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3104001;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3104002;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3104003;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3104004;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3104005;
#第十一层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3103001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3103002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3103003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3103004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3103005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3103014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3103015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3103016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3103017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3103011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3103012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3103013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3103006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3103007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3103008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3103009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3103010;
#第十二层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3113001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3113002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3113003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3113004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3113005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3113014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3113015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3113016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3113017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3113011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3113012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3113013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3113006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3113007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3113008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3113009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3113010;
#第十三层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3108001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3108002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3108003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3108004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3108005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3108013;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3108014;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3108015;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3108016;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3108011;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3108012;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3108006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3108007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3108008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3108009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3108010;
#第十四层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3110001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3110002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3110003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3110004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3110005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3110014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3110015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3110016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3110017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3110011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3110012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3110013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3110006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3110007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3110008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3110009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3110010;
#第十五层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3107001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3107002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3107003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3107004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3107005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3107014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3107015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3107016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3107017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3107011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3107012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3107013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3107006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3107007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3107008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3107009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3107010;
#第十六层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3106001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3106002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3106003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3106004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3106005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3106014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3106015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3106016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3106017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3106011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3106012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3106013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3106006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3106007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3106008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3106009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3106010;
#第十七层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3109001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3109002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3109003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3109004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3109005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3109013;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3109014;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3109015;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3109016;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3109011;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3109012;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3109006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3109007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3109008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3109009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3109010;
#第十八层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3116001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3116002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3116003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3116004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3116005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3116301;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3116302;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3116303;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3116304;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3116201;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3116202;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3116203;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3116101;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3116102;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3116103;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3116104;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3116105;
#第十九层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3112001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3112002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3112003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3112004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3112005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3112014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3112015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3112016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3112017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3112011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3112012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3112013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3112006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3112007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3112008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3112009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3112010;
#第二十层
UPDATE `gen_event` SET `position`='-8.8000,0.08,-19.1', `rotation_y`= 180 WHERE `id`=3114001;
UPDATE `gen_event` SET `position`='9.79999,0.08,-20.1', `rotation_y`= 180 WHERE `id`=3114002;
UPDATE `gen_event` SET `position`='-9.7000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3114003;
UPDATE `gen_event` SET `position`='9.95000,0.08,2.931', `rotation_y`= 180 WHERE `id`=3114004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= 180 WHERE `id`=3114005;
UPDATE `gen_event` SET `position`='-20.800,0.08,-20.1', `rotation_y`= 90 WHERE `id` =3114014;
UPDATE `gen_event` SET `position`='22.4000,0.08,-22.3', `rotation_y`= -90 WHERE `id`=3114015;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id` =3114016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -90 WHERE `id`=3114017;
UPDATE `gen_event` SET `event_id`=1094, `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3114011;
UPDATE `gen_event` SET `event_id`=1094, `position`='-9.2,0.01,-15', `rotation_y`=180 WHERE `id`=3114012;
UPDATE `gen_event` SET `event_id`=1094, `position`='9.2,0.01,-15', `rotation_y`=180 WHERE `id` =3114013;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3114006;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3114007;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3114008;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3114009;
UPDATE `gen_event` SET `battle_scene`=76 WHERE `id`=3114010;

INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
('3097001','卫兵','3097','1','20636','0','1','0','0','0','0','0','-9.172,0.08,-23.69','0','1'),
('3097002','卫兵','3097','1','20637','0','1','0','0','0','0','0','10.555,0.08,-23.69','0','1'),
('3097014','典狱长','3097','1','21021','0','1','0','0','0','0','0','2.821,0.08,-29.58','0','1'),
('3097020','机关门','3097','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3097021','机关门','3097','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3099018','机关门','3099','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3099019','机关门','3099','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3099020','机关门','3099','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3099021','机关门','3099','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3098018','机关门','3098','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3098019','机关门','3098','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3098020','机关门','3098','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3098021','机关门','3098','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3096018','机关门','3096','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3096019','机关门','3096','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3096020','机关门','3096','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3096021','机关门','3096','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3101011','光墙','3101','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3101018','机关门','3101','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3101019','机关门','3101','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3101020','机关门','3101','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3101021','机关门','3101','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3102018','机关门','3102','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3102019','机关门','3102','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3102020','机关门','3102','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3102021','机关门','3102','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3105018','机关门','3105','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3105019','机关门','3105','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3105020','机关门','3105','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3105021','机关门','3105','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3111018','机关门','3111','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3111019','机关门','3111','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3111020','机关门','3111','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3111021','机关门','3111','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3115018','机关门','3115','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3115019','机关门','3115','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3115020','机关门','3115','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3115021','机关门','3115','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3115201','光墙','3115','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3104018','机关门','3104','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3104019','机关门','3104','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3104020','机关门','3104','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3104021','机关门','3104','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3103018','机关门','3103','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3103019','机关门','3103','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3103020','机关门','3103','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3103021','机关门','3103','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3113018','机关门','3113','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3113019','机关门','3113','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3113020','机关门','3113','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3113021','机关门','3113','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3108017','光墙','3108','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3108018','机关门','3108','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3108019','机关门','3108','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3108020','机关门','3108','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3108021','机关门','3108','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3110018','机关门','3110','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3110019','机关门','3110','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3110020','机关门','3110','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3110021','机关门','3110','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3107018','机关门','3107','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3107019','机关门','3107','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3107020','机关门','3107','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3107021','机关门','3107','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3106018','机关门','3106','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3106019','机关门','3106','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3106020','机关门','3106','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3106021','机关门','3106','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3109017','光墙','3109','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3109018','机关门','3109','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3109019','机关门','3109','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3109020','机关门','3109','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3109021','机关门','3109','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3116018','机关门','3116','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3116019','机关门','3116','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3116020','机关门','3116','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3116021','机关门','3116','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3112018','机关门','3112','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3112019','机关门','3112','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3112020','机关门','3112','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3112021','机关门','3112','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3114018','机关门','3114','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3114019','机关门','3114','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3114020','机关门','3114','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3114021','机关门','3114','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3163001','','3163','1','21279','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3163002','','3163','1','21280','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3163003','','3163','1','21281','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3163004','','3163','1','21282','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3163005','','3163','1','21283','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3163011','','3163','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3163012','','3163','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3163013','','3163','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3163018','','3163','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3163019','','3163','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3163020','','3163','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3163021','','3163','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3163201','','3163','2','200860','1','1','1','0','0','0','76','','0','1'),
('3163202','','3163','2','200861','2','1','1','0','0','0','76','','0','1'),
('3163203','','3163','2','200862','3','1','1','0','0','0','76','','0','1'),
('3163204','','3163','2','200863','4','1','1','0','0','0','76','','0','1'),
('3163205','','3163','2','200864','5','1','1','0','0','0','76','','0','1'),
('3163301','','3163','1','21284','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3163302','','3163','1','21285','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3163303','','3163','1','21286','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3163304','','3163','1','21287','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1'),
('3164001','','3164','1','21288','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3164002','','3164','1','21289','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3164003','','3164','1','21290','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3164004','','3164','1','21291','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3164005','','3164','1','21292','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3164011','','3164','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3164012','','3164','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3164013','','3164','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3164018','','3164','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3164019','','3164','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3164020','','3164','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3164021','','3164','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3164201','','3164','2','200865','1','1','1','0','0','0','76','','0','1'),
('3164202','','3164','2','200866','2','1','1','0','0','0','76','','0','1'),
('3164203','','3164','2','200867','3','1','1','0','0','0','76','','0','1'),
('3164204','','3164','2','200868','4','1','1','0','0','0','76','','0','1'),
('3164205','','3164','2','200869','5','1','1','0','0','0','76','','0','1'),
('3164301','','3164','1','21293','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3164302','','3164','1','21294','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3164303','','3164','1','21295','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3164304','','3164','1','21296','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1'),
('3165001','','3165','1','21297','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3165002','','3165','1','21298','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3165003','','3165','1','21299','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3165004','','3165','1','21300','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3165005','','3165','1','21301','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3165011','','3165','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3165012','','3165','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3165013','','3165','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3165018','','3165','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3165019','','3165','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3165020','','3165','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3165021','','3165','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3165201','','3165','2','200870','1','1','1','0','0','0','76','','0','1'),
('3165202','','3165','2','200871','2','1','1','0','0','0','76','','0','1'),
('3165203','','3165','2','200872','3','1','1','0','0','0','76','','0','1'),
('3165204','','3165','2','200873','4','1','1','0','0','0','76','','0','1'),
('3165205','','3165','2','200874','5','1','1','0','0','0','76','','0','1'),
('3165301','','3165','1','21302','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3165302','','3165','1','21303','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3165303','','3165','1','21304','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3165304','','3165','1','21305','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1'),
('3166001','','3166','1','21306','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3166002','','3166','1','21307','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3166003','','3166','1','21308','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3166004','','3166','1','21309','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3166005','','3166','1','21310','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3166011','','3166','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3166012','','3166','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3166013','','3166','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3166018','','3166','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3166019','','3166','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3166020','','3166','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3166021','','3166','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3166201','','3166','2','200875','1','1','1','0','0','0','76','','0','1'),
('3166202','','3166','2','200876','2','1','1','0','0','0','76','','0','1'),
('3166203','','3166','2','200877','3','1','1','0','0','0','76','','0','1'),
('3166204','','3166','2','200878','4','1','1','0','0','0','76','','0','1'),
('3166205','','3166','2','200879','5','1','1','0','0','0','76','','0','1'),
('3166301','','3166','1','21311','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3166302','','3166','1','21312','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3166303','','3166','1','21313','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3166304','','3166','1','21314','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1'),
('3167001','','3167','1','21315','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3167002','','3167','1','21316','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3167003','','3167','1','21317','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3167004','','3167','1','21318','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3167005','','3167','1','21319','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3167011','','3167','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3167012','','3167','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3167013','','3167','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3167018','','3167','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3167019','','3167','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3167020','','3167','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3167021','','3167','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3167201','','3167','2','200880','1','1','1','0','0','0','76','','0','1'),
('3167202','','3167','2','200881','2','1','1','0','0','0','76','','0','1'),
('3167203','','3167','2','200882','3','1','1','0','0','0','76','','0','1'),
('3167204','','3167','2','200883','4','1','1','0','0','0','76','','0','1'),
('3167205','','3167','2','200884','5','1','1','0','0','0','76','','0','1'),
('3167301','','3167','1','21320','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3167302','','3167','1','21321','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3167303','','3167','1','21322','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3167304','','3167','1','21323','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1'),
('3168001','','3168','1','21324','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3168002','','3168','1','21325','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3168003','','3168','1','21326','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3168004','','3168','1','21327','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3168005','','3168','1','21328','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3168011','','3168','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3168012','','3168','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3168013','','3168','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3168018','','3168','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3168019','','3168','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3168020','','3168','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3168021','','3168','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3168201','','3168','2','200885','1','1','1','0','0','0','76','','0','1'),
('3168202','','3168','2','200886','2','1','1','0','0','0','76','','0','1'),
('3168203','','3168','2','200887','3','1','1','0','0','0','76','','0','1'),
('3168204','','3168','2','200888','4','1','1','0','0','0','76','','0','1'),
('3168205','','3168','2','200889','5','1','1','0','0','0','76','','0','1'),
('3168301','','3168','1','21329','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3168302','','3168','1','21330','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3168303','','3168','1','21331','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3168304','','3168','1','21332','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1'),
('3169001','','3169','1','21333','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3169002','','3169','1','21334','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3169003','','3169','1','21335','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3169004','','3169','1','21336','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3169005','','3169','1','21337','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3169011','','3169','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3169012','','3169','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3169013','','3169','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3169018','','3169','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3169019','','3169','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3169020','','3169','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3169021','','3169','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3169201','','3169','2','200890','1','1','1','0','0','0','76','','0','1'),
('3169202','','3169','2','200891','2','1','1','0','0','0','76','','0','1'),
('3169203','','3169','2','200892','3','1','1','0','0','0','76','','0','1'),
('3169204','','3169','2','200893','4','1','1','0','0','0','76','','0','1'),
('3169205','','3169','2','200894','5','1','1','0','0','0','76','','0','1'),
('3169301','','3169','1','21338','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3169302','','3169','1','21339','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3169303','','3169','1','21340','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3169304','','3169','1','21341','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1'),
('3170001','','3170','1','21342','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3170002','','3170','1','21343','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3170003','','3170','1','21344','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3170004','','3170','1','21345','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3170005','','3170','1','21346','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3170011','','3170','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3170012','','3170','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3170013','','3170','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3170018','','3170','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3170019','','3170','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3170020','','3170','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3170021','','3170','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3170201','','3170','2','200895','1','1','1','0','0','0','76','','0','1'),
('3170202','','3170','2','200896','2','1','1','0','0','0','76','','0','1'),
('3170203','','3170','2','200897','3','1','1','0','0','0','76','','0','1'),
('3170204','','3170','2','200898','4','1','1','0','0','0','76','','0','1'),
('3170205','','3170','2','200899','5','1','1','0','0','0','76','','0','1'),
('3170301','','3170','1','21347','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3170302','','3170','1','21348','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3170303','','3170','1','21349','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3170304','','3170','1','21350','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1'),
('3171001','','3171','1','21351','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3171002','','3171','1','21352','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3171003','','3171','1','21353','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3171004','','3171','1','21354','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3171005','','3171','1','21355','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3171011','','3171','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3171012','','3171','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3171013','','3171','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3171018','','3171','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3171019','','3171','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3171020','','3171','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3171021','','3171','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3171201','','3171','2','200900','1','1','1','0','0','0','76','','0','1'),
('3171202','','3171','2','200901','2','1','1','0','0','0','76','','0','1'),
('3171203','','3171','2','200902','3','1','1','0','0','0','76','','0','1'),
('3171204','','3171','2','200903','4','1','1','0','0','0','76','','0','1'),
('3171205','','3171','2','200904','5','1','1','0','0','0','76','','0','1'),
('3171301','','3171','1','21356','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3171302','','3171','1','21357','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3171303','','3171','1','21358','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3171304','','3171','1','21359','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1'),
('3172001','','3172','1','21360','0','1','0','0','0','0','0','-8.8000,0.08,-19.1','180','1'),
('3172002','','3172','1','21361','0','1','0','0','0','0','0','9.79999,0.08,-20.1','180','1'),
('3172003','','3172','1','21362','0','1','0','0','0','0','0','-9.7000,0.08,2.931','180','1'),
('3172004','','3172','1','21363','0','1','0','0','0','0','0','9.95000,0.08,2.931','180','1'),
('3172005','','3172','1','21364','0','1','0','0','0','0','0','-0.3200,2.22,35.14','180','1'),
('3172011','','3172','4','1094','0','1','0','0','0','0','0','0.27871,0.01,12.15','180','1'),
('3172012','','3172','4','1094','0','1','0','0','0','0','0','-9.2,0.01,-15','180','1'),
('3172013','','3172','4','1094','0','1','0','0','0','0','0','9.2,0.01,-15','180','1'),
('3172018','','3172','4','1141','0','1','0','0','0','0','0','-14.1,0,-20.5','90','1'),
('3172019','','3172','4','1141','0','1','0','0','0','0','0','13.58,0,-20.5','90','1'),
('3172020','','3172','4','1141','0','1','0','0','0','0','0','-13.93,0,2.07','90','1'),
('3172021','','3172','4','1141','0','1','0','0','0','0','0','14.28,0,1.901','90','1'),
('3172201','','3172','2','200905','1','1','1','0','0','0','76','','0','1'),
('3172202','','3172','2','200906','2','1','1','0','0','0','76','','0','1'),
('3172203','','3172','2','200907','3','1','1','0','0','0','76','','0','1'),
('3172204','','3172','2','200908','4','1','1','0','0','0','76','','0','1'),
('3172205','','3172','2','200909','5','1','1','0','0','0','76','','0','1'),
('3172301','','3172','1','21365','0','1','0','0','0','0','0','-20.800,0.08,-20.1','90','1'),
('3172302','','3172','1','21366','0','1','0','0','0','0','0','22.4000,0.08,-22.3','-90','1'),
('3172303','','3172','1','21367','0','1','0','0','0','0','0','-20.960,0.08,5.391','90','1'),
('3172304','','3172','1','21368','0','1','0','0','0','0','0','21.6500,0.08,4.101','-90','1');


INSERT INTO `valve` (`id`, `valve_status`, `type`, `data1`, `data2`) VALUES 
(1141, 0, 1, 0, 0);

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(21021, '典狱长', 1),
(21279, '荒漠异蝎', 1),
(21280, '雾夜女巫', 1),
(21281, '幽冥鬼煞', 1),
(21282, '魅影幻像', 1),
(21283, '极渊领主', 1),
(21284, '荒漠异蝎', 1),
(21285, '雾夜女巫', 1),
(21286, '幽冥鬼煞', 1),
(21287, '魅影幻像', 1),
(21288, '荒漠异蝎', 1),
(21289, '雾夜女巫', 1),
(21290, '幽冥鬼煞', 1),
(21291, '魅影幻像', 1),
(21292, '极渊领主', 1),
(21293, '荒漠异蝎', 1),
(21294, '雾夜女巫', 1),
(21295, '幽冥鬼煞', 1),
(21296, '魅影幻像', 1),
(21297, '荒漠异蝎', 1),
(21298, '雾夜女巫', 1),
(21299, '幽冥鬼煞', 1),
(21300, '魅影幻像', 1),
(21301, '极渊领主', 1),
(21302, '荒漠异蝎', 1),
(21303, '雾夜女巫', 1),
(21304, '幽冥鬼煞', 1),
(21305, '魅影幻像', 1),
(21306, '荒漠异蝎', 1),
(21307, '雾夜女巫', 1),
(21308, '幽冥鬼煞', 1),
(21309, '魅影幻像', 1),
(21310, '极渊领主', 1),
(21311, '荒漠异蝎', 1),
(21312, '雾夜女巫', 1),
(21313, '幽冥鬼煞', 1),
(21314, '魅影幻像', 1),
(21315, '荒漠异蝎', 1),
(21316, '雾夜女巫', 1),
(21317, '幽冥鬼煞', 1),
(21318, '魅影幻像', 1),
(21319, '极渊领主', 1),
(21320, '荒漠异蝎', 1),
(21321, '雾夜女巫', 1),
(21322, '幽冥鬼煞', 1),
(21323, '魅影幻像', 1),
(21324, '荒漠异蝎', 1),
(21325, '雾夜女巫', 1),
(21326, '幽冥鬼煞', 1),
(21327, '魅影幻像', 1),
(21328, '极渊领主', 1),
(21329, '荒漠异蝎', 1),
(21330, '雾夜女巫', 1),
(21331, '幽冥鬼煞', 1),
(21332, '魅影幻像', 1),
(21333, '荒漠异蝎', 1),
(21334, '雾夜女巫', 1),
(21335, '幽冥鬼煞', 1),
(21336, '魅影幻像', 1),
(21337, '极渊领主', 1),
(21338, '荒漠异蝎', 1),
(21339, '雾夜女巫', 1),
(21340, '幽冥鬼煞', 1),
(21341, '魅影幻像', 1),
(21342, '荒漠异蝎', 1),
(21343, '雾夜女巫', 1),
(21344, '幽冥鬼煞', 1),
(21345, '魅影幻像', 1),
(21346, '极渊领主', 1),
(21347, '荒漠异蝎', 1),
(21348, '雾夜女巫', 1),
(21349, '幽冥鬼煞', 1),
(21350, '魅影幻像', 1),
(21351, '荒漠异蝎', 1),
(21352, '雾夜女巫', 1),
(21353, '幽冥鬼煞', 1),
(21354, '魅影幻像', 1),
(21355, '极渊领主', 1),
(21356, '荒漠异蝎', 1),
(21357, '雾夜女巫', 1),
(21358, '幽冥鬼煞', 1),
(21359, '魅影幻像', 1),
(21360, '荒漠异蝎', 1),
(21361, '雾夜女巫', 1),
(21362, '幽冥鬼煞', 1),
(21363, '魅影幻像', 1),
(21364, '极渊领主', 1),
(21365, '荒漠异蝎', 1),
(21366, '雾夜女巫', 1),
(21367, '幽冥鬼煞', 1),
(21368, '魅影幻像', 1);

INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`, `need_ap`, `auto`, `activity_id`, `activity_award`) VALUES 
(3163, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0),
(3164, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0),
(3165, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0),
(3166, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0),
(3167, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0),
(3168, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0),
(3169, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0),
(3170, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0),
(3171, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0),
(3172, '雾夜城二十一层', 1, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0);


insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1001701','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001702','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001703','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001704','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001705','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001706','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001707','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001708','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001709','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001710','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001711','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001712','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001713','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001714','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001715','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001716','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001717','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001718','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001719','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001720','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001721','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001722','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001723','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001724','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001725','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001726','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001727','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001728','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001729','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001730','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001731','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001732','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001733','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001734','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001735','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001736','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001737','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001738','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001739','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001740','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001741','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001742','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001743','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001744','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001745','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001746','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001747','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001748','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001749','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001750','10000','1000','1000','400','400','0','0','0','0','0','10000','0','0','5000','10000','0','2000','0','0','0','0','0','0','0','0','0','0','0','0');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1001701','荒漠异蝎','0','0','1','2','1','0','1001701','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001702','雾夜女巫','0','0','1','6','1','0','1001702','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001703','幽冥鬼煞','0','0','1','6','2','1','1001703','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001704','魅影幻像','0','0','1','6','2','1','1001704','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001705','蜘蛛女王','0','2','2','6','1','1','1001705','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001706','荒漠异蝎','0','0','1','2','1','0','1001706','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001707','雾夜女巫','0','0','1','6','1','0','1001707','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001708','幽冥鬼煞','0','0','1','6','2','1','1001708','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001709','魅影幻像','0','0','1','6','2','1','1001709','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001710','蜘蛛女王','0','2','2','6','1','1','1001710','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001711','荒漠异蝎','0','0','1','2','1','0','1001711','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001712','雾夜女巫','0','0','1','6','1','0','1001712','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001713','幽冥鬼煞','0','0','1','6','2','1','1001713','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001714','魅影幻像','0','0','1','6','2','1','1001714','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001715','蜘蛛女王','0','2','2','6','1','1','1001715','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001716','荒漠异蝎','0','0','1','2','1','0','1001716','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001717','雾夜女巫','0','0','1','6','1','0','1001717','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001718','幽冥鬼煞','0','0','1','6','2','1','1001718','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001719','魅影幻像','0','0','1','6','2','1','1001719','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001720','蜘蛛女王','0','2','2','6','1','1','1001720','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001721','荒漠异蝎','0','0','1','2','1','0','1001721','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001722','雾夜女巫','0','0','1','6','1','0','1001722','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001723','幽冥鬼煞','0','0','1','6','2','1','1001723','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001724','魅影幻像','0','0','1','6','2','1','1001724','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001725','蜘蛛女王','0','2','2','6','1','1','1001725','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001726','荒漠异蝎','0','0','1','2','1','0','1001726','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001727','雾夜女巫','0','0','1','6','1','0','1001727','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001728','幽冥鬼煞','0','0','1','6','2','1','1001728','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001729','魅影幻像','0','0','1','6','2','1','1001729','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001730','蜘蛛女王','0','2','2','6','1','1','1001730','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001731','荒漠异蝎','0','0','1','2','1','0','1001731','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001732','雾夜女巫','0','0','1','6','1','0','1001732','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001733','幽冥鬼煞','0','0','1','6','2','1','1001733','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001734','魅影幻像','0','0','1','6','2','1','1001734','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001735','蜘蛛女王','0','2','2','6','1','1','1001735','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001736','荒漠异蝎','0','0','1','2','1','0','1001736','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001737','雾夜女巫','0','0','1','6','1','0','1001737','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001738','幽冥鬼煞','0','0','1','6','2','1','1001738','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001739','魅影幻像','0','0','1','6','2','1','1001739','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001740','蜘蛛女王','0','2','2','6','1','1','1001740','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001741','荒漠异蝎','0','0','1','2','1','0','1001741','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001742','雾夜女巫','0','0','1','6','1','0','1001742','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001743','幽冥鬼煞','0','0','1','6','2','1','1001743','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001744','魅影幻像','0','0','1','6','2','1','1001744','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001745','蜘蛛女王','0','2','2','6','1','1','1001745','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001746','荒漠异蝎','0','0','1','2','1','0','1001746','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001747','雾夜女巫','0','0','1','6','1','0','1001747','','1005401;1005402;1005403','0,1,2','0','0,1,2','0','0'),
('1001748','幽冥鬼煞','0','0','1','6','2','1','1001748','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001749','魅影幻像','0','0','1','6','2','1','1001749','','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001750','蜘蛛女王','0','2','2','6','1','1','1001750','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0');

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`hero_impression`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('200860','荒漠异蝎','0','0','1001701','0','0','0','5','0','0','0','600000','0','0','0'),
('200861','雾夜女巫','0','0','1001702','0','0','0','5','0','0','0','600000','0','0','0'),
('200862','幽冥鬼煞','0','0','1001703','0','0','0','5','0','0','0','600000','0','0','0'),
('200863','魅影幻像','0','0','1001704','0','0','0','5','0','0','0','600000','0','0','0'),
('200864','极渊领主','0','0','1001705','0','0','0','10','0','0','0','600000','0','0','0'),
('200865','荒漠异蝎','0','0','1001706','0','0','0','5','0','0','0','600000','0','0','0'),
('200866','雾夜女巫','0','0','1001707','0','0','0','5','0','0','0','600000','0','0','0'),
('200867','幽冥鬼煞','0','0','1001708','0','0','0','5','0','0','0','600000','0','0','0'),
('200868','魅影幻像','0','0','1001709','0','0','0','5','0','0','0','600000','0','0','0'),
('200869','极渊领主','0','0','1001710','0','0','0','10','0','0','0','600000','0','0','0'),
('200870','荒漠异蝎','0','0','1001711','0','0','0','5','0','0','0','600000','0','0','0'),
('200871','雾夜女巫','0','0','1001712','0','0','0','5','0','0','0','600000','0','0','0'),
('200872','幽冥鬼煞','0','0','1001713','0','0','0','5','0','0','0','600000','0','0','0'),
('200873','魅影幻像','0','0','1001714','0','0','0','5','0','0','0','600000','0','0','0'),
('200874','极渊领主','0','0','1001715','0','0','0','10','0','0','0','600000','0','0','0'),
('200875','荒漠异蝎','0','0','1001716','0','0','0','5','0','0','0','600000','0','0','0'),
('200876','雾夜女巫','0','0','1001717','0','0','0','5','0','0','0','600000','0','0','0'),
('200877','幽冥鬼煞','0','0','1001718','0','0','0','5','0','0','0','600000','0','0','0'),
('200878','魅影幻像','0','0','1001719','0','0','0','5','0','0','0','600000','0','0','0'),
('200879','极渊领主','0','0','1001720','0','0','0','10','0','0','0','600000','0','0','0'),
('200880','荒漠异蝎','0','0','1001721','0','0','0','5','0','0','0','600000','0','0','0'),
('200881','雾夜女巫','0','0','1001722','0','0','0','5','0','0','0','600000','0','0','0'),
('200882','幽冥鬼煞','0','0','1001723','0','0','0','5','0','0','0','600000','0','0','0'),
('200883','魅影幻像','0','0','1001724','0','0','0','5','0','0','0','600000','0','0','0'),
('200884','极渊领主','0','0','1001725','0','0','0','10','0','0','0','600000','0','0','0'),
('200885','荒漠异蝎','0','0','1001726','0','0','0','5','0','0','0','600000','0','0','0'),
('200886','雾夜女巫','0','0','1001727','0','0','0','5','0','0','0','600000','0','0','0'),
('200887','幽冥鬼煞','0','0','1001728','0','0','0','5','0','0','0','600000','0','0','0'),
('200888','魅影幻像','0','0','1001729','0','0','0','5','0','0','0','600000','0','0','0'),
('200889','极渊领主','0','0','1001730','0','0','0','10','0','0','0','600000','0','0','0'),
('200890','荒漠异蝎','0','0','1001731','0','0','0','5','0','0','0','600000','0','0','0'),
('200891','雾夜女巫','0','0','1001732','0','0','0','5','0','0','0','600000','0','0','0'),
('200892','幽冥鬼煞','0','0','1001733','0','0','0','5','0','0','0','600000','0','0','0'),
('200893','魅影幻像','0','0','1001734','0','0','0','5','0','0','0','600000','0','0','0'),
('200894','极渊领主','0','0','1001735','0','0','0','10','0','0','0','600000','0','0','0'),
('200895','荒漠异蝎','0','0','1001736','0','0','0','5','0','0','0','600000','0','0','0'),
('200896','雾夜女巫','0','0','1001737','0','0','0','5','0','0','0','600000','0','0','0'),
('200897','幽冥鬼煞','0','0','1001738','0','0','0','5','0','0','0','600000','0','0','0'),
('200898','魅影幻像','0','0','1001739','0','0','0','5','0','0','0','600000','0','0','0'),
('200899','极渊领主','0','0','1001740','0','0','0','10','0','0','0','600000','0','0','0'),
('200900','荒漠异蝎','0','0','1001741','0','0','0','5','0','0','0','600000','0','0','0'),
('200901','雾夜女巫','0','0','1001742','0','0','0','5','0','0','0','600000','0','0','0'),
('200902','幽冥鬼煞','0','0','1001743','0','0','0','5','0','0','0','600000','0','0','0'),
('200903','魅影幻像','0','0','1001744','0','0','0','5','0','0','0','600000','0','0','0'),
('200904','极渊领主','0','0','1001745','0','0','0','10','0','0','0','600000','0','0','0'),
('200905','荒漠异蝎','0','0','1001746','0','0','0','5','0','0','0','600000','0','0','0'),
('200906','雾夜女巫','0','0','1001747','0','0','0','5','0','0','0','600000','0','0','0'),
('200907','幽冥鬼煞','0','0','1001748','0','0','0','5','0','0','0','600000','0','0','0'),
('200908','魅影幻像','0','0','1001749','0','0','0','5','0','0','0','600000','0','0','0'),
('200909','极渊领主','0','0','1001750','0','0','0','10','0','0','0','600000','0','0','0');

INSERT INTO `dungeon_level` (`id`, `level_id`, `monster1_id`, `monster2_id`, `boss_id`) VALUES 
(51, 3163, '200860;200861', '200862;200863', 200864),
(52, 3164, '200865;200866', '200867;200868', 200869),
(53, 3165, '200870;200871', '200872;200873', 200874),
(54, 3166, '200875;200876', '200877;200878', 200879),
(55, 3167, '200880;200881', '200882;200883', 200884),
(61, 3168, '200885;200886', '200887;200888', 200889),
(62, 3169, '200890;200891', '200892;200893', 200894),
(63, 3170, '200895;200896', '200897;200898', 200899),
(64, 3171, '200900;200901', '200902;200903', 200904),
(65, 3172, '200905;200906', '200907;200908', 200909);
