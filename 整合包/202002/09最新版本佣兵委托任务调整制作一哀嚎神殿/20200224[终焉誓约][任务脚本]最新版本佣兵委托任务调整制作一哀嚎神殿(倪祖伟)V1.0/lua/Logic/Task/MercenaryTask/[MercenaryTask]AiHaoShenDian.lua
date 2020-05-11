--region [MercenaryTask]AiHaoShenDian
--Purpose:		哀嚎神殿委托任务
--Creator: 		倪祖伟
--Created:		2019-01-01
--Modifier:		$Author: 倪祖伟$
--Modified:		$Date: 2020-02-26 $
--RCS-ID:		$Revision: 2 $
--endregion

local nAiHaoShenDianMercenaryTask_11 = 20296        -- 背叛者
local nAiHaoShenDianMercenaryTask_12 = 20297        -- 背叛者
local nAiHaoShenDianMercenaryTask_13 = 20298        -- 背叛者
local nAiHaoShenDianMercenaryTask_14 = 20299        -- 背叛者
local nAiHaoShenDianMercenaryTask_15 = 20300        -- 背叛者

local nAiHaoShenDianMercenaryTask_21 = 20306        -- 驱逐恶灵--2001595
local nAiHaoShenDianMercenaryTask_22 = 20307        -- 驱逐恶灵
local nAiHaoShenDianMercenaryTask_23 = 20308        -- 驱逐恶灵
local nAiHaoShenDianMercenaryTask_24 = 20309        -- 驱逐恶灵
local nAiHaoShenDianMercenaryTask_25 = 20310        -- 驱逐恶灵

local nAiHaoShenDianMercenaryTask_26 = 20311        -- 亡灵骑士--2001597
local nAiHaoShenDianMercenaryTask_27 = 20312        -- 亡灵骑士
local nAiHaoShenDianMercenaryTask_28 = 20313        -- 亡灵骑士
local nAiHaoShenDianMercenaryTask_29 = 20314        -- 亡灵骑士
local nAiHaoShenDianMercenaryTask_30 = 20315        -- 亡灵骑士

local nAiHaoShenDianMercenaryTask_31 = 20316        -- 捕捉嗜血战魂
local nAiHaoShenDianMercenaryTask_32 = 20317        -- 捕捉嗜血战魂
local nAiHaoShenDianMercenaryTask_33 = 20318        -- 捕捉嗜血战魂
local nAiHaoShenDianMercenaryTask_34 = 20319        -- 捕捉嗜血战魂
local nAiHaoShenDianMercenaryTask_35 = 20320        -- 捕捉嗜血战魂

local nAiHaoShenDianMercenaryTask_41 = 20326        -- 《编年史（五）》
local nAiHaoShenDianMercenaryTask_42 = 20327        -- 《编年史（五）》
local nAiHaoShenDianMercenaryTask_43 = 20328        -- 《编年史（五）》
local nAiHaoShenDianMercenaryTask_44 = 20329        -- 《编年史（五）》
local nAiHaoShenDianMercenaryTask_45 = 20330        -- 《编年史（五）》

local nAiHaoShenDianMercenaryTask_66 = 20431    --丧尸法师（0/1）
local nAiHaoShenDianMercenaryTask_67 = 20432    --丧尸法师（0/1）
local nAiHaoShenDianMercenaryTask_68 = 20433    --丧尸法师（0/1）
local nAiHaoShenDianMercenaryTask_69 = 20434    --丧尸法师（0/1）
local nAiHaoShenDianMercenaryTask_70 = 20435    --丧尸法师（0/1）

--DialogId---------------
local tAccpetDialogId = {}
    tAccpetDialogId["BeiPan"]       = 10317     -- 背叛者，武装狼人
    tAccpetDialogId["ELing"]        = 10321     -- 驱逐恶灵
    tAccpetDialogId["DeathKnight"]  = 10322
    tAccpetDialogId["ShiXue"]       = 10323     -- 捕捉嗜血战魂
    tAccpetDialogId["LiShi"]        = 10326     -- 采集编年史
    tAccpetDialogId["BianYiFS"]     = 11347     -- 
local tDiaologId = {}
    tDiaologId["BeiPan"]              = 10318             -- 背叛者，武装狼人
    tDiaologId["BeiPan_battleAft"]    = 10320      -- 背叛者，武装狼人战后对白
    tDiaologId["DeathKnight"]         = 10325
    tDiaologId["ShiXue"]              = 10313
    tDiaologId["ShiXue_battleAft"]    = 10314
    tDiaologId["LiShi"]               = 10315
    tDiaologId["BianYiFS"]            = 10316

------------------------
local nMercenaryTownId = 200105                     -- 哀嚎神殿解锁城镇ID 
local nFirstArea = 2001                             -- 第一片区
local nEffectID = 2018
local nSize = 70
--npc-------------------------------
-- local nNpc_JiLa = 3042                                      -- 吉拉，佣兵接线员

local nNpcGroup_MiTan = 20094                               -- 秘密探员
-- local nGenId_MiTan = 2001183
local nNpc_MiTan = 3070
rwtNpc[nNpc_MiTan] = rwtNpc[nNpc_MiTan] or {}
rwtNpcGroup[nNpcGroup_MiTan] = rwtNpcGroup[nNpcGroup_MiTan] or {}
rwtNpcGroup[nNpcGroup_MiTan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_MiTan]["NpcId"] = nNpc_MiTan         

local nNpcGroup_TuoNi = 20095                               -- 佣兵托尼
-- local nGenId_TuoNi = 2001184
local nNpc_TuoNi = 3069
rwtNpc[nNpc_TuoNi] = rwtNpc[nNpc_TuoNi] or {}
-- rwtNpc[nNpc_TuoNi]["DialogId"] = 0
rwtNpcGroup[nNpcGroup_TuoNi] = rwtNpcGroup[nNpcGroup_TuoNi] or {}
rwtNpcGroup[nNpcGroup_TuoNi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_TuoNi]["NpcId"] = nNpc_TuoNi         

