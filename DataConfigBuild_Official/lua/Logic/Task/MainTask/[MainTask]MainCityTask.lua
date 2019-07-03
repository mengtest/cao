--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
----主线任务（主城）


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
----新的开始
--tMainCityTaskId[4] = 10209    --更换新衣（时装功能引导）
--tMainCityTaskId[5] = 10211    --向薇莉丝告别
----意外的收获
--tMainCityTaskId[6] = 10212    --获得萨林的指导
--tMainCityTaskId[7] = 10409    --向萨林致谢
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
--------对白id--------
local tMainCityTaskDialog = {}

tMainCityTaskDialog[1] = 10364
tMainCityTaskDialog[2] = 10365
tMainCityTaskDialog[3] = 10368
--tMainCityTaskDialog[4] = 10367
--tMainCityTaskDialog[5] = 10369
--tMainCityTaskDialog[6] = 10531
--tMainCityTaskDialog[7] = 10638

local nZilvlianmengTask_Dialog_Tiebi = 10706
local nZilvlianmengTask_Dialog_Lunnade = 10707
local nZilvlianmengTask_Dialog_Jila = 10708
-------------奖励id---------------
local tAward_MainTask = {}

--名誉守卫战
tAward_MainTask[1] = 2000052
--大帝之子
tAward_MainTask[2] = 2000053
----新的开始
--tAward_MainTask[3] = 2000054
--意外的收获
tAward_MainTask[4] = 2000055

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
rwtNpc[tNpc_MainTask[1]]["DialogId"] = {1284,1285,1286}
rwtNpc[tNpc_MainTask[1]]["CDDialogIdTypeEach"] = 1515
--特罗德
rwtNpc[tNpc_MainTask[7]] = rwtNpc[tNpc_MainTask[7]] or {}
rwtNpc[tNpc_MainTask[7]]["DialogId"] = {1290,1291,1292,1833}

--闲聊NPC
local tNpc_Chat = {}

--面包大王诺阿
tNpc_Chat[1] = 3190 
rwtNpc[tNpc_Chat[1]] = rwtNpc[tNpc_Chat[1]] or {}
rwtNpc[tNpc_Chat[1]]["DialogId"] = {1410,1411,1412}
--子爵格兰特
tNpc_Chat[2] = 3191 
rwtNpc[tNpc_Chat[2]] = rwtNpc[tNpc_Chat[2]] or {}
rwtNpc[tNpc_Chat[2]]["DialogId"] = {1401,1402,1403}
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
rwtNpc[tNpc_Chat[6]]["DialogId"] = {1299,1300,1301}
rwtNpc[tNpc_Chat[6]]["CDDialogIdTypeEach"] = 1519
rwtNpc[tNpc_Chat[6]]["CDDialogIdTypeTotal"] = 1518
--女剑士玛塔
tNpc_Chat[7] = 3196 
rwtNpc[tNpc_Chat[7]] = rwtNpc[tNpc_Chat[7]] or {}
rwtNpc[tNpc_Chat[7]]["DialogId"] = {1425,1426,1427}
--露露
tNpc_Chat[8] = 3197 
rwtNpc[tNpc_Chat[8]] = rwtNpc[tNpc_Chat[8]] or {}
rwtNpc[tNpc_Chat[8]]["DialogId"] = {1413,1414,1415}
rwtNpc[tNpc_Chat[8]]["CDDialogIdTypeEach"] = 1541
--宫廷书记员弗林
tNpc_Chat[9] = 3199 
rwtNpc[tNpc_Chat[9]] = rwtNpc[tNpc_Chat[9]] or {}
rwtNpc[tNpc_Chat[9]]["DialogId"] = {1288,1289}
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
rwtNpc[tNpc_Chat[11]]["DialogId"] = {1341,1342,1343}

