--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
local nPuzzleId = 109

local nTempCordId = 1145

local nTaskId = 70077

local tDialog = {}
tDialog.BookCase_1  =	11895		--点击扶梯前书柜对白
tDialog.Ladder_1  =	11896			--点击书柜后再点击扶梯对白
tDialog.Ladder_2  =	11897			--扶梯通用对白
tDialog.Box_1  =	11898			--解锁矮箱密码前对白
tDialog.Box_2  =	11899			--解锁矮箱失败对白
tDialog.Candle_1  =	11900			--点击过矮箱并且没解谜成功前对白
tDialog.Box_3  =	11901			--解锁矮箱成功对白
tDialog.Candle_Random_1  =	11902	--蜡烛通用随机对白
tDialog.Candle_Random_2  =	11903	--蜡烛通用随机对白
tDialog.Candle_Random_3  =	11904	--蜡烛通用随机对白
tDialog.Knife_1  =	11905			--餐刀通用对白
tDialog.Knife_2  =	11906   		--解锁矮箱成功餐刀对白
tDialog.Paper_Floor_1  =	11907	--使用餐刀成功打开书碎纸对白
tDialog.Paper_Floor_2  =	11908	--碎纸普通对白
tDialog.BookRight  =	11909		--右边书对白
tDialog.Paper_Desk_1  =	11910		--点击桌面纸张第一次对白
--tDialog.Paper_Desk_2  = 11913		--桌面纸张选项1时播放对白
--tDialog.Paper_Desk_3  = 11914		--桌面纸张选项1后点击桌面纸张对白
--tDialog.Paper_Desk_4  = 11915		--桌面纸张选项2时播放对白
tDialog.BookLeft  =   11916			--左侧书对白
tDialog.BookBehind  =   11917		--后侧书对白
tDialog.Ladder_3  =   11918			--拿到上锁的书后扶梯对白
tDialog.BookCase_2  =   11919		--拿到上锁的书未解锁前对白
tDialog.Box_4  =   11920			--打开矮箱后对白
tDialog.BookCase_3 =   11921		--解锁书后书对白
tDialog.Knife_3  =   11922			--解锁书后餐刀对白
--tDialog.Paper_Desk_5  =   11923	--桌面纸张选项1第二次点击桌面纸张后对白
tDialog.Paper_Desk_6  =   11924		--桌面纸张点击完的提示对白
tDialog.Box_5  =   11930			--没拿到书前箱子对白
tDialog.EnterPuzzle = 11894			--进入解密屋对白
tDialog.Paper_Desk_3  = 11974		--收集所有线索对白

local tTempDataIndex = {}
tTempDataIndex.Ladder = CONST_TEMP_DATA.Data1		 --扶梯掩码
tTempDataIndex.Box = CONST_TEMP_DATA.Data2			 --矮箱掩码
tTempDataIndex.Knife = CONST_TEMP_DATA.Data3		 --餐刀掩码
tTempDataIndex.Paper_Floor = CONST_TEMP_DATA.Data4	 --地板碎纸掩码
tTempDataIndex.Paper_Desk =CONST_TEMP_DATA.Data5	 --桌上纸张掩码
tTempDataIndex.Password =CONST_TEMP_DATA.Data6		 --矮箱密码
tTempDataIndex.Effect = CONST_TEMP_DATA.Data7        --光效记录掩码



local tPuzzleEventId = {}
tPuzzleEventId.Ladder = 109003
tPuzzleEventId.BookBehind = 109004
tPuzzleEventId.Box = 109005
tPuzzleEventId.BookLeft = 109006
tPuzzleEventId.Paper_Desk = 109007
tPuzzleEventId.Knife = 109008
tPuzzleEventId.BookRight = 109009
tPuzzleEventId.Paper_Floor = 109010
--tPuzzleEventId.Candle6 = 109011
tPuzzleEventId.Candle3 = 109011
tPuzzleEventId.Candle2 = 109012
tPuzzleEventId.BookCase = 109013
tPuzzleEventId.Exit = 109014

