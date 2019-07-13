--
-- Table structure for table `award_acquire`
--

DROP TABLE IF EXISTS `award_acquire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_acquire` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `award_id` int(11) NOT NULL DEFAULT '0',
  `award_group` int(11) NOT NULL DEFAULT '0',
  `itemtype_id` bigint(20) NOT NULL DEFAULT '0',
  `item_num` int(11) NOT NULL DEFAULT '0',
  `max_get_rate` int(11) NOT NULL DEFAULT '0',
  `min_get_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `desc` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copy_map`
--

DROP TABLE IF EXISTS `copy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `map_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `req_level` int(11) NOT NULL DEFAULT '0',
  `rec_fight_power` int(11) NOT NULL DEFAULT '0',
  `rewardid` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equip_enhance`
--

DROP TABLE IF EXISTS `equip_enhance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equip_enhance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quality` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `odd` int(11) NOT NULL DEFAULT '0',
  `main_attr_add1` int(11) NOT NULL DEFAULT '0',
  `main_attr_add2` int(11) NOT NULL DEFAULT '0',
  `user_level` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `material1` bigint(20) NOT NULL DEFAULT '0',
  `count1` int(11) NOT NULL DEFAULT '0',
  `material2` bigint(20) NOT NULL DEFAULT '0',
  `count2` int(11) NOT NULL DEFAULT '0',
  `material3` bigint(20) NOT NULL DEFAULT '0',
  `count3` int(11) NOT NULL DEFAULT '0',
  `material4` bigint(20) NOT NULL DEFAULT '0',
  `count4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equip_up_star`
--

DROP TABLE IF EXISTS `equip_up_star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equip_up_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_type` bigint(20) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `main_attr_add` int(11) NOT NULL DEFAULT '0',
  `effect_id` bigint(20) NOT NULL DEFAULT '0',
  `attr_type1` int(11) NOT NULL DEFAULT '0',
  `attr_value1` int(11) NOT NULL DEFAULT '0',
  `attr_type2` int(11) NOT NULL DEFAULT '0',
  `attr_value2` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `item_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exp_ball`
--

DROP TABLE IF EXISTS `exp_ball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_ball` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_type` int(11) NOT NULL DEFAULT '0',
  `type_value` int(11) NOT NULL DEFAULT '0',
  `add_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_map`
--

DROP TABLE IF EXISTS `game_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `group` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hero`
--

DROP TABLE IF EXISTS `hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ownerid` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `typeid` bigint(20) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hero_exp`
--

DROP TABLE IF EXISTS `hero_exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero_exp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `need_exp` int(11) NOT NULL DEFAULT '0',
  `lev_req` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hero_levup`
--

DROP TABLE IF EXISTS `hero_levup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero_levup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL DEFAULT '0',
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `mgc_def` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hero_type`
--

DROP TABLE IF EXISTS `hero_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `family` int(11) NOT NULL DEFAULT '0',
  `profession` smallint(6) NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL DEFAULT '0',
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
  `hitback_rate` int(11) NOT NULL DEFAULT '0',
  `hitback_def_rate` int(11) NOT NULL DEFAULT '0',
  `dmg_add` int(11) NOT NULL DEFAULT '0',
  `dmg_cut` int(11) NOT NULL DEFAULT '0',
  `ice_atk` int(11) NOT NULL DEFAULT '0',
  `fire_atk` int(11) NOT NULL DEFAULT '0',
  `dark_atk` int(11) NOT NULL DEFAULT '0',
  `light_atk` int(11) NOT NULL DEFAULT '0',
  `ice_def` int(11) NOT NULL DEFAULT '0',
  `fire_def` int(11) NOT NULL DEFAULT '0',
  `dark_def` int(11) NOT NULL DEFAULT '0',
  `light_def` int(11) NOT NULL DEFAULT '0',
  `max_xp` int(11) NOT NULL DEFAULT '0',
  `init_xp` int(11) NOT NULL DEFAULT '0',
  `power_max` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `skill_que` varchar(256) NOT NULL DEFAULT '',
  `skill_loop_que` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `itemtype`
--

DROP TABLE IF EXISTS `itemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemtype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `amount_limit` int(11) NOT NULL DEFAULT '0',
  `flag` bigint(20) unsigned NOT NULL DEFAULT '0',
  `price` bigint(20) NOT NULL DEFAULT '0',
  `awardid` int(11) NOT NULL DEFAULT '0',
  `actionid` bigint(20) NOT NULL DEFAULT '0',
  `limit_wear_race` int(11) NOT NULL DEFAULT '0',
  `main_attr1_type` int(11) NOT NULL DEFAULT '0',
  `main_attr1_val` int(11) NOT NULL DEFAULT '0',
  `main_attr2_type` int(11) NOT NULL DEFAULT '0',
  `main_attr2_val` int(11) NOT NULL DEFAULT '0',
  `prefix` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monster`
--

DROP TABLE IF EXISTS `monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fight` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `attr_id` bigint(20) NOT NULL DEFAULT '0',
  `skill_que` varchar(256) NOT NULL DEFAULT '',
  `skill_loop_que` varchar(256) NOT NULL DEFAULT '',
  `action_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monster_attr`
--

DROP TABLE IF EXISTS `monster_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monster_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL DEFAULT '0',
  `dmg_type` smallint(6) NOT NULL DEFAULT '0',
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `mgc_def` int(11) NOT NULL DEFAULT '0',
  `hit_rate` int(11) NOT NULL DEFAULT '0',
  `dodge_rate` int(11) NOT NULL DEFAULT '0',
  `critical_rate` int(11) NOT NULL DEFAULT '0',
  `critical_dmg` int(11) NOT NULL DEFAULT '0',
  `critical_def` int(11) NOT NULL DEFAULT '0',
  `parry_rate` int(11) NOT NULL DEFAULT '0',
  `parry_def` int(11) NOT NULL DEFAULT '0',
  `hitbreak_rate` int(11) NOT NULL DEFAULT '0',
  `hitback_rate` int(11) NOT NULL DEFAULT '0',
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monster_generator`
--

DROP TABLE IF EXISTS `monster_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monster_generator` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mapid` bigint(20) NOT NULL DEFAULT '0',
  `monsteamid` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monster_team`
--

DROP TABLE IF EXISTS `monster_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monster_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `mons1_id` bigint(20) NOT NULL DEFAULT '0',
  `mons2_id` bigint(20) NOT NULL DEFAULT '0',
  `mons3_id` bigint(20) NOT NULL DEFAULT '0',
  `mons4_id` bigint(20) NOT NULL DEFAULT '0',
  `mons5_id` bigint(20) NOT NULL DEFAULT '0',
  `begin_actionid` bigint(20) NOT NULL DEFAULT '0',
  `end_actionid` bigint(20) NOT NULL DEFAULT '0',
  `drop_gold` int(11) NOT NULL DEFAULT '0',
  `team_exp` int(11) NOT NULL DEFAULT '0',
  `hero_exp` int(11) NOT NULL DEFAULT '0',
  `award_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rand_name`
--

DROP TABLE IF EXISTS `rand_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rand_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skill_pos`
--

DROP TABLE IF EXISTS `skill_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_pos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(20) NOT NULL DEFAULT '',
  `pos_time` int(11) NOT NULL DEFAULT '0',
  `qte_front` int(11) NOT NULL DEFAULT '0',
  `pos_sketch` smallint(6) NOT NULL DEFAULT '0',
  `pos_type` int(11) NOT NULL DEFAULT '0',
  `eft_type` smallint(6) NOT NULL DEFAULT '0',
  `atk_type` int(11) NOT NULL DEFAULT '0',
  `eft_camp` smallint(6) NOT NULL DEFAULT '0',
  `target_type` smallint(6) NOT NULL DEFAULT '0',
  `cont_atk_num` int(11) NOT NULL DEFAULT '0',
  `status_id_conseq` int(11) NOT NULL DEFAULT '0',
  `dmg_type` smallint(6) NOT NULL DEFAULT '0',
  `dmg_rate` int(11) NOT NULL DEFAULT '0',
  `dmg_add_stable` int(11) NOT NULL DEFAULT '0',
  `dmg_add_critical` int(11) NOT NULL DEFAULT '0',
  `ignore_phy_def_rate` int(11) NOT NULL DEFAULT '0',
  `ignore_mgc_def_rate` int(11) NOT NULL DEFAULT '0',
  `ignore_endure` smallint(6) NOT NULL DEFAULT '0',
  `ignore_hitback` smallint(6) NOT NULL DEFAULT '0',
  `ignore_dodge` smallint(6) NOT NULL DEFAULT '0',
  `ignore_parry` smallint(6) NOT NULL DEFAULT '0',
  `element_type` int(11) NOT NULL DEFAULT '0',
  `element_value` int(11) NOT NULL DEFAULT '0',
  `mp_revert` int(11) NOT NULL DEFAULT '0',
  `xp_revert` int(11) NOT NULL DEFAULT '0',
  `display_conseq` smallint(6) NOT NULL DEFAULT '0',
  `display_conseq_rate` int(11) NOT NULL DEFAULT '0',
  `skill_id_flight_conseq` int(11) NOT NULL DEFAULT '0',
  `need_enemy_display` smallint(6) NOT NULL DEFAULT '0',
  `pos_conseq_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skill_type`
--

DROP TABLE IF EXISTS `skill_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_type` int(10) unsigned NOT NULL DEFAULT '0',
  `hitbreak_type` int(10) unsigned NOT NULL DEFAULT '0',
  `cd_time` int(11) NOT NULL DEFAULT '0',
  `use_times` int(11) NOT NULL DEFAULT '0',
  `overlay_limit` int(11) NOT NULL DEFAULT '0',
  `skill_queue` varchar(256) NOT NULL DEFAULT '',
  `status_conseq` varchar(256) NOT NULL DEFAULT '',
  `need_hero_level` int(11) NOT NULL DEFAULT '0',
  `mp_revert` int(11) NOT NULL DEFAULT '0',
  `mp_expend` int(11) NOT NULL DEFAULT '0',
  `xp_revert` int(11) NOT NULL DEFAULT '0',
  `xp_expend` int(11) NOT NULL DEFAULT '0',
  `up_coin` int(11) NOT NULL DEFAULT '0',
  `up_stuff1` int(11) NOT NULL DEFAULT '0',
  `up_stuffnum1` int(11) NOT NULL DEFAULT '0',
  `up_stuff2` int(11) NOT NULL DEFAULT '0',
  `up_stuffnum2` int(11) NOT NULL DEFAULT '0',
  `up_stuff3` int(11) NOT NULL DEFAULT '0',
  `up_stuffnum3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `buff_type` smallint(6) NOT NULL DEFAULT '0',
  `status_level` smallint(6) NOT NULL DEFAULT '0',
  `eft_time` smallint(6) NOT NULL DEFAULT '0',
  `continue_time` int(11) NOT NULL DEFAULT '0',
  `interval` int(11) NOT NULL DEFAULT '0',
  `trigger_rate` int(11) NOT NULL DEFAULT '0',
  `status_type` int(11) NOT NULL DEFAULT '0',
  `status_cover` varchar(128) NOT NULL DEFAULT '',
  `overlay` int(11) NOT NULL DEFAULT '0',
  `layer_limit` int(11) NOT NULL DEFAULT '0',
  `buff_value1` int(11) NOT NULL DEFAULT '0',
  `buff_value2` int(11) NOT NULL DEFAULT '0',
  `buff_value3` int(11) NOT NULL DEFAULT '0',
  `trigger_group` int(11) NOT NULL DEFAULT '0',
  `element_type1` int(11) NOT NULL DEFAULT '0',
  `element_equation1` int(11) NOT NULL DEFAULT '0',
  `element_value1` int(11) NOT NULL DEFAULT '0',
  `element_type2` int(11) NOT NULL DEFAULT '0',
  `element_equation2` int(11) NOT NULL DEFAULT '0',
  `element_value2` int(11) NOT NULL DEFAULT '0',
  `element_type3` int(11) NOT NULL DEFAULT '0',
  `element_equation3` int(11) NOT NULL DEFAULT '0',
  `element_value3` int(11) NOT NULL DEFAULT '0',
  `eft_camp` smallint(6) NOT NULL DEFAULT '0',
  `target_type` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `step` int(11) NOT NULL DEFAULT '0',
  `data1` int(10) unsigned NOT NULL DEFAULT '0',
  `data2` int(10) unsigned NOT NULL DEFAULT '0',
  `data3` int(10) unsigned NOT NULL DEFAULT '0',
  `data4` int(10) unsigned NOT NULL DEFAULT '0',
  `data5` int(10) unsigned NOT NULL DEFAULT '0',
  `data6` int(10) unsigned NOT NULL DEFAULT '0',
  `data7` int(10) unsigned NOT NULL DEFAULT '0',
  `data8` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `idaccount` bigint(20) NOT NULL DEFAULT '0',
  `fight_power` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `emoney` bigint(20) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `user_exp` int(11) NOT NULL DEFAULT '0',
  `vip_level` int(11) NOT NULL DEFAULT '0',
  `vip_exp` int(11) NOT NULL DEFAULT '0',
  `cripsid` bigint(20) NOT NULL DEFAULT '0',
  `reg_time` bigint(20) NOT NULL DEFAULT '0',
  `last_login` bigint(20) NOT NULL DEFAULT '0',
  `last_logout` bigint(20) NOT NULL DEFAULT '0',
  `expball_value` int(11) NOT NULL DEFAULT '0',
  `show_hero_id` bigint(20) NOT NULL DEFAULT '0',
  `trand_money` bigint(20) NOT NULL DEFAULT '0',
  `god_source` int(11) NOT NULL DEFAULT '0',
  `crips_tax` int(11) NOT NULL DEFAULT '0',
  `icon_id` bigint(20) NOT NULL DEFAULT '0',
  `mapid` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_equip`
--

DROP TABLE IF EXISTS `user_equip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_equip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `playerid` bigint(20) NOT NULL DEFAULT '0',
  `item_type` bigint(20) NOT NULL DEFAULT '0',
  `chk_sum` int(11) NOT NULL DEFAULT '0',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `flag` bigint(20) unsigned NOT NULL DEFAULT '0',
  `enhance_level` int(11) NOT NULL DEFAULT '0',
  `star_level` int(11) NOT NULL DEFAULT '0',
  `sign_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_equip_limit`
--

DROP TABLE IF EXISTS `user_equip_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_equip_limit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_type` bigint(20) NOT NULL DEFAULT '0',
  `limit_wear_hero` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_exp`
