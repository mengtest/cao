--region LuaEventModule.lua
--Date
--相关事件LUA  包括动态创建 动态删除  播放剧情等事件



--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================


--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 增加NPC、怪物
-- @param nGenId GenId
-- @param nGroupType NPC组和怪物组ID
-- @param sPos 位置
-- @param nRotationY 旋转角度
-- @param nScale 大小
-- @param bNearBy 是否在身边创建怪物
-- @param nPathid 副本寻路路径
-- @param nSecs 动态创建的组存在时间 秒
-- @return 布尔值
function rwAddGenEvent(nGenId, sPos, nGroupType, nRotationY, nPathid, nScale, bNearBy, nSecs)
    nGenId = nGenId or 0
    nGroupType = nGroupType or 0
    sPos = sPos or ""
    nRotationY = nRotationY or 0
    nPathid = nPathid or 0
    nScale = nScale or 0
    bNearBy = bNearBy or false
    nSecs = nSecs or 0
    rwPrintNormalLog({Func = "rwAddGenEvent",nGenId = nGenId,nGroupType= nGroupType,sPos = sPos,nRotationY = nRotationY,nPathid = nPathid,nScale = nScale,bNearBy = bNearBy,nSecs = nSecs})
    return AddGenEvent(nGenId, nGroupType, nPathid, nSecs, sPos, nRotationY, nScale, bNearBy)    
end

---
-- 删除NPC、怪物
-- @param nGenId GenId
-- @return 布尔值
function rwDelGenEvent(nGenId)
    rwPrintNormalLog({Func = "rwDelGenEvent",nGenId = nGenId})
    return DelGenEvent(nGenId)
end

---
-- 检测怪物、NPC
-- @param nGenId GenId
-- @return 布尔值
function rwHasGenEvent(nGenId)
    rwPrintNormalLog({Func = "rwHasGenEvent",nGenId = nGenId})
    return HasGenEvent(nGenId)
end

---
-- 播放剧情接口
-- @param idStory 剧情id
-- @param nType 类型（1--视频； 2--剧情; ）
-- @param nChgScenePlay 是否切屏后播放--默认切屏（0：不切屏  1：切屏后播放）
-- @param nIdUser为0时，取触发玩家，只发给在线玩家
function rwStoryTrigger(nIdStory, nType, nChgScenePlay,	nIdUser)
    nChgScenePlay = nChgScenePlay or 1
    nType = nType or 2
	nIdUser = nIdUser or 0
    rwPrintNormalLog({Func = "rwStoryTrigger", nIdStory = nIdStory,	nIdUser = nIdUser})
    StoryTrigger(nIdStory, nType, nChgScenePlay, nIdUser)
end

---
-- 新手引导
-- @param nIdGuide 引导id
-- @param nType 引导类型（1--功能引导 2--战斗引导）
function rwStartGuide(nIdGuide, nType)
    nType = nType or 2
    rwPrintNormalLog({Func = "rwStartGuide", nIdGuide = nIdGuide})
    StartGuide(nType, nIdGuide)
end

---
-- 打开解谜
-- @param nId 解谜屋ID
-- @return 布尔值
function rwPuzzleOpen(nId)
    nId = nId * 1000  --TODO
    rwPrintNormalLog({Func = "rwPuzzleOpen",nId = nId})
    return PuzzleOpen(nId)
end

---
-- 解谜返回事件给客户端
-- @param tTable 事件表
-- @return 布尔值
function rwPuzzleRespond(tTable)
    tTable = tTable or {}
    rwPrintNormalLog({Func = "rwPuzzleRespond"})
    return PuzzleRespond(tTable)
end

---
-- 十四日循环活动目标监听
-- @param nType 十四日循环活动目标id,loop_activity_goal表主键
-- @param nNum 触发次数
-- @return 布尔值
function rwRecordLoopActivityEvent(nType,nNum)
    nType = nType or 0
	nNum = nNum or 1
    rwPrintNormalLog({Func = "rwRecordLoopActivityEvent"})
    return RecordLoopActivityEvent(nType,nNum)
end
---
-- 冒泡信息接口
-- @param nGenId  怪物、npc的geneventid
-- @param sTextInfo 冒泡文字 （最好chinese文字申请id配置）
-- @param nMode 与客户端配置功能一直 0代表正常 1代表紧张 2代表思考...
-- @param nShowTime 气泡显示的持续时间 默认0秒
function rwSynBubbleInfo (nGenId,sTextInfo,nMode,nShowTime)
	nGenId = nGenId or 0
	sTextInfo = sTextInfo or ""
	nMode = nMode or 0 
	nShowTime = nShowTime or 0
	SynBubbleInfo(nGenId,sTextInfo,nMode,nShowTime)
