
--风车镇 主线任务

------------------------------------------

local tFengChe = {}

local nUserData_FCZ = 1219

------------------------------------------任务Id



tFengChe.nPriorTask = 10216 -- 罗兰镇最后一个任务
tFengChe.nLaterTask = 10061 -- 阿莱克斯第一个任务

tFengChe.Task1_bef = 10151 --倒霉的富商-护送富商
tFengChe.Task1 = 10170 --倒霉的富商-护送富商
tFengChe.Task3 = 10153 --仗势欺人-制止放肆的卫兵
tFengChe.Task3_1 = 10610  --战卫兵失败任务
tFengChe.Task4 = 10154 --失窃的风车-长老的请求
tFengChe.Task5 = 10155 --追查魔力石-调查风车
tFengChe.Task6 = 10156 --追查魔力石-调查风车(解谜)
tFengChe.Task7 = 10157 --追查魔力石-卡尔
tFengChe.Task8 = 10158 --追查魔力石-菲丝
tFengChe.Task9 = 10159 --追查魔力石-莫克夫
tFengChe.Task10 = 10160--嫌疑人哥布林-战胜哥布林
tFengChe.Task11 = 10161 --灵魂画风-找回画册
tFengChe.Task12 = 10162 --灵魂画风-解读画册内容
tFengChe.Task12_1 = 10168 --灵魂画风-解读画册
tFengChe.Task12_2 = 10169 --灵魂画风-解读画册
tFengChe.Task13 = 10163 --哥布林巢穴
tFengChe.Task14 = 10164 --危机过后-了解来龙去脉
tFengChe.Task14_1 = 10152 --危机过后-讨论后续计划
tFengChe.Task15 = 10165 --真假魔力石-安装魔力石
tFengChe.Task16 = 10166 --我的英雄-告别安可
tFengChe.Task17 = 10167 --我的英雄-告别安可

tFengChe.Task18 = 10598 --出发 阿克莱斯(护送)
tFengChe.Task19 = 10427 --出发 阿克莱斯
tFengChe.Task20 = 10428 --出发 阿克莱斯
tFengChe.Task21 = 10429 --出发 阿克莱斯



--废弃任务Id (不清楚任务掩码是否存在)
--10171,10172,10220


------------------------------------------寻路坐标点

tFengChe.sPos_RuCun_1 = "-62.35,0.10,-78.43" --入村

tFengChe.sPos_Fengche = "-66.67,9.80,-98.83" --风车

tFengChe.sPos_COPYMAP = "-106.68,0.05,-103.00" --副本


------------------------------------------陷阱 GenId

--废弃地图GenId 2001(数据未删除)
--2001401,2001402,2001403,2001405,2001406,2001407,2001408,2001411

                                    
tFengChe.nGen_CunZhang = 2001404    -- 村长陷阱

                                   
tFengChe.nGen_FengChe  = 2001409    -- 风车陷阱
tFengChe.nGen_GeBuLin  = 2001410    -- 村外哥布林陷阱

tFengChe.nGen_MLS      = 2001428    -- 讨论后续计划陷阱

tFengChe.nGen_KCheng   = 1000195    -- 护送卡城陷阱

------------------------------------------陷阱 NpcGroupId

--废弃陷阱 NpcgroupId(数据未删除)
--30107,30108
                                 
tFengChe.nGT_CunZhang = 30109    -- 村长陷阱
                                 
                                 
tFengChe.nGT_FengChe  = 30114    -- 风车陷阱
tFengChe.nGT_GeBuLin  = 30115    -- 村外哥布林陷阱


tFengChe.nGT_MLS      = 30188    -- 讨论后续计划陷阱

tFengChe.nGT_KCheng   = 30106    -- 护送卡城陷阱


------------------------------------------Npc_GenId

--废弃GenId 2001 (数据未删除)
--2001420,2001421

tFengChe.nGen_Npc_CunZhang     = 2001412    -- 村长
tFengChe.nGen_Npc_AnKe         = 2001413    -- 安可
tFengChe.nGen_Npc_KaEr         = 2001414    -- 卡尔
tFengChe.nGen_Npc_FeiSi        = 2001415    -- 菲丝
tFengChe.nGen_Npc_MoKeFu       = 2001416    -- 莫克夫
tFengChe.nGen_Npc_FuShang      = 2001417    -- 富商金斯特
tFengChe.nGen_Npc_HZK_DongKou  = 2001418    -- 哈扎克 洞口危机过后
tFengChe.nGen_Npc_HZK_CunLi    = 2001419    -- 哈扎克 村里真假魔力石
tFengChe.nGen_Npc_JieFei_1     = 2001430    -- 劫匪1

------------------------------------------Npc_NpcGroupId

--20133 劫匪2(废弃 未删除)

tFengChe.nNpc_CunZhang        = 20057    -- 村长
tFengChe.nNpc_AnKe            = 20058    -- 安可
tFengChe.nNpc_KaEr            = 20059    -- 卡尔
tFengChe.nNpc_FeiSi           = 20060    -- 菲丝
tFengChe.nNpc_MoKeFu          = 20061    -- 莫克夫
tFengChe.nNpc_FuShang         = 20062    -- 富商金斯特
tFengChe.nNpc_HZK_DongKou     = 20063    -- 哈扎克 洞口危机过后
tFengChe.nNpc_HZK_CunLi       = 20064    -- 哈扎克 村里真假魔力石
tFengChe.nNpc_GaiYin          = 20065    -- 该隐   
tFengChe.nNpc_JieFei_3        = 20123    -- 劫匪3
tFengChe.nNpc_JieFei_1        = 20132    -- 劫匪1
tFengChe.nNpc_Yinyou          = 20083    -- 吟游诗人缪吉克辉
tFengChe.nNpc_Xianqu          = 20085    -- 先驱者1号
                                         
-----闲聊NPC                             
tFengChe.nNpc_ZuoYi           = 20140    -- 酒馆老板佐伊(npcgroup)
tFengChe.nNpcres_ZuoYi        = 3099     -- 酒馆老板佐伊(npcid)

--建筑
tFengChe.nNpc_Build_FengChe = 10014
tFengChe.nGen_Build_FengChe = 2001928

tFengChe.nNpc_Build_2FengChe = 10028
tFengChe.nGen_Build_2FengChe = 2001431