--

DROP TABLE IF EXISTS `user_exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_exp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `need_exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_material`
--

DROP TABLE IF EXISTS `user_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_material` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `playerid` bigint(20) NOT NULL DEFAULT '0',
  `item_type` bigint(20) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dump completed on 2017-03-15 11:42:29
DROP TABLE IF EXISTS `user_equip_sign`;
CREATE TABLE `user_equip_sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quality` int(11) NOT NULL DEFAULT '0',
  `need_gold` int(11) NOT NULL DEFAULT '0',
  `id_material1` bigint(20) NOT NULL DEFAULT '0',
  `num_material1` int(11) NOT NULL DEFAULT '0',
  `id_material2` bigint(20) NOT NULL DEFAULT '0',
  `num_material2` int(11) NOT NULL DEFAULT '0',
  `id_material3` bigint(20) NOT NULL DEFAULT '0',
  `num_material3` int(11) NOT NULL DEFAULT '0',
  `id_material4` bigint(20) NOT NULL DEFAULT '0',
  `num_material4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `user_equip_sign_eft`;
CREATE TABLE `user_equip_sign_eft` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `need_sign_type` int(11) NOT NULL DEFAULT '0',
  `need_quality` int(11) NOT NULL DEFAULT '0',
  `need_num` int(11) NOT NULL DEFAULT '0',
  `eft_attr_type` int(11) NOT NULL DEFAULT '0',
  `eft_attr_val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




-- 2017-04-12 Q1.3 change----------------
DROP TABLE IF EXISTS `gen_event`;
CREATE TABLE `gen_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mapid` bigint(20) NOT NULL DEFAULT '0',
  `event_type` int(11) NOT NULL DEFAULT '0',
  `event_id` bigint(20) NOT NULL DEFAULT '0',
  `portal` varchar(64) NOT NULL DEFAULT '',
  `lookface` int(11) NOT NULL DEFAULT '0',
  `rotation` varchar(64) NOT NULL DEFAULT '',
  `scale` float NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `data` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `npc_group`;
CREATE TABLE `npc_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `req_level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `monster_team`;

CREATE TABLE `monster_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monster` varchar(128) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `user_exp` int(11) NOT NULL DEFAULT '0',
  `hero_exp` int(11) NOT NULL DEFAULT '0',
  `reward_id` int(11) NOT NULL DEFAULT '0',
  `action_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS `skill_pos`;

CREATE TABLE `skill_pos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `type_qte` smallint(6) NOT NULL DEFAULT '0',
  `portal_qte` varchar(256) NOT NULL DEFAULT '',
  `qte_time` int(11) NOT NULL DEFAULT '0',
  `type_skill` smallint(6) NOT NULL DEFAULT '0',
  `affect_faction` smallint(6) NOT NULL DEFAULT '0',
  `target_rule` smallint(6) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  `spe_eft_id` varchar(256) NOT NULL DEFAULT '',
  `dmg_type` smallint(6) NOT NULL DEFAULT '0',
  `dmg_odd` int(11) NOT NULL DEFAULT '0',
  `const_dmg` int(11) NOT NULL DEFAULT '0',
  `crit_bonus` int(11) NOT NULL DEFAULT '0',
  `ignore_phy_def` int(11) NOT NULL DEFAULT '0',
  `ignore_mgc_def` int(11) NOT NULL DEFAULT '0',
  `ignore_invulnerability` smallint(6) NOT NULL DEFAULT '0',
  `ignore_counter` smallint(6) NOT NULL DEFAULT '0',
  `ignore_dodge` smallint(6) NOT NULL DEFAULT '0',
  `ignore_parry` smallint(6) NOT NULL DEFAULT '0',
  `element_type` smallint(6) NOT NULL DEFAULT '0',
  `element_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `skill_type`;

CREATE TABLE `skill_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skillmainid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(15) NOT NULL DEFAULT '',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `next_type` varchar(256) NOT NULL DEFAULT '',
  `cd` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `combos` varchar(256) NOT NULL DEFAULT '',
  `need_num` int(11) NOT NULL DEFAULT '0',
  `status` varchar(256) NOT NULL DEFAULT '',
  `spe_eft_id` varchar(256) NOT NULL DEFAULT '',
  `condition` int(11) NOT NULL DEFAULT '0',
  `percent` int(11) NOT NULL DEFAULT '0',
  `hero_level` int(11) NOT NULL DEFAULT '0',
  `energy_cost` int(11) NOT NULL DEFAULT '0',
  `energy_revent` int(11) NOT NULL DEFAULT '0',
  `xp_cost` int(11) NOT NULL DEFAULT '0',
  `xp_revent` int(11) NOT NULL DEFAULT '0',
  `gold_require` int(11) NOT NULL DEFAULT '0',
  `item_require1` int(11) NOT NULL DEFAULT '0',
  `item_require1_num` int(11) NOT NULL DEFAULT '0',
  `item_require2` int(11) NOT NULL DEFAULT '0',
  `item_require2_num` int(11) NOT NULL DEFAULT '0',
  `item_require3` int(11) NOT NULL DEFAULT '0',
  `item_require3_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(15) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `affect_faction` smallint(6) NOT NULL DEFAULT '0',
  `target_rule` smallint(6) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `trigger_time` int(11) NOT NULL DEFAULT '0',
  `trigger_percent` int(11) NOT NULL DEFAULT '0',
  `ishelpful` smallint(6) NOT NULL DEFAULT '0',
  `override_id` varchar(256) NOT NULL DEFAULT '',
  `max_overlying` int(11) NOT NULL DEFAULT '0',
  `parm1` int(11) NOT NULL DEFAULT '0',
  `parm2` int(11) NOT NULL DEFAULT '0',
  `parm3` int(11) NOT NULL DEFAULT '0',
  `attr_group` int(11) NOT NULL DEFAULT '0',
  `attr_type1` int(11) NOT NULL DEFAULT '0',
  `attr_sum1` int(11) NOT NULL DEFAULT '0',
  `attr_parm1` int(11) NOT NULL DEFAULT '0',
  `attr_type2` int(11) NOT NULL DEFAULT '0',
  `attr_sum2` int(11) NOT NULL DEFAULT '0',
  `attr_parm2` int(11) NOT NULL DEFAULT '0',
  `attr_type3` int(11) NOT NULL DEFAULT '0',
  `attr_sum3` int(11) NOT NULL DEFAULT '0',
  `attr_parm3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `monster_generator`;

-- 2017-04-12 Q1.3 change----------------

-- 2017-4-18 修改user表字段名
alter table user change trand_money trade_money bigint(20) not null default 0;

-- 2017-4-27 取名屏蔽字
CREATE TABLE `unlawful_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `word` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 2017-5-4 副本功能
CREATE TABLE `times_limit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  `desc` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_times` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table hero add formation int(11) not null default 0;
alter table user add times_update int(11) not null default 0;
update hero set formation = 1;

DROP TABLE IF EXISTS `copy_map`;

alter table `game_map` add column (
	`sence_id` bigint(20) NOT NULL DEFAULT '0',
	`map_attr` int(11) NOT NULL DEFAULT '0',
	`map_times`int(11) NOT NULL DEFAULT '0',
	`mons_group_id` bigint(20) NOT NULL DEFAULT '0',
	`money` bigint(20) NOT NULL DEFAULT '0',
  `user_exp` int(11) NOT NULL DEFAULT '0',
	`hero_exp` int(11) NOT NULL DEFAULT '0',
	`reward_id` bigint(20) NOT NULL DEFAULT '0');

alter table monster add owned_skills varchar(256) NOT NULL DEFAULT '';


alter table `gen_event` add column (
	`portal_id` bigint(20) NOT NULL DEFAULT '0',
	`flag` int(11) NOT NULL DEFAULT '0');

alter table monster_team add max_battle_time int(11) not null default 0;


CREATE TABLE `special_effect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '',
  `percent` int(11) NOT NULL DEFAULT '0',
  `listen_actor` int(11) NOT NULL DEFAULT '0',
  `listen_chance` int(11) NOT NULL DEFAULT '0',
  `trigger_type` int(11) NOT NULL DEFAULT '0',
  `trigger_arg1` int(11) NOT NULL DEFAULT '0',
  `trigger_arg2` int(11) NOT NULL DEFAULT '0',
  `trigger_arg3` int(11) NOT NULL DEFAULT '0',
  `respond_actor` int(11) NOT NULL DEFAULT '0',
  `respond_type` int(11) NOT NULL DEFAULT '0',
  `respond_arg1` int(11) NOT NULL DEFAULT '0',
  `respond_arg2` int(11) NOT NULL DEFAULT '0',
  `respond_arg3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table `skill_type` drop column time; 

alter table `skill_type` add column (
  `affect_faction` smallint(6) NOT NULL DEFAULT '0',
  `target_rule` smallint(6) NOT NULL DEFAULT '0');


alter table `skill_pos` drop column affect_faction; 
alter table `skill_pos` drop column target_rule; 

alter table `user` add column (
  `copy_map_stutus` int(11) NOT NULL DEFAULT '0',
  `wood` int(11) NOT NULL DEFAULT '0',
  `crystal` int(11) NOT NULL DEFAULT '0',
  `cloth` int(11) NOT NULL DEFAULT '0',
  `iron` int(11) NOT NULL DEFAULT '0');
-- v1.6版本

-- 修改任务表结构 2017-6-6
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskid` int(10) unsigned NOT NULL DEFAULT '0',
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `finish_flag` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  `data3` int(11) NOT NULL DEFAULT '0',
  `data4` int(11) NOT NULL DEFAULT '0',
  `data5` int(11) NOT NULL DEFAULT '0',
  `data6` int(11) NOT NULL DEFAULT '0',
  `data7` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 已完成任务掩码表
CREATE TABLE `task_finished` (
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 任务掩码表
CREATE TABLE `task_index` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskid` int(10) unsigned NOT NULL DEFAULT '0',
  `data_index` int(10) unsigned NOT NULL DEFAULT '0',
  `mask_index` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 传送功能 2017-6-8
alter table user add transfer_mask bigint(20) unsigned not null default 0;

-- v1.7版本

DROP TABLE IF EXISTS `equip_enhance`;

DROP TABLE IF EXISTS `equip_up_star`;

DROP TABLE IF EXISTS `user_equip`;

DROP TABLE IF EXISTS `user_equip_limit`;

DROP TABLE IF EXISTS `user_equip_sign`;

DROP TABLE IF EXISTS `user_equip_sign_eft`;


-- 修改user表字段名
alter table user change copy_map_stutus copy_map_status int(11) not null default 0;

-- 装备系统

CREATE TABLE `equipment_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
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
  `material_id1` bigint(20) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `equipment_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `part` int(11) NOT NULL DEFAULT '0',
  `star` int(11) NOT NULL DEFAULT '0',
  `need_order` int(11) NOT NULL DEFAULT '0',
  `bonus_percentage` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `material_id1` bigint(20) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  `material_id2` bigint(20) NOT NULL DEFAULT '0',
  `material_num2` int(11) NOT NULL DEFAULT '0',
  `material_id3` bigint(20) NOT NULL DEFAULT '0',
  `material_num3` int(11) NOT NULL DEFAULT '0',
  `material_id4` bigint(20) NOT NULL DEFAULT '0',
  `material_num4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `equipment_strengthen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `part` int(11) NOT NULL DEFAULT '0',
  `strengthen_level` int(11) NOT NULL DEFAULT '0',
  `limit_hero_level` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `material_id1` bigint(20) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  `material_id2` bigint(20) NOT NULL DEFAULT '0',
  `material_num2` int(11) NOT NULL DEFAULT '0',
  `material_id3` bigint(20) NOT NULL DEFAULT '0',
  `material_num3` int(11) NOT NULL DEFAULT '0',
  `material_id4` bigint(20) NOT NULL DEFAULT '0',
  `material_num4` int(11) NOT NULL DEFAULT '0',
  `success_rate` int(11) NOT NULL DEFAULT '0',
  `add_success_rate` int(11) NOT NULL DEFAULT '0',
  `max_success_rate` int(11) NOT NULL DEFAULT '0',
  `return_level` int(11) NOT NULL DEFAULT '0',
  `clear` int(11) NOT NULL DEFAULT '0',
  `max_times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `hero_equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `part` int(11) NOT NULL DEFAULT '0',
  `order_level` int(11) NOT NULL DEFAULT '0',
  `star` int(11) NOT NULL DEFAULT '0',
  `strengthen_level` int(11) NOT NULL DEFAULT '0',
  `failure_times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table hero add hero_rank int(11) not null default 0;
alter table hero add hero_class int(11) not null default 0;

CREATE TABLE `hero_rank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_type_id` bigint(20) NOT NULL DEFAULT '0',
  `hero_rank` int(11) NOT NULL DEFAULT '0',
  `level_require` int(11) NOT NULL DEFAULT '0',
  `classes` int(11) NOT NULL DEFAULT '0',
  `material_id1` bigint(20) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  `material_id2` bigint(20) NOT NULL DEFAULT '0',
  `material_num2` int(11) NOT NULL DEFAULT '0',
  `material_id3` bigint(20) NOT NULL DEFAULT '0',
  `material_num3` int(11) NOT NULL DEFAULT '0',
  `material_id4` bigint(20) NOT NULL DEFAULT '0',
  `material_num4` int(11) NOT NULL DEFAULT '0',
  `cost_money` bigint(20) NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_def` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `skill_point` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `hero_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_type_id` bigint(20) NOT NULL DEFAULT '0',
  `hero_class` int(11) NOT NULL DEFAULT '0',
  `level_require` int(11) NOT NULL DEFAULT '0',
  `rank_require` int(11) NOT NULL DEFAULT '0',
  `task_id` bigint(20) NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_def` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `skill_level_max` int(11) NOT NULL DEFAULT '0',
  `fashion_id`bigint(20)  NOT NULL DEFAULT '0',
  `skill_point` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 初始英雄数据

alter table hero_type add start_level int(11) not null default 0;
alter table hero_type add start_class int(11) not null default 0;
alter table hero_type add start_order int(11) not null default 0;
alter table hero_type add start_strengthen_level int(11) not null default 0;
alter table hero_type add start_star int(11) not null default 0;
alter table hero_type add start_skill_points int(11) not null default 0;
alter table hero_type add sex int(11) not null default 0;

alter table hero add skill_points int(11) not null default 0;
alter table hero add reset_first int(11) not null default 0;

alter table skill_type add skill_points_require int(11) not null default 0;
alter table skill_type add classes_require int(11) not null default 0;

CREATE TABLE `hero_skill_condition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `skillmainid` int(10) unsigned NOT NULL DEFAULT '0',
  `hero_level` int(11) NOT NULL DEFAULT '0',
  `hero_class` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table monster add sex int(11) not null default 0;
