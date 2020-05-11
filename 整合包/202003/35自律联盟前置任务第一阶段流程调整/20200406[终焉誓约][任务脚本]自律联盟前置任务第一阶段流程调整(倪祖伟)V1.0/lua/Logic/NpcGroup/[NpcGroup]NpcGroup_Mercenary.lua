--region [NpcGroup]NpcGroup_Mercenary.lua
--Purpose:		自律联盟相关NPC
--Creator: 		余锦鑫
--Created:		2020-02-25
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-04-14 $
--RCS-ID:		$Revision: 8 $
--endregion


------------------------------------------变量定义------------------------------------------
--主线任务id（完成任务后解锁开启自律联盟，并开启所有佣兵任务，包含日常、委托等）
local nTaskId_LMDL_Final = 10270
local nTemp_FirstOpenReward = 1231
local nTask_RewardPre = 70517    --悬赏前置任务

----佣兵公会NPC----
local tNpc_Mercenary = {}
    tNpc_Mercenary[1] = 3005      --铁臂托马斯
    tNpc_Mercenary[2] = 3042      --吉拉（委托任务NPC）
    tNpc_Mercenary[3] = 3043      --伦纳德（每日任务NPC）
    tNpc_Mercenary[4] = 3080      --比多猫
    tNpc_Mercenary[5] = 3101      --艾赛尔

    tNpc_Mercenary[6] = 3460      --自律联盟告示板（可接受悬赏任务）

----佣兵公会NPC组----
local tNpcGroup_Mercenary = {}
    tNpcGroup_Mercenary[1] = 20112    --铁臂托马斯
    tNpcGroup_Mercenary[3] = 20113    --皮尔
    tNpcGroup_Mercenary[2] = 20114    --吉拉（透明）
    tNpcGroup_Mercenary[4] = 20115    --比多猫
    tNpcGroup_Mercenary[5] = 20116    --艾赛尔
    tNpcGroup_Mercenary[6] = 20575    --吉拉

    tNpcGroup_Mercenary[7] = 70011    --自律联盟告示板1000151

----NPC闲聊对白----
--铁臂
local nNpcCharge_Dialog1 = {1007,1008,1009,1010}    --未开启自律联盟
local nNpcCharge_Dialog2 = {1462,1463,1464}    --已开启，悬赏任务中
local nNpcCharge_Dialog3 = {1013,1014}    --悬赏任务全部完成
--伦纳德
local tNpcPiEr_Dialog1 = {1015,1016,1017}    --未开启自律联盟
--local tNpcPiEr_Dialog2 = {1018,1019}    --已开启，日常任务中
--local tNpcPiEr_Dialog3 = {1020,1021}    --今日任务全部完成
--吉拉
local nNpcJiLa_Dialog1 = {1022,1023,1024}    --未开启自律联盟
--local nNpcJiLa_Dialog2 = {1025,1026}    --已开启，委托任务中
--比多猫
local nNpcBiDuoMao_Dialog = {1027,1028,1029,1030,1031}    
--艾赛尔
local nNpcAiSaiEr_Dialog = {1032,1033,1034,1035,1036}

----自律联盟NPC----
--悬赏任务NPC  铁臂安道夫
local tDialog_League = {}


tDialog_League.Andaofu_AllDay_level_1 = {2372}
tDialog_League.Andaofu_AllDay_level_4 = {2373}
tDialog_League.Andaofu_AllDay_level_7 = {2374}
tDialog_League.Andaofu_Egg_level_3 = {2375}
tDialog_League.Andaofu_Egg_level_5 = {2376}
tDialog_League.Andaofu_Egg_level_7 = {2377}

tDialog_League.LunNaDe_AllDay_level_1 = {2380,2381}
tDialog_League.LunNaDe_AllDay_level_2 = {2380}
tDialog_League.LunNaDe_AllDay_level_3 = {2382}
tDialog_League.LunNaDe_AllDay_level_5 = {2382,2384}
tDialog_League.LunNaDe_AllDay_level_6 = {2383}