rwtNpcGroup[tFengChe.nNpc_Build_FengChe] = rwtNpcGroup[tFengChe.nNpc_Build_FengChe] or {}  --风车
rwtNpcGroup[tFengChe.nNpc_Build_FengChe]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
rwtNpcGroup[tFengChe.nNpc_Build_FengChe]["PuzzleId"] = 103

rwtNpcGroup[tFengChe.nNpc_Build_2FengChe] = rwtNpcGroup[tFengChe.nNpc_Build_2FengChe] or {}  --风车2
rwtNpcGroup[tFengChe.nNpc_Build_2FengChe]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
rwtNpcGroup[tFengChe.nNpc_Build_2FengChe]["PuzzleId"] = 115

rwtNpcGroup[tFengChe.nNpc_JieFei_3] = rwtNpcGroup[tFengChe.nNpc_JieFei_3] or {}  --劫匪3
rwtNpcGroup[tFengChe.nNpc_JieFei_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_JieFei_3]["NpcId"] = 3006

tFengChe.nNpcres_JieFei_1 = 3090
rwtNpcGroup[tFengChe.nNpc_JieFei_1] = rwtNpcGroup[tFengChe.nNpc_JieFei_1] or {}  --劫匪1
rwtNpcGroup[tFengChe.nNpc_JieFei_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_JieFei_1]["NpcId"] = tFengChe.nNpcres_JieFei_1

rwtNpcGroup[tFengChe.nNpc_CunZhang] = rwtNpcGroup[tFengChe.nNpc_CunZhang] or {}  --村长（库伯拉）
rwtNpcGroup[tFengChe.nNpc_CunZhang]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_CunZhang]["NpcId"] = 3008

rwtNpcGroup[tFengChe.nNpc_AnKe] = rwtNpcGroup[tFengChe.nNpc_AnKe] or {}  --安可
rwtNpcGroup[tFengChe.nNpc_AnKe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_AnKe]["NpcId"] = 3009

rwtNpcGroup[tFengChe.nNpc_KaEr] = rwtNpcGroup[tFengChe.nNpc_KaEr] or {}  --卡尔
rwtNpcGroup[tFengChe.nNpc_KaEr]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_KaEr]["NpcId"] = 3104

rwtNpcGroup[tFengChe.nNpc_FeiSi] = rwtNpcGroup[tFengChe.nNpc_FeiSi] or {}  --菲丝
rwtNpcGroup[tFengChe.nNpc_FeiSi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_FeiSi]["NpcId"] = 3102

rwtNpcGroup[tFengChe.nNpc_MoKeFu] = rwtNpcGroup[tFengChe.nNpc_MoKeFu] or {}  --莫克夫
rwtNpcGroup[tFengChe.nNpc_MoKeFu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_MoKeFu]["NpcId"] = 3103

rwtNpcGroup[tFengChe.nNpc_GaiYin] = rwtNpcGroup[tFengChe.nNpc_GaiYin] or {}  --该隐
rwtNpcGroup[tFengChe.nNpc_GaiYin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_GaiYin]["NpcId"] = 3010

rwtNpcGroup[tFengChe.nNpc_HZK_DongKou] = rwtNpcGroup[tFengChe.nNpc_HZK_DongKou] or {}  --哈扎特
rwtNpcGroup[tFengChe.nNpc_HZK_DongKou]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_HZK_DongKou]["NpcId"] = 3011

rwtNpcGroup[tFengChe.nNpc_HZK_CunLi] = rwtNpcGroup[tFengChe.nNpc_HZK_CunLi] or {}  --哈扎特
rwtNpcGroup[tFengChe.nNpc_HZK_CunLi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_HZK_CunLi]["NpcId"] = 3011

rwtNpcGroup[tFengChe.nNpc_FuShang] = rwtNpcGroup[tFengChe.nNpc_FuShang] or {}  --富商金斯特
rwtNpcGroup[tFengChe.nNpc_FuShang]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_FuShang]["NpcId"] = 3007

tFengChe.nNpcres_Miujikehui = 3059
rwtNpcGroup[tFengChe.nNpc_Yinyou] = rwtNpcGroup[tFengChe.nNpc_Yinyou] or {}  --吟游诗人缪吉克辉
rwtNpcGroup[tFengChe.nNpc_Yinyou]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_Yinyou]["NpcId"] = tFengChe.nNpcres_Miujikehui

tFengChe.nNpcres_Xianquzhe = 3051
rwtNpcGroup[tFengChe.nNpc_Xianqu] = rwtNpcGroup[tFengChe.nNpc_Xianqu] or {}  --先驱者1号
rwtNpcGroup[tFengChe.nNpc_Xianqu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_Xianqu]["NpcId"] = tFengChe.nNpcres_Xianquzhe

--闲聊NPC
rwtNpcGroup[tFengChe.nNpc_ZuoYi] = rwtNpcGroup[tFengChe.nNpc_ZuoYi] or {}  --酒馆老板佐伊
rwtNpcGroup[tFengChe.nNpc_ZuoYi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tFengChe.nNpc_ZuoYi]["NpcId"] = tFengChe.nNpcres_ZuoYi

rwtNpc[tFengChe.nNpcres_Miujikehui] = rwtNpc[tFengChe.nNpcres_Miujikehui] or {}
rwtNpc[tFengChe.nNpcres_Miujikehui]["DialogId"] = {1047,1048,1603}

rwtNpc[tFengChe.nNpcres_Xianquzhe] = rwtNpc[tFengChe.nNpcres_Xianquzhe] or {}

rwtNpc[3006] = rwtNpc[3006] or {} -- 劫匪3
rwtNpc[tFengChe.nNpcres_JieFei_1] = rwtNpc[tFengChe.nNpcres_JieFei_1] or {} -- 劫匪1


--村长库伯拉
rwtNpc[3008] = rwtNpc[3008] or {}
rwtNpc[3008]["DialogId"] = {1120,1121,1122}
--安可
rwtNpc[3009] = rwtNpc[3009] or {}
rwtNpc[3009]["DialogId"] = {1123,1124,1125}
--卡尔
rwtNpc[3104] = rwtNpc[3104] or {}
rwtNpc[3104]["DialogId"] = {1126,1127,1128}
--菲丝
rwtNpc[3102] = rwtNpc[3102] or {}
rwtNpc[3102]["DialogId"] = {1129,1130,1131}
--莫克夫
rwtNpc[3103] = rwtNpc[3103] or {}
rwtNpc[3103]["DialogId"] = {1132,1133,1134}

