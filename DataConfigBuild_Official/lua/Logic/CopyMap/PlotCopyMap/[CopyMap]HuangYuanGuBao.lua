
--副本ID 荒野古堡
local nCopyMapId = 3024


--切换剧情、普通本任务
local nChangeNpcTaskID = 10282
local nNpcGroup_GenId_CopyMap = 3024015






--进入副本NPC   
--genid   3024015
--副本NPC位置：
--新增对白 5219  5220 
--5219费米你在干什么？              --谢谢你们帮我拿到了水晶球

local nDialogId_1 = 5111    --进入副本对白                        --你们轻一点
local nDialogId_2 = 5112    --药剂对白1  加侦查范围
local nDialogId_3 = 5113    --药剂对白2  加攻击
local nDialogId_4 = 5114    --药剂对白3  加移速
local nDialogId_5 = 5115     --女巫大人……就在前面那个房间里。<br>你们等会，一定、绝对、千万不能再惹大人生气！   --大小姐，没想到你的魔法这么厉害
local nDialogId_6 = 5116     --怎么没有人？梅子女巫去哪里了？      --
local nDialogId_7 = 5117     --桌面上发光的圆球……是水晶球么？      --
local nDialogId_8 = 5118     --这个水晶球……似乎和我的想象不一样       --
local nDialogId_9 = 5119     --这个橱柜被锁着，完全打不开                --
local nDialogId_10 = 5120    --唔，魔力来自……这个宝箱！<br>箱子里透出浓郁的魔力气息，水晶球一定在里面。  --
local nDialogId_11 = 5121    --嗯？人类？<br>竟然敢闯进我的古堡来偷东西？真是不知道天高地厚。
local nDialogId_12 = 5122    --不……费米，快躲开！   ---
local nDialogId_13 = 5123    --弥尔！弥尔！你醒醒！！！ --愚蠢，弥尔。你太令我失望了
local nDialogId_14 = 5124    --（弥尔慢慢苏醒过来。）  --
local nDialogId_15 = 5125    --看橱柜                             --嗯...弥尔，这个橱柜后面放了什么？
local CopyHuangYuan_monsterGenId = {
    3024001,3024002,3024003
    }
--1000087  1000089  2018-05-02  副本女巫古堡掉落奖励 

--场景动画
local nStory1 = 15701
local nStory2 = 15702
local nStory3 = 15703
local nStory4 = 15704
local nStory5 = 15705
    
-- local nTimeofRuiYanYaoJi = 0
-- local nTimeofFuShuYaoJi = 0
-------------NPC组----------
--陷阱
--local nTrap_1 = 30192   --第一个药剂
--local nTrap_GenId_1 = 3024005
local nTrap_2 = 30193   --第二个药剂
local nTrap_GenId_2 = 3024006
local nTrap_3 = 30194   --第三个药剂
local nTrap_GenId_3 = 3024007
local nTrap_4 = 30195   --魔法橱柜
local nTrap_GenId_4 = 3024008
local nTrap_5 = 30284   --Boss房间陷阱
local nTrap_GenId_5 = 3024010
local nTrap_6 = 30285   --魔法橱柜2
local nTrap_GenId_6 = 3024011

--箱子 
local nBox_1 = 40044   --魔法橱柜后箱子
local nBox_2 = 40061   --女巫房间箱子
local nBox_3 = 40194   --怪物箱子
--采集NPC
local nCollect_Ball = 60096   --水晶球
--Monster GenID
local nMonster_DaNvWu_GenId = 3024004

--机关数据
--魔法橱柜机关
local nValve_Door = 1029
local nValve_Door_GenId = 3024014



--进入副本NPC
rwtNpcGroup[50022] = {}
rwtNpcGroup[50022]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50022]["UnlockDialog"] = 5238
rwtNpcGroup[50022]["Dialog"] = 5239
rwtNpcGroup[50022]["CopyMapList"] = {nCopyMapId}





local nTarget1 = 60051    
local nTarget1_1 = 60104     --新增的采集水晶球任务
local nTarget1_2 = 60061  --额外加的任务
local nTarget2 = 60052
local nTarget3 = 60053

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 5
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget1_1}
rwtCopyMapMission[nCopyMapId]["Target3"] = {nTarget1_2}
rwtCopyMapMission[nCopyMapId]["Target4"] = {nTarget2}
rwtCopyMapMission[nCopyMapId]["Target5"] = {nTarget3}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_1

--副本任务目标
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20054]
rwtTarget[nTarget1]["ReqTrap"] = 30284
rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget1_1] = {}
rwtTarget[nTarget1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20055]
rwtTarget[nTarget1_1]["ReqCollectId"] = 60096
rwtTarget[nTarget1_1]["ReqCount"] = 1

