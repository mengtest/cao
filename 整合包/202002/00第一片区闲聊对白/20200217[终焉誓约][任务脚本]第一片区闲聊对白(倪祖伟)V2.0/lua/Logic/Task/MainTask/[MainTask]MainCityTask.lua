--region [MainTask]MainCityTask.lua
--Purpose:		主城
--Creator: 		余锦鑫
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-02-22  $
--RCS-ID:		$Revision: 35   $
--endregion


----***************************数据定义***************************--
----------------掩码----------
--第一次登录时强塞任务掩码
local nFirstLoad = 1002
--佣兵公会悬赏任务掩码
local nRewardTaskTemp = 1013

---------------------任务ID-----------------
--新版主城
local tMainCityTaskId = {}
--名誉守卫战
tMainCityTaskId[1] = 10206    --去神殿调查
tMainCityTaskId[2] = 10207    --驳斥莱克的荒唐论调
--大帝之子
tMainCityTaskId[3] = 10210    --寻找卡诺萨之光
--接湖畔镇主线
local nNextAreaTask = 10676

--主线任务id（完成任务后解锁开启自律联盟，并开启所有佣兵任务，包含日常、委托等）
local nTaskId_LMDL_Final = 10270
--佣兵公会悬赏任务第一个任务id
local nFirstRewardTask1 = 40050
--佣兵公会悬赏任务最后一个任务id
local nFinalRewardTask1 = 40116
--删除诺尔及薇莉丝任务id
local nTaskId_DelNuoEr = 10091

--倒计时卡点任务
local tCountDownTask = {}
--哀嚎神殿卡点任务
tCountDownTask.Aihaoshendian = 10229
tCountDownTask.Shiluo_1 = 10678
tCountDownTask.Shiluo_2 = 10680
--------对白id--------
local tMainCityTaskDialog = {}

tMainCityTaskDialog[1] = 10364
tMainCityTaskDialog[2] = 10365
tMainCityTaskDialog[3] = 10368

local nZilvlianmengTask_Dialog_Tiebi = 10706
local nZilvlianmengTask_Dialog_Lunnade = 10707
local nZilvlianmengTask_Dialog_Jila = 10708
-------------奖励id---------------
local tAward_MainTask = {}

--名誉守卫战
tAward_MainTask[1] = 2000052
--大帝之子
tAward_MainTask[2] = 2000053

-------------物品id---------------
--倒计时物品id
local tCountDownItem = {}

--哀嚎神殿卡点任务道具
tCountDownItem.Aihaoshendian = 7000240
--失落群岛前置任务卡点道具
tCountDownItem.Shiluo_1 = 7000290
tCountDownItem.Shiluo_2 = 7000300

-------------提示id---------------
--卡点任务无道具提示
local tCountDownMessage = {}

tCountDownMessage.Aihaoshendian = tLuaText[LANGUAGE_CONFIG][10220]
tCountDownMessage.Shiluo_1 = tLuaText[LANGUAGE_CONFIG][10225]
tCountDownMessage.Shiluo_2 = tLuaText[LANGUAGE_CONFIG][10226]
-------------------NPCID-----------------
local tNpc_MainTask = {}

tNpc_MainTask[1] = 102   --泰雷
tNpc_MainTask[2] = 2030     --诗寇蒂
tNpc_MainTask[3] = 1002    --薇莉丝 
tNpc_MainTask[4] = 1000      --诺尔
tNpc_MainTask[5] = 1003      --莱克
tNpc_MainTask[6] = 3081   --占星师米勒
tNpc_MainTask[7] = 3028 --特罗德
tNpc_MainTask[8] = 3314
tNpc_MainTask[9] = 3138         --萨林（主线任务NPC）

tNpc_MainTask[10] = 3643         --汉莎
tNpc_MainTask[11] = 3644         --斯达
tNpc_MainTask[12] = 3645         --卡佳
tNpc_MainTask[13] = 3646         --达卡


tNpc_MainTask[14] = 3968         --桑托酒馆
tNpc_MainTask[15] = 3969         --尼尔克一号寓
tNpc_MainTask[16] = 3970         --史雷恩公馆
tNpc_MainTask[17] = 3971         --克扎哈公寓

--佣兵公会NPC
local tNpc_Mercenary = {}

tNpc_Mercenary[1] = 3005    --铁臂托马斯
tNpc_Mercenary[2] = 3042      --吉拉（委托任务NPC）
tNpc_Mercenary[3] = 3043      --皮尔（每日任务NPC）
tNpc_Mercenary[4] = 3080      --比多猫
tNpc_Mercenary[5] = 3101      --艾赛尔

--风迹速递NPC
local tNpc_QuickSend = {}
tNpc_QuickSend.ZongGuan =3774	--风迹快递喵

--主城闲置NPC
local nIdleNpc_WeiBing = 3106      --卫兵
rwtNpc[nIdleNpc_WeiBing] = rwtNpc[nIdleNpc_WeiBing] or {}
rwtNpc[nIdleNpc_WeiBing]["DialogId"] = 1167




local nNpc_Pub = 3075 --酒馆负责人
--闲聊对白
--薇莉丝
rwtNpc[tNpc_MainTask[3]] = {}
rwtNpc[tNpc_MainTask[3]]["DialogId"] = {1281,1282,1283,1835}
--诺尔
rwtNpc[tNpc_MainTask[4]] = {}
rwtNpc[tNpc_MainTask[4]]["DialogId"] = {1278,1279,1280,1834}

rwtNpc[tNpc_MainTask[2]] = {}
--rwtNpc[tNpc_MainTask[2]]["DialogId"] = 1000
--泰雷
rwtNpc[tNpc_MainTask[1]] = rwtNpc[tNpc_MainTask[1]] or {}
rwtNpc[tNpc_MainTask[1]]["DialogId"] = {1284,1285,2308}
rwtNpc[tNpc_MainTask[1]]["CDDialogIdTypeEach"] = 1515
--特罗德
rwtNpc[tNpc_MainTask[7]] = rwtNpc[tNpc_MainTask[7]] or {}
rwtNpc[tNpc_MainTask[7]]["DialogId"] = {1290,1291,1292,1833}
--rwtNpc[tNpc_MainTask[7]]["Option"] = {}
--rwtNpc[tNpc_MainTask[7]]["Option"][1] = {}
--rwtNpc[tNpc_MainTask[7]]["Option"][1]["Title"]= tLuaText[LANGUAGE_CONFIG][40020]
--rwtNpc[tNpc_MainTask[7]]["Option"][1]["State"] = 0
--rwtNpc[tNpc_MainTask[7]]["Option"][1]["Chk"] = function(nNpcId)
--    if rwCountDownTaskChkUserInTask(tCountDownTask.Aihaoshendian) then
--        return true
--    end
--    return false
--end
--rwtNpc[tNpc_MainTask[7]]["Option"][1]["Func"] = function(nNpcTypeId) --点击按钮触发
--    rwCountDownSpeedLogic(tCountDownTask.Aihaoshendian)
--end

--rwtNpc[tNpc_MainTask[7]]["Option"][2] = {}
--rwtNpc[tNpc_MainTask[7]]["Option"][2]["Title"]= tLuaText[LANGUAGE_CONFIG][40025]
--rwtNpc[tNpc_MainTask[7]]["Option"][2]["State"] = 0
--rwtNpc[tNpc_MainTask[7]]["Option"][2]["Chk"] = function(nNpcId)
--    if rwCountDownTaskChkUserInTask(tCountDownTask.Shiluo_1) then
--        return true
--    end
--    return false
--end
--rwtNpc[tNpc_MainTask[7]]["Option"][2]["Func"] = function(nNpcTypeId) --点击按钮触发
--    rwCountDownSpeedLogic(tCountDownTask.Shiluo_1)
--end

--rwtNpc[tNpc_MainTask[7]]["Option"][3] = {}
--rwtNpc[tNpc_MainTask[7]]["Option"][3]["Title"]= tLuaText[LANGUAGE_CONFIG][40026]
--rwtNpc[tNpc_MainTask[7]]["Option"][3]["State"] = 0
--rwtNpc[tNpc_MainTask[7]]["Option"][3]["Chk"] = function(nNpcId)
--    if rwCountDownTaskChkUserInTask(tCountDownTask.Shiluo_2) then
--        return true
--    end
--    return false
--end
--rwtNpc[tNpc_MainTask[7]]["Option"][3]["Func"] = function(nNpcTypeId) --点击按钮触发
--    rwCountDownSpeedLogic(tCountDownTask.Shiluo_2)
--end


--闲聊NPC
local tNpc_Chat = {}