--警报机器人·嘟
tNpc_Chat[12] = 3208 
rwtNpc[tNpc_Chat[12]] = rwtNpc[tNpc_Chat[12]] or {}
rwtNpc[tNpc_Chat[12]]["DialogId"] = {1326,1327,1328}
rwtNpc[tNpc_Chat[12]]["CDDialogIdTypeEach"] = 1528
--大树精麦克斯
tNpc_Chat[13] = 3209 
rwtNpc[tNpc_Chat[13]] = rwtNpc[tNpc_Chat[13]] or {}
rwtNpc[tNpc_Chat[13]]["DialogId"] = {1329,1330,1331}
rwtNpc[tNpc_Chat[13]]["CDDialogIdTypeEach"] = 1529
--小树精敏特
tNpc_Chat[14] = 3210 
rwtNpc[tNpc_Chat[14]] = rwtNpc[tNpc_Chat[14]] or {}
rwtNpc[tNpc_Chat[14]]["DialogId"] = {1332,1333,1334}
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
--假笑男孩齐齐
tNpc_Chat[17] = 3213 
rwtNpc[tNpc_Chat[17]] = rwtNpc[tNpc_Chat[17]] or {}
rwtNpc[tNpc_Chat[17]]["DialogId"] = {1353,1354,1355}
--幻想少女苏菲
tNpc_Chat[18] = 3214 
rwtNpc[tNpc_Chat[18]] = rwtNpc[tNpc_Chat[18]] or {}
rwtNpc[tNpc_Chat[18]]["DialogId"] = {1356,1357,1358}
--好奇少女朱莉安
tNpc_Chat[19] = 3215 
rwtNpc[tNpc_Chat[19]] = rwtNpc[tNpc_Chat[19]] or {}
rwtNpc[tNpc_Chat[19]]["DialogId"] = {1359,1360,1361}
--猎魔人阿比旦
tNpc_Chat[20] = 3216 
rwtNpc[tNpc_Chat[20]] = rwtNpc[tNpc_Chat[20]] or {}
rwtNpc[tNpc_Chat[20]]["DialogId"] = {1362,1363,1364}
rwtNpc[tNpc_Chat[20]]["CDDialogIdTypeEach"] = 1535
--登山员罗伯特
tNpc_Chat[21] = 3217 
rwtNpc[tNpc_Chat[21]] = rwtNpc[tNpc_Chat[21]] or {}
rwtNpc[tNpc_Chat[21]]["DialogId"] = {1365,1366,1367}
--哥布林萨顿
tNpc_Chat[22] = 3218 
rwtNpc[tNpc_Chat[22]] = rwtNpc[tNpc_Chat[22]] or {}
rwtNpc[tNpc_Chat[22]]["DialogId"] = {1371,1372,1373}
--阿噗小圆
tNpc_Chat[23] = 3219 
rwtNpc[tNpc_Chat[23]] = rwtNpc[tNpc_Chat[23]] or {}
rwtNpc[tNpc_Chat[23]]["DialogId"] = {1374,1375,1376}
rwtNpc[tNpc_Chat[23]]["CDDialogIdTypeEach"] = 1536
--树精毛毛
tNpc_Chat[24] = 3220 
rwtNpc[tNpc_Chat[24]] = rwtNpc[tNpc_Chat[24]] or {}
rwtNpc[tNpc_Chat[24]]["DialogId"] = {1377,1378,1379}

--巨斧吉塔
tNpc_Chat[25] = 3227 
rwtNpc[tNpc_Chat[25]] = rwtNpc[tNpc_Chat[25]] or {}
rwtNpc[tNpc_Chat[25]]["DialogId"] = {1404,1405,1406,1648}

--废弃Id 1649

--铁锤舒尔多
tNpc_Chat[26] = 3228 
rwtNpc[tNpc_Chat[26]] = rwtNpc[tNpc_Chat[26]] or {}
rwtNpc[tNpc_Chat[26]]["DialogId"] = {1407,1408,1409}
--戴琳斯
tNpc_Chat[27] = 3229 
rwtNpc[tNpc_Chat[27]] = rwtNpc[tNpc_Chat[27]] or {}
rwtNpc[tNpc_Chat[27]]["DialogId"] = {1323,1324,1325}
--宫廷歌姬露娜
tNpc_Chat[28] = 3230 
rwtNpc[tNpc_Chat[28]] = rwtNpc[tNpc_Chat[28]] or {}
rwtNpc[tNpc_Chat[28]]["DialogId"] = {1293,1294,1295}
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
--小木灵球球
tNpc_Chat[32] = 3267 
rwtNpc[tNpc_Chat[32]] = rwtNpc[tNpc_Chat[32]] or {}
rwtNpc[tNpc_Chat[32]]["DialogId"] = {1368,1369,1370}
--乞讨老者
tNpc_Chat[33] = 3268 
rwtNpc[tNpc_Chat[33]] = rwtNpc[tNpc_Chat[33]] or {}
rwtNpc[tNpc_Chat[33]]["DialogId"] = {1398,1399,1400,1646}
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
rwtNpc[tNpc_Chat[37]]["DialogId"] = {1554}
--少女雷茜
tNpc_Chat[38] = 3356
rwtNpc[tNpc_Chat[38]] = rwtNpc[tNpc_Chat[38]] or {}
rwtNpc[tNpc_Chat[38]]["DialogId"] = {1555}
--矮人小贩
tNpc_Chat[39] = 3357
rwtNpc[tNpc_Chat[39]] = rwtNpc[tNpc_Chat[39]] or {}
rwtNpc[tNpc_Chat[39]]["DialogId"] = {1556}
--子爵德福
tNpc_Chat[40] = 3358
rwtNpc[tNpc_Chat[40]] = rwtNpc[tNpc_Chat[40]] or {}
rwtNpc[tNpc_Chat[40]]["DialogId"] = {1557}
--冒险家小眼镜
tNpc_Chat[41] = 3359
rwtNpc[tNpc_Chat[41]] = rwtNpc[tNpc_Chat[41]] or {}
rwtNpc[tNpc_Chat[41]]["DialogId"] = {1558,1832}
--矮巨人矿工
tNpc_Chat[42] = 3360
rwtNpc[tNpc_Chat[42]] = rwtNpc[tNpc_Chat[42]] or {}
rwtNpc[tNpc_Chat[42]]["DialogId"] = {1559}
--守卫长雷加
tNpc_Chat[43] = 3361
rwtNpc[tNpc_Chat[43]] = rwtNpc[tNpc_Chat[43]] or {}
rwtNpc[tNpc_Chat[43]]["DialogId"] = {1560}
--锤子团卢卡斯
tNpc_Chat[44] = 3362
rwtNpc[tNpc_Chat[44]] = rwtNpc[tNpc_Chat[44]] or {}
rwtNpc[tNpc_Chat[44]]["DialogId"] = {1561}
--匿名的冒险者
tNpc_Chat[45] = 3363
rwtNpc[tNpc_Chat[45]] = rwtNpc[tNpc_Chat[45]] or {}
rwtNpc[tNpc_Chat[45]]["DialogId"] = {1562}
--不知名的镇民
tNpc_Chat[46] = 3364
rwtNpc[tNpc_Chat[46]] = rwtNpc[tNpc_Chat[46]] or {}
rwtNpc[tNpc_Chat[46]]["DialogId"] = {1563}
--龟小豆
tNpc_Chat[47] = 3365
rwtNpc[tNpc_Chat[47]] = rwtNpc[tNpc_Chat[47]] or {}
rwtNpc[tNpc_Chat[47]]["DialogId"] = {1564}
--龟族先知
tNpc_Chat[48] = 3366
rwtNpc[tNpc_Chat[48]] = rwtNpc[tNpc_Chat[48]] or {}
rwtNpc[tNpc_Chat[48]]["DialogId"] = {1565}

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
rwtDialog[1398]["AdventureJudgeType"] ={}
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


