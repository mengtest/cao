--[MainTask]LuoLanZhen *.lua
--Date
--此文件由[BabeLua]插件自动生成
--罗兰镇主线


--endregion

----***************************数据定义***************************----
----------任务ID------

local tLuoLanZhen = {}
tLuoLanZhen.PreTask = 10224
tLuoLanZhen.NextTask = 10151
--目标，罗兰镇
tLuoLanZhen.Task_1 = 10126				--别拦路，奇怪家伙
--传说中的罗兰镇
tLuoLanZhen.Task_2 = 10227				--前往罗兰镇
tLuoLanZhen.Task_3 = 10127				--抵达罗兰镇
tLuoLanZhen.Task_4 = 10128				--了解镇上的事情
tLuoLanZhen.Task_5 = 10129				--采集血霜草
tLuoLanZhen.Task_6 = 10228				--走，去找小姐姐
tLuoLanZhen.Task_7 = 10130				--救助伤员
tLuoLanZhen.Task_8 = 10131				--提醒西蒙
--名侦探镇长大卫
tLuoLanZhen.Task_11 = 10134             --解读《罗兰颂歌》
--赏金猎人出击
tLuoLanZhen.Task_9 = 10132				--取回资料
tLuoLanZhen.Task_10 = 10133             --“大姐头”登场
--玫瑰团的叫嚣
-- tLuoLanZhen.Task_12 = 10135				--抓住强盗贝拉
--温丽的天才计划
-- tLuoLanZhen.Task_13 = 10136				--天衣无缝的计划
-- tLuoLanZhen.Task_14 = 10137				--押送贝拉
-- tLuoLanZhen.Task_15 = 10268				--押送贝拉（战斗失败）
--赏金猎人出击
-- tLuoLanZhen.Task_16 = 10138				--化解误会
tLuoLanZhen.Task_17 = 10139             --前往玫瑰团驻地
--勇闯玫瑰团驻地
tLuoLanZhen.Task_18 = 10140        		--解救镇民    
--凯旋而归
tLuoLanZhen.Task_19 = 10141      		--返回罗兰镇      
tLuoLanZhen.Task_20 = 10142             --返回罗兰镇（护送）
-- tLuoLanZhen.Task_21 = 10143             --完成一次装备升级
--失之交臂
tLuoLanZhen.Task_22 = 10144   			--向大卫询问线索
--爱琳娜的回忆    
-- tLuoLanZhen.Task_23 = 10146    			--不为人知的过去
--右相的双重身份     
tLuoLanZhen.Task_24 = 10147   			--通过传送阵回卡诺萨         
tLuoLanZhen.Task_25 = 10148             --向诺尔大人汇报
--水晶球里的人
tLuoLanZhen.Task_26 = 10149    			--讨论下一步计划        
-- tLuoLanZhen.Task_27 = 10150             --完成第一次招募
-- tLuoLanZhen.Task_28 = 10269             --意想不到的重逢
--今天开始当保镖
-- tLuoLanZhen.Task_29 = 10214           	--打听消息，就去那里 
tLuoLanZhen.Task_30 = 10270         	--去自律联盟打听消息  
-- tLuoLanZhen.Task_33 = 10543         	--达到16级  
tLuoLanZhen.Task_34 = 10544       		--去自律联盟打听消息  
-- tLuoLanZhen.Task_31 = 10215         	--接受委托任务
--出发，最强组合
tLuoLanZhen.Task_32 = 10216         	--爱琳娜的决定

local nTaskId_YuCiTongShi = 10613       --新增与此同时

--支线任务ID
local tBranchTask = {}
	tBranchTask.PreTask1 = 10216	 --爱琳娜的决定
	tBranchTask.Task1   = 70205    --谢礼
	tBranchTask.PreTask2 = 10144	 --向大卫询问线索
	tBranchTask.Task2   = 70206    --叮，新的好友请求
    tBranchTask.JiuWeiBiShi = 70204     -- 久违的比试
------------------------------------------------------------------------------------
local nGenIdCopyMapPlot = 3021004
local nGenIdCopyMapNormal = 3029008
----------对白ID------
--目标，罗兰镇
local nDialog_Task1 = 10131     --前往罗兰镇
--传说中的罗兰镇
local nDialog_Task_NewAdd1 = 10492     --继续前往罗兰镇
local nDialog_Task2 = 10132     --抵达罗兰镇
local nDialog_Task3 = 10133     --了解镇上的事情
local nDialog_Task4 = 10154     --采集雪霜草
local nDialog_Task_NewAdd2 = 10493     --去找少女
-- local nDialog_Task_NewAdd5 = 10536   --救助伤员前
local nDialog_Task5 = 12618     --救助伤员
local nDialog_Task6 = 10134     --提醒西蒙
--名侦探镇长大卫
local nDialog_Task9 = 10136     --解读《罗兰颂歌》
--赏金猎人出击
local nDialog_Task7 = 10135				--取回资料
local nDialog_Task10 = 10137             --“大姐头”登场
-- 玫瑰团的叫嚣
-- local nDialog_Task10 = 10137     --抓住强盗贝拉
-- 温丽的天才计划
-- local nDialog_Task11 = 10138     --天衣无缝的计划
-- local nDialog_Task12 = 10139     --押送贝拉
-- local nDialog_Task_NewAdd3 = 10534	 --押送贝拉（战斗失败）
--赏金猎人出击
local nDialog_Task13 = 10140     --化解误会
local nDialog_Task14 = 10141     --前往玫瑰团驻地
--凯旋而归
local nDialog_Task16 = 10142     --护送镇民回家
-- local nDialog_Task17 = 10494     --护送镇民回家（护送结束对白）
local nDialog_Task18 = 10143     --完成一次装备升级
--失之交臂
local nDialog_Task19 = 10144     --向大卫询问线索
local nDialog_Task20 = 10145     --接受大卫的邀请
--星空下的秘密
local nDialog_Task21 = 10146     --爱琳娜的回忆
--右相的双重身份
--local nDialog_Task22 = 10147     --向诺尔大人汇报
local nDialog_Task23 = 10148     --向诺尔大人汇报
--水晶球里的人
local nDialog_Task24 = 10149     --讨论下一步计划
-- local nDialog_Task25 = 10150     --完成第一次招募
local nDialog_Task_NewAdd4 = 10535   --意想不到的重逢
--今天开始当保镖
-- local nDialog_Task26 = 10151     --接受委托任务
local nDialog_Task_NewAdd8 = 10540   --去自律联盟打听消息对白
-- local nDialog_Task_NewAdd5 = 10536   --新增任务
-- local nDialog_Task_NewAdd6 = 10537   --去自律联盟打听消息(场景表现1)
-- local nDialog_Task_NewAdd7 = 10538   --去自律联盟打听消息(场景表现2)
-- local nDialog_Task_NewAdd8 = 10539   --去自律联盟打听消息对白
-- local nDialog_Task27 = 10539     --接受委托任务
--出发，最强组合
local nDialog_Task28 = 10153     --爱琳娜的决定

--支线对白ID
local nDialog_1 = 11955	   --谢礼
local nDialog_2 = 11956	   --叮，新的好友请求
-----------------------NPC群组ID-----------------
--陷阱
local nTrap_1 = 30089   --任务1
local nTrap_GenId_1 = 2001391
local nTrap_2 = 30090   --任务2对白
local nTrap_GenId_2 = 2001392
local nTrap_3 = 30091   --任务6对白
local nTrap_GenId_3 = 2001393
local nTrap_4 = 30092   --任务8护送任务完成点
local nTrap_GenId_4 = 2001394
local nTrap_5 = 30093   --任务11对白
local nTrap_GenId_5 = 2001395
local nTrap_6 = 30094   --任务12护送任务
local nTrap_GenId_6 = 2001396
local nTrap_7 = 30095   --任务14/16陷阱
local nTrap_GenId_7 = 2001397
local nTrap_8 = 30096   --任务17护送目标点
local nTrap_GenId_8 = 2001398
local nTrap_9 = 30097   --任务22陷阱
local nTrap_GenId_9 = 2001400
local nTrap_10 = 30098   --任务26陷阱
local nTrap_GenId_10 = 2001538
local nTrap_11 = 30099   --提醒西蒙陷阱
local nTrap_GenId_11 = 2001544
local nTrap_12 = 30100   --占星师陷阱
local nTrap_GenId_12 = 2001545
local nTrap_13 = 30212   --血霜草陷阱
local nTrap_GenId_13 = 2001739
local nTrap_14 = 30580   --击退哈蒙
local nTrap_GenId_14 = 20010202
local nTrap_15 = 30584   --救助伤员
local nTrap_GenId_15 = 20010206
local nTrap_16 = 30647   --桑尼的礼物
local nTrap_GenId_16 = 20010248
--NPC
local nNpcmap_HeiLi = 20049 --赫丽
local nNpcmap_HeiLi_GenId = 2001381