--面包大王诺阿
tNpc_Chat[1] = 3190 
rwtNpc[tNpc_Chat[1]] = rwtNpc[tNpc_Chat[1]] or {}
rwtNpc[tNpc_Chat[1]]["DialogId"] = {1410,1411,1412,2319}
--子爵格兰特
tNpc_Chat[2] = 3191 
rwtNpc[tNpc_Chat[2]] = rwtNpc[tNpc_Chat[2]] or {}
rwtNpc[tNpc_Chat[2]]["DialogId"] = {1401,1402,1403,2316}
--警报机器人·滴
tNpc_Chat[3] = 3192 
rwtNpc[tNpc_Chat[3]] = rwtNpc[tNpc_Chat[3]] or {}
rwtNpc[tNpc_Chat[3]]["DialogId"] = {1344,1345,1346}
rwtNpc[tNpc_Chat[3]]["CDDialogIdTypeEach"] = 1532
--兔族小黑
tNpc_Chat[4] = 3193 
rwtNpc[tNpc_Chat[4]] = rwtNpc[tNpc_Chat[4]] or {}
rwtNpc[tNpc_Chat[4]]["DialogId"] = {1416,1417,1418}
--女巫莉莲
tNpc_Chat[5] = 3194 
rwtNpc[tNpc_Chat[5]] = rwtNpc[tNpc_Chat[5]] or {}
rwtNpc[tNpc_Chat[5]]["DialogId"] = {1422,1423,1424}
rwtNpc[tNpc_Chat[5]]["CDDialogIdTypeEach"] = 1542
--落选的提琴师李
tNpc_Chat[6] = 3195 
rwtNpc[tNpc_Chat[6]] = rwtNpc[tNpc_Chat[6]] or {}
rwtNpc[tNpc_Chat[6]]["DialogId"] = {1299,1300,1301,2310}
rwtNpc[tNpc_Chat[6]]["CDDialogIdTypeEach"] = 1519
rwtNpc[tNpc_Chat[6]]["CDDialogIdTypeTotal"] = 1518
--女剑士玛塔
tNpc_Chat[7] = 3196 
rwtNpc[tNpc_Chat[7]] = rwtNpc[tNpc_Chat[7]] or {}
rwtNpc[tNpc_Chat[7]]["DialogId"] = {1425,1426,1427,2321}
--露露
tNpc_Chat[8] = 3197 
rwtNpc[tNpc_Chat[8]] = rwtNpc[tNpc_Chat[8]] or {}
rwtNpc[tNpc_Chat[8]]["DialogId"] = {1413,1414,1415,2320}
--宫廷书记员弗林
tNpc_Chat[9] = 3199 
rwtNpc[tNpc_Chat[9]] = rwtNpc[tNpc_Chat[9]] or {}
rwtNpc[tNpc_Chat[9]]["DialogId"] = {2305,2306,2307}
rwtNpc[tNpc_Chat[9]]["SceneNpcChk"] = function()
	local tDialogEnd = {1287,1288,1289}
	if rwHeroIsHas(201) then 
		local nRandom = math.random(1,#tDialogEnd)
		rwOpenNpcChatDialog(tDialogEnd[nRandom],CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end


--废弃对白Id 1650 1651

--詹尼佛大妈
tNpc_Chat[10] = 3201 
rwtNpc[tNpc_Chat[10]] = rwtNpc[tNpc_Chat[10]] or {}
rwtNpc[tNpc_Chat[10]]["DialogId"] = {1338,1339,1340}
--女仆伊丽丝
tNpc_Chat[11] = 3202 
rwtNpc[tNpc_Chat[11]] = rwtNpc[tNpc_Chat[11]] or {}
rwtNpc[tNpc_Chat[11]]["DialogId"] = {1341,1342,1343,2313}

--警报机器人·嘟
tNpc_Chat[12] = 3208 
rwtNpc[tNpc_Chat[12]] = rwtNpc[tNpc_Chat[12]] or {}
rwtNpc[tNpc_Chat[12]]["DialogId"] = {1326,1327,1328}
--大树精麦克斯
tNpc_Chat[13] = 3209 
rwtNpc[tNpc_Chat[13]] = rwtNpc[tNpc_Chat[13]] or {}
rwtNpc[tNpc_Chat[13]]["DialogId"] = {1329,1330,1331,2311}
rwtNpc[tNpc_Chat[13]]["CDDialogIdTypeEach"] = 1529
--小树精敏特
tNpc_Chat[14] = 3210 
rwtNpc[tNpc_Chat[14]] = rwtNpc[tNpc_Chat[14]] or {}
rwtNpc[tNpc_Chat[14]]["DialogId"] = {1332,1333,1334,2312}
rwtNpc[tNpc_Chat[14]]["CDDialogIdTypeEach"] = 1530
--哥布林商贩奥格
tNpc_Chat[15] = 3211 
rwtNpc[tNpc_Chat[15]] = rwtNpc[tNpc_Chat[15]] or {}
rwtNpc[tNpc_Chat[15]]["DialogId"] = {1335,1336,1337}
rwtNpc[tNpc_Chat[15]]["CDDialogIdTypeEach"] = 1531
--皮曼1号
tNpc_Chat[16] = 3212 
rwtNpc[tNpc_Chat[16]] = rwtNpc[tNpc_Chat[16]] or {}
rwtNpc[tNpc_Chat[16]]["DialogId"] = {1347,1348,1349}
rwtNpc[tNpc_Chat[16]]["CDDialogIdTypeEach"] = 1533
--哥布林萨顿
tNpc_Chat[22] = 3218 
rwtNpc[tNpc_Chat[22]] = rwtNpc[tNpc_Chat[22]] or {}
rwtNpc[tNpc_Chat[22]]["DialogId"] = {1371,1372,1373}
--阿噗小圆
tNpc_Chat[23] = 3219 
rwtNpc[tNpc_Chat[23]] = rwtNpc[tNpc_Chat[23]] or {}
rwtNpc[tNpc_Chat[23]]["DialogId"] = {1374,1375,1376,2314}
rwtNpc[tNpc_Chat[23]]["CDDialogIdTypeEach"] = 1536
--树精毛毛
tNpc_Chat[24] = 3220 
rwtNpc[tNpc_Chat[24]] = rwtNpc[tNpc_Chat[24]] or {}
rwtNpc[tNpc_Chat[24]]["DialogId"] = {1377,1378,1379}

--巨斧吉塔
tNpc_Chat[25] = 3227 
rwtNpc[tNpc_Chat[25]] = rwtNpc[tNpc_Chat[25]] or {}
rwtNpc[tNpc_Chat[25]]["DialogId"] = {1404,1405,1406,1648,2317}

--废弃Id 1649

--铁锤舒尔多
tNpc_Chat[26] = 3228 
rwtNpc[tNpc_Chat[26]] = rwtNpc[tNpc_Chat[26]] or {}
rwtNpc[tNpc_Chat[26]]["DialogId"] = {1407,1408,1409,2318}
--戴琳斯
tNpc_Chat[27] = 3229 
rwtNpc[tNpc_Chat[27]] = rwtNpc[tNpc_Chat[27]] or {}
rwtNpc[tNpc_Chat[27]]["DialogId"] = {1323,1324,1325}
--宫廷歌姬露娜
tNpc_Chat[28] = 3230 
rwtNpc[tNpc_Chat[28]] = rwtNpc[tNpc_Chat[28]] or {}
rwtNpc[tNpc_Chat[28]]["DialogId"] = {1293,1294,1295,2309}
rwtNpc[tNpc_Chat[28]]["CDDialogIdTypeEach"] = 1516
--少女玛格
tNpc_Chat[29] = 3231 
rwtNpc[tNpc_Chat[29]] = rwtNpc[tNpc_Chat[29]] or {}
rwtNpc[tNpc_Chat[29]]["DialogId"] = {1350,1351,1352}
rwtNpc[tNpc_Chat[29]]["CDDialogIdTypeTotal"] = 1534
--艾西瓦娅
tNpc_Chat[30] = 3232 
rwtNpc[tNpc_Chat[30]] = rwtNpc[tNpc_Chat[30]] or {}
rwtNpc[tNpc_Chat[30]]["DialogId"] = {1419,1420,1421}
--吟游诗人玛门
tNpc_Chat[31] = 1175 
rwtNpc[tNpc_Chat[31]] = rwtNpc[tNpc_Chat[31]] or {}
rwtNpc[tNpc_Chat[31]]["DialogId"] = {1296,1297,1298}
rwtNpc[tNpc_Chat[31]]["CDDialogIdTypeEach"] = 1517
--乞讨老者
tNpc_Chat[33] = 3268 
rwtNpc[tNpc_Chat[33]] = rwtNpc[tNpc_Chat[33]] or {}
rwtNpc[tNpc_Chat[33]]["DialogId"] = {1398,1399,1400,1646,2315}
--哥布林商贩麦肯
tNpc_Chat[34] = 3269 
rwtNpc[tNpc_Chat[34]] = rwtNpc[tNpc_Chat[34]] or {}
rwtNpc[tNpc_Chat[34]]["DialogId"] = {1395,1396,1397}

--------王宫
--大学士
tNpc_Chat[35] = 3367 
rwtNpc[tNpc_Chat[35]] = rwtNpc[tNpc_Chat[35]] or {}
rwtNpc[tNpc_Chat[35]]["DialogId"] = {1566,1567,1568,1569,1570}

--财政大臣
tNpc_Chat[36] = 3368 
rwtNpc[tNpc_Chat[36]] = rwtNpc[tNpc_Chat[36]] or {}
rwtNpc[tNpc_Chat[36]]["DialogId"] = {1571,1572,1573}

-------------主城排布调整新增
--少女凯瑟琳
tNpc_Chat[37] = 3355
rwtNpc[tNpc_Chat[37]] = rwtNpc[tNpc_Chat[37]] or {}
rwtNpc[tNpc_Chat[37]]["DialogId"] = {1554,2322}
--少女雷茜
tNpc_Chat[38] = 3356
rwtNpc[tNpc_Chat[38]] = rwtNpc[tNpc_Chat[38]] or {}
rwtNpc[tNpc_Chat[38]]["DialogId"] = {1555,2323}
--矮人小贩
tNpc_Chat[39] = 3357
rwtNpc[tNpc_Chat[39]] = rwtNpc[tNpc_Chat[39]] or {}
rwtNpc[tNpc_Chat[39]]["DialogId"] = {1556,2324}
--子爵德福
tNpc_Chat[40] = 3358
rwtNpc[tNpc_Chat[40]] = rwtNpc[tNpc_Chat[40]] or {}
rwtNpc[tNpc_Chat[40]]["DialogId"] = {1557,2325}
--冒险家小眼镜
tNpc_Chat[41] = 3359
rwtNpc[tNpc_Chat[41]] = rwtNpc[tNpc_Chat[41]] or {}
rwtNpc[tNpc_Chat[41]]["DialogId"] = {1558,1832}
--龟小豆
tNpc_Chat[47] = 3365
rwtNpc[tNpc_Chat[47]] = rwtNpc[tNpc_Chat[47]] or {}
rwtNpc[tNpc_Chat[47]]["DialogId"] = {1564,1565}
--龟族先知
tNpc_Chat[48] = 3366
rwtNpc[tNpc_Chat[48]] = rwtNpc[tNpc_Chat[48]] or {}
rwtNpc[tNpc_Chat[48]]["DialogId"] = {1564,1565}

--哥布林怀特
tNpc_Chat[65] = 3779
rwtNpc[tNpc_Chat[65]] = rwtNpc[tNpc_Chat[65]] or {}
rwtNpc[tNpc_Chat[65]]["DialogId"] = {1830}
--贝蒂
tNpc_Chat[66] = 3780
rwtNpc[tNpc_Chat[66]] = rwtNpc[tNpc_Chat[66]] or {}
rwtNpc[tNpc_Chat[66]]["DialogId"] = {1831}


--乞讨老者
rwtDialog[1398] = {}
rwtDialog[1398]["CloseDialog"] = 2
rwtDialog[1398]["DialogAdventureTaskID"] = 35011
rwtDialog[1398]["DialogAdventureOption"] = 1
rwtDialog[1398]["AdventureJudgeType"] = {}
rwtDialog[1398]["AdventureJudgeType"][1] = {}
rwtDialog[1398]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.PROBABILITY
rwtDialog[1398]["AdventureJudgeType"][1]["Value"] = -1
--[[
rwtDialog[1398]["AdventureJudgeType"][1] = {}
rwtDialog[1398]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.TIMERANGE
rwtDialog[1398]["AdventureJudgeType"][1]["MaxTime"] = {}
rwtDialog[1398]["AdventureJudgeType"][1]["MaxTime"]["sec"] = 0
rwtDialog[1398]["AdventureJudgeType"][1]["MaxTime"]["min"] = 0
rwtDialog[1398]["AdventureJudgeType"][1]["MaxTime"]["hour"] = 19
rwtDialog[1398]["AdventureJudgeType"][1]["MinTime"] = {}
rwtDialog[1398]["AdventureJudgeType"][1]["MinTime"]["sec"] = 0
rwtDialog[1398]["AdventureJudgeType"][1]["MinTime"]["min"] = 0
rwtDialog[1398]["AdventureJudgeType"][1]["MinTime"]["hour"] = 14
--]]
rwtDialog[1398]["OptionFunc1"] = function()

	local nUserMoney = rwUserGetMoney()
    if  nUserMoney < 2 then 
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10011],2,1)
    else
        if not rwCostMoney(2,CONST_MONEY_COST.ADD_BY_NPC) then
			rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10237],2,1)
		end
		rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10238],2,1)
        local nCount = rwTempDataGetValue(1093, CONST_TEMP_DATA.Data1)
        if nCount < 0 then
			rwUserTempDataSet(1093,2,CONST_TEMP_DATA.Data1)
        else
			rwUserTempDataSet(1093,nCount+2,CONST_TEMP_DATA.Data1)
        end
    end
end
rwtDialog[1398]["OptionFunc2"] = function()
   return true
end

--rwtDialog[1398]["DialogEnd"] = function ()
--    local nCostMoney = -2
--    local nUserMoney = rwUserGetMoney()
--    if  nUserMoney < 2 then 
--        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10011],1,1)
--    else
--        --rwAddMoney(nCostMoney)--扣除2个罗兰币
--        local nCount = rwTempDataGetValue(1093, CONST_TEMP_DATA.Data1)
--        if nCount < 0 then
--			rwUserTempDataSet(1093,0,CONST_TEMP_DATA.Data1)
--        else
--			rwUserTempDataSet(1093,nCount+2,CONST_TEMP_DATA.Data1)
--        end
--    end

--end 



-------自律联盟NPC闲聊对白
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




--比格
tNpc_Chat[49]  = 3176      
rwtNpc[tNpc_Chat[49]] = rwtNpc[tNpc_Chat[49]] or {}
rwtNpc[tNpc_Chat[49]]["DialogId"] = {1193,1194,1195,1196}
rwtNpc[tNpc_Chat[49]]["Option"] = {}
rwtNpc[tNpc_Chat[49]]["Option"][1] = {}
rwtNpc[tNpc_Chat[49]]["Option"][1]["Chk"] = function()
	return Cat_DialogToShowButton(tNpc_Chat[49])