rwtNpc[2001] = rwtNpc[2001] or {}

local nNpcGroup_BeiPan = 20097                              -- 背叛者
local nNpc_Beipan = 4160
rwtNpc[nNpc_Beipan] = rwtNpc[nNpc_Beipan] or {}
rwtNpcGroup[nNpcGroup_BeiPan] = rwtNpcGroup[nNpcGroup_BeiPan] or {}
rwtNpcGroup[nNpcGroup_BeiPan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_BeiPan]["NpcId"] = nNpc_Beipan       


local nNpcGroup_ZH_Shang = 21173
local nNpc_ZH_Shang = 4165
rwtNpc[nNpc_ZH_Shang] = rwtNpc[nNpc_ZH_Shang] or {}
rwtNpcGroup[nNpcGroup_ZH_Shang] = rwtNpcGroup[nNpcGroup_ZH_Shang] or {}
rwtNpcGroup[nNpcGroup_ZH_Shang]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ZH_Shang]["NpcId"] = nNpc_ZH_Shang

local nNpcGroup_ShiXueZH = 21174
local nNpc_ShiXueZH = 4163
rwtNpc[nNpc_ShiXueZH] = rwtNpc[nNpc_ShiXueZH] or {}
rwtNpcGroup[nNpcGroup_ShiXueZH] = rwtNpcGroup[nNpcGroup_ShiXueZH] or {}
rwtNpcGroup[nNpcGroup_ShiXueZH]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ShiXueZH]["NpcId"] = nNpc_ShiXueZH

local nNpcGroup_BianYiFS = 21175
local nNpc_BianYiFS = 4166
rwtNpc[nNpc_BianYiFS] = rwtNpc[nNpc_BianYiFS] or {}
rwtNpcGroup[nNpcGroup_BianYiFS] = rwtNpcGroup[nNpcGroup_BianYiFS] or {}
rwtNpcGroup[nNpcGroup_BianYiFS]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_BianYiFS]["NpcId"] = nNpc_BianYiFS
--Monster-----------------------------
local nMonsterGroup_BeiPan = 900179                         -- 背叛者 武装狼人
local nGenIDNPC_BeiPan = 2001189                         -- 背叛者 武装狼人
local nGenIDMonster_BeiPan = 2001185                         -- 背叛者 武装狼人
local nMonsterGroup_ShiXueZH = 900181                       -- 嗜血战魂
local nGenIDMonster_ShiXueZH = 2001502                       -- 嗜血战魂
local nGenIDNPC_ShiXueZH = 20010312                     -- 嗜血战魂
local nMonsterGroup_ZH_Ling = 900206                        -- 战魂之灵
local nGenIdMonster_ZH_Ling = 2001756                        -- 战魂之灵
local nNeedKill = 1                                         -- 需要击杀恶灵的数量

local nMonsterGroup_ZH_Shang = 900207                       -- 战魂之殇
local nGenIDMonster_ZH_Shang = 2001757                       -- 战魂之殇
local nGenIDNPC_ZH_Shang = 20010311                       -- 战魂之殇

local nMonsterGroup_BianYiFS = 900341                       -- 变异法师
local nGenIDMonster_BianYiFS = 2001998                       -- 变异法师
local nGenIDNPC_BianYiFS = 20010313                      -- 变异法师
 
--collect-----------------------------------
local nNpcGroup_collect_ShiBei = 60056                      -- 采集物历史石碑
local nGenId_collect_ShiBei = 2001528                       -- 采集物历史石碑GenId
rwtNpcGroup[nNpcGroup_collect_ShiBei] = rwtNpcGroup[nNpcGroup_collect_ShiBei] or {}
rwtNpcGroup[nNpcGroup_collect_ShiBei]["Type"] = CONST_NPCGROUP_TYPE.Collect    
-- rwtNpcGroup[nNpcGroup_collect_ShiBei]["Awards"] = {}   
-- rwtNpcGroup[nNpcGroup_collect_ShiBei]["Awards"]["Events"] = {}  
-- rwtNpcGroup[nNpcGroup_collect_ShiBei]["Awards"]["Events"][1] = {}  
-- rwtNpcGroup[nNpcGroup_collect_ShiBei]["Awards"]["Events"][1]["OpenDialog"] = {} 
-- rwtNpcGroup[nNpcGroup_collect_ShiBei]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDiaologId["LiShi"]  


local tTaskEffect = {nAiHaoShenDianMercenaryTask_31,nAiHaoShenDianMercenaryTask_32,nAiHaoShenDianMercenaryTask_33,nAiHaoShenDianMercenaryTask_34,nAiHaoShenDianMercenaryTask_35}
function fMercenaryTaskAiHaoShenDian()
    for i = 1,#tTaskEffect do
        if rwTaskIsAccept(tTaskEffect[i]) and not rwTaskIsSuccess(tTaskEffect[i]) then
            rwSpecialStatus_AddEffect(4,nGenIDNPC_ShiXueZH, nEffectID, "0,0,0", "0,0,0",nSize)
        end
    end
end
rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
table.insert(rwtSceneLoad_Func[2001],fMercenaryTaskAiHaoShenDian)