local tPuzzleEffect = {}
tPuzzleEffect.AddPaperDesk = 109101
tPuzzleEffect.AddBookCase = 109102
tPuzzleEffect.RemoveBookCase = 109103
tPuzzleEffect.AddBox = 109104
tPuzzleEffect.AddCandle2_1 = 109105
tPuzzleEffect.AddCandle2_2 = 109106
tPuzzleEffect.RemoveBox = 109107
tPuzzleEffect.AddKnife = 109108
tPuzzleEffect.AddPaperDesk2 = 109109
tPuzzleEffect.RemovePaperDesk = 109110
tPuzzleEffect.AddCandle3_1 = 109111
tPuzzleEffect.AddCandle3_2 = 109112
tPuzzleEffect.AddCandle3_3 = 109113
tPuzzleEffect.AddCandle6_1 = 109114
tPuzzleEffect.AddCandle6_2 = 109115
tPuzzleEffect.AddCandle6_3 = 109116
tPuzzleEffect.AddCandle6_4 = 109117
tPuzzleEffect.AddCandle6_5 = 109118
tPuzzleEffect.AddCandle6_6 = 109119

local tEffectProcess = {}
--tEffectProcess[1]= {}
--tEffectProcess[1]["Value"] = 1
--tEffectProcess[1]["PuzzleEvent"] = {tPuzzleEffect.AddPaperDesk}
tEffectProcess[1]= {}
tEffectProcess[1]["Value"] = 1
tEffectProcess[1]["PuzzleEvent"] = {tPuzzleEffect.AddBookCase}
tEffectProcess[2]= {}
tEffectProcess[2]["Value"] = 2
tEffectProcess[2]["PuzzleEvent"] = {tPuzzleEffect.AddBox}
tEffectProcess[3]= {}
tEffectProcess[3]["Value"] = 3
tEffectProcess[3]["PuzzleEvent"] = {tPuzzleEffect.AddCandle2_1,tPuzzleEffect.AddCandle2_2,tPuzzleEffect.AddCandle3_1,tPuzzleEffect.AddCandle3_2,tPuzzleEffect.AddCandle3_3,tPuzzleEffect.AddCandle6_1,tPuzzleEffect.AddCandle6_2,tPuzzleEffect.AddCandle6_3,tPuzzleEffect.AddCandle6_4,tPuzzleEffect.AddCandle6_5,tPuzzleEffect.AddCandle6_6,tPuzzleEffect.AddBox}
tEffectProcess[4]= {}
tEffectProcess[4]["Value"] = 4
tEffectProcess[4]["PuzzleEvent"] = {tPuzzleEffect.AddCandle2_1,tPuzzleEffect.AddCandle2_2,tPuzzleEffect.AddCandle3_1,tPuzzleEffect.AddCandle3_2,tPuzzleEffect.AddCandle3_3,tPuzzleEffect.AddCandle6_1,tPuzzleEffect.AddCandle6_2,tPuzzleEffect.AddCandle6_3,tPuzzleEffect.AddCandle6_4,tPuzzleEffect.AddCandle6_5,tPuzzleEffect.AddCandle6_6,tPuzzleEffect.AddKnife}
tEffectProcess[5]= {}
tEffectProcess[5]["Value"] = 5
tEffectProcess[5]["PuzzleEvent"] = {tPuzzleEffect.AddCandle2_1,tPuzzleEffect.AddCandle2_2,tPuzzleEffect.AddCandle3_1,tPuzzleEffect.AddCandle3_2,tPuzzleEffect.AddCandle3_3,tPuzzleEffect.AddCandle6_1,tPuzzleEffect.AddCandle6_2,tPuzzleEffect.AddCandle6_3,tPuzzleEffect.AddCandle6_4,tPuzzleEffect.AddCandle6_5,tPuzzleEffect.AddCandle6_6,tPuzzleEffect.AddKnife,tPuzzleEffect.AddPaperDesk2}