end
rwtNpc[tNpc_Chat[49]]["Option"][1]["Title"] = tLuaText[LANGUAGE_CONFIG][40035]
rwtNpc[tNpc_Chat[49]]["Option"][1]["Func"] = function(nNpcId)
	CatChoose_Dialog(nNpcId)
	--废弃 1851 1856
end
--图斯
tNpc_Chat[50]  = 3177      
rwtNpc[tNpc_Chat[50]] = rwtNpc[tNpc_Chat[50]] or {}
rwtNpc[tNpc_Chat[50]]["DialogId"] = {1858,1859,1860} 
--旧闲聊 1197,1198
rwtNpc[tNpc_Chat[50]]["Option"] = {}
rwtNpc[tNpc_Chat[50]]["Option"][1] = {}
rwtNpc[tNpc_Chat[50]]["Option"][1]["Chk"] = function()
	return Cat_DialogToShowButton(tNpc_Chat[50])
end
rwtNpc[tNpc_Chat[50]]["Option"][1]["Title"] = tLuaText[LANGUAGE_CONFIG][40035]
rwtNpc[tNpc_Chat[50]]["Option"][1]["Func"] = function(nNpcId)
	CatChoose_Dialog(nNpcId)
	--废弃 1852
end
--斯利
tNpc_Chat[51]  = 3178  
rwtNpc[tNpc_Chat[51]] = rwtNpc[tNpc_Chat[51]] or {}
rwtNpc[tNpc_Chat[51]]["DialogId"] = {1199,1200,1201} 
rwtNpc[tNpc_Chat[51]]["Option"] = {}
rwtNpc[tNpc_Chat[51]]["Option"][1] = {}
rwtNpc[tNpc_Chat[51]]["Option"][1]["Chk"] = function()
	return Cat_DialogToShowButton(tNpc_Chat[51])
end
rwtNpc[tNpc_Chat[51]]["Option"][1]["Title"] = tLuaText[LANGUAGE_CONFIG][40035]
rwtNpc[tNpc_Chat[51]]["Option"][1]["Func"] = function(nNpcId)
	CatChoose_Dialog(nNpcId)
	--废弃 1850
end
--弗斯
tNpc_Chat[52]   = 3179  
rwtNpc[tNpc_Chat[52]] = rwtNpc[tNpc_Chat[52]] or {}
rwtNpc[tNpc_Chat[52]]["DialogId"] = {1202,1203,1204}
rwtNpc[tNpc_Chat[52]]["Option"] = {}
rwtNpc[tNpc_Chat[52]]["Option"][1] = {}
rwtNpc[tNpc_Chat[52]]["Option"][1]["Chk"] = function()
	return Cat_DialogToShowButton(tNpc_Chat[52])
end
rwtNpc[tNpc_Chat[52]]["Option"][1]["Title"] = tLuaText[LANGUAGE_CONFIG][40035]
rwtNpc[tNpc_Chat[52]]["Option"][1]["Func"] = function(nNpcId)
	CatChoose_Dialog(nNpcId)
	--废弃 1853 1855
end
--斐佛
tNpc_Chat[53]    = 3180   
rwtNpc[tNpc_Chat[53]] = rwtNpc[tNpc_Chat[53]] or {}
rwtNpc[tNpc_Chat[53]]["DialogId"] = {1861,1862,1863}  
--旧闲聊 1205,1206,1207
rwtNpc[tNpc_Chat[53]]["Option"] = {}
rwtNpc[tNpc_Chat[53]]["Option"][1] = {}
rwtNpc[tNpc_Chat[53]]["Option"][1]["Chk"] = function()
	return Cat_DialogToShowButton(tNpc_Chat[53])
end
rwtNpc[tNpc_Chat[53]]["Option"][1]["Title"] = tLuaText[LANGUAGE_CONFIG][40035]
rwtNpc[tNpc_Chat[53]]["Option"][1]["Func"] = function(nNpcId)
	CatChoose_Dialog(nNpcId)
	--废弃 1853
end

--谢克斯
tNpc_Chat[54]  = 3181 
rwtNpc[tNpc_Chat[54]] = rwtNpc[tNpc_Chat[54]] or {}
rwtNpc[tNpc_Chat[54]]["DialogId"] = {1208,1209,1210} 
rwtNpc[tNpc_Chat[54]]["Option"] = {}
rwtNpc[tNpc_Chat[54]]["Option"][1] = {}
rwtNpc[tNpc_Chat[54]]["Option"][1]["Chk"] = function()
	return Cat_DialogToShowButton(tNpc_Chat[54])
end
rwtNpc[tNpc_Chat[54]]["Option"][1]["Title"] = tLuaText[LANGUAGE_CONFIG][40035]
rwtNpc[tNpc_Chat[54]]["Option"][1]["Func"] = function(nNpcId)
	CatChoose_Dialog(nNpcId)
	--废弃 1854
end


--头条哥布林
tNpc_Chat[55]  = 3182
rwtNpc[tNpc_Chat[55]] = rwtNpc[tNpc_Chat[55]] or {}
rwtNpc[tNpc_Chat[55]]["DialogId"] = {1211,1212,1213} 
--卓娜
tNpc_Chat[56]   = 3183    
rwtNpc[tNpc_Chat[56]] = rwtNpc[tNpc_Chat[56]] or {}
rwtNpc[tNpc_Chat[56]]["DialogId"] = {1214,1215,1216} 
--巨斧战士塔克
tNpc_Chat[57]  = 3184    
rwtNpc[tNpc_Chat[57]] = rwtNpc[tNpc_Chat[57]] or {}
rwtNpc[tNpc_Chat[57]]["DialogId"] = {1217,1218,1219}
--外乡人里茨
tNpc_Chat[58]    = 3185   
rwtNpc[tNpc_Chat[58]] = rwtNpc[tNpc_Chat[58]] or {}
rwtNpc[tNpc_Chat[58]]["DialogId"] = {1220,1221,1222}  
--旅行者艾力
tNpc_Chat[59]    = 3186  
rwtNpc[tNpc_Chat[59]] = rwtNpc[tNpc_Chat[59]] or {}
rwtNpc[tNpc_Chat[59]]["DialogId"] = {1223,1224,1225}
--研究员拜希儿
tNpc_Chat[60] = 3187  
rwtNpc[tNpc_Chat[60]] = rwtNpc[tNpc_Chat[60]] or {}
rwtNpc[tNpc_Chat[60]]["DialogId"] = {1226,1227,1228}

--酒馆米妮
tNpc_Chat[61] = 3372 
rwtNpc[tNpc_Chat[61]] = rwtNpc[tNpc_Chat[61]] or {}
rwtNpc[tNpc_Chat[61]]["DialogId"] = 1574 

--佣兵特伍德（NPC）
tNpc_Chat[62] = 3647 
rwtNpc[tNpc_Chat[62]] = rwtNpc[tNpc_Chat[62]] or {}
rwtNpc[tNpc_Chat[62]]["DialogId"] = 1764

--佣兵特伍德（切屏点） 
tNpc_Chat[63] = 3648 
rwtNpc[tNpc_Chat[63]] = rwtNpc[tNpc_Chat[63]] or {}
rwtNpc[tNpc_Chat[63]]["DialogId"] = 1765 

--巡逻守卫（NPC） 
tNpc_Chat[64] = 3649 
rwtNpc[tNpc_Chat[64]] = rwtNpc[tNpc_Chat[64]] or {}
rwtNpc[tNpc_Chat[64]]["DialogId"] = {1766,1767} 

 
-------自律联盟NPC
--悬赏任务NPC  铁臂安道夫
local tDialog_League = {}
tDialog_League.Andaofu_Day_D = {1864,1865,1866}
tDialog_League.Andaofu_Night_D =  {1867,1868,1869}
tDialog_League.Andaofu_Day_C = {1870,1871,1872}
tDialog_League.Andaofu_Night_C =  {1873,1874,1875}
tDialog_League.Andaofu_Day_B = {1876,1877,1878}
tDialog_League.Andaofu_Night_B =  {1879,1880,1881}
tDialog_League.Andaofu_Day_A = {1882,1883,1884}
tDialog_League.Andaofu_Night_A =  {1885,1886,1887,1888}
tDialog_League.Andaofu_Day_S = {1889,1890,1891}
tDialog_League.Andaofu_Night_S =  {1892,1893,1894}
tDialog_League.Andaofu_Day_SS = {1895,1896,1897}
tDialog_League.Andaofu_Night_SS =  {1898,1899,1900,1901,1902}

tDialog_League.LunNaDe_Day_D = {1903,1904,1905}
tDialog_League.LunNaDe_Night_D =  {1906,1907,1908}
tDialog_League.LunNaDe_Day_C = {1909,1910,1911}
tDialog_League.LunNaDe_Night_C =  {1912,1913,1914,1915,1916}
tDialog_League.LunNaDe_DayAll = {1903,1904,1905,1909,1910,1911}
tDialog_League.LunNaDe_Night_B =  {1917,1918,1919,1920,1921}
tDialog_League.LunNaDe_Night_A =  {1922,1923,1924,1925,1926}
tDialog_League.LunNaDe_Night_S =  {1927,1928,1929,1930}
tDialog_League.LunNaDe_Night_SS = {1931,1932,1933}

tDialog_League.JiLa_Day_D = {1934,1935,1936}
tDialog_League.JiLa_Night_D =  {1937,1938,1939}
tDialog_League.JiLa_Day_C = {1940,1941,1942}
tDialog_League.JiLa_Night_C =  {1943,1944,1945}
tDialog_League.JiLa_Day_B = {1946,1947,1948}
tDialog_League.JiLa_Night_B =  {1949,1950,1951,1952}
tDialog_League.JiLa_DayAll = {1934,1935,1936,1940,1941,1942,1946,1947,1948}
tDialog_League.JiLa_Night_A =  {1953,1954,1955,1956}
tDialog_League.JiLa_Night_S =  {1957,1958,1959,1960}
tDialog_League.JiLa_Night_SS = {1961,1962,1963}

tDialog_League.BiDuoMao_Day_D = {1964,1965,1966}
tDialog_League.BiDuoMao_Night_D =  {1967,1968,1969}
tDialog_League.BiDuoMao_Day_C = {1970,1971,1972,1973,1974}
tDialog_League.BiDuoMao_Night_C =  {1975,1976,1977,1978,1979}
tDialog_League.BiDuoMao_DayAll = {1964,1965,1966,1970,1971,1972,1973,1974}
tDialog_League.BiDuoMao_Night_B =  {1980,1981,1982,1983}
tDialog_League.BiDuoMao_Night_A =  {1984,1985,1986,1987,1988}
tDialog_League.BiDuoMao_Night_S =  {1989,1990,1991,1992,1993}
tDialog_League.BiDuoMao_Night_SS = {1994,2026,2027,2028,2029}

local tDialog_Food = {}
tDialog_Food.Andao_Zhou2 = {2083}
tDialog_Food.Andao_Zhou4 = {2084}
tDialog_Food.Andao_Zhou7 = {2099}
tDialog_Food.LunNade_Zhou7 = {2100}
tDialog_Food.JiLa_Zhou2 = {2085}
tDialog_Food.JiLa_Zhou3 = {2086}
tDialog_Food.JiLa_Zhou4 = {2087}
tDialog_Food.JiLa_Zhou5 = {2088}
tDialog_Food.JiLa_Zhou6 = {2089}
tDialog_Food.JiLa_Zhou7 = {2101}
tDialog_Food.BiDuoMao_Zhou1 = {2090,2091}
tDialog_Food.BiDuoMao_Zhou3 = {2092}
tDialog_Food.BiDuoMao_Zhou4 = {2093}
tDialog_Food.BiDuoMao_Zhou5 = {2094}
tDialog_Food.BiDuoMao_Zhou6 = {2095}
tDialog_Food.AiSaiEr_Zhou3 = {2096}
tDialog_Food.AiSaiEr_Zhou5 = {2097}
tDialog_Food.AiSaiEr_Zhou6 = {2098}