end

---
-- 冒泡视野开启接口 
-- 需要使用到冒泡信息接口功能时 需要在该玩法触发时（如隐身变身）同时下发该接口，身上有冒泡视野状态时才会触发冒泡信息接口
-- @param nTime 冒泡视野的持续时间 默认0秒
function rwOpenBubbleView (nTime)
	nTime = nTime or 0
	OpenBubbleView (nTime)
end

--===================================================================
--===============================回调================================
--===================================================================
---
-- [回调]解谜屋里物件点击触发
-- @param nId 场景物件ID
function puzzle_trigger(nId)
    rwLinkPuzzleTrigger(nId)
end

---
-- [回调]剧情视频等结束触发
-- @param nOperType 操作类型（Video=1//视频；CG=2//剧情； Dialog=3//对白）
-- @param nIdOper 对应的操作id
function oper_finish(nOperType,nIdOper)
    rwLinkOperFinish(nOperType,nIdOper)
end

---
-- [回调]新手引导结束触发
-- @param nType 引导类型（1--功能引导 2--战斗引导）
-- @param nIdGuide 引导id
function finish_guide(nType,nIdGuide)
    rwLinkFinishGuide(nType,nIdGuide)
end

---
--[回调进入怪物视野时
-- @param nGenId 怪物或NPC的geneventid
function view_field_trigger (nGenId)
	rwLinkFieldViewTrigger(nGenId)
end

--===================================================================
--==============================回调封装=============================
--===================================================================

function rwLinkFieldViewTrigger(nGenId)
	rwPrintNormalLog({Func = "rwLinkFieldViewTrigger",nGenId = nGenId})
	local sTextInfo
	local nMode
	local nShowTime
	for i,v in pairs(rwtBubbleGenInfo) do
		if i == nGenId then
			local nGroupId = v["EventId"]
			if  v["Type"] == CONST_GEN_EVENTTYPE.NPCGROUP then
				sTextInfo = rwtNpcGroup[nGroupId]["BubbleText"] or ""
				nMode = rwtNpcGroup[nGroupId]["BubbleMode"] or 0
				nShowTime = rwtNpcGroup[nGroupId]["BubbleTime"] or 0
			elseif v["Type"] == CONST_GEN_EVENTTYPE.MONSTERGROUP then
				sTextInfo = rwtMonsterGroup[nGroupId]["BubbleText"] or ""
				nMode = rwtMonsterGroup[nGroupId]["BubbleMode"] or 0
				nShowTime = rwtMonsterGroup[nGroupId]["BubbleTime"] or 0
			end
			break
		end
	end
	rwSynBubbleInfo (nGenId,sTextInfo,nMode,nShowTime)
end

--解谜事件触发  --目前接口返回的是6位的
function rwLinkPuzzleTrigger(nId)
    rwPrintNormalLog({Func = "rwLinkPuzzleTrigger",nId = nId})
    local nPuzzleId = math.floor(nId/1000)  --解谜屋ID
    rwPuzzle_ObjClick(nPuzzleId,nId)      
end

--(视频、剧情)操作完成函数
--nOperType:操作类型（Video=1//视频；CG=2//剧情）
--nIdOper:对应的操作id
function rwLinkOperFinish(nOperType, nIdOper)
    rwPrintNormalLog({Func = "rwLinkOperFinish",nOperType = nOperType,nIdOper = nIdOper})
    local rwtOperFinish = rwtVideoFinish
    if nOperType == 2 then
        rwtOperFinish = rwtCGFinish
    end
    
    if rwtOperFinish[nIdOper] ~= nil and type(rwtOperFinish[nIdOper]) == "table" then

        for _,func in pairs(rwtOperFinish[nIdOper]) do
			func()
		end
    end
end

--新手引导回调函数
-- nType 引导类型（1--功能引导 2--战斗引导）
-- nIdGuide 引导id
function rwLinkFinishGuide(nType, nIdGuide)
    rwPrintNormalLog({Func = "rwLinkFinishGuide",nType = nType,nIdGuide = nIdGuide})
    local rwtLinkGuideFinish = rwtGuideFinish
	
	if rwtLinkGuideFinish[nIdGuide] ~= nil and type(rwtLinkGuideFinish[nIdGuide]) == "table" then
		for _,func in pairs(rwtLinkGuideFinish[nIdGuide]) do
			func()
		end
	end
end


----进入怪物视野时
--function view_field_trigger (nGenId)
--	rwLinkFieldViewTrigger(nGenId)
--end
--function rwLinkFieldViewTrigger(nGenId)

--end