tDialog_League.JiLa_AllDay_level_1 = {2387}
tDialog_League.JiLa_AllDay_level_3 = {2389}
tDialog_League.JiLa_AllDay_level_6 = {2390}
tDialog_League.JiLa_egg_level_2 = {2391}
tDialog_League.JiLa_egg_level_4 = {2392}
tDialog_League.JiLa_egg_level_6 = {2393}


tDialog_League.BiDuoMao_AllDay_level_1 = {2396}
tDialog_League.BiDuoMao_AllDay_level_5 = {2398}
tDialog_League.BiDuoMao_AllDay_level_7 = {2399}

tDialog_League.AiSaiEr_AllDay_level_1 = {2403}
tDialog_League.AiSaiEr_AllDay_level_5 = {2404}
tDialog_League.AiSaiEr_AllDay_level_8 = {2405}

local tDialog_Food = {}
tDialog_Food.Andao_Zhou2 = {2371}
tDialog_Food.LunNade_All = {2378} 
tDialog_Food.LunNade_Zhou7 = {2379}
tDialog_Food.JiLa_Zhou2 = {2385}
tDialog_Food.JiLa_Zhou3 = {2386}
tDialog_Food.BiDuoMao_Zhou1 = {2394}
tDialog_Food.BiDuoMao_Zhou6 = {2395}
tDialog_Food.AiSaiEr_Zhou3 = {2400} 
tDialog_Food.AiSaiEr_Zhou5 = {2401} 
tDialog_Food.AiSaiEr_Zhou6 = {2402} 

local tEggTempId = {}
tEggTempId.Tuomasi = 1290
tEggTempId.Jila = 1291




------------------------------------------NPC数据配置------------------------------------------
--铁臂托马斯
rwtNpc[tNpc_Mercenary[1]] = rwtNpc[tNpc_Mercenary[1]] or {}
rwtNpc[tNpc_Mercenary[1]]["GenId"] = {2001655,1000252}
rwtNpc[tNpc_Mercenary[1]]["isEggChat"] = 1
rwtNpc[tNpc_Mercenary[1]]["LeagueChatTempDataId"] = tEggTempId.Tuomasi
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"][1]["Level"] = 3
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"][1]["DialogId"] = tDialog_League.Andaofu_Egg_level_3
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"][2]["Level"] = 5
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"][2]["DialogId"] = tDialog_League.Andaofu_Egg_level_5
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"][3]["Level"] = 7
rwtNpc[tNpc_Mercenary[1]]["EggLeagueDialog"][3]["DialogId"] = tDialog_League.Andaofu_Egg_level_7
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][1]["Level"] = 1
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][1]["AllDayDialog"] = tDialog_League.Andaofu_AllDay_level_1
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][2]["Level"] = 4
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][2]["AllDayDialog"] = tDialog_League.Andaofu_AllDay_level_4
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][3]["Level"] = 7
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][3]["AllDayDialog"] = tDialog_League.Andaofu_AllDay_level_7
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"] = {}   --美食闲聊
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][1] = {}
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][1]["WeekDay"] = CONST_FOOD_TIME.Tuesday
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][1]["AllDayDialog"] = tDialog_Food.Andao_Zhou2
rwtNpc[tNpc_Mercenary[1]]["ChkOpen"] = true
rwtNpc[tNpc_Mercenary[1]]["NotOpenDialogId"] = {1007,1008,1009,1010}
rwtNpc[tNpc_Mercenary[1]]["Option"] = {}
rwtNpc[tNpc_Mercenary[1]]["Option"][1] = {}
rwtNpc[tNpc_Mercenary[1]]["Option"][1]["OnlyChkDialog"] = 1
rwtNpc[tNpc_Mercenary[1]]["Option"][1]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
	return true