rwtNpc[tNpc_Mercenary[1]] = rwtNpc[tNpc_Mercenary[1]] or {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][1]["Level"] = 1
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][1]["DayDialog"] = tDialog_League.Andaofu_Day_D
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][1]["NightDialog"] = tDialog_League.Andaofu_Night_D
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][2]["Level"] = 2
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][2]["DayDialog"] = tDialog_League.Andaofu_Day_C
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][2]["NightDialog"] = tDialog_League.Andaofu_Night_C
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][3]["Level"] = 3
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][3]["DayDialog"] = tDialog_League.Andaofu_Day_B
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][3]["NightDialog"] = tDialog_League.Andaofu_Night_B
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][4] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][4]["Level"] = 4
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][4]["DayDialog"] = tDialog_League.Andaofu_Day_A
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][4]["NightDialog"] = tDialog_League.Andaofu_Night_A
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][5] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][5]["Level"] = 5
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][5]["DayDialog"] = tDialog_League.Andaofu_Day_S
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][5]["NightDialog"] = tDialog_League.Andaofu_Night_S
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][6] = {}
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][6]["Level"] = 6
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][6]["DayDialog"] = tDialog_League.Andaofu_Day_SS
rwtNpc[tNpc_Mercenary[1]]["LeagueDialog"][6]["NightDialog"] = tDialog_League.Andaofu_Night_SS
--美食闲聊
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"] = {}
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][1] = {}
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][1]["WeekDay"] = CONST_FOOD_TIME.Tuesday
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][1]["AllDayDialog"] = tDialog_Food.Andao_Zhou2
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][2] = {}
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][2]["WeekDay"] = CONST_FOOD_TIME.Thursday
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][2]["AllDayDialog"] = tDialog_Food.Andao_Zhou4
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][3] = {}
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][3]["WeekDay"] = CONST_FOOD_TIME.Sunday
rwtNpc[tNpc_Mercenary[1]]["FoodDialog"][3]["AllDayDialog"] = tDialog_Food.Andao_Zhou7

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
--【舌尖上的联盟】接任务按钮
rwtNpc[tNpc_Mercenary[1]]["Option"][2] = {}
rwtNpc[tNpc_Mercenary[1]]["Option"][2]["Title"]= tLuaText[LANGUAGE_CONFIG][40030] --[40030] ="舌尖上的联盟" ,
rwtNpc[tNpc_Mercenary[1]]["Option"][2]["State"] = 0
rwtNpc[tNpc_Mercenary[1]]["Option"][2]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return rwFoodTask_Random(nNpcId)
end

rwtNpc[tNpc_Mercenary[1]]["Option"][2]["Func"] = function(nNpcTypeId)
    ---根据数据库接取任务
    rwFoodTask_AcceptTaskByUserRecord()
end
--【舌尖上的联盟】接任务按钮结束


--景点 自律联盟告示板（只显示名称 暂保留对白）
local nNpc_GaoShiByZLLM = 3460
local nNpcGroup_GaoShiByZLLM  = 70011
local nGenId_NpcGroup_GaoShiByZLLM = 1000151
local nTemp_FirstOpenReward = 1231
--rwtNpc[nNpc_GaoShiByZLLM]["DialogId"] = {1627,1628}
rwtNpcGroup[nNpcGroup_GaoShiByZLLM] = rwtNpcGroup[nNpcGroup_GaoShiByZLLM] or {}
rwtNpcGroup[nNpcGroup_GaoShiByZLLM]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_GaoShiByZLLM]["NpcId"]= nNpc_GaoShiByZLLM

rwtNpc[nNpc_GaoShiByZLLM] = rwtNpc[nNpc_GaoShiByZLLM] or {}
rwtNpc[nNpc_GaoShiByZLLM]["NpcProcess"] = function()
   if not rwHasUserRecordData_System_Unlock(CONST_SYSTEM_FUNCTION.DAILY_TASK) then
        rwOpenNpcChatDialog(1795)
    elseif not (rwTempDataGetValue(nTemp_FirstOpenReward,CONST_TEMP_DATA.Data1) == 1) then
        rwOpenNpcChatDialog(12719)
        rwUserTempDataSet(nTemp_FirstOpenReward,1,CONST_TEMP_DATA.Data1)
    else
        rwOpenLocalWnd(CONST_MENUTYPE.Reward)
    end
end



--日常任务NPC  伦纳德
rwtNpc[tNpc_Mercenary[3]] = rwtNpc[tNpc_Mercenary[3]] or {}
rwtNpc[tNpc_Mercenary[3]]["ChkOpen"] = true
rwtNpc[tNpc_Mercenary[3]]["NotOpenDialogId"] = {1015,1016,1017}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][1]["Level"] = 1
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][1]["DayDialog"] = tDialog_League.LunNaDe_Day_D
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][1]["NightDialog"] = tDialog_League.LunNaDe_Night_D
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][2]["Level"] = 2
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][2]["DayDialog"] = tDialog_League.LunNaDe_Day_C
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][2]["NightDialog"] = tDialog_League.LunNaDe_Night_C
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][3]["Level"] = 3
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][3]["DayDialog"] = tDialog_League.LunNaDe_DayAll
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][3]["NightDialog"] = tDialog_League.LunNaDe_Night_B
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][4] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][4]["Level"] = 4
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][4]["DayDialog"] = tDialog_League.LunNaDe_DayAll
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][4]["NightDialog"] = tDialog_League.LunNaDe_Night_A
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][5] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][5]["Level"] = 5
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][5]["DayDialog"] = tDialog_League.LunNaDe_DayAll
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][5]["NightDialog"] = tDialog_League.LunNaDe_Night_S
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][6] = {}
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][6]["Level"] = 6
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][6]["DayDialog"] = tDialog_League.LunNaDe_DayAll
rwtNpc[tNpc_Mercenary[3]]["LeagueDialog"][6]["NightDialog"] = tDialog_League.LunNaDe_Night_SS

--美食闲聊
rwtNpc[tNpc_Mercenary[3]]["FoodDialog"] = {}
rwtNpc[tNpc_Mercenary[3]]["FoodDialog"]["AlwaysDialog"] = {2153,2154}
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
--【一直在的闲聊线索按钮】
rwtNpc[tNpc_Mercenary[3]]["Option"][2] = {}
rwtNpc[tNpc_Mercenary[3]]["Option"][2]["Title"]= tLuaText[LANGUAGE_CONFIG][40031] --[40031] ="一直在的按钮" ,
rwtNpc[tNpc_Mercenary[3]]["Option"][2]["State"] = 0
rwtNpc[tNpc_Mercenary[3]]["Option"][2]["Chk"] = function(nNpcId)
    --【主线是否完成】
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
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
rwtNpc[tNpc_Mercenary[2]]["ChkOpen"] = true
--rwtNpc[tNpc_Mercenary[2]]["DialogId"] = {nZilvlianmengTask_Dialog_Jila}  
rwtNpc[tNpc_Mercenary[2]]["NotOpenDialogId"] = {1022,1023,1024}
rwtNpc[tNpc_Mercenary[2]]["TaskIngDialogId"] = {1468,1469,1470}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][1]["Level"] = 1
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][1]["DayDialog"] = tDialog_League.JiLa_Day_D
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][1]["NightDialog"] = tDialog_League.JiLa_Night_D
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][2]["Level"] = 2
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][2]["DayDialog"] = tDialog_League.JiLa_Day_C
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][2]["NightDialog"] = tDialog_League.JiLa_Night_C
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][3]["Level"] = 3
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][3]["DayDialog"] = tDialog_League.JiLa_Day_B
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][3]["NightDialog"] = tDialog_League.JiLa_Night_B
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][4] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][4]["Level"] = 4
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][4]["DayDialog"] = tDialog_League.JiLa_DayAll
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][4]["NightDialog"] = tDialog_League.JiLa_Night_A
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][5] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][5]["Level"] = 5
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][5]["DayDialog"] = tDialog_League.JiLa_DayAll
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][5]["NightDialog"] = tDialog_League.JiLa_Night_S
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][6] = {}
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][6]["Level"] = 6
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][6]["DayDialog"] = tDialog_League.JiLa_DayAll
rwtNpc[tNpc_Mercenary[2]]["LeagueDialog"][6]["NightDialog"] = tDialog_League.JiLa_Night_SS
--美食闲聊
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][1] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][1]["WeekDay"] = CONST_FOOD_TIME.Tuesday
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][1]["AllDayDialog"] = tDialog_Food.JiLa_Zhou2
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][2] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][2]["WeekDay"] = CONST_FOOD_TIME.Wednesday
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][2]["AllDayDialog"] = tDialog_Food.JiLa_Zhou3
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][3] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][3]["WeekDay"] = CONST_FOOD_TIME.Thursday
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][3]["AllDayDialog"] = tDialog_Food.JiLa_Zhou4
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][4] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][4]["WeekDay"] = CONST_FOOD_TIME.Friday
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][4]["AllDayDialog"] = tDialog_Food.JiLa_Zhou5
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][5] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][5]["WeekDay"] = CONST_FOOD_TIME.Saturday
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][5]["AllDayDialog"] = tDialog_Food.JiLa_Zhou6
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][6] = {}
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][6]["WeekDay"] = CONST_FOOD_TIME.Sunday
rwtNpc[tNpc_Mercenary[2]]["FoodDialog"][6]["AllDayDialog"] = tDialog_Food.JiLa_Zhou7

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
    if not rwHasUserRecordData_System_Unlock(CONST_SYSTEM_FUNCTION.DAILY_TASK) then
        return false
    end
    return true
end
rwtNpc[tNpc_Mercenary[2]]["Option"][3]["Func"] = function(nNpcTypeId)
    --第一次弹出对白
    if not (rwTempDataGetValue(nTemp_FirstOpenReward,CONST_TEMP_DATA.Data1) == 1) then
        rwOpenNpcChatDialog(12719)
        rwUserTempDataSet(nTemp_FirstOpenReward,1,CONST_TEMP_DATA.Data1)
    else
        rwOpenLocalWnd(CONST_MENUTYPE.Reward)
    end
end