rwtDialog[tDiaologId["ShiXue_battleAft"]] = {}
rwtDialog[tDiaologId["ShiXue_battleAft"]]["DialogEndInit"] = {}
rwtDialog[tDiaologId["ShiXue_battleAft"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDiaologId["ShiXue_battleAft"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDiaologId["ShiXue_battleAft"]]["DialogEndInit"]["Events"][1]["DynDelete"] = {nGenIDNPC_ShiXueZH}
rwtDialog[tDiaologId["ShiXue_battleAft"]]["DialogEndInit"]["Events"][1]["OpenWnd"] = {}
rwtDialog[tDiaologId["ShiXue_battleAft"]]["DialogEndInit"]["Events"][1]["OpenWnd"]["WndId"] = CONST_MENUTYPE.Mercenary
----***************************任务***************************----
rwtTask[nAiHaoShenDianMercenaryTask_11] = {}
rwtTask[nAiHaoShenDianMercenaryTask_11]["Title"] = tLuaText[LANGUAGE_CONFIG][20451]
rwtTask[nAiHaoShenDianMercenaryTask_11]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_11]["TaskQuality"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_11]["MercenaryTownId"] = nMercenaryTownId           -- 200105
rwtTask[nAiHaoShenDianMercenaryTask_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_11]["KillMonsterGroup1"] = nMonsterGroup_BeiPan     -- 900179
rwtTask[nAiHaoShenDianMercenaryTask_11]["TaskNpc"] = nNpc_Beipan
rwtTask[nAiHaoShenDianMercenaryTask_11]["DialogId"] = tDiaologId["BeiPan"]              -- 10318
rwtTask[nAiHaoShenDianMercenaryTask_11]["AcceptDialogId"] = tAccpetDialogId["BeiPan"]   -- 10317  
rwtTask[nAiHaoShenDianMercenaryTask_11]["IsMercenaryBattleDialog"] = tDiaologId["BeiPan_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_11]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_11]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_11]["DynaNpcGroupGen"][1]["GenId"] = nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_11]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_11]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_11]["DynaNpcGroupGen"][2]["GenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_11]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_11]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_11]["AwardGroupId"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_11]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_11]["MonsterGroupGenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_11]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_11]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_11]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_11]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_11]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_11]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["BeiPan_battleAft"], CONST_NPCCHAT_TYPE.TASK, nAiHaoShenDianMercenaryTask_11)
end

rwtTask[nAiHaoShenDianMercenaryTask_12] = {}
rwtTask[nAiHaoShenDianMercenaryTask_12]["Title"] = tLuaText[LANGUAGE_CONFIG][20451]
rwtTask[nAiHaoShenDianMercenaryTask_12]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_12]["TaskQuality"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_12]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_12]["KillMonsterGroup1"] = nMonsterGroup_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_12]["TaskNpc"] = nNpc_Beipan
rwtTask[nAiHaoShenDianMercenaryTask_12]["DialogId"] = tDiaologId["BeiPan"]
rwtTask[nAiHaoShenDianMercenaryTask_12]["AcceptDialogId"] = tAccpetDialogId["BeiPan"]
rwtTask[nAiHaoShenDianMercenaryTask_12]["IsMercenaryBattleDialog"] = tDiaologId["BeiPan_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_12]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_12]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_12]["DynaNpcGroupGen"][1]["GenId"] = nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_12]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_12]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_12]["DynaNpcGroupGen"][2]["GenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_12]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_12]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_12]["AwardGroupId"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_12]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_12]["MonsterGroupGenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_12]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_12]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_12]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_12]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_12]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_12]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["BeiPan_battleAft"], CONST_NPCCHAT_TYPE.TASK, nAiHaoShenDianMercenaryTask_12)
end

rwtTask[nAiHaoShenDianMercenaryTask_13] = {}
rwtTask[nAiHaoShenDianMercenaryTask_13]["Title"] = tLuaText[LANGUAGE_CONFIG][20451]
rwtTask[nAiHaoShenDianMercenaryTask_13]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_13]["TaskQuality"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_13]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_13]["KillMonsterGroup1"] = nMonsterGroup_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_13]["IsMercenaryBattleDialog"] = tDiaologId["BeiPan_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_13]["TaskNpc"] = nNpc_Beipan
rwtTask[nAiHaoShenDianMercenaryTask_13]["DialogId"] = tDiaologId["BeiPan"]
rwtTask[nAiHaoShenDianMercenaryTask_13]["AcceptDialogId"] = tAccpetDialogId["BeiPan"]
rwtTask[nAiHaoShenDianMercenaryTask_13]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_13]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_13]["DynaNpcGroupGen"][1]["GenId"] = nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_13]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_13]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_13]["DynaNpcGroupGen"][2]["GenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_13]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_13]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_13]["AwardGroupId"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_13]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_13]["MonsterGroupGenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_13]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_13]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_13]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_13]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_13]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_13]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["BeiPan_battleAft"], CONST_NPCCHAT_TYPE.TASK, nAiHaoShenDianMercenaryTask_13)
end

rwtTask[nAiHaoShenDianMercenaryTask_14] = {}
rwtTask[nAiHaoShenDianMercenaryTask_14]["Title"] = tLuaText[LANGUAGE_CONFIG][20451]
rwtTask[nAiHaoShenDianMercenaryTask_14]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_14]["TaskQuality"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_14]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_14]["KillMonsterGroup1"] = nMonsterGroup_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_14]["TaskNpc"] = nNpc_Beipan
rwtTask[nAiHaoShenDianMercenaryTask_14]["DialogId"] = tDiaologId["BeiPan"]
rwtTask[nAiHaoShenDianMercenaryTask_14]["AcceptDialogId"] = tAccpetDialogId["BeiPan"]
rwtTask[nAiHaoShenDianMercenaryTask_14]["IsMercenaryBattleDialog"] = tDiaologId["BeiPan_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_14]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_14]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_14]["DynaNpcGroupGen"][1]["GenId"] = nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_14]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_14]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_14]["DynaNpcGroupGen"][2]["GenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_14]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_14]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_14]["AwardGroupId"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_14]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_14]["MonsterGroupGenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_14]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_14]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_14]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_14]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_14]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_14]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["BeiPan_battleAft"], CONST_NPCCHAT_TYPE.TASK, nAiHaoShenDianMercenaryTask_14)
end

rwtTask[nAiHaoShenDianMercenaryTask_15] = {}
rwtTask[nAiHaoShenDianMercenaryTask_15]["Title"] = tLuaText[LANGUAGE_CONFIG][20451]
rwtTask[nAiHaoShenDianMercenaryTask_15]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_15]["TaskQuality"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_15]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_15]["KillMonsterGroup1"] = nMonsterGroup_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_15]["TaskNpc"] = nNpc_Beipan
rwtTask[nAiHaoShenDianMercenaryTask_15]["DialogId"] = tDiaologId["BeiPan"]
rwtTask[nAiHaoShenDianMercenaryTask_15]["AcceptDialogId"] = tAccpetDialogId["BeiPan"]
rwtTask[nAiHaoShenDianMercenaryTask_15]["IsMercenaryBattleDialog"] = tDiaologId["BeiPan_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_15]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_15]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_15]["DynaNpcGroupGen"][1]["GenId"] = nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_15]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_15]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_15]["DynaNpcGroupGen"][2]["GenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_15]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_15]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_15]["AwardGroupId"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_15]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_15]["MonsterGroupGenId"] = nGenIDMonster_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_15]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_15]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_15]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_15]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_15]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BeiPan
rwtTask[nAiHaoShenDianMercenaryTask_15]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["BeiPan_battleAft"], CONST_NPCCHAT_TYPE.TASK, nAiHaoShenDianMercenaryTask_15)
end