alter table hero_type drop speed;

alter table user AUTO_INCREMENT = 3000000000;
alter table hero AUTO_INCREMENT = 2000000000;

CREATE TABLE `default_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cur_index` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- v2.0 dbTableTidy

alter table hero rename to user_hero;
alter table hero_skill_condition rename to hero_skill_unlock;
alter table skill rename to user_hero_skill;
alter table monster_attr rename to attribute;
alter table task rename to user_task;
alter table task_finished rename to user_task_finished;

alter table game_map add exp_ball int(11) NOT NULL DEFAULT '0' after hero_exp;

alter table monster_team add exp_ball int(11) NOT NULL DEFAULT '0' after hero_exp;

alter table special_effect add respond_arg4 varchar(128) NOT NULL DEFAULT '';
alter table special_effect add position int(11) NOT NULL DEFAULT '0' after Percent;
alter table special_effect add isalive int(11) NOT NULL DEFAULT '0' after position;
alter table special_effect drop name;

alter table hero_type add attr_id bigint(20) NOT NULL DEFAULT '0' after profession;
alter table hero_type change sex sex int(11) NOT NULL DEFAULT '0' after id;
alter table hero_type drop life;
alter table hero_type drop phy_atk;
alter table hero_type drop mgc_atk;
alter table hero_type drop phy_def;
alter table hero_type drop mgc_def;
alter table hero_type drop life_add;
alter table hero_type drop phy_atk_add;
alter table hero_type drop mgc_atk_add;
alter table hero_type drop phy_def_add;
alter table hero_type drop mgc_def_add;
alter table hero_type drop hit_rate;
alter table hero_type drop dodge_rate;
alter table hero_type drop critical_rate;
alter table hero_type drop critical_dmg;
alter table hero_type drop critical_def;
alter table hero_type drop parry_rate;
alter table hero_type drop hitbreak_rate;
alter table hero_type drop hitback_rate;
alter table hero_type drop hitback_def_rate;
alter table hero_type drop dmg_add;
alter table hero_type drop dmg_cut;
alter table hero_type drop ice_atk;
alter table hero_type drop fire_atk;
alter table hero_type drop dark_atk;
alter table hero_type drop light_atk;
alter table hero_type drop ice_def;
alter table hero_type drop fire_def;
alter table hero_type drop dark_def;
alter table hero_type drop light_def;
alter table hero_type drop max_xp;
alter table hero_type drop init_xp;
alter table hero_type drop power_max;
alter table hero_type drop parry_def;
alter table hero_type drop name;

alter table attribute drop type;
alter table attribute drop level;
alter table attribute drop dmg_type;
alter table attribute drop hitback_rate;
alter table attribute add life_add int(11) NOT NULL DEFAULT '0' after mgc_def;
alter table attribute add phy_atk_add int(11) NOT NULL DEFAULT '0' after life_add;
alter table attribute add mgc_atk_add int(11) NOT NULL DEFAULT '0' after phy_atk_add;
alter table attribute add phy_def_add int(11) NOT NULL DEFAULT '0' after mgc_atk_add;
alter table attribute add mgc_def_add int(11) NOT NULL DEFAULT '0' after phy_def_add;
alter table attribute add hitback_xp int(11) NOT NULL DEFAULT '0' after hitbreak_rate;

DROP TABLE IF EXISTS `skill_type`;
CREATE TABLE `skill_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skillmain_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `next_type` varchar(256) NOT NULL DEFAULT '',
  `cd` int(11) NOT NULL DEFAULT '0',
  `affect_faction` smallint(6) NOT NULL DEFAULT '0',
  `target_rule` smallint(6) NOT NULL DEFAULT '0',
  `combos` varchar(256) NOT NULL DEFAULT '',
  `status` varchar(256) NOT NULL DEFAULT '',
  `status_start` int(11) NOT NULL DEFAULT '0',
  `special_effects` varchar(256) NOT NULL DEFAULT '',
  `hp_cost` int(11) NOT NULL DEFAULT '0',
  `xp_cost` int(11) NOT NULL DEFAULT '0',
  `xp_revert` int(11) NOT NULL DEFAULT '0',
  `gold_require` int(11) NOT NULL DEFAULT '0',
  `item_require1` int(11) NOT NULL DEFAULT '0',
  `item_require1_num` int(11) NOT NULL DEFAULT '0',
  `item_require2` int(11) NOT NULL DEFAULT '0',
  `item_require2_num` int(11) NOT NULL DEFAULT '0',
  `item_require3` int(11) NOT NULL DEFAULT '0',
  `item_require3_num` int(11) NOT NULL DEFAULT '0',
  `skill_points_require` int(11) NOT NULL DEFAULT '0',
  `classes_require` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `skill_pos`;
CREATE TABLE `skill_pos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skill_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `show_time` int(11) NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '',
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

alter table itemtype drop name;

alter table status drop name;

DROP TABLE IF EXISTS `monster`;
CREATE TABLE `monster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fight` int(11) NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '0',
  `family` int(11) NOT NULL DEFAULT '0',
  `profession` int(11) NOT NULL DEFAULT '0',
  `attr_id` bigint(20) NOT NULL DEFAULT '0',
  `special_effects` varchar(256) NOT NULL DEFAULT '',
  `skill_que` varchar(256) NOT NULL DEFAULT '',
  `skill_loop_que` varchar(256) NOT NULL DEFAULT '',
  `action_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table monster_team rename to monster_group;
alter table npc_group drop name;
alter table itemtype drop limit_wear_race;
alter table itemtype drop main_attr1_type;
alter table itemtype drop main_attr1_val;
alter table itemtype drop main_attr2_type;
alter table itemtype drop main_attr2_val;
alter table itemtype drop prefix;

alter table monster drop fight;
alter table times_limit drop `desc`;
alter table monster_group add fight int(11) NOT NULL DEFAULT '0' after id;
alter table monster add own_skills varchar(256) NOT NULL DEFAULT '' after special_effects;

-- v2.1 Optimize
alter table gen_event add intask int(11) NOT NULL DEFAULT '0' ; 

alter table user add name_times int(11) NOT NULL DEFAULT 0;
alter table gen_event drop name;
alter table gen_event drop portal;
alter table gen_event drop lookface;
alter table gen_event drop rotation;
alter table gen_event drop scale;
alter table gen_event drop data;
alter table gen_event change portal_id region_id int(11) NOT NULL DEFAULT '0';

alter table game_map drop name;
alter table game_map drop sence_id;

-- v2.3
alter table gen_event add story_id int(11) NOT NULL DEFAULT 0;

alter table monster_group add attack_status_id bigint(20) NOT NULL DEFAULT '0';
alter table status add clear int(11) NOT NULL DEFAULT '0' after max_superposition;

alter table monster add type int(11) NOT NULL DEFAULT '0' after id;
alter table monster add skill_vis int(11) NOT NULL DEFAULT '0' after skill_que;
alter table monster add skill_que_vis int(11) NOT NULL DEFAULT '0' after skill_loop_que;

-- v2.4
alter table special_effect drop  listen_chance;

-- V2.6

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
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table gen_event add life_time int(11) NOT NULL DEFAULT 0;

CREATE TABLE `icon_mask` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `user_icon` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user add user_icon bigint(20) unsigned NOT NULL DEFAULT 0;
alter table user add show_icon_id int(11) NOT NULL DEFAULT 0;

CREATE TABLE `user_friend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `friend_id` bigint(20) NOT NULL DEFAULT '0',
  `friend_name` varchar(20) NOT NULL DEFAULT '',
  `friend_level` int(11) NOT NULL DEFAULT '0',
  `friend_fight` int(11) NOT NULL DEFAULT '0',
  `friend_vip` int(11) NOT NULL DEFAULT '0',
  `offline_time` bigint(20) NOT NULL DEFAULT '0',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_friend_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `proposer_id` bigint(20) NOT NULL DEFAULT '0',
  `proposer_name` varchar(20) NOT NULL DEFAULT '',
  `proposer_level` int(11) NOT NULL DEFAULT '0',
  `proposer_fight` int(11) NOT NULL DEFAULT '0',
  `proposer_vip` int(11) NOT NULL DEFAULT '0',
  `offline_time` bigint(20) NOT NULL DEFAULT '0',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user add tasklock bigint(20) unsigned not null default 0;


CREATE TABLE `tasklock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area` int(11) NOT NULL DEFAULT '0',
  `town` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- V2.7

alter table `gen_event` add column (
`level_id` int(11) NOT NULL DEFAULT '0');


alter table exp_ball add type int(11) NOT NULL DEFAULT 0 after id;

alter table user add pet_money bigint(20) NOT NULL DEFAULT 0 after emoney;
alter table user add pet_expball int(11) NOT NULL DEFAULT 0 after expball_value;

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
  `skill0_id` bigint(20) NOT NULL DEFAULT '0',
  `skill_num` int(11) NOT NULL DEFAULT '0',
  `pet_money` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `pet_exp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pet_level` int(11) NOT NULL DEFAULT '0',
  `need_pet_exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `pet_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pet_id` bigint(20) NOT NULL DEFAULT '0',
  `star` int(11) NOT NULL DEFAULT '0',
  `life_add` int(11) NOT NULL DEFAULT '0',
  `phy_atk_add` int(11) NOT NULL DEFAULT '0',
  `mgc_atk_add` int(11) NOT NULL DEFAULT '0',
  `phy_def_add` int(11) NOT NULL DEFAULT '0',
  `mgc_def_add` int(11) NOT NULL DEFAULT '0',
  `money` bigint(20) NOT NULL DEFAULT '0',
  `pet_num` int(11) NOT NULL DEFAULT '0',
  `material_id1` bigint(20) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  `material_id2` bigint(20) NOT NULL DEFAULT '0',
  `material_num2` int(11) NOT NULL DEFAULT '0',
  `material_id3` bigint(20) NOT NULL DEFAULT '0',
  `material_num3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_pet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `pet_id` bigint(20) NOT NULL DEFAULT '0',
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `place` int(11) NOT NULL DEFAULT '0',
  `pet_level` int(11) NOT NULL DEFAULT '0',
  `pet_exp` int(11) NOT NULL DEFAULT '0',
  `pet_star` int(11) NOT NULL DEFAULT '0',
  `skill_id1` bigint(20) NOT NULL DEFAULT '0',
  `skill_id2` bigint(20) NOT NULL DEFAULT '0',
  `skill_id3` bigint(20) NOT NULL DEFAULT '0',
  `datel` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `lottery_gift` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `award_id` int(11) NOT NULL DEFAULT '0',
  `award_group` int(11) NOT NULL DEFAULT '0',
  `award_type` int(11) NOT NULL DEFAULT '0',
  `itemtype_id` bigint(20) NOT NULL DEFAULT '0',
  `item_num` int(11) NOT NULL DEFAULT '0',
  `max_get_rate` int(11) NOT NULL DEFAULT '0',
  `min_get_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `pet_gift` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `raffle_type` int(11) NOT NULL DEFAULT '0',
  `need_item` bigint(20) NOT NULL DEFAULT '0',
  `need_num` int(11) NOT NULL DEFAULT '0',
  `need_num_ten` int(11) NOT NULL DEFAULT '0',
  `gift1` int(11) NOT NULL DEFAULT '0',
  `circle` int(11) NOT NULL DEFAULT '0',
  `gift2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `raffle_count` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table game_map add time int(11) NOT NULL DEFAULT 0;

CREATE TABLE `valve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `valve_status` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '0',
  `data2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- PVE V2
alter table monster add level int(11) NOT NULL DEFAULT '0' after profession;
alter table monster add attr_type int(11) NOT NULL DEFAULT '0' after id;

DROP TABLE IF EXISTS `level_adapt`;
CREATE TABLE `level_adapt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attr_type` int(11) NOT NULL DEFAULT '0',
  `hero_level` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `attr_id` bigint(20) NOT NULL DEFAULT '0',
  `attack` int(11) NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL DEFAULT '0',
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `mgc_def`int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- V2.8

alter table game_map add team_max int(11) NOT NULL DEFAULT '0' after map_times;
alter table game_map add team_min int(11) NOT NULL DEFAULT 0 after team_max;
alter table game_map drop mons_group_id;
alter table game_map add fire int(11) NOT NULL DEFAULT 0 after team_min;

