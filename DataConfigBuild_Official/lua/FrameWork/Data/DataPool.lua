--region DataPool.lua
--Date
--数据保存



--endregion

--NPC数据
rwtNpc={}

--NPC群数据
rwtNpcGroup={}

--模板任务数据
rwtTask={}

--怪物组数据
rwtMonsterGroup={}

--物品数据
rwtItem={}  

--副本数据
rwtCopyMapMission = {}

--地图数据
rwtMap = {}

--奖励数据（award_acquire表）
rwtSrvAward = {}

--场景加载完毕函数表
rwtSceneLoad_Func = {}

--副本内切换场景成功后执行函数表
rwtChangeSceneSucc_Func = {}

--对话配置
rwtDialog = {}

--rwLoadFunC.lua映射
rwtTaskNpcInfo = {}--以NPC为起始或结束的模板任务的id集合,如rwtTaskNpcInfo[NpcId]={TaskId1,TaskId2....}
rwtTaskEndNpcInfo = {}--以NPC结束的模板任务的id集合,rwtTaskEndNpcInfo[NpcId]={TaskId1,TaskId2....}
rwtTaskMonsterInfo = {}--击杀monster的模板任务的id集合,如rwtTaskMonsterInfo[MonsterType][TaskId]={Index,Count}
rwtTaskTrapInfo = {} --任务需求探测的陷阱区域，如rwtTaskTrapInfo[TrapId][TaskId] = {Index,Count}
rwtTaskCopyMapInfo = {} --任务需求通关的副本，如rwtTaskCopyMapInfo[CopyMapId][TaskId] = {}
rwtTaskMapInfo = {} --任务中切屏时需要创建动态NPC的所在地图，如rwtTaskMapInfo[MapId]={TaskId1,TaskId2....}
rwtTaskMonsterGroupInfo = {} --击杀怪物组的模板任务的id集合,如rwtTaskMonsterGroupInfo[MonsterGroupId][TaskId]={Index,Count} 
rwtTaskCollectInfo = {} --采集怪的模板任务的id集合,如rwtTaskCollectInfo[nGroupId][TaskId]={Index,Count}
rwtMercenaryTaskListByTownId = {}  --佣兵任务关联的城镇ID，如rwtMercenaryTaskListByTownId[TownId] = {TaskId1,TaskId2....}
rwtMercenaryDailyTaskListInfo = {} --佣兵日常任务集合，如rwtMercenaryDailyTaskListInfo = {TaskId1,TaskId2....}
rwtCopyEventIdInfo = {} --副本事件集合，如rwtCopyEventIdInfo = {MonsterGenId1,MonsterGenId2,CollectGenId1,....}
rwtTaskUnlockCopyMapInfo = {} --解锁副本的任务集合 如rwTaskUnlockCopyMapInfo[nCopyMapId] = {TaskId1,TaskId2....}
rwtTaskEnterCopyMapInfo = {}  --进入副本的任务集合 如 rwtTaskEnterCopyMapInfo[nCopyMapId] = {TaskId1,TaskId2....}
rwtTaskPuzzleIdInfo = {}  --以任务需求的解谜屋，如rwtTaskPuzzleIdInfo[nPuzzleId]={TaskId1,TaskId2....}
rwtTaskPuzzleObjInfo = {}  --以任务需求的解谜物体，如rwtTaskPuzzleObjInfo[ObjId]={TaskId1,TaskId2....}
rwtTaskTransFerInfo = {} --使用传送阵的模板任务的id集合，如rwtTaskTransFerInfo = {TaskId1,TaskId2....}
rwtTaskChangeMapInfo = {} --使用切屏点的模板任务的id集合，如rwtTaskChangeMapInfo = {TaskId1,TaskId2....}
rwtTaskTreasureBoxInfo = {} --开箱任务的id结合,，rwtTaskTreasureBoxInfo = {TaskId1,TaskId2....}
rwtPatrolTaskListInfo = {} --巡查的首个任务（到巡查点的任务）集合，如rwtPatrolTaskListInfo = {TaskId1,TaskId2....}
rwtCopyMapEnterNpcInfo = {} -- 副本NPC相关地图数据集合 ，如rwtCopyMapEnterNpcInfo[nMapId] = {nCopyMapId1,nCopyMapId2....}
rwtTaskUpLevelInfo = {}  -- 玩家升级任务的任务ID集合 如rwtTaskUpLevelInfo  = {TaskId1,TaskId2....}
rwtTimeCopyMapInfo = {}  -- 限时活动副本配置集合 如 rwtTimeCopyMapInfo = {EventId1={},EventId2={}}
rwtTimeCopyMap_CopymapId_Info = {}  -- 限时副本的副本ID集合 如rwtTimeCopyMap_CopymapId_Info = {nCopyMapId1,nCopyMapId2....}
rwtQuickSendTaskListInfo = {} --风迹快递任务集合 如rwtQuickSendTaskListInfo[MapId] = {TaskId1,TaskId2....}
rwtQuickSendMapTownInfo = {} --风机快递地区城镇集合 如rwtQuickSendMapTownInfo[Area] = {townId1,townId2...}
rwtPuzzleInitInfo = {} --需要初始化解密屋映射信息 如rwtPuzzleInitInfo = {nPuzzleId1，nPuzzleId2...}
rwtBubbleGenInfo = {} --需要触发冒泡的怪物或NPC的gen_eventid 如rwtBubbleGenInfo = {nGenId1,nGenId2....}