rwtTask[nAiHaoShenDianMercenaryTask_21] = {}
rwtTask[nAiHaoShenDianMercenaryTask_21]["Title"] = tLuaText[LANGUAGE_CONFIG][20461]
rwtTask[nAiHaoShenDianMercenaryTask_21]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_21]["TaskQuality"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_21]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_21]["AcceptDialogId"] = tAccpetDialogId["ELing"]
rwtTask[nAiHaoShenDianMercenaryTask_21]["KillMonsterGroup1"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_21]["KillMonsterGroupCount1"] = nNeedKill
rwtTask[nAiHaoShenDianMercenaryTask_21]["AwardGroupId"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_21]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_21]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_21]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_21]["DynaNpcGroupGen"][1]["GenId"] = nGenIdMonster_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_21]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_21]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_21]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAiHaoShenDianMercenaryTask_21]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_21]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_21]["StartAutoWay"]["FindWayGenId"] =  nGenIdMonster_ZH_Ling

rwtTask[nAiHaoShenDianMercenaryTask_22] = {}
rwtTask[nAiHaoShenDianMercenaryTask_22]["Title"] = tLuaText[LANGUAGE_CONFIG][20461]
rwtTask[nAiHaoShenDianMercenaryTask_22]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_22]["TaskQuality"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_22]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_22]["AcceptDialogId"] = tAccpetDialogId["ELing"]
rwtTask[nAiHaoShenDianMercenaryTask_22]["KillMonsterGroup1"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_22]["KillMonsterGroupCount1"] = nNeedKill
rwtTask[nAiHaoShenDianMercenaryTask_22]["AwardGroupId"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_22]["IsClickComplete"] =0
rwtTask[nAiHaoShenDianMercenaryTask_22]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_22]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_22]["DynaNpcGroupGen"][1]["GenId"] = nGenIdMonster_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_22]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_22]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_22]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAiHaoShenDianMercenaryTask_22]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_22]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_22]["StartAutoWay"]["FindWayGenId"] =  nGenIdMonster_ZH_Ling

rwtTask[nAiHaoShenDianMercenaryTask_23] = {}
rwtTask[nAiHaoShenDianMercenaryTask_23]["Title"] = tLuaText[LANGUAGE_CONFIG][20461]
rwtTask[nAiHaoShenDianMercenaryTask_23]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_23]["TaskQuality"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_23]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_23]["AcceptDialogId"] = tAccpetDialogId["ELing"]
rwtTask[nAiHaoShenDianMercenaryTask_23]["KillMonsterGroup1"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_23]["KillMonsterGroupCount1"] = nNeedKill
rwtTask[nAiHaoShenDianMercenaryTask_23]["AwardGroupId"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_23]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_23]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_23]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_23]["DynaNpcGroupGen"][1]["GenId"] = nGenIdMonster_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_23]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_23]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_23]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAiHaoShenDianMercenaryTask_23]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_23]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_23]["StartAutoWay"]["FindWayGenId"] =  nGenIdMonster_ZH_Ling

rwtTask[nAiHaoShenDianMercenaryTask_24] = {}
rwtTask[nAiHaoShenDianMercenaryTask_24]["Title"] = tLuaText[LANGUAGE_CONFIG][20461]
rwtTask[nAiHaoShenDianMercenaryTask_24]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_24]["TaskQuality"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_24]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_24]["AcceptDialogId"] = tAccpetDialogId["ELing"]
rwtTask[nAiHaoShenDianMercenaryTask_24]["KillMonsterGroup1"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_24]["KillMonsterGroupCount1"] = nNeedKill
rwtTask[nAiHaoShenDianMercenaryTask_24]["AwardGroupId"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_24]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_24]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_24]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_24]["DynaNpcGroupGen"][1]["GenId"] = nGenIdMonster_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_24]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_24]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_24]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAiHaoShenDianMercenaryTask_24]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_24]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_24]["StartAutoWay"]["FindWayGenId"] =  nGenIdMonster_ZH_Ling

rwtTask[nAiHaoShenDianMercenaryTask_25] = {}
rwtTask[nAiHaoShenDianMercenaryTask_25]["Title"] = tLuaText[LANGUAGE_CONFIG][20461]
rwtTask[nAiHaoShenDianMercenaryTask_25]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_25]["TaskQuality"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_25]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_25]["AcceptDialogId"] = tAccpetDialogId["ELing"]
rwtTask[nAiHaoShenDianMercenaryTask_25]["KillMonsterGroup1"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_25]["KillMonsterGroupCount1"] = nNeedKill
rwtTask[nAiHaoShenDianMercenaryTask_25]["AwardGroupId"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_25]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_25]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_25]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_25]["DynaNpcGroupGen"][1]["GenId"] = nGenIdMonster_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_25]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_25]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_25]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAiHaoShenDianMercenaryTask_25]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_25]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_ZH_Ling
rwtTask[nAiHaoShenDianMercenaryTask_25]["StartAutoWay"]["FindWayGenId"] =  nGenIdMonster_ZH_Ling