local nNpcmap_ZhenMin = 20052 --镇民（救治后）
local nNpcmap_ZhenMin_GenId = 2001384
local nNpcmap_ZhenMinDebuff = 20416 --镇民（救治前）
local nNpcmap_ZhenMinDebuff_GenId = 2001988

local nNpcmap_MaiTi = 20051 --镇民麦提
local nNpcmap_MaiTi_GenId = 2001383

local nNpcmap_AiLinNa = 20050 --爱琳娜
local nNpcmap_AiLinNa_GenId_1 = 2001536
local nNpcmap_AiLinNa_GenId_2 = 2001539

local nNpcmap_Miller = 20053 --占星师米勒
local nNpcmap_Miller_GenId = 1000001

local nNpcmap_TuoMaSi = 20112 --托马斯
local nNpcmap_TuoMaSi_GenId = 2001655

local nNpcmap_GaiYin = 20135 --该隐
local nNpcmap_GaiYin_GenId = 2001540

local nNpcmap_BeiLa = 20136 --贝拉
local nNpcmap_BeiLa_GenId = 2001541

local nNpcmap_ZhenMin1 = 20137 --镇民1
local nNpcmap_ZhenMin1_GenId = 2001542

local nNpcmap_ZhenMin2 = 20138 --镇民2（永久）
local nNpcmap_ZhenMin2_GenId = 2001543

local nNpcmap_Nuoer = 20225 --诺尔
local nNpcmap_Nuoer_GenId = 1000044

--佣兵任务NPC
local nNpcGroup_Clerk = 20066         --公会办事员(永久)
local nNpcGroup_Clerk_GenId = 2001441        
local nNpcGroup_Girl = 20067         --小女孩
local nNpcGroup_Girl_GenId = 2001442
local nNpcGroup_YouEr = 20071  --芙妮
local nNpcGroup_YouEr_GenId = 2001449  
local nNpcGroup_Conquest = 20072         --康奎斯特
local nNpcGroup_Conquest_GenId = 2001450    
--闲聊NPC
--艾德蒙
local nNpcGroup_AiDeMeng = 20142
--老乞丐查理
local nNpcGroup_ChaLi = 20144

--采集物
local nCollect_1 = 60041    --血霜草
local nCollect_GenId_1 = 2001385    
local nCollect_2 = 60042    --受伤的镇民
local nCollect_GenId_2 = 2001386   

--建筑
local nNpcBuild_Office = 10010  --罗兰镇政务厅
local nNpcBuild_Office_GenId = 2001537
---------------------NPCID-----------------
local nNPC_HeLi = 3001    --赫丽
local nNPC_DaWei = 3004    --大卫
local nNPC_MaiTi = 3002    --麦提
local nNPC_AiLinNa = 301   --爱琳娜
local nNPC_Noel = 1000   --诺尔
local nNPC_Miller = 3081   --占星师米勒
local nNPC_ZhenMin = 3087   --镇民
local nNPC_GaiYin = 3010   --该隐
local nNPC_BeiLa = 3003   --贝拉
local nNPC_ZhenMin1 = 3092   --镇民1
local nNPC_ZhenMin2 = 3093   --镇民2


--佣兵NPC

local nNPC_TuoMaSi = 3005    --托马斯
local nNpc_Clerk = 3052          --公会办事员(永久)
local nNpc_Conquest = 3058   --康奎斯特(永久)
local nNpc_Girl  = 3053        --小女孩
local nNpc_YouEr  = 3057  --芙妮 
local nNpc_Conquest = 3058    --康奎斯特
--闲聊NPC
--艾德蒙
local nNpc_AiDeMeng = 3098
--老乞丐查理
local nNpc_ChaLi = 3242
---------------MonsterGroup----------
local nMonsterGroup_1 = 900131 --该隐
local nMonsterGroup_GenId_1 = 2001387
local nMonsterGroup_2 = 900132 --罗丝
local nMonsterGroup_GenId_2 = 2001388
local nMonsterGroup_3 = 900133 --爱琳娜
local nMonsterGroup_GenId_3 = 2001389
local nMonsterGroup_4 = 900134 --哈蒙
local nMonsterGroup_GenId_4 = 2001390

----------------Monster-------------
local nMonster_1 = 9001026     --该隐
local nMonster_2 = 9001027     --罗丝
local nMonster_3 = 9001028     --爱琳娜
local nMonster_4 = 9001029     --哈蒙

----------------------------------自动寻路坐标点---------------------
local sPos_HeLi = "-74.15,0.96,33.15"           --赫丽
local sPos_XueShuangCao = "-34.62,0.07,7.98"    --血霜草
local sPos_ZhenMin = "-95.28,2.22,24.19"        --受伤的镇民
local sPos_AiLinNa = "-64.55,0.05,21.58"         --爱琳娜
local sPos_HaMeng = "-67.39,0.09,3.61"          --哈蒙
--local sPos_WangGong = "-232.83,36.98,68.11"        --王宫
local sPos_TuoMaSi = "-5.10,1.14,-0.64"                         --托马斯         
local sPos_ZhengWuTing = "-85.19,2.58,26.72"                         --罗兰镇政务厅     

local sPos_TieBiAnDaoFu = "-5.10,1.14,-0.64"  --铁臂安道夫坐标点
local sPos_NuoEr = "-5.10,1.14,-0.64"           --诺尔

local sPos_Arrive = "-70.25,1.00,26.86"           --抵达罗兰镇坐标     
local sPos_HuSongHeLi = "-86.80,0.94,31.47"           --护送赫丽坐标点     
local sPos_HuSongZhenMin = "-70.25,1.00,26.86"           --护送镇民坐标点   
local sPos_TiXingXiMeng = "-95.37,2.22,28.74"           --提醒西蒙坐标点  
local sPos_FuBenMGYZD = "-69.53,0.06,-7.10"           --副本玫瑰园驻地
local sPos_ChuangSong = "-56.72,-0.67,45.81"           --传送阵
local sPos_Task_26 = "-94.38,25.21,67.82"           --讨论下一步计划
local sPos_Task_27 = "1.47,22.67,70.39"           --完成第一次招募
local sPos_Task_19 = "-69.53,0.06,-7.10"           --护送居民回家

 

-----------------------------------其他数据-----------
--副本id，玫瑰驻地
local nCopyMap_Rose = 3021
--使用传送阵任务掩码
local nTransferMask = 1001
--英雄id，爱琳娜
local nHero_Elena = 301
--玫瑰驻地副本BOSS
local nCopyMap_Rose_BOSS = 200067



----******************************引导支线***************************
-------------------------------数据定义------------------------
--任务id
local tGuideBranchTask = {}

--符文镶嵌
tGuideBranchTask.RuneMosaic = 70072
--PVP引导支线
tGuideBranchTask.PVP = 70218


--对白id
local tGuideBranchDialogId = {}

--符文镶嵌
tGuideBranchDialogId.RuneMosaic = 11968
--PVP
tGuideBranchDialogId.PVP = 11970
----******************************逻辑***************************
--进入探索层时动态创建赫丽
function MainTask_LuoLanZhenMainTask_CreatNpc()
    --寻找大卫任务前创建赫丽
    if not rwTaskIsSuccess(tLuoLanZhen.Task_11) then
        if not rwHasGenEvent(nNpcmap_HeiLi_GenId) then
            rwAddGenEvent(nNpcmap_HeiLi_GenId)
        end
    end

    --解救镇民后续一律刷出镇民
    if rwTaskIsSuccess(tLuoLanZhen.Task_7) then
        if not rwHasGenEvent(nNpcmap_ZhenMin_GenId) then
            rwAddGenEvent(nNpcmap_ZhenMin_GenId)
        end
    end