CREATE TABLE `copymap_condition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `map_id` bigint(20) NOT NULL DEFAULT '0',
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

CREATE TABLE `fashion_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fashion_name` varchar(20) NOT NULL DEFAULT '',
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `material_id0` bigint(20) NOT NULL DEFAULT '0',
  `material_num0` int(11) NOT NULL DEFAULT '0',
  `material_id1` bigint(20) NOT NULL DEFAULT '0',
  `material_num1` int(11) NOT NULL DEFAULT '0',
  `material_id2` bigint(20) NOT NULL DEFAULT '0',
  `material_num2` int(11) NOT NULL DEFAULT '0',
  `material_id3` bigint(20) NOT NULL DEFAULT '0',
  `material_num3` int(11) NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL DEFAULT '0',
  `phy_atk` int(11) NOT NULL DEFAULT '0',
  `mgc_atk` int(11) NOT NULL DEFAULT '0',
  `phy_def` int(11) NOT NULL DEFAULT '0',
  `mgc_def` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user_hero add wearing_fashion bigint(20) NOT NULL DEFAULT '0';

CREATE TABLE `user_fashion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `hero_id` bigint(20) NOT NULL DEFAULT '0',
  `fashion_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table gen_event add battle_scene int(11) NOT NULL DEFAULT 0;

CREATE TABLE `area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `attach_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table gen_event change region_id path_id int(11) NOT NULL DEFAULT '0';
alter table gen_event add position varchar(64) NOT NULL DEFAULT '' after battle_scene;
alter table gen_event add rotation_y float NOT NULL DEFAULT 0 after position;
alter table gen_event add scale float NOT NULL DEFAULT 0 after rotation_y;

alter table monster_group add battle_check int(11) NOT NULL DEFAULT 0 after max_battle_time;

alter table game_map drop time;

-- 添加表字段name
alter table equipment_order add name varchar(20) NOT NULL DEFAULT '' after id;
alter table equipment_star add name varchar(20) NOT NULL DEFAULT '' after id;
alter table equipment_strengthen add name varchar(20) NOT NULL DEFAULT '' after id;
alter table game_map add name varchar(20) NOT NULL DEFAULT '' after id;
alter table gen_event add name varchar(20) NOT NULL DEFAULT '' after id;
alter table hero_skill_unlock add name varchar(20) NOT NULL DEFAULT '' after id;
alter table hero_type add name varchar(20) NOT NULL DEFAULT '' after id;
alter table itemtype add name varchar(20) NOT NULL DEFAULT '' after id;
alter table monster add name varchar(20) NOT NULL DEFAULT '' after id;
alter table monster_group add name varchar(20) NOT NULL DEFAULT '' after id;
alter table npc_group add name varchar(20) NOT NULL DEFAULT '' after id;
alter table skill_type add name varchar(20) NOT NULL DEFAULT '' after id;
alter table special_effect add name varchar(20) NOT NULL DEFAULT '' after id;
alter table status add name varchar(20) NOT NULL DEFAULT '' after id;
-- 添加索引提升性能
ALTER TABLE `user` ADD INDEX idx_idaccount( `idaccount` );
ALTER TABLE `user_hero` ADD INDEX idx_ownerid( `ownerid` );
ALTER TABLE `user_hero_skill` ADD INDEX idx_hero_id( `hero_id` );
ALTER TABLE `user_task` ADD INDEX idx_id_user( `id_user` );
ALTER TABLE `user_material` ADD INDEX idx_Playerid( `Playerid` );
ALTER TABLE `user_times` ADD INDEX idx_id_user( `id_user` );
ALTER TABLE `user_task_finished` ADD INDEX idx_user_id( `user_id` );
ALTER TABLE `hero_equipment` ADD INDEX idx_user_id( `user_id` );
ALTER TABLE `user_temp_data` ADD INDEX idx_userid( `userid` );
ALTER TABLE `user_friend` ADD INDEX idx_user_id( `user_id` );
ALTER TABLE `user_friend_request` ADD INDEX idx_user_id( `user_id` );
ALTER TABLE `user_pet` ADD INDEX idx_user_id( `user_id` );
ALTER TABLE `raffle_count` ADD INDEX idx_user_id( `user_id` );
ALTER TABLE `user_fashion` ADD INDEX idx_user_id( `user_id` );

-- 2.9 新手引导接口user数据库加字段guide
alter table user add column guide bigint(20) unsigned NOT NULL DEFAULT '0' after tasklock;

alter table user_task add finish_time bigint(20) NOT NULL DEFAULT 0 after data7;

alter table raffle_count drop type_id;
alter table raffle_count add mode int(11) NOT NULL DEFAULT 0 after type;

alter table hero_type add quality int(11) NOT NULL DEFAULT 0 after profession;
alter table hero_type add exchange_item bigint(20) NOT NULL DEFAULT 0 after start_skill_points;
alter table hero_type add exchange_num int(11) NOT NULL DEFAULT 0 after exchange_item;

alter table lottery_gift drop award_group;
alter table lottery_gift drop max_get_rate;
alter table lottery_gift drop min_get_rate;
alter table lottery_gift add weight int(11) NOT NULL DEFAULT 0 after item_num;

drop table pet_gift;

CREATE TABLE `get_lottery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `raffle_type` int(11) NOT NULL DEFAULT '0',
  `cost_item` bigint(20) NOT NULL DEFAULT '0',
  `cost_num` int(11) NOT NULL DEFAULT '0',
  `cost_num_ten` int(11) NOT NULL DEFAULT '0',
  `buy_item` bigint(20) NOT NULL DEFAULT '0',
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
  `limit_award_item` bigint(20) NOT NULL DEFAULT '0',
   `limit_min2` int(11) NOT NULL DEFAULT '0',
  `limit_max2` int(11) NOT NULL DEFAULT '0',
  `replace_under2` int(11) NOT NULL DEFAULT '0',
  `replace_over2` int(11) NOT NULL DEFAULT '0',  
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- PVE V4
ALTER TABLE attribute  MODIFY COLUMN life bigint(20) NOT NULL;

ALTER TABLE hero_class CHANGE COLUMN hero_class hero_class_index int(11);

-- 3.0
alter table skill_type drop skill_points_require;
alter table skill_type drop classes_require;
alter table skill_type add level_up smallint(6) NOT NULL DEFAULT '0' after xp_revert;
alter table skill_type add level_require int(11) NOT NULL DEFAULT '0' after item_require3_num;

alter table user_hero_skill add rune_id bigint(20) NOT NULL DEFAULT '0';

CREATE TABLE `rune` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rune_level` int(11) NOT NULL DEFAULT '0',
  `special_effects1` bigint(20) NOT NULL DEFAULT '0',
  `special_effects2` bigint(20) NOT NULL DEFAULT '0',
  `special_effects3` bigint(20) NOT NULL DEFAULT '0',
  `add_skill_lv` int(11) NOT NULL DEFAULT '0',
  `item_require_num` int(11) NOT NULL DEFAULT '0',
  `gold_requires` int(11) NOT NULL DEFAULT '0',
  `only_wear` int(11) NOT NULL DEFAULT '0',
  `only_hero` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user_hero drop skill_points;
alter table hero_class drop skill_point;
alter table hero_rank drop skill_point;
alter table hero_type drop start_skill_points;

alter table user drop cripsid;
alter table user add syn bigint(20) NOT NULL DEFAULT 0 after pet_money;
alter table user add syn_contribution int(11) NOT NULL DEFAULT 0 after syn;
alter table user add leave_syn_time int(11) NOT NULL DEFAULT 0 after syn_contribution;

CREATE TABLE `syn_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `user_name` varchar(15) NOT NULL DEFAULT '',
  `show_icon_id` int(11) NOT NULL DEFAULT '0',
  `user_level` int(11) NOT NULL DEFAULT '0',
  `fight` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `syn_apply` ADD INDEX idx_syn_id(`syn_id`);

CREATE TABLE `syn_building` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `syn_building` ADD INDEX idx_syn_id(`syn_id`);

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

CREATE TABLE `syn_building_uplev` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `syn_limit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` int(11) NOT NULL DEFAULT '0',
  `limit` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `syn_member` ADD INDEX idx_syn_id(`syn_id`);

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
  `do_User_grade` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `syn_member_change` ADD INDEX idx_syn_id(`syn_id`);

CREATE TABLE `syn_position_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT '0',
  `grade` int(11) NOT NULL DEFAULT '0',
  `grade_name` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `syn_position_name` ADD INDEX idx_syn_id(`syn_id`);

CREATE TABLE `syndicate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_type` int(11) NOT NULL DEFAULT '0',
  `syn_name` varchar(15) NOT NULL DEFAULT '',
  `syn_flag_id` bigint(20) NOT NULL DEFAULT '0',
  `syn_prestige` int(11) NOT NULL DEFAULT '0',
  `clear_time` bigint(20) NOT NULL DEFAULT '0',
  `syn_notice` varchar(100) NOT NULL DEFAULT '',
  `syn_manifesto` varchar(100) NOT NULL DEFAULT '',
  `agree_type` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table task_index add unique(`taskid`);

alter table skill_type add `item_require4` int(11) NOT NULL DEFAULT '0'after item_require3_num;
alter table skill_type add `item_require4_num` int(11) NOT NULL DEFAULT '0' after item_require4;

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `system_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `start_time` bigint(20) NOT NULL DEFAULT '0',
  `over_time` bigint(20) NOT NULL DEFAULT '0',
  `failure_length` int(11) NOT NULL DEFAULT '0',
  `item1_id` bigint(20) NOT NULL DEFAULT '0',
  `item1_num` int(11) NOT NULL DEFAULT '0',
  `item2_id` bigint(20) NOT NULL DEFAULT '0',
  `item2_num` int(11) NOT NULL DEFAULT '0',
  `item3_id` bigint(20) NOT NULL DEFAULT '0',
  `item3_num` int(11) NOT NULL DEFAULT '0',
  `item4_id` bigint(20) NOT NULL DEFAULT '0',
  `item4_num` int(11) NOT NULL DEFAULT '0',
  `item5_id` bigint(20) NOT NULL DEFAULT '0',
  `item5_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_mail_get` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `mail_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_system_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `mail_id` bigint(20) NOT NULL DEFAULT '0',
  `get_time` bigint(20) NOT NULL DEFAULT '0',
  `failure_time` bigint(20) NOT NULL DEFAULT '0',
  `mark` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table config add param1 varchar(150) not null default "" after data7;

CREATE TABLE `leagues_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `need_exp` int(11) NOT NULL DEFAULT '0',
  `award_id` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `bag_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user add `league_level` int(11) NOT NULL DEFAULT '0';
alter table user add `league_exp` int(11) NOT NULL DEFAULT '0';
alter table user add `league_bag_level` int(11) NOT NULL DEFAULT '0';

alter table award_acquire add award_type int(11) NOT NULL DEFAULT '0' after award_group;
alter table award_acquire change itemtype_id award_type_id int(11) NOT NULL DEFAULT '0';

alter table system_mail add min_level int(11) not null default 0 after failure_length;

-- V3.11
alter table `user` drop `vip_level`;
alter table `user` drop `vip_exp`;
alter table `user_friend` drop `friend_vip`;
alter table `user_friend_request` drop `proposer_vip`;
alter table pet drop skill_num;
alter table user_pet drop skill_id1;
alter table user_pet drop skill_id2;
alter table user_pet drop skill_id3;

alter table hero_type add attr_id_1 bigint(20)  NOT NULL DEFAULT '0' after start_star;
alter table hero_type add attr_id_2 bigint(20)  NOT NULL DEFAULT '0' after attr_id_1;

alter table user add system_unlock bigint(20) unsigned NOT NULL DEFAULT 0 after `league_bag_level`;

CREATE TABLE `system_deblocking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mask` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- V3.11 5月
alter table `leagues_level` drop `award_id`;

-- V3.12

CREATE TABLE `shop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_type` int(11) NOT NULL DEFAULT 0,
  `item_type` bigint(20) NOT NULL DEFAULT 0,
  `money_type` int(11) NOT NULL DEFAULT 0,
  `price` bigint(20) NOT NULL DEFAULT 0,
  `limit_amount` int(11) NOT NULL DEFAULT 0,
  `refresh_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_shop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `goods_id` bigint(20) NOT NULL DEFAULT 0,
  `purchase_amount` int(11) NOT NULL DEFAULT 0,
  `last_refresh` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table skill_type add cost_type int(11)  NOT NULL DEFAULT '0' after combos;
alter table skill_type add cost_data int(11)  NOT NULL DEFAULT '0' after cost_type;
alter table skill_type add use_time int(11)  NOT NULL DEFAULT '0' after cost_data;

ALTER TABLE `user_shop` ADD INDEX idx_user_id( `user_id` );
ALTER TABLE `user_syn_mail` ADD INDEX idx_user_id( `user_id` );
ALTER TABLE `user_mail_get` ADD INDEX idx_user_id( `user_id` );
ALTER TABLE `user_system_mail` ADD INDEX idx_user_id( `user_id` );

alter table `shop` add refresh_type int(11) NOT NULL DEFAULT 0 after `refresh_time`;

alter table user drop `system_unlock`;
alter table user drop `guide`;
alter table user drop `tasklock`;
alter table user drop `user_icon`;
alter table user drop `transfer_mask`;

CREATE TABLE `user_record_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `data1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `user_record_data` ADD INDEX idx_user_id( `user_id` );


-- v3.2
alter table hero_type add auto_battle varchar(128) NOT NULL DEFAULT '' after skill_loop_que;
alter table game_map add time int(11)  NOT NULL DEFAULT '0' after reward_id;

-- 竞技场静态表
CREATE TABLE `pvp_reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `data3` int(11) NOT NULL DEFAULT 0,
  `data4` int(11) NOT NULL DEFAULT 0,
  `itemtype_id1` bigint(20) NOT NULL DEFAULT 0,
  `itemtype_num1` int(11) NOT NULL DEFAULT 0,
  `itemtype_id2` bigint(20) NOT NULL DEFAULT 0,
  `itemtype_num2` int(11) NOT NULL DEFAULT 0,
  `itemtype_id3` bigint(20) NOT NULL DEFAULT 0,
  `itemtype_num3` int(11) NOT NULL DEFAULT 0,
  `itemtype_id4` bigint(20) NOT NULL DEFAULT 0,
  `itemtype_num4` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `cost_emoney` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `times_type` int(11) NOT NULL DEFAULT 0,
  `times` int(11) NOT NULL DEFAULT 0,
  `cost` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- 竞技场动态表
CREATE TABLE `pvp_user_ranking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `data3` int(11) NOT NULL DEFAULT 0,
  `data4` int(11) NOT NULL DEFAULT 0,
  `active_reward_times` int(11) NOT NULL DEFAULT 0,
  `last_battle_time` bigint(20) NOT NULL DEFAULT 0,
  `clear_cd` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `pvp_user_ranking` ADD INDEX idx_user_id( `user_id` );