rwtTask[nAiHaoShenDianMercenaryTask_26] = {}
rwtTask[nAiHaoShenDianMercenaryTask_26]["Title"] = tLuaText[LANGUAGE_CONFIG][20466]
rwtTask[nAiHaoShenDianMercenaryTask_26]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_26]["TaskQuality"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_26]["MercenaryTownId"] = nMercenaryTownId               -- 200105
rwtTask[nAiHaoShenDianMercenaryTask_26]["TaskNpc"] = nNpc_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_26]["DialogId"] = tDiaologId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_26]["AcceptDialogId"] = tAccpetDialogId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_26]["AwardGroupId"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_26]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_26]["KillMonsterGroup1"] = nMonsterGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_26]["MonsterGroupGenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_26]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_26]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_26]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_26]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_26]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_26]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_26]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_26]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_26]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_26]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_26]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_26]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_26]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ZH_Shang



rwtTask[nAiHaoShenDianMercenaryTask_27] = {}
rwtTask[nAiHaoShenDianMercenaryTask_27]["Title"] = tLuaText[LANGUAGE_CONFIG][20466]
rwtTask[nAiHaoShenDianMercenaryTask_27]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_27]["TaskQuality"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_27]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_27]["TaskNpc"] = nNpc_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_27]["DialogId"] = tDiaologId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_27]["AcceptDialogId"] = tAccpetDialogId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_27]["AwardGroupId"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_27]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_27]["KillMonsterGroup1"] = nMonsterGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_27]["MonsterGroupGenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_27]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_27]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_27]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_27]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_27]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_27]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_27]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_27]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_27]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_27]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_27]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_27]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_27]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ZH_Shang

rwtTask[nAiHaoShenDianMercenaryTask_28] = {}
rwtTask[nAiHaoShenDianMercenaryTask_28]["Title"] = tLuaText[LANGUAGE_CONFIG][20466]
rwtTask[nAiHaoShenDianMercenaryTask_28]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_28]["TaskQuality"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_28]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_28]["TaskNpc"] = nNpc_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_28]["DialogId"] = tDiaologId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_28]["AcceptDialogId"] = tAccpetDialogId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_28]["AwardGroupId"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_28]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_28]["KillMonsterGroup1"] = nMonsterGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_28]["MonsterGroupGenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_28]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_28]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_28]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_28]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_28]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_28]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_28]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_28]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_28]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_28]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_28]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_28]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_28]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ZH_Shang

rwtTask[nAiHaoShenDianMercenaryTask_29] = {}
rwtTask[nAiHaoShenDianMercenaryTask_29]["Title"] = tLuaText[LANGUAGE_CONFIG][20466]
rwtTask[nAiHaoShenDianMercenaryTask_29]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_29]["TaskQuality"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_29]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_29]["TaskNpc"] = nNpc_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_29]["DialogId"] = tDiaologId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_29]["AcceptDialogId"] = tAccpetDialogId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_29]["AwardGroupId"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_29]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_29]["KillMonsterGroup1"] = nMonsterGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_29]["MonsterGroupGenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_29]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_29]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_29]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_29]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_29]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_29]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_29]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_29]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_29]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_29]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_29]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_29]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_29]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ZH_Shang

rwtTask[nAiHaoShenDianMercenaryTask_30] = {}
rwtTask[nAiHaoShenDianMercenaryTask_30]["Title"] = tLuaText[LANGUAGE_CONFIG][20466]
rwtTask[nAiHaoShenDianMercenaryTask_30]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_30]["TaskQuality"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_30]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_30]["TaskNpc"] = nNpc_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_30]["DialogId"] = tDiaologId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_30]["AcceptDialogId"] = tAccpetDialogId["DeathKnight"]
rwtTask[nAiHaoShenDianMercenaryTask_30]["AwardGroupId"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_30]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_30]["KillMonsterGroup1"] = nMonsterGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_30]["MonsterGroupGenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_30]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_30]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_30]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_30]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_30]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_30]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_30]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_30]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_30]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_30]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_30]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_30]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ZH_Shang
rwtTask[nAiHaoShenDianMercenaryTask_30]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ZH_Shang


rwtTask[nAiHaoShenDianMercenaryTask_31] = {}
rwtTask[nAiHaoShenDianMercenaryTask_31]["Title"] = tLuaText[LANGUAGE_CONFIG][20471]
rwtTask[nAiHaoShenDianMercenaryTask_31]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_31]["TaskQuality"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_31]["MercenaryTownId"] = nMercenaryTownId           -- 200105
rwtTask[nAiHaoShenDianMercenaryTask_31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_31]["TaskNpc"] = nNpc_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_31]["DialogId"] = tDiaologId["ShiXue"]
rwtTask[nAiHaoShenDianMercenaryTask_31]["AcceptDialogId"] = tAccpetDialogId["ShiXue"]   -- 10323
rwtTask[nAiHaoShenDianMercenaryTask_31]["IsMercenaryBattleDialog"] = tDiaologId["ShiXue_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_31]["KillMonsterGroup1"] = nMonsterGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_31]["MonsterGroupGenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_31]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_31]["AwardGroupId"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_31]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_31]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_31]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_31]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_31]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_31]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_31]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_31]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_31]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[nAiHaoShenDianMercenaryTask_31]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_31]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_31]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_31]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_31]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_31]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_31]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["ShiXue_battleAft"], CONST_NPCCHAT_TYPE.NPC, nNpc_ShiXueZH)
end
rwtTask[nAiHaoShenDianMercenaryTask_31]["AcceptFunc"] = function()
    local nUserMapId = rwUserGetCurMapId()
    if nUserMapId == nFirstArea then
        rwSpecialStatus_AddEffect(4,nGenIDNPC_ShiXueZH, nEffectID, "0,0,0", "0,0,0",nSize)
    end
end