end
--切图后触发
rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
table.insert(rwtSceneLoad_Func[2001],MainTask_LuoLanZhenMainTask_CreatNpc)

--------NPC组----------
--陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {}
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {}
rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_6] = rwtNpcGroup[nTrap_6] or {}
rwtNpcGroup[nTrap_6]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_7] = rwtNpcGroup[nTrap_7] or {}
rwtNpcGroup[nTrap_7]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_8] = rwtNpcGroup[nTrap_8] or {}
rwtNpcGroup[nTrap_8]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_9] = rwtNpcGroup[nTrap_9] or {}
rwtNpcGroup[nTrap_9]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_10] = rwtNpcGroup[nTrap_10] or {}
rwtNpcGroup[nTrap_10]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_11] = rwtNpcGroup[nTrap_11] or {}
rwtNpcGroup[nTrap_11]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_12] = rwtNpcGroup[nTrap_12] or {}
rwtNpcGroup[nTrap_12]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_13] = rwtNpcGroup[nTrap_13] or {}
rwtNpcGroup[nTrap_13]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_14] = rwtNpcGroup[nTrap_14] or {}
rwtNpcGroup[nTrap_14]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_15] = rwtNpcGroup[nTrap_15] or {}
rwtNpcGroup[nTrap_15]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_16] = rwtNpcGroup[nTrap_16] or {}
rwtNpcGroup[nTrap_16]["Type"] = CONST_NPCGROUP_TYPE.Trap
--NPC
rwtNpcGroup[nNpcmap_HeiLi] = {}     --赫丽
rwtNpcGroup[nNpcmap_HeiLi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_HeiLi]["NpcId"]= nNPC_HeLi

rwtNpcGroup[nNpcmap_MaiTi] = {}     --麦提
rwtNpcGroup[nNpcmap_MaiTi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_MaiTi]["NpcId"]= nNPC_MaiTi

rwtNpcGroup[nNpcmap_AiLinNa] = {}     --爱琳娜
rwtNpcGroup[nNpcmap_AiLinNa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_AiLinNa]["NpcId"]= nNPC_AiLinNa

rwtNpcGroup[nNpcmap_ZhenMin] = {}     --镇民
rwtNpcGroup[nNpcmap_ZhenMin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_ZhenMin]["NpcId"]= nNPC_ZhenMin
rwtNpcGroup[nNpcmap_ZhenMinDebuff] = {}     --镇民(救治前)
rwtNpcGroup[nNpcmap_ZhenMinDebuff]["Type"] = CONST_NPCGROUP_TYPE.Collect
-- rwtNpcGroup[nNpcmap_ZhenMinDebuff]["DialogId"]= nDialog_Task_NewAdd5

rwtNpcGroup[nNpcmap_GaiYin] = {}     --该隐
rwtNpcGroup[nNpcmap_GaiYin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_GaiYin]["NpcId"]= nNPC_GaiYin

rwtNpcGroup[nNpcmap_BeiLa] = {}     --贝拉
rwtNpcGroup[nNpcmap_BeiLa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_BeiLa]["NpcId"]= nNPC_BeiLa

rwtNpcGroup[nNpcmap_ZhenMin1] = {}     --镇民1
rwtNpcGroup[nNpcmap_ZhenMin1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_ZhenMin1]["NpcId"]= nNPC_ZhenMin1

rwtNpcGroup[nNpcmap_ZhenMin2] = {}     --镇民2
rwtNpcGroup[nNpcmap_ZhenMin2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_ZhenMin2]["NpcId"]= nNPC_ZhenMin2


--采集物
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}     --血霜草
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["DialogId"] = nDialog_Task4

--佣兵任务NPC
--公会办事员
rwtNpcGroup[nNpcGroup_Clerk] = rwtNpcGroup[nNpcGroup_Clerk] or {}
rwtNpcGroup[nNpcGroup_Clerk]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Clerk]["NpcId"]= nNpc_Clerk
--小女孩
rwtNpcGroup[nNpcGroup_Girl] = rwtNpcGroup[nNpcGroup_Girl] or {}
rwtNpcGroup[nNpcGroup_Girl]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Girl]["NpcId"]= nNpc_Girl
--尤儿
rwtNpcGroup[nNpcGroup_YouEr] = rwtNpcGroup[nNpcGroup_YouEr] or {}
rwtNpcGroup[nNpcGroup_YouEr]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_YouEr]["NpcId"]= nNpc_YouEr
--康奎斯特
rwtNpcGroup[nNpcGroup_Conquest] = rwtNpcGroup[nNpcGroup_Conquest] or {}
rwtNpcGroup[nNpcGroup_Conquest]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Conquest]["NpcId"]= nNpc_Conquest

-----闲聊NPC
--艾德蒙
rwtNpcGroup[nNpcGroup_AiDeMeng] = rwtNpcGroup[nNpcGroup_AiDeMeng] or {}
rwtNpcGroup[nNpcGroup_AiDeMeng]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_AiDeMeng]["NpcId"]= nNpc_AiDeMeng
--老乞丐查理
rwtNpcGroup[nNpcGroup_ChaLi] = rwtNpcGroup[nNpcGroup_ChaLi] or {}
rwtNpcGroup[nNpcGroup_ChaLi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ChaLi]["NpcId"]= nNpc_ChaLi
---------建筑
rwtNpcGroup[nNpcBuild_Office] = rwtNpcGroup[nNpcBuild_Office] or {}     --罗兰镇政务厅
rwtNpcGroup[nNpcBuild_Office]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcBuild_Office]["NpcId1"] = nNPC_DaWei


--------NPC----------
--赫丽
rwtNpc[nNPC_HeLi] = rwtNpc[nNPC_HeLi] or {}
rwtNpc[nNPC_HeLi]["DialogId"] = {1108,1109,1110}
--大卫
rwtNpc[nNPC_DaWei] = rwtNpc[nNPC_DaWei] or {}
rwtNpc[nNPC_DaWei]["DialogId"] = {1092,1093,1094}
--麦提
rwtNpc[nNPC_MaiTi] = rwtNpc[nNPC_MaiTi] or {}
rwtNpc[nNPC_MaiTi]["DialogId"] = {1114,1115,1116}
--镇民
rwtNpc[nNPC_ZhenMin] = rwtNpc[nNPC_ZhenMin] or {}
rwtNpc[nNPC_ZhenMin]["DialogId"] = {1111,1112,1113}
--爱琳娜
rwtNpc[nNPC_AiLinNa] = rwtNpc[nNPC_AiLinNa] or {}
rwtNpc[nNPC_AiLinNa]["DialogId"] = {1117,1118,1119}
--该隐
rwtNpc[nNPC_GaiYin] = rwtNpc[nNPC_GaiYin] or {}
rwtNpc[nNPC_GaiYin]["DialogId"] = 1138
--贝拉
rwtNpc[nNPC_BeiLa] = rwtNpc[nNPC_BeiLa] or {}
rwtNpc[nNPC_BeiLa]["DialogId"] = 1155


-------佣兵任务NPC---------
--公会办事员
rwtNpc[nNpc_Clerk] = rwtNpc[nNpc_Clerk] or {}
rwtNpc[nNpc_Clerk]["DialogId"] = {1043,1044,1045}
--小女孩
rwtNpc[nNpc_Girl] = rwtNpc[nNpc_Girl] or {}

--尤儿
rwtNpc[nNpc_YouEr] = rwtNpc[nNpc_YouEr] or {}

--康奎斯特
rwtNpc[nNpc_Conquest] = rwtNpc[nNpc_Conquest] or {} 

--------闲聊NPC-------
--艾德蒙
rwtNpc[nNpc_AiDeMeng] = rwtNpc[nNpc_AiDeMeng] or {}
rwtNpc[nNpc_AiDeMeng]["DialogId"] = {1067,1068,1069}
--老乞丐查理
rwtNpc[nNpc_ChaLi] = rwtNpc[nNpc_ChaLi] or {} 
rwtNpc[nNpc_ChaLi]["DialogId"] = {1073,1074,1075}
------***************************任务***************************----
-----------------------------------------罗兰镇在哭泣---------------------------------
--击退怪家伙
rwtTask[tLuoLanZhen.Task_1] = {}
rwtTask[tLuoLanZhen.Task_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20243]
rwtTask[tLuoLanZhen.Task_1]["PreTaskId"] = tLuoLanZhen.PreTask
rwtTask[tLuoLanZhen.Task_1]["NextTaskId"] = tLuoLanZhen.Task_2
rwtTask[tLuoLanZhen.Task_1]["AcceptExtraTaskId"] = tBranchTask.JiuWeiBiShi
rwtTask[tLuoLanZhen.Task_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_1]["DialogId"] = nDialog_Task1
rwtTask[tLuoLanZhen.Task_1]["ReqTrap1"] = nTrap_1
rwtTask[tLuoLanZhen.Task_1]["IsClickComplete"] = 0

rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  
rwtTask[tLuoLanZhen.Task_1]["UnlockHeadIcon"] = {}
rwtTask[tLuoLanZhen.Task_1]["UnlockHeadIcon"][1] = {}
rwtTask[tLuoLanZhen.Task_1]["UnlockHeadIcon"][1]["HeadIconId"] = 10158 --夜崎隐趣味头像解锁
rwtTask[tLuoLanZhen.Task_1]["UnlockHeadIcon"][1]["RecordId"] = 11
rwtTask[tLuoLanZhen.Task_1]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000035
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_1


-----------------------------------------紧急救援---------------------------------
--**（新增任务）继续前往罗兰镇
rwtTask[tLuoLanZhen.Task_2] = {}
rwtTask[tLuoLanZhen.Task_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20244]
rwtTask[tLuoLanZhen.Task_2]["PreTaskId"] = tLuoLanZhen.Task_1
rwtTask[tLuoLanZhen.Task_2]["NextTaskId"] = tLuoLanZhen.Task_3
rwtTask[tLuoLanZhen.Task_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_2]["DialogId"] = nDialog_Task_NewAdd1

rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_1


rwtTask[tLuoLanZhen.Task_2]["ReqTrap1"] = nTrap_1

--了解镇上的事情
rwtTask[tLuoLanZhen.Task_3] = {}
rwtTask[tLuoLanZhen.Task_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20245]
rwtTask[tLuoLanZhen.Task_3]["PreTaskId"] = tLuoLanZhen.Task_2
rwtTask[tLuoLanZhen.Task_3]["NextTaskId"] = tLuoLanZhen.Task_4
rwtTask[tLuoLanZhen.Task_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_3]["DialogId"] = nDialog_Task2
rwtTask[tLuoLanZhen.Task_3]["ReqTrap1"] = nTrap_2

rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_2

rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--解锁商城和首冲
rwtTask[tLuoLanZhen.Task_3]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.SHOP} --商城，首冲


--了解镇上的事情
rwtTask[tLuoLanZhen.Task_4] = {}
rwtTask[tLuoLanZhen.Task_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20246]
rwtTask[tLuoLanZhen.Task_4]["PreTaskId"] = tLuoLanZhen.Task_3
rwtTask[tLuoLanZhen.Task_4]["NextTaskId"] = tLuoLanZhen.Task_5
rwtTask[tLuoLanZhen.Task_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_4]["DialogId"] = nDialog_Task3
rwtTask[tLuoLanZhen.Task_4]["TaskNpc"] = nNPC_HeLi

rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_HeiLi
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayGenId"] = nNpcmap_HeiLi_GenId

--采集血霜草（0/10）
rwtTask[tLuoLanZhen.Task_5] = {}
rwtTask[tLuoLanZhen.Task_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20247]
rwtTask[tLuoLanZhen.Task_5]["PreTaskId"] = tLuoLanZhen.Task_4
rwtTask[tLuoLanZhen.Task_5]["NextTaskId"] = tLuoLanZhen.Task_6
rwtTask[tLuoLanZhen.Task_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT

rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_1
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhen.Task_5]["ReqCollectId1"] = nCollect_1
rwtTask[tLuoLanZhen.Task_5]["ReqCollectCount1"] = 3
rwtTask[tLuoLanZhen.Task_5]["ReqCollectOnceNum"] = 3
rwtTask[tLuoLanZhen.Task_5]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1]["UserMsg"] = {}  
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2  
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10010]
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1

rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayPos"] = sPos_XueShuangCao

--**（新增任务）去找少女
rwtTask[tLuoLanZhen.Task_6] = {}
rwtTask[tLuoLanZhen.Task_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20248]
rwtTask[tLuoLanZhen.Task_6]["PreTaskId"] = tLuoLanZhen.Task_5
rwtTask[tLuoLanZhen.Task_6]["NextTaskId"] = tLuoLanZhen.Task_7
rwtTask[tLuoLanZhen.Task_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_6]["DialogId"] = nDialog_Task_NewAdd2
rwtTask[tLuoLanZhen.Task_6]["TaskNpc"] = nNPC_HeLi

rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_HeiLi
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayGenId"] = nNpcmap_HeiLi_GenId

--救助伤员（0/1）
rwtTask[tLuoLanZhen.Task_7] = {}
rwtTask[tLuoLanZhen.Task_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20249]
rwtTask[tLuoLanZhen.Task_7]["PreTaskId"] = tLuoLanZhen.Task_6
rwtTask[tLuoLanZhen.Task_7]["NextTaskId"] = tLuoLanZhen.Task_8
rwtTask[tLuoLanZhen.Task_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tLuoLanZhen.Task_7]["ReqCollectId1"] = nNpcmap_ZhenMinDebuff
rwtTask[tLuoLanZhen.Task_7]["ReqTrap1"] = nTrap_15
rwtTask[tLuoLanZhen.Task_7]["DialogId"] = nDialog_Task5

rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayGroupId"] = nTrap_15
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_15
-- rwtTask[tLuoLanZhen.Task_7]["IsClickComplete"] = 1
rwtTask[tLuoLanZhen.Task_7]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.STRENGTH_EQUIP} -- 装备强化
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_15
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhen.Task_7]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_7]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_7]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_7]["Awards"]["Events"][1]["DynCreate"] = {nNpcmap_ZhenMin_GenId}

--提醒西蒙
rwtTask[tLuoLanZhen.Task_8] = {}
rwtTask[tLuoLanZhen.Task_8]["Title"]= tLuaText[LANGUAGE_CONFIG][21136]
rwtTask[tLuoLanZhen.Task_8]["PreTaskId"] = tLuoLanZhen.Task_7
rwtTask[tLuoLanZhen.Task_8]["NextTaskId"] = tLuoLanZhen.Task_11
rwtTask[tLuoLanZhen.Task_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
-- rwtTask[tLuoLanZhen.Task_8]["AutoTaskDialog" ]= nDialog_Task6
rwtTask[tLuoLanZhen.Task_8]["DialogId"]= nDialog_Task6
rwtTask[tLuoLanZhen.Task_8]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000036
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_8

 --玩家经验
-------------------------------------------名侦探镇长大卫---------------------------------

--解读《罗兰颂歌》
rwtTask[tLuoLanZhen.Task_11] = {}
rwtTask[tLuoLanZhen.Task_11]["Title"] = tLuaText[LANGUAGE_CONFIG][20251]
rwtTask[tLuoLanZhen.Task_11]["PreTaskId"] = tLuoLanZhen.Task_8
rwtTask[tLuoLanZhen.Task_11]["NextTaskId"] = tLuoLanZhen.Task_9
rwtTask[tLuoLanZhen.Task_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_11]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_11]["DialogId"] = nDialog_Task9
rwtTask[tLuoLanZhen.Task_11]["TaskNpc"] = nNPC_DaWei
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayPos"] = sPos_ZhengWuTing


rwtTask[tLuoLanZhen.Task_11]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["DynDelete"] = {nNpcmap_HeiLi_GenId}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000037
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_11

----------------------------------------赏金猎人出击---------------------------------
--取回资料
rwtTask[tLuoLanZhen.Task_9] = {}
rwtTask[tLuoLanZhen.Task_9]["Title"] = tLuaText[LANGUAGE_CONFIG][20250]
rwtTask[tLuoLanZhen.Task_9]["PreTaskId"] = tLuoLanZhen.Task_11
rwtTask[tLuoLanZhen.Task_9]["NextTaskId"] = tLuoLanZhen.Task_10
rwtTask[tLuoLanZhen.Task_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_9]["DialogId"] = nDialog_Task7
rwtTask[tLuoLanZhen.Task_9]["ReqTrap1"] = nTrap_8

rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_8
rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayGroupId"] = nTrap_8
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_8

rwtTask[tLuoLanZhen.Task_9]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.HERO_LOTTERY,CONST_SYSTEM_FUNCTION.UP_STAR_PET} --抽卡
rwtTask[tLuoLanZhen.Task_9]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_9]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_9]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000050
rwtTask[tLuoLanZhen.Task_9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_9

--“大姐头”登场

rwtTask[tLuoLanZhen.Task_10] = {}
rwtTask[tLuoLanZhen.Task_10]["Title"] = tLuaText[LANGUAGE_CONFIG][20250]
rwtTask[tLuoLanZhen.Task_10]["PreTaskId"] = tLuoLanZhen.Task_9
rwtTask[tLuoLanZhen.Task_10]["NextTaskId"] = tLuoLanZhen.Task_17
rwtTask[tLuoLanZhen.Task_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tLuoLanZhen.Task_10]["DialogId"] = nDialog_Task10
-- rwtTask[tLuoLanZhen.Task_10]["AutoTaskDialog" ]= nDialog_Task10







----------------------------------------玫瑰团的叫嚣---------------------------------
--抓住强盗贝拉
-- rwtTask[tLuoLanZhen.Task_12] = {}
-- rwtTask[tLuoLanZhen.Task_12]["Title"] = tLuaText[LANGUAGE_CONFIG][20252]
-- rwtTask[tLuoLanZhen.Task_12]["PreTaskId"] = tLuoLanZhen.Task_10
-- rwtTask[tLuoLanZhen.Task_12]["NextTaskId"] = tLuoLanZhen.Task_13
-- rwtTask[tLuoLanZhen.Task_12]["DialogId"] = nDialog_Task10

-- rwtTask[tLuoLanZhen.Task_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC

-- rwtTask[tLuoLanZhen.Task_12]["IsClickComplete"] = 0
-- rwtTask[tLuoLanZhen.Task_12]["TaskNpc"] = nNPC_MaiTi

-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_2
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][2] = {}
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][2]["GenId"] = nNpcmap_BeiLa_GenId
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][2]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel 

-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][3] = {}
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][3]["GenId"] = nNpcmap_ZhenMin1_GenId
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][3]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel 

-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][4] = {}
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][4]["GenId"] = nNpcmap_ZhenMin2_GenId
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][4]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel  

-- rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_MaiTi
-- rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"]["FindWayGenId"] = nNpcmap_MaiTi_GenId

-- rwtTask[tLuoLanZhen.Task_12]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_12]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_12]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_12]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_12]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_12]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000038
-- rwtTask[tLuoLanZhen.Task_12]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_12]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_12

----------------------------------------玫瑰团的叫嚣---------------------------------
-------------------------------------------温丽的天才计划---------------------------------
--天衣无缝的计划
-- rwtTask[tLuoLanZhen.Task_13] = {}
-- rwtTask[tLuoLanZhen.Task_13]["Title"] = tLuaText[LANGUAGE_CONFIG][20253]
-- rwtTask[tLuoLanZhen.Task_13]["PreTaskId"] = tLuoLanZhen.Task_12
-- rwtTask[tLuoLanZhen.Task_13]["NextTaskId"] = tLuoLanZhen.Task_17
-- rwtTask[tLuoLanZhen.Task_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
-- rwtTask[tLuoLanZhen.Task_13]["DialogId"] = nDialog_Task11

-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][1]["GenId"] = nNpcmap_BeiLa_GenId
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][2] = {}
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][2]["GenId"] = nNpcmap_ZhenMin1_GenId
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][2]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][3] = {}
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][3]["GenId"] = nNpcmap_ZhenMin2_GenId
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][3]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

-- rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_BeiLa
-- rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"]["FindWayGenId"] = nNpcmap_BeiLa_GenId

-- rwtTask[tLuoLanZhen.Task_13]["TaskNpc"] = nNPC_BeiLa

--击败不速之客
-- rwtTask[tLuoLanZhen.Task_14] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Title"] =tLuaText[LANGUAGE_CONFIG][20254]
-- rwtTask[tLuoLanZhen.Task_14]["PreTaskId"] = tLuoLanZhen.Task_13
-- rwtTask[tLuoLanZhen.Task_14]["NextTaskId"] = tLuoLanZhen.Task_16
-- rwtTask[tLuoLanZhen.Task_14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
-- rwtTask[tLuoLanZhen.Task_14]["DialogId"] = nDialog_Task12
-- rwtTask[tLuoLanZhen.Task_14]["ReqTrap1"] = nTrap_6

-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_6
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success 

-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][2] = {}
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_3
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][2]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Success 

-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][3] = {}
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][3]["GenId"] = nNpcmap_ZhenMin1_GenId
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][3]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Success 

-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][4] = {}
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][4]["GenId"] = nNpcmap_ZhenMin2_GenId
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][4]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  

-- rwtTask[tLuoLanZhen.Task_14]["MonsterGroupGenId"] = nMonsterGroup_GenId_3
-- rwtTask[tLuoLanZhen.Task_14]["IsClickComplete"] = 0
-- rwtTask[tLuoLanZhen.Task_14]["CheckBattleFail"] = 1
-- rwtTask[tLuoLanZhen.Task_14]["FailNextTaskId"] = tLuoLanZhen.Task_16

-- rwtTask[tLuoLanZhen.Task_14]["KillMonsterGroup1" ]= nMonsterGroup_3

-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayTypeId"] = 2
-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_3
-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_3

-- rwtTask[tLuoLanZhen.Task_14]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000039
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_14

-- rwtTask[tLuoLanZhen.Task_14] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Title"] =tLuaText[LANGUAGE_CONFIG][20254]
-- rwtTask[tLuoLanZhen.Task_14]["PreTaskId"] = tLuoLanZhen.Task_13
-- rwtTask[tLuoLanZhen.Task_14]["NextTaskId"] = tLuoLanZhen.Task_17
-- rwtTask[tLuoLanZhen.Task_14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
-- rwtTask[tLuoLanZhen.Task_14]["DialogId"] = nDialog_Task12
-- rwtTask[tLuoLanZhen.Task_14]["ReqTrap1"] = nTrap_16

-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_16
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayGroupId"] = nTrap_16
-- rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_16


-- rwtTask[tLuoLanZhen.Task_14]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000039
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_14]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_14

--押送贝拉（战斗失败）
-- rwtTask[tLuoLanZhen.Task_15] = {}
-- rwtTask[tLuoLanZhen.Task_15]["Title"] = tLuaText[LANGUAGE_CONFIG][20255]
-- rwtTask[tLuoLanZhen.Task_15]["NextTaskId"] = tLuoLanZhen.Task_16
-- rwtTask[tLuoLanZhen.Task_15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tLuoLanZhen.Task_15]["DialogId"] = nDialog_Task_NewAdd3
-- rwtTask[tLuoLanZhen.Task_15]["ReqTrap1"] = nTrap_6


-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_6
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][2] = {}
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_3
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][2]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][3] = {}
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][3]["GenId"] = nNpcmap_ZhenMin1_GenId
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][3]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][4] = {}
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][4]["GenId"] = nNpcmap_ZhenMin2_GenId
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][4]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_15]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  

-- rwtTask[tLuoLanZhen.Task_15]["IsClickComplete"] = 0

-- rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_AiLinNa
-- rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"]["FindWayGenId"] = nNpcmap_AiLinNa_GenId_1

-- rwtTask[tLuoLanZhen.Task_15]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_15]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_15]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_15]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_15]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_15]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000039
-- rwtTask[tLuoLanZhen.Task_15]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_15]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_15


-------------------------------------------赏金猎人出击---------------------------------
--追击逃跑的贝拉
-- rwtTask[tLuoLanZhen.Task_16] = {}
-- rwtTask[tLuoLanZhen.Task_16]["Title"] = tLuaText[LANGUAGE_CONFIG][20256]
-- rwtTask[tLuoLanZhen.Task_16]["NextTaskId"] = tLuoLanZhen.Task_17
-- rwtTask[tLuoLanZhen.Task_16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
-- rwtTask[tLuoLanZhen.Task_16]["DialogId"] = nDialog_Task13
-- rwtTask[tLuoLanZhen.Task_16]["TaskNpc"] = nNPC_AiLinNa

-- rwtTask[tLuoLanZhen.Task_16]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_16]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tLuoLanZhen.Task_16]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_16]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_AiLinNa
-- rwtTask[tLuoLanZhen.Task_16]["StartAutoWay"]["FindWayGenId"] = nNpcmap_AiLinNa_GenId_1

-- rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][1]["GenId"] = nNpcmap_AiLinNa_GenId_1
-- rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

--击退哈蒙
rwtTask[tLuoLanZhen.Task_17] = {}
rwtTask[tLuoLanZhen.Task_17]["Title"] = tLuaText[LANGUAGE_CONFIG][20257]
rwtTask[tLuoLanZhen.Task_17]["PreTaskId"] = tLuoLanZhen.Task_10
rwtTask[tLuoLanZhen.Task_17]["NextTaskId"] = tLuoLanZhen.Task_18

rwtTask[tLuoLanZhen.Task_17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_17]["DialogId"] = nDialog_Task14
rwtTask[tLuoLanZhen.Task_17]["ReqTrap1"] = nTrap_14

rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_14
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][2] = {}
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_4
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  

rwtTask[tLuoLanZhen.Task_17]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_17]["UnlockCopyMap1"] = 3021
rwtTask[tLuoLanZhen.Task_17]["UnlockCopyMap2"] = 3029

rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_4
rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_4

rwtTask[tLuoLanZhen.Task_17]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000040
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_17

---------------------------------------勇闯盗贼营地---------------------------------
--解救镇民
rwtTask[tLuoLanZhen.Task_18] = {}
rwtTask[tLuoLanZhen.Task_18]["Title"] = tLuaText[LANGUAGE_CONFIG][20258]
rwtTask[tLuoLanZhen.Task_18]["PreTaskId"] = tLuoLanZhen.Task_17
rwtTask[tLuoLanZhen.Task_18]["NextTaskId"] = tLuoLanZhen.Task_19
rwtTask[tLuoLanZhen.Task_18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tLuoLanZhen.Task_18]["OpenCopyMap"] = 3021
rwtTask[tLuoLanZhen.Task_18]["IsClickComplete"] = 1
rwtTask[tLuoLanZhen.Task_18]["PassCopyMap1"] = nCopyMap_Rose
rwtTask[tLuoLanZhen.Task_18]["PassCopyMapCount1"] = 1

rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayPos"] = sPos_FuBenMGYZD

rwtTask[tLuoLanZhen.Task_18]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000041
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_18
rwtTask[tLuoLanZhen.Task_18]["AwardFunc"] = function ()

	rwUnlockTrain(4)

end

---------------------------------------凯旋而归---------------------------------
--护送居民回家
rwtTask[tLuoLanZhen.Task_19] = {}
rwtTask[tLuoLanZhen.Task_19]["Title"] = tLuaText[LANGUAGE_CONFIG][20259]
rwtTask[tLuoLanZhen.Task_19]["PreTaskId"] = tLuoLanZhen.Task_18
rwtTask[tLuoLanZhen.Task_19]["NextTaskId"] = tLuoLanZhen.Task_22
rwtTask[tLuoLanZhen.Task_19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_19]["DialogId"] = nDialog_Task16
rwtTask[tLuoLanZhen.Task_19]["ReqTrap1"] = nTrap_7

rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayPos"] = sPos_Task_19



rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_7
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhen.Task_19]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000049
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_19


--护送居民回家
-- rwtTask[tLuoLanZhen.Task_20] = {}
-- rwtTask[tLuoLanZhen.Task_20]["Title"] = tLuaText[LANGUAGE_CONFIG][20260]
-- rwtTask[tLuoLanZhen.Task_20]["PreTaskId"] = tLuoLanZhen.Task_19
-- rwtTask[tLuoLanZhen.Task_20]["NextTaskId"] = tLuoLanZhen.Task_22
-- rwtTask[tLuoLanZhen.Task_20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
-- rwtTask[tLuoLanZhen.Task_20]["DialogId"] = nDialog_Task17
-- rwtTask[tLuoLanZhen.Task_20]["ReqTrap1"] = nTrap_8


-- rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_8
-- rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  

-- rwtTask[tLuoLanZhen.Task_20]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_20]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tLuoLanZhen.Task_20]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_20]["StartAutoWay"]["FindWayPos"] = sPos_HuSongZhenMin

-- rwtTask[tLuoLanZhen.Task_20]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_20]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_20]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_20]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_20]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_20]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000049
-- rwtTask[tLuoLanZhen.Task_20]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_20]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_20

--完成一次装备强化
-- rwtTask[tLuoLanZhen.Task_21] = {}
-- rwtTask[tLuoLanZhen.Task_21]["Title"] = tLuaText[LANGUAGE_CONFIG][20261]
-- rwtTask[tLuoLanZhen.Task_21]["PreTaskId"] = tLuoLanZhen.Task_20
-- rwtTask[tLuoLanZhen.Task_21]["NextTaskId"] = tLuoLanZhen.Task_22
-- rwtTask[tLuoLanZhen.Task_21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
-- rwtTask[tLuoLanZhen.Task_21]["IsClickComplete"] = 0
-- rwtTask[tLuoLanZhen.Task_21]["DialogId"] = nDialog_Task18
-- rwtTask[tLuoLanZhen.Task_21]["TaskNpc"] = nNPC_DaWei
-- rwtTask[tLuoLanZhen.Task_21]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.STRENGTH_EQUIP} -- 装备强化

-- rwtTask[tLuoLanZhen.Task_21]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_21]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tLuoLanZhen.Task_21]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_21]["StartAutoWay"]["FindWayPos"] = sPos_ZhengWuTing

-- rwtTask[tLuoLanZhen.Task_21]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_21]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_21]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_21]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_21]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_21]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000042
-- rwtTask[tLuoLanZhen.Task_21]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_21]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_21
---------------------------------------失之交臂---------------------------------
--向大卫询问线索
rwtTask[tLuoLanZhen.Task_22] = {}
rwtTask[tLuoLanZhen.Task_22]["Title"] = tLuaText[LANGUAGE_CONFIG][20262]
rwtTask[tLuoLanZhen.Task_22]["PreTaskId"] = tLuoLanZhen.Task_19
rwtTask[tLuoLanZhen.Task_22]["NextTaskId"] = tLuoLanZhen.Task_24
rwtTask[tLuoLanZhen.Task_22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_22]["AcceptExtraTaskId"] = tBranchTask.Task2
rwtTask[tLuoLanZhen.Task_22]["DialogId"] = nDialog_Task19
rwtTask[tLuoLanZhen.Task_22]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_22]["TaskNpc"] = nNPC_DaWei
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayPos"] = sPos_ZhengWuTing


rwtTask[tLuoLanZhen.Task_22]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000043
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_22
rwtTask[tLuoLanZhen.Task_22]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.FRIEND} --解锁好友功能

--好友引导支线
rwtTask[tBranchTask.Task2] = {}
rwtTask[tBranchTask.Task2]["Title"]= tLuaText[LANGUAGE_CONFIG][21466]
rwtTask[tBranchTask.Task2]["PreTaskId"] = tLuoLanZhen.Task_22
rwtTask[tBranchTask.Task2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBranchTask.Task2]["DialogId" ]= nDialog_2
rwtTask[tBranchTask.Task2]["Awards"] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000262
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.Task2
---------------------------------------星空下的秘密---------------------------------
--爱琳娜的回忆
-- rwtTask[tLuoLanZhen.Task_23] = {}
-- rwtTask[tLuoLanZhen.Task_23]["Title"] = tLuaText[LANGUAGE_CONFIG][20263]
-- rwtTask[tLuoLanZhen.Task_23]["PreTaskId"] = tLuoLanZhen.Task_22
-- rwtTask[tLuoLanZhen.Task_23]["NextTaskId"] = tLuoLanZhen.Task_24
-- rwtTask[tLuoLanZhen.Task_23]["AcceptExtraTaskId"] = 70205
-- rwtTask[tLuoLanZhen.Task_23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tLuoLanZhen.Task_23]["DialogId"] = nDialog_Task21
-- rwtTask[tLuoLanZhen.Task_23]["CloseDialog"] = 0
-- rwtTask[tLuoLanZhen.Task_23]["ReqTrap1"] = nTrap_15
-- rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_15
-- rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  

-- rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"]["FindWayGroupId"] = nTrap_15
-- rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_15

-- rwtTask[tLuoLanZhen.Task_23]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_23]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_23]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_23]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_23]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_23]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000044
-- rwtTask[tLuoLanZhen.Task_23]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_23]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_23
-- rwtTask[tLuoLanZhen.Task_23]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.IMPRESSION} --羁绊

rwtTask[tBranchTask.Task1] = {}
rwtTask[tBranchTask.Task1]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21465]
rwtTask[tBranchTask.Task1]["PreTaskId"] = tBranchTask.PreTask1
rwtTask[tBranchTask.Task1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
-- rwtTask[tBranchTask.Task1]["TaskNpc"] = 301
rwtTask[tBranchTask.Task1]["DialogId"] = nDialog_1
-- rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"] = {}
-- rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"][1]["GenId"] = nNpcmap_AiLinNa_GenId_2
-- rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBranchTask.Task1]["Awards"] = {}
rwtTask[tBranchTask.Task1]["Awards"]["Events"] = {}
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000260
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.Task1

--------------------------------------右相的鼓励---------------------------------
--向诺尔大人汇报   
rwtTask[tLuoLanZhen.Task_24] = {}
rwtTask[tLuoLanZhen.Task_24]["Title"] = tLuaText[LANGUAGE_CONFIG][20264]
rwtTask[tLuoLanZhen.Task_24]["PreTaskId"] = tLuoLanZhen.Task_22
rwtTask[tLuoLanZhen.Task_24]["NextTaskId"] = tLuoLanZhen.Task_25
rwtTask[tLuoLanZhen.Task_24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.USE_TRANFER
rwtTask[tLuoLanZhen.Task_24]["TranFerId"] = CONST_TRANSFER_INDEX.MAINCITY

-- rwtTask[tLuoLanZhen.Task_24]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.HERO_LOTTERY,CONST_SYSTEM_FUNCTION.UP_STAR_PET} -- 英雄功能解锁 本命的功能解锁 本命升星
-- rwtTask[tLuoLanZhen.Task_24]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_24]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_24]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_24]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_24]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_24]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000050
-- rwtTask[tLuoLanZhen.Task_24]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_24]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_24

--向诺尔大人汇报
rwtTask[tLuoLanZhen.Task_25] = {}
rwtTask[tLuoLanZhen.Task_25]["Title"] = tLuaText[LANGUAGE_CONFIG][20265]
rwtTask[tLuoLanZhen.Task_25]["PreTaskId"] = tLuoLanZhen.Task_24
rwtTask[tLuoLanZhen.Task_25]["NextTaskId"] = tLuoLanZhen.Task_26
rwtTask[tLuoLanZhen.Task_25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_25]["DialogId"] = nDialog_Task23
rwtTask[tLuoLanZhen.Task_25]["TaskNpc"] = nNPC_Noel

rwtTask[tLuoLanZhen.Task_25]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_25]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_25]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tLuoLanZhen.Task_25]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_Nuoer
rwtTask[tLuoLanZhen.Task_25]["StartAutoWay"]["FindWayGenId"] = nNpcmap_Nuoer_GenId

rwtTask[tLuoLanZhen.Task_25]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.PVPSORT_RANKING,CONST_SYSTEM_FUNCTION.SYNDICATE} --PVP功能,工会功能


rwtTask[tLuoLanZhen.Task_25]["AcceptExtraTaskId"] = tGuideBranchTask.PVP

rwtTask[tLuoLanZhen.Task_25]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000045
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_25

rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][2] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = 2000050
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_25

--------------------------------------水晶球里的人---------------------------------
--讨论下一步计划
rwtTask[tLuoLanZhen.Task_26] = {}
rwtTask[tLuoLanZhen.Task_26]["Title"] = tLuaText[LANGUAGE_CONFIG][20266]
rwtTask[tLuoLanZhen.Task_26]["PreTaskId"] = tLuoLanZhen.Task_25
rwtTask[tLuoLanZhen.Task_26]["NextTaskId"] = tLuoLanZhen.Task_30
rwtTask[tLuoLanZhen.Task_26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_26]["DialogId"] = nDialog_Task24
rwtTask[tLuoLanZhen.Task_26]["ReqTrap1"] = nTrap_9

rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayGroupId"] = nTrap_9
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_9

rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_9
rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  
rwtTask[tLuoLanZhen.Task_26]["IsClickComplete"] = 0
-- rwtTask[tLuoLanZhen.Task_26]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.HERO_LOTTERY,CONST_SYSTEM_FUNCTION.UP_STAR_PET} -- 英雄功能解锁 本命的功能解锁 本命升星
rwtTask[tLuoLanZhen.Task_26]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000050
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_26

--完成第一次招募
-- rwtTask[tLuoLanZhen.Task_27] = {}
-- rwtTask[tLuoLanZhen.Task_27]["Title"] = tLuaText[LANGUAGE_CONFIG][20267]
-- rwtTask[tLuoLanZhen.Task_27]["PreTaskId"] = tLuoLanZhen.Task_26
-- rwtTask[tLuoLanZhen.Task_27]["NextTaskId"] = tLuoLanZhen.Task_28
-- rwtTask[tLuoLanZhen.Task_27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tLuoLanZhen.Task_27]["DialogId"] = nDialog_Task25

-- rwtTask[tLuoLanZhen.Task_27]["ReqTrap1"] = nTrap_12

-- rwtTask[tLuoLanZhen.Task_27]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_27]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tLuoLanZhen.Task_27]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[tLuoLanZhen.Task_27]["StartAutoWay"]["FindWayPos"] = sPos_Task_27

-- rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_12
-- rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"][1]["MapId"] = 1000
-- rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

-- rwtTask[tLuoLanZhen.Task_27]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.HERO_LOTTERY,CONST_SYSTEM_FUNCTION.UP_STAR_PET} -- 英雄功能解锁 本命的功能解锁 本命升星
-- rwtTask[tLuoLanZhen.Task_27]["IsClickComplete"] = 0

--意想不到的重逢
-- rwtTask[tLuoLanZhen.Task_28] = {}
-- rwtTask[tLuoLanZhen.Task_28]["Title"] = tLuaText[LANGUAGE_CONFIG][20268]
-- rwtTask[tLuoLanZhen.Task_28]["PreTaskId"] = tLuoLanZhen.Task_26
-- rwtTask[tLuoLanZhen.Task_28]["NextTaskId"] = nTaskId_YuCiTongShi
-- rwtTask[tLuoLanZhen.Task_28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tLuoLanZhen.Task_28]["DialogId"] = nDialog_Task_NewAdd4
-- rwtTask[tLuoLanZhen.Task_28]["ReqTrap1"] = nTrap_12

-- rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"] = {}
-- rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_12
-- rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"][1]["MapId"] = 1000
-- rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  

-- rwtTask[tLuoLanZhen.Task_28]["IsClickComplete"] = 0

-- rwtTask[tLuoLanZhen.Task_28]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_28]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_28]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_28]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_28]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_28]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000046
-- rwtTask[tLuoLanZhen.Task_28]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_28]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_28
-----------新增与此同时nTaskId_YuCiTongShi

-- rwtTask[nTaskId_YuCiTongShi] = {}
-- rwtTask[nTaskId_YuCiTongShi]["Title"] = tLuaText[LANGUAGE_CONFIG][20268]
-- rwtTask[nTaskId_YuCiTongShi]["PreTaskId"] = tLuoLanZhen.Task_26
-- rwtTask[nTaskId_YuCiTongShi]["NextTaskId"] = tLuoLanZhen.Task_30
-- rwtTask[nTaskId_YuCiTongShi]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[nTaskId_YuCiTongShi]["DialogId"] = 11996
-- rwtTask[nTaskId_YuCiTongShi]["ReqTrap1"] = nTrap_9

-- rwtTask[nTaskId_YuCiTongShi]["DynaNpcGroupGen"] = {}
-- rwtTask[nTaskId_YuCiTongShi]["DynaNpcGroupGen"][1] = {}
-- rwtTask[nTaskId_YuCiTongShi]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_9
-- rwtTask[nTaskId_YuCiTongShi]["DynaNpcGroupGen"][1]["MapId"] = 1000
-- rwtTask[nTaskId_YuCiTongShi]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  