CREATE TABLE `pvp_user_reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `flag` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `pvp_user_reward` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `offline_user_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `user_level` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `show_icon_id` bigint(20) NOT NULL DEFAULT 0,
  `figure_id` bigint(20) NOT NULL DEFAULT 0,
  `syn_name` varchar(20) NOT NULL DEFAULT '',
  `fight` int(11) NOT NULL DEFAULT 0,
  `hero_id` bigint(20) NOT NULL DEFAULT 0,
  `hero_typeid` bigint(20) NOT NULL DEFAULT 0,
  `hero_level` int(11) NOT NULL DEFAULT 0,
  `hero_class` int(11) NOT NULL DEFAULT 0,
  `hero_fight` int(11) NOT NULL DEFAULT 0,
  `wearing_fashion` bigint(20) NOT NULL DEFAULT 0,
  `formation` int(11) NOT NULL DEFAULT 0,
  `life` bigint(20) NOT NULL DEFAULT 0,
  `phy_atk` int(11) NOT NULL DEFAULT 0,
  `mgc_atk` int(11) NOT NULL DEFAULT 0,
  `phy_def` int(11) NOT NULL DEFAULT 0,
  `mgc_def` int(11) NOT NULL DEFAULT 0,
  `life_add` int(11) NOT NULL DEFAULT 0,
  `phy_atk_add` int(11) NOT NULL DEFAULT 0,
  `mgc_atk_add` int(11) NOT NULL DEFAULT 0,
  `phy_def_add` int(11) NOT NULL DEFAULT 0,
  `mgc_def_add` int(11) NOT NULL DEFAULT 0,
  `hit_rate` int(11) NOT NULL DEFAULT 0,
  `dodge_rate`int(11) NOT NULL DEFAULT 0,
  `critical_rate` int(11) NOT NULL DEFAULT 0,
  `critical_dmg` int(11) NOT NULL DEFAULT 0,
  `critical_def` int(11) NOT NULL DEFAULT 0,
  `parry_rate` int(11) NOT NULL DEFAULT 0,
  `parry_def` int(11) NOT NULL DEFAULT 0,
  `hitbreak_rate`int(11) NOT NULL DEFAULT 0,
  `hitback_xp` int(11) NOT NULL DEFAULT 0,
  `dmg_add` int(11) NOT NULL DEFAULT 0,
  `dmg_cut` int(11) NOT NULL DEFAULT 0,
  `ice_atk` int(11) NOT NULL DEFAULT 0,
  `fire_atk`int(11) NOT NULL DEFAULT 0,
  `light_atk` int(11) NOT NULL DEFAULT 0,
  `dark_atk` int(11) NOT NULL DEFAULT 0,
  `ice_def` int(11) NOT NULL DEFAULT 0,
  `fire_def`int(11) NOT NULL DEFAULT 0,
  `light_def` int(11) NOT NULL DEFAULT 0,
  `dark_def` int(11) NOT NULL DEFAULT 0,
  `pet1_id` bigint(20) NOT NULL DEFAULT 0,
  `pet2_id` bigint(20) NOT NULL DEFAULT 0,
  `sex` int(11) NOT NULL DEFAULT 0,
  `profession` int(11) NOT NULL DEFAULT 0,

PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `offline_user_attr` ADD INDEX idx_user_id( `user_id` );

alter table user_times add emoney_times int(11)  NOT NULL DEFAULT 0 after times;

alter table user add fight_money bigint(20) NOT NULL DEFAULT '0' after pet_money;

alter table pvp_user_ranking drop active_reward_times;
alter table pvp_user_ranking drop last_battle_time;
alter table pvp_user_ranking drop clear_cd;
CREATE TABLE `pvp_user_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `active_reward_times` int(11) NOT NULL DEFAULT 0,
  `last_battle_time` bigint(20) NOT NULL DEFAULT 0,
  `clear_cd` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `pvp_user_record` ADD INDEX idx_user_id( `user_id` );

-- v3.3
CREATE TABLE `share_boss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monster_group_id` bigint(20) NOT NULL DEFAULT 0,
  `remain_time` bigint(20) NOT NULL DEFAULT 0,
  `min_get_rate` int(11) NOT NULL DEFAULT 0,
  `max_get_rate` int(11) NOT NULL DEFAULT 0,
  `min_level` int(11) NOT NULL DEFAULT 0,
  `max_level` int(11) NOT NULL DEFAULT 0,
  `reward1_id` bigint(20) NOT NULL DEFAULT 0,
  `reward2_id` bigint(20) NOT NULL DEFAULT 0,
  `reward3_id` bigint(20) NOT NULL DEFAULT 0,
  `reward4_id` bigint(20) NOT NULL DEFAULT 0,
  `reward5_id` bigint(20) NOT NULL DEFAULT 0,
  `reward6_id` bigint(20) NOT NULL DEFAULT 0,
  `reward7_id` bigint(20) NOT NULL DEFAULT 0,
  `reward8_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user_times add change_times  bigint(20)  NOT NULL DEFAULT 0 after emoney_times;

alter table times_limit add limit_tag int(11)  NOT NULL DEFAULT 0 after times;
alter table times_limit add recover_time int(11) NOT NULL DEFAULT 0 after limit_tag;

alter table monster_group add multi_boss int(11) NOT NULL DEFAULT 0 after fight;

-- battle_replay 表在特定情况用
CREATE TABLE `battle_replay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `battle_id` bigint(20) NOT NULL DEFAULT 0,
  `info` MEDIUMBLOB,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `battle_replay` ADD INDEX idx_user_id( `user_id` );

drop table hero_rank;
drop table hero_class;
alter table user_hero drop hero_rank;

CREATE TABLE `hero_class_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_type_id` bigint(20) NOT NULL DEFAULT 0,
  `hero_class` int(11) NOT NULL DEFAULT 0,
  `hero_Level` int(11) NOT NULL DEFAULT 0,
  `item_id1` bigint(20) NOT NULL DEFAULT 0,
  `item_num1` int(11) NOT NULL DEFAULT 0,
   `item_id2` bigint(20) NOT NULL DEFAULT 0,
  `item_num2` int(11) NOT NULL DEFAULT 0,
   `item_id3` bigint(20) NOT NULL DEFAULT 0,
  `item_num3` int(11) NOT NULL DEFAULT 0,
   `item_id4` bigint(20) NOT NULL DEFAULT 0,
  `item_num4` int(11) NOT NULL DEFAULT 0,
  `money` bigint(20) NOT NULL DEFAULT 0,
  `attr_type1` int(11) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `attr_type2` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `attr_type3` int(11) NOT NULL DEFAULT 0,
  `data3` int(11) NOT NULL DEFAULT 0, 
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user add hero_coin bigint(20) NOT NULL DEFAULT 0 after pet_money;

alter table user drop god_source;
alter table user drop crips_tax;
alter table user drop wood;
alter table user drop crystal;
alter table user drop cloth;
alter table user drop iron;

alter table fashion_type drop material_id1;
alter table fashion_type drop material_num1;
alter table fashion_type drop material_id2;
alter table fashion_type drop material_num2;
alter table fashion_type drop material_id3;
alter table fashion_type drop material_num3;

-- v3.5

-- 军团悬赏
alter table user add syn_boss_reward bigint(20) NOT NULL DEFAULT 0 after leave_syn_time;
alter table user add syn_boss_reward_time bigint(20) NOT NULL DEFAULT 0 after syn_boss_reward;

alter table syndicate add syn_boss_id bigint(20) NOT NULL DEFAULT 0 after create_time;
alter table syndicate add syn_boss_life bigint(20) NOT NULL DEFAULT 0 after syn_boss_id;
alter table syndicate add syn_boss_start_time bigint(20) NOT NULL DEFAULT 0 after syn_boss_life;
alter table syndicate add reward_life bigint(20) NOT NULL DEFAULT 0 after syn_boss_start_time;

CREATE TABLE `syn_boss_life` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `syn_boss_id` bigint(20) NOT NULL DEFAULT 0,
  `attack_life` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `syn_boss_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_boss_id` bigint(20) NOT NULL DEFAULT 0,
  `syn_id` bigint(20) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `user_reward_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `data1` bigint(20) NOT NULL DEFAULT 0,
  `data2` bigint(20) NOT NULL DEFAULT 0,
  `data3` bigint(20) NOT NULL DEFAULT 0,
  `data4` bigint(20) NOT NULL DEFAULT 0,
  `param1` varchar(15) NOT NULL DEFAULT '',
  `get_time` bigint(20) NOT NULL DEFAULT 0,
  `failure_time` bigint(20) NOT NULL DEFAULT 0,
  `mark` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 静态表
CREATE TABLE `syn_reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `data1` bigint(20) NOT NULL DEFAULT 0,
  `data2` bigint(20) NOT NULL DEFAULT 0,
  `data3` bigint(20) NOT NULL DEFAULT 0,
  `reward1_id` bigint(20) NOT NULL DEFAULT 0,
  `reward1_num` int(11) NOT NULL DEFAULT 0,
  `reward2_id` bigint(20) NOT NULL DEFAULT 0,
  `reward2_num` int(11) NOT NULL DEFAULT 0,
  `reward3_id` bigint(20) NOT NULL DEFAULT 0,
  `reward3_num` int(11) NOT NULL DEFAULT 0,
  `reward4_id` bigint(20) NOT NULL DEFAULT 0,
  `reward4_num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `syn_boss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monster_group_id` bigint(20) NOT NULL DEFAULT 0,
  `reward1_id` bigint(20) NOT NULL DEFAULT 0,
  `reward1_num` int(11) NOT NULL DEFAULT 0,
  `reward2_id` bigint(20) NOT NULL DEFAULT 0,
  `reward2_num` int(11) NOT NULL DEFAULT 0,
  `reward3_id` bigint(20) NOT NULL DEFAULT 0,
  `reward3_num` int(11) NOT NULL DEFAULT 0,
  `reward4_id` bigint(20) NOT NULL DEFAULT 0,
  `reward4_num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- 骑士考核
alter table offline_user_attr add figure_fishion  bigint(20)  NOT NULL DEFAULT 0 after profession;
alter table user add fight2_money bigint(20) NOT NULL DEFAULT 0 after fight_money;
-- 静态
CREATE TABLE `pvp_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `data1` bigint(20) NOT NULL DEFAULT 0,
  `data2` bigint(20) NOT NULL DEFAULT 0,
  `data3` bigint(20) NOT NULL DEFAULT 0,
  `data4` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- 动态表
alter table pvp_user_record modify data1 bigint(20) NOT NULL DEFAULT 0;
alter table pvp_user_record modify data2 bigint(20) NOT NULL DEFAULT 0;
alter table pvp_user_record add data3 bigint(20)  NOT NULL DEFAULT 0 after data2;
alter table pvp_user_record add data4 bigint(20)   NOT NULL DEFAULT 0 after data3;
alter table pvp_user_record add win_times int(11) NOT NULL DEFAULT 0 after data4;

alter table pvp_user_reward modify data1 bigint(20) NOT NULL DEFAULT 0;
alter table pvp_user_reward modify data2 bigint(20) NOT NULL DEFAULT 0;
alter table pvp_user_reward add data3 bigint(20) NOT NULL DEFAULT 0 after data2;

alter table pvp_user_ranking modify data1 bigint(20) NOT NULL DEFAULT 0;
alter table pvp_user_ranking modify data2 bigint(20) NOT NULL DEFAULT 0;
alter table pvp_user_ranking modify data3 bigint(20) NOT NULL DEFAULT 0;
alter table pvp_user_ranking modify data4 bigint(20) NOT NULL DEFAULT 0;

alter table user add user_friend_point int(11) NOT NULL DEFAULT 0 after league_bag_level;

CREATE TABLE `user_box` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `box_id` bigint(20) NOT NULL DEFAULT 0,
  `box_state` int(11) NOT NULL DEFAULT 0,
  `start_open_time` bigint(20) NOT NULL DEFAULT 0,
  `help_state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_box` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `user_box_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `box_id` bigint(20) NOT NULL DEFAULT 0,
  `help_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_box_help` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `box` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `box_name` varchar(20) NOT NULL DEFAULT '',
  `box_gift` bigint(20) NOT NULL DEFAULT 0,
  `friend_point` int(11) NOT NULL DEFAULT 0,
  `need_time` int(11) NOT NULL DEFAULT 0,
  `help_limit` int(11) NOT NULL DEFAULT 0,
  `help_time` int(11) NOT NULL DEFAULT 0,
  `cost_friend_point` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_blacklist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `target_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_blacklist` ADD INDEX idx_user_id( `user_id` );


-- V3.6

-- 亲密度
alter table user_hero add impression_exp int(11) not null default 0 after exp;
alter table user_hero add impression_level int(11) not null default 0 after impression_exp;
alter table user_hero add impression_award_level int(11) not null default 0 after impression_level;

-- 静态表
CREATE TABLE `hero_impression` (
  `id`               bigint(20) NOT NULL AUTO_INCREMENT,
  `reward_id`        bigint(20) NOT NULL DEFAULT 0,
  `need_value`       int(11)    NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
)ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE `gift` (
  `id`            bigint(20) NOT NULL AUTO_INCREMENT,
  `add_value`     int(11)    NOT NULL DEFAULT 0,
  `team_id`       int(11)    NOT NULL DEFAULT 0,
  `special_value` int(11)    NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
)ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE `hero_team` (
  `id`      bigint(20) NOT NULL AUTO_INCREMENT,
  `team_id` int(11)    NOT NULL DEFAULT 0,
  `hero_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
)ENGINE = MyISAM DEFAULT CHARSET = utf8;

-- 每日活动-静态
CREATE TABLE `dailyact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `starttime` bigint(20) NOT NULL DEFAULT 0,
  `endtime` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- 每日副本-静态
CREATE TABLE `dailyactmap` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `difficulty` int(11) NOT NULL DEFAULT 0,
  `commendce` int(11) NOT NULL DEFAULT 0,
  `extece` int(11) NOT NULL DEFAULT 0,
  `lev` int(11)NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 精英挑战(温丽梦境) 静态
CREATE TABLE `dream_land` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monstergroup_id` bigint(20)  NOT NULL DEFAULT 0,
  `conditions1` int(11) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `conditions2` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `conditions3` int(11) NOT NULL DEFAULT 0,
  `data3` int(11) NOT NULL DEFAULT 0,
  `first_bounses` bigint(20)  NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `dream_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `star1` int(11)  NOT NULL DEFAULT 0,
  `star_bounses1` bigint(20)  NOT NULL DEFAULT 0,
  `star2` int(11)  NOT NULL DEFAULT 0,
  `star_bounses2` bigint(20)  NOT NULL DEFAULT 0,
  `star3` int(11)  NOT NULL DEFAULT 0,
  `star_bounses3` bigint(20)  NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- 动态
alter table user add memento bigint(20)not null default 0 after fight2_money;

CREATE TABLE `user_dailyact_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20)  NOT NULL DEFAULT 0,
  `data1` bigint(20)  UNSIGNED NOT NULL DEFAULT 0,
  `data2` bigint(20)  UNSIGNED NOT NULL DEFAULT 0,
  `data3` bigint(20)  UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 英雄技能