rwtDialog[1398]["DialogEnd"] = function ()
    local nCostMoney = -2
    local nUserMoney = rwUserGetMoney()
    if  nUserMoney < 2 then 
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10011],1,1)
    else
        --rwAddMoney(nCostMoney)--扣除2个罗兰币
        local nCount = rwTempDataGetValue(1093, CONST_TEMP_DATA.Data1)
        if nCount < 0 then
			rwUserTempDataSet(1093,0,CONST_TEMP_DATA.Data1)
        else
			rwUserTempDataSet(1093,nCount+2,CONST_TEMP_DATA.Data1)
        end
    end
   
end 


--主城领奖NPC
local nNpc_GetAward = 3431
rwtNpc[nNpc_GetAward] = rwtNpc[nNpc_GetAward] or {}
rwtNpc[nNpc_GetAward]["DialogId"] = {1590}
rwtNpc[nNpc_GetAward]["ChkOpen"] = true
rwtNpc[nNpc_GetAward]["Option"] = {}
rwtNpc[nNpc_GetAward]["Option"][1] = {}
rwtNpc[nNpc_GetAward]["Option"][1]["Title"]= tLuaText[LANGUAGE_CONFIG][40007]
rwtNpc[nNpc_GetAward]["Option"][1]["State"] = 0
rwtNpc[nNpc_GetAward]["Option"][1]["Chk"] = function(nNpcId)
    return true
end
rwtNpc[nNpc_GetAward]["Option"][1]["Func"] = function(nNpcTypeId)
    rwAddAward(CONST_ACTION_TYPE.WINDOWS,6000158,1)
    return
end
rwtNpc[nNpc_GetAward]["Option"][2] = {}
rwtNpc[nNpc_GetAward]["Option"][2]["Title"]= tLuaText[LANGUAGE_CONFIG][40008]
rwtNpc[nNpc_GetAward]["Option"][2]["State"] = 0
rwtNpc[nNpc_GetAward]["Option"][2]["Chk"] = function(nNpcId)
    return true
end
rwtNpc[nNpc_GetAward]["Option"][2]["Func"] = function(nNpcTypeId)
    rwAddAward(CONST_ACTION_TYPE.WINDOWS,6000159,1)
    return
end
rwtNpc[nNpc_GetAward]["Option"][3] = {}
rwtNpc[nNpc_GetAward]["Option"][3]["Title"]= tLuaText[LANGUAGE_CONFIG][40009]
rwtNpc[nNpc_GetAward]["Option"][3]["State"] = 0
rwtNpc[nNpc_GetAward]["Option"][3]["Chk"] = function(nNpcId)
    return true
end
rwtNpc[nNpc_GetAward]["Option"][3]["Func"] = function(nNpcTypeId)
    rwAddAward(CONST_ACTION_TYPE.WINDOWS,6000160,1)
    return
end
rwtNpc[nNpc_GetAward]["Option"][4] = {}
rwtNpc[nNpc_GetAward]["Option"][4]["Title"]= tLuaText[LANGUAGE_CONFIG][40010]
rwtNpc[nNpc_GetAward]["Option"][4]["State"] = 0
rwtNpc[nNpc_GetAward]["Option"][4]["Chk"] = function(nNpcId)
    return true