tPuzzleEvent[nPuzzleId] = {}
    tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder] = {} --梯子
    tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Ladder   --梯子掩码data1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][1]["Value"] = 2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][1]["DialogId"] = tDialog.Ladder_3  --判断已经拿到了书
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Ladder   --梯子掩码data1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["Value"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["DialogId"] = tDialog.Ladder_1  --点击过柜子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["SetUserTempData"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["SetUserTempData"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["SetUserTempData"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Ladder   --设置掩码为已经移动过梯子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["SetUserTempData"][1]["SetValue"] = 2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][2]["PuzzleEvent"] = {tPuzzleEffect.RemoveBookCase}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][3] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][3]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP   --没点过柜子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][3]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][3]["DataIndex"] = tTempDataIndex.Ladder   
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][3]["Value"] = 0
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Ladder]["TempCordChk"][3]["DialogId"] = tDialog.Ladder_2


	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookBehind] = {} --后侧书
    tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookBehind]["ClickDialog"] = tDialog.BookBehind

	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box] = {} --矮箱
    tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Box  --矮箱掩码data3
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][1]["Value"] = 3
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][1]["DialogId"] = tDialog.Box_4   --已经开箱取出过钥匙
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][2] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP 
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][2]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Box    
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][2]["Value"] = 2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][2]["DialogId"] = tDialog.Box_1  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP 
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["DataIndex"] = tTempDataIndex.Box    --已经试图打开箱子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["Value"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["DialogId"] = tDialog.Box_1  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["SetUserTempData"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["SetUserTempData"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["SetUserTempData"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Box   --已经试图打开箱子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][3]["SetUserTempData"][1]["SetValue"] = 2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  --判断是否拿到了书
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["DataIndex"] = tTempDataIndex.Ladder    --已经移动过梯子到了书
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["Value"] = 2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["DialogId"] = tDialog.Box_1  --拿到了书想要解锁箱子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["SetUserTempData"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["SetUserTempData"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["SetUserTempData"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Box   --已经试图打开箱子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][4]["SetUserTempData"][1]["SetValue"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][5] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][5]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP   --初始常态对白
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][5]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][5]["DataIndex"] =  tTempDataIndex.Box
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][5]["Value"] = 0
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Box]["TempCordChk"][5]["DialogId"] = tDialog.Box_5


	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookLeft] = {} --左侧书
    tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookLeft]["ClickDialog"] = tDialog.BookLeft

	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk] = {} --桌上纸张
    tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Paper_Desk   --桌上纸张掩码
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][1]["Value"] = 2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][1]["DialogId"] = tDialog.Paper_Desk_3  --收集所有线索后对白
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][2] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][2]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Paper_Desk   --桌上纸张掩码
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][2]["Value"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][2]["DialogId"] = tDialog.Paper_Desk_6  --获得第一个线索后
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["DataIndex"] = tTempDataIndex.Paper_Desk --桌上纸张掩码
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["Value"] = 0
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["DialogId"] = tDialog.Paper_Desk_1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["SetUserTempData"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["SetUserTempData"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["SetUserTempData"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["SetUserTempData"][1]["DataIndex"] =  tTempDataIndex.Paper_Desk --设置为已经点击过第一次纸张
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Desk]["TempCordChk"][3]["SetUserTempData"][1]["SetValue"] = 1


	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife] = {} --餐刀
    tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Knife   --餐刀掩码data6
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][1]["Value"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][1]["DialogId"] = tDialog.Knife_3   --已经打开了书
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  --判断用箱子钥匙开过
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Box     --已经用箱子钥匙开过
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["Value"] = 3
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["DialogId"] = tDialog.Knife_2  --用刀开锁
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["SetUserTempData"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["SetUserTempData"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["SetUserTempData"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Knife  --设置已经打开了书
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][2]["SetUserTempData"][1]["SetValue"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][3] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][3]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP   --常态
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][3]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][3]["DataIndex"] = tTempDataIndex.Knife 
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][3]["Value"] = 0
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Knife]["TempCordChk"][3]["DialogId"] = tDialog.Knife_1


	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookRight] = {} --右侧书
    tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookRight]["ClickDialog"] = tDialog.BookRight

	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor] = {} --碎纸
    tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP   --已经读过
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Paper_Floor
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][1]["Value"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][1]["DialogId"] = tDialog.Paper_Floor_1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP   --开过书
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Knife
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["Value"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["DialogId"] = tDialog.Paper_Floor_1  
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["nId"] = 70077
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["SetUserTempData"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["SetUserTempData"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["SetUserTempData"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Paper_Floor  --设置掩码为已经开过碎纸
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["SetUserTempData"][1]["SetValue"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["SetUserTempData"][2] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["SetUserTempData"][2]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["SetUserTempData"][2]["DataIndex"] = tTempDataIndex.Paper_Desk  --设置掩码为已经开过碎纸
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][2]["SetUserTempData"][2]["SetValue"] = 2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][3] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][3]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP   --常态碎纸
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][3]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][3]["DataIndex"] = CONST_TEMP_DATA.Data8
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][3]["Value"] = 0
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Paper_Floor]["TempCordChk"][3]["DialogId"] = tDialog.Paper_Floor_2