alter table skill_type add count_type bigint(20)not null default 0 after use_time;
alter table skill_type add count_data bigint(20)not null default 0 after count_type;
-- 监听
CREATE TABLE `activity_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) NOT NULL DEFAULT 0,
  `need_point` int(11) NOT NULL DEFAULT 0,
  `award_id` bigint(20) NOT NULL DEFAULT 0,
  `mask` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `goals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT 0,
  `activity_id` bigint(20) NOT NULL DEFAULT 0,
  `monitor_id` bigint(20) NOT NULL DEFAULT 0,
  `mask_index` int(11) NOT NULL DEFAULT 0,
  `mask_id` int(11) NOT NULL DEFAULT 0,
  `award_id` bigint(20) NOT NULL DEFAULT 0,
  `point` int(11) NOT NULL DEFAULT 0,
  `start_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_goals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `data1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data4` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data5` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data6` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data7` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data8` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data9` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data10` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_goals` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `user_activity_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `activity_id` bigint(20) NOT NULL DEFAULT 0,
  `user_activity_point` int(11) NOT NULL DEFAULT 0,
  `drop_award` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_activity_point` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `achievement_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `achievement_lv` int(11) NOT NULL DEFAULT 0,
  `achievement_point` int(11) NOT NULL DEFAULT 0,
  `achievement_award_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user add achievement_point int(11) NOT NULL DEFAULT 0 after user_friend_point;
alter table user add achievement_draw int(11) NOT NULL DEFAULT 0 after achievement_point;

CREATE TABLE `monitor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monitor_type` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `data3` int(11) NOT NULL DEFAULT 0,
  `mask1` int(11) NOT NULL DEFAULT 0,
  `mask2` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_monitor_mask` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `data1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data4` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data5` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data6` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_monitor_mask` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `user_monitor_times` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `index_id` int(11) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `data3` int(11) NOT NULL DEFAULT 0,
  `data4` int(11) NOT NULL DEFAULT 0,
  `data5` int(11) NOT NULL DEFAULT 0,
  `data6` int(11) NOT NULL DEFAULT 0,
  `data7` int(11) NOT NULL DEFAULT 0,
  `data8` int(11) NOT NULL DEFAULT 0,
  `data9` int(11) NOT NULL DEFAULT 0,
  `data10` int(11) NOT NULL DEFAULT 0,
  `data11` int(11) NOT NULL DEFAULT 0,
  `data12` int(11) NOT NULL DEFAULT 0,
  `data13` int(11) NOT NULL DEFAULT 0,
  `data14` int(11) NOT NULL DEFAULT 0,
  `data15` int(11) NOT NULL DEFAULT 0,
  `data16` int(11) NOT NULL DEFAULT 0,
  `data17` int(11) NOT NULL DEFAULT 0,
  `data18` int(11) NOT NULL DEFAULT 0,
  `data19` int(11) NOT NULL DEFAULT 0,
  `data20` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_monitor_times` ADD INDEX idx_user_id( `user_id` );


CREATE TABLE `activity_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `award_id` bigint(20) NOT NULL DEFAULT 0,
  `award_type` int(11) NOT NULL DEFAULT 0,
  `award_type_id` bigint(20) NOT NULL DEFAULT 0,
  `award_num` int(11) NOT NULL DEFAULT 0,
  `award_show` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `activity_sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `start_time` bigint(20) NOT NULL DEFAULT 0,
  `end_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `activity_sign_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `award_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `daily_sign_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `award_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_activity_sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `late_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_activity_sign` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `user_daily_sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `lateTime` bigint(20) NOT NULL DEFAULT 0,
  `total_drop` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_daily_sign` ADD INDEX idx_user_id( `user_id` );


alter table user_activity_sign change type type_id bigint(20) NOT NULL DEFAULT 0;
alter table activity_sign_award change type type_id bigint(20) NOT NULL DEFAULT 0;
drop table activity_sign;


-- V3.7
alter table user_daily_sign change `lateTime` `late_time` bigint(20) NOT NULL DEFAULT 0;
alter table achievement_point change `achievement_point` `achievement_need_point` int(11) NOT NULL DEFAULT 0;


-- V3.8

CREATE TABLE `luckymoney_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `mask` int(11) NOT NULL DEFAULT 0,
  `monitor_id` bigint(20) NOT NULL DEFAULT 0,
  `money_id` bigint(20) NOT NULL DEFAULT 0,
  `money_num` int(11) NOT NULL DEFAULT 0,
  `times_limit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `special_luckymoney` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `syn_luckymoney` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `syn_id` bigint(20) NOT NULL DEFAULT 0,
  `luckymoney_id` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 0,
  `user1_id` bigint(20) NOT NULL DEFAULT 0,
  `user1_num` int(11) NOT NULL DEFAULT 0,
  `user2_id` bigint(20) NOT NULL DEFAULT 0,
  `user2_num` int(11) NOT NULL DEFAULT 0,
  `user3_id` bigint(20) NOT NULL DEFAULT 0,
  `user3_num` int(11) NOT NULL DEFAULT 0,
  `user4_id` bigint(20) NOT NULL DEFAULT 0,
  `user4_num` int(11) NOT NULL DEFAULT 0,
  `user5_id` bigint(20) NOT NULL DEFAULT 0,
  `user5_num` int(11) NOT NULL DEFAULT 0,
  `user6_id` bigint(20) NOT NULL DEFAULT 0,
  `user6_num` int(11) NOT NULL DEFAULT 0,
  `user7_id` bigint(20) NOT NULL DEFAULT 0,
  `user7_num` int(11) NOT NULL DEFAULT 0,
  `user8_id` bigint(20) NOT NULL DEFAULT 0,
  `user8_num` int(11) NOT NULL DEFAULT 0,
  `user9_id` bigint(20) NOT NULL DEFAULT 0,
  `user9_num` int(11) NOT NULL DEFAULT 0,
  `user10_id` bigint(20) NOT NULL DEFAULT 0,
  `user10_num` int(11) NOT NULL DEFAULT 0,
  `user11_id` bigint(20) NOT NULL DEFAULT 0,
  `user11_num` int(11) NOT NULL DEFAULT 0,
  `user12_id` bigint(20) NOT NULL DEFAULT 0,
  `user12_num` int(11) NOT NULL DEFAULT 0,
  `user13_id` bigint(20) NOT NULL DEFAULT 0,
  `user13_num` int(11) NOT NULL DEFAULT 0,
  `user14_id` bigint(20) NOT NULL DEFAULT 0,
  `user14_num` int(11) NOT NULL DEFAULT 0,
  `user15_id` bigint(20) NOT NULL DEFAULT 0,
  `user15_num` int(11) NOT NULL DEFAULT 0,
  `user16_id` bigint(20) NOT NULL DEFAULT 0,
  `user16_num` int(11) NOT NULL DEFAULT 0,
  `user17_id` bigint(20) NOT NULL DEFAULT 0,
  `user17_num` int(11) NOT NULL DEFAULT 0,
  `user18_id` bigint(20) NOT NULL DEFAULT 0,
  `user18_num` int(11) NOT NULL DEFAULT 0,
  `user19_id` bigint(20) NOT NULL DEFAULT 0,
  `user19_num` int(11) NOT NULL DEFAULT 0,
  `user20_id` bigint(20) NOT NULL DEFAULT 0,
  `user20_num` int(11) NOT NULL DEFAULT 0,
  `user21_id` bigint(20) NOT NULL DEFAULT 0,
  `user21_num` int(11) NOT NULL DEFAULT 0,
  `user22_id` bigint(20) NOT NULL DEFAULT 0,
  `user22_num` int(11) NOT NULL DEFAULT 0,
  `user23_id` bigint(20) NOT NULL DEFAULT 0,
  `user23_num` int(11) NOT NULL DEFAULT 0,
  `user24_id` bigint(20) NOT NULL DEFAULT 0,
  `user24_num` int(11) NOT NULL DEFAULT 0,
  `user25_id` bigint(20) NOT NULL DEFAULT 0,
  `user25_num` int(11) NOT NULL DEFAULT 0,
  `user26_id` bigint(20) NOT NULL DEFAULT 0,
  `user26_num` int(11) NOT NULL DEFAULT 0,
  `user27_id` bigint(20) NOT NULL DEFAULT 0,
  `user27_num` int(11) NOT NULL DEFAULT 0,
  `user28_id` bigint(20) NOT NULL DEFAULT 0,
  `user28_num` int(11) NOT NULL DEFAULT 0,
  `user29_id` bigint(20) NOT NULL DEFAULT 0,
  `user29_num` int(11) NOT NULL DEFAULT 0,
  `user30_id` bigint(20) NOT NULL DEFAULT 0,
  `user30_num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_luckymoney` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `luckymoney_id` bigint(20) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_luckymoney` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `user_luckymoney_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `mask` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_luckymoney_record` ADD INDEX idx_user_id( `user_id` );


alter table `syndicate` drop clear_time;
alter table `syndicate` drop syn_prestige;

alter table dailyact add data1 int(11) not null default 0;
alter table dailyact add data2 int(11) not null default 0;
alter table dailyact add data3 int(11) not null default 0;

CREATE TABLE `syn_active_reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT 0,
  `min_syn_active` int(11) NOT NULL DEFAULT 0,
  `award_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user add last_syn_active int(11) not null default 0 after syn;
alter table user add current_syn_active int(11) not null default 0 after last_syn_active;
alter table user add active_syn_time bigint(20) not null default 0 after current_syn_active;
alter table user add syn_active_flag int(11) not null default 0 after active_syn_time;

alter table user add activity_luckymoney_time int(11) not null default 0 after achievement_draw;
alter table user add syn_active_luckymoney_time int(11) not null default 0 after activity_luckymoney_time;

alter table user_pet add `pet_lock` int(11) not null default 0 after pet_star;

-- battle2.0
alter table special_effect add trigger_arg4 int(11) NOT NULL DEFAULT 0 after trigger_arg3;


-- V3.9

alter table fashion_type drop life;
alter table fashion_type drop phy_atk;
alter table fashion_type drop mgc_atk;
alter table fashion_type drop phy_def;
alter table fashion_type drop mgc_def;

alter table fashion_type add attr_type1 int(11) NOT NULL DEFAULT '0' after material_num0;
alter table fashion_type add attr_data1 int(11) NOT NULL DEFAULT '0' after attr_type1;
alter table fashion_type add attr_type2 int(11) NOT NULL DEFAULT '0' after attr_data1;
alter table fashion_type add attr_data2 int(11) NOT NULL DEFAULT '0' after attr_type2;

alter table syn_member_change change do_User_grade do_user_grade int(11) NOT NULL DEFAULT '0';

alter table monster_group add fight_type int(11) NOT NULL DEFAULT 0 after attack_status_id;
CREATE TABLE `algorithm_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `min` int(11) NOT NULL DEFAULT 0,
  `max` int(11) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table pet add skill0_id2 bigint(20) NOT NULL DEFAULT 0 after skill0_id;
alter table pet add skill0_id3 bigint(20) NOT NULL DEFAULT 0 after skill0_id2;
alter table pet add exclusive_hero bigint(20) NOT NULL DEFAULT 0 after skill0_id3;

alter table skill_type add skill0_type int(11) NOT NULL DEFAULT 0 after type;
alter table skill_type add skill0_unicity int(11) NOT NULL DEFAULT 0 after skill0_type;

alter table offline_user_attr add pet1_star int(11) NOT NULL DEFAULT 0 after pet1_id;

alter table offline_user_attr add pet2_star int(11) NOT NULL DEFAULT 0 after pet2_id;

alter table user_hero_skill add user_id bigint(20) NOT NULL DEFAULT 0 after id; 

CREATE TABLE `questionnaire` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mask` int(11) NOT NULL DEFAULT 0,
  `award_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `cd_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cd_key` varchar(256) not null default '',
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `param1` varchar(150) not null default '',
  `desc` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user add sub_chan_code  varchar(20) NOT NULL DEFAULT '' after idaccount;

CREATE TABLE `cd_key_chan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chan_id` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(256) not null default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- V5.0
alter table user add activity int(11) not null default 0 after syn_active_luckymoney_time;
alter table user add reactivity_time bigint(20) not null default 0 after activity;

CREATE TABLE `activity_todo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity` int(11) NOT NULL DEFAULT 0,
  `activity_max` int(11) NOT NULL DEFAULT 0,
  `award_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `activity_add` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_data` int(11) NOT NULL DEFAULT 0,
  `award_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `user_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `activityid` bigint(20) NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  `receive_state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_activity` ADD INDEX idx_user_id( `user_id` );

alter table get_lottery add buy_exp_num int(11) not null default 0 after replace_over2;
alter table system_mail add tittle varchar(30) not null default '' after failure_length;
alter table system_mail add text varchar(128) not null default '' after tittle;
alter table system_mail add address varchar(30) not null default '' after text;
alter table system_mail add name varchar(15) not null default '' after address;

CREATE TABLE `dungeon_hero` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hero_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `dungeon_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level_id` bigint(20) NOT NULL DEFAULT 0,
  `monster1_id` varchar(128) not null default '',
  `monster2_id` varchar(128) not null default '',
  `boss_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_dungeon_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `dungeon_level_id` bigint(20) NOT NULL DEFAULT 0,
  `mark` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 0,
  `times` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_dungeon_info` ADD INDEX idx_user_id( `user_id` );

alter table offline_user_attr add  formation_type int(11) not null default 0 after user_id;
alter table user_hero  add arena_formation int(11) not null default 0 after typeid;
alter table user_hero  add knight_formation int(11) not null default 0 after arena_formation;