rwtNpc[3010] = rwtNpc[3010] or {}
rwtNpc[3010]["DialogId"] = {1713,1714,1715}
--哈扎克
rwtNpc[3011] = rwtNpc[3011] or {}
rwtNpc[3011]["DialogId"] = {1136,1137}

--富商金斯特
rwtNpc[3007] = rwtNpc[3007] or {}
rwtNpc[3007]["DialogId"] = 1135
--闲聊NPC
--酒馆老板佐伊
rwtNpc[tFengChe.nNpcres_ZuoYi] = rwtNpc[tFengChe.nNpcres_ZuoYi] or {}
rwtNpc[tFengChe.nNpcres_ZuoYi]["DialogId"] = {1070,1071,1072}

------------------------------------------Moster_GenId     

tFengChe.nGen_Monster_JieFei_1      = 2001422        -- Monster劫匪1
tFengChe.nGen_Monster_JieFei_2      = 2001423        -- Monster劫匪2
tFengChe.nGen_Monster_ShiBing_1     = 2001424        -- Monster士兵1
tFengChe.nGen_Monster_ShiBing_2     = 2001425        -- Monster士兵2
tFengChe.nGen_Monster_ShiBing_3     = 2001426        -- Monster士兵3
tFengChe.nGen_Monster_XQZ           = 2001726        -- 先驱者1号

------------------------------------------Moster_GroupId

tFengChe.nMon_JieFei_1      = 900136        -- Monster劫匪1
tFengChe.nMon_JieFei_2      = 900137        -- Monster劫匪2
tFengChe.nMon_ShiBing_1     = 900138        -- Monster士兵1
tFengChe.nMon_ShiBing_2     = 900139        -- Monster士兵2
tFengChe.nMon_ShiBing_3     = 900140        -- Monster士兵3
tFengChe.nMon_XQZ           = 900188        -- Monster先驱者

------------------------------------------采集物&宝箱 genId

tFengChe.nGen_Collect_FengChe = 2001427       -- 采集物风车

tFengChe.nGen_Box_TaskIn  = 2001429      -- 任务宝箱

------------------------------------------采集物&宝箱 groupTypeId

tFengChe.nCol_FengChe       = 60043         -- 采集物风车
tFengChe.nCol_MoShi         = 60044         -- 采集物魔石
tFengChe.nCol_MoShi_ZhuNeng = 60045         -- 采集-魔石注能

tFengChe.nBox_TaskIn        = 40265         -- 任务宝箱


------------------------------------------奖励Id

--Task1,Task3,Task4
local nAward_1 = 2000000
--Task9,Task13,Task19
local nAward_2 = 2000001

local nAward_3 = 2000257

local nAward_XQZ = 2000256

local nAward_Box_TaskInKaEr = 2000449


------------------------------------------陷阱
--村长陷阱
rwtNpcGroup[tFengChe.nGT_CunZhang] = rwtNpcGroup[tFengChe.nGT_CunZhang] or {}
rwtNpcGroup[tFengChe.nGT_CunZhang]["Type"] = CONST_NPCGROUP_TYPE.Trap
--风车陷阱
rwtNpcGroup[tFengChe.nGT_FengChe] = rwtNpcGroup[tFengChe.nGT_FengChe] or {}
rwtNpcGroup[tFengChe.nGT_FengChe]["Type"] = CONST_NPCGROUP_TYPE.Trap
--村外哥布林陷阱
rwtNpcGroup[tFengChe.nGT_GeBuLin] = rwtNpcGroup[tFengChe.nGT_GeBuLin] or {}
rwtNpcGroup[tFengChe.nGT_GeBuLin]["Type"] = CONST_NPCGROUP_TYPE.Trap
--讨论后续计划
rwtNpcGroup[tFengChe.nGT_MLS] = rwtNpcGroup[tFengChe.nGT_MLS] or {}
rwtNpcGroup[tFengChe.nGT_MLS]["Type"] = CONST_NPCGROUP_TYPE.Trap
--卡城陷阱
rwtNpcGroup[tFengChe.nGT_KCheng] = rwtNpcGroup[tFengChe.nGT_KCheng] or {}
rwtNpcGroup[tFengChe.nGT_KCheng]["Type"] = CONST_NPCGROUP_TYPE.Trap

------------------------------------------对白



------------------------------------------采集物&宝箱

rwtNpcGroup[tFengChe.nCol_FengChe] = rwtNpcGroup[tFengChe.nCol_FengChe] or {}
rwtNpcGroup[tFengChe.nCol_FengChe]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[tFengChe.nCol_FengChe]["DialogId"] = 10162

rwtNpcGroup[tFengChe.nCol_MoShi] = rwtNpcGroup[tFengChe.nCol_MoShi] or {}
rwtNpcGroup[tFengChe.nCol_MoShi]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[tFengChe.nCol_MoShi_ZhuNeng] = rwtNpcGroup[tFengChe.nCol_MoShi_ZhuNeng] or {}
rwtNpcGroup[tFengChe.nCol_MoShi_ZhuNeng]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tFengChe.nCol_MoShi_ZhuNeng]["DialogId"] = 10171

rwtNpcGroup[tFengChe.nBox_TaskIn] = rwtNpcGroup[tFengChe.nBox_TaskIn] or {}
rwtNpcGroup[tFengChe.nBox_TaskIn]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"] = {}
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"] = {}
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1] = {}
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = nUserData_FCZ
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.nBox_TaskIn
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_TaskInKaEr
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nUserData_FCZ
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtNpcGroup[tFengChe.nBox_TaskIn]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1

------------------------------------------地图额外加载

--任务宝箱刷新函数
function MainTask_FengCheZhen_InitMapFunc()
    if rwTaskChkUserInTask(tFengChe.Task8) then
		if not rwTempDataIsExist(nUserData_FCZ) then
			rwTempDataAdd(nUserData_FCZ)
        end
		if rwTempDataGetValue(nUserData_FCZ, CONST_TEMP_DATA.Data1) == 0 and not rwHasGenEvent(tFengChe.nGen_Box_TaskIn) then
			rwAddGenEvent(tFengChe.nGen_Box_TaskIn)
		end
	end
