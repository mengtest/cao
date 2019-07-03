--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--盗贼领地副本



--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3029

--进入副本NPC
rwtNpcGroup[50017] = {}
rwtNpcGroup[50017]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50017]["UnlockDialog"] = 5211
rwtNpcGroup[50017]["Dialog"] = 5205
rwtNpcGroup[50017]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60021}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10140  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 3029008 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5167
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nBox_Gen_Id_3}


-- rwtCopyMapMission[nCopyMapId]["NotCreate"] = 0




rwtTarget[60021] = {}
rwtTarget[60021]["Title"] =tLuaText[LANGUAGE_CONFIG][20025]
rwtTarget[60021]["KillMonsterGroup"] = 300103
rwtTarget[60021]["ReqCount"] = 1

--物品
local nItemId_Key = 7000010 --钥匙											   ·

--NPC
local nNpcGroup_Girl = 20275
local nNpcGroup_Girl_GenId = 3029001
local nNpc_Girl = 3235    --萨沙

--boss
local nMonsterGroupId_YinCanBoss = 300104 --死亡掉落钥匙
local nMonsterGroupId_Boss = 300103 

--宝箱genid
local nBox_Gen_Id_3 = 3029007
local tPandoraBoxGen = {}

--潘多拉宝盒概率事件
local tPandoraBox = {
    --概率,事件,事件参数
    {40,["sEvent"] = "AwardMoney",["nParam"] = 5000},
    {80,["sEvent"] = "AwardMoney",["nParam"] = 10000},
    {100,["sEvent"] = "AwardMoney",["nParam"] = 20000},
}

--------任务ID--------------
--罗兰镇佣兵任务
local tLuoLanZhenMercenaryTask = {20125,20126,20127,20128,20129}

----***************************逻辑***************************----
--随机刷出潘多拉宝盒	   ---------改固定
function CopyMap_NorMal_DaoZei_PandoraBox_Pos_Random()
	rwAddGenEvent(nBox_Gen_Id_3)
end

--潘多拉宝盒
--位置3

--rwtNpcGroup[40049] = rwtNpcGroup[40049] or {}  --宝盒
--rwtNpcGroup[40049]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[40049]["Awards"] = {}
----rwtNpcGroup[40049]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
----rwtNpcGroup[40049]["Awards"]["AwardId"] = 1000035
--rwtNpcGroup[40049]["Awards"]["Events"] = {}
--rwtNpcGroup[40049]["Awards"]["Events"][1] = {}
--rwtNpcGroup[40049]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtNpcGroup[40049]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
--rwtNpcGroup[40049]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40049
--rwtNpcGroup[40049]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[40049]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000035 


-------初始化
--function CopyMap_NorMal_DaoZei_InitMap()--初始化函数
--   rwPrintLog("进入玫瑰团驻地普通单人副本，开始执行初始化函数")
--   CopyMap_NorMal_DaoZei_PandoraBox_Pos_Random()--刷出潘多拉宝盒
--   --rwAddGenEvent(nTrap_Hide_GenId_Boss)  
--   rwOpenNpcChatDialog(5167,CONST_NPCCHAT_TYPE.NPC)		
--   rwPrintLog("玫瑰团驻地普通单人副本初始化函数执行完毕")
--end
----切图后触发
--rwtSceneLoad_Func[nCopyMapId] = rwtSceneLoad_Func[nCopyMapId] or {}
--table.insert(rwtSceneLoad_Func[nCopyMapId],CopyMap_NorMal_DaoZei_InitMap)