rwtTarget[nTarget1_2] = {}
rwtTarget[nTarget1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20056]
rwtTarget[nTarget1_2]["ReqTrap"] = 30285
rwtTarget[nTarget1_2]["ReqCount"] = 1

rwtTarget[nTarget2] = {}
rwtTarget[nTarget2]["Title"] = tLuaText[LANGUAGE_CONFIG][20057]
rwtTarget[nTarget2]["ReqTreasureBox"] = 40044
rwtTarget[nTarget2]["ReqCount"] = 1

rwtTarget[nTarget3] = {}
rwtTarget[nTarget3]["Title"] = tLuaText[LANGUAGE_CONFIG][20058]
rwtTarget[nTarget3]["KillMonsterGroup"] = 200191
rwtTarget[nTarget3]["ReqCount"] = 1



--触发药剂
function CopyMap_HuangYuanGuBao_YaoJi(nDrugIndex)
    --rwPrintLog("触发药剂")
    if nDrugIndex == 1 then 
       --rwPrintLog("触发火焰药剂，魔蝠之齿")
       for i = 1, #CopyHuangYuan_monsterGenId do
            if rwHasGenEvent(CopyHuangYuan_monsterGenId[i]) then
                rwMonsterAddStatus(CopyHuangYuan_monsterGenId[i], 1000153, 600004)    --给怪物加伤害
            end
       end
        rwOpenNpcChatDialog(nDialogId_3)
    elseif nDrugIndex == 2 then 
      
	elseif nDrugIndex == 3 then 
		
	end
end
------------采集物---------------
rwtNpcGroup[nCollect_Ball] = rwtNpcGroup[nCollect_Ball] or {}
rwtNpcGroup[nCollect_Ball]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollect_Ball]["EndDialogId"]= nDialogId_8          --采集后对白
--rwtNpcGroup[nCollect_Ball]["AddGen"] = {nTrap_GenId_6}   
rwtNpcGroup[nCollect_Ball]["Awards"] = {}  
rwtNpcGroup[nCollect_Ball]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_Ball]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_Ball]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_Ball]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_8
rwtNpcGroup[nCollect_Ball]["Awards"]["Events"][2] = {} 
rwtNpcGroup[nCollect_Ball]["Awards"]["Events"][2]["DynCreate"] = {nTrap_GenId_6}

------------陷阱-----------------
--第一个药剂
--第二个药剂
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["Awards"] = {}  
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_4
rwtNpcGroup[nTrap_2]["TrapFunc"] = function ()
--腐鼠药剂
      --rwPrintLog("触发疾风药剂，腐鼠之尾")
        for i = 1, #CopyHuangYuan_monsterGenId do
            if rwHasGenEvent(CopyHuangYuan_monsterGenId[i]) then
                rwChangeMonsterRounds(CopyHuangYuan_monsterGenId[i], 0, 100) -- 速度变成2倍 0.5->1
            end
        end
    --触发剧情后删除陷阱
    if rwHasGenEvent(nTrap_GenId_2) then
        rwDelGenEvent(nTrap_GenId_2)
    end
end
--第三个药剂
rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_3]["Awards"] = {}  
rwtNpcGroup[nTrap_3]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_3]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_2
rwtNpcGroup[nTrap_3]["TrapFunc"] = function ()
--鹰眼药剂
    --rwPrintLog("触发锐眼药剂,恶鹰之眼")
        for i = 1, #CopyHuangYuan_monsterGenId do
            if rwHasGenEvent(CopyHuangYuan_monsterGenId[i]) then
                rwChangeMonsterRounds(CopyHuangYuan_monsterGenId[i],0,-1,400,400) -- 视野和战斗触发变成400   初始改300
            end
        end
    --触发剧情后删除陷阱
    if rwHasGenEvent(nTrap_GenId_3) then
        rwDelGenEvent(nTrap_GenId_3)
    end
end
--魔法橱柜
rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {}
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_4]["DelTrap"] = 1
rwtNpcGroup[nTrap_4]["Awards"] = {}  
rwtNpcGroup[nTrap_4]["Awards"]["Events"] = {}    
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= nStory5
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

--boss房间前陷阱
rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {}
rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_5]["DelTrap"] = 1
rwtNpcGroup[nTrap_5]["Awards"] = {}  
rwtNpcGroup[nTrap_5]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= nStory2
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0


--魔法橱柜2对白结束
rwtDialog[nDialogId_9] = rwtDialog[nDialogId_9] or {}
rwtDialog[nDialogId_9]["DialogEndInit"] = {}
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"][1]["OpenVavle"] = {}
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"][1]["OpenVavle"][1] = {}
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"][1]["OpenVavle"][1]["nGenId"] = nValve_Door_GenId
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"] = {}
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = nStory3
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtDialog[nDialogId_9]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0


