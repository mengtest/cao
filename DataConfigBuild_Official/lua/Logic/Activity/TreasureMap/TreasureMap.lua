--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--endregion

local nTempDataID = 1111
local nTempData_Dialog_ID = 1114
local nItemTreasureMap_Id = 220003
local nCollect = 60232 
local nFirstDialog = 11425

local tTreasureMap_Land_Name = {}
tTreasureMap_Land_Name[1] = tLuaText[LANGUAGE_CONFIG][10046]
tTreasureMap_Land_Name[2] = tLuaText[LANGUAGE_CONFIG][10047]
local tTreasureMap_Town_Name = {}
tTreasureMap_Town_Name[1] = tLuaText[LANGUAGE_CONFIG][10048]
tTreasureMap_Town_Name[2] = tLuaText[LANGUAGE_CONFIG][10049]
tTreasureMap_Town_Name[3] = tLuaText[LANGUAGE_CONFIG][10050]
tTreasureMap_Town_Name[4] = tLuaText[LANGUAGE_CONFIG][10051]
tTreasureMap_Town_Name[5] = tLuaText[LANGUAGE_CONFIG][10052]
tTreasureMap_Town_Name[6] = tLuaText[LANGUAGE_CONFIG][10053]
tTreasureMap_Town_Name[7] = tLuaText[LANGUAGE_CONFIG][10054]
tTreasureMap_Town_Name[8] = tLuaText[LANGUAGE_CONFIG][10055]
tTreasureMap_Town_Name[9] = tLuaText[LANGUAGE_CONFIG][10056]
tTreasureMap_Town_Name[10] = tLuaText[LANGUAGE_CONFIG][10057]
local tTreasureMap_Pos = {}	
tTreasureMap_Pos[1] =  {GenId = 20010072 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '7.76,0.14,40.24' }
tTreasureMap_Pos[2] =  {GenId = 20010073 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '-0.26,-0.94,49.13' } 
tTreasureMap_Pos[3] =  {GenId = 20010074 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '-16.18,-2.09,57.87' }
tTreasureMap_Pos[4] =  {GenId = 20010075 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '11.77,0.07,22.51' }
tTreasureMap_Pos[5] =  {GenId = 20010076 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '17.41,0.07,-4.56' }
tTreasureMap_Pos[6] =  {GenId = 20010077 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '33.92,0.02,-6.72' }
tTreasureMap_Pos[7] =  {GenId = 20010078 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '38.03,-0.04,-36.98' }
tTreasureMap_Pos[8] =  {GenId = 20010079 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '30.73,0.10,-24.09' }
tTreasureMap_Pos[9] =  {GenId = 20010080 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '9.91,0.14,-25.46' }
tTreasureMap_Pos[10] = {GenId = 20010081 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '4.99,0.02,10.51' }
tTreasureMap_Pos[11] = {GenId = 20010082 ,TownName = tTreasureMap_Town_Name[1] ,Land = 2001, Pos = '-19.04,0.02,-19.04' }
tTreasureMap_Pos[12] = {GenId = 20010083 ,TownName = tTreasureMap_Town_Name[2] ,Land = 2001, Pos = '-32.67,-1.93,54.44' }
tTreasureMap_Pos[13] = {GenId = 20010084 ,TownName = tTreasureMap_Town_Name[2] ,Land = 2001, Pos = '-28.28,0.16,20.19' }
tTreasureMap_Pos[14] = {GenId = 20010085 ,TownName = tTreasureMap_Town_Name[2] ,Land = 2001, Pos = '-37.30,0.16,20.83' }
tTreasureMap_Pos[15] = {GenId = 20010086 ,TownName = tTreasureMap_Town_Name[2] ,Land = 2001, Pos = '-54.10,0.13,25.14' }
tTreasureMap_Pos[16] = {GenId = 20010087 ,TownName = tTreasureMap_Town_Name[2] ,Land = 2001, Pos = '-80.09,0.85,23.71' }
tTreasureMap_Pos[17] = {GenId = 20010088 ,TownName = tTreasureMap_Town_Name[2] ,Land = 2001, Pos = '-54.31,-1.34,51.64' }
tTreasureMap_Pos[18] = {GenId = 20010089 ,TownName = tTreasureMap_Town_Name[2] ,Land = 2001, Pos = '-28.28,-0.30,40.67' }
tTreasureMap_Pos[19] = {GenId = 20010090 ,TownName = tTreasureMap_Town_Name[2] ,Land = 2001, Pos = '-56.27,-2.16,60.88' }
tTreasureMap_Pos[20] = {GenId = 20010091 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '-33.69,0.02,-37.39' }
tTreasureMap_Pos[21] = {GenId = 20010092 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '-15.75,0.02,-45.37' }
tTreasureMap_Pos[22] = {GenId = 20010093 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '14.21,0.02,-68.91' }
tTreasureMap_Pos[23] = {GenId = 20010094 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '24.70,0.02,-57.64' }
tTreasureMap_Pos[24] = {GenId = 20010095 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '49.59,-0.13,-73.43' }
tTreasureMap_Pos[25] = {GenId = 20010096 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '54.83,0.02,-70.48' }
tTreasureMap_Pos[26] = {GenId = 20010097 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '17.53,0.02,-78.47' }
tTreasureMap_Pos[27] = {GenId = 20010098 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '-8.66,0.00,-134.71' }
tTreasureMap_Pos[28] = {GenId = 20010099 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '-8.20,0.08,-108.95' }
tTreasureMap_Pos[29] = {GenId = 20010100 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '-31.25,0.02,-70.88' }
tTreasureMap_Pos[30] = {GenId = 20010101 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '-75.34,0.10,-72.97' }
tTreasureMap_Pos[31] = {GenId = 20010102 ,TownName = tTreasureMap_Town_Name[3] ,Land = 2001, Pos = '-92.37,0.08,-92.52' }
tTreasureMap_Pos[32] = {GenId = 20010103 ,TownName = tTreasureMap_Town_Name[4] ,Land = 2001, Pos = '56.02,0.12,-100.14' }
tTreasureMap_Pos[33] = {GenId = 20010104 ,TownName = tTreasureMap_Town_Name[4] ,Land = 2001, Pos = '72.32,0.19,-111.34' }
tTreasureMap_Pos[34] = {GenId = 20010105 ,TownName = tTreasureMap_Town_Name[4] ,Land = 2001, Pos = '32.95,0.04,-124.26' }
tTreasureMap_Pos[35] = {GenId = 20010106 ,TownName = tTreasureMap_Town_Name[4] ,Land = 2001, Pos = '28.26,0.18,-110.86' }
tTreasureMap_Pos[36] = {GenId = 20010107 ,TownName = tTreasureMap_Town_Name[4] ,Land = 2001, Pos = '41.02,0.22,-182.74' }
tTreasureMap_Pos[37] = {GenId = 20010108 ,TownName = tTreasureMap_Town_Name[4] ,Land = 2001, Pos = '46.04,0.06,-214.32' }
tTreasureMap_Pos[38] = {GenId = 20010109 ,TownName = tTreasureMap_Town_Name[4] ,Land = 2001, Pos = '58.99,0.04,-195.23' }
tTreasureMap_Pos[39] = {GenId = 20010110 ,TownName = tTreasureMap_Town_Name[4] ,Land = 2001, Pos = '32.80,0.04,-168.74' }
tTreasureMap_Pos[40] = {GenId = 20010111 ,TownName = tTreasureMap_Town_Name[4] ,Land = 2001, Pos = '17.29,0.04,-152.82' }
tTreasureMap_Pos[41] = {GenId = 20010112 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '9.81,0.10,-193.04' }
tTreasureMap_Pos[42] = {GenId = 20010113 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '-11.88,0.11,-193.74' }
tTreasureMap_Pos[43] = {GenId = 20010114 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '-28.06,0.06,-163.86' }
tTreasureMap_Pos[44] = {GenId = 20010115 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '-55.15,0.06,-206.13' }
tTreasureMap_Pos[45] = {GenId = 20010116 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '-60.29,0.06,-157.27' }
tTreasureMap_Pos[46] = {GenId = 20010117 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '-54.31,0.06,-136.02' }
tTreasureMap_Pos[47] = {GenId = 20010118 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '-87.66,0.06,-134.59' }
tTreasureMap_Pos[48] = {GenId = 20010119 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '-82.30,0.06,-159.72' }
tTreasureMap_Pos[49] = {GenId = 20010120 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '-74.80,0.06,-153.46' }
tTreasureMap_Pos[50] = {GenId = 20010121 ,TownName = tTreasureMap_Town_Name[5] ,Land = 2001, Pos = '-72.34,0.06,-176.08' }
tTreasureMap_Pos[51] = {GenId = 20030422 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '8.47,-0.01,17.01' }
tTreasureMap_Pos[52] = {GenId = 20030423 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '28.21,-0.01,9.68' }
tTreasureMap_Pos[53] = {GenId = 20030424 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '18.35,-0.01,-19.88' }
tTreasureMap_Pos[54] = {GenId = 20030425 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '22.14,-0.01,-52.67' }
tTreasureMap_Pos[55] = {GenId = 20030426 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '13.37,-0.01,-31.86' }
tTreasureMap_Pos[56] = {GenId = 20030427 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '-8.26,0.02,-26.60' }
tTreasureMap_Pos[57] = {GenId = 20030428 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '-32.19,-0.01,-28.77' }
tTreasureMap_Pos[58] = {GenId = 20030429 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '-38.18,-0.01,1.44' }
tTreasureMap_Pos[59] = {GenId = 20030430 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '-7.91,-0.01,16.43' }
tTreasureMap_Pos[60] = {GenId = 20030431 ,TownName = tTreasureMap_Town_Name[6] ,Land = 2003, Pos = '-40.29,-0.01,15.82' }
tTreasureMap_Pos[61] = {GenId = 20030432 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-15.87,0.10,-95.33' }
tTreasureMap_Pos[62] = {GenId = 20030433 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-40.85,0.10,-92.81' }
tTreasureMap_Pos[63] = {GenId = 20030434 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-52.21,0.10,-99.84' }
tTreasureMap_Pos[64] = {GenId = 20030435 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-75.31,0.10,-23.95' }
tTreasureMap_Pos[65] = {GenId = 20030436 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-100.16,0.10,-69.38' }
tTreasureMap_Pos[66] = {GenId = 20030437 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-109.43,0.10,-21.94' }
tTreasureMap_Pos[67] = {GenId = 20030438 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-133.55,0.10,1.57' }
tTreasureMap_Pos[68] = {GenId = 20030439 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-177.36,0.10,-7.18' }
tTreasureMap_Pos[69] = {GenId = 20030440 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-245.83,0.10,-11.08' }
tTreasureMap_Pos[70] = {GenId = 20030441 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-154.40,0.46,-82.56' }
tTreasureMap_Pos[71] = {GenId = 20030442 ,TownName = tTreasureMap_Town_Name[7] ,Land = 2003, Pos = '-161.14,0.15,-50.04' }
tTreasureMap_Pos[72] = {GenId = 20030443 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-213.08,0.10,-97.12' }
tTreasureMap_Pos[73] = {GenId = 20030444 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-236.88,0.10,-75.01' }
tTreasureMap_Pos[74] = {GenId = 20030445 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-254.96,0.10,-107.89' }
tTreasureMap_Pos[75] = {GenId = 20030446 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-225.26,0.10,-163.31' }
tTreasureMap_Pos[76] = {GenId = 20030447 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-196.83,0.10,-148.38' }
tTreasureMap_Pos[77] = {GenId = 20030448 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-184.33,0.10,-114.08' }
tTreasureMap_Pos[78] = {GenId = 20030449 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-215.41,0.10,-120.50' }
tTreasureMap_Pos[79] = {GenId = 20030450 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-143.12,0.10,-120.80' }
tTreasureMap_Pos[80] = {GenId = 20030451 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-160.30,0.10,-116.23' }
tTreasureMap_Pos[81] = {GenId = 20030452 ,TownName = tTreasureMap_Town_Name[8] ,Land = 2003, Pos = '-192.18,0.10,-184.71' }
tTreasureMap_Pos[82] = {GenId = 20030453 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-186.18,0.09,-213.82' }
tTreasureMap_Pos[83] = {GenId = 20030454 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-191.01,0.09,-233.87' }
tTreasureMap_Pos[84] = {GenId = 20030455 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-222.77,0.09,-232.60' }
tTreasureMap_Pos[85] = {GenId = 20030456 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-246.13,0.09,-232.91' }
tTreasureMap_Pos[86] = {GenId = 20030457 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-235.70,0.09,-274.41' }
tTreasureMap_Pos[87] = {GenId = 20030458 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-224.56,0.09,-244.88' }
tTreasureMap_Pos[88] = {GenId = 20030459 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-166.41,0.09,-268.11' }
tTreasureMap_Pos[89] = {GenId = 20030460 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-150.82,0.09,-278.87' }
tTreasureMap_Pos[90] = {GenId = 20030461 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-154.85,0.09,-299.45' }
tTreasureMap_Pos[91] = {GenId = 20030462 ,TownName = tTreasureMap_Town_Name[9] ,Land = 2003, Pos = '-129.95,0.09,-261.12' }
tTreasureMap_Pos[92] = {GenId = 20030463 ,TownName = tTreasureMap_Town_Name[10],Land = 2003, Pos = '-119.84,0.14,-232.35' }
tTreasureMap_Pos[93] = {GenId = 20030464 ,TownName = tTreasureMap_Town_Name[10],Land = 2003, Pos = '-89.01,0.74,-257.17' }
tTreasureMap_Pos[94] = {GenId = 20030465 ,TownName = tTreasureMap_Town_Name[10],Land = 2003, Pos = '-58.69,0.14,-256.55' }
tTreasureMap_Pos[95] = {GenId = 20030466 ,TownName = tTreasureMap_Town_Name[10],Land = 2003, Pos = '-91.60,0.14,-182.32' }
tTreasureMap_Pos[96] = {GenId = 20030467 ,TownName = tTreasureMap_Town_Name[10],Land = 2003, Pos = '-84.74,0.14,-157.77' }
tTreasureMap_Pos[97] = {GenId = 20030468 ,TownName = tTreasureMap_Town_Name[10],Land = 2003, Pos = '-0.31,0.14,-180.01' }
tTreasureMap_Pos[98] = {GenId = 20030469 ,TownName = tTreasureMap_Town_Name[10],Land = 2003, Pos = '-43.58,0.14,-266.83' }
tTreasureMap_Pos[99] = {GenId = 20030470 ,TownName = tTreasureMap_Town_Name[10],Land = 2003, Pos = '-19.01,0.14,-210.10' }
tTreasureMap_Pos[100]= {GenId = 20030471 ,TownName = tTreasureMap_Town_Name[10],Land = 2003, Pos = '-24.60,0.14,-192.97' }




rwtItem[nItemTreasureMap_Id] = rwtItem[nItemTreasureMap_Id] or {}
rwtItem[nItemTreasureMap_Id]["UseNotDel"] = true 
rwtItem[nItemTreasureMap_Id]["Function"] = function ()
	local nUserId = rwUserGetId()
	local nDataIndex = CONST_TEMP_DATA.Data1
	local nVal = 0
	local bOpen = rwSysGetTaskLockMask(2001,200106)
	if not rwTempDataIsExist(nTempDataID, nUserId) then
        rwTempDataAdd(nTempDataID, nUserId)
		if not bOpen then
			nVal = math.random(1,50)
		else 
			nVal = math.random(1,#tTreasureMap_Pos)
		end
		rwTempDataSet(nTempDataID,nVal ,nDataIndex, nUserId)
	else 
		nVal = rwTempDataGetValue(nTempDataID,nDataIndex, nUserId)
		if nVal == 0 then
			if not bOpen then
				nVal = math.random(1,50)
			else 
				nVal = math.random(1,#tTreasureMap_Pos)
			end
			rwTempDataSet(nTempDataID,nVal ,nDataIndex, nUserId)
		end
    end
	if not rwHasGenEvent (tTreasureMap_Pos[nVal]["GenId"]) then
		rwAddGenEvent(tTreasureMap_Pos[nVal]["GenId"])
	end
	rwCloseLocalDialog(CONST_MENUTYPE.Bag)
	if not rwTempDataIsExist(nTempData_Dialog_ID, nUserId) then 
		rwTempDataAdd(nTempData_Dialog_ID, nUserId)
	end
	local nVal_DialogTemp = rwTempDataGetValue(nTempData_Dialog_ID,nDataIndex, nUserId)
	if nVal_DialogTemp ~= 1 then
		rwTempDataSet(nTempData_Dialog_ID,1 ,nDataIndex, nUserId)
		rwOpenNpcChatDialog(nFirstDialog)
	end
	rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10058].. tTreasureMap_Pos[nVal]["TownName"],2,2)
--	rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10058].. tTreasureMap_Pos[nVal]["TownName"] .. tTreasureMap_Pos[nVal]["Pos"],2,2)
	sFindWayData = '0'..' '..tTreasureMap_Pos[nVal]["Land"]..' '..tTreasureMap_Pos[nVal]["Pos"]
	rwFindWay(sFindWayData)
	return true 
end

function Activity_TreasureMap_CreateCollect ()
	local nUserId = rwUserGetId()
	local nDataIndex = CONST_TEMP_DATA.Data1
	if not rwTempDataIsExist(nTempDataID, nUserId) then
		return false 
	end
	local nVal = rwTempDataGetValue(nTempDataID,nDataIndex, nUserId)
	if (nVal ~= 0) and  (not rwHasGenEvent (tTreasureMap_Pos[nVal]["GenId"])) then
		rwAddGenEvent(tTreasureMap_Pos[nVal]["GenId"])
	end
end
rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
table.insert(rwtSceneLoad_Func[2001],Activity_TreasureMap_CreateCollect)
rwtSceneLoad_Func[2003] = rwtSceneLoad_Func[2003] or {}
table.insert(rwtSceneLoad_Func[2003],Activity_TreasureMap_CreateCollect)

function Activity_TreasureMap_GetGenId ()
	local nUserId = rwUserGetId()
	local nDataIndex = CONST_TEMP_DATA.Data1
	if not rwTempDataIsExist(nTempDataID, nUserId) then
		return false 
	end
	local nVal = rwTempDataGetValue(nTempDataID,nDataIndex, nUserId)
	return tTreasureMap_Pos[nVal]["GenId"]
end

--采集物
rwtNpcGroup[nCollect] = rwtNpcGroup[nCollect] or {}     --采集点
rwtNpcGroup[nCollect]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect]["Awards"]= {}
rwtNpcGroup[nCollect]["Awards"]["CostItems"] = {}
rwtNpcGroup[nCollect]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["CostItems"][1]["id"] = nItemTreasureMap_Id
rwtNpcGroup[nCollect]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nCollect]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[nCollect]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempDataID
rwtNpcGroup[nCollect]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]= {}
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"]= {}
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]= {}
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]["UserMsg"] = {}
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]["UserMsg"]["Content"] = "背包内暂无探宝图鉴，快去收集吧。"
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]["UserMsg"]["ShowType"] = 1
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]["UserMsg"]["AwardTarget"] = CONST_AWARD_TARGET.SELF
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempDataID
rwtNpcGroup[nCollect]["ItemNumErrorEvents"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0

--rwtNpcGroup[nCollect]["ErrorEvents"]["Events"][1]["DynDelete"] = {Activity_TreasureMap_GetGenId ()}
rwtNpcGroup[nCollect]["RandomAwards"] = {}
rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"] = {}   
rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1] = {}
rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"] = {}
rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][1] = {}
rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][1]["MinRate"] = 0
rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][1]["MaxRate"] = 10000
rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][1]["Type"] = CONST_RANDOM_BUILDEVENT_TYPE.GETAWARD
rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][1]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][1]["AwardId"] = 7000095  
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][2] = {}
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][2]["MinRate"] = 9501
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][2]["MaxRate"] = 9750
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][2]["Type"] = CONST_RANDOM_BUILDEVENT_TYPE.TREASURECAVE
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][2]["TreasureCaveId"] = 3072  --正式：3072
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][3] = {}
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][3]["MinRate"] = 9751
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][3]["MaxRate"] = 10000
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][3]["Type"] = CONST_RANDOM_BUILDEVENT_TYPE.TREASURECAVE
--rwtNpcGroup[nCollect]["RandomAwards"]["RandomEvents"][1]["RandomBuildEvent"][3]["TreasureCaveId"] = 3070  --正式：3070