end
--切图后触发
rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
table.insert(rwtSceneLoad_Func[2001],MainTask_FengCheZhen_InitMapFunc)


------------------------------------------MainTask

--废弃TextId
--20172,20176,20177,20178,20179
--20182,20183,20184

rwtTask[tFengChe.Task1_bef] = {}
rwtTask[tFengChe.Task1_bef]["Title"] = tLuaText[LANGUAGE_CONFIG][20171]
rwtTask[tFengChe.Task1_bef]["PreTaskId"] = tFengChe.nPriorTask
rwtTask[tFengChe.Task1_bef]["NextTaskId"] = tFengChe.Task1
rwtTask[tFengChe.Task1_bef]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengChe.Task1_bef]["TaskNpc"] = tFengChe.nNpcres_JieFei_1
rwtTask[tFengChe.Task1_bef]["DialogId"] = 10156
rwtTask[tFengChe.Task1_bef]["MonsterGroupGenId"] = tFengChe.nGen_Monster_JieFei_1
rwtTask[tFengChe.Task1_bef]["KillMonsterGroup1"] = tFengChe.nMon_JieFei_1
rwtTask[tFengChe.Task1_bef]["KillMonsterGroupCount1"] = 1
rwtTask[tFengChe.Task1_bef]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task1_bef]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task1_bef]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_Npc_JieFei_1
rwtTask[tFengChe.Task1_bef]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task1_bef]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tFengChe.Task1_bef]["DynaNpcGroupGen"][2] = {}
rwtTask[tFengChe.Task1_bef]["DynaNpcGroupGen"][2]["GenId"] = tFengChe.nGen_Monster_JieFei_1
rwtTask[tFengChe.Task1_bef]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tFengChe.Task1_bef]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task1_bef]["StartAutoWay"] = {}
rwtTask[tFengChe.Task1_bef]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task1_bef]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task1_bef]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nNpc_JieFei_1
rwtTask[tFengChe.Task1_bef]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Npc_JieFei_1


rwtTask[tFengChe.Task1] = {}
rwtTask[tFengChe.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][20171]
rwtTask[tFengChe.Task1]["PreTaskId"] = tFengChe.Task1_bef   
rwtTask[tFengChe.Task1]["NextTaskId"] = tFengChe.Task3
rwtTask[tFengChe.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task1]["AcceptDialogId"] = 10158
rwtTask[tFengChe.Task1]["TaskNpc"] = tFengChe.nNpcres_JieFei_1
rwtTask[tFengChe.Task1]["DialogId"] = 10158
rwtTask[tFengChe.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task1]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_Npc_JieFei_1
rwtTask[tFengChe.Task1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task1]["Awards"] = {}
rwtTask[tFengChe.Task1]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task1]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_1
rwtTask[tFengChe.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task1



rwtTask[tFengChe.Task3] = {}
rwtTask[tFengChe.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][20173]
rwtTask[tFengChe.Task3]["PreTaskId"] = tFengChe.Task1
rwtTask[tFengChe.Task3]["NextTaskId"] = tFengChe.Task4
rwtTask[tFengChe.Task3]["FailNextTaskId"] = tFengChe.Task3_1
rwtTask[tFengChe.Task3]["CheckBattleFail"] = 1
rwtTask[tFengChe.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengChe.Task3]["ReqTrap1"] = tFengChe.nGT_CunZhang
rwtTask[tFengChe.Task3]["DialogId"] = 10160
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_CunZhang
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][2] = {}
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][2]["GenId"] = tFengChe.nGen_Monster_ShiBing_1
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][3] = {}
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][3]["GenId"] = tFengChe.nGen_Monster_ShiBing_2
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][4] = {}
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][4]["GenId"] = tFengChe.nGen_Monster_ShiBing_3
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][4]["MapId"] = 2001
rwtTask[tFengChe.Task3]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task3]["KillMonsterGroup1"] = tFengChe.nMon_ShiBing_1
rwtTask[tFengChe.Task3]["MonsterGroupGenId"] = tFengChe.nGen_Monster_ShiBing_1
rwtTask[tFengChe.Task3]["IsClickComplete"] = 1
rwtTask[tFengChe.Task3]["Awards"] = {}
rwtTask[tFengChe.Task3]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task3]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_1
rwtTask[tFengChe.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task3
rwtTask[tFengChe.Task3]["StartAutoWay"] = {}
rwtTask[tFengChe.Task3]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tFengChe.Task3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task3]["StartAutoWay"]["FindWayPos"] = tFengChe.sPos_RuCun_1
rwtTask[tFengChe.Task3]["OpenTransfer"] = CONST_TRANSFER_INDEX.FENGCHEZHEN
rwtTask[tFengChe.Task3]["OpenTransferTip"] = "<color=#00FF00>风车镇</color>传送门已开启"