end
rwtNpc[tNpc_Mercenary[1]]["Option"][2] = {}  --【舌尖上的联盟】接任务按钮
rwtNpc[tNpc_Mercenary[1]]["Option"][2]["Title"]= tLuaText[LANGUAGE_CONFIG][40030] --[40030] ="舌尖上的联盟" ,
rwtNpc[tNpc_Mercenary[1]]["Option"][2]["State"] = 0
rwtNpc[tNpc_Mercenary[1]]["Option"][2]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return rwFoodTask_Random(nNpcId)
end
rwtNpc[tNpc_Mercenary[1]]["Option"][2]["Func"] = function(nNpcTypeId)    
    rwFoodTask_AcceptTaskByUserRecord()  ---根据数据库接取任务
end

--日常任务NPC  伦纳德
rwtNpc[tNpc_Mercenary[3]] = rwtNpc[tNpc_Mercenary[3]] or {}
rwtNpc[tNpc_Mercenary[3]]["ChkOpen"] = true
rwtNpc[tNpc_Mercenary[3]]["NotOpenDialogId"] = {1015,1016,1017}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][1]["Level"] = 1
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][1]["AllDayDialog"] = tDialog_League.LunNaDe_AllDay_level_1
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][2]["Level"] = 2
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][2]["AllDayDialog"] = tDialog_League.LunNaDe_AllDay_level_2
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][3]["Level"] = 3
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][3]["AllDayDialog"] = tDialog_League.LunNaDe_AllDay_level_3
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][4] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][4]["Level"] = 5
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][4]["AllDayDialog"] = tDialog_League.LunNaDe_AllDay_level_5
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][5] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][5]["Level"] = 6
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][5]["AllDayDialog"] = tDialog_League.LunNaDe_AllDay_level_6
rwtNpc[tNpc_Mercenary[3]]["FoodDialog"] = {}  --美食闲聊
rwtNpc[tNpc_Mercenary[3]]["FoodDialog"]["AlwaysDialog"] = tDialog_Food.LunNade_All
rwtNpc[tNpc_Mercenary[3]]["FoodDialog"][1] = {}
rwtNpc[tNpc_Mercenary[3]]["FoodDialog"][1]["WeekDay"] = CONST_FOOD_TIME.Sunday
rwtNpc[tNpc_Mercenary[3]]["FoodDialog"][1]["AllDayDialog"] = tDialog_Food.LunNade_Zhou7
rwtNpc[tNpc_Mercenary[3]]["Option"] = {}
rwtNpc[tNpc_Mercenary[3]]["Option"][1] = {}
rwtNpc[tNpc_Mercenary[3]]["Option"][1]["OnlyChkDialog"] = 1
rwtNpc[tNpc_Mercenary[3]]["Option"][1]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
	return true
end
rwtNpc[tNpc_Mercenary[3]]["Option"][2] = {}  --【一直在的闲聊线索按钮】
rwtNpc[tNpc_Mercenary[3]]["Option"][2]["Title"]= tLuaText[LANGUAGE_CONFIG][40031] --[40031] ="一直在的按钮" ,
rwtNpc[tNpc_Mercenary[3]]["Option"][2]["State"] = 0
rwtNpc[tNpc_Mercenary[3]]["Option"][2]["Chk"] = function(nNpcId)    
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then   --【主线是否完成】
        return false
    end
    --判断
    rwFoodTask_Random(nNpcId)
    --【是否在用餐时间】
     --【检测时间是否对应】
    local nFoodTaskWeek
    local nFoodTaskTime = 0
    nFoodTaskWeek,nFoodTaskTime = rwFoodTask_GetNowTimePart() --获取对应星期 和 餐点
    --判断是否在用餐时间（不在）
    if nFoodTaskTime == 0 then 
      --不在用餐时间
        return false
    end
     --【是否已做完当前时段任务】
    if rwFoodTask_IF_FinshTask() == true then
        --已经完成了当前时段的任务，不显示按钮
        return false
    end
    --【活动人是自己不出按钮】
     --判断玩家是否存在掩码，如无则创建
     local nUserRecordId = 1241
    if not rwTempDataIsExist(nUserRecordId) then
		rwTempDataAdd(nUserRecordId)
	end
    local nFoodNpc = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data4)
    if (nFoodNpc == tNpc_Mercenary[3]) then
        --刚好任务npc是伦纳德
        return false
    end
    return true  --一直出按钮