--巡查任务NPC 比多猫
rwtNpc[tNpc_Mercenary[4]] = rwtNpc[tNpc_Mercenary[4]] or {}
rwtNpc[tNpc_Mercenary[4]]["ChkOpen"] = true
--rwtNpc[tNpc_Mercenary[4]]["DialogId"] = {1506}  --任务开启了
rwtNpc[tNpc_Mercenary[4]]["NotOpenDialogId"] = {1027,1028,1029,1030,1031}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][1] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][1]["Level"] = 1
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][1]["DayDialog"] = tDialog_League.BiDuoMao_Day_D
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][1]["NightDialog"] = tDialog_League.BiDuoMao_Night_D
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][2] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][2]["Level"] = 2
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][2]["DayDialog"] = tDialog_League.BiDuoMao_Day_C
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][2]["NightDialog"] = tDialog_League.BiDuoMao_Night_C
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][3] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][3]["Level"] = 3
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][3]["DayDialog"] = tDialog_League.BiDuoMao_DayAll
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][3]["NightDialog"] = tDialog_League.BiDuoMao_Night_B
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][4] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][4]["Level"] = 4
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][4]["DayDialog"] = tDialog_League.BiDuoMao_DayAll
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][4]["NightDialog"] = tDialog_League.BiDuoMao_Night_A
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][5] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][5]["Level"] = 5
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][5]["DayDialog"] = tDialog_League.BiDuoMao_DayAll
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][5]["NightDialog"] = tDialog_League.BiDuoMao_Night_S
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][6] = {}
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][6]["Level"] = 6
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][6]["DayDialog"] = tDialog_League.BiDuoMao_DayAll
rwtNpc[tNpc_Mercenary[4]]["LeagueDialog"][6]["NightDialog"] = tDialog_League.BiDuoMao_Night_SS
--美食闲聊
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"] = {}
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][1] = {}
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][1]["WeekDay"] = CONST_FOOD_TIME.Monday
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][1]["AllDayDialog"] = tDialog_Food.BiDuoMao_Zhou1
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][2] = {}
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][2]["WeekDay"] = CONST_FOOD_TIME.Wednesday
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][2]["AllDayDialog"] = tDialog_Food.BiDuoMao_Zhou3
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][3] = {}
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][3]["WeekDay"] = CONST_FOOD_TIME.Thursday
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][3]["AllDayDialog"] = tDialog_Food.BiDuoMao_Zhou4
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][4] = {}
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][4]["WeekDay"] = CONST_FOOD_TIME.Friday
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][4]["AllDayDialog"] = tDialog_Food.BiDuoMao_Zhou5
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][5] = {}
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][5]["WeekDay"] = CONST_FOOD_TIME.Saturday
rwtNpc[tNpc_Mercenary[4]]["FoodDialog"][5]["AllDayDialog"] = tDialog_Food.BiDuoMao_Zhou6

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


--酒馆
rwtNpc[nNpc_Pub] = {}

--风迹速递
local nChkOpenQuickSend_Task = 70262

rwtNpc[tNpc_QuickSend.ZongGuan] = rwtNpc[tNpc_QuickSend.ZongGuan] or {}
rwtNpc[tNpc_QuickSend.ZongGuan]["ChkOpen"] = true
rwtNpc[tNpc_QuickSend.ZongGuan]["DialogId"] = {12448,12449} 
rwtNpc[tNpc_QuickSend.ZongGuan]["NotOpenDialogId"] = {12445}
--rwtNpc[tNpc_QuickSend.ZongGuan]["TaskIngDialogId"] = {12450,12451}
--风迹速递功能暂时屏蔽
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"] = {}
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1] = {}
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1]["Title"]= "领取速递"
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1]["State"] = 0
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1]["Chk"] = function(nNpcId)
--    if not rwTaskIsSuccess(nChkOpenQuickSend_Task) then
--        return false
--    end	
--    return true
--end

--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1]["Func"] = function(nNpcTypeId) --点击按钮触发
--	if not rwTempDataIsExist(1210,0) then
--        rwTempDataAdd(1210, 0)
--    end
--	if rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) > 0 then
--		if  QuickSendJudgeAcceptTask() then
--			rwOpenNpcChatDialog(12451,CONST_NPCCHAT_TYPE.NPC)
--		end
--	else
--		QuickSendAcceptTaskFromNpc()			
--    end        
--end
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2] = {}
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2]["Title"]= "速递任务（未开启）"
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2]["State"] = 0
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2]["Chk"] = function(nNpcId)
--    if rwTaskIsSuccess(nChkOpenQuickSend_Task) then
--        return false
--    end	
--    return true
--end
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2]["Func"] = function(nNpcTypeId) --点击按钮触发
--	rwOpenNpcChatDialog(12888,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
--end



--rwtNpc[tNpc_QuickSend.GuYuan] = rwtNpc[tNpc_QuickSend.GuYuan] or {}
--rwtNpc[tNpc_QuickSend.GuYuan]["DialogId"] = {12442,12443,12444} 

--rwtNpc[tNpc_QuickSend.JiQiRen] = rwtNpc[tNpc_QuickSend.JiQiRen] or {}
--rwtNpc[tNpc_QuickSend.JiQiRen]["DialogId"] = {12560} 

--function rwZilvLianMeng_Open2L() 
--    --创建去2L的NPC组
--    if not rwHasGenEvent(1000249) then              
--        rwAddGenEvent(1000249)
--    end
--    --删除不能去2L的NPC组
--    if  rwHasGenEvent(1001028) then              
--        rwDelGenEvent(1001028)
--    end
--end
----自律联盟1~2切屏点 玩家10级开启
--rwtLevelUp_Func[10] = rwtLevelUp_Func[10] or {}
--table.insert(rwtLevelUp_Func[10],rwZilvLianMeng_Open2L)


---------主线任务NPC------
--莱克
rwtNpc[tNpc_MainTask[5]] = rwtNpc[tNpc_MainTask[5]] or {}
rwtNpc[tNpc_MainTask[5]]["DialogId"] = 1098
--萨林
rwtNpc[tNpc_MainTask[9]] = rwtNpc[tNpc_MainTask[9]] or {}
rwtNpc[tNpc_MainTask[9]]["DialogId"] = 1685

rwtNpc[tNpc_MainTask[8]] = rwtNpc[tNpc_MainTask[8]] or {}
rwtNpc[tNpc_MainTask[8]]["DialogId"] = {1275,1276,1277}

--汉莎
rwtNpc[tNpc_MainTask[10]] = rwtNpc[tNpc_MainTask[10]] or {}
rwtNpc[tNpc_MainTask[10]]["DialogId"] = 1681
--斯达
rwtNpc[tNpc_MainTask[11]] = rwtNpc[tNpc_MainTask[11]] or {}
rwtNpc[tNpc_MainTask[11]]["DialogId"] = 1682
--卡佳
rwtNpc[tNpc_MainTask[12]] = rwtNpc[tNpc_MainTask[12]] or {}
rwtNpc[tNpc_MainTask[12]]["DialogId"] = 1683
--达卡
rwtNpc[tNpc_MainTask[13]] = rwtNpc[tNpc_MainTask[13]] or {}
rwtNpc[tNpc_MainTask[13]]["DialogId"] = 1684


--桑托酒馆
rwtNpc[tNpc_MainTask[14]] = rwtNpc[tNpc_MainTask[14]] or {}
rwtNpc[tNpc_MainTask[14]]["DialogId"] = 1995
rwtDialog[1995] = {}
rwtDialog[1995]["CloseDialog"] = 1
--尼尔克一号寓
rwtNpc[tNpc_MainTask[15]] = rwtNpc[tNpc_MainTask[15]] or {}
rwtNpc[tNpc_MainTask[15]]["DialogId"] = 1996
rwtDialog[1996] = {}
rwtDialog[1996]["CloseDialog"] = 1
--史雷恩公馆
rwtNpc[tNpc_MainTask[16]] = rwtNpc[tNpc_MainTask[16]] or {}
rwtNpc[tNpc_MainTask[16]]["DialogId"] = 1997
rwtDialog[1997] = {}
rwtDialog[1997]["CloseDialog"] = 1
--克扎哈公寓
rwtNpc[tNpc_MainTask[17]] = rwtNpc[tNpc_MainTask[17]] or {}
rwtNpc[tNpc_MainTask[17]]["DialogId"] = 1998
rwtDialog[1998] = {}
rwtDialog[1998]["CloseDialog"] = 1
--------------王宫内NPC------------
--主线任务NPC
local tNpcGroup_MainTask = {}
local tNpcGroup_MainTask_GenId = {}
--闲聊NPC
local tNpcGroup_Chat = {}
local tNpcGroup_Chat_GenId = {}

--已登基赫丽ID
tNpcGroup_MainTask[8] = 20108 
tNpcGroup_MainTask_GenId[8] = 2001523

--大学士
tNpcGroup_Chat[35] = 20392 
tNpcGroup_Chat_GenId[35] = 1000122
--财政大臣
tNpcGroup_Chat[36] = 20393 
tNpcGroup_Chat_GenId[36] = 1000123


---------------------NPC群组ID-----------------
-------陷阱---------
local nTrap_1 = 30171
local nTrap_1_GenId = 2001199

rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}   --任务1陷阱
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

-----------建筑-------

--酒馆
local nNpcGroup_Pub = 10009
local nNpcGroup_Pub_GenId = 2001537
rwtNpcGroup[nNpcGroup_Pub] = rwtNpcGroup[nNpcGroup_Pub] or {}
rwtNpcGroup[nNpcGroup_Pub]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcGroup_Pub]["NpcId1"]= nNpc_Pub

-------佣兵公会NPC
local tNpcGroup_Mercenary = {}

tNpcGroup_Mercenary[1] = 20112    --铁臂托马斯
tNpcGroup_Mercenary[3] = 20113    --皮尔
tNpcGroup_Mercenary[2] = 20114    --吉拉（透明）
tNpcGroup_Mercenary[4] = 20115   --比多猫
tNpcGroup_Mercenary[5] = 20116    --艾赛尔
tNpcGroup_Mercenary[6] = 20575    --吉拉

rwtNpcGroup[tNpcGroup_Mercenary[1]] = rwtNpcGroup[tNpcGroup_Mercenary[1]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[1]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[1]]["NpcId"]= tNpc_Mercenary[1]

rwtNpcGroup[tNpcGroup_Mercenary[3]] = rwtNpcGroup[tNpcGroup_Mercenary[3]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[3]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[3]]["NpcId"]= tNpc_Mercenary[3]


rwtDialog[1465] = rwtDialog[1465] or {}
rwtDialog[1465]["DialogEnd"] = function ()
    local nTaskId = MercenaryDailyTask_Random()
        if nTaskId and nTaskId ~= 0 then
        local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask()
    end   
end 
rwtNpcGroup[tNpcGroup_Mercenary[2]] = rwtNpcGroup[tNpcGroup_Mercenary[2]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[2]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[2]]["NpcId"]= tNpc_Mercenary[2]

rwtNpcGroup[tNpcGroup_Mercenary[4]] = rwtNpcGroup[tNpcGroup_Mercenary[4]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[4]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[4]]["NpcId"]= tNpc_Mercenary[4]

rwtNpcGroup[tNpcGroup_Mercenary[6]] = rwtNpcGroup[tNpcGroup_Mercenary[6]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[6]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc

--比多猫
rwtDialog[1507] = rwtDialog[1507] or {}
rwtDialog[1507]["DialogEnd"] = function ()
    local nTaskId = PatrolTask_First_Random()
        if nTaskId and nTaskId ~= 0 then
        local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask()
    end   
end 


rwtNpcGroup[tNpcGroup_Mercenary[5]] = rwtNpcGroup[tNpcGroup_Mercenary[5]] or {}
rwtNpcGroup[tNpcGroup_Mercenary[5]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Mercenary[5]]["NpcId"]= tNpc_Mercenary[5]

--风迹快递
local tNpcGroup_QuickSend = {}
tNpcGroup_QuickSend.ZongGuan = 20874	--风迹快递总管
--tNpcGroup_QuickSend.GuYuan = 20875	--风迹快递雇员
--tNpcGroup_QuickSend.JiQiRen = 20876	--风迹快递机器人

rwtNpcGroup[tNpcGroup_QuickSend.ZongGuan] = rwtNpcGroup[tNpcGroup_QuickSend.ZongGuan] or {}
rwtNpcGroup[tNpcGroup_QuickSend.ZongGuan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_QuickSend.ZongGuan]["NpcId"]= tNpc_QuickSend.ZongGuan

--rwtNpcGroup[tNpcGroup_QuickSend.GuYuan] = rwtNpcGroup[tNpcGroup_QuickSend.GuYuan] or {}
--rwtNpcGroup[tNpcGroup_QuickSend.GuYuan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tNpcGroup_QuickSend.GuYuan]["NpcId"]= tNpc_QuickSend.GuYuan

--rwtNpcGroup[tNpcGroup_QuickSend.JiQiRen] = rwtNpcGroup[tNpcGroup_QuickSend.JiQiRen] or {}
--rwtNpcGroup[tNpcGroup_QuickSend.JiQiRen]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tNpcGroup_QuickSend.JiQiRen]["NpcId"]= tNpc_QuickSend.JiQiRen