end
rwtNpc[nNpc_GetAward]["Option"][4]["Func"] = function(nNpcTypeId)
    rwAddAward(CONST_ACTION_TYPE.WINDOWS,6000161,1)
    return
end
rwtNpc[nNpc_GetAward]["Option"][5] = {}
rwtNpc[nNpc_GetAward]["Option"][5]["Title"]= tLuaText[LANGUAGE_CONFIG][40012]
rwtNpc[nNpc_GetAward]["Option"][5]["State"] = 0
rwtNpc[nNpc_GetAward]["Option"][5]["Chk"] = function(nNpcId)
    return true
end
rwtNpc[nNpc_GetAward]["Option"][5]["Func"] = function(nNpcTypeId)
    rwAddAward(CONST_ACTION_TYPE.WINDOWS,6000178,1)
    return
end

-------自律联盟NPC闲聊对白
--铁臂
local nNpcCharge_Dialog1 = {1007,1008,1009,1010}    --未开启自律联盟
local nNpcCharge_Dialog2 = {1462,1463,1464}    --已开启，悬赏任务中
local nNpcCharge_Dialog3 = {1013,1014}    --悬赏任务全部完成
--伦纳德
local nNpcPiEr_Dialog1 = {1015,1016,1017}    --未开启自律联盟
local nNpcPiEr_Dialog2 = {1018,1019}    --已开启，日常任务中
local nNpcPiEr_Dialog3 = {1020,1021}    --今日任务全部完成
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
rwtNpc[tNpc_Chat[49]]["DialogId"] = {1193,1194,1195}
--图特
tNpc_Chat[50]  = 3177      
rwtNpc[tNpc_Chat[50]] = rwtNpc[tNpc_Chat[50]] or {}
rwtNpc[tNpc_Chat[50]]["DialogId"] = {1196,1197,1198} 
--斯利
tNpc_Chat[51]  = 3178  
rwtNpc[tNpc_Chat[51]] = rwtNpc[tNpc_Chat[51]] or {}
rwtNpc[tNpc_Chat[51]]["DialogId"] = {1199,1200,1201} 
--弗斯
tNpc_Chat[52]   = 3179  
rwtNpc[tNpc_Chat[52]] = rwtNpc[tNpc_Chat[52]] or {}
rwtNpc[tNpc_Chat[52]]["DialogId"] = {1202,1203,1204}
--费夫
tNpc_Chat[53]    = 3180   
rwtNpc[tNpc_Chat[53]] = rwtNpc[tNpc_Chat[53]] or {}
rwtNpc[tNpc_Chat[53]]["DialogId"] = {1205,1206,1207}  

--谢克斯
tNpc_Chat[54]  = 3181 
rwtNpc[tNpc_Chat[54]] = rwtNpc[tNpc_Chat[54]] or {}
rwtNpc[tNpc_Chat[54]]["DialogId"] = {1208,1209,1210} 
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
rwtNpc[tNpc_Mercenary[1]] = rwtNpc[tNpc_Mercenary[1]] or {}
rwtNpc[tNpc_Mercenary[1]]["DialogId"] = {1007,1008,1009,1010}

--景点 自律联盟告示板（只显示名称 暂保留对白）
local nNpc_GaoShiByZLLM = 3460
local nNpcGroup_GaoShiByZLLM  = 70011
local nGenId_NpcGroup_GaoShiByZLLM = 1000151
--rwtNpc[nNpc_GaoShiByZLLM]["DialogId"] = {1627,1628}
rwtNpcGroup[nNpcGroup_GaoShiByZLLM] = rwtNpcGroup[nNpcGroup_GaoShiByZLLM] or {}
rwtNpcGroup[nNpcGroup_GaoShiByZLLM]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_GaoShiByZLLM]["NpcId"]= nNpc_GaoShiByZLLM

rwtNpc[nNpc_GaoShiByZLLM] = rwtNpc[nNpc_GaoShiByZLLM] or {}
rwtNpc[nNpc_GaoShiByZLLM]["ChkOpen"] = true
rwtNpc[nNpc_GaoShiByZLLM]["DialogId"] = 1796        --解锁功能未接受任务对白
rwtNpc[nNpc_GaoShiByZLLM]["NotOpenDialogId"] = 1795 --未解锁功能对白
--rwtNpc[nNpc_GaoShiByZLLM]["TaskIngDialogId"] = 1797 --任务中对白
rwtNpc[nNpc_GaoShiByZLLM]["Option"] = {}
rwtNpc[nNpc_GaoShiByZLLM]["Option"][1] = {}
rwtNpc[nNpc_GaoShiByZLLM]["Option"][1]["Title"]= tLuaText[LANGUAGE_CONFIG][40000]
rwtNpc[nNpc_GaoShiByZLLM]["Option"][1]["State"] = 0
rwtNpc[nNpc_GaoShiByZLLM]["Option"][1]["Chk"] = function(nNpcId)
    --未解锁自律联盟不显示按钮
    if not rwHasUserRecordData_System_Unlock(CONST_SYSTEM_FUNCTION.DAILY_TASK) then
        return false
    end