rwtTask[nAiHaoShenDianMercenaryTask_32] = {}
rwtTask[nAiHaoShenDianMercenaryTask_32]["Title"] = tLuaText[LANGUAGE_CONFIG][20471]
rwtTask[nAiHaoShenDianMercenaryTask_32]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_32]["TaskQuality"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_32]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_32]["TaskNpc"] = nNpc_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_32]["DialogId"] = tDiaologId["ShiXue"]
rwtTask[nAiHaoShenDianMercenaryTask_32]["AcceptDialogId"] = tAccpetDialogId["ShiXue"]
rwtTask[nAiHaoShenDianMercenaryTask_32]["IsMercenaryBattleDialog"] = tDiaologId["ShiXue_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_32]["KillMonsterGroup1"] = nMonsterGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_32]["MonsterGroupGenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_32]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_32]["AwardGroupId"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_32]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_32]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_32]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_32]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_32]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_32]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_32]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_32]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_32]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[nAiHaoShenDianMercenaryTask_32]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_32]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_32]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_32]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_32]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_32]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_32]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["ShiXue_battleAft"], CONST_NPCCHAT_TYPE.NPC, nNpc_ShiXueZH)
end
rwtTask[nAiHaoShenDianMercenaryTask_32]["AcceptFunc"] = function()
    local nUserMapId = rwUserGetCurMapId()
    if nUserMapId == nFirstArea then
        rwSpecialStatus_AddEffect(4,nGenIDNPC_ShiXueZH, nEffectID, "0,0,0", "0,0,0",nSize)
    end
end

rwtTask[nAiHaoShenDianMercenaryTask_33] = {}
rwtTask[nAiHaoShenDianMercenaryTask_33]["Title"] = tLuaText[LANGUAGE_CONFIG][20471]
rwtTask[nAiHaoShenDianMercenaryTask_33]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_33]["TaskQuality"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_33]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_33]["TaskNpc"] = nNpc_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_33]["DialogId"] = tDiaologId["ShiXue"]
rwtTask[nAiHaoShenDianMercenaryTask_33]["AcceptDialogId"] = tAccpetDialogId["ShiXue"]
rwtTask[nAiHaoShenDianMercenaryTask_33]["IsMercenaryBattleDialog"] = tDiaologId["ShiXue_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_33]["KillMonsterGroup1"] = nMonsterGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_33]["MonsterGroupGenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_33]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_33]["AwardGroupId"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_33]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_33]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_33]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_33]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_33]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_33]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_33]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_33]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_33]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[nAiHaoShenDianMercenaryTask_33]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_33]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_33]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_33]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_33]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_33]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_33]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["ShiXue_battleAft"], CONST_NPCCHAT_TYPE.NPC, nNpc_ShiXueZH)
end
rwtTask[nAiHaoShenDianMercenaryTask_33]["AcceptFunc"] = function()
    local nUserMapId = rwUserGetCurMapId()
    if nUserMapId == nFirstArea then
        rwSpecialStatus_AddEffect(4,nGenIDNPC_ShiXueZH, nEffectID, "0,0,0", "0,0,0",nSize)
    end
end

rwtTask[nAiHaoShenDianMercenaryTask_34] = {}
rwtTask[nAiHaoShenDianMercenaryTask_34]["Title"] = tLuaText[LANGUAGE_CONFIG][20471]
rwtTask[nAiHaoShenDianMercenaryTask_34]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_34]["TaskQuality"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_34]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_34]["TaskNpc"] = nNpc_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_34]["DialogId"] = tDiaologId["ShiXue"]
rwtTask[nAiHaoShenDianMercenaryTask_34]["AcceptDialogId"] = tAccpetDialogId["ShiXue"]
rwtTask[nAiHaoShenDianMercenaryTask_34]["IsMercenaryBattleDialog"] = tDiaologId["ShiXue_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_34]["KillMonsterGroup1"] = nMonsterGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_34]["MonsterGroupGenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_34]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_34]["AwardGroupId"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_34]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_34]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_34]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_34]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_34]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_34]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_34]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_34]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_34]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[nAiHaoShenDianMercenaryTask_34]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_34]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_34]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_34]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_34]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_34]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_34]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["ShiXue_battleAft"], CONST_NPCCHAT_TYPE.NPC, nNpc_ShiXueZH)
end
rwtTask[nAiHaoShenDianMercenaryTask_34]["AcceptFunc"] = function()
    local nUserMapId = rwUserGetCurMapId()
    if nUserMapId == nFirstArea then
        rwSpecialStatus_AddEffect(4,nGenIDNPC_ShiXueZH, nEffectID, "0,0,0", "0,0,0",nSize)
    end
end