end
rwtNpc[tNpc_Mercenary[3]]["Option"][2]["Func"] = function(nNpcTypeId)
    ---根据数据库播放对白
    rwFoodTask_LunNaDeDialog()
end

--【舌尖上的联盟】接任务按钮开始
rwtNpc[tNpc_Mercenary[3]]["Option"][3] = {}
rwtNpc[tNpc_Mercenary[3]]["Option"][3]["Title"]= tLuaText[LANGUAGE_CONFIG][40030] --[40030] ="舌尖上的联盟" ,
rwtNpc[tNpc_Mercenary[3]]["Option"][3]["State"] = 0
rwtNpc[tNpc_Mercenary[3]]["Option"][3]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return rwFoodTask_Random(nNpcId)
end
rwtNpc[tNpc_Mercenary[3]]["Option"][3]["Func"] = function(nNpcTypeId)
    ---根据数据库接取任务
    rwFoodTask_AcceptTaskByUserRecord()
end
--【舌尖上的联盟】接任务按钮结束


--委托任务NPC  吉拉
rwtNpc[tNpc_Mercenary[2]] = rwtNpc[tNpc_Mercenary[2]] or {}
rwtNpc[tNpc_Mercenary[2]]["GenId"] = {1001026}
rwtNpc[tNpc_Mercenary[2]]["isEggChat"] = 1
rwtNpc[tNpc_Mercenary[2]]["LeagueChatTempDataId"] = tEggTempId.Jila
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"][1]["Level"] = 2
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"][1]["DialogId"] = tDialog_League.JiLa_egg_level_2
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"][2]["Level"] = 4
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"][2]["DialogId"] = tDialog_League.JiLa_egg_level_4
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"][3]["Level"] = 6
rwtNpc[tNpc_Mercenary[2]]["EggLeagueDialog"][3]["DialogId"] = tDialog_League.JiLa_egg_level_6
rwtNpc[tNpc_Mercenary[2]]["ChkOpen"] = true
rwtNpc[tNpc_Mercenary[2]]["NotOpenDialogId"] = {1022,1023,1024}
rwtNpc[tNpc_Mercenary[2]]["TaskIngDialogId"] = {1468,1469,1470}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][1]["Level"] = 1
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][1]["AllDayDialog"] = tDialog_League.JiLa_AllDay_level_1
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][2]["Level"] = 2
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][2]["AllDayDialog"] = tDialog_League.JiLa_AllDay_level_2
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][3]["Level"] = 3
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][3]["AllDayDialog"] = tDialog_League.JiLa_AllDay_level_3
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][4] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][4]["Level"] = 6
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][4]["AllDayDialog"] = tDialog_League.JiLa_AllDay_level_6
--美食闲聊
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][1] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][1]["WeekDay"] = CONST_FOOD_TIME.Tuesday
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][1]["AllDayDialog"] = tDialog_Food.JiLa_Zhou2
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][2] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][2]["WeekDay"] = CONST_FOOD_TIME.Wednesday
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][2]["AllDayDialog"] = tDialog_Food.JiLa_Zhou3


rwtNpc[tNpc_Mercenary[2]]["Option"] = {}
rwtNpc[tNpc_Mercenary[2]]["Option"][1] = {}
rwtNpc[tNpc_Mercenary[2]]["Option"][1]["Title"]= tLuaText[LANGUAGE_CONFIG][40002]
rwtNpc[tNpc_Mercenary[2]]["Option"][1]["State"] = 0
--rwtNpc[tNpc_Mercenary[2]]["Option"][1]["ClolseDialog"] = 1
rwtNpc[tNpc_Mercenary[2]]["Option"][1]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return true
end
rwtNpc[tNpc_Mercenary[2]]["Option"][1]["TaskChk"] = function(nNpcId) --判断是否显示TaskIngDialogId
    if rwTaskGetListByType(CONST_TASK_TYPE.MERCENARY) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.MERCENARY) > 0 then
        local nCount = 0 
        local tInfo = rwTaskGetListByType(CONST_TASK_TYPE.MERCENARY)
        for i=1,#rwTaskGetListByType(CONST_TASK_TYPE.MERCENARY) do 
            if rwTaskGetData(tInfo[i],CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG) ~= 0 then
                return true
            end
        end
    end
    return false