--     --打开悬赏界面
--    rwOpenLocalWnd(CONST_MENUTYPE.Reward)
    return true
end
--rwtNpc[nNpc_GaoShiByZLLM]["Option"][1]["TaskChk"] = function(nNpcId)
--    --玩家身上有悬赏类任务显示任务中对白
--    local tTaskList = rwTaskGetListByType(CONST_TASK_TYPE.REWARD)
--    if tTaskList ~= nil and #tTaskList > 0 then
--        return true
--    end
--    return false
--end
--rwtNpc[nNpc_GaoShiByZLLM]["Option"][1]["Func"] = function(nNpcTypeId) --点击按钮触发
--    --打开悬赏界面
--    rwOpenLocalWnd(CONST_MENUTYPE.Reward)
--end


--日常任务NPC  伦纳德
rwtNpc[tNpc_Mercenary[3]] = rwtNpc[tNpc_Mercenary[3]] or {}
rwtNpc[tNpc_Mercenary[3]]["ChkOpen"] = true
rwtNpc[tNpc_Mercenary[3]]["DialogId"] = {nZilvlianmengTask_Dialog_Lunnade} 
rwtNpc[tNpc_Mercenary[3]]["NotOpenDialogId"] = {1015,1016,1017}
rwtNpc[tNpc_Mercenary[3]]["TaskIngDialogId"] = {1018,1019}
--rwtNpc[tNpc_Mercenary[3]]["Option"] = {}
--rwtNpc[tNpc_Mercenary[3]]["Option"][1] = {}
--rwtNpc[tNpc_Mercenary[3]]["Option"][1]["Title"]= tLuaText[LANGUAGE_CONFIG][40001]
--rwtNpc[tNpc_Mercenary[3]]["Option"][1]["State"] = 0
--rwtNpc[tNpc_Mercenary[3]]["Option"][1]["Chk"] = function(nNpcId)
--    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
--        return false
--    end
--    return true
--end
--rwtNpc[tNpc_Mercenary[3]]["Option"][1]["Func"] = function(nNpcTypeId) --点击按钮触发
--   --当天日常任务全部完成后的闲聊对白
--   if rwUserGetTimesLeft(CONST_USER_TIMESTYPE.MercenaryDaily) < 1 then
--        local nRandom = math.random(1,#nNpcPiEr_Dialog3)
--        rwOpenNpcChatDialog(nNpcPiEr_Dialog3[nRandom],CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
--        return
--   end

--   --日常任务进行中的闲聊对白
--   if rwTaskGetListByType(CONST_TASK_TYPE.MERCENARY_DAILY) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.MERCENARY_DAILY) > 0 then
--        local nRandom = math.random(1,#nNpcPiEr_Dialog2)
--        rwOpenNpcChatDialog(nNpcPiEr_Dialog2[nRandom],CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
--        return
--   end

--   --接日常任务
----   if rwTaskGetFinishMask(nTaskId_LMDL_Final) == 1 and rwTaskGetListByType(CONST_TASK_TYPE.MERCENARY_DAILY) ==nil then   --判断是否解锁每日任务 解锁任务为10216 罗兰镇最后一个任务        
----        if  rwUserGetTimesLeft(CONST_USER_TIMESTYPE.MercenaryDaily) >= 1 then
----            rwOpenNpcChatDialog(10439,CONST_NPCCHAT_TYPE.NPC)
----            return
----        end        
----    end
----    local nTaskId = MercenaryDailyTask_Random()
----        if nTaskId and nTaskId ~= 0 then
----        local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
----        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask()
----    end   
--    rwOpenNpcChatDialog(1465,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
--end

--委托任务NPC  吉拉
rwtNpc[tNpc_Mercenary[2]] = rwtNpc[tNpc_Mercenary[2]] or {}
rwtNpc[tNpc_Mercenary[2]]["ChkOpen"] = true
rwtNpc[tNpc_Mercenary[2]]["DialogId"] = {nZilvlianmengTask_Dialog_Jila}  
rwtNpc[tNpc_Mercenary[2]]["NotOpenDialogId"] = {1022,1023,1024}
rwtNpc[tNpc_Mercenary[2]]["TaskIngDialogId"] = {1468,1469,1470}
rwtNpc[tNpc_Mercenary[2]]["Option"] = {}
rwtNpc[tNpc_Mercenary[2]]["Option"][1] = {}
rwtNpc[tNpc_Mercenary[2]]["Option"][1]["Title"]= tLuaText[LANGUAGE_CONFIG][40002]
rwtNpc[tNpc_Mercenary[2]]["Option"][1]["State"] = 0
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

--巡查任务NPC 比多猫
rwtNpc[tNpc_Mercenary[4]] = rwtNpc[tNpc_Mercenary[4]] or {}
rwtNpc[tNpc_Mercenary[4]]["ChkOpen"] = true
rwtNpc[tNpc_Mercenary[4]]["DialogId"] = {1506}  --任务开启了
rwtNpc[tNpc_Mercenary[4]]["NotOpenDialogId"] = {1027,1028,1029,1030,1031}
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

--艾赛尔
rwtNpc[tNpc_Mercenary[5]] = rwtNpc[tNpc_Mercenary[5]] or {}
rwtNpc[tNpc_Mercenary[5]]["DialogId"] = nNpcAiSaiEr_Dialog
--酒馆
rwtNpc[nNpc_Pub] = {}

--风迹速递

rwtNpc[tNpc_QuickSend.ZongGuan] = rwtNpc[tNpc_QuickSend.ZongGuan] or {}
rwtNpc[tNpc_QuickSend.ZongGuan]["ChkOpen"] = true
rwtNpc[tNpc_QuickSend.ZongGuan]["DialogId"] = {12448} 
rwtNpc[tNpc_QuickSend.ZongGuan]["NotOpenDialogId"] = {12445}
--rwtNpc[tNpc_QuickSend.ZongGuan]["TaskIngDialogId"] = {12450,12451}
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"] = {}
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1] = {}
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1]["Title"]= "领取风迹速递"
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1]["State"] = 0
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end	
--	if rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) > 0 then
--        return false
--    end
    return true
