--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--by zy
--endregion
local nCopyMapId = 3129
local nTempDataId = 1224

local tMonsterGroup = {}
tMonsterGroup.Monster_1 = 200647
tMonsterGroup.Monster_2 = 200648
tMonsterGroup.Monster_3 = 200663
tMonsterGroup.Monster_4 = 200664
tMonsterGroup.Monster_5 = 200665
tMonsterGroup.Monster_6 = 200666

local tNpcGroup = {}
tNpcGroup.Trap = 30653
tNpcGroup.Box_Normal = 40282
tNpcGroup.Box_Final = 40283

local tDialog = {}
tDialog.EnterMap = 6879
tDialog.PassCopyMap = 6881

local tAward = {}
tAward.Box_Normal = 1000552
tAward.Box_Final = 1000553

local nCG_Id = 16508

local tGenId = {}
tGenId.Trap = 3129001
tGenId.Box_Normal_1 = 3129002
tGenId.Box_Normal_2 = 3129003
tGenId.Box_Normal_3 = 3129004
tGenId.Box_Normal_4 = 3129005
tGenId.Box_Final = 3129006
tGenId.Monster_1 = 3129007
tGenId.Monster_2 = 3129008
tGenId.Monster_3 = 3129009
tGenId.Monster_4 = 3129010
tGenId.Monster_5 = 3129011
tGenId.Monster_6 = 3129012

local nTarget = 60299

--rwtNpcGroup[tNpcGroup.Trap] = rwtNpcGroup[tNpcGroup.Trap] or {}    
--rwtNpcGroup[tNpcGroup.Trap]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[tNpcGroup.Trap]["DelTrap"] = 1
--rwtNpcGroup[tNpcGroup.Trap]["Awards"] = {}  
--rwtNpcGroup[tNpcGroup.Trap]["Awards"]["Events"] = {}    
--rwtNpcGroup[tNpcGroup.Trap]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tNpcGroup.Trap]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}
--rwtNpcGroup[tNpcGroup.Trap]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = nCG_Id
--rwtNpcGroup[tNpcGroup.Trap]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
rwtDialog[tDialog.EnterMap] = rwtDialog[tDialog.EnterMap] or {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["ChkUserTempData"] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = {0}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = nCG_Id
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0

rwtNpcGroup[tNpcGroup.Box_Normal] = rwtNpcGroup[tNpcGroup.Box_Normal] or {}    
rwtNpcGroup[tNpcGroup.Box_Normal]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Box_Normal]["CollectTime"] = 2
rwtNpcGroup[tNpcGroup.Box_Normal]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.Box_Normal]["Awards"]["Events"] = {}   
rwtNpcGroup[tNpcGroup.Box_Normal]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Box_Normal]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tNpcGroup.Box_Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Box_Normal
rwtNpcGroup[tNpcGroup.Box_Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNpcGroup.Box_Normal]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tNpcGroup.Box_Final] = rwtNpcGroup[tNpcGroup.Box_Final] or {}    
rwtNpcGroup[tNpcGroup.Box_Final]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Box_Final]["CollectTime"] = 3
rwtNpcGroup[tNpcGroup.Box_Final]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.Box_Final]["Awards"]["Events"] = {}   
rwtNpcGroup[tNpcGroup.Box_Final]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Box_Final]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tNpcGroup.Box_Final]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Box_Final
rwtNpcGroup[tNpcGroup.Box_Final]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNpcGroup.Box_Final]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tNpcGroup.Box_Final]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.Box_Final]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.PassCopyMap

rwtTarget[nTarget] = {}
rwtTarget[nTarget]["Title"] = tLuaText[LANGUAGE_CONFIG][21806]
rwtTarget[nTarget]["ReqDialogId"] = {tDialog.PassCopyMap}
rwtTarget[nTarget]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.EnterMap
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempDataId
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = {0}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["DynCreate"] = {tGenId.Trap}