----------------主线任务NPC-----------
--莱克
tNpcGroup_MainTask[5] = 20117
tNpcGroup_MainTask_GenId[5] = 2001661

rwtNpcGroup[tNpcGroup_MainTask[5]] = rwtNpcGroup[tNpcGroup_MainTask[5]] or {}
rwtNpcGroup[tNpcGroup_MainTask[5]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[5]]["NpcId"]= tNpc_MainTask[5]
--卫兵
local nSingleNpc_WeiBing = 20125
local nSingleNpc_WeiBing_GenId_1 = 1000002
local nSingleNpc_WeiBing_GenId_2 = 1000003


--诺尔
tNpcGroup_MainTask[4] = 20225
tNpcGroup_MainTask_GenId[4] = 1000044
rwtNpcGroup[tNpcGroup_MainTask[4]] = rwtNpcGroup[tNpcGroup_MainTask[4]] or {}
rwtNpcGroup[tNpcGroup_MainTask[4]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[4]]["NpcId"]= tNpc_MainTask[4]

rwtNpcGroup[20583] = rwtNpcGroup[20583] or {}
rwtNpcGroup[20583]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20583]["NpcId"]= tNpc_MainTask[4]

--薇莉丝
tNpcGroup_MainTask[3] = 20226
tNpcGroup_MainTask_GenId[3] = 1000045
rwtNpcGroup[tNpcGroup_MainTask[3]] = rwtNpcGroup[tNpcGroup_MainTask[3]] or {}
rwtNpcGroup[tNpcGroup_MainTask[3]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[3]]["NpcId"]= tNpc_MainTask[3]

--泰雷
tNpcGroup_MainTask[1] = 20227
tNpcGroup_MainTask_GenId[1] = 1000046
rwtNpcGroup[tNpcGroup_MainTask[1]] = rwtNpcGroup[tNpcGroup_MainTask[1]] or {}
rwtNpcGroup[tNpcGroup_MainTask[1]]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tNpcGroup_MainTask[1]]["NpcId1"]= tNpc_MainTask[1]

--特罗德
tNpcGroup_MainTask[7] = 20228
tNpcGroup_MainTask_GenId[7] = 1000047
rwtNpcGroup[tNpcGroup_MainTask[7]] = rwtNpcGroup[tNpcGroup_MainTask[7]] or {}
rwtNpcGroup[tNpcGroup_MainTask[7]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[7]]["NpcId"]= tNpc_MainTask[7]

--汉莎
tNpcGroup_MainTask[10] = 20571
tNpcGroup_MainTask_GenId[10] = 1000175
rwtNpcGroup[tNpcGroup_MainTask[10]] = rwtNpcGroup[tNpcGroup_MainTask[10]] or {}
rwtNpcGroup[tNpcGroup_MainTask[10]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[10]]["NpcId"]= tNpc_MainTask[10]

--斯达
tNpcGroup_MainTask[11] = 20572
tNpcGroup_MainTask_GenId[11] = 1000176
rwtNpcGroup[tNpcGroup_MainTask[11]] = rwtNpcGroup[tNpcGroup_MainTask[11]] or {}
rwtNpcGroup[tNpcGroup_MainTask[11]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[11]]["NpcId"]= tNpc_MainTask[11]

--卡佳
tNpcGroup_MainTask[12] = 20573
tNpcGroup_MainTask_GenId[12] = 1000177
rwtNpcGroup[tNpcGroup_MainTask[12]] = rwtNpcGroup[tNpcGroup_MainTask[12]] or {}
rwtNpcGroup[tNpcGroup_MainTask[12]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[12]]["NpcId"]= tNpc_MainTask[12]

--达卡
tNpcGroup_MainTask[13] = 20574
tNpcGroup_MainTask_GenId[13] = 1000178
rwtNpcGroup[tNpcGroup_MainTask[13]] = rwtNpcGroup[tNpcGroup_MainTask[13]] or {}
rwtNpcGroup[tNpcGroup_MainTask[13]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[13]]["NpcId"]= tNpc_MainTask[13]


--桑托酒馆
tNpcGroup_MainTask[14] = 21069
tNpcGroup_MainTask_GenId[14] = 1000266
rwtNpcGroup[tNpcGroup_MainTask[14]] = rwtNpcGroup[tNpcGroup_MainTask[14]] or {}
rwtNpcGroup[tNpcGroup_MainTask[14]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[14]]["NpcId"]= tNpc_MainTask[14]
--尼尔克一号寓
tNpcGroup_MainTask[15] = 21070
tNpcGroup_MainTask_GenId[15] = 1000267
rwtNpcGroup[tNpcGroup_MainTask[15]] = rwtNpcGroup[tNpcGroup_MainTask[15]] or {}
rwtNpcGroup[tNpcGroup_MainTask[15]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[15]]["NpcId"]= tNpc_MainTask[15]
--史雷恩公馆
tNpcGroup_MainTask[16] = 21071
tNpcGroup_MainTask_GenId[16] = 1000268
rwtNpcGroup[tNpcGroup_MainTask[16]] = rwtNpcGroup[tNpcGroup_MainTask[16]] or {}
rwtNpcGroup[tNpcGroup_MainTask[16]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[16]]["NpcId"]= tNpc_MainTask[16]
--克扎哈公寓
tNpcGroup_MainTask[17] = 21072
tNpcGroup_MainTask_GenId[17] = 1000269
rwtNpcGroup[tNpcGroup_MainTask[17]] = rwtNpcGroup[tNpcGroup_MainTask[17]] or {}
rwtNpcGroup[tNpcGroup_MainTask[17]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[17]]["NpcId"]= tNpc_MainTask[17]
------------------------主城闲置NPC---------------
local nIdleSingleNpc_WeiBing = 20145      --卫兵
local tIdleSingleNpc_WeiBing_GenId = {1000004,1000005,1000006,1000007,1000008,1000009,1000034,1000035,1000036,1000037,
                                      1000038,1000039,1000040,1000041,1000042,1000043}

--面包大王诺阿
rwtNpcGroup[20231] = rwtNpcGroup[20231] or {}
rwtNpcGroup[20231]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20231]["NpcId"]= tNpc_Chat[1]
--子爵格兰特
rwtNpcGroup[20232] = rwtNpcGroup[20232] or {}
rwtNpcGroup[20232]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20232]["NpcId"]= tNpc_Chat[2]
--警报机器人·滴
rwtNpcGroup[20146] = rwtNpcGroup[20146] or {}
rwtNpcGroup[20146]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20146]["NpcId"]= tNpc_Chat[3]
--兔族小黑
rwtNpcGroup[20234] = rwtNpcGroup[20234] or {}
rwtNpcGroup[20234]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20234]["NpcId"]= tNpc_Chat[4]
--女巫莉莲
rwtNpcGroup[20235] = rwtNpcGroup[20235] or {}
rwtNpcGroup[20235]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20235]["NpcId"]= tNpc_Chat[5]
--落选的提琴师李
rwtNpcGroup[20236] = rwtNpcGroup[20236] or {}
rwtNpcGroup[20236]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20236]["NpcId"]= tNpc_Chat[6]
--女剑士玛塔
rwtNpcGroup[20237] = rwtNpcGroup[20237]or {}
rwtNpcGroup[20237]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20237]["NpcId"]= tNpc_Chat[7]
--露露
rwtNpcGroup[20238] = rwtNpcGroup[20238] or {}
rwtNpcGroup[20238]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20238]["NpcId"]= tNpc_Chat[8]
--宫廷书记员弗林
rwtNpcGroup[20240] = rwtNpcGroup[20240] or {}
rwtNpcGroup[20240]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20240]["NpcId"]= tNpc_Chat[9]
--詹尼佛大妈
rwtNpcGroup[20229] = rwtNpcGroup[20229] or {}
rwtNpcGroup[20229]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20229]["NpcId"]= tNpc_Chat[10]

--女仆伊丽丝
rwtNpcGroup[20230] = rwtNpcGroup[20230] or {}
rwtNpcGroup[20230]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20230]["NpcId"]= tNpc_Chat[11]
--警报机器人·嘟
rwtNpcGroup[20250] = rwtNpcGroup[20250]or {}
rwtNpcGroup[20250]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20250]["NpcId"]= tNpc_Chat[12]
--大树精麦克斯
rwtNpcGroup[20251] = rwtNpcGroup[20251] or {}
rwtNpcGroup[20251]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20251]["NpcId"]= tNpc_Chat[13]
--小树精敏特
rwtNpcGroup[20252]= rwtNpcGroup[20252] or {}
rwtNpcGroup[20252]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20252]["NpcId"]= tNpc_Chat[14]
--哥布林商贩奥格
rwtNpcGroup[20253] = rwtNpcGroup[20253] or {}
rwtNpcGroup[20253]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20253]["NpcId"]= tNpc_Chat[15]
--皮曼1号
rwtNpcGroup[20254] = rwtNpcGroup[20254] or {}
rwtNpcGroup[20254]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20254]["NpcId"]= tNpc_Chat[16]
--哥布林萨顿
rwtNpcGroup[20260] = rwtNpcGroup[20260] or {}
rwtNpcGroup[20260]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20260]["NpcId"]= tNpc_Chat[22]
--阿噗小圆
rwtNpcGroup[20261]= rwtNpcGroup[20261]or {}
rwtNpcGroup[20261]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20261]["NpcId"]= tNpc_Chat[23]
--树精毛毛
rwtNpcGroup[20262]= rwtNpcGroup[20262] or {}
rwtNpcGroup[20262]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20262]["NpcId"]= tNpc_Chat[24]
--巨斧吉塔
rwtNpcGroup[20269] = rwtNpcGroup[20269] or {}
rwtNpcGroup[20269]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20269]["NpcId"]= tNpc_Chat[25]
--铁锤舒尔多
rwtNpcGroup[20270] = rwtNpcGroup[20270] or {}
rwtNpcGroup[20270]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20270]["NpcId"]= tNpc_Chat[26]
--戴琳斯
rwtNpcGroup[20152] = rwtNpcGroup[20152] or {}
rwtNpcGroup[20152]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20152]["NpcId"]= tNpc_Chat[27]
--宫廷歌姬露娜
rwtNpcGroup[20151] = rwtNpcGroup[20151] or {}
rwtNpcGroup[20151]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20151]["NpcId"]= tNpc_Chat[28]
--少女玛格
rwtNpcGroup[20148] = rwtNpcGroup[20148] or {}
rwtNpcGroup[20148]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20148]["NpcId"]= tNpc_Chat[29]
--艾西瓦娅
rwtNpcGroup[20274] = rwtNpcGroup[20274] or {}
rwtNpcGroup[20274]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20274]["NpcId"]= tNpc_Chat[30]
--吟游诗人玛门
rwtNpcGroup[20153] = rwtNpcGroup[20153] or {}
rwtNpcGroup[20153]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20153]["NpcId"]= tNpc_Chat[31]
--乞讨老者
rwtNpcGroup[20147] = rwtNpcGroup[20147] or {}
rwtNpcGroup[20147]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20147]["NpcId"]= tNpc_Chat[33]
--哥布林商贩麦肯
rwtNpcGroup[20150] = rwtNpcGroup[20150]or {}
rwtNpcGroup[20150]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20150]["NpcId"]= tNpc_Chat[34]