rwtTask[tFengChe.Task3_1] = {}
rwtTask[tFengChe.Task3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20173]
--rwtTask[tFengChe.Task3_1]["PreTaskId"] = tFengChe.Task3
rwtTask[tFengChe.Task3_1]["NextTaskId"] = tFengChe.Task4
rwtTask[tFengChe.Task3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tFengChe.Task3_1]["ReqTrap1"] = tFengChe.nGT_CunZhang
rwtTask[tFengChe.Task3_1]["DialogId"] = 11965
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_CunZhang
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][2] = {}
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][2]["GenId"] = tFengChe.nGen_Monster_ShiBing_1
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][3] = {}
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][3]["GenId"] = tFengChe.nGen_Monster_ShiBing_2
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][4] = {}
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][4]["GenId"] = tFengChe.nGen_Monster_ShiBing_3
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][4]["MapId"] = 2001
rwtTask[tFengChe.Task3_1]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task3_1]["IsClickComplete"] = 1
rwtTask[tFengChe.Task3_1]["Awards"] = {}
rwtTask[tFengChe.Task3_1]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task3_1]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task3_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task3_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task3_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_1
rwtTask[tFengChe.Task3_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task3_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task3_1





rwtTask[tFengChe.Task4] = {}
rwtTask[tFengChe.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][20174]
--rwtTask[tFengChe.Task4]["PreTaskId"] = tFengChe.Task3
rwtTask[tFengChe.Task4]["NextTaskId"] = tFengChe.Task5
rwtTask[tFengChe.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task4]["TaskNpc"] = 3008
rwtTask[tFengChe.Task4]["DialogId"] = 10161
rwtTask[tFengChe.Task4]["Awards"] = {}
rwtTask[tFengChe.Task4]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task4]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_1
rwtTask[tFengChe.Task4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task4
rwtTask[tFengChe.Task4]["StartAutoWay"] = {}
rwtTask[tFengChe.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task4]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nNpc_CunZhang
rwtTask[tFengChe.Task4]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Npc_CunZhang



rwtTask[tFengChe.Task5] = {}
rwtTask[tFengChe.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][20175]
rwtTask[tFengChe.Task5]["PreTaskId"] = tFengChe.Task4
rwtTask[tFengChe.Task5]["NextTaskId"] = tFengChe.Task6
-- rwtTask[tFengChe.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tFengChe.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tFengChe.Task5]["DialogId"] = 10162
rwtTask[tFengChe.Task5]["ReqTrap1"] = tFengChe.nCol_FengChe
-- rwtTask[tFengChe.Task5]["ReqCollectId1"] = tFengChe.nCol_FengChe
-- rwtTask[tFengChe.Task5]["ReqCollectCount1"] = 1 
rwtTask[tFengChe.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task5]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_Collect_FengChe
rwtTask[tFengChe.Task5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task5]["StartAutoWay"] = {}
rwtTask[tFengChe.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task5]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nCol_FengChe
rwtTask[tFengChe.Task5]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Collect_FengChe

--风车解谜(需求)
rwtTask[tFengChe.Task6] = {}
rwtTask[tFengChe.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][20175]
rwtTask[tFengChe.Task6]["PreTaskId"] = tFengChe.Task5
rwtTask[tFengChe.Task6]["NextTaskId"] = tFengChe.Task7
rwtTask[tFengChe.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[tFengChe.Task6]["ReqPuzzleId"] = 115
rwtTask[tFengChe.Task6]["FinishDialogId"] = 12499
rwtTask[tFengChe.Task6]["ReqFinishDialogPuzzleEnd"] = true
--rwtTask[tFengChe.Task6]["ReqTrap1"] = tFengChe.nGT_FengChe
--rwtTask[tFengChe.Task6]["DialogId"] = 10163
--rwtTask[tFengChe.Task6]["AutoTaskDialog"] = 10163
--rwtTask[tFengChe.Task6]["IsClickComplete"] = 1
rwtTask[tFengChe.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task6]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_Build_2FengChe
rwtTask[tFengChe.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task6]["Awards"] = {}
rwtTask[tFengChe.Task6]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task6]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task6]["Awards"]["Events"][1]["PuzzleEvent"] = {115106}
rwtTask[tFengChe.Task6]["StartAutoWay"] = {}
rwtTask[tFengChe.Task6]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tFengChe.Task6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task6]["StartAutoWay"]["FindWayPos"] = tFengChe.sPos_Fengche



rwtTask[tFengChe.Task7] = {}
rwtTask[tFengChe.Task7]["Title"]= tLuaText[LANGUAGE_CONFIG][20175]
rwtTask[tFengChe.Task7]["PreTaskId"]= tFengChe.Task6
rwtTask[tFengChe.Task7]["NextTaskId"]= tFengChe.Task8
rwtTask[tFengChe.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task7]["TaskNpc"] = 3104
rwtTask[tFengChe.Task7]["DialogId"] = 10164
rwtTask[tFengChe.Task7]["Awards"] = {}
rwtTask[tFengChe.Task7]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task7]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task7]["Awards"]["Events"][1]["DynCreate"] = {tFengChe.nGen_Box_TaskIn}
rwtTask[tFengChe.Task7]["StartAutoWay"] = {}
rwtTask[tFengChe.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task7]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nNpc_KaEr
rwtTask[tFengChe.Task7]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Npc_KaEr

rwtTask[tFengChe.Task8] = {}
rwtTask[tFengChe.Task8]["Title"] =tLuaText[LANGUAGE_CONFIG][20175] 
rwtTask[tFengChe.Task8]["PreTaskId"] = tFengChe.Task7
rwtTask[tFengChe.Task8]["NextTaskId"] = tFengChe.Task9
rwtTask[tFengChe.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task8]["TaskNpc"] = 3102
rwtTask[tFengChe.Task8]["DialogId"] = 10165
rwtTask[tFengChe.Task8]["Awards"] = {}
rwtTask[tFengChe.Task8]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task8]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task8]["Awards"]["Events"][1]["DynDelete"] = {tFengChe.nGen_Box_TaskIn}
rwtTask[tFengChe.Task8]["StartAutoWay"] = {}
rwtTask[tFengChe.Task8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task8]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task8]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nNpc_FeiSi
rwtTask[tFengChe.Task8]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Npc_FeiSi

rwtTask[tFengChe.Task9] = {}
rwtTask[tFengChe.Task9]["Title"]= tLuaText[LANGUAGE_CONFIG][20175]
rwtTask[tFengChe.Task9]["PreTaskId"]= tFengChe.Task8
rwtTask[tFengChe.Task9]["NextTaskId"]= tFengChe.Task10
rwtTask[tFengChe.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task9]["TaskNpc"] = 3103
rwtTask[tFengChe.Task9]["DialogId"] = 10166
rwtTask[tFengChe.Task9]["StartAutoWay"] = {}
rwtTask[tFengChe.Task9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task9]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task9]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nNpc_MoKeFu
rwtTask[tFengChe.Task9]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Npc_MoKeFu
rwtTask[tFengChe.Task9]["Awards"] = {}
rwtTask[tFengChe.Task9]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task9]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_2
rwtTask[tFengChe.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task9


rwtTask[tFengChe.Task10] = {}
rwtTask[tFengChe.Task10]["Title"] = tLuaText[LANGUAGE_CONFIG][20180]
rwtTask[tFengChe.Task10]["PreTaskId"] = tFengChe.Task9
rwtTask[tFengChe.Task10]["NextTaskId"] = tFengChe.Task11
rwtTask[tFengChe.Task10]["AcceptExtraTaskId"] = 70210
rwtTask[tFengChe.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengChe.Task10]["MonsterGroupGenId"] = tFengChe.nGen_Monster_XQZ
rwtTask[tFengChe.Task10]["KillMonsterGroup1"] = tFengChe.nMon_XQZ
rwtTask[tFengChe.Task10]["ReqTrap1"] = tFengChe.nGT_GeBuLin
rwtTask[tFengChe.Task10]["DialogId"] = 10167
rwtTask[tFengChe.Task10]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task10]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task10]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_GeBuLin
rwtTask[tFengChe.Task10]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tFengChe.Task10]["DynaNpcGroupGen"][2] = {}
rwtTask[tFengChe.Task10]["DynaNpcGroupGen"][2]["GenId"] = tFengChe.nGen_Monster_XQZ
rwtTask[tFengChe.Task10]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tFengChe.Task10]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task10]["IsClickComplete"] = 1
rwtTask[tFengChe.Task10]["Awards"] = {}
rwtTask[tFengChe.Task10]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task10]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task10]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task10]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task10]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_XQZ
rwtTask[tFengChe.Task10]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task10]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task10
rwtTask[tFengChe.Task10]["StartAutoWay"] = {}
rwtTask[tFengChe.Task10]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tFengChe.Task10]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task10]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nMon_XQZ
rwtTask[tFengChe.Task10]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Monster_XQZ
rwtTask[tFengChe.Task10]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.UPLEV_CREAVE_RUNE}  --符文升级功能解锁