rwtTask[nAiHaoShenDianMercenaryTask_35] = {}
rwtTask[nAiHaoShenDianMercenaryTask_35]["Title"] = tLuaText[LANGUAGE_CONFIG][20471]
rwtTask[nAiHaoShenDianMercenaryTask_35]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_35]["TaskQuality"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_35]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_35]["TaskNpc"] = nNpc_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_35]["DialogId"] = tDiaologId["ShiXue"]
rwtTask[nAiHaoShenDianMercenaryTask_35]["AcceptDialogId"] = tAccpetDialogId["ShiXue"]
rwtTask[nAiHaoShenDianMercenaryTask_35]["IsMercenaryBattleDialog"] = tDiaologId["ShiXue_battleAft"]
rwtTask[nAiHaoShenDianMercenaryTask_35]["KillMonsterGroup1"] = nMonsterGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_35]["MonsterGroupGenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_35]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_35]["AwardGroupId"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_35]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_35]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_35]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_35]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_35]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_35]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_35]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_35]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_35]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[nAiHaoShenDianMercenaryTask_35]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_35]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_35]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_35]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_35]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_35]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_ShiXueZH
rwtTask[nAiHaoShenDianMercenaryTask_35]["AwardFunc"] = function()
    rwOpenNpcChatDialog(tDiaologId["ShiXue_battleAft"], CONST_NPCCHAT_TYPE.NPC, nNpc_ShiXueZH)
end
rwtTask[nAiHaoShenDianMercenaryTask_35]["AcceptFunc"] = function()
    local nUserMapId = rwUserGetCurMapId()
    if nUserMapId == nFirstArea then
        rwSpecialStatus_AddEffect(4,nGenIDNPC_ShiXueZH, nEffectID, "0,0,0", "0,0,0",nSize)
    end
end



rwtTask[nAiHaoShenDianMercenaryTask_41] = {}
rwtTask[nAiHaoShenDianMercenaryTask_41]["Title"] = tLuaText[LANGUAGE_CONFIG][20481]
rwtTask[nAiHaoShenDianMercenaryTask_41]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_41]["TaskQuality"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_41]["MercenaryTownId"] = nMercenaryTownId           -- 200105
rwtTask[nAiHaoShenDianMercenaryTask_41]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAiHaoShenDianMercenaryTask_41]["DialogId"] = tDiaologId["LiShi"]
rwtTask[nAiHaoShenDianMercenaryTask_41]["AcceptDialogId"] = tAccpetDialogId["LiShi"]    -- 10326
rwtTask[nAiHaoShenDianMercenaryTask_41]["ReqCollectId1"] = nNpcGroup_collect_ShiBei     -- nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_41]["ReqCollectCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_41]["AwardGroupId"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_41]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_41]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_41]["DynaNpcGroupGen"][1]["GenId"] = nGenId_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_41]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_41]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_41]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_41]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_41]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_41]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_41]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_41]["StartAutoWay"]["FindWayGenId"] =  nGenId_collect_ShiBei

rwtTask[nAiHaoShenDianMercenaryTask_42] = {}
rwtTask[nAiHaoShenDianMercenaryTask_42]["Title"] = tLuaText[LANGUAGE_CONFIG][20481]
rwtTask[nAiHaoShenDianMercenaryTask_42]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_42]["TaskQuality"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_42]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_42]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAiHaoShenDianMercenaryTask_42]["DialogId"] = tDiaologId["LiShi"]
rwtTask[nAiHaoShenDianMercenaryTask_42]["AcceptDialogId"] = tAccpetDialogId["LiShi"]
rwtTask[nAiHaoShenDianMercenaryTask_42]["ReqCollectId1"] = nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_42]["ReqCollectCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_42]["AwardGroupId"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_42]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_42]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_42]["DynaNpcGroupGen"][1]["GenId"] = nGenId_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_42]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_42]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_42]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_42]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_42]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_42]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_42]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_42]["StartAutoWay"]["FindWayGenId"] =  nGenId_collect_ShiBei

rwtTask[nAiHaoShenDianMercenaryTask_43] = {}
rwtTask[nAiHaoShenDianMercenaryTask_43]["Title"] = tLuaText[LANGUAGE_CONFIG][20481]
rwtTask[nAiHaoShenDianMercenaryTask_43]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_43]["TaskQuality"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_43]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_43]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAiHaoShenDianMercenaryTask_43]["DialogId"] = tDiaologId["LiShi"]
rwtTask[nAiHaoShenDianMercenaryTask_43]["AcceptDialogId"] = tAccpetDialogId["LiShi"]
rwtTask[nAiHaoShenDianMercenaryTask_43]["ReqCollectId1"] = nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_43]["ReqCollectCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_43]["AwardGroupId"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_43]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_43]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_43]["DynaNpcGroupGen"][1]["GenId"] = nGenId_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_43]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_43]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_43]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_43]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_43]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_43]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_43]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_43]["StartAutoWay"]["FindWayGenId"] =  nGenId_collect_ShiBei

rwtTask[nAiHaoShenDianMercenaryTask_44] = {}
rwtTask[nAiHaoShenDianMercenaryTask_44]["Title"] = tLuaText[LANGUAGE_CONFIG][20481]
rwtTask[nAiHaoShenDianMercenaryTask_44]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_44]["TaskQuality"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_44]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_44]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAiHaoShenDianMercenaryTask_44]["DialogId"] = tDiaologId["LiShi"]
rwtTask[nAiHaoShenDianMercenaryTask_44]["AcceptDialogId"] = tAccpetDialogId["LiShi"]
rwtTask[nAiHaoShenDianMercenaryTask_44]["ReqCollectId1"] = nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_44]["ReqCollectCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_44]["AwardGroupId"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_44]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_44]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_44]["DynaNpcGroupGen"][1]["GenId"] = nGenId_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_44]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_44]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_44]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_44]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_44]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_44]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_44]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_44]["StartAutoWay"]["FindWayGenId"] =  nGenId_collect_ShiBei

rwtTask[nAiHaoShenDianMercenaryTask_45] = {}
rwtTask[nAiHaoShenDianMercenaryTask_45]["Title"] = tLuaText[LANGUAGE_CONFIG][20481]
rwtTask[nAiHaoShenDianMercenaryTask_45]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_45]["TaskQuality"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_45]["MercenaryTownId"] = nMercenaryTownId
rwtTask[nAiHaoShenDianMercenaryTask_45]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAiHaoShenDianMercenaryTask_45]["DialogId"] = tDiaologId["LiShi"]
rwtTask[nAiHaoShenDianMercenaryTask_45]["AcceptDialogId"] = tAccpetDialogId["LiShi"]
rwtTask[nAiHaoShenDianMercenaryTask_45]["ReqCollectId1"] = nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_45]["ReqCollectCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_45]["AwardGroupId"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_45]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_45]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_45]["DynaNpcGroupGen"][1]["GenId"] = nGenId_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_45]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_45]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_45]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_45]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_45]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_45]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_45]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_collect_ShiBei
rwtTask[nAiHaoShenDianMercenaryTask_45]["StartAutoWay"]["FindWayGenId"] =  nGenId_collect_ShiBei


rwtTask[nAiHaoShenDianMercenaryTask_66] = {}
rwtTask[nAiHaoShenDianMercenaryTask_66]["Title"] = tLuaText[LANGUAGE_CONFIG][21038]
rwtTask[nAiHaoShenDianMercenaryTask_66]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_66]["TaskQuality"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_66]["MercenaryTownId"] = nMercenaryTownId           
rwtTask[nAiHaoShenDianMercenaryTask_66]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_66]["TaskNpc"] = nNpc_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_66]["DialogId"] = tDiaologId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_66]["AcceptDialogId"] =  tAccpetDialogId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_66]["KillMonsterGroup1"] = nMonsterGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_66]["MonsterGroupGenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_66]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_66]["AwardGroupId"] = 6
rwtTask[nAiHaoShenDianMercenaryTask_66]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_66]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_66]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_66]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_66]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_66]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_66]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_66]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_66]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_66]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_66]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_66]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_66]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_66]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_66]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BianYiFS