--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6] = {} --6火蜡烛
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"] = {}
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][1] = {}
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][1]["TempDataID"] = nTempCordId
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Box    --已经试图开箱子
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][1]["Value"] = 1
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][1]["DialogId"] = tDialog.Candle_1  
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][2] = {}
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][2]["TempDataID"] = nTempCordId
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Box    --开箱完正常随机对白
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][2]["Value"] = 2
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][2]["DialogId"] = {tDialog.Candle_Random_1,tDialog.Candle_Random_2,tDialog.Candle_Random_3}
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][3] = {}
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][3]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][3]["TempDataID"] = nTempCordId
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][3]["DataIndex"] = tTempDataIndex.Box    --常态随机对白
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][3]["Value"] = 0
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle6]["TempCordChk"][3]["DialogId"] = {tDialog.Candle_Random_1,tDialog.Candle_Random_2,tDialog.Candle_Random_3}

	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3] = {} --3火蜡烛
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Box    --已经试图开箱子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][1]["Value"] = 2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][1]["DialogId"] = tDialog.Candle_1  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][2] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][2]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Box    --已经试图开箱子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][2]["Value"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][2]["DialogId"] = tDialog.Candle_1  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][3] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][3]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][3]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][3]["DataIndex"] = tTempDataIndex.Box    --开箱完正常随机对白
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][3]["Value"] = 3
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][3]["DialogId"] = {tDialog.Candle_Random_1,tDialog.Candle_Random_2,tDialog.Candle_Random_3}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][4] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][4]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][4]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][4]["DataIndex"] = tTempDataIndex.Box    --常态随机对白
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][4]["Value"] = 0
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle3]["TempCordChk"][4]["DialogId"] = {tDialog.Candle_Random_1,tDialog.Candle_Random_2,tDialog.Candle_Random_3}

	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2] = {} --2火蜡烛
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Box    --已经试图开箱子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][1]["Value"] = 2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][1]["DialogId"] = tDialog.Candle_1  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][2] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][2]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Box    --已经试图开箱子
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][2]["Value"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][2]["DialogId"] = tDialog.Candle_1  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][3] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][3]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][3]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][3]["DataIndex"] = tTempDataIndex.Box    --开箱完正常随机对白
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][3]["Value"] = 3
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][3]["DialogId"] = {tDialog.Candle_Random_1,tDialog.Candle_Random_2,tDialog.Candle_Random_3}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][4] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][4]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][4]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][4]["DataIndex"] = tTempDataIndex.Box    --常态随机对白
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][4]["Value"] = 0
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Candle2]["TempCordChk"][4]["DialogId"] = {tDialog.Candle_Random_1,tDialog.Candle_Random_2,tDialog.Candle_Random_3}


	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase] = {} --书柜
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"] = {}
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1] = {}
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["TempDataID"] = nTempCordId
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Knife    --已经打开了书
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["Value"] = 1
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["DialogId"] = tDialog.BookCase_3  
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2] = {}
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["TempDataID"] = nTempCordId
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Ladder    --已经拿到了书
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["Value"] = 2
--	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["DialogId"] = tDialog.BookCase_2
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["DataIndex"] = tTempDataIndex.Ladder    --已经点击过书柜但是没拿到书
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["Value"] = 1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][1]["DialogId"] = tDialog.BookCase_1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["DataIndex"] = tTempDataIndex.Ladder    --还没点击过书柜
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["Value"] = 0
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["DialogId"] = tDialog.BookCase_1
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["SetUserTempData"] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["SetUserTempData"][1] = {}
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["SetUserTempData"][1]["TempDataID"] = nTempCordId
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Ladder  --设置掩码为已经开过碎纸
	tPuzzleEvent[nPuzzleId][tPuzzleEventId.BookCase]["TempCordChk"][2]["SetUserTempData"][1]["SetValue"] = 1


	tPuzzleEvent[nPuzzleId][tPuzzleEventId.Exit] = {} --离开