rwtTask[tFengChe.Task11] = {}
rwtTask[tFengChe.Task11]["Title"] = tLuaText[LANGUAGE_CONFIG][20181]
rwtTask[tFengChe.Task11]["PreTaskId"] = tFengChe.Task10
rwtTask[tFengChe.Task11]["NextTaskId"] = tFengChe.Task12
rwtTask[tFengChe.Task11]["DialogId"] = 10168
rwtTask[tFengChe.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tFengChe.Task11]["ReqTrap1"] = tFengChe.nGT_GeBuLin
rwtTask[tFengChe.Task11]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task11]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task11]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_GeBuLin
rwtTask[tFengChe.Task11]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tFengChe.Task11]["Awards"] = {}
--rwtTask[tFengChe.Task11]["Awards"]["Events"] = {}
--rwtTask[tFengChe.Task11]["Awards"]["Events"][1] = {}
--rwtTask[tFengChe.Task11]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtTask[tFengChe.Task11]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtTask[tFengChe.Task11]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000003
--rwtTask[tFengChe.Task11]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtTask[tFengChe.Task11]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task11
rwtTask[tFengChe.Task11]["AutoTaskDialog"] = 10168




rwtTask[tFengChe.Task12] = {}
rwtTask[tFengChe.Task12]["Title"] = tLuaText[LANGUAGE_CONFIG][20181]
rwtTask[tFengChe.Task12]["PreTaskId"] = tFengChe.Task11
rwtTask[tFengChe.Task12]["NextTaskId"] = tFengChe.Task12_1
rwtTask[tFengChe.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task12]["DialogId"] = 10169
rwtTask[tFengChe.Task12]["TaskNpc"] = 3009
rwtTask[tFengChe.Task12]["StartAutoWay"] = {}
rwtTask[tFengChe.Task12]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task12]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task12]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nNpc_AnKe
rwtTask[tFengChe.Task12]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Npc_AnKe



rwtTask[tFengChe.Task12_1] = {}
rwtTask[tFengChe.Task12_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20181]
rwtTask[tFengChe.Task12_1]["PreTaskId"] = tFengChe.Task12
rwtTask[tFengChe.Task12_1]["NextTaskId"] = tFengChe.Task12_2
rwtTask[tFengChe.Task12_1]["DialogId"] = 10374
rwtTask[tFengChe.Task12_1]["FinishDialogId"] = 12370
rwtTask[tFengChe.Task12_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[tFengChe.Task12_1]["TaskNpc"] = 3009
rwtTask[tFengChe.Task12_1]["AutoTaskDialog"] = 10374
rwtTask[tFengChe.Task12_1]["ReqFinishDialogPuzzleEnd"] = true
rwtTask[tFengChe.Task12_1]["PuzzleInitFunc"] = function()
	local nUserRecordId_1 = 1215
	local nPuzzleId = 112
	if not rwTempDataIsExist(nUserRecordId_1) then
		rwTempDataAdd(nUserRecordId_1)
		rwOpenNpcChatDialog(12436)
	else
		if rwTempDataGetValue(nUserRecordId_1,CONST_TEMP_DATA.Data1) == 4 then
			nPuzzleId = 113
		end
		if rwTempDataGetValue(nUserRecordId_1,CONST_TEMP_DATA.Data2) == 3 then
			nPuzzleId = 114
		end
		if rwTempDataGetValue(nUserRecordId_1,CONST_TEMP_DATA.Data3) == 2 then
			nPuzzleId = nil
		end
		
		if nPuzzleId then
			rwPuzzle_Show(nPuzzleId)
		else
			rwOpenNpcChatDialog(12370,CONST_NPCCHAT_TYPE.TASK,tFengChe.Task12_1)
		end
	end
end




rwtTask[tFengChe.Task12_2] = {}
rwtTask[tFengChe.Task12_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20181]
rwtTask[tFengChe.Task12_2]["PreTaskId"] = tFengChe.Task12_1
rwtTask[tFengChe.Task12_2]["NextTaskId"] = tFengChe.Task13
rwtTask[tFengChe.Task12_2]["DialogId"] = 10373
rwtTask[tFengChe.Task12_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task12_2]["TaskNpc"] = 3009
rwtTask[tFengChe.Task12_2]["UnlockCopyMap1"] = 3031
rwtTask[tFengChe.Task12_2]["UnlockCopyMap2"] = 3030
--rwtTask[tFengChe.Task12_2]["CloseDialog"] = 0
rwtTask[tFengChe.Task12_2]["AutoTaskDialog"] = 10373
rwtTask[tFengChe.Task12_2]["Awards"] = {}
rwtTask[tFengChe.Task12_2]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task12_2]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task12_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task12_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task12_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_2
rwtTask[tFengChe.Task12_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task12_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task12_2



rwtTask[tFengChe.Task13] = {}
rwtTask[tFengChe.Task13]["Title"] =tLuaText[LANGUAGE_CONFIG][20185]
rwtTask[tFengChe.Task13]["PreTaskId"] = tFengChe.Task12_2
rwtTask[tFengChe.Task13]["NextTaskId"] = tFengChe.Task14
rwtTask[tFengChe.Task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tFengChe.Task13]["PassCopyMap1"] = {3031} 
rwtTask[tFengChe.Task13]["OpenCopyMap"] = 3031
rwtTask[tFengChe.Task13]["IsClickComplete"] = 1
rwtTask[tFengChe.Task13]["Awards"] = {}
rwtTask[tFengChe.Task13]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task13]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task13]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task13]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task13]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_2
rwtTask[tFengChe.Task13]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task13]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task13
rwtTask[tFengChe.Task13]["StartAutoWay"] = {}
rwtTask[tFengChe.Task13]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tFengChe.Task13]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task13]["StartAutoWay"]["FindWayPos"] = tFengChe.sPos_COPYMAP
--解锁每日副本
rwtTask[tFengChe.Task13]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.DAILY_COPY_MAP} --每日副本