-------主城排布调整新增NPC
--少女凯瑟琳
rwtNpcGroup[20380] = rwtNpcGroup[20380]or {}
rwtNpcGroup[20380]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20380]["NpcId"] = tNpc_Chat[37]
--少女雷茜
rwtNpcGroup[20381] = rwtNpcGroup[20381]or {}
rwtNpcGroup[20381]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20381]["NpcId"] = tNpc_Chat[38]
--矮人小贩
rwtNpcGroup[20382] = rwtNpcGroup[20382]or {}
rwtNpcGroup[20382]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20382]["NpcId"] = tNpc_Chat[39]
--子爵德福
rwtNpcGroup[20383] = rwtNpcGroup[20383]or {}
rwtNpcGroup[20383]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20383]["NpcId"] = tNpc_Chat[40]
--冒险家小眼镜
rwtNpcGroup[20384] = rwtNpcGroup[20384]or {}
rwtNpcGroup[20384]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20384]["NpcId"] = tNpc_Chat[41]
--龟小豆
rwtNpcGroup[20390] = rwtNpcGroup[20390]or {}
rwtNpcGroup[20390]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20390]["NpcId"] = tNpc_Chat[47]
--龟族先知
rwtNpcGroup[20391] = rwtNpcGroup[20391]or {}
rwtNpcGroup[20391]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20391]["NpcId"] = tNpc_Chat[48]

--哥布林怀特 genid:1000193
rwtNpcGroup[20878] = rwtNpcGroup[20878]or {}
rwtNpcGroup[20878]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20878]["NpcId"] = tNpc_Chat[65]
--贝蒂 genid:1000194
rwtNpcGroup[20879] = rwtNpcGroup[20879]or {}
rwtNpcGroup[20879]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20879]["NpcId"] = tNpc_Chat[66]


----------------主城永久NPC-----------------
--占星师米勒
local nSingleNpc_Miller = 20053
local nSingleNpc_Miller_GenId = 1000001


rwtNpcGroup[nSingleNpc_Miller] = rwtNpcGroup[nSingleNpc_Miller] or {}
rwtNpcGroup[nSingleNpc_Miller]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_Miller]["NpcId"]= tNpc_MainTask[6]

rwtNpc[tNpc_MainTask[6]] = {}

------------王宫内NPC-----------------
rwtNpcGroup[tNpcGroup_MainTask[8]] = rwtNpcGroup[tNpcGroup_MainTask[8]] or {}  --赫丽
rwtNpcGroup[tNpcGroup_MainTask[8]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[8]]["NpcId"]= tNpc_MainTask[8]

--大学士
rwtNpcGroup[tNpcGroup_Chat[35]] = rwtNpcGroup[tNpcGroup_Chat[35]] or {}  
rwtNpcGroup[tNpcGroup_Chat[35]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[35]]["NpcId"]= tNpc_Chat[35]
--财政大臣
rwtNpcGroup[tNpcGroup_Chat[36]] = rwtNpcGroup[tNpcGroup_Chat[36]] or {}  
rwtNpcGroup[tNpcGroup_Chat[36]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[36]]["NpcId"]= tNpc_Chat[36]


----------------自由联盟NPC-----------------
tNpcGroup_Chat[49] = 20213
rwtNpcGroup[tNpcGroup_Chat[49]] = rwtNpcGroup[tNpcGroup_Chat[49]] or {}  --比格
rwtNpcGroup[tNpcGroup_Chat[49]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[49]]["NpcId"]= tNpc_Chat[49]

tNpcGroup_Chat[50] = 20214
rwtNpcGroup[tNpcGroup_Chat[50]] = rwtNpcGroup[tNpcGroup_Chat[50]] or {}  --图斯
rwtNpcGroup[tNpcGroup_Chat[50]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[50]]["NpcId"]= tNpc_Chat[50]

tNpcGroup_Chat[51] = 20215
rwtNpcGroup[tNpcGroup_Chat[51]] = rwtNpcGroup[tNpcGroup_Chat[51]] or {}  --斯利
rwtNpcGroup[tNpcGroup_Chat[51]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[51]]["NpcId"]= tNpc_Chat[51]

tNpcGroup_Chat[52] = 20216
rwtNpcGroup[tNpcGroup_Chat[52]] = rwtNpcGroup[tNpcGroup_Chat[52]] or {}  --弗斯
rwtNpcGroup[tNpcGroup_Chat[52]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[52]]["NpcId"]= tNpc_Chat[52]

tNpcGroup_Chat[53] = 20217
rwtNpcGroup[tNpcGroup_Chat[53]] = rwtNpcGroup[tNpcGroup_Chat[53]] or {}  --斐佛
rwtNpcGroup[tNpcGroup_Chat[53]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[53]]["NpcId"]= tNpc_Chat[53]

tNpcGroup_Chat[54] = 20218
rwtNpcGroup[tNpcGroup_Chat[54]] = rwtNpcGroup[tNpcGroup_Chat[54]] or {}  --谢克斯
rwtNpcGroup[tNpcGroup_Chat[54]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[54]]["NpcId"]= tNpc_Chat[54]

tNpcGroup_Chat[55] = 20219
rwtNpcGroup[tNpcGroup_Chat[55]] = rwtNpcGroup[tNpcGroup_Chat[55]] or {}  --头条哥布林
rwtNpcGroup[tNpcGroup_Chat[55]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[55]]["NpcId"]= tNpc_Chat[55]

tNpcGroup_Chat[56] = 20220
rwtNpcGroup[tNpcGroup_Chat[56]] = rwtNpcGroup[tNpcGroup_Chat[56]] or {}  --卓娜
rwtNpcGroup[tNpcGroup_Chat[56]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[56]]["NpcId"]= tNpc_Chat[56]

tNpcGroup_Chat[57] = 20221
rwtNpcGroup[tNpcGroup_Chat[57]] = rwtNpcGroup[tNpcGroup_Chat[57]] or {}  --巨斧战士塔克
rwtNpcGroup[tNpcGroup_Chat[57]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[57]]["NpcId"]= tNpc_Chat[57]

tNpcGroup_Chat[58] = 20222
rwtNpcGroup[tNpcGroup_Chat[58]] = rwtNpcGroup[tNpcGroup_Chat[58]] or {}  --外乡人里茨
rwtNpcGroup[tNpcGroup_Chat[58]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[58]]["NpcId"]= tNpc_Chat[58]

tNpcGroup_Chat[59] = 20223
rwtNpcGroup[tNpcGroup_Chat[59]] = rwtNpcGroup[tNpcGroup_Chat[59]] or {}  --旅行者艾力
rwtNpcGroup[tNpcGroup_Chat[59]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[59]]["NpcId"]= tNpc_Chat[59]

tNpcGroup_Chat[60] = 20224
rwtNpcGroup[tNpcGroup_Chat[60]] = rwtNpcGroup[tNpcGroup_Chat[60]] or {}  --研究员拜希儿
rwtNpcGroup[tNpcGroup_Chat[60]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[60]]["NpcId"]= tNpc_Chat[60]

--酒馆米妮
tNpcGroup_Chat[61] = 20398
rwtNpcGroup[tNpcGroup_Chat[61]] = rwtNpcGroup[tNpcGroup_Chat[61]] or {}  --酒馆米妮
rwtNpcGroup[tNpcGroup_Chat[61]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[61]]["NpcId"]= tNpc_Chat[61]

--佣兵特伍德（NPC） 
tNpcGroup_Chat[62] = 20576
tNpcGroup_Chat_GenId[62] = 1001027
rwtNpcGroup[tNpcGroup_Chat[62]] = rwtNpcGroup[tNpcGroup_Chat[62]] or {}
rwtNpcGroup[tNpcGroup_Chat[62]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[62]]["NpcId"]= tNpc_Chat[62]

--佣兵特伍德（切屏点） 
tNpcGroup_Chat[63] = 20577
tNpcGroup_Chat_GenId[63] = 1001028
rwtNpcGroup[tNpcGroup_Chat[63]] = rwtNpcGroup[tNpcGroup_Chat[63]] or {}
rwtNpcGroup[tNpcGroup_Chat[63]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[63]]["NpcId"]= tNpc_Chat[63]

--巡逻守卫（NPC） 
tNpcGroup_Chat[64] = 20578
tNpcGroup_Chat_GenId[64] = 1001029
rwtNpcGroup[tNpcGroup_Chat[64]] = rwtNpcGroup[tNpcGroup_Chat[64]] or {}
rwtNpcGroup[tNpcGroup_Chat[64]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_Chat[64]]["NpcId"]= tNpc_Chat[64]



-----------------------------------首冲测试-----------------------------------------
--首冲按钮NPC  玩家掩码 1160
rwtNpcGroup[20491] = rwtNpcGroup[20491] or {}
rwtNpcGroup[20491]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
    local nUserRecordId = 1160
    if not rwTempDataIsExist(nUserRecordId) then		--判断是否存在掩码
		rwTempDataAdd(nUserRecordId)
	end
     local nGetVal = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data1) 
    if (nGetVal == 1) then
        rwSendSystemMessage("你已经领取过首充奖励啦~")
        return
    end
    --打开奖励对白给奖励
     rwOpenNpcChatDialog(60425)
end