end
--rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1]["TaskChk"] = function(nNpcId) --判断是否显示TaskIngDialogId
--    if rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) > 0 then
--        return true
--    end
--    return false
--end
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][1]["Func"] = function(nNpcTypeId) --点击按钮触发
	QuickSendTask_CleanTempData()
    local nData2 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data2)   --掩码data2 记录当日共做多少轮次数（共50次，周六周日不计次数）
    local nData3 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data3)   --掩码data3 记录每周共做多少次（共200环）
	local nData7 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data7)   --掩码data7

    local nCurWeekDay = tonumber(os.date("%w",os.time())) 
    if nData3 >= 200 then
		local nData8 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data8)
		if nData8 == 0 then
			if not (rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) > 0) then
				QuickSendAcceptTaskFromNpc()
			end			
		else
			rwOpenNpcChatDialog(12452,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
			return
		end				 
	end
--	if nCurWeekDay > 0 and nCurWeekDay < 6 then
	if nData2 >= 50 then
		rwOpenNpcChatDialog(12452,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
		return 
	end
--  end	
	if rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) > 0 then
        local tDialogEnd = {12450,12451}
		local nRandom = math.random(1,#tDialogEnd)
		rwOpenNpcChatDialog(tDialogEnd[nRandom],CONST_NPCCHAT_TYPE.NPC)
	else
		QuickSendAcceptTaskFromNpc()			
    end    
    
end
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2] = {}
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2]["Title"]= "速递任务说明"
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2]["State"] = 0
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2]["Chk"] = function(nNpcId)
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return true
end
rwtNpc[tNpc_QuickSend.ZongGuan]["Option"][2]["Func"] = function(nNpcTypeId) --点击按钮触发
	rwOpenNpcChatDialog(12492,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
end

rwtDialog[12449] = rwtDialog[12449] or {}
rwtDialog[12449]["DialogEnd"] = function ()
	QuickSendAcceptQuick()
	rwSpecialStatus_ChangeLookFace(1,0,1200,90801)
	rwUserTempDataSet(1222,1,CONST_TEMP_DATA.Data1,0,true);
end 

--rwtNpc[tNpc_QuickSend.GuYuan] = rwtNpc[tNpc_QuickSend.GuYuan] or {}
--rwtNpc[tNpc_QuickSend.GuYuan]["DialogId"] = {12442,12443,12444} 

--rwtNpc[tNpc_QuickSend.JiQiRen] = rwtNpc[tNpc_QuickSend.JiQiRen] or {}
--rwtNpc[tNpc_QuickSend.JiQiRen]["DialogId"] = {12560} 

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

--萨林
tNpcGroup_MainTask[9] = 20180
tNpcGroup_MainTask_GenId[9] = 1000033

rwtNpcGroup[tNpcGroup_MainTask[9]] = rwtNpcGroup[tNpcGroup_MainTask[9]] or {}
rwtNpcGroup[tNpcGroup_MainTask[9]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup_MainTask[9]]["NpcId"]= tNpc_MainTask[9]

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
--假笑男孩齐齐
rwtNpcGroup[20255] = rwtNpcGroup[20255] or {}
rwtNpcGroup[20255]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20255]["NpcId"]= tNpc_Chat[17]
--幻想少女苏菲6
rwtNpcGroup[20256] = rwtNpcGroup[20256] or {}
rwtNpcGroup[20256]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20256]["NpcId"]= tNpc_Chat[18]
--好奇少女朱莉安
rwtNpcGroup[20257]= rwtNpcGroup[20257]or {}
rwtNpcGroup[20257]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20257]["NpcId"]= tNpc_Chat[19]
--猎魔人阿比旦
rwtNpcGroup[20258] = rwtNpcGroup[20258] or {}
rwtNpcGroup[20258]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20258]["NpcId"]= tNpc_Chat[20]
--登山员罗伯特
rwtNpcGroup[20259] = rwtNpcGroup[20259] or {}
rwtNpcGroup[20259]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20259]["NpcId"]= tNpc_Chat[21]
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
--小木灵球球
rwtNpcGroup[20149]= rwtNpcGroup[20149] or {}
rwtNpcGroup[20149]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20149]["NpcId"]= tNpc_Chat[32]
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
--矮巨人矿工
rwtNpcGroup[20385] = rwtNpcGroup[20385]or {}
rwtNpcGroup[20385]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20385]["NpcId"] = tNpc_Chat[42]
--守卫长雷加
rwtNpcGroup[20386] = rwtNpcGroup[20386]or {}
rwtNpcGroup[20386]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20386]["NpcId"] = tNpc_Chat[43]
--锤子团卢卡斯
rwtNpcGroup[20387] = rwtNpcGroup[20387]or {}
rwtNpcGroup[20387]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20387]["NpcId"] = tNpc_Chat[44]
--匿名的冒险者
rwtNpcGroup[20388] = rwtNpcGroup[20388]or {}
rwtNpcGroup[20388]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20388]["NpcId"] = tNpc_Chat[45]
--不知名的镇民
rwtNpcGroup[20389] = rwtNpcGroup[20389]or {}
rwtNpcGroup[20389]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20389]["NpcId"] = tNpc_Chat[46]
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
rwtNpcGroup[tNpcGroup_Chat[50]] = rwtNpcGroup[tNpcGroup_Chat[50]] or {}  --图特
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
rwtNpcGroup[tNpcGroup_Chat[53]] = rwtNpcGroup[tNpcGroup_Chat[53]] or {}  --费夫
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


