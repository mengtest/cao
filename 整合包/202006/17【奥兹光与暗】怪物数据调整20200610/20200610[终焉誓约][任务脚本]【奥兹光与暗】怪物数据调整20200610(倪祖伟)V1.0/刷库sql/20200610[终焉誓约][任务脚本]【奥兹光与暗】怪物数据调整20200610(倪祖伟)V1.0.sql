###################################################
#20200610[终焉誓约][任务脚本]【奥兹光与暗】怪物数据调整20200610(倪祖伟)
#by:倪祖伟
#date:2020-06-10
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-374540.aspx
###################################################
#注释部分

#打开注释部分

###################################################
UPDATE `monster` SET `level`=18 WHERE `id`=9000659;
UPDATE `monster` SET `level`=22 WHERE `id`=9000662;
UPDATE `monster` SET `level`=28 WHERE `id`=9000664;
UPDATE `monster` SET `level`=28 WHERE `id`=9000665;

UPDATE `attribute` SET `life`=19052, `phy_atk`=866, `mgc_atk`=866, `phy_def`=519, `mgc_def`=519 WHERE `id` =9000659;
UPDATE `attribute` SET `life`=28580, `phy_atk`=1181, `mgc_atk`=1181, `phy_def`=472, `mgc_def`=472 WHERE `id` =9000662;
UPDATE `attribute` SET `life`=45108, `phy_atk`=1783, `mgc_atk`=1783, `phy_def`=713, `mgc_def`=713 WHERE `id` =9000664;
UPDATE `attribute` SET `life`=45108, `phy_atk`=1783, `mgc_atk`=1783, `phy_def`=1069, `mgc_def`=1069 WHERE `id` =9000665;