rwtTask[tFengChe.Task14] = {}
rwtTask[tFengChe.Task14]["Title"] = tLuaText[LANGUAGE_CONFIG][20186]
rwtTask[tFengChe.Task14]["PreTaskId"] = tFengChe.Task13
rwtTask[tFengChe.Task14]["NextTaskId"] = tFengChe.Task14_1
rwtTask[tFengChe.Task14]["AcceptExtraTaskId"] = 70211
rwtTask[tFengChe.Task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task14]["TaskNpc"] = 3011
rwtTask[tFengChe.Task14]["DialogId"] = 10170
rwtTask[tFengChe.Task14]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task14]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task14]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_Npc_FuShang
rwtTask[tFengChe.Task14]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task14]["DynaNpcGroupGen"][2] = {}
rwtTask[tFengChe.Task14]["DynaNpcGroupGen"][2]["GenId"] = tFengChe.nGen_Npc_HZK_DongKou
rwtTask[tFengChe.Task14]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tFengChe.Task14]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tFengChe.Task14]["StartAutoWay"] = {}
--rwtTask[tFengChe.Task14]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tFengChe.Task14]["StartAutoWay"]["FindWayMapId"] = 2001
--rwtTask[tFengChe.Task14]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nNpc_HZK_DongKou
--rwtTask[tFengChe.Task14]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Npc_HZK_DongKou
rwtTask[tFengChe.Task14]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.HRO_UP_CLASS}  --英雄突破功能解锁

rwtTask[tFengChe.Task14_1] = {}
rwtTask[tFengChe.Task14_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20186] 
rwtTask[tFengChe.Task14_1]["PreTaskId"] = tFengChe.Task14
rwtTask[tFengChe.Task14_1]["NextTaskId"] = tFengChe.Task15
rwtTask[tFengChe.Task14_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tFengChe.Task14_1]["DialogId"] = 10375
rwtTask[tFengChe.Task14_1]["ReqTrap1"] = tFengChe.nGT_MLS
rwtTask[tFengChe.Task14_1]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task14_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task14_1]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_MLS
rwtTask[tFengChe.Task14_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task14_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task14_1]["Awards"] = {}
rwtTask[tFengChe.Task14_1]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task14_1]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task14_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task14_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task14_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_3
rwtTask[tFengChe.Task14_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task14_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task14_1
rwtTask[tFengChe.Task14_1]["StartAutoWay"] = {}
rwtTask[tFengChe.Task14_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task14_1]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task14_1]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nGT_MLS
rwtTask[tFengChe.Task14_1]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_MLS


rwtTask[tFengChe.Task15] = {}
rwtTask[tFengChe.Task15]["Title"] = tLuaText[LANGUAGE_CONFIG][20187] 
rwtTask[tFengChe.Task15]["PreTaskId"] = tFengChe.Task14_1
rwtTask[tFengChe.Task15]["NextTaskId"] = tFengChe.Task16
rwtTask[tFengChe.Task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[tFengChe.Task15]["IsClickComplete"] = 1
rwtTask[tFengChe.Task15]["ReqPuzzleId"] = 103
rwtTask[tFengChe.Task15]["ReqPuzzleObj"] = 103001
rwtTask[tFengChe.Task15]["ReqPuzzleEnterDialog"] = 10919
rwtTask[tFengChe.Task15]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task15]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task15]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_Build_FengChe
rwtTask[tFengChe.Task15]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengChe.Task15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task15]["StartAutoWay"] = {}
rwtTask[tFengChe.Task15]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tFengChe.Task15]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task15]["StartAutoWay"]["FindWayPos"] = tFengChe.sPos_Fengche
rwtTask[tFengChe.Task15]["Awards"] = {}
rwtTask[tFengChe.Task15]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task15]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task15]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task15]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task15]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000002
rwtTask[tFengChe.Task15]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task15]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task15



rwtTask[tFengChe.Task16] = {}
rwtTask[tFengChe.Task16]["Title"] = tLuaText[LANGUAGE_CONFIG][20188] 
rwtTask[tFengChe.Task16]["PreTaskId"] = tFengChe.Task15
rwtTask[tFengChe.Task16]["NextTaskId"] = tFengChe.Task17
rwtTask[tFengChe.Task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task16]["DialogId"] = 10171
rwtTask[tFengChe.Task16]["TaskNpc"] = 3009
rwtTask[tFengChe.Task16]["StartAutoWay"] = {}
rwtTask[tFengChe.Task16]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task16]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengChe.Task16]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nNpc_AnKe
rwtTask[tFengChe.Task16]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_Npc_AnKe


rwtTask[tFengChe.Task17] = {}
rwtTask[tFengChe.Task17]["Title"] = tLuaText[LANGUAGE_CONFIG][20188]
rwtTask[tFengChe.Task17]["PreTaskId"] = tFengChe.Task16
rwtTask[tFengChe.Task17]["NextTaskId"] = tFengChe.Task18
rwtTask[tFengChe.Task17]["AcceptExtraTaskId"] = 70212
rwtTask[tFengChe.Task17]["DialogId"] = 10372
rwtTask[tFengChe.Task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task17]["TaskNpc"] = 3009
--rwtTask[tFengChe.Task17]["IsClickComplete"] = 1
rwtTask[tFengChe.Task17]["AutoTaskDialog"] = 10372
rwtTask[tFengChe.Task17]["Awards"] = {}
rwtTask[tFengChe.Task17]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task17]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task17]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task17]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task17]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000367
rwtTask[tFengChe.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task17
rwtTask[tFengChe.Task17]["OpenMercenaryTask"] = {}
rwtTask[tFengChe.Task17]["OpenMercenaryTask"]["AreaId"] = 2001
rwtTask[tFengChe.Task17]["OpenMercenaryTask"]["TownId"] = 200103
rwtTask[tFengChe.Task17]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.FRIEND_BOX}  --好友宝箱功能解锁