rwtTask[nAiHaoShenDianMercenaryTask_67] = {}
rwtTask[nAiHaoShenDianMercenaryTask_67]["Title"] = tLuaText[LANGUAGE_CONFIG][21038]
rwtTask[nAiHaoShenDianMercenaryTask_67]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_67]["TaskQuality"] = 2
rwtTask[nAiHaoShenDianMercenaryTask_67]["MercenaryTownId"] = nMercenaryTownId           
rwtTask[nAiHaoShenDianMercenaryTask_67]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_67]["TaskNpc"] = nNpc_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_67]["DialogId"] = tDiaologId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_67]["AcceptDialogId"] =  tAccpetDialogId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_67]["KillMonsterGroup1"] = nMonsterGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_67]["MonsterGroupGenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_67]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_67]["AwardGroupId"] = 6
rwtTask[nAiHaoShenDianMercenaryTask_67]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_67]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_67]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_67]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_67]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_67]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_67]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_67]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_67]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_67]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_67]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_67]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_67]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_67]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_67]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BianYiFS

rwtTask[nAiHaoShenDianMercenaryTask_68] = {}
rwtTask[nAiHaoShenDianMercenaryTask_68]["Title"] = tLuaText[LANGUAGE_CONFIG][21038]
rwtTask[nAiHaoShenDianMercenaryTask_68]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_68]["TaskQuality"] = 3
rwtTask[nAiHaoShenDianMercenaryTask_68]["MercenaryTownId"] = nMercenaryTownId           
rwtTask[nAiHaoShenDianMercenaryTask_68]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_68]["TaskNpc"] = nNpc_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_68]["DialogId"] = tDiaologId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_68]["AcceptDialogId"] =  tAccpetDialogId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_68]["KillMonsterGroup1"] = nMonsterGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_68]["MonsterGroupGenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_68]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_68]["AwardGroupId"] = 6
rwtTask[nAiHaoShenDianMercenaryTask_68]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_68]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_68]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_68]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_68]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_68]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_68]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_68]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_68]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_68]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_68]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_68]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_68]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_68]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_68]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BianYiFS

rwtTask[nAiHaoShenDianMercenaryTask_69] = {}
rwtTask[nAiHaoShenDianMercenaryTask_69]["Title"] = tLuaText[LANGUAGE_CONFIG][21038]
rwtTask[nAiHaoShenDianMercenaryTask_69]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_69]["TaskQuality"] = 4
rwtTask[nAiHaoShenDianMercenaryTask_69]["MercenaryTownId"] = nMercenaryTownId           
rwtTask[nAiHaoShenDianMercenaryTask_69]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_69]["TaskNpc"] = nNpc_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_69]["DialogId"] = tDiaologId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_69]["AcceptDialogId"] =  tAccpetDialogId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_69]["KillMonsterGroup1"] = nMonsterGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_69]["MonsterGroupGenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_69]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_69]["AwardGroupId"] = 6
rwtTask[nAiHaoShenDianMercenaryTask_69]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_69]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_69]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_69]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_69]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_69]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_69]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_69]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_69]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_69]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_69]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_69]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_69]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_69]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_69]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BianYiFS

rwtTask[nAiHaoShenDianMercenaryTask_70] = {}
rwtTask[nAiHaoShenDianMercenaryTask_70]["Title"] = tLuaText[LANGUAGE_CONFIG][21038]
rwtTask[nAiHaoShenDianMercenaryTask_70]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAiHaoShenDianMercenaryTask_70]["TaskQuality"] = 5
rwtTask[nAiHaoShenDianMercenaryTask_70]["MercenaryTownId"] = nMercenaryTownId           
rwtTask[nAiHaoShenDianMercenaryTask_70]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAiHaoShenDianMercenaryTask_70]["TaskNpc"] = nNpc_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_70]["DialogId"] = tDiaologId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_70]["AcceptDialogId"] =  tAccpetDialogId["BianYiFS"]
rwtTask[nAiHaoShenDianMercenaryTask_70]["KillMonsterGroup1"] = nMonsterGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_70]["MonsterGroupGenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_70]["KillMonsterGroupCount1"] = 1
rwtTask[nAiHaoShenDianMercenaryTask_70]["AwardGroupId"] = 6
rwtTask[nAiHaoShenDianMercenaryTask_70]["IsClickComplete"] = 0
rwtTask[nAiHaoShenDianMercenaryTask_70]["DynaNpcGroupGen"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_70]["DynaNpcGroupGen"][1] = {}
rwtTask[nAiHaoShenDianMercenaryTask_70]["DynaNpcGroupGen"][1]["GenId"] = nGenIDMonster_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_70]["DynaNpcGroupGen"][1]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_70]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_70]["DynaNpcGroupGen"][2] = {}
rwtTask[nAiHaoShenDianMercenaryTask_70]["DynaNpcGroupGen"][2]["GenId"] = nGenIDNPC_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_70]["DynaNpcGroupGen"][2]["MapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_70]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAiHaoShenDianMercenaryTask_70]["StartAutoWay"] = {}
rwtTask[nAiHaoShenDianMercenaryTask_70]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAiHaoShenDianMercenaryTask_70]["StartAutoWay"]["FindWayMapId"] = nFirstArea
rwtTask[nAiHaoShenDianMercenaryTask_70]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BianYiFS
rwtTask[nAiHaoShenDianMercenaryTask_70]["StartAutoWay"]["FindWayGenId"] =  nGenIDNPC_BianYiFS