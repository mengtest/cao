###################################################
#20200319[终焉誓约][任务脚本]【雾海的危机】场景地图替换--模板替换(倪祖伟)
#by:倪祖伟
#date:2020-03-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-360696.aspx
###################################################
#注释部分
DELETE FROM `gen_event` WHERE `id`>=3097018 AND `id`<=3097021;
DELETE FROM `gen_event` WHERE `id`>=3099018 AND `id`<=3099021;
DELETE FROM `valve` WHERE `id`=1141;

#打开注释部分
DELETE FROM `gen_event` WHERE `id` in (3097001,3097002,3097006,3097007,3097012,3097014,3097015);
DELETE FROM `attribute` WHERE `id` in (1001247,1001248);
DELETE FROM `monster` WHERE `id` in (1001247,1001248);
DELETE FROM `monster_group` WHERE `id` in (200775,200776);
###################################################
#UPDATE `gen_event` SET `position`='-10.515,0.08,2.647', `rotation_y`= 90 WHERE `id`=3097003;
#UPDATE `gen_event` SET `position`='10.2001,0.08,2.369', `rotation_y`= -134.5 WHERE `id`=3097004;
#UPDATE `gen_event` SET `position`='0.45274,2.22,18.75', `rotation_y`= -180 WHERE `id`=3097005;
#UPDATE `gen_event` SET `position`='0.27871,0.01,6.182', `rotation_y`= 180 WHERE `id`=3097013;
#UPDATE `gen_event` SET `position`='-10.515,0.08,2.647', `rotation_y`= 90 WHERE `id`=3097016;
#UPDATE `gen_event` SET `position`='10.2001,0.08,2.369', `rotation_y`= -134.5 WHERE `id`=3097017;

UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id`=3097003;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -134.5 WHERE `id`=3097004;
UPDATE `gen_event` SET `position`='-0.3200,2.22,35.14', `rotation_y`= -180 WHERE `id`=3097005;
UPDATE `gen_event` SET `position`='0.27871,0.01,12.15', `rotation_y`= 180 WHERE `id`=3097013;
UPDATE `gen_event` SET `position`='-20.960,0.08,5.391', `rotation_y`= 90 WHERE `id`=3097016;
UPDATE `gen_event` SET `position`='21.6500,0.08,4.101', `rotation_y`= -134.5 WHERE `id`=3097017;

UPDATE `gen_event` SET `position`='-10.515,0.08,2.647', `rotation_y`= 90 WHERE `id`=3099003;
UPDATE `gen_event` SET `position`='10.2001,0.08,2.369', `rotation_y`= -134.5 WHERE `id`=3099004;
UPDATE `gen_event` SET `position`='0.45274,2.22,18.75', `rotation_y`= -180 WHERE `id`=3099005;
UPDATE `gen_event` SET `position`='-10.515,0.08,2.647', `rotation_y`= 90 WHERE `id`=3099009;
UPDATE `gen_event` SET `position`='10.2001,0.08,2.369', `rotation_y`= -134.5 WHERE `id`=3099010;
UPDATE `gen_event` SET `position`='0.27871,0.01,6.182', `rotation_y`= 180 WHERE `id`=3099017;

UPDATE `gen_event` SET `position`='-10.515,0.08,-4.61', `rotation_y`= 90 WHERE `id`=3099011;
UPDATE `gen_event` SET `position`='10.2001,0.08,-4.71', `rotation_y`= -90 WHERE `id`=3099012;
UPDATE `gen_event` SET `position`='-10.515,0.08,-4.61', `rotation_y`= 90 WHERE `id`=3099013;
UPDATE `gen_event` SET `position`='10.2001,0.08,-4.71', `rotation_y`= -90 WHERE `id`=3099014;

UPDATE `gen_event` SET `position`='-3.2,0.01,-1.6', `rotation_y`=180, `scale`=1 WHERE `id`=3099001;
UPDATE `gen_event` SET `event_id`=1094, `position`='3.2,0.01,-1.6', `rotation_y`=180 WHERE `id`=3099002;
UPDATE `gen_event` SET `event_id`=1094 WHERE `id`=3099017;

INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(3097018, '机关门', 3097, 4, 1141, 0, 1, 0, 0, 0, 0, 0, '-13.93,0,-9.4', 0, 1),
(3097019, '机关门', 3097, 4, 1141, 0, 1, 0, 0, 0, 0, 0, '13.85,0,-9.08', 0, 1),
(3097020, '机关门', 3097, 4, 1141, 0, 1, 0, 0, 0, 0, 0, '-13.93,0,2.07', 0, 1),
(3097021, '机关门', 3097, 4, 1141, 0, 1, 0, 0, 0, 0, 0, '14.28,0,1.741', 0, 1),

(3099018, '机关门', 3099, 4, 1141, 0, 1, 0, 0, 0, 0, 0, '-6.9,0,-4.4', 0, 1),
(3099019, '机关门', 3099, 4, 1141, 0, 1, 0, 0, 0, 0, 0, '6.88,0,-4.4', 0, 1),
(3099020, '机关门', 3099, 4, 1141, 0, 1, 0, 0, 0, 0, 0, '-6.9,0,1.13', 0, 1),
(3099021, '机关门', 3099, 4, 1141, 0, 1, 0, 0, 0, 0, 0, '6.88,0,1.13', 0, 1);
INSERT INTO `valve` (`id`, `valve_status`, `type`, `data1`, `data2`) VALUES 
(1141, 0, 1, 0, 0);