rwtTask[tFengChe.Task18] = {}
rwtTask[tFengChe.Task18]["Title"] = tLuaText[LANGUAGE_CONFIG][20189]
rwtTask[tFengChe.Task18]["PreTaskId"] = tFengChe.Task17
rwtTask[tFengChe.Task18]["NextTaskId"] = tFengChe.Task19
rwtTask[tFengChe.Task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tFengChe.Task18]["DialogId"] = 10713
rwtTask[tFengChe.Task18]["ReqTrap1"] = tFengChe.nGT_KCheng
rwtTask[tFengChe.Task18]["DynaNpcGroupGen"] = {}
rwtTask[tFengChe.Task18]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengChe.Task18]["DynaNpcGroupGen"][1]["GenId"] = tFengChe.nGen_KCheng
rwtTask[tFengChe.Task18]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tFengChe.Task18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengChe.Task18]["StartAutoWay"] = {}
rwtTask[tFengChe.Task18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task18]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tFengChe.Task18]["StartAutoWay"]["FindWayGroupId"] = tFengChe.nGT_KCheng
rwtTask[tFengChe.Task18]["StartAutoWay"]["FindWayGenId"] = tFengChe.nGen_KCheng

rwtTask[tFengChe.Task19] = {}
rwtTask[tFengChe.Task19]["Title"] = tLuaText[LANGUAGE_CONFIG][20189]
rwtTask[tFengChe.Task19]["PreTaskId"] = tFengChe.Task18
rwtTask[tFengChe.Task19]["NextTaskId"] = tFengChe.Task20
rwtTask[tFengChe.Task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task19]["TaskNpc"] = 3005
rwtTask[tFengChe.Task19]["DialogId"] = 11670
rwtTask[tFengChe.Task19]["StartAutoWay"] = {}
rwtTask[tFengChe.Task19]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task19]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tFengChe.Task19]["StartAutoWay"]["FindWayGroupId"] = 20112
rwtTask[tFengChe.Task19]["StartAutoWay"]["FindWayGenId"] = 2001655


rwtTask[tFengChe.Task20] = {}
rwtTask[tFengChe.Task20]["Title"] = tLuaText[LANGUAGE_CONFIG][20189]
rwtTask[tFengChe.Task20]["PreTaskId"] = tFengChe.Task19
rwtTask[tFengChe.Task20]["NextTaskId"] = tFengChe.Task21
rwtTask[tFengChe.Task20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tFengChe.Task20]["IsClickComplete"] = 1
rwtTask[tFengChe.Task20]["NeedLevel"] = 24
rwtTask[tFengChe.Task20]["LackDialogId"] = 10714
--rwtTask[tFengChe.Task20]["DialogId"] = 10715

rwtTask[tFengChe.Task21] = {}
rwtTask[tFengChe.Task21]["Title"] = tLuaText[LANGUAGE_CONFIG][20189]
rwtTask[tFengChe.Task21]["PreTaskId"] = tFengChe.Task20
rwtTask[tFengChe.Task21]["NextTaskId"] = tFengChe.nLaterTask
rwtTask[tFengChe.Task21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tFengChe.Task21]["TaskNpc"] = 3005
rwtTask[tFengChe.Task21]["AcceptDialogId"] = 10715
rwtTask[tFengChe.Task21]["DialogId"] = 10716
rwtTask[tFengChe.Task21]["StartAutoWay"] = {}
rwtTask[tFengChe.Task21]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tFengChe.Task21]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tFengChe.Task21]["StartAutoWay"]["FindWayGroupId"] = 20112
rwtTask[tFengChe.Task21]["StartAutoWay"]["FindWayGenId"] = 2001655
rwtTask[tFengChe.Task21]["Awards"] = {}
rwtTask[tFengChe.Task21]["Awards"]["Events"] = {}
rwtTask[tFengChe.Task21]["Awards"]["Events"][1] = {}
rwtTask[tFengChe.Task21]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tFengChe.Task21]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tFengChe.Task21]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000114
rwtTask[tFengChe.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tFengChe.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tFengChe.Task21



------------------------------------------支线


rwtTask[70210] = {}
rwtTask[70210]["Title"] = tLuaText[LANGUAGE_CONFIG][21459] 
--rwtTask[70210]["PreTaskId"] = tFengChe.Task10
rwtTask[70210]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[70210]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[70210]["DialogId"] = 11960
rwtTask[70210]["Awards"] = {}
rwtTask[70210]["Awards"]["Events"] = {}
rwtTask[70210]["Awards"]["Events"][1] = {}
rwtTask[70210]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[70210]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[70210]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000264
rwtTask[70210]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[70210]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 70210

rwtTask[70211] = {}
rwtTask[70211]["Title"] = tLuaText[LANGUAGE_CONFIG][21460] 
--rwtTask[70211]["PreTaskId"] = tFengChe.Task14
rwtTask[70211]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[70211]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[70211]["DialogId"] = 11961
rwtTask[70211]["Awards"] = {}
rwtTask[70211]["Awards"]["Events"] = {}
rwtTask[70211]["Awards"]["Events"][1] = {}
rwtTask[70211]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[70211]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[70211]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000265
rwtTask[70211]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[70211]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 70211

rwtTask[70212] = {}
rwtTask[70212]["Title"] = tLuaText[LANGUAGE_CONFIG][21461] 
--rwtTask[70212]["PreTaskId"] = tFengChe.Task17
rwtTask[70212]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[70212]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[70212]["DialogId"] = 11962
rwtTask[70212]["Awards"] = {}
rwtTask[70212]["Awards"]["Events"] = {}
rwtTask[70212]["Awards"]["Events"][1] = {}
rwtTask[70212]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[70212]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[70212]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000266
rwtTask[70212]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[70212]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 70212