local tDialogOption = {}
tDialogOption[1] = {}
tDialogOption[1]["Text"] = {}
tDialogOption[1]["Text"]["DialogId"] = 60892
tDialogOption[1]["Text"]["Content"] = "这个矮箱需要<color=#bd1011>三个数字</color>才能解开它的魔法封印。"
tDialogOption[1]["Text"]["TalkId"] = 101
tDialogOption[1]["Text"]["LeftId"] = 101
tDialogOption[1]["Text"]["LeftFace"] = 0
tDialogOption[1]["Text"]["HideContine"] = 1
tDialogOption[1]["Option"] = {}
tDialogOption[1]["Option"][1] = {}
tDialogOption[1]["Option"][1]["Text"] = "第一位数字为2"
tDialogOption[1]["Option"][1]["Func"] = "</F>WenlimengjingPuzzleBoxOption_1"
tDialogOption[1]["Option"][2] = {}
tDialogOption[1]["Option"][2]["Text"] = "第一位数字为4"
tDialogOption[1]["Option"][2]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Wrong_1"
tDialogOption[1]["Option"][3] = {}
tDialogOption[1]["Option"][3]["Text"] = "第一位数字为6"
tDialogOption[1]["Option"][3]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Wrong_1"
tDialogOption[1]["Option"][4] = {}
tDialogOption[1]["Option"][4]["Text"] = "第一位数字为8"
tDialogOption[1]["Option"][4]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Wrong_1"
tDialogOption[1]["Option"][5] = {}
tDialogOption[1]["Option"][5]["Text"] = "没头绪，再去找找线索。"
tDialogOption[1]["Option"][5]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Giveup"
tDialogOption[2] = {}
tDialogOption[2]["Text"] = {}
tDialogOption[2]["Text"]["DialogId"] = 60893
tDialogOption[2]["Text"]["Content"] = "这个矮箱需要<color=#bd1011>三个数字</color>才能解开它的魔法封印。"
tDialogOption[2]["Text"]["TalkId"] = 101
tDialogOption[2]["Text"]["LeftId"] = 101
tDialogOption[2]["Text"]["LeftFace"] = 0
tDialogOption[2]["Text"]["HideContine"] = 1
tDialogOption[2]["Option"] = {}
tDialogOption[2]["Option"][1] = {}
tDialogOption[2]["Option"][1]["Text"] = "第二位数字为1"
tDialogOption[2]["Option"][1]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Wrong_2"
tDialogOption[2]["Option"][2] = {}
tDialogOption[2]["Option"][2]["Text"] = "第二位数字为3"
tDialogOption[2]["Option"][2]["Func"] = "</F>WenlimengjingPuzzleBoxOption_2"
tDialogOption[2]["Option"][3] = {}
tDialogOption[2]["Option"][3]["Text"] = "第二位数字为5"
tDialogOption[2]["Option"][3]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Wrong_2"
tDialogOption[2]["Option"][4] = {}
tDialogOption[2]["Option"][4]["Text"] = "第二位数字为7"
tDialogOption[2]["Option"][4]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Wrong_2"
tDialogOption[2]["Option"][5] = {}
tDialogOption[2]["Option"][5]["Text"] = "没头绪，再去找找线索。"
tDialogOption[2]["Option"][5]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Giveup"
tDialogOption[3] = {}
tDialogOption[3]["Text"] = {}
tDialogOption[3]["Text"]["DialogId"] = 60894
tDialogOption[3]["Text"]["Content"] = "这个矮箱需要<color=#bd1011>三个数字</color>才能解开它的魔法封印。"
tDialogOption[3]["Text"]["TalkId"] = 101
tDialogOption[3]["Text"]["LeftId"] = 101
tDialogOption[3]["Text"]["LeftFace"] = 0
tDialogOption[3]["Text"]["HideContine"] = 1
tDialogOption[3]["Option"] = {}
tDialogOption[3]["Option"][1] = {}
tDialogOption[3]["Option"][1]["Text"] = "第三位数字为2"
tDialogOption[3]["Option"][1]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Wrong_3"
tDialogOption[3]["Option"][2] = {}
tDialogOption[3]["Option"][2]["Text"] = "第三位数字为4"
tDialogOption[3]["Option"][2]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Wrong_3"
tDialogOption[3]["Option"][3] = {}
tDialogOption[3]["Option"][3]["Text"] = "第三位数字为6"
tDialogOption[3]["Option"][3]["Func"] = "</F>WenlimengjingPuzzleBoxOption_3"
tDialogOption[3]["Option"][4] = {}
tDialogOption[3]["Option"][4]["Text"] = "第三位数字为8"
tDialogOption[3]["Option"][4]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Wrong_3"
tDialogOption[3]["Option"][5] = {}
tDialogOption[3]["Option"][5]["Text"] = "没头绪，再去找找线索。"
tDialogOption[3]["Option"][5]["Func"] = "</F>WenlimengjingPuzzleBoxOption_Giveup"