-- rwtTask[nTaskId_YuCiTongShi]["IsClickComplete"] = 0
-- rwtTask[nTaskId_YuCiTongShi]["StartAutoWay"] = {}
-- rwtTask[nTaskId_YuCiTongShi]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[nTaskId_YuCiTongShi]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[nTaskId_YuCiTongShi]["StartAutoWay"]["FindWayGroupId"] = nTrap_9
-- rwtTask[nTaskId_YuCiTongShi]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_9


-----------

--------------------------------------今天开始当保镖---------------------------------
--接受委托任务
-- rwtTask[tLuoLanZhen.Task_29] = {}
-- rwtTask[tLuoLanZhen.Task_29]["Title"] = tLuaText[LANGUAGE_CONFIG][20269]
-- rwtTask[tLuoLanZhen.Task_29]["PreTaskId"] = nTaskId_YuCiTongShi
-- rwtTask[tLuoLanZhen.Task_29]["NextTaskId"] = tLuoLanZhen.Task_30
-- rwtTask[tLuoLanZhen.Task_29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
-- rwtTask[tLuoLanZhen.Task_29]["DialogId"] = nDialog_Task26
-- rwtTask[tLuoLanZhen.Task_29]["AutoTaskDialog"]= nDialog_Task26

--去自律联盟打听消息
rwtTask[tLuoLanZhen.Task_30] = {}
rwtTask[tLuoLanZhen.Task_30]["Title"] = tLuaText[LANGUAGE_CONFIG][20270]
rwtTask[tLuoLanZhen.Task_30]["PreTaskId"] = tLuoLanZhen.Task_26
rwtTask[tLuoLanZhen.Task_30]["NextTaskId"] = tLuoLanZhen.Task_32
rwtTask[tLuoLanZhen.Task_30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_30]["DialogId"] = nDialog_Task_NewAdd8
rwtTask[tLuoLanZhen.Task_30]["TaskNpc"] = nNPC_TuoMaSi

rwtTask[tLuoLanZhen.Task_30]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_30]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000255
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_30

rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId
rwtTask[tLuoLanZhen.Task_30]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.CREAVE_SKILL_RUNE,CONST_SYSTEM_FUNCTION.DAILY_TASK}  --符文镶嵌,自律联盟

rwtTask[tLuoLanZhen.Task_30]["OpenMercenaryTask"] = {}   --罗兰镇最后一个任务开启佣兵
rwtTask[tLuoLanZhen.Task_30]["OpenMercenaryTask"]["AreaId"] = 2001
rwtTask[tLuoLanZhen.Task_30]["OpenMercenaryTask"]["TownId"] = 200102

rwtTask[tLuoLanZhen.Task_30]["AcceptExtraTaskId"] = {tGuideBranchTask.RuneMosaic,70105}  --支线任务 自律联盟-自律联盟万事通
--rwtTask[tLuoLanZhen.Task_33] = {}
--rwtTask[tLuoLanZhen.Task_33]["Title"]= tLuaText[LANGUAGE_CONFIG][20270]
--rwtTask[tLuoLanZhen.Task_33]["PreTaskId"] = tLuoLanZhen.Task_30
--rwtTask[tLuoLanZhen.Task_33]["NextTaskId"]= tLuoLanZhen.Task_34
--rwtTask[tLuoLanZhen.Task_33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
--rwtTask[tLuoLanZhen.Task_33]["NeedLevel"] = 16
--rwtTask[tLuoLanZhen.Task_33]["LackDialogId"] = 10536
--rwtTask[tLuoLanZhen.Task_33]["DialogId"] = 11438
--rwtTask[tLuoLanZhen.Task_33]["CloseDialog"] = 0

--去自律联盟打听消息
-- rwtTask[tLuoLanZhen.Task_34] = {}
-- rwtTask[tLuoLanZhen.Task_34]["Title"] = tLuaText[LANGUAGE_CONFIG][20270]
-- rwtTask[tLuoLanZhen.Task_34]["PreTaskId"] = tLuoLanZhen.Task_30
-- rwtTask[tLuoLanZhen.Task_34]["NextTaskId"] = tLuoLanZhen.Task_32
-- rwtTask[tLuoLanZhen.Task_34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
-- rwtTask[tLuoLanZhen.Task_34]["DialogId"] = 10539
-- rwtTask[tLuoLanZhen.Task_34]["TaskNpc"] = nNPC_TuoMaSi

-- rwtTask[tLuoLanZhen.Task_34]["IsClickComplete"] = 0

-- rwtTask[tLuoLanZhen.Task_34]["StartAutoWay"] = {}
-- rwtTask[tLuoLanZhen.Task_34]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tLuoLanZhen.Task_34]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[tLuoLanZhen.Task_34]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
-- rwtTask[tLuoLanZhen.Task_34]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId
-- rwtTask[tLuoLanZhen.Task_34]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.DAILY_TASK}  --自律联盟

-- rwtTask[tLuoLanZhen.Task_34]["Awards"] = {}
-- rwtTask[tLuoLanZhen.Task_34]["Awards"]["Events"] = {}
-- rwtTask[tLuoLanZhen.Task_34]["Awards"]["Events"][1] = {}
-- rwtTask[tLuoLanZhen.Task_34]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tLuoLanZhen.Task_34]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tLuoLanZhen.Task_34]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000047
-- rwtTask[tLuoLanZhen.Task_34]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tLuoLanZhen.Task_34]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_34


--------------------------------------出发，最强组合---------------------------------
--爱琳娜的决定
rwtTask[tLuoLanZhen.Task_32] = {}
rwtTask[tLuoLanZhen.Task_32]["Title"] = tLuaText[LANGUAGE_CONFIG][20271]
rwtTask[tLuoLanZhen.Task_32]["PreTaskId"] = tLuoLanZhen.Task_30
rwtTask[tLuoLanZhen.Task_32]["NextTaskId"] = tLuoLanZhen.NextTask
rwtTask[tLuoLanZhen.Task_32]["AcceptExtraTaskId"] = 70205
rwtTask[tLuoLanZhen.Task_32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_32]["DialogId"] = nDialog_Task28
rwtTask[tLuoLanZhen.Task_32]["ReqTrap1"] = nTrap_10
rwtTask[tLuoLanZhen.Task_32]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.IMPRESSION} --羁绊
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_10
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  


rwtTask[tLuoLanZhen.Task_32]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_32]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_32]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tLuoLanZhen.Task_32]["StartAutoWay"]["FindWayGroupId"] = nTrap_10
rwtTask[tLuoLanZhen.Task_32]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_10

rwtTask[tLuoLanZhen.Task_32]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000048
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_32



-------------------------------支线引导任务------------------------

--失败是成功之母
rwtTask[tGuideBranchTask.RuneMosaic] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Title"] = tLuaText[LANGUAGE_CONFIG][21464]
rwtTask[tGuideBranchTask.RuneMosaic]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tGuideBranchTask.RuneMosaic]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tGuideBranchTask.RuneMosaic]["DialogId"] = tGuideBranchDialogId.RuneMosaic
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000263
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tGuideBranchTask.RuneMosaic


 -- 久违的比试
rwtTask[tBranchTask.JiuWeiBiShi] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Title"] = tLuaText[LANGUAGE_CONFIG][21472]
rwtTask[tBranchTask.JiuWeiBiShi]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.JiuWeiBiShi]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBranchTask.JiuWeiBiShi]["IsClickComplete"] = 0
-- rwtTask[tBranchTask.JiuWeiBiShi]["TaskNpc"] = 102
rwtTask[tBranchTask.JiuWeiBiShi]["DialogId"] = 11932
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000259
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.JiuWeiBiShi

--少年的傲气
rwtTask[tGuideBranchTask.PVP] = {}
rwtTask[tGuideBranchTask.PVP]["Title"] = tLuaText[LANGUAGE_CONFIG][21470]
rwtTask[tGuideBranchTask.PVP]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tGuideBranchTask.PVP]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tGuideBranchTask.PVP]["DialogId"] = tGuideBranchDialogId.PVP
rwtTask[tGuideBranchTask.PVP]["Awards"] = {}
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"] = {}
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1] = {}
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000261
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tGuideBranchTask.PVP