--魔法橱柜2
rwtNpcGroup[nTrap_6] = rwtNpcGroup[nTrap_6] or {}
rwtNpcGroup[nTrap_6]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_6]["DelTrap"] = 1
rwtNpcGroup[nTrap_6]["Awards"] = {}  
rwtNpcGroup[nTrap_6]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_6]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_6]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_6]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_9

--大女巫现身动画结束函数
function CopyMap_NvWuGuBao_StoryEnd_BossBorn()
     --创建大女巫
    if not rwHasGenEvent(nMonster_DaNvWu_GenId) then
        rwAddGenEvent(nMonster_DaNvWu_GenId)
    end
   --触发战斗
    rwAutoBattle(nMonster_DaNvWu_GenId)
end
rwtCGFinish[15704] = rwtCGFinish[15704] or {}
table.insert(rwtCGFinish[15704],CopyMap_NvWuGuBao_StoryEnd_BossBorn)




--award_id  1000069 ~ 1000071 
rwtNpcGroup[nBox_2] = rwtNpcGroup[nBox_2] or {}  
rwtNpcGroup[nBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_2]["Awards"] = {}
--rwtNpcGroup[nBox_2]["Awards"]["AwardId"] = 1000069
--rwtNpcGroup[nBox_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_2
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000069  

--打开魔法橱柜那边的箱子  无奖励，女巫出现
rwtNpcGroup[nBox_1] = rwtNpcGroup[nBox_1] or {}  
rwtNpcGroup[nBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_1]["Awards"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["UserMsg"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10022]
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["UserMsg"]["GetServerAward"] = 1
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = nStory4
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0

--新增的箱子 杀人蜂箱子
rwtNpcGroup[nBox_3] = rwtNpcGroup[nBox_3] or {}  
rwtNpcGroup[nBox_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_3]["NotDel"] = 1
rwtNpcGroup[nBox_3]["Awards"] = {}
rwtNpcGroup[nBox_3]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_3]["Awards"]["Events"][1]["AutoBattle"]= {}
rwtNpcGroup[nBox_3]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = 3024017



--rwtNpcGroup[nBox_1]["Function"] = function(nGroupType)
--    rwSendSystemMessage("获得巫灵水晶球",2,1)
--    rwPrintLog("打开宝箱")
--     local FinishAward = {}
--    FinishAward["Awards"] = {}
--    --触发大女巫显身并最后触发战斗动画
--    rwStoryTrigger(nStory4,2,0)
--end

rwtItem[7000122] = rwtItem[7000122] or {}
rwtItem[7000122]["Awards"] = {}
rwtItem[7000122]["Awards"]["Events"] = {}
rwtItem[7000122]["Awards"]["Events"][1] = {}
rwtItem[7000122]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[7000122]["Awards"]["Events"][1]["AddState"]["StateID"] = 501001
rwtItem[7000122]["Awards"]["Events"][1]["AddState"]["Times"] = 1
rwtItem[7000122]["Awards"]["Events"][1]["AddState"]["TargetType"] = 1




function CopyMap_HuangYuanGuBao_ShaRenFeng_Death()
    --删除宝箱
    if rwHasGenEvent(3024016) then 
			rwDelGenEvent(3024016)
		end
end

rwtMonsterGroup_Func[200425] = rwtMonsterGroup_Func[200425] or {} --杀人蜂
table.insert(rwtMonsterGroup_Func[200425],CopyMap_HuangYuanGuBao_ShaRenFeng_Death)

--function CopyMap_HuangYuanGuBao_BOSS_Death()
--    --触发超级长动画
--    rwStoryTrigger(nStory1,2,1)
--end

--rwtMonsterGroup_Func[200191] = rwtMonsterGroup_Func[200191] or {} --女巫菲梅
--table.insert(rwtMonsterGroup_Func[200191],CopyMap_HuangYuanGuBao_BOSS_Death)

--进入副本
--function CopyMap_HuangYuanGuBao_InitMap()
--    rwPrintLog("进入副本，开始初始化")
--    rwPrintLog("进入与小女巫的剧情对白") 
--    rwOpenNpcChatDialog(nDialogId_1)
--    rwPrintLog("荒原古堡副本初始化完毕")

--end



----进入荒原古堡触发
--rwtSceneLoad_Func[nCopyMapId] = rwtSceneLoad_Func[nCopyMapId] or {}
--table.insert(rwtSceneLoad_Func[nCopyMapId],CopyMap_HuangYuanGuBao_InitMap)
