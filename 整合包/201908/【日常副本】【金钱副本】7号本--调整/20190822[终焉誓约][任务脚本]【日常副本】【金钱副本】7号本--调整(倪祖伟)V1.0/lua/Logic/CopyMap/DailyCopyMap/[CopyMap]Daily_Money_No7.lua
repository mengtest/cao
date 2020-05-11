--region rwTask_Trap_In.lua
--Purpose:		日常新版金币副本7号
--Creator: 		倪祖伟
--Created:		2019-08-22
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-08-22 $
--RCS-ID:		$Revision: 2 $
--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3138
local tEnterMapInit = {
	3138006,		--宝箱
	3138007,3138008,3138009,3138010,3138011,3138012,		--怪物
}

--local tAward = {}
--tAward.NorMalBox = 1000593
--tAward.PassBox = 1000594

local tBox = {}
tBox.jin = 40291
tBox.yin = 40292
tBox.ton = 40293
-- tBox.Normal4 = 40294
-- tBox.Normal5 = 40295
tBox.PassBox = 40296

local nTempdata = 1224

local tPos = {
	"66.71,-9.29,-0.11",
	"43.59,-9.046,-13.296",
	"41.84,-9.04,-1.74",
	"34.16,-7.87,-8.6",
	"90.89,-9.18,27.65"
}
local tRot = {
	139.08,
	-9.38,
	170.62,
	81.49,
	274.08
}

local tGolderBoxGen = {3138001,3138002,3138003,3138004,3138005}
local tSilverBoxGen = {3138013,3138014,3138015,3138016,3138017}
local tCopperBoxGen = {3138018,3138019,3138020,3138021,3138022}

--金
rwtNpcGroup[tBox.jin] = rwtNpcGroup[tBox.jin] or {}    
rwtNpcGroup[tBox.jin]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tBox.jin]["CollectTime"] = 2
rwtNpcGroup[tBox.jin]["Awards"] = {}  
rwtNpcGroup[tBox.jin]["Awards"]["Events"] = {}   
rwtNpcGroup[tBox.jin]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.jin]["Awards"]["Events"][1]["GetServerAward"] = {}        
rwtNpcGroup[tBox.jin]["Awards"]["Events"][1]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tBox.jin]["Awards"]["Events"][1]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Money_Award_Gold
rwtNpcGroup[tBox.jin]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.jin]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tBox.jin]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.jin

--银
rwtNpcGroup[tBox.yin] = rwtNpcGroup[tBox.yin] or {}    
rwtNpcGroup[tBox.yin]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tBox.yin]["CollectTime"] = 2
rwtNpcGroup[tBox.yin]["Awards"] = {}  
rwtNpcGroup[tBox.yin]["Awards"]["Events"] = {}   
rwtNpcGroup[tBox.yin]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.yin]["Awards"]["Events"][1]["GetServerAward"] = {}        
rwtNpcGroup[tBox.yin]["Awards"]["Events"][1]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tBox.yin]["Awards"]["Events"][1]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Money_Award_Silver
rwtNpcGroup[tBox.yin]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.yin]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tBox.yin]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.yin

--铜
rwtNpcGroup[tBox.ton] = rwtNpcGroup[tBox.ton] or {}    
rwtNpcGroup[tBox.ton]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tBox.ton]["CollectTime"] = 2
rwtNpcGroup[tBox.ton]["Awards"] = {}  
rwtNpcGroup[tBox.ton]["Awards"]["Events"] = {}   
rwtNpcGroup[tBox.ton]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.ton]["Awards"]["Events"][1]["GetServerAward"] = {}        
rwtNpcGroup[tBox.ton]["Awards"]["Events"][1]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tBox.ton]["Awards"]["Events"][1]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Money_Award_Copper
rwtNpcGroup[tBox.ton]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.ton]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tBox.ton]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.ton


rwtNpcGroup[tBox.PassBox] = rwtNpcGroup[tBox.PassBox] or {}    
rwtNpcGroup[tBox.PassBox]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tBox.PassBox]["CollectTime"] = 3
rwtNpcGroup[tBox.PassBox]["Awards"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Money_Award_Pass
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.PassBox
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][2] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][2]["OpenDialog"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][2]["OpenDialog"]["DialogId"] = 6862

----***************************副本配置定义***************************----
rwtTarget[60306] = {}
rwtTarget[60306]["Title"] = tLuaText[LANGUAGE_CONFIG][21799]
rwtTarget[60306]["ReqCollectId"] = tBox.PassBox
rwtTarget[60306]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["DailyType"] = CONST_DAILYCOPYMAP_TYPE.MONEY_MAP
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60306}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nTempdata
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nTempdata
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][3] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][3]["TempDataId"] = nTempdata
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][3]["DataIndex"] = CONST_TEMP_DATA.Data5
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][3]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][4] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][4]["TempDataId"] = nTempdata
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][4]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][4]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][5] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][5]["TempDataId"] = nTempdata
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][5]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][5]["SetValue"] = nCopyMapId

rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = 1224
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = nCopyMapId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterMapInit
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6861

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"] = {}                               
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["TotalNum"] = 5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["PosGroupData"] = tPos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["RotGroupData"] = tRot
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["FlagTemp"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["FlagData"] = CONST_TEMP_DATA.Data6
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][1]["MinNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][1]["MaxNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][1]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][1]["Rate"] = 3000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][1]["GenId"] = tGolderBoxGen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][2]["MinNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][2]["MaxNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][2]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][2]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][2]["Rate"] = 3000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][2]["GenId"] = tSilverBoxGen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][3]["MinNum"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][3]["MaxNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][3]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][3]["DataIndex"] = CONST_TEMP_DATA.Data5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][3]["Rate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomWithFloatRule"][1]["GenGroupData"][3]["GenId"] = tCopperBoxGen