end
rwtNpc[tNpc_Mercenary[2]]["Option"][1]["Func"] = function(nNpcTypeId)  --点击按钮触发
    --rwOpenNpcChatDialog(1006,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
    rwOpenLocalWnd(CONST_MENUTYPE.Mercenary)
end

rwtDialog[1006] = rwtDialog[1006] or {}
rwtDialog[1006]["DialogEnd"] = function()
    rwOpenLocalWnd(4)
end

--【舌尖上的联盟】接任务按钮开始
rwtNpc[tNpc_Mercenary[2]]["Option"][2] = {}
rwtNpc[tNpc_Mercenary[2]]["Option"][2]["Title"]= tLuaText[LANGUAGE_CONFIG][40030] --[40030] ="舌尖上的联盟" ,
rwtNpc[tNpc_Mercenary[2]]["Option"][2]["State"] = 0
rwtNpc[tNpc_Mercenary[2]]["Option"][2]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return rwFoodTask_Random(nNpcId)
end
rwtNpc[tNpc_Mercenary[2]]["Option"][2]["Func"] = function(nNpcTypeId)
    ---根据数据库接取任务
    rwFoodTask_AcceptTaskByUserRecord()
end
--【舌尖上的联盟】接任务按钮结束

rwtNpc[tNpc_Mercenary[2]]["Option"][3] = {} --悬赏按钮
rwtNpc[tNpc_Mercenary[2]]["Option"][3]["Title"]= tLuaText[LANGUAGE_CONFIG][40044]
rwtNpc[tNpc_Mercenary[2]]["Option"][3]["State"] = 0
rwtNpc[tNpc_Mercenary[2]]["Option"][3]["Chk"] = function(nNpcId)
    --没有完成前置任务，不显示按钮
    if not rwTaskIsSuccess(nTask_RewardPre) then
        return false
    end
--    if not rwHasUserRecordData_System_Unlock(CONST_SYSTEM_FUNCTION.DAILY_TASK) then
--        return false
--    end
    return true
end
rwtNpc[tNpc_Mercenary[2]]["Option"][3]["Func"] = function(nNpcTypeId)
--    --第一次弹出对白
--    if not (rwTempDataGetValue(nTemp_FirstOpenReward,CONST_TEMP_DATA.Data1) == 1) then
--        rwOpenNpcChatDialog(12719)
--        rwUserTempDataSet(nTemp_FirstOpenReward,1,CONST_TEMP_DATA.Data1)
--    else
    rwOpenLocalWnd(CONST_MENUTYPE.Reward)
--    end
end


--巡查任务NPC 比多猫
rwtNpc[tNpc_Mercenary[4]] = rwtNpc[tNpc_Mercenary[4]] or {}
rwtNpc[tNpc_Mercenary[4]]["ChkOpen"] = true
rwtNpc[tNpc_Mercenary[4]]["NotOpenDialogId"] = {1027,1028,1029,1030,1031}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][1]["Level"] = 1
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][1]["AllDayDialog"] = tDialog_League.BiDuoMao_AllDay_level_1
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][2]["Level"] = 3
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][2]["AllDayDialog"] = tDialog_League.BiDuoMao_AllDay_level_3
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][3]["Level"] = 4
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][3]["AllDayDialog"] = tDialog_League.BiDuoMao_AllDay_level_4
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][4] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][4]["Level"] = 5
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][4]["AllDayDialog"] = tDialog_League.BiDuoMao_AllDay_level_5
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][5] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][5]["Level"] = 7
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][5]["AllDayDialog"] = tDialog_League.BiDuoMao_AllDay_level_7

--美食闲聊
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"] = {}
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][1] = {}
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][1]["WeekDay"] = CONST_FOOD_TIME.Monday
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][1]["AllDayDialog"] = tDialog_Food.BiDuoMao_Zhou1
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][2] = {}
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][2]["WeekDay"] = CONST_FOOD_TIME.Saturday
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][2]["AllDayDialog"] = tDialog_Food.BiDuoMao_Zhou6