rwtDialog[tDialog.Box_1] = {} --想解锁箱子  添加蜡烛特效 标记为播放蜡烛光效
rwtDialog[tDialog.Box_1]["DialogEndInit"] = {}
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["ChkEventCond"] = {}
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"] = {}
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempCordId
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = tTempDataIndex.Box
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Effect
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 3
rwtDialog[tDialog.Box_1]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEffect.AddCandle2_1,tPuzzleEffect.AddCandle2_2,tPuzzleEffect.AddCandle3_1,tPuzzleEffect.AddCandle3_2,tPuzzleEffect.AddCandle3_3,tPuzzleEffect.AddCandle6_1,tPuzzleEffect.AddCandle6_2,tPuzzleEffect.AddCandle6_3,tPuzzleEffect.AddCandle6_4,tPuzzleEffect.AddCandle6_5,tPuzzleEffect.AddCandle6_6}
rwtDialog[tDialog.Box_1]["DialogEnd"] = function ()
	rwNpcDialogText(tDialogOption[1]["Text"])
    rwNpcDialogOption(tDialogOption[1]["Option"])
end


function WenlimengjingPuzzleBoxOption_1 ()
	rwTempDataSet(nTempCordId,0,tTempDataIndex.Password)  --第一次选对重置掩码防止掉线重新进解谜出BUG打不开
	rwNpcDialogText(tDialogOption[2]["Text"])
    rwNpcDialogOption(tDialogOption[2]["Option"])
                   
end
function WenlimengjingPuzzleBoxOption_2 ()
	rwNpcDialogText(tDialogOption[3]["Text"])
    rwNpcDialogOption(tDialogOption[3]["Option"])
end
function WenlimengjingPuzzleBoxOption_3 ()
	local nValue = rwTempDataGetValue(nTempCordId,tTempDataIndex.Password)
	if nValue == 1 then
		rwOpenNpcChatDialog(tDialog.Box_2)
		rwTempDataSet(nTempCordId,0,tTempDataIndex.Password)  --开箱失败重置掩码防止打不开
		return
	end	
	rwTempDataSet(nTempCordId,3,tTempDataIndex.Box)
	rwTempDataSet(nTempCordId,3,tTempDataIndex.Ladder)
	rwOpenNpcChatDialog(tDialog.Box_3)
end
function WenlimengjingPuzzleBoxOption_Wrong_1 ()
	rwTempDataSet(nTempCordId,1,tTempDataIndex.Password)
	rwNpcDialogText(tDialogOption[2]["Text"])
    rwNpcDialogOption(tDialogOption[2]["Option"])
end
function WenlimengjingPuzzleBoxOption_Wrong_2 ()
	rwTempDataSet(nTempCordId,1,tTempDataIndex.Password)
	rwNpcDialogText(tDialogOption[3]["Text"])
    rwNpcDialogOption(tDialogOption[3]["Option"])
end
function WenlimengjingPuzzleBoxOption_Wrong_3 ()
	rwOpenNpcChatDialog(tDialog.Box_2)
end
function WenlimengjingPuzzleBoxOption_Giveup ()
    rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk)
	rwTempDataSet(nTempCordId,0,tTempDataIndex.Password)
end