--目标映射
rwtTargetMonsterGroupInfo = {} --击杀怪物组类的目标集合,如rwtTargetMonsterGroupInfo[nMonsterGroupId]={TaskId1,TaskId2....}
rwtTargetMonsterGroupBattleFailInfo = {} --怪物战斗必输的目标集合
rwtTargetTreasureBoxInfo = {}
rwtTargetTrapInfo = {}
rwtTargetCollectInfo = {}
rwtTargetDialogEndInfo = {} --对白结束后的目标集合

----玩家上线全局函数表
tUserLoginAction = {}

--怪物AI表
--rwMonsterTypeAI = {}

--怪物组死亡触发函数表
rwtMonsterGroup_Func = {}

--解谜场景事件配置表
tPuzzleEvent = {}

--玩家解谜数据表
tUserPuzzleInfo = {}

--片区宝箱信息
tAreaBoxInfo = {}

--机关数据
tValve = {}

--(视频)操作完成函数表
rwtVideoFinish = {}
--(剧情)操作完成函数表
rwtCGFinish = {}

--新手引导完成函数表
rwtGuideFinish = {}

--玩家目标表
rwtTarget = {}

--彩蛋信息表
rwtNPCCaiDan = {}
-- 奇遇判断表
rwt_Adventure_AllBegin = {}

--改名成功回调函数表
rwtChangNameSuc = {}

--战队升级表
rwtTeamUpLevel = {}

--副本初始化表
rwtCopyMapDynInitInfo = {}   --副本地图ID动态地图ID副本表初始化
rwtCopyMapUserInitInfo = {}  --玩家ID副本表初始化

--黄金怪物怪物存储表
tActivity_GoldMonsterInfo = {}
--限时黄金怪怪物存储表
tActivity_TimeLimit_GoldMonsterInfo = {}
--全局表存放各版本语言文字
tLuaText = {}

--全局参数  出版本时修改
LANGUAGE_CONFIG = CONST_LANGUAGE_TYPE.CHINESE

--玩家定时器全局表
tUserOntimerFunc_M = {}		--按分钟
tUserOntimerFunc_HM = {}	--按小时/分钟

--多英雄副本中怪物信息表
rwtManyHeroMonsterInfo = {}

--多英雄副本中
rwtManyHeroNPCGenIDInfo = {}

--玩家风迹速递任务记录表
rwtQuickSendUserTaskInfo = {}