CREATE TABLE `user_shareboss_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `boss_key_id` int(11) NOT NULL DEFAULT 0,
  `group_id` bigint(20) NOT NULL DEFAULT 0,
  `born_time` bigint(20) NOT NULL DEFAULT 0,
  `all_life` bigint(20) NOT NULL DEFAULT 0,
  `remain_time` bigint(20) NOT NULL DEFAULT 0,
  `multi_arg` int(11) NOT NULL DEFAULT 0,
  `find_user_id` bigint(20) NOT NULL DEFAULT 0,
  `find_level` int(11) NOT NULL DEFAULT 0,
  `finder_name` varchar(20) not null default '',
  `cur_life` bigint(20) NOT NULL DEFAULT 0,
  `kill_time` bigint(20) NOT NULL DEFAULT 0,
  `kill_user_id` bigint(20) NOT NULL DEFAULT 0,
  `fight_user_num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_shareboss_info` ADD INDEX idx_boss_key_id( `boss_key_id` );


CREATE TABLE `user_shareboss_join` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `boss_key_id` int(11) NOT NULL DEFAULT 0,
  `join_type` int(11) NOT NULL DEFAULT 0,
  `id_user` bigint(20) NOT NULL DEFAULT 0,
  `user_name` varchar(20) not null default '',
  `user_level` int(11) NOT NULL DEFAULT 0,
  `show_icon_id` bigint(20) NOT NULL DEFAULT 0,
  `is_get_award`  int(11) NOT NULL DEFAULT 0,
  `all_dmg` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_shareboss_join` ADD INDEX idx_boss_key_id( `boss_key_id` );

CREATE TABLE `user_arrest_data` (
  `id` bigint(20) not null auto_increment,
  `user_id` bigint(20) not null default 0,
  `data1` bigint(20) not null default 0,
  `data2` int(11) not null default 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_arrest_data` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `arrest_task` (
  `id` bigint(20) not null auto_increment,
  `arrest_id` bigint(20) not null default 0, 
  `taskid` varchar(20) not null default '',
  `monstergroup_id` bigint(20) not null default 0,
  `award_id` int(11) not null default 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table `skill_type` change gold_require gold_require bigint(20) not null default 0;
alter table `skill_type` change item_require1 item_require1 bigint(20) not null default 0;
alter table `skill_type` change item_require2 item_require2 bigint(20) not null default 0;
alter table `skill_type` change item_require3 item_require3 bigint(20) not null default 0;
alter table `skill_type` change item_require4 item_require4 bigint(20) not null default 0;

alter table `achievement_point` change achievement_award_id achievement_award_id int(11) not null default 0;
alter table `activity_add` change award_id award_id int(11) not null default 0;
alter table `activity_award` change award_id award_id int(11) not null default 0;
alter table `activity_award` change award_type_id award_type_id int(11) not null default 0;
alter table `activity_point` change activity_id activity_id int(11) not null default 0;
alter table `activity_point` change  award_id award_id int(11) not null default 0;
alter table `activity_sign_award` change type_id type_id int(11) not null default 0;
alter table `activity_sign_award` change award_id award_id int(11) not null default 0;
alter table `activity_todo` change award_id award_id int(11) not null default 0;
alter table `arrest_task` change monstergroup_id monstergroup_id int(11) not null default 0;
alter table `arrest_task` change arrest_id arrest_id int(11) not null default 0; 
alter table `award_acquire` change award_type_id award_type_id int(11) not null default 0;
alter table `box` change box_gift box_gift int(11) not null default 0;
alter table `copymap_condition` change map_id map_id int(11) not null default 0;
alter table `daily_sign_award` change award_id award_id int(11) not null default 0;
alter table `dream_land` change monstergroup_id monstergroup_id int(11) not null default 0;
alter table `dream_land` change first_bounses first_bounses int(11) not null default 0;
alter table `dream_star` change star_bounses1 star_bounses1 int(11) not null default 0;
alter table `dream_star` change star_bounses2 star_bounses2 int(11) not null default 0;
alter table `dream_star` change star_bounses3 star_bounses3 int(11) not null default 0;
alter table `dungeon_hero` change hero_id hero_id int(11) not null default 0;
alter table `dungeon_level` change level_id level_id int(11) not null default 0;
alter table `dungeon_level` change boss_id boss_id int(11) not null default 0;
alter table `equipment_order` change hero_id hero_id int(11) not null default 0;
alter table `equipment_order` change material_id1 material_id1 int(11) not null default 0;
alter table `equipment_star` change material_id1 material_id1 int(11) not null default 0;
alter table `equipment_star` change material_id2 material_id2 int(11) not null default 0;
alter table `equipment_star` change material_id3 material_id3 int(11) not null default 0;
alter table `equipment_star` change material_id4 material_id4 int(11) not null default 0;
alter table `equipment_strengthen` change material_id1 material_id1 int(11) not null default 0;
alter table `equipment_strengthen` change material_id2 material_id2 int(11) not null default 0;
alter table `equipment_strengthen` change material_id3 material_id3 int(11) not null default 0;
alter table `equipment_strengthen` change material_id4 material_id4 int(11) not null default 0;
alter table `fashion_type` change hero_id hero_id int(11) not null default 0;
alter table `fashion_type` change material_id0 material_id0 int(11) not null default 0;
alter table `game_map` change reward_id reward_id int(11) not null default 0;
alter table `gen_event` change mapid mapid int(11) not null default 0;
alter table `gen_event` change event_id event_id int(11) not null default 0;
alter table `gen_event` change battle_scene battle_scene int(11) not null default 0;
alter table `get_lottery` change cost_item cost_item int(11) not null default 0;
alter table `get_lottery` change buy_item buy_item int(11) not null default 0;
alter table `get_lottery` change limit_award_item limit_award_item int(11) not null default 0;
alter table `goals` change activity_id activity_id int(11) not null default 0;
alter table `goals` change monitor_id monitor_id int(11) not null default 0;
alter table `goals` change award_id award_id int(11) not null default 0;
alter table `hero_class_type` change hero_type_id hero_type_id int(11) not null default 0;
alter table `hero_class_type` change item_id1 item_id1 int(11) not null default 0;
alter table `hero_class_type` change item_id2 item_id2 int(11) not null default 0;
alter table `hero_class_type` change item_id3 item_id3 int(11) not null default 0;
alter table `hero_class_type` change item_id4 item_id4 int(11) not null default 0;
alter table `hero_impression` change reward_id reward_id int(11) not null default 0;
alter table `hero_levup` change hero_id hero_id int(11) not null default 0;
alter table `hero_skill_unlock` change hero_id hero_id int(11) not null default 0;
alter table `hero_team` change hero_id hero_id int(11) not null default 0;
alter table `hero_type` change attr_id attr_id int(11) not null default 0;
alter table `hero_type` change attr_id_1 attr_id_1 int(11) not null default 0;
alter table `hero_type` change attr_id_2 attr_id_2 int(11) not null default 0;
alter table `hero_type` change exchange_item exchange_item int(11) not null default 0;
alter table `leagues_level` change bag_id bag_id int(11) not null default 0;
alter table `level_adapt` change attr_id attr_id int(11) not null default 0;
alter table `lottery_gift` change itemtype_id itemtype_id int(11) not null default 0;
alter table `luckymoney_type` change monitor_id monitor_id int(11) not null default 0;
alter table `luckymoney_type` change money_id money_id int(11) not null default 0;
alter table `monster` change attr_id attr_id int(11) not null default 0;
alter table `monster_group` change attack_status_id attack_status_id int(11) not null default 0;
alter table `offline_user_attr` change show_icon_id show_icon_id int(11) not null default 0;
alter table `offline_user_attr` change figure_id figure_id int(11) not null default 0;
alter table `offline_user_attr` change hero_typeid hero_typeid int(11) not null default 0;
alter table `offline_user_attr` change wearing_fashion wearing_fashion int(11) not null default 0;
alter table `offline_user_attr` change pet1_id pet1_id int(11) not null default 0;
alter table `offline_user_attr` change pet2_id pet2_id int(11) not null default 0;
alter table `offline_user_attr` change figure_fishion figure_fishion int(11) not null default 0;
alter table `pet` change skill0_id skill0_id int(11) not null default 0;
alter table `pet` change skill0_id2 skill0_id2 int(11) not null default 0;
alter table `pet` change skill0_id3 skill0_id3 int(11) not null default 0;
alter table `pet` change exclusive_hero exclusive_hero int(11) not null default 0;
alter table `pet_star` change pet_id pet_id int(11) not null default 0;
alter table `pet_star` change material_id1 material_id1 int(11) not null default 0;
alter table `pet_star` change material_id2 material_id2 int(11) not null default 0;
alter table `pet_star` change material_id3 material_id3 int(11) not null default 0;
alter table `pvp_reward` change itemtype_id1 itemtype_id1 int(11) not null default 0;
alter table `pvp_reward` change itemtype_id2 itemtype_id2 int(11) not null default 0;
alter table `pvp_reward` change itemtype_id3 itemtype_id3 int(11) not null default 0;
alter table `pvp_reward` change itemtype_id4 itemtype_id4 int(11) not null default 0;
alter table `questionnaire` change award_id award_id int(11) not null default 0;
alter table `rune` change special_effects1 special_effects1 int(11) not null default 0;
alter table `rune` change special_effects2 special_effects2 int(11) not null default 0;
alter table `rune` change special_effects3 special_effects3 int(11) not null default 0;
alter table `share_boss` change monster_group_id monster_group_id int(11) not null default 0;
alter table `share_boss` change reward1_id reward1_id int(11) not null default 0;
alter table `share_boss` change reward2_id reward2_id int(11) not null default 0;
alter table `share_boss` change reward3_id reward3_id int(11) not null default 0;
alter table `share_boss` change reward4_id reward4_id int(11) not null default 0;
alter table `share_boss` change reward5_id reward5_id int(11) not null default 0;
alter table `share_boss` change reward6_id reward6_id int(11) not null default 0;
alter table `share_boss` change reward7_id reward7_id int(11) not null default 0;
alter table `share_boss` change reward8_id reward8_id int(11) not null default 0;
alter table `shop` change item_type item_type int(11) not null default 0;
alter table `skill_type` change item_require1 item_require1 int(11) not null default 0;
alter table `skill_type` change item_require2 item_require2 int(11) not null default 0;
alter table `skill_type` change item_require3 item_require3 int(11) not null default 0;
alter table `skill_type` change item_require4 item_require4 int(11) not null default 0;
alter table `syn_active_reward` change award_id award_id int(11) not null default 0;
alter table `syn_boss` change monster_group_id monster_group_id int(11) not null default 0;
alter table `syn_boss` change reward1_id reward1_id int(11) not null default 0;
alter table `syn_boss` change reward2_id reward2_id int(11) not null default 0;
alter table `syn_boss` change reward3_id reward3_id int(11) not null default 0;
alter table `syn_boss` change reward4_id reward4_id int(11) not null default 0;
alter table `syn_boss_life` change syn_boss_id syn_boss_id int(11) not null default 0;
alter table `syn_boss_record` change syn_boss_id syn_boss_id int(11) not null default 0;
alter table `syn_luckymoney` change luckymoney_id luckymoney_id int(11) not null default 0;
alter table `syn_reward` change data1 data1 int(11) not null default 0;
alter table `syn_reward` change data2 data2 int(11) not null default 0;
alter table `syn_reward` change data3 data3 int(11) not null default 0;
alter table `syn_reward` change reward1_id reward1_id int(11) not null default 0;
alter table `syn_reward` change reward2_id reward2_id int(11) not null default 0;
alter table `syn_reward` change reward3_id reward3_id int(11) not null default 0;
alter table `syn_reward` change reward4_id reward4_id int(11) not null default 0;
alter table `syndicate` change syn_flag_id syn_flag_id int(11) not null default 0;
alter table `syndicate` change syn_boss_id syn_boss_id int(11) not null default 0;
alter table `system_mail` change item1_id item1_id int(11) not null default 0;
alter table `system_mail` change item2_id item2_id int(11) not null default 0;
alter table `system_mail` change item3_id item3_id int(11) not null default 0;
alter table `system_mail` change item4_id item4_id int(11) not null default 0;
alter table `system_mail` change item5_id item5_id int(11) not null default 0;
alter table `user` change show_hero_id show_hero_id int(11) not null default 0;
alter table `user` change icon_id icon_id int(11) not null default 0;
alter table `user` change mapid mapid int(11) not null default 0;
alter table `user_activity` change activityid activityid int(11) not null default 0;
alter table `user_activity_point` change activity_id activity_id int(11) not null default 0;
alter table `user_activity_sign` change type_id type_id int(11) not null default 0;
alter table `user_arrest_data` change data1 data1 int(11) not null default 0;
alter table `user_box` change box_id box_id int(11) not null default 0;
alter table `user_dungeon_info` change dungeon_level_id dungeon_level_id int(11) not null default 0;
alter table `user_fashion` change fashion_id  fashion_id int(11) not null default 0;
alter table `user_hero` change typeid typeid int(11) not null default 0;
alter table `user_hero` change wearing_fashion wearing_fashion int(11) not null default 0;
alter table `user_hero_skill` change rune_id rune_id int(11) not null default 0;
alter table `user_luckymoney` change luckymoney_id luckymoney_id int(11) not null default 0;
alter table `user_mail_get` change mail_id mail_id int(11) not null default 0;
alter table `user_pet` change pet_id pet_id int(11) not null default 0;
alter table `user_shareboss_info` change group_id group_id int(11) not null default 0;
alter table `user_shareboss_join` change show_icon_id show_icon_id int(11) not null default 0;
alter table `user_shop` change goods_id goods_id int(11) not null default 0;
alter table `user_system_mail` change mail_id mail_id int(11) not null default 0;
alter table `user_material` change item_type item_type int(11) not null default 0;

alter table `system_mail` change text text varchar(256) not null default '';

-- v5.1
CREATE TABLE `user_loop_target_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `goal_id` int(11) NOT NULL DEFAULT 0,
  `point`  int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_loop_target_points` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `user_loop_activity_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `user_activity_point` int(11) NOT NULL DEFAULT 0,
  `date_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_loop_activity_points` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `loop_activity_random` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time_flag` bigint(20) NOT NULL DEFAULT 0,
  `goal`  int(11) NOT NULL DEFAULT 0,
  `act_id`  int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_shop_refresh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `shop_type` int(11) NOT NULL DEFAULT 0,
  `item1`  int(11) NOT NULL DEFAULT 0,
  `purchase_num1`  int(11) NOT NULL DEFAULT 0,
  `item2`  int(11) NOT NULL DEFAULT 0,
  `purchase_num2`  int(11) NOT NULL DEFAULT 0,
  `item3`  int(11) NOT NULL DEFAULT 0,
  `purchase_num3`  int(11) NOT NULL DEFAULT 0,
  `item4`  int(11) NOT NULL DEFAULT 0,
  `purchase_num4`  int(11) NOT NULL DEFAULT 0,
  `item5`  int(11) NOT NULL DEFAULT 0,
  `purchase_num5`  int(11) NOT NULL DEFAULT 0,
  `item6`  int(11) NOT NULL DEFAULT 0,
  `purchase_num6`  int(11) NOT NULL DEFAULT 0,
  `item7`  int(11) NOT NULL DEFAULT 0,
  `purchase_num7`  int(11) NOT NULL DEFAULT 0,
  `item8`  int(11) NOT NULL DEFAULT 0,
  `purchase_num8`  int(11) NOT NULL DEFAULT 0,
  `item9`  int(11) NOT NULL DEFAULT 0,
  `purchase_num9`  int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_shop_refresh` ADD INDEX idx_user_id( `user_id` );

-- 静态表
CREATE TABLE shop_config (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_type` int(11) NOT NULL DEFAULT 0,
  `award_id` int(11) NOT NULL DEFAULT 0,
  `num`  int(11) NOT NULL DEFAULT 0,
  `refresh_time` int(11) NOT NULL DEFAULT 0,
	`times_type`   int(11) NOT NULL DEFAULT 0,
	`ticket_id`    int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE shop_refresh (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_type` int(11) NOT NULL DEFAULT 0,
  `award_id` int(11) NOT NULL DEFAULT 0,
  `item_type`  int(11) NOT NULL DEFAULT 0,
  `money_type` int(11) NOT NULL DEFAULT 0,
	`price`   int(11) NOT NULL DEFAULT 0,
	`limit_amount`    int(11) NOT NULL DEFAULT 0,
	`weight`   int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `fight_replay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `battle_id` bigint(20)  NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `sub_sort` int(11) NOT NULL DEFAULT 0,
  `attack_id` bigint(20)  NOT NULL DEFAULT 0,
  `defence_id` bigint(20) NOT NULL DEFAULT 0,
  `is_attack_win` int(11) NOT NULL DEFAULT 0,
  `result_info`  MEDIUMBLOB,
  `is_attack_first`int(11)  NOT NULL DEFAULT 0,
  `is_sneak` int(11)  NOT NULL DEFAULT 0,
  `random_seed` bigint(20)  NOT NULL DEFAULT 0,
  `battle_scene_id` int(11)  NOT NULL DEFAULT 0,
  `attack_control_type` int(11) NOT NULL DEFAULT 0,
  `defence_control_type` int(11)  NOT NULL DEFAULT 0,
  `attack_info`  MEDIUMBLOB,
  `defence_info`  MEDIUMBLOB,
  `attack_hero_info`  MEDIUMBLOB,
  `defence_hero_info`  MEDIUMBLOB,
  `choice_info`  MEDIUMBLOB,
  `pve_info`  MEDIUMBLOB,
  `pvp_info`  MEDIUMBLOB,
  `battle_info`  MEDIUMBLOB,
  `place_sta_info`  MEDIUMBLOB,
  `battle_time` bigint(20) NOT NULL DEFAULT 0,
  `version` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `fight_replay` ADD INDEX idx_battle_id( `battle_id` );

CREATE TABLE `loop_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL DEFAULT 0,
  `award_id` int(11) NOT NULL DEFAULT 0,
  `point`  int(11) NOT NULL DEFAULT 0,
  `goals`  varchar(128) not null default '',
  `random_num`  int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `loop_activity_goal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `once_point` int(11) NOT NULL DEFAULT 0,
  `point_max`  int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `supply_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_type` int(11) NOT NULL DEFAULT 0,
  `card_time` int(11) NOT NULL DEFAULT 0,
  `buy_award` int(11) NOT NULL DEFAULT 0,
  `daily_award` int(11) NOT NULL DEFAULT 0,
  `trail_id` int(11) NOT NULL DEFAULT 0,
  `trail_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_supply_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `supply_card_id` int(11) NOT NULL DEFAULT 0,
  `due_time` int(11) NOT NULL DEFAULT 0,
  `last_pick` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_supply_card` ADD INDEX idx_user_id( `user_id` );

alter table `skill_pos` add realtime int(11) NOT NULL DEFAULT 0 after show_time;

alter table `dailyact` add day int(11) NOT NULL DEFAULT 0 after data3;
alter table `dailyact` add against_id int(11) NOT NULL DEFAULT 0 after id;
alter table `system_mail` change text text varchar(256) not null default '';

CREATE TABLE `shop_deblocking` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`shop_type` int(11) NOT NULL DEFAULT 0,
	`deblocking_id` int(11) NOT NULL DEFAULT 0,
	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table `icon_mask` add icon_type int(11) not null default 0 after icon_id;
alter table `icon_mask` change user_icon icon_index int(11) not null default 0; 

alter table `user_monitor_mask` add data7 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data6;
alter table `user_monitor_mask` add data8 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data7;
alter table `user_monitor_mask` add data9 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data8;
alter table `user_monitor_mask` add data10 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data9;
alter table `user_monitor_mask` add data11 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data10;
alter table `user_monitor_mask` add data12 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data11;
alter table `user_monitor_mask` add data13 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data12;
alter table `user_monitor_mask` add data14 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data13;
alter table `user_monitor_mask` add data15 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data14;

alter table `user_goals` add data11 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data10;
alter table `user_goals` add data12 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data11;
alter table `user_goals` add data13 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data12;
alter table `user_goals` add data14 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data13;
alter table `user_goals` add data15 bigint(20) UNSIGNED NOT NULL DEFAULT 0 after data14;


-- V5.2
alter table `skill_type` add qte int(11)  NOT NULL DEFAULT 0 after level_require;
alter table `user_task` add quality int(11)  NOT NULL DEFAULT 0 after type;

alter table `monitor` add num_type int(11) NOT NULL DEFAULT 0 after type_id;
alter table `monitor` add data4 int(11) NOT NULL DEFAULT 0 after data3;

CREATE TABLE `orgcoming_user_point` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`user_id` bigint(20) NOT NULL DEFAULT 0,
	`point` int(11) NOT NULL DEFAULT 0,
	`update_time` bigint(20) NOT NULL DEFAULT 0,
	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `orgcoming_syn_num` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`syn_id` bigint(20) NOT NULL DEFAULT 0,
	`num` int(11) NOT NULL DEFAULT 0,
	`update_time` bigint(20) NOT NULL DEFAULT 0,
	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `activity_time` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`type` int(11) NOT NULL DEFAULT 0,
	`time` bigint(20) NOT NULL DEFAULT 0,
	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user_shareboss_info add type int(11) NOT NULL DEFAULT 0 after boss_key_id;
alter table share_boss add type int(11) NOT NULL DEFAULT 0 after monster_group_id;

CREATE TABLE `user_guide` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `star` int(11) NOT NULL DEFAULT 0,
  `order1` int(11) NOT NULL DEFAULT 0,
  `order2` int(11) NOT NULL DEFAULT 0,
  `order3` int(11) NOT NULL DEFAULT 0,
  `order4` int(11) NOT NULL DEFAULT 0,
  `order5` int(11) NOT NULL DEFAULT 0,
  `order6` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_guide` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `guide_task` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`star` int(11) NOT NULL DEFAULT 0,
	`type` int(11) NOT NULL DEFAULT 0,
	`order` int(11) NOT NULL DEFAULT 0,
	`monitor_id` int(11) NOT NULL DEFAULT 0,
	`statistics_type` int(11) NOT NULL DEFAULT 0,
	`statistics_num` int(11) NOT NULL DEFAULT 0,
	`league_exp` int(11) NOT NULL DEFAULT 0,
	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `guide_star` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`star` int(11) NOT NULL DEFAULT 0,
	`league_level` int(11) NOT NULL DEFAULT 0,
	`monitor1_id` int(11) NOT NULL DEFAULT 0,
	`monitor2_id` int(11) NOT NULL DEFAULT 0,
	`monitor3_id` int(11) NOT NULL DEFAULT 0,
	`monitor4_id` int(11) NOT NULL DEFAULT 0,
	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_training` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20)  NOT NULL DEFAULT 0,
  `unlock_data1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `pass_data1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reward_data1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `unlock_data2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `pass_data2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reward_data2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `unlock_data3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `pass_data3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reward_data3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_training` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `training_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `training_type` int(11) NOT NULL DEFAULT 0,
  `battle_id` int(11) NOT NULL DEFAULT 0,
  `mask_segment` int(11) NOT NULL DEFAULT 0,
  `mask_bit` int(11) NOT NULL DEFAULT 0,
  `unlock_training` int(11) NOT NULL DEFAULT 0,
  `reward_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table user_times add update_time bigint(20) NOT NULL DEFAULT 0 after change_times;
alter table pvp_user_record add update_time bigint(20) NOT NULL DEFAULT 0 after clear_cd;
alter table user drop column times_update;

alter table times_limit add refresh_time int(11)  NOT NULL DEFAULT 0 after recover_time;
alter table times_limit add type_desc varchar(128) not null default '' after refresh_time;

CREATE TABLE `out_exp_limit` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`level` int(11) NOT NULL DEFAULT 0,
	`out_exp_limit` int(11) NOT NULL DEFAULT 0,
	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `server_level_limit` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`open_day` int(11) NOT NULL DEFAULT 0,
	`level_limit` int(11) NOT NULL DEFAULT 0,
	`exp_ratio` int(11) NOT NULL DEFAULT 0,
	`out_attenuation` int(11) NOT NULL DEFAULT 0,
	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_daily_exp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `daily_exp_limit` int(11) NOT NULL DEFAULT 0,
  `daily_get_exp` int(11) NOT NULL DEFAULT 0,
  `out_exp` int(11) NOT NULL DEFAULT 0,
  `last_time` bigint(20) NOT NULL DEFAULT 0, 
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_daily_exp` ADD INDEX idx_user_id( `user_id` );

alter table `system_mail` add min_login_time bigint(20) not null default 0 after min_level;
alter table `system_mail` add max_login_time bigint(20) not null default 0 after min_login_time;
alter table `user_supply_card` change `due_time` `due_time` bigint(20) NOT NULL DEFAULT 0;
alter table `user_supply_card` change `last_pick` `last_pick` bigint(20) NOT NULL DEFAULT 0;

-- battle_replay 是动态表-记录战斗校验失败的数据
alter table `battle_replay` add right_id bigint(20) not null default 0 after user_id;

CREATE TABLE `user_function_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `max_time` bigint(20) NOT NULL DEFAULT 0,
  `type_desc` varchar(128) not null default '',
  `time_flag` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table `battle_replay` add version int(11) not null default 0 after info;


-- V5.3

CREATE TABLE `broadcast_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `audience` int(11) NOT NULL DEFAULT 0,
  `channel` int(11) NOT NULL DEFAULT 0,
  `monitor_id` int(11) NOT NULL DEFAULT 0,
  `activity_id` int(11) NOT NULL DEFAULT 0,
  `data1` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `system_broadcast` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audience` int(11) NOT NULL DEFAULT 0,
  `channel` int(11) NOT NULL DEFAULT 0,
  `activation_time` bigint(20) NOT NULL DEFAULT 0,
  `invalid_time` bigint(20) NOT NULL DEFAULT 0,
  `loop_time` int(11) NOT NULL DEFAULT 0,
  `set_time` varchar(256) not null default '',
  `text`  varchar(256) not null default '',
  `is_open` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table `luckymoney_type` add min_num int(11) not null default 0 after money_num;

alter table `syndicate` add donate_times int(11) not null default 0 after reward_life;
alter table `syndicate` add last_donate_date bigint(20) not null default 0 after donate_times;
drop table `syn_boss_record`;

CREATE TABLE `poker_adapt_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adapt_level` int(11) NOT NULL DEFAULT 0,
  `poker_id` int(11) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `boss_id` int(11) NOT NULL DEFAULT 0,
  `taskgroup_id` int(11) NOT NULL DEFAULT 0,
  `information` int(11) NOT NULL DEFAULT 0,
  `point` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `poker_overflow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poker_id` int(11) NOT NULL DEFAULT 0,
  `overflow` int(11) NOT NULL DEFAULT 0,
  `weight1` int(11) NOT NULL DEFAULT 0,
  `weight2` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `poker_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskgroup_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `get_infomation` int(11) NOT NULL DEFAULT 0,
  `condition1` int(11) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `condition2` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `condition3` int(11) NOT NULL DEFAULT 0,
  `data3` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `user_poker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `point` int(11) NOT NULL DEFAULT 0,
  `mask` int(11) NOT NULL DEFAULT 0,
  `pokerid1` int(11) NOT NULL DEFAULT 0,
  `information` int(11) NOT NULL DEFAULT 0,
  `pokerid2` int(11) NOT NULL DEFAULT 0,
  `pokerid3` int(11) NOT NULL DEFAULT 0,
  `pokerid4` int(11) NOT NULL DEFAULT 0,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 0, 
  `complete` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_poker` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `user_poker_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `task_id1` int(11) NOT NULL DEFAULT 0,
  `time1` bigint(20) NOT NULL DEFAULT 0, 
  `hero1` varchar(128) not null default '',
  `task_id2` int(11) NOT NULL DEFAULT 0,
  `time2` bigint(20) NOT NULL DEFAULT 0, 
  `hero2` varchar(128) not null default '',
  `task_id3` int(11) NOT NULL DEFAULT 0,
  `time3` bigint(20) NOT NULL DEFAULT 0, 
  `hero3` varchar(128) not null default '',
  `task_id4` int(11) NOT NULL DEFAULT 0,
  `time4` bigint(20) NOT NULL DEFAULT 0, 
  `hero4` varchar(128) not null default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `user_poker_task` ADD INDEX idx_user_id( `user_id` );

CREATE TABLE `server_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data1` int(11) NOT NULL DEFAULT 0,
  `data2` int(11) NOT NULL DEFAULT 0,
  `data3` int(11) NOT NULL DEFAULT 0,
  `data4` int(11) NOT NULL DEFAULT 0,
  `data5` int(11) NOT NULL DEFAULT 0,
  `data6` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;