/*
Navicat MySQL Data Transfer

Source Server         : yxcs
Source Server Version : 50614
Source Host           : 192.168.10.220:3306
Source Database       : myyxcsgs7

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2019-06-11 14:55:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for achievement_point
-- ----------------------------
DROP TABLE IF EXISTS `achievement_point`;
CREATE TABLE `achievement_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `achievement_lv` int(11) NOT NULL DEFAULT '0',
  `achievement_need_point` int(11) NOT NULL DEFAULT '0',
  `achievement_award_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_add
-- ----------------------------
DROP TABLE IF EXISTS `activity_add`;
CREATE TABLE `activity_add` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_data` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_award
-- ----------------------------
DROP TABLE IF EXISTS `activity_award`;
CREATE TABLE `activity_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `award_id` int(11) NOT NULL DEFAULT '0',
  `award_type` int(11) NOT NULL DEFAULT '0',
  `award_type_id` int(11) NOT NULL DEFAULT '0',
  `award_num` int(11) NOT NULL DEFAULT '0',
  `award_show` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_point
-- ----------------------------
DROP TABLE IF EXISTS `activity_point`;
CREATE TABLE `activity_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `need_point` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  `mask` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_sign_award
-- ----------------------------
DROP TABLE IF EXISTS `activity_sign_award`;
CREATE TABLE `activity_sign_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_time
-- ----------------------------
DROP TABLE IF EXISTS `activity_time`;
CREATE TABLE `activity_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_todo
-- ----------------------------
DROP TABLE IF EXISTS `activity_todo`;
CREATE TABLE `activity_todo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity` int(11) NOT NULL DEFAULT '0',
  `activity_max` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for algorithm_type
-- ----------------------------
DROP TABLE IF EXISTS `algorithm_type`;
CREATE TABLE `algorithm_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `min` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `attach_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for arrest_task
-- ----------------------------
DROP TABLE IF EXISTS `arrest_task`;
CREATE TABLE `arrest_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `arrest_id` int(11) NOT NULL DEFAULT '0',
  `taskid` varchar(20) NOT NULL DEFAULT '',
  `monstergroup_id` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `life` bigint(20) NOT NULL,
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `mgc_def` int(11) NOT NULL DEFAULT '0',
  `life_add` int(11) NOT NULL DEFAULT '0',
  `phy_atk_add` int(11) NOT NULL DEFAULT '0',
  `mgc_atk_add` int(11) NOT NULL DEFAULT '0',
  `phy_def_add` int(11) NOT NULL DEFAULT '0',
  `mgc_def_add` int(11) NOT NULL DEFAULT '0',
  `hit_rate` int(11) NOT NULL DEFAULT '0',
  `dodge_rate` int(11) NOT NULL DEFAULT '0',
  `critical_rate` int(11) NOT NULL DEFAULT '0',
  `critical_dmg` int(11) NOT NULL DEFAULT '0',
  `critical_def` int(11) NOT NULL DEFAULT '0',
  `parry_rate` int(11) NOT NULL DEFAULT '0',
  `parry_def` int(11) NOT NULL DEFAULT '0',
  `hitbreak_rate` int(11) NOT NULL DEFAULT '0',
  `hitback_xp` int(11) NOT NULL DEFAULT '0',
  `dmg_add` int(11) NOT NULL DEFAULT '0',
  `dmg_cut` int(11) NOT NULL DEFAULT '0',
  `ice_atk` int(11) NOT NULL DEFAULT '0',
  `fire_atk` int(11) NOT NULL DEFAULT '0',
  `light_atk` int(11) NOT NULL DEFAULT '0',
  `dark_atk` int(11) NOT NULL DEFAULT '0',
  `ice_def` int(11) NOT NULL DEFAULT '0',
  `fire_def` int(11) NOT NULL DEFAULT '0',
  `light_def` int(11) NOT NULL DEFAULT '0',
  `dark_def` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for award_acquire
-- ----------------------------
DROP TABLE IF EXISTS `award_acquire`;
CREATE TABLE `award_acquire` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `award_id` int(11) NOT NULL DEFAULT '0',
  `award_group` int(11) NOT NULL DEFAULT '0',
  `award_type` int(11) NOT NULL DEFAULT '0',
  `award_type_id` int(11) NOT NULL DEFAULT '0',
  `item_num` int(11) NOT NULL DEFAULT '0',
  `max_get_rate` int(11) NOT NULL DEFAULT '0',
  `min_get_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for battle_replay
-- ----------------------------
DROP TABLE IF EXISTS `battle_replay`;
CREATE TABLE `battle_replay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `right_id` bigint(20) NOT NULL DEFAULT '0',
  `battle_id` bigint(20) NOT NULL DEFAULT '0',
  `info` mediumblob,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for box
-- ----------------------------
DROP TABLE IF EXISTS `box`;
CREATE TABLE `box` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `box_name` varchar(20) NOT NULL DEFAULT '',
  `box_gift` int(11) NOT NULL DEFAULT '0',
  `friend_point` int(11) NOT NULL DEFAULT '0',
  `need_time` int(11) NOT NULL DEFAULT '0',
  `help_limit` int(11) NOT NULL DEFAULT '0',
  `help_time` int(11) NOT NULL DEFAULT '0',
  `cost_friend_point` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cd_key
-- ----------------------------
DROP TABLE IF EXISTS `cd_key`;
CREATE TABLE `cd_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cd_key` varchar(256) NOT NULL DEFAULT '',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cd_key_chan
-- ----------------------------
DROP TABLE IF EXISTS `cd_key_chan`;
CREATE TABLE `cd_key_chan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chan_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `data1` bigint(20) NOT NULL DEFAULT '0',
  `data2` bigint(20) NOT NULL DEFAULT '0',
  `data3` bigint(20) NOT NULL DEFAULT '0',
  `data4` bigint(20) NOT NULL DEFAULT '0',
  `data5` bigint(20) NOT NULL DEFAULT '0',
  `data6` bigint(20) NOT NULL DEFAULT '0',
  `data7` bigint(20) NOT NULL DEFAULT '0',
  `param1` varchar(150) NOT NULL DEFAULT '',
  `desc` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for config_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `config_dynamic`;
CREATE TABLE `config_dynamic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `data1` bigint(20) NOT NULL DEFAULT '0',
  `data2` bigint(20) NOT NULL DEFAULT '0',
  `data3` bigint(20) NOT NULL DEFAULT '0',
  `data4` bigint(20) NOT NULL DEFAULT '0',
  `data5` bigint(20) NOT NULL DEFAULT '0',
  `data6` bigint(20) NOT NULL DEFAULT '0',
  `data7` bigint(20) NOT NULL DEFAULT '0',
  `param1` varchar(150) NOT NULL DEFAULT '',
  `desc` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for copymap_condition
-- ----------------------------
DROP TABLE IF EXISTS `copymap_condition`;
CREATE TABLE `copymap_condition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `condition1_type` int(11) NOT NULL DEFAULT '0',
  `condition1_num` int(11) NOT NULL DEFAULT '0',
  `condition2_type` int(11) NOT NULL DEFAULT '0',
  `condition2_num` int(11) NOT NULL DEFAULT '0',
  `condition3_type` int(11) NOT NULL DEFAULT '0',
  `condition3_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cost_emoney
-- ----------------------------
DROP TABLE IF EXISTS `cost_emoney`;
CREATE TABLE `cost_emoney` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `times_type` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  `cost` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dailyact
-- ----------------------------
DROP TABLE IF EXISTS `dailyact`;
CREATE TABLE `dailyact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `against_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `starttime` bigint(20) NOT NULL DEFAULT '0',
  `endtime` bigint(20) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dailyactmap
-- ----------------------------
DROP TABLE IF EXISTS `dailyactmap`;
CREATE TABLE `dailyactmap` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `difficulty` int(11) NOT NULL DEFAULT '0',
  `commendce` int(11) NOT NULL DEFAULT '0',
  `extece` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for daily_sign_award
-- ----------------------------
DROP TABLE IF EXISTS `daily_sign_award`;
CREATE TABLE `daily_sign_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for default_name
-- ----------------------------
DROP TABLE IF EXISTS `default_name`;
CREATE TABLE `default_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cur_index` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dream_land
-- ----------------------------
DROP TABLE IF EXISTS `dream_land`;
CREATE TABLE `dream_land` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monstergroup_id` int(11) NOT NULL DEFAULT '0',
  `conditions1` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `conditions2` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `conditions3` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `first_bounses` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dream_star
-- ----------------------------
DROP TABLE IF EXISTS `dream_star`;
CREATE TABLE `dream_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `star1` int(11) NOT NULL DEFAULT '0',
  `star_bounses1` int(11) NOT NULL DEFAULT '0',
  `star2` int(11) NOT NULL DEFAULT '0',
  `star_bounses2` int(11) NOT NULL DEFAULT '0',
  `star3` int(11) NOT NULL DEFAULT '0',
  `star_bounses3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dungeon_hero
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_hero`;
CREATE TABLE `dungeon_hero` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dungeon_level
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_level`;
CREATE TABLE `dungeon_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level_id` int(11) NOT NULL DEFAULT '0',
  `monster1_id` varchar(128) NOT NULL DEFAULT '',
  `monster2_id` varchar(128) NOT NULL DEFAULT '',
  `boss_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for equipment_order
-- ----------------------------
DROP TABLE IF EXISTS `equipment_order`;
CREATE TABLE `equipment_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `part` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `max_star` int(11) NOT NULL DEFAULT '0',
  `statistics_type1` int(11) NOT NULL DEFAULT '0',
  `statistics_num1` int(11) NOT NULL DEFAULT '0',
  `growth_num1` int(11) NOT NULL DEFAULT '0',
  `statistics_type2` int(11) NOT NULL DEFAULT '0',
  `statistics_num2` int(11) NOT NULL DEFAULT '0',
  `growth_num2` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `material_id1` int(11) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for equipment_star
-- ----------------------------
DROP TABLE IF EXISTS `equipment_star`;
CREATE TABLE `equipment_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `part` int(11) NOT NULL DEFAULT '0',
  `star` int(11) NOT NULL DEFAULT '0',
  `need_order` int(11) NOT NULL DEFAULT '0',
  `bonus_percentage` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `material_id1` int(11) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  `material_id2` int(11) NOT NULL DEFAULT '0',
  `material_num2` int(11) NOT NULL DEFAULT '0',
  `material_id3` int(11) NOT NULL DEFAULT '0',
  `material_num3` int(11) NOT NULL DEFAULT '0',
  `material_id4` int(11) NOT NULL DEFAULT '0',
  `material_num4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for equipment_strengthen
-- ----------------------------
DROP TABLE IF EXISTS `equipment_strengthen`;
CREATE TABLE `equipment_strengthen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `part` int(11) NOT NULL DEFAULT '0',
  `strengthen_level` int(11) NOT NULL DEFAULT '0',
  `limit_hero_level` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `material_id1` int(11) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  `material_id2` int(11) NOT NULL DEFAULT '0',
  `material_num2` int(11) NOT NULL DEFAULT '0',
  `material_id3` int(11) NOT NULL DEFAULT '0',
  `material_num3` int(11) NOT NULL DEFAULT '0',
  `material_id4` int(11) NOT NULL DEFAULT '0',
  `material_num4` int(11) NOT NULL DEFAULT '0',
  `success_rate` int(11) NOT NULL DEFAULT '0',
  `add_success_rate` int(11) NOT NULL DEFAULT '0',
  `max_success_rate` int(11) NOT NULL DEFAULT '0',
  `return_level` int(11) NOT NULL DEFAULT '0',
  `clear` int(11) NOT NULL DEFAULT '0',
  `max_times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for exp_ball
-- ----------------------------
DROP TABLE IF EXISTS `exp_ball`;
CREATE TABLE `exp_ball` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `add_type` int(11) NOT NULL DEFAULT '0',
  `type_value` int(11) NOT NULL DEFAULT '0',
  `add_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fashion_type
-- ----------------------------
DROP TABLE IF EXISTS `fashion_type`;
CREATE TABLE `fashion_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fashion_name` varchar(20) NOT NULL DEFAULT '',
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `material_id0` int(11) NOT NULL DEFAULT '0',
  `material_num0` int(11) NOT NULL DEFAULT '0',
  `attr_type1` int(11) NOT NULL DEFAULT '0',
  `attr_data1` int(11) NOT NULL DEFAULT '0',
  `attr_type2` int(11) NOT NULL DEFAULT '0',
  `attr_data2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fight_replay
-- ----------------------------
DROP TABLE IF EXISTS `fight_replay`;
CREATE TABLE `fight_replay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `battle_id` bigint(20) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `sub_sort` int(11) NOT NULL DEFAULT '0',
  `attack_id` bigint(20) NOT NULL DEFAULT '0',
  `defence_id` bigint(20) NOT NULL DEFAULT '0',
  `is_attack_win` int(11) NOT NULL DEFAULT '0',
  `result_info` mediumblob,
  `is_attack_first` int(11) NOT NULL DEFAULT '0',
  `is_sneak` int(11) NOT NULL DEFAULT '0',
  `random_seed` bigint(20) NOT NULL DEFAULT '0',
  `battle_scene_id` int(11) NOT NULL DEFAULT '0',
  `attack_control_type` int(11) NOT NULL DEFAULT '0',
  `defence_control_type` int(11) NOT NULL DEFAULT '0',
  `attack_info` mediumblob,
  `defence_info` mediumblob,
  `attack_hero_info` mediumblob,
  `defence_hero_info` mediumblob,
  `choice_info` mediumblob,
  `pve_info` mediumblob,
  `pvp_info` mediumblob,
  `battle_info` mediumblob,
  `place_sta_info` mediumblob,
  `battle_time` bigint(20) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_battle_id` (`battle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_map
-- ----------------------------
DROP TABLE IF EXISTS `game_map`;
CREATE TABLE `game_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `group` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `map_attr` int(11) NOT NULL DEFAULT '0',
  `map_times` int(11) NOT NULL DEFAULT '0',
  `team_max` int(11) NOT NULL DEFAULT '0',
  `team_min` int(11) NOT NULL DEFAULT '0',
  `fire` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `user_exp` int(11) NOT NULL DEFAULT '0',
  `hero_exp` int(11) NOT NULL DEFAULT '0',
  `exp_ball` int(11) NOT NULL DEFAULT '0',
  `reward_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gen_event
-- ----------------------------
DROP TABLE IF EXISTS `gen_event`;
CREATE TABLE `gen_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `mapid` int(11) NOT NULL DEFAULT '0',
  `event_type` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `path_id` int(11) NOT NULL DEFAULT '0',
  `flag` int(11) NOT NULL DEFAULT '0',
  `intask` int(11) NOT NULL DEFAULT '0',
  `story_id` int(11) NOT NULL DEFAULT '0',
  `life_time` int(11) NOT NULL DEFAULT '0',
  `level_id` int(11) NOT NULL DEFAULT '0',
  `battle_scene` int(11) NOT NULL DEFAULT '0',
  `position` varchar(64) NOT NULL DEFAULT '',
  `rotation_y` float NOT NULL DEFAULT '0',
  `scale` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for get_lottery
-- ----------------------------
DROP TABLE IF EXISTS `get_lottery`;
CREATE TABLE `get_lottery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `raffle_type` int(11) NOT NULL DEFAULT '0',
  `cost_item` int(11) NOT NULL DEFAULT '0',
  `cost_num` int(11) NOT NULL DEFAULT '0',
  `cost_num_ten` int(11) NOT NULL DEFAULT '0',
  `buy_item` int(11) NOT NULL DEFAULT '0',
  `award` int(11) NOT NULL DEFAULT '0',
  `circle` int(11) NOT NULL DEFAULT '0',
  `circle_award` int(11) NOT NULL DEFAULT '0',
  `bg_award_one` int(11) NOT NULL DEFAULT '0',
  `bg_award_ten` int(11) NOT NULL DEFAULT '0',
  `limit_award_type` int(11) NOT NULL DEFAULT '0',
  `limit_min1` int(11) NOT NULL DEFAULT '0',
  `limit_max1` int(11) NOT NULL DEFAULT '0',
  `replace_under1` int(11) NOT NULL DEFAULT '0',
  `replace_over1` int(11) NOT NULL DEFAULT '0',
  `limit_award_item` int(11) NOT NULL DEFAULT '0',
  `limit_min2` int(11) NOT NULL DEFAULT '0',
  `limit_max2` int(11) NOT NULL DEFAULT '0',
  `replace_under2` int(11) NOT NULL DEFAULT '0',
  `replace_over2` int(11) NOT NULL DEFAULT '0',
  `buy_exp_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gift
-- ----------------------------
DROP TABLE IF EXISTS `gift`;
CREATE TABLE `gift` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_value` int(11) NOT NULL DEFAULT '0',
  `team_id` int(11) NOT NULL DEFAULT '0',
  `special_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goals
-- ----------------------------
DROP TABLE IF EXISTS `goals`;
CREATE TABLE `goals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0',
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `monitor_id` int(11) NOT NULL DEFAULT '0',
  `mask_index` int(11) NOT NULL DEFAULT '0',
  `mask_id` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `start_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for guide_star
-- ----------------------------
DROP TABLE IF EXISTS `guide_star`;
CREATE TABLE `guide_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `star` int(11) NOT NULL DEFAULT '0',
  `league_level` int(11) NOT NULL DEFAULT '0',
  `monitor1_id` int(11) NOT NULL DEFAULT '0',
  `monitor2_id` int(11) NOT NULL DEFAULT '0',
  `monitor3_id` int(11) NOT NULL DEFAULT '0',
  `monitor4_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for guide_task
-- ----------------------------
DROP TABLE IF EXISTS `guide_task`;
CREATE TABLE `guide_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `star` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `monitor_id` int(11) NOT NULL DEFAULT '0',
  `statistics_type` int(11) NOT NULL DEFAULT '0',
  `statistics_num` int(11) NOT NULL DEFAULT '0',
  `league_exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_class_type
-- ----------------------------
DROP TABLE IF EXISTS `hero_class_type`;
CREATE TABLE `hero_class_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_type_id` int(11) NOT NULL DEFAULT '0',
  `hero_class` int(11) NOT NULL DEFAULT '0',
  `hero_Level` int(11) NOT NULL DEFAULT '0',
  `item_id1` int(11) NOT NULL DEFAULT '0',
  `item_num1` int(11) NOT NULL DEFAULT '0',
  `item_id2` int(11) NOT NULL DEFAULT '0',
  `item_num2` int(11) NOT NULL DEFAULT '0',
  `item_id3` int(11) NOT NULL DEFAULT '0',
  `item_num3` int(11) NOT NULL DEFAULT '0',
  `item_id4` int(11) NOT NULL DEFAULT '0',
  `item_num4` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `attr_type1` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `attr_type2` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `attr_type3` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_equipment
-- ----------------------------
DROP TABLE IF EXISTS `hero_equipment`;
CREATE TABLE `hero_equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `part` int(11) NOT NULL DEFAULT '0',
  `order_level` int(11) NOT NULL DEFAULT '0',
  `star` int(11) NOT NULL DEFAULT '0',
  `strengthen_level` int(11) NOT NULL DEFAULT '0',
  `failure_times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_exp
-- ----------------------------
DROP TABLE IF EXISTS `hero_exp`;
CREATE TABLE `hero_exp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `need_exp` int(11) NOT NULL DEFAULT '0',
  `lev_req` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_impression
-- ----------------------------
DROP TABLE IF EXISTS `hero_impression`;
CREATE TABLE `hero_impression` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reward_id` int(11) NOT NULL DEFAULT '0',
  `need_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_levup
-- ----------------------------
DROP TABLE IF EXISTS `hero_levup`;
CREATE TABLE `hero_levup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL DEFAULT '0',
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `mgc_def` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_skill_unlock
-- ----------------------------
DROP TABLE IF EXISTS `hero_skill_unlock`;
CREATE TABLE `hero_skill_unlock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `skillmainid` int(10) unsigned NOT NULL DEFAULT '0',
  `hero_level` int(11) NOT NULL DEFAULT '0',
  `hero_class` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_team
-- ----------------------------
DROP TABLE IF EXISTS `hero_team`;
CREATE TABLE `hero_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL DEFAULT '0',
  `hero_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_type
-- ----------------------------
DROP TABLE IF EXISTS `hero_type`;
CREATE TABLE `hero_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `sex` int(11) NOT NULL DEFAULT '0',
  `family` int(11) NOT NULL DEFAULT '0',
  `profession` smallint(6) NOT NULL DEFAULT '0',
  `quality` int(11) NOT NULL DEFAULT '0',
  `attr_id` int(11) NOT NULL DEFAULT '0',
  `skill_que` varchar(256) NOT NULL DEFAULT '',
  `skill_loop_que` varchar(256) NOT NULL DEFAULT '',
  `auto_battle` varchar(128) NOT NULL DEFAULT '',
  `start_level` int(11) NOT NULL DEFAULT '0',
  `start_class` int(11) NOT NULL DEFAULT '0',
  `start_order` int(11) NOT NULL DEFAULT '0',
  `start_strengthen_level` int(11) NOT NULL DEFAULT '0',
  `start_star` int(11) NOT NULL DEFAULT '0',
  `attr_id_1` int(11) NOT NULL DEFAULT '0',
  `attr_id_2` int(11) NOT NULL DEFAULT '0',
  `exchange_item` int(11) NOT NULL DEFAULT '0',
  `exchange_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for icon_mask
-- ----------------------------
DROP TABLE IF EXISTS `icon_mask`;
CREATE TABLE `icon_mask` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `icon_type` int(11) NOT NULL DEFAULT '0',
  `icon_index` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for itemtype
-- ----------------------------
DROP TABLE IF EXISTS `itemtype`;
CREATE TABLE `itemtype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `amount_limit` int(11) NOT NULL DEFAULT '0',
  `flag` bigint(20) unsigned NOT NULL DEFAULT '0',
  `price` bigint(20) NOT NULL DEFAULT '0',
  `awardid` int(11) NOT NULL DEFAULT '0',
  `actionid` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for leagues_level
-- ----------------------------
DROP TABLE IF EXISTS `leagues_level`;
CREATE TABLE `leagues_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `need_exp` int(11) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `bag_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for level_adapt
-- ----------------------------
DROP TABLE IF EXISTS `level_adapt`;
CREATE TABLE `level_adapt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attr_type` int(11) NOT NULL DEFAULT '0',
  `hero_level` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `attr_id` int(11) NOT NULL DEFAULT '0',
  `attack` int(11) NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL DEFAULT '0',
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `mgc_def` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for loop_activity
-- ----------------------------
DROP TABLE IF EXISTS `loop_activity`;
CREATE TABLE `loop_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `goals` varchar(128) NOT NULL DEFAULT '',
  `random_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for loop_activity_goal
-- ----------------------------
DROP TABLE IF EXISTS `loop_activity_goal`;
CREATE TABLE `loop_activity_goal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `once_point` int(11) NOT NULL DEFAULT '0',
  `point_max` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for loop_activity_random
-- ----------------------------
DROP TABLE IF EXISTS `loop_activity_random`;
CREATE TABLE `loop_activity_random` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time_flag` bigint(20) NOT NULL DEFAULT '0',
  `goal` int(11) NOT NULL DEFAULT '0',
  `act_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lottery_gift
-- ----------------------------
DROP TABLE IF EXISTS `lottery_gift`;
CREATE TABLE `lottery_gift` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `award_id` int(11) NOT NULL DEFAULT '0',
  `award_type` int(11) NOT NULL DEFAULT '0',
  `itemtype_id` int(11) NOT NULL DEFAULT '0',
  `item_num` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for luckymoney_type
-- ----------------------------
DROP TABLE IF EXISTS `luckymoney_type`;
CREATE TABLE `luckymoney_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `mask` int(11) NOT NULL DEFAULT '0',
  `monitor_id` int(11) NOT NULL DEFAULT '0',
  `money_id` int(11) NOT NULL DEFAULT '0',
  `money_num` int(11) NOT NULL DEFAULT '0',
  `times_limit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for monitor
-- ----------------------------
DROP TABLE IF EXISTS `monitor`;
CREATE TABLE `monitor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monitor_type` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `num_type` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `data4` int(11) NOT NULL DEFAULT '0',
  `mask1` int(11) NOT NULL DEFAULT '0',
  `mask2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for monster
-- ----------------------------
DROP TABLE IF EXISTS `monster`;
CREATE TABLE `monster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `attr_type` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '0',
  `family` int(11) NOT NULL DEFAULT '0',
  `profession` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `attr_id` int(11) NOT NULL DEFAULT '0',
  `special_effects` varchar(256) NOT NULL DEFAULT '',
  `own_skills` varchar(256) NOT NULL DEFAULT '',
  `skill_que` varchar(256) NOT NULL DEFAULT '',
  `skill_vis` int(11) NOT NULL DEFAULT '0',
  `skill_loop_que` varchar(256) NOT NULL DEFAULT '',
  `skill_que_vis` int(11) NOT NULL DEFAULT '0',
  `action_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for monster_group
-- ----------------------------
DROP TABLE IF EXISTS `monster_group`;
CREATE TABLE `monster_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `fight` int(11) NOT NULL DEFAULT '0',
  `multi_boss` int(11) NOT NULL DEFAULT '0',
  `monster` varchar(128) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `user_exp` int(11) NOT NULL DEFAULT '0',
  `hero_exp` int(11) NOT NULL DEFAULT '0',
  `exp_ball` int(11) NOT NULL DEFAULT '0',
  `reward_id` int(11) NOT NULL DEFAULT '0',
  `action_id` int(11) NOT NULL DEFAULT '0',
  `max_battle_time` int(11) NOT NULL DEFAULT '0',
  `battle_check` int(11) NOT NULL DEFAULT '0',
  `attack_status_id` int(11) NOT NULL DEFAULT '0',
  `fight_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for npc_group
-- ----------------------------
DROP TABLE IF EXISTS `npc_group`;
CREATE TABLE `npc_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `req_level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for offline_user_attr
-- ----------------------------
DROP TABLE IF EXISTS `offline_user_attr`;
CREATE TABLE `offline_user_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `formation_type` int(11) NOT NULL DEFAULT '0',
  `user_level` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  `figure_id` int(11) NOT NULL DEFAULT '0',
  `syn_name` varchar(20) NOT NULL DEFAULT '',
  `fight` int(11) NOT NULL DEFAULT '0',
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `hero_typeid` int(11) NOT NULL DEFAULT '0',
  `hero_level` int(11) NOT NULL DEFAULT '0',
  `hero_class` int(11) NOT NULL DEFAULT '0',
  `hero_fight` int(11) NOT NULL DEFAULT '0',
  `wearing_fashion` int(11) NOT NULL DEFAULT '0',
  `formation` int(11) NOT NULL DEFAULT '0',
  `life` bigint(20) NOT NULL DEFAULT '0',
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `mgc_def` int(11) NOT NULL DEFAULT '0',
  `life_add` int(11) NOT NULL DEFAULT '0',
  `phy_atk_add` int(11) NOT NULL DEFAULT '0',
  `mgc_atk_add` int(11) NOT NULL DEFAULT '0',
  `phy_def_add` int(11) NOT NULL DEFAULT '0',
  `mgc_def_add` int(11) NOT NULL DEFAULT '0',
  `hit_rate` int(11) NOT NULL DEFAULT '0',
  `dodge_rate` int(11) NOT NULL DEFAULT '0',
  `critical_rate` int(11) NOT NULL DEFAULT '0',
  `critical_dmg` int(11) NOT NULL DEFAULT '0',
  `critical_def` int(11) NOT NULL DEFAULT '0',
  `parry_rate` int(11) NOT NULL DEFAULT '0',
  `parry_def` int(11) NOT NULL DEFAULT '0',
  `hitbreak_rate` int(11) NOT NULL DEFAULT '0',
  `hitback_xp` int(11) NOT NULL DEFAULT '0',
  `dmg_add` int(11) NOT NULL DEFAULT '0',
  `dmg_cut` int(11) NOT NULL DEFAULT '0',
  `ice_atk` int(11) NOT NULL DEFAULT '0',
  `fire_atk` int(11) NOT NULL DEFAULT '0',
  `light_atk` int(11) NOT NULL DEFAULT '0',
  `dark_atk` int(11) NOT NULL DEFAULT '0',
  `ice_def` int(11) NOT NULL DEFAULT '0',
  `fire_def` int(11) NOT NULL DEFAULT '0',
  `light_def` int(11) NOT NULL DEFAULT '0',
  `dark_def` int(11) NOT NULL DEFAULT '0',
  `pet1_id` int(11) NOT NULL DEFAULT '0',
  `pet1_star` int(11) NOT NULL DEFAULT '0',
  `pet2_id` int(11) NOT NULL DEFAULT '0',
  `pet2_star` int(11) NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '0',
  `profession` int(11) NOT NULL DEFAULT '0',
  `figure_fishion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orgcoming_syn_num
-- ----------------------------
DROP TABLE IF EXISTS `orgcoming_syn_num`;
CREATE TABLE `orgcoming_syn_num` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orgcoming_user_point
-- ----------------------------
DROP TABLE IF EXISTS `orgcoming_user_point`;
CREATE TABLE `orgcoming_user_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for out_exp_limit
-- ----------------------------
DROP TABLE IF EXISTS `out_exp_limit`;
CREATE TABLE `out_exp_limit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `out_exp_limit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pet_name` varchar(20) NOT NULL DEFAULT '',
  `pet_type` int(11) NOT NULL DEFAULT '0',
  `start_life` int(11) NOT NULL DEFAULT '0',
  `growth_life` int(11) NOT NULL DEFAULT '0',
  `start_phy_atk` int(11) NOT NULL DEFAULT '0',
  `growth_phy_atk` int(11) NOT NULL DEFAULT '0',
  `start_mgc_atk` int(11) NOT NULL DEFAULT '0',
  `growth_mgc_atk` int(11) NOT NULL DEFAULT '0',
  `start_phy_def` int(11) NOT NULL DEFAULT '0',
  `growth_phy_def` int(11) NOT NULL DEFAULT '0',
  `start_mgc_def` int(11) NOT NULL DEFAULT '0',
  `growth_mgc_def` int(11) NOT NULL DEFAULT '0',
  `skill0_id` int(11) NOT NULL DEFAULT '0',
  `skill0_id2` int(11) NOT NULL DEFAULT '0',
  `skill0_id3` int(11) NOT NULL DEFAULT '0',
  `exclusive_hero` int(11) NOT NULL DEFAULT '0',
  `pet_money` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pet_exp
-- ----------------------------
DROP TABLE IF EXISTS `pet_exp`;
CREATE TABLE `pet_exp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pet_level` int(11) NOT NULL DEFAULT '0',
  `need_pet_exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pet_star
-- ----------------------------
DROP TABLE IF EXISTS `pet_star`;
CREATE TABLE `pet_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pet_id` int(11) NOT NULL DEFAULT '0',
  `star` int(11) NOT NULL DEFAULT '0',
  `life_add` int(11) NOT NULL DEFAULT '0',
  `phy_atk_add` int(11) NOT NULL DEFAULT '0',
  `mgc_atk_add` int(11) NOT NULL DEFAULT '0',
  `phy_def_add` int(11) NOT NULL DEFAULT '0',
  `mgc_def_add` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `pet_num` int(11) NOT NULL DEFAULT '0',
  `material_id1` int(11) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  `material_id2` int(11) NOT NULL DEFAULT '0',
  `material_num2` int(11) NOT NULL DEFAULT '0',
  `material_id3` int(11) NOT NULL DEFAULT '0',
  `material_num3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pvp_information
-- ----------------------------
DROP TABLE IF EXISTS `pvp_information`;
CREATE TABLE `pvp_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `data1` bigint(20) NOT NULL DEFAULT '0',
  `data2` bigint(20) NOT NULL DEFAULT '0',
  `data3` bigint(20) NOT NULL DEFAULT '0',
  `data4` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pvp_reward
-- ----------------------------
DROP TABLE IF EXISTS `pvp_reward`;
CREATE TABLE `pvp_reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `data4` int(11) NOT NULL DEFAULT '0',
  `itemtype_id1` int(11) NOT NULL DEFAULT '0',
  `itemtype_num1` int(11) NOT NULL DEFAULT '0',
  `itemtype_id2` int(11) NOT NULL DEFAULT '0',
  `itemtype_num2` int(11) NOT NULL DEFAULT '0',
  `itemtype_id3` int(11) NOT NULL DEFAULT '0',
  `itemtype_num3` int(11) NOT NULL DEFAULT '0',
  `itemtype_id4` int(11) NOT NULL DEFAULT '0',
  `itemtype_num4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pvp_user_ranking
-- ----------------------------
DROP TABLE IF EXISTS `pvp_user_ranking`;
CREATE TABLE `pvp_user_ranking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `data1` bigint(20) NOT NULL DEFAULT '0',
  `data2` bigint(20) NOT NULL DEFAULT '0',
  `data3` bigint(20) NOT NULL DEFAULT '0',
  `data4` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pvp_user_record
-- ----------------------------
DROP TABLE IF EXISTS `pvp_user_record`;
CREATE TABLE `pvp_user_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `data1` bigint(20) NOT NULL DEFAULT '0',
  `data2` bigint(20) NOT NULL DEFAULT '0',
  `data3` bigint(20) NOT NULL DEFAULT '0',
  `data4` bigint(20) NOT NULL DEFAULT '0',
  `win_times` int(11) NOT NULL DEFAULT '0',
  `active_reward_times` int(11) NOT NULL DEFAULT '0',
  `last_battle_time` bigint(20) NOT NULL DEFAULT '0',
  `clear_cd` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pvp_user_reward
-- ----------------------------
DROP TABLE IF EXISTS `pvp_user_reward`;
CREATE TABLE `pvp_user_reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `data1` bigint(20) NOT NULL DEFAULT '0',
  `data2` bigint(20) NOT NULL DEFAULT '0',
  `data3` bigint(20) NOT NULL DEFAULT '0',
  `flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mask` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for raffle_count
-- ----------------------------
DROP TABLE IF EXISTS `raffle_count`;
CREATE TABLE `raffle_count` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `mode` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rand_name
-- ----------------------------
DROP TABLE IF EXISTS `rand_name`;
CREATE TABLE `rand_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rune
-- ----------------------------
DROP TABLE IF EXISTS `rune`;
CREATE TABLE `rune` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rune_level` int(11) NOT NULL DEFAULT '0',
  `special_effects1` int(11) NOT NULL DEFAULT '0',
  `special_effects2` int(11) NOT NULL DEFAULT '0',
  `special_effects3` int(11) NOT NULL DEFAULT '0',
  `add_skill_lv` int(11) NOT NULL DEFAULT '0',
  `item_require_num` int(11) NOT NULL DEFAULT '0',
  `gold_requires` int(11) NOT NULL DEFAULT '0',
  `only_wear` int(11) NOT NULL DEFAULT '0',
  `only_hero` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for server_level_limit
-- ----------------------------
DROP TABLE IF EXISTS `server_level_limit`;
CREATE TABLE `server_level_limit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_day` int(11) NOT NULL DEFAULT '0',
  `level_limit` int(11) NOT NULL DEFAULT '0',
  `exp_ratio` int(11) NOT NULL DEFAULT '0',
  `out_attenuation` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for share_boss
-- ----------------------------
DROP TABLE IF EXISTS `share_boss`;
CREATE TABLE `share_boss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monster_group_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `remain_time` bigint(20) NOT NULL DEFAULT '0',
  `min_get_rate` int(11) NOT NULL DEFAULT '0',
  `max_get_rate` int(11) NOT NULL DEFAULT '0',
  `min_level` int(11) NOT NULL DEFAULT '0',
  `max_level` int(11) NOT NULL DEFAULT '0',
  `reward1_id` int(11) NOT NULL DEFAULT '0',
  `reward2_id` int(11) NOT NULL DEFAULT '0',
  `reward3_id` int(11) NOT NULL DEFAULT '0',
  `reward4_id` int(11) NOT NULL DEFAULT '0',
  `reward5_id` int(11) NOT NULL DEFAULT '0',
  `reward6_id` int(11) NOT NULL DEFAULT '0',
  `reward7_id` int(11) NOT NULL DEFAULT '0',
  `reward8_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_type` int(11) NOT NULL DEFAULT '0',
  `item_type` int(11) NOT NULL DEFAULT '0',
  `money_type` int(11) NOT NULL DEFAULT '0',
  `price` bigint(20) NOT NULL DEFAULT '0',
  `limit_amount` int(11) NOT NULL DEFAULT '0',
  `refresh_time` int(11) NOT NULL DEFAULT '0',
  `refresh_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_config
-- ----------------------------
DROP TABLE IF EXISTS `shop_config`;
CREATE TABLE `shop_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_type` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `refresh_time` int(11) NOT NULL DEFAULT '0',
  `times_type` int(11) NOT NULL DEFAULT '0',
  `ticket_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_deblocking
-- ----------------------------
DROP TABLE IF EXISTS `shop_deblocking`;
CREATE TABLE `shop_deblocking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_type` int(11) NOT NULL DEFAULT '0',
  `deblocking_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_refresh
-- ----------------------------
DROP TABLE IF EXISTS `shop_refresh`;
CREATE TABLE `shop_refresh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_type` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  `item_type` int(11) NOT NULL DEFAULT '0',
  `money_type` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `limit_amount` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_pos
-- ----------------------------
DROP TABLE IF EXISTS `skill_pos`;
CREATE TABLE `skill_pos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skill_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `show_time` int(11) NOT NULL DEFAULT '0',
  `realtime` int(11) NOT NULL DEFAULT '0',
  `status` varchar(256) NOT NULL DEFAULT '',
  `dmg_odd` int(11) NOT NULL DEFAULT '0',
  `const_dmg` int(11) NOT NULL DEFAULT '0',
  `crit_bonus` int(11) NOT NULL DEFAULT '0',
  `ignore_phy_def` int(11) NOT NULL DEFAULT '0',
  `ignore_mgc_def` int(11) NOT NULL DEFAULT '0',
  `ignore_dodge` smallint(6) NOT NULL DEFAULT '0',
  `ignore_parry` smallint(6) NOT NULL DEFAULT '0',
  `element_type` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_type
-- ----------------------------
DROP TABLE IF EXISTS `skill_type`;
CREATE TABLE `skill_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `skillmain_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `skill0_type` int(11) NOT NULL DEFAULT '0',
  `skill0_unicity` int(11) NOT NULL DEFAULT '0',
  `next_type` varchar(256) NOT NULL DEFAULT '',
  `cd` int(11) NOT NULL DEFAULT '0',
  `affect_faction` smallint(6) NOT NULL DEFAULT '0',
  `target_rule` smallint(6) NOT NULL DEFAULT '0',
  `combos` varchar(256) NOT NULL DEFAULT '',
  `cost_type` int(11) NOT NULL DEFAULT '0',
  `cost_data` int(11) NOT NULL DEFAULT '0',
  `use_time` int(11) NOT NULL DEFAULT '0',
  `count_type` bigint(20) NOT NULL DEFAULT '0',
  `count_data` bigint(20) NOT NULL DEFAULT '0',
  `status` varchar(256) NOT NULL DEFAULT '',
  `status_start` int(11) NOT NULL DEFAULT '0',
  `special_effects` varchar(256) NOT NULL DEFAULT '',
  `hp_cost` int(11) NOT NULL DEFAULT '0',
  `xp_cost` int(11) NOT NULL DEFAULT '0',
  `xp_revert` int(11) NOT NULL DEFAULT '0',
  `level_up` smallint(6) NOT NULL DEFAULT '0',
  `gold_require` bigint(20) NOT NULL DEFAULT '0',
  `item_require1` int(11) NOT NULL DEFAULT '0',
  `item_require1_num` int(11) NOT NULL DEFAULT '0',
  `item_require2` int(11) NOT NULL DEFAULT '0',
  `item_require2_num` int(11) NOT NULL DEFAULT '0',
  `item_require3` int(11) NOT NULL DEFAULT '0',
  `item_require3_num` int(11) NOT NULL DEFAULT '0',
  `item_require4` int(11) NOT NULL DEFAULT '0',
  `item_require4_num` int(11) NOT NULL DEFAULT '0',
  `level_require` int(11) NOT NULL DEFAULT '0',
  `qte` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for special_effect
-- ----------------------------
DROP TABLE IF EXISTS `special_effect`;
CREATE TABLE `special_effect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `percent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `isalive` int(11) NOT NULL DEFAULT '0',
  `listen_actor` int(11) NOT NULL DEFAULT '0',
  `trigger_type` int(11) NOT NULL DEFAULT '0',
  `trigger_arg1` int(11) NOT NULL DEFAULT '0',
  `trigger_arg2` int(11) NOT NULL DEFAULT '0',
  `trigger_arg3` int(11) NOT NULL DEFAULT '0',
  `trigger_arg4` int(11) NOT NULL DEFAULT '0',
  `respond_actor` int(11) NOT NULL DEFAULT '0',
  `respond_type` int(11) NOT NULL DEFAULT '0',
  `respond_arg1` int(11) NOT NULL DEFAULT '0',
  `respond_arg2` int(11) NOT NULL DEFAULT '0',
  `respond_arg3` int(11) NOT NULL DEFAULT '0',
  `respond_arg4` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for special_luckymoney
-- ----------------------------
DROP TABLE IF EXISTS `special_luckymoney`;
CREATE TABLE `special_luckymoney` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `affect_faction` smallint(6) NOT NULL DEFAULT '0',
  `target_rule` smallint(6) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `end_condition` int(11) NOT NULL DEFAULT '0',
  `end_data` int(11) NOT NULL DEFAULT '0',
  `trigger_interval` int(11) NOT NULL DEFAULT '0',
  `trigger_percent` int(11) NOT NULL DEFAULT '0',
  `ishelpful` smallint(6) NOT NULL DEFAULT '0',
  `override_id` varchar(256) NOT NULL DEFAULT '',
  `max_superposition` int(11) NOT NULL DEFAULT '0',
  `clear` int(11) NOT NULL DEFAULT '0',
  `special_effects` varchar(256) NOT NULL DEFAULT '',
  `parm1` int(11) NOT NULL DEFAULT '0',
  `parm2` int(11) NOT NULL DEFAULT '0',
  `parm3` int(11) NOT NULL DEFAULT '0',
  `attr_exp1` int(11) NOT NULL DEFAULT '0',
  `attr_class1` int(11) NOT NULL DEFAULT '0',
  `attr_value1` int(11) NOT NULL DEFAULT '0',
  `attr_exp2` int(11) NOT NULL DEFAULT '0',
  `attr_class2` int(11) NOT NULL DEFAULT '0',
  `attr_value2` int(11) NOT NULL DEFAULT '0',
  `attr_exp3` int(11) NOT NULL DEFAULT '0',
  `attr_class3` int(11) NOT NULL DEFAULT '0',
  `attr_value3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for supply_card
-- ----------------------------
DROP TABLE IF EXISTS `supply_card`;
CREATE TABLE `supply_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_type` int(11) NOT NULL DEFAULT '0',
  `card_time` int(11) NOT NULL DEFAULT '0',
  `buy_award` int(11) NOT NULL DEFAULT '0',
  `daily_award` int(11) NOT NULL DEFAULT '0',
  `trail_id` int(11) NOT NULL DEFAULT '0',
  `trail_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syndicate
-- ----------------------------
DROP TABLE IF EXISTS `syndicate`;
CREATE TABLE `syndicate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_type` int(11) NOT NULL DEFAULT '0',
  `syn_name` varchar(15) NOT NULL DEFAULT '',
  `syn_flag_id` int(11) NOT NULL DEFAULT '0',
  `syn_notice` varchar(100) NOT NULL DEFAULT '',
  `syn_manifesto` varchar(100) NOT NULL DEFAULT '',
  `agree_type` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `syn_boss_id` int(11) NOT NULL DEFAULT '0',
  `syn_boss_life` bigint(20) NOT NULL DEFAULT '0',
  `syn_boss_start_time` bigint(20) NOT NULL DEFAULT '0',
  `reward_life` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_active_reward
-- ----------------------------
DROP TABLE IF EXISTS `syn_active_reward`;
CREATE TABLE `syn_active_reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `min_syn_active` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_apply
-- ----------------------------
DROP TABLE IF EXISTS `syn_apply`;
CREATE TABLE `syn_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `user_name` varchar(15) NOT NULL DEFAULT '',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  `user_level` int(11) NOT NULL DEFAULT '0',
  `fight` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_syn_id` (`syn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_boss
-- ----------------------------
DROP TABLE IF EXISTS `syn_boss`;
CREATE TABLE `syn_boss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monster_group_id` int(11) NOT NULL DEFAULT '0',
  `reward1_id` int(11) NOT NULL DEFAULT '0',
  `reward1_num` int(11) NOT NULL DEFAULT '0',
  `reward2_id` int(11) NOT NULL DEFAULT '0',
  `reward2_num` int(11) NOT NULL DEFAULT '0',
  `reward3_id` int(11) NOT NULL DEFAULT '0',
  `reward3_num` int(11) NOT NULL DEFAULT '0',
  `reward4_id` int(11) NOT NULL DEFAULT '0',
  `reward4_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_boss_life
-- ----------------------------
DROP TABLE IF EXISTS `syn_boss_life`;
CREATE TABLE `syn_boss_life` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `syn_boss_id` int(11) NOT NULL DEFAULT '0',
  `attack_life` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_boss_record
-- ----------------------------
DROP TABLE IF EXISTS `syn_boss_record`;
CREATE TABLE `syn_boss_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_boss_id` int(11) NOT NULL DEFAULT '0',
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_building
-- ----------------------------
DROP TABLE IF EXISTS `syn_building`;
CREATE TABLE `syn_building` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_syn_id` (`syn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_building_type
-- ----------------------------
DROP TABLE IF EXISTS `syn_building_type`;
CREATE TABLE `syn_building_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `building_type` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `data4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_building_uplev
-- ----------------------------
DROP TABLE IF EXISTS `syn_building_uplev`;
CREATE TABLE `syn_building_uplev` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_limit
-- ----------------------------
DROP TABLE IF EXISTS `syn_limit`;
CREATE TABLE `syn_limit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` int(11) NOT NULL DEFAULT '0',
  `limit` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_luckymoney
-- ----------------------------
DROP TABLE IF EXISTS `syn_luckymoney`;
CREATE TABLE `syn_luckymoney` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `luckymoney_id` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  `user1_id` bigint(20) NOT NULL DEFAULT '0',
  `user1_num` int(11) NOT NULL DEFAULT '0',
  `user2_id` bigint(20) NOT NULL DEFAULT '0',
  `user2_num` int(11) NOT NULL DEFAULT '0',
  `user3_id` bigint(20) NOT NULL DEFAULT '0',
  `user3_num` int(11) NOT NULL DEFAULT '0',
  `user4_id` bigint(20) NOT NULL DEFAULT '0',
  `user4_num` int(11) NOT NULL DEFAULT '0',
  `user5_id` bigint(20) NOT NULL DEFAULT '0',
  `user5_num` int(11) NOT NULL DEFAULT '0',
  `user6_id` bigint(20) NOT NULL DEFAULT '0',
  `user6_num` int(11) NOT NULL DEFAULT '0',
  `user7_id` bigint(20) NOT NULL DEFAULT '0',
  `user7_num` int(11) NOT NULL DEFAULT '0',
  `user8_id` bigint(20) NOT NULL DEFAULT '0',
  `user8_num` int(11) NOT NULL DEFAULT '0',
  `user9_id` bigint(20) NOT NULL DEFAULT '0',
  `user9_num` int(11) NOT NULL DEFAULT '0',
  `user10_id` bigint(20) NOT NULL DEFAULT '0',
  `user10_num` int(11) NOT NULL DEFAULT '0',
  `user11_id` bigint(20) NOT NULL DEFAULT '0',
  `user11_num` int(11) NOT NULL DEFAULT '0',
  `user12_id` bigint(20) NOT NULL DEFAULT '0',
  `user12_num` int(11) NOT NULL DEFAULT '0',
  `user13_id` bigint(20) NOT NULL DEFAULT '0',
  `user13_num` int(11) NOT NULL DEFAULT '0',
  `user14_id` bigint(20) NOT NULL DEFAULT '0',
  `user14_num` int(11) NOT NULL DEFAULT '0',
  `user15_id` bigint(20) NOT NULL DEFAULT '0',
  `user15_num` int(11) NOT NULL DEFAULT '0',
  `user16_id` bigint(20) NOT NULL DEFAULT '0',
  `user16_num` int(11) NOT NULL DEFAULT '0',
  `user17_id` bigint(20) NOT NULL DEFAULT '0',
  `user17_num` int(11) NOT NULL DEFAULT '0',
  `user18_id` bigint(20) NOT NULL DEFAULT '0',
  `user18_num` int(11) NOT NULL DEFAULT '0',
  `user19_id` bigint(20) NOT NULL DEFAULT '0',
  `user19_num` int(11) NOT NULL DEFAULT '0',
  `user20_id` bigint(20) NOT NULL DEFAULT '0',
  `user20_num` int(11) NOT NULL DEFAULT '0',
  `user21_id` bigint(20) NOT NULL DEFAULT '0',
  `user21_num` int(11) NOT NULL DEFAULT '0',
  `user22_id` bigint(20) NOT NULL DEFAULT '0',
  `user22_num` int(11) NOT NULL DEFAULT '0',
  `user23_id` bigint(20) NOT NULL DEFAULT '0',
  `user23_num` int(11) NOT NULL DEFAULT '0',
  `user24_id` bigint(20) NOT NULL DEFAULT '0',
  `user24_num` int(11) NOT NULL DEFAULT '0',
  `user25_id` bigint(20) NOT NULL DEFAULT '0',
  `user25_num` int(11) NOT NULL DEFAULT '0',
  `user26_id` bigint(20) NOT NULL DEFAULT '0',
  `user26_num` int(11) NOT NULL DEFAULT '0',
  `user27_id` bigint(20) NOT NULL DEFAULT '0',
  `user27_num` int(11) NOT NULL DEFAULT '0',
  `user28_id` bigint(20) NOT NULL DEFAULT '0',
  `user28_num` int(11) NOT NULL DEFAULT '0',
  `user29_id` bigint(20) NOT NULL DEFAULT '0',
  `user29_num` int(11) NOT NULL DEFAULT '0',
  `user30_id` bigint(20) NOT NULL DEFAULT '0',
  `user30_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_member
-- ----------------------------
DROP TABLE IF EXISTS `syn_member`;
CREATE TABLE `syn_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `user_name` varchar(15) NOT NULL DEFAULT '',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  `grade` int(11) NOT NULL DEFAULT '0',
  `user_level` int(11) NOT NULL DEFAULT '0',
  `fight` int(11) NOT NULL DEFAULT '0',
  `all_syn_contribution` int(11) NOT NULL DEFAULT '0',
  `week_syn_contribution` int(11) NOT NULL DEFAULT '0',
  `clear_time` bigint(20) NOT NULL DEFAULT '0',
  `logout_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_syn_id` (`syn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_member_change
-- ----------------------------
DROP TABLE IF EXISTS `syn_member_change`;
CREATE TABLE `syn_member_change` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `change_user_id` bigint(20) NOT NULL DEFAULT '0',
  `change_user_name` varchar(15) NOT NULL DEFAULT '',
  `user_before_grade` int(11) NOT NULL DEFAULT '0',
  `user_now_grade` int(11) NOT NULL DEFAULT '0',
  `do_user_id` bigint(20) NOT NULL DEFAULT '0',
  `do_user_name` varchar(15) NOT NULL DEFAULT '',
  `do_user_grade` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_syn_id` (`syn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_position_name
-- ----------------------------
DROP TABLE IF EXISTS `syn_position_name`;
CREATE TABLE `syn_position_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `grade` int(11) NOT NULL DEFAULT '0',
  `grade_name` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_syn_id` (`syn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for syn_reward
-- ----------------------------
DROP TABLE IF EXISTS `syn_reward`;
CREATE TABLE `syn_reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `reward1_id` int(11) NOT NULL DEFAULT '0',
  `reward1_num` int(11) NOT NULL DEFAULT '0',
  `reward2_id` int(11) NOT NULL DEFAULT '0',
  `reward2_num` int(11) NOT NULL DEFAULT '0',
  `reward3_id` int(11) NOT NULL DEFAULT '0',
  `reward3_num` int(11) NOT NULL DEFAULT '0',
  `reward4_id` int(11) NOT NULL DEFAULT '0',
  `reward4_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for system_deblocking
-- ----------------------------
DROP TABLE IF EXISTS `system_deblocking`;
CREATE TABLE `system_deblocking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mask` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for system_mail
-- ----------------------------
DROP TABLE IF EXISTS `system_mail`;
CREATE TABLE `system_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `start_time` bigint(20) NOT NULL DEFAULT '0',
  `over_time` bigint(20) NOT NULL DEFAULT '0',
  `failure_length` int(11) NOT NULL DEFAULT '0',
  `tittle` varchar(30) NOT NULL DEFAULT '',
  `text` varchar(256) NOT NULL DEFAULT '',
  `address` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(15) NOT NULL DEFAULT '',
  `min_level` int(11) NOT NULL DEFAULT '0',
  `min_login_time` bigint(20) NOT NULL DEFAULT '0',
  `max_login_time` bigint(20) NOT NULL DEFAULT '0',
  `item1_id` int(11) NOT NULL DEFAULT '0',
  `item1_num` int(11) NOT NULL DEFAULT '0',
  `item2_id` int(11) NOT NULL DEFAULT '0',
  `item2_num` int(11) NOT NULL DEFAULT '0',
  `item3_id` int(11) NOT NULL DEFAULT '0',
  `item3_num` int(11) NOT NULL DEFAULT '0',
  `item4_id` int(11) NOT NULL DEFAULT '0',
  `item4_num` int(11) NOT NULL DEFAULT '0',
  `item5_id` int(11) NOT NULL DEFAULT '0',
  `item5_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tasklock
-- ----------------------------
DROP TABLE IF EXISTS `tasklock`;
CREATE TABLE `tasklock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area` int(11) NOT NULL DEFAULT '0',
  `town` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_index
-- ----------------------------
DROP TABLE IF EXISTS `task_index`;
CREATE TABLE `task_index` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskid` int(10) unsigned NOT NULL DEFAULT '0',
  `data_index` int(10) unsigned NOT NULL DEFAULT '0',
  `mask_index` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskid` (`taskid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for times_limit
-- ----------------------------
DROP TABLE IF EXISTS `times_limit`;
CREATE TABLE `times_limit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  `limit_tag` int(11) NOT NULL DEFAULT '0',
  `recover_time` int(11) NOT NULL DEFAULT '0',
  `refresh_time` int(11) NOT NULL DEFAULT '0',
  `type_desc` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for training_level
-- ----------------------------
DROP TABLE IF EXISTS `training_level`;
CREATE TABLE `training_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `training_type` int(11) NOT NULL DEFAULT '0',
  `battle_id` int(11) NOT NULL DEFAULT '0',
  `mask_segment` int(11) NOT NULL DEFAULT '0',
  `mask_bit` int(11) NOT NULL DEFAULT '0',
  `unlock_training` int(11) NOT NULL DEFAULT '0',
  `reward_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unlawful_name
-- ----------------------------
DROP TABLE IF EXISTS `unlawful_name`;
CREATE TABLE `unlawful_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `word` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `idaccount` bigint(20) NOT NULL DEFAULT '0',
  `sub_chan_code` varchar(20) NOT NULL DEFAULT '',
  `fight_power` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `emoney` bigint(20) NOT NULL DEFAULT '0',
  `pet_money` bigint(20) NOT NULL DEFAULT '0',
  `hero_coin` bigint(20) NOT NULL DEFAULT '0',
  `fight_money` bigint(20) NOT NULL DEFAULT '0',
  `fight2_money` bigint(20) NOT NULL DEFAULT '0',
  `memento` bigint(20) NOT NULL DEFAULT '0',
  `syn` bigint(20) NOT NULL DEFAULT '0',
  `last_syn_active` int(11) NOT NULL DEFAULT '0',
  `current_syn_active` int(11) NOT NULL DEFAULT '0',
  `active_syn_time` bigint(20) NOT NULL DEFAULT '0',
  `syn_active_flag` int(11) NOT NULL DEFAULT '0',
  `syn_contribution` int(11) NOT NULL DEFAULT '0',
  `leave_syn_time` int(11) NOT NULL DEFAULT '0',
  `syn_boss_reward` bigint(20) NOT NULL DEFAULT '0',
  `syn_boss_reward_time` bigint(20) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `user_exp` int(11) NOT NULL DEFAULT '0',
  `reg_time` bigint(20) NOT NULL DEFAULT '0',
  `last_login` bigint(20) NOT NULL DEFAULT '0',
  `last_logout` bigint(20) NOT NULL DEFAULT '0',
  `expball_value` int(11) NOT NULL DEFAULT '0',
  `pet_expball` int(11) NOT NULL DEFAULT '0',
  `show_hero_id` int(11) NOT NULL DEFAULT '0',
  `trade_money` bigint(20) NOT NULL DEFAULT '0',
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `mapid` int(11) NOT NULL DEFAULT '0',
  `copy_map_status` int(11) NOT NULL DEFAULT '0',
  `name_times` int(11) NOT NULL DEFAULT '0',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  `league_level` int(11) NOT NULL DEFAULT '0',
  `league_exp` int(11) NOT NULL DEFAULT '0',
  `league_bag_level` int(11) NOT NULL DEFAULT '0',
  `user_friend_point` int(11) NOT NULL DEFAULT '0',
  `achievement_point` int(11) NOT NULL DEFAULT '0',
  `achievement_draw` int(11) NOT NULL DEFAULT '0',
  `activity_luckymoney_time` int(11) NOT NULL DEFAULT '0',
  `syn_active_luckymoney_time` int(11) NOT NULL DEFAULT '0',
  `activity` int(11) NOT NULL DEFAULT '0',
  `reactivity_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_idaccount` (`idaccount`)
) ENGINE=MyISAM AUTO_INCREMENT=3000000000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_activity
-- ----------------------------
DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `activityid` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  `receive_state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_activity_point
-- ----------------------------
DROP TABLE IF EXISTS `user_activity_point`;
CREATE TABLE `user_activity_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `user_activity_point` int(11) NOT NULL DEFAULT '0',
  `drop_award` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_activity_sign
-- ----------------------------
DROP TABLE IF EXISTS `user_activity_sign`;
CREATE TABLE `user_activity_sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `late_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_arrest_data
-- ----------------------------
DROP TABLE IF EXISTS `user_arrest_data`;
CREATE TABLE `user_arrest_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `user_blacklist`;
CREATE TABLE `user_blacklist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `target_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_box
-- ----------------------------
DROP TABLE IF EXISTS `user_box`;
CREATE TABLE `user_box` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `box_id` int(11) NOT NULL DEFAULT '0',
  `box_state` int(11) NOT NULL DEFAULT '0',
  `start_open_time` bigint(20) NOT NULL DEFAULT '0',
  `help_state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_box_help
-- ----------------------------
DROP TABLE IF EXISTS `user_box_help`;
CREATE TABLE `user_box_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `box_id` bigint(20) NOT NULL DEFAULT '0',
  `help_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_dailyact_data
-- ----------------------------
DROP TABLE IF EXISTS `user_dailyact_data`;
CREATE TABLE `user_dailyact_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `data1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data3` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_daily_exp
-- ----------------------------
DROP TABLE IF EXISTS `user_daily_exp`;
CREATE TABLE `user_daily_exp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `daily_exp_limit` int(11) NOT NULL DEFAULT '0',
  `daily_get_exp` int(11) NOT NULL DEFAULT '0',
  `out_exp` int(11) NOT NULL DEFAULT '0',
  `last_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_daily_sign
-- ----------------------------
DROP TABLE IF EXISTS `user_daily_sign`;
CREATE TABLE `user_daily_sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `total_count` int(11) NOT NULL DEFAULT '0',
  `late_time` bigint(20) NOT NULL DEFAULT '0',
  `total_drop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_dungeon_info
-- ----------------------------
DROP TABLE IF EXISTS `user_dungeon_info`;
CREATE TABLE `user_dungeon_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `dungeon_level_id` int(11) NOT NULL DEFAULT '0',
  `mark` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_exp
-- ----------------------------
DROP TABLE IF EXISTS `user_exp`;
CREATE TABLE `user_exp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `need_exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_fashion
-- ----------------------------
DROP TABLE IF EXISTS `user_fashion`;
CREATE TABLE `user_fashion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `fashion_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_friend
-- ----------------------------
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `friend_id` bigint(20) NOT NULL DEFAULT '0',
  `friend_name` varchar(20) NOT NULL DEFAULT '',
  `friend_level` int(11) NOT NULL DEFAULT '0',
  `friend_fight` int(11) NOT NULL DEFAULT '0',
  `offline_time` bigint(20) NOT NULL DEFAULT '0',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_friend_request
-- ----------------------------
DROP TABLE IF EXISTS `user_friend_request`;
CREATE TABLE `user_friend_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `proposer_id` bigint(20) NOT NULL DEFAULT '0',
  `proposer_name` varchar(20) NOT NULL DEFAULT '',
  `proposer_level` int(11) NOT NULL DEFAULT '0',
  `proposer_fight` int(11) NOT NULL DEFAULT '0',
  `offline_time` bigint(20) NOT NULL DEFAULT '0',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_function_time
-- ----------------------------
DROP TABLE IF EXISTS `user_function_time`;
CREATE TABLE `user_function_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `max_time` bigint(20) NOT NULL DEFAULT '0',
  `type_desc` varchar(128) NOT NULL DEFAULT '',
  `time_flag` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_goals
-- ----------------------------
DROP TABLE IF EXISTS `user_goals`;
CREATE TABLE `user_goals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `data1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data4` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data5` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data6` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data7` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data8` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data9` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data10` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data11` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data12` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data13` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data14` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data15` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_guide
-- ----------------------------
DROP TABLE IF EXISTS `user_guide`;
CREATE TABLE `user_guide` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `star` int(11) NOT NULL DEFAULT '0',
  `order1` int(11) NOT NULL DEFAULT '0',
  `order2` int(11) NOT NULL DEFAULT '0',
  `order3` int(11) NOT NULL DEFAULT '0',
  `order4` int(11) NOT NULL DEFAULT '0',
  `order5` int(11) NOT NULL DEFAULT '0',
  `order6` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_hero
-- ----------------------------
DROP TABLE IF EXISTS `user_hero`;
CREATE TABLE `user_hero` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ownerid` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `typeid` int(11) NOT NULL DEFAULT '0',
  `arena_formation` int(11) NOT NULL DEFAULT '0',
  `knight_formation` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `impression_exp` int(11) NOT NULL DEFAULT '0',
  `impression_level` int(11) NOT NULL DEFAULT '0',
  `impression_award_level` int(11) NOT NULL DEFAULT '0',
  `formation` int(11) NOT NULL DEFAULT '0',
  `hero_class` int(11) NOT NULL DEFAULT '0',
  `reset_first` int(11) NOT NULL DEFAULT '0',
  `wearing_fashion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ownerid` (`ownerid`)
) ENGINE=MyISAM AUTO_INCREMENT=2000000000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_hero_skill
-- ----------------------------
DROP TABLE IF EXISTS `user_hero_skill`;
CREATE TABLE `user_hero_skill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `rune_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_hero_id` (`hero_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_loop_activity_points
-- ----------------------------
DROP TABLE IF EXISTS `user_loop_activity_points`;
CREATE TABLE `user_loop_activity_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `user_activity_point` int(11) NOT NULL DEFAULT '0',
  `date_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_loop_target_points
-- ----------------------------
DROP TABLE IF EXISTS `user_loop_target_points`;
CREATE TABLE `user_loop_target_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `goal_id` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_luckymoney
-- ----------------------------
DROP TABLE IF EXISTS `user_luckymoney`;
CREATE TABLE `user_luckymoney` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `luckymoney_id` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_luckymoney_record
-- ----------------------------
DROP TABLE IF EXISTS `user_luckymoney_record`;
CREATE TABLE `user_luckymoney_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `mask` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_mail_get
-- ----------------------------
DROP TABLE IF EXISTS `user_mail_get`;
CREATE TABLE `user_mail_get` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `mail_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_material
-- ----------------------------
DROP TABLE IF EXISTS `user_material`;
CREATE TABLE `user_material` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `playerid` bigint(20) NOT NULL DEFAULT '0',
  `item_type` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_Playerid` (`playerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_monitor_mask
-- ----------------------------
DROP TABLE IF EXISTS `user_monitor_mask`;
CREATE TABLE `user_monitor_mask` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `data1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data4` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data5` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data6` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data7` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data8` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data9` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data10` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data11` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data12` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data13` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data14` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data15` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_monitor_times
-- ----------------------------
DROP TABLE IF EXISTS `user_monitor_times`;
CREATE TABLE `user_monitor_times` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `index_id` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `data4` int(11) NOT NULL DEFAULT '0',
  `data5` int(11) NOT NULL DEFAULT '0',
  `data6` int(11) NOT NULL DEFAULT '0',
  `data7` int(11) NOT NULL DEFAULT '0',
  `data8` int(11) NOT NULL DEFAULT '0',
  `data9` int(11) NOT NULL DEFAULT '0',
  `data10` int(11) NOT NULL DEFAULT '0',
  `data11` int(11) NOT NULL DEFAULT '0',
  `data12` int(11) NOT NULL DEFAULT '0',
  `data13` int(11) NOT NULL DEFAULT '0',
  `data14` int(11) NOT NULL DEFAULT '0',
  `data15` int(11) NOT NULL DEFAULT '0',
  `data16` int(11) NOT NULL DEFAULT '0',
  `data17` int(11) NOT NULL DEFAULT '0',
  `data18` int(11) NOT NULL DEFAULT '0',
  `data19` int(11) NOT NULL DEFAULT '0',
  `data20` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_pet
-- ----------------------------
DROP TABLE IF EXISTS `user_pet`;
CREATE TABLE `user_pet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `pet_id` int(11) NOT NULL DEFAULT '0',
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `place` int(11) NOT NULL DEFAULT '0',
  `pet_level` int(11) NOT NULL DEFAULT '0',
  `pet_exp` int(11) NOT NULL DEFAULT '0',
  `pet_star` int(11) NOT NULL DEFAULT '0',
  `pet_lock` int(11) NOT NULL DEFAULT '0',
  `datel` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_record_data
-- ----------------------------
DROP TABLE IF EXISTS `user_record_data`;
CREATE TABLE `user_record_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `data1` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_reward_mail
-- ----------------------------
DROP TABLE IF EXISTS `user_reward_mail`;
CREATE TABLE `user_reward_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `data1` bigint(20) NOT NULL DEFAULT '0',
  `data2` bigint(20) NOT NULL DEFAULT '0',
  `data3` bigint(20) NOT NULL DEFAULT '0',
  `data4` bigint(20) NOT NULL DEFAULT '0',
  `param1` varchar(15) NOT NULL DEFAULT '',
  `get_time` bigint(20) NOT NULL DEFAULT '0',
  `failure_time` bigint(20) NOT NULL DEFAULT '0',
  `mark` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_shareboss_info
-- ----------------------------
DROP TABLE IF EXISTS `user_shareboss_info`;
CREATE TABLE `user_shareboss_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `boss_key_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `born_time` bigint(20) NOT NULL DEFAULT '0',
  `all_life` bigint(20) NOT NULL DEFAULT '0',
  `remain_time` bigint(20) NOT NULL DEFAULT '0',
  `multi_arg` int(11) NOT NULL DEFAULT '0',
  `find_user_id` bigint(20) NOT NULL DEFAULT '0',
  `find_level` int(11) NOT NULL DEFAULT '0',
  `finder_name` varchar(20) NOT NULL DEFAULT '',
  `cur_life` bigint(20) NOT NULL DEFAULT '0',
  `kill_time` bigint(20) NOT NULL DEFAULT '0',
  `kill_user_id` bigint(20) NOT NULL DEFAULT '0',
  `fight_user_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_boss_key_id` (`boss_key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_shareboss_join
-- ----------------------------
DROP TABLE IF EXISTS `user_shareboss_join`;
CREATE TABLE `user_shareboss_join` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `boss_key_id` int(11) NOT NULL DEFAULT '0',
  `join_type` int(11) NOT NULL DEFAULT '0',
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `user_level` int(11) NOT NULL DEFAULT '0',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  `is_get_award` int(11) NOT NULL DEFAULT '0',
  `all_dmg` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_boss_key_id` (`boss_key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_shop
-- ----------------------------
DROP TABLE IF EXISTS `user_shop`;
CREATE TABLE `user_shop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `purchase_amount` int(11) NOT NULL DEFAULT '0',
  `last_refresh` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_shop_refresh
-- ----------------------------
DROP TABLE IF EXISTS `user_shop_refresh`;
CREATE TABLE `user_shop_refresh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `shop_type` int(11) NOT NULL DEFAULT '0',
  `item1` int(11) NOT NULL DEFAULT '0',
  `purchase_num1` int(11) NOT NULL DEFAULT '0',
  `item2` int(11) NOT NULL DEFAULT '0',
  `purchase_num2` int(11) NOT NULL DEFAULT '0',
  `item3` int(11) NOT NULL DEFAULT '0',
  `purchase_num3` int(11) NOT NULL DEFAULT '0',
  `item4` int(11) NOT NULL DEFAULT '0',
  `purchase_num4` int(11) NOT NULL DEFAULT '0',
  `item5` int(11) NOT NULL DEFAULT '0',
  `purchase_num5` int(11) NOT NULL DEFAULT '0',
  `item6` int(11) NOT NULL DEFAULT '0',
  `purchase_num6` int(11) NOT NULL DEFAULT '0',
  `item7` int(11) NOT NULL DEFAULT '0',
  `purchase_num7` int(11) NOT NULL DEFAULT '0',
  `item8` int(11) NOT NULL DEFAULT '0',
  `purchase_num8` int(11) NOT NULL DEFAULT '0',
  `item9` int(11) NOT NULL DEFAULT '0',
  `purchase_num9` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_supply_card
-- ----------------------------
DROP TABLE IF EXISTS `user_supply_card`;
CREATE TABLE `user_supply_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `supply_card_id` int(11) NOT NULL DEFAULT '0',
  `due_time` bigint(20) NOT NULL DEFAULT '0',
  `last_pick` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_syn_mail
-- ----------------------------
DROP TABLE IF EXISTS `user_syn_mail`;
CREATE TABLE `user_syn_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `syn_name` varchar(15) NOT NULL DEFAULT '',
  `param1` varchar(15) NOT NULL DEFAULT '',
  `param2` varchar(15) NOT NULL DEFAULT '',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `get_time` bigint(20) NOT NULL DEFAULT '0',
  `failure_time` bigint(20) NOT NULL DEFAULT '0',
  `mark` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_system_mail
-- ----------------------------
DROP TABLE IF EXISTS `user_system_mail`;
CREATE TABLE `user_system_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `mail_id` int(11) NOT NULL DEFAULT '0',
  `get_time` bigint(20) NOT NULL DEFAULT '0',
  `failure_time` bigint(20) NOT NULL DEFAULT '0',
  `mark` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_task
-- ----------------------------
DROP TABLE IF EXISTS `user_task`;
CREATE TABLE `user_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskid` int(10) unsigned NOT NULL DEFAULT '0',
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `quality` int(11) NOT NULL DEFAULT '0',
  `finish_flag` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `data4` int(11) NOT NULL DEFAULT '0',
  `data5` int(11) NOT NULL DEFAULT '0',
  `data6` int(11) NOT NULL DEFAULT '0',
  `data7` int(11) NOT NULL DEFAULT '0',
  `finish_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_task_finished
-- ----------------------------
DROP TABLE IF EXISTS `user_task_finished`;
CREATE TABLE `user_task_finished` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `data1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data4` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data5` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data6` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data7` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data8` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data9` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data10` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data11` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data12` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data13` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data14` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data15` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data16` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data17` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data18` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data19` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data20` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data21` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data22` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data23` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data24` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data25` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data26` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data27` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data28` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data29` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data30` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_temp_data
-- ----------------------------
DROP TABLE IF EXISTS `user_temp_data`;
CREATE TABLE `user_temp_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL DEFAULT '0',
  `temp_data_id` int(10) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `data4` int(11) NOT NULL DEFAULT '0',
  `data5` int(11) NOT NULL DEFAULT '0',
  `data6` int(11) NOT NULL DEFAULT '0',
  `data7` int(11) NOT NULL DEFAULT '0',
  `data8` int(11) NOT NULL DEFAULT '0',
  `record_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_times
-- ----------------------------
DROP TABLE IF EXISTS `user_times`;
CREATE TABLE `user_times` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  `emoney_times` int(11) NOT NULL DEFAULT '0',
  `change_times` bigint(20) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_training
-- ----------------------------
DROP TABLE IF EXISTS `user_training`;
CREATE TABLE `user_training` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `unlock_data1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pass_data1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `reward_data1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `unlock_data2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pass_data2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `reward_data2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `unlock_data3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pass_data3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `reward_data3` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for valve
-- ----------------------------
DROP TABLE IF EXISTS `valve`;
CREATE TABLE `valve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `valve_status` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