--首冲对白
rwtDialog[60425] = {}
rwtDialog[60425]["DialogEnd"] = function ()
    local nUserRecordId = 1160
    if not rwTempDataIsExist(nUserRecordId) then		--判断是否存在掩码
		rwTempDataAdd(nUserRecordId)
	end
    local nGetVal = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data1) 
    if (nGetVal == 1) then
        rwSendSystemMessage("你已经领取过首充奖励啦~")
        return
    end
    --没领过，设置掩码
    rwUserTempDataSet(nUserRecordId,1,CONST_TEMP_DATA.Data1)
    --给奖励
   local nAwardId = 6000177
        local tAwardInfo = {}
		tAwardInfo["Events"] = {}
		tAwardInfo["Events"][1] = {}
		tAwardInfo["Events"][1]["GetServerAward"] = {}
        tAwardInfo["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
        tAwardInfo["Events"][1]["GetServerAward"]["AwardId"] = nAwardId
		tAwardInfo["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
		rwBaseAward:create(tAwardInfo):Process()
end 

--------------------------------------------------------------------------------------------

--------------主城彩蛋--------------
rwtNPCCaiDan[tNpcGroup_MainTask[1]] = {} --泰雷
rwtNPCCaiDan[tNpcGroup_MainTask[1]]["Mask"] = 1064
rwtNPCCaiDan[tNpcGroup_MainTask[1]]["EachCount"] = 5 
rwtNPCCaiDan[tNpcGroup_MainTask[1]]["NpcId"] = 102
rwtNPCCaiDan[tNpcGroup_MainTask[1]]["MapId"] = 1000

rwtNPCCaiDan[20151] = {} -- 宫廷歌姬露娜
rwtNPCCaiDan[20151]["Mask"] = 1065  
rwtNPCCaiDan[20151]["EachCount"] = 10 
rwtNPCCaiDan[20151]["NpcId"] = tNpc_Chat[28]
rwtNPCCaiDan[20151]["MapId"] = 1000

rwtNPCCaiDan[20153] = {} -- 吟游诗人玛门
rwtNPCCaiDan[20153]["Mask"] = 1066 
rwtNPCCaiDan[20153]["EachCount"] = 6
rwtNPCCaiDan[20153]["NpcId"] = tNpc_Chat[31]
rwtNPCCaiDan[20153]["MapId"] = 1000

rwtNPCCaiDan[20236] = {} -- 落选的提琴师李
rwtNPCCaiDan[20236]["Mask"] = 1067 
rwtNPCCaiDan[20236]["EachCount"] = 20
rwtNPCCaiDan[20236]["TotalCount"] = 10
rwtNPCCaiDan[20236]["NpcId"] = tNpc_Chat[6]
rwtNPCCaiDan[20236]["MapId"] = 1000

rwtNPCCaiDan[20250] = {} --警报机器人·嘟
rwtNPCCaiDan[20250]["Mask"] = 1075
rwtNPCCaiDan[20250]["EachCount"] = 5 
rwtNPCCaiDan[20250]["NpcId"] = tNpc_Chat[12]
rwtNPCCaiDan[20250]["MapId"] = 1000

rwtNPCCaiDan[20251] = {} --大树精麦克斯
rwtNPCCaiDan[20251]["Mask"] = 1076
rwtNPCCaiDan[20251]["EachCount"] = 5 
rwtNPCCaiDan[20251]["NpcId"] = tNpc_Chat[13]
rwtNPCCaiDan[20251]["MapId"] = 1000

rwtNPCCaiDan[20252] = {} --小树精敏特
rwtNPCCaiDan[20252]["Mask"] = 1077
rwtNPCCaiDan[20252]["EachCount"] = 5 
rwtNPCCaiDan[20252]["NpcId"] = tNpc_Chat[14]
rwtNPCCaiDan[20252]["MapId"] = 1000

rwtNPCCaiDan[20253] = {} --哥布林商贩奥格
rwtNPCCaiDan[20253]["Mask"] = 1078
rwtNPCCaiDan[20253]["EachCount"] = 5 
rwtNPCCaiDan[20253]["NpcId"] = tNpc_Chat[15]
rwtNPCCaiDan[20253]["MapId"] = 1000

rwtNPCCaiDan[20146] = {} --警报机器人·滴
rwtNPCCaiDan[20146]["Mask"] = 1079
rwtNPCCaiDan[20146]["EachCount"] = 5 
rwtNPCCaiDan[20146]["NpcId"] = tNpc_Chat[3]
rwtNPCCaiDan[20146]["MapId"] = 1000

rwtNPCCaiDan[20254] = {} --皮曼1号
rwtNPCCaiDan[20254]["Mask"] = 1080
rwtNPCCaiDan[20254]["EachCount"] = 5 
rwtNPCCaiDan[20254]["NpcId"] = tNpc_Chat[16]
rwtNPCCaiDan[20254]["MapId"] = 1000

rwtNPCCaiDan[20148] = {} --少女玛格
rwtNPCCaiDan[20148]["Mask"] = 1081
rwtNPCCaiDan[20148]["TotalCount"] = 100 
rwtNPCCaiDan[20148]["NpcId"] = tNpc_Chat[29]
rwtNPCCaiDan[20148]["MapId"] = 1000


rwtNPCCaiDan[20261] = {} --阿噗小圆
rwtNPCCaiDan[20261]["Mask"] = 1083
rwtNPCCaiDan[20261]["EachCount"] = 5
rwtNPCCaiDan[20261]["NpcId"] = tNpc_Chat[23]
rwtNPCCaiDan[20261]["MapId"] = 1000

rwtNPCCaiDan[20235] = {} --女巫莉莲
rwtNPCCaiDan[20235]["Mask"] = 1089
rwtNPCCaiDan[20235]["EachCount"] = 5
rwtNPCCaiDan[20235]["NpcId"] = tNpc_Chat[5]
rwtNPCCaiDan[20235]["MapId"] = 1000
---------------坐标-----------
--第一次进入主城坐标
local sPos_FirstLoad = "-69.86,20.55,24.70"
----网易版本临时坐标点
--local sPos_FirstLoad_LinShi = "-68.26,20.76,13.97"


--主城进入函数
function MainTask_MainCity_EnterFunc()
    --玩家第一次登录时强塞第一个任务   
    if rwtTask[tMainCityTaskId[1]] and rwTaskIsSuccess(tMainCityTaskId[1]) then
        
    else
        --默认解锁第二片区地图
        rwSysSetWorldMapLockMask(CONST_MAPUNLOCK.GUJIANIER)
        --移动玩家至初始位置
        local nMapId = 1000
        rwUserTeleport(sPos_FirstLoad,135)
        --接受主线第一个任务
        if not rwTaskIsAccept(tMainCityTaskId[1]) and (rwTaskGetFinishMask(tMainCityTaskId[1]) ~= 1) then
            local nTaskDetailType = rwtTask[tMainCityTaskId[1]]["TaskDetailType"]
            ENUM_TASK_TEMPLATE[nTaskDetailType]:create(tMainCityTaskId[1]):AcceptTask()
        end
    end
 
    --左相秘密任务完成前创建诺尔和薇莉丝
    if not rwTaskIsSuccess(nTaskId_DelNuoEr) then 
        if not rwHasGenEvent(tNpcGroup_MainTask_GenId[4]) then              
             rwAddGenEvent(tNpcGroup_MainTask_GenId[4])
        end
        if not rwHasGenEvent(tNpcGroup_MainTask_GenId[3]) then              
             rwAddGenEvent(tNpcGroup_MainTask_GenId[3])
        end
    end
--    --玩家等级10级后打开自律联盟2楼
--    local nUserLev = rwUserGetLevel()   
--    if  nUserLev >= 10 then   --能上二楼
--        if not rwHasGenEvent(1000249) then              
--             rwAddGenEvent(1000249)
--        end
--    else    --不能上二楼
--        if not rwHasGenEvent(1001028) then              
--             rwAddGenEvent(1001028)
--        end
--    end
--------伦纳德头上的美食图标----------------------
     --【是否在用餐时间】
     --【检测时间是否对应】
     local nFoodTaskWeek
    local nFoodTaskTime = 0
    nFoodTaskWeek,nFoodTaskTime = rwFoodTask_GetNowTimePart() --获取对应星期 和 餐点
    --判断是否在用餐时间（在）
    if nFoodTaskTime ~= 0 then 
        rwFoodTask_OnTimer_Start()
    end
    
end
--切图后触发
rwtSceneLoad_Func[1000] = rwtSceneLoad_Func[1000] or {}
table.insert(rwtSceneLoad_Func[1000],MainTask_MainCity_EnterFunc)
--王宫进入函数
function MainTask_MainCity_WangGong_EnterFunc()
    --登基后创建赫丽
    if rwTaskGetFinishMask(10187) == 1 then       
        if not rwHasGenEvent(tNpcGroup_MainTask_GenId[8]) then              
             rwAddGenEvent(tNpcGroup_MainTask_GenId[8])
        end
    end   
    if rwTaskChkUserInTask(10205) then 
        if not rwHasGenEvent(tNpcGroup_MainTask_GenId[8]) then              
             rwAddGenEvent(tNpcGroup_MainTask_GenId[8])
        end
    end
end
--切图后触发
rwtSceneLoad_Func[1000] = rwtSceneLoad_Func[1000] or {}
table.insert(rwtSceneLoad_Func[1000],MainTask_MainCity_WangGong_EnterFunc)


----***************************任务***************************--
-----------------------------------------------名誉守卫战-------------------------------------------------------------
-----------去神殿调查-----------------
rwtTask[tMainCityTaskId[1]] = {}
rwtTask[tMainCityTaskId[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][20279]
rwtTask[tMainCityTaskId[1]]["NextTaskId"] = tMainCityTaskId[2]
rwtTask[tMainCityTaskId[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainCityTaskId[1]]["DialogId"] = tMainCityTaskDialog[1]
rwtTask[tMainCityTaskId[1]]["ReqTrap1"] = nTrap_1

rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_1_GenId
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][2]["GenId"] = tNpcGroup_MainTask_GenId[10]
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][3] = {}
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][3]["GenId"] = tNpcGroup_MainTask_GenId[11]
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][3]["MapId"] = 1000
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][4] = {}
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][4]["GenId"] = 1000193
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][5] = {}
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][5]["GenId"] = 1000194
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tMainCityTaskId[1]]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel



-----------击败卫兵-----------------
rwtTask[tMainCityTaskId[2]] = {}
rwtTask[tMainCityTaskId[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20279]
rwtTask[tMainCityTaskId[2]]["PreTaskId"] = tMainCityTaskId[1]
rwtTask[tMainCityTaskId[2]]["NextTaskId"] = tMainCityTaskId[3]
rwtTask[tMainCityTaskId[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTaskId[2]]["DialogId"] = tMainCityTaskDialog[2]
rwtTask[tMainCityTaskId[2]]["TaskNpc"] = tNpc_MainTask[5]
rwtTask[tMainCityTaskId[2]]["IsClickComplete"] = 1
rwtTask[tMainCityTaskId[2]]["StartGuide"] = 101
rwtTask[tMainCityTaskId[2]]["StartGuideType"] = 1
rwtTask[tMainCityTaskId[2]]["CompleteGuide"] = 102
rwtTask[tMainCityTaskId[2]]["CompleteGuideType"] = 1

rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup_MainTask_GenId[5]
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][2]["GenId"] = nSingleNpc_WeiBing_GenId_1
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][3] = {}
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][3]["GenId"] = nSingleNpc_WeiBing_GenId_2
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][3]["MapId"] = 1000
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][4] = {}
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][4]["GenId"] = tNpcGroup_MainTask_GenId[10]
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][5] = {}
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][5]["GenId"] = tNpcGroup_MainTask_GenId[11]
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][6] = {}
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][6]["GenId"] = 1000193
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][6]["MapId"] = 1000
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][6]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][7] = {}
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][7]["GenId"] = 1000194
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][7]["MapId"] = 1000
rwtTask[tMainCityTaskId[2]]["DynaNpcGroupGen"][7]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tMainCityTaskId[2]]["Awards"] = {}
rwtTask[tMainCityTaskId[2]]["Awards"]["Events"] = {}
rwtTask[tMainCityTaskId[2]]["Awards"]["Events"][1] = {}
rwtTask[tMainCityTaskId[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainCityTaskId[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainCityTaskId[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_MainTask[1]
rwtTask[tMainCityTaskId[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainCityTaskId[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainCityTaskId[2]
rwtTask[tMainCityTaskId[2]]["AwardFunc"] = function ()

	rwUnlockTrain(1)

end

-----------------------------------------------大帝之子-------------------------------------------------------------
-----------寻找卡诺萨之光-----------------
rwtTask[tMainCityTaskId[3]] = {}
rwtTask[tMainCityTaskId[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][20281]
rwtTask[tMainCityTaskId[3]]["PreTaskId"] = tMainCityTaskId[2]
rwtTask[tMainCityTaskId[3]]["NextTaskId"] = nNextAreaTask
rwtTask[tMainCityTaskId[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTaskId[3]]["DialogId"] = tMainCityTaskDialog[3]
rwtTask[tMainCityTaskId[3]]["TaskNpc"] = tNpc_MainTask[4]

rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup_MainTask_GenId[5]
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][2]["GenId"] = nSingleNpc_WeiBing_GenId_1
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][3] = {}
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][3]["GenId"] = nSingleNpc_WeiBing_GenId_2
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][3]["MapId"] = 1000

rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][4] = {}
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][4]["GenId"] = tNpcGroup_MainTask_GenId[10]
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][5] = {}
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][5]["GenId"] = tNpcGroup_MainTask_GenId[11]
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][6] = {}
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][6]["GenId"] = 1000193
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][6]["MapId"] = 1000
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][6]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][7] = {}
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][7]["GenId"] = 1000194
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][7]["MapId"] = 1000
rwtTask[tMainCityTaskId[3]]["DynaNpcGroupGen"][7]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

--rwtTask[tMainCityTaskId[3]]["AwardId"] = tAward_MainTask[2]

rwtTask[tMainCityTaskId[3]]["Awards"] = {}
rwtTask[tMainCityTaskId[3]]["Awards"]["Events"] = {}
rwtTask[tMainCityTaskId[3]]["Awards"]["Events"][1] = {}
rwtTask[tMainCityTaskId[3]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainCityTaskId[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainCityTaskId[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_MainTask[2]
rwtTask[tMainCityTaskId[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainCityTaskId[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainCityTaskId[3]
--解锁后一个任务不自动寻路
rwtTask[tMainCityTaskId[3]]["StartAutoWay"] = {}
rwtTask[tMainCityTaskId[3]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainCityTaskId[3]]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTaskId[3]]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup_MainTask[4]
rwtTask[tMainCityTaskId[3]]["StartAutoWay"]["FindWayGenId"] = tNpcGroup_MainTask_GenId[4]