--主城领奖NPC
local nSingleNpc_GetAward = 20434
rwtNpcGroup[nSingleNpc_GetAward] = rwtNpcGroup[nSingleNpc_GetAward] or {}
rwtNpcGroup[nSingleNpc_GetAward]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_GetAward]["NpcId"]= nNpc_GetAward

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

rwtNPCCaiDan[20258] = {} --猎魔人阿比旦
rwtNPCCaiDan[20258]["Mask"] = 1082
rwtNPCCaiDan[20258]["EachCount"] = 5
rwtNPCCaiDan[20258]["NpcId"] = tNpc_Chat[20]
rwtNPCCaiDan[20258]["MapId"] = 1000

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
        local nMapId = 1000
        rwUserTeleport(sPos_FirstLoad,135)
        
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
rwtSceneLoad_Func[1002] = rwtSceneLoad_Func[1002] or {}
table.insert(rwtSceneLoad_Func[1002],MainTask_MainCity_WangGong_EnterFunc)


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
rwtTask[tMainCityTaskId[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20280]
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
rwtTask[tMainCityTaskId[2]]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.WENJUAN1}  --问卷1
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

-----------------------------------------------新的开始-------------------------------------------------------------
-------------更换新衣-----------------
--rwtTask[tMainCityTaskId[4]] = {}
--rwtTask[tMainCityTaskId[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][20282]
--rwtTask[tMainCityTaskId[4]]["PreTaskId"] = tMainCityTaskId[3]
--rwtTask[tMainCityTaskId[4]]["NextTaskId"] = tMainCityTaskId[5]
--rwtTask[tMainCityTaskId[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tMainCityTaskId[4]]["DialogId"] = tMainCityTaskDialog[4]
--rwtTask[tMainCityTaskId[4]]["TaskNpc"] = tNpc_MainTask[3]
--rwtTask[tMainCityTaskId[4]]["CloseDialog"] = 0

--rwtTask[tMainCityTaskId[4]]["StartAutoWay"] = {}
--rwtTask[tMainCityTaskId[4]]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMainCityTaskId[4]]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[tMainCityTaskId[4]]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup_MainTask[3]
--rwtTask[tMainCityTaskId[4]]["StartAutoWay"]["FindWayGenId"] = tNpcGroup_MainTask_GenId[3]

-------------向薇莉丝告别-----------------
--rwtTask[tMainCityTaskId[5]] = {}
--rwtTask[tMainCityTaskId[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][20283]
--rwtTask[tMainCityTaskId[5]]["PreTaskId"] = tMainCityTaskId[4]
--rwtTask[tMainCityTaskId[5]]["NextTaskId"] = tMainCityTaskId[6]
--rwtTask[tMainCityTaskId[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tMainCityTaskId[5]]["DialogId"] = tMainCityTaskDialog[5]
--rwtTask[tMainCityTaskId[5]]["TaskNpc"] = tNpc_MainTask[3]



----rwtTask[tMainCityTaskId[5]]["AwardId"] = tAward_MainTask[3]
--rwtTask[tMainCityTaskId[5]]["Awards"] = {}
--rwtTask[tMainCityTaskId[5]]["Awards"]["Events"] = {}
--rwtTask[tMainCityTaskId[5]]["Awards"]["Events"][1] = {}
--rwtTask[tMainCityTaskId[5]]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtTask[tMainCityTaskId[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtTask[tMainCityTaskId[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_MainTask[3]
--rwtTask[tMainCityTaskId[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtTask[tMainCityTaskId[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainCityTaskId[5]

--rwtTask[tMainCityTaskId[5]]["StartAutoWay"] = {}
--rwtTask[tMainCityTaskId[5]]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMainCityTaskId[5]]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[tMainCityTaskId[5]]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup_MainTask[3]
--rwtTask[tMainCityTaskId[5]]["StartAutoWay"]["FindWayGenId"] = tNpcGroup_MainTask_GenId[3]

-------------意外的收获-----------------
----获得萨林的指导
--rwtTask[tMainCityTaskId[6]] = {}
--rwtTask[tMainCityTaskId[6]]["Title"] = tLuaText[LANGUAGE_CONFIG][20284]
--rwtTask[tMainCityTaskId[6]]["PreTaskId"] = tMainCityTaskId[3]
--rwtTask[tMainCityTaskId[6]]["NextTaskId"] = tMainCityTaskId[7]
--rwtTask[tMainCityTaskId[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tMainCityTaskId[6]]["DialogId"] = tMainCityTaskDialog[6]
--rwtTask[tMainCityTaskId[6]]["TaskNpc"] = tNpc_MainTask[9]

--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"] = {}
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup_MainTask_GenId[9]
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][1]["MapId"] = 1000
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][2]["GenId"] = tNpcGroup_MainTask_GenId[10]
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][2]["MapId"] = 1000
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][3]["GenId"] = tNpcGroup_MainTask_GenId[11]
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][3]["MapId"] = 1000
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][4]["GenId"] = tNpcGroup_MainTask_GenId[12]
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][4]["MapId"] = 1000
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][5] = {}
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][5]["GenId"] = tNpcGroup_MainTask_GenId[13]
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][5]["MapId"] = 1000
--rwtTask[tMainCityTaskId[6]]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMainCityTaskId[6]]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.SKILL_UPLEV}  --技能升级