rwtNpc[tNpc_Mercenary[4]]["Option"] = {}
rwtNpc[tNpc_Mercenary[4]]["Option"][1] = {}
rwtNpc[tNpc_Mercenary[4]]["Option"][1]["Title"]= tLuaText[LANGUAGE_CONFIG][40003]
rwtNpc[tNpc_Mercenary[4]]["Option"][1]["State"] = 0
rwtNpc[tNpc_Mercenary[4]]["Option"][1]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return true
end
rwtNpc[tNpc_Mercenary[4]]["Option"][1]["Func"] = function(nNpcTypeId)
--    rwSendSystemMessage("暂无功能")
    --达到上限，返回
    if rwUserGetTimesLeft(CONST_USER_TIMESTYPE.Patrol) < 1 then
        local nRandomInPatrolDialog = rwGetRandInt(1510,1511)
        rwOpenNpcChatDialog(nRandomInPatrolDialog,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)--任务达到上限对白
        return  
    end
    --在任务中
    if rwTaskGetListByType(CONST_TASK_TYPE.PATROL) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.PATROL) > 0 then
        local nCount = 0 
        local tInfo = rwTaskGetListByType(CONST_TASK_TYPE.PATROL)
        for i=1,#rwTaskGetListByType(CONST_TASK_TYPE.PATROL) do 
            if rwTaskGetData(tInfo[i],CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG) ~= 0 then
                local nRandomInPatrolDialog = rwGetRandInt(1508,1509)
                rwOpenNpcChatDialog(nRandomInPatrolDialog,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId) --任务中对白
                return 
            end
        end
    end
    --可接
    rwOpenNpcChatDialog(1507,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId) --正常可接对白
end

--【舌尖上的联盟】接任务按钮开始
rwtNpc[tNpc_Mercenary[4]]["Option"][2] = {}
rwtNpc[tNpc_Mercenary[4]]["Option"][2]["Title"]= tLuaText[LANGUAGE_CONFIG][40030] --[40030] ="舌尖上的联盟" ,
rwtNpc[tNpc_Mercenary[4]]["Option"][2]["State"] = 0
rwtNpc[tNpc_Mercenary[4]]["Option"][2]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return rwFoodTask_Random(nNpcId)
end
rwtNpc[tNpc_Mercenary[4]]["Option"][2]["Func"] = function(nNpcTypeId)
    ---根据数据库接取任务
    rwFoodTask_AcceptTaskByUserRecord()
end
--【舌尖上的联盟】接任务按钮结束



--艾赛尔
rwtNpc[tNpc_Mercenary[5]] = rwtNpc[tNpc_Mercenary[5]] or {}
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"][1]["Level"] = 1
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"][1]["AllDayDialog"] = tDialog_League.AiSaiEr_AllDay_level_1
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"][2]["Level"] = 5
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"][2]["AllDayDialog"] = tDialog_League.AiSaiEr_AllDay_level_5
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"][3]["Level"] = 8
rwtNpc[tNpc_Mercenary[5]]["LeagueDialog"][3]["AllDayDialog"] = tDialog_League.AiSaiEr_AllDay_level_8
rwtNpc[tNpc_Mercenary[5]]["DialogId"] = nNpcAiSaiEr_Dialog
rwtNpc[tNpc_Mercenary[5]]["ChkOpen"] = true
rwtNpc[tNpc_Mercenary[5]]["NotOpenDialogId"] = nNpcAiSaiEr_Dialog
--美食闲聊
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"] = {}
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"][1] = {}
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"][1]["WeekDay"] = CONST_FOOD_TIME.Wednesday
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"][1]["AllDayDialog"] = tDialog_Food.AiSaiEr_Zhou3
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"][2] = {}
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"][2]["WeekDay"] = CONST_FOOD_TIME.Friday
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"][2]["AllDayDialog"] = tDialog_Food.AiSaiEr_Zhou5
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"][3] = {}
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"][3]["WeekDay"] = CONST_FOOD_TIME.Saturday
rwtNpc[tNpc_Mercenary[5]]["FoodDialog"][3]["AllDayDialog"] = tDialog_Food.AiSaiEr_Zhou6

rwtNpc[tNpc_Mercenary[5]]["Option"] = {}
rwtNpc[tNpc_Mercenary[5]]["Option"][1] = {}
rwtNpc[tNpc_Mercenary[5]]["Option"][1]["OnlyChkDialog"] = 1
rwtNpc[tNpc_Mercenary[5]]["Option"][1]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
	return true
end
--【舌尖上的联盟】接任务按钮
rwtNpc[tNpc_Mercenary[5]]["Option"][2] = {}
rwtNpc[tNpc_Mercenary[5]]["Option"][2]["Title"]= tLuaText[LANGUAGE_CONFIG][40030] --[40030] ="舌尖上的联盟" ,
rwtNpc[tNpc_Mercenary[5]]["Option"][2]["State"] = 0
rwtNpc[tNpc_Mercenary[5]]["Option"][2]["Chk"] = function(nNpcId)
    --【主线是否完成】
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return rwFoodTask_Random(nNpcId)
end
rwtNpc[tNpc_Mercenary[5]]["Option"][2]["Func"] = function(nNpcTypeId)
    ---根据数据库接取任务
    rwFoodTask_AcceptTaskByUserRecord()
end
--【舌尖上的联盟】接任务按钮结束



--自律联盟告示板
rwtNpc[tNpc_Mercenary[6]] = rwtNpc[tNpc_Mercenary[6]] or {}
rwtNpc[tNpc_Mercenary[6]]["NpcProcess"] = function()
    if not rwTaskIsSuccess(nTask_RewardPre) then
        --没有完成前置任务
        rwOpenNpcChatDialog(1795)
        return  
    -- elseif not (rwTempDataGetValue(nTemp_FirstOpenReward,CONST_TEMP_DATA.Data1) == 1) then
    -- --完成前置任务，且第一次点击
    --     rwUserTempDataSet(nTemp_FirstOpenReward,1,CONST_TEMP_DATA.Data1)
    elseif not rwTaskIsSuccess(70516) then
        return
    else
        rwOpenLocalWnd(CONST_MENUTYPE.Reward)
    end
end
------------------------------------------NPC组数据配置------------------------------------------
--铁臂托马斯
rwtNpcGroup[tNpcGroup_Mercenary[1]] = rwtNpcGroup[tNpcGroup_Mercenary[1]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[1]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[1]]["NpcId"]= tNpc_Mercenary[1]

--皮尔
rwtNpcGroup[tNpcGroup_Mercenary[3]] = rwtNpcGroup[tNpcGroup_Mercenary[3]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[3]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[3]]["NpcId"]= tNpc_Mercenary[3]

--吉拉（透明）
rwtNpcGroup[tNpcGroup_Mercenary[2]] = rwtNpcGroup[tNpcGroup_Mercenary[2]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[2]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[2]]["NpcId"]= tNpc_Mercenary[2]

--比多猫
rwtNpcGroup[tNpcGroup_Mercenary[4]] = rwtNpcGroup[tNpcGroup_Mercenary[4]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[4]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[4]]["NpcId"]= tNpc_Mercenary[4]

--吉拉
rwtNpcGroup[tNpcGroup_Mercenary[6]] = rwtNpcGroup[tNpcGroup_Mercenary[6]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[6]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc

--艾赛尔
rwtNpcGroup[tNpcGroup_Mercenary[5]] = rwtNpcGroup[tNpcGroup_Mercenary[5]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[5]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[5]]["NpcId"]= tNpc_Mercenary[5]


--自律联盟告示板（可接受悬赏任务）
rwtNpcGroup[tNpcGroup_Mercenary[7]] = rwtNpcGroup[tNpcGroup_Mercenary[7]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[7]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[7]]["NpcId"]= tNpc_Mercenary[6]