rwtDialog[tDialog.Paper_Desk_1] = {} --点击过稿纸 添加书柜特效 移除纸张特效  标记再次进入播放书柜特效
rwtDialog[tDialog.Paper_Desk_1]["DialogEndInit"] = {}
rwtDialog[tDialog.Paper_Desk_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Paper_Desk_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Paper_Desk_1]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEffect.AddBookCase,tPuzzleEffect.RemovePaperDesk}
rwtDialog[tDialog.Paper_Desk_1]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tDialog.Paper_Desk_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tDialog.Paper_Desk_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
rwtDialog[tDialog.Paper_Desk_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Effect
rwtDialog[tDialog.Paper_Desk_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1


--rwtDialog[tDialog.Paper_Desk_1]["OptionFunc1"] = function ()
--	rwOpenNpcChatDialog(tDialog.Paper_Desk_2)
--end
--rwtDialog[tDialog.Paper_Desk_1]["OptionFunc2"] = function ()
--	rwOpenNpcChatDialog(tDialog.Paper_Desk_4)
--end

--rwtDialog[tDialog.Paper_Desk_2] = {}
--rwtDialog[tDialog.Paper_Desk_2]["DialogEnd"] = function ()
--	rwTempDataSet(nTempCordId,1,tTempDataIndex.Paper_Desk)
--end
--rwtDialog[tDialog.Paper_Desk_4] = {}
--rwtDialog[tDialog.Paper_Desk_4]["DialogEnd"] = function ()
--	rwTempDataSet(nTempCordId,3,tTempDataIndex.Paper_Desk)
--end

rwtDialog[tDialog.Paper_Desk_3] = {}
rwtDialog[tDialog.Paper_Desk_3]["OptionFunc1"] = function ()
	if not rwTaskIsComplete(nTaskId) then
		rwTaskSetData(nTaskId,CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG,2)
	end	
	tInfo = {tPuzzleEventId.Exit}
	rwPuzzleRespond(tInfo)  --选离开退出解密屋
	
end
rwtDialog[tDialog.Paper_Desk_3]["OptionFunc2"] = function ()
	if not rwTaskIsComplete(nTaskId) then
		rwTaskSetData(nTaskId,CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG,2)
	end	
end



rwtDialog[tDialog.EnterPuzzle] = {}
rwtDialog[tDialog.EnterPuzzle]["DialogEnd"] = function ()
	local nValue = rwTempDataGetValue(nTempCordId,tTempDataIndex.Effect)
	local bResult = true
	local tInfo 
	for i,v in pairs(tEffectProcess) do 
		if nValue == v["Value"] then
			bResult = false
			tInfo = v["PuzzleEvent"]
			break
		end
	end
	if bResult  then
		tInfo = {tPuzzleEffect.AddPaperDesk}
	end
	rwPuzzleRespond(tInfo)	
end
--rwtDialog[tDialog.EnterPuzzle]["DialogEndInit"] = {}
--rwtDialog[tDialog.EnterPuzzle]["DialogEndInit"]["Events"] = {}
--rwtDialog[tDialog.EnterPuzzle]["DialogEndInit"]["Events"][1] = {}
--rwtDialog[tDialog.EnterPuzzle]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEffect.AddPaperDesk}

rwtDialog[tDialog.BookCase_1] = {}
rwtDialog[tDialog.BookCase_1]["DialogEndInit"] = {}
rwtDialog[tDialog.BookCase_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.BookCase_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.BookCase_1]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEffect.RemoveBookCase}

rwtDialog[tDialog.Ladder_1] = {} --拿到书对白 添加箱子特效 标记播放箱子特效
rwtDialog[tDialog.Ladder_1]["DialogEndInit"] = {}
rwtDialog[tDialog.Ladder_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Ladder_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Ladder_1]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEffect.AddBox}
rwtDialog[tDialog.Ladder_1]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tDialog.Ladder_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tDialog.Ladder_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
rwtDialog[tDialog.Ladder_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Effect
rwtDialog[tDialog.Ladder_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 2

rwtDialog[tDialog.Box_3] = {}  --开启宝箱成功对白  删除箱子特效 添加餐刀特效
rwtDialog[tDialog.Box_3]["DialogEndInit"] = {}
rwtDialog[tDialog.Box_3]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Box_3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Box_3]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEffect.AddKnife,tPuzzleEffect.RemoveBox}
rwtDialog[tDialog.Box_3]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tDialog.Box_3]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tDialog.Box_3]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
rwtDialog[tDialog.Box_3]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Effect
rwtDialog[tDialog.Box_3]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 4

rwtDialog[tDialog.Paper_Floor_1] = {}  --碎纸最终对白完添加桌上纸张特效
rwtDialog[tDialog.Paper_Floor_1]["DialogEndInit"] = {}
rwtDialog[tDialog.Paper_Floor_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Paper_Floor_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Paper_Floor_1]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEffect.AddPaperDesk2}
rwtDialog[tDialog.Paper_Floor_1]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tDialog.Paper_Floor_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tDialog.Paper_Floor_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
rwtDialog[tDialog.Paper_Floor_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = tTempDataIndex.Effect
rwtDialog[tDialog.Paper_Floor_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 5


--function WenlimengjingTest ()
--	rwNpcDialogText(tDialogOption[1]["Text"])
--    rwNpcDialogOption(tDialogOption[1]["Option"])
--end