--rwtTask[tMainCityTaskId[6]]["StartAutoWay"] = {}
--rwtTask[tMainCityTaskId[6]]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMainCityTaskId[6]]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[tMainCityTaskId[6]]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup_MainTask[9]
--rwtTask[tMainCityTaskId[6]]["StartAutoWay"]["FindWayGenId"] = tNpcGroup_MainTask_GenId[9]

----获得萨林的指导
--rwtTask[tMainCityTaskId[7]] = {}
--rwtTask[tMainCityTaskId[7]]["Title"] = tLuaText[LANGUAGE_CONFIG][20285]
--rwtTask[tMainCityTaskId[7]]["PreTaskId"] = tMainCityTaskId[6]
--rwtTask[tMainCityTaskId[7]]["NextTaskId"] = nNextAreaTask
--rwtTask[tMainCityTaskId[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tMainCityTaskId[7]]["DialogId"] = tMainCityTaskDialog[7]
--rwtTask[tMainCityTaskId[7]]["TaskNpc"] = tNpc_MainTask[9]
----rwtTask[tMainCityTaskId[7]]["IsClickComplete"] = 1

--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"] = {}
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup_MainTask_GenId[9]
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][1]["MapId"] = 1000
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][2]["GenId"] = tNpcGroup_MainTask_GenId[10]
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][2]["MapId"] = 1000
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][3]["GenId"] = tNpcGroup_MainTask_GenId[11]
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][3]["MapId"] = 1000
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][4]["GenId"] = tNpcGroup_MainTask_GenId[12]
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][4]["MapId"] = 1000
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][5] = {}
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][5]["GenId"] = tNpcGroup_MainTask_GenId[13]
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][5]["MapId"] = 1000
--rwtTask[tMainCityTaskId[7]]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel



----rwtTask[tMainCityTaskId[7]]["AwardId"] = tAward_MainTask[4]
--rwtTask[tMainCityTaskId[7]]["Awards"] = {}
--rwtTask[tMainCityTaskId[7]]["Awards"]["Events"] = {}
--rwtTask[tMainCityTaskId[7]]["Awards"]["Events"][1] = {}
--rwtTask[tMainCityTaskId[7]]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtTask[tMainCityTaskId[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtTask[tMainCityTaskId[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_MainTask[4]
--rwtTask[tMainCityTaskId[7]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtTask[tMainCityTaskId[7]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainCityTaskId[7]

--rwtTask[tMainCityTaskId[7]]["StartAutoWay"] = {}
--rwtTask[tMainCityTaskId[7]]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMainCityTaskId[7]]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[tMainCityTaskId[7]]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup_MainTask[9]
--rwtTask[tMainCityTaskId[7]]["StartAutoWay"]["FindWayGenId"] = tNpcGroup_MainTask_GenId[9]