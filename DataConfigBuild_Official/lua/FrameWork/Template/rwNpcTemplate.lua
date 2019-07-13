--region rwNpcTemplate.lua
--Date
--NPC模板封装
--YJX


--endregion

local t_Lua_StrRes={}
t_Lua_StrRes["DefaultTxt"] = "    很高兴见到您！"
t_Lua_StrRes["DefaultOptionTxt"] = "关闭"

--JSON中字段
local m_Str = "Text"  --文本内容

local m_DialogId = "Id" --对白id

local m_talkId = "talkId"    --  说话者

local m_Leftid = "Leftid"    --  左半身像，填写NPCid
local m_leftFace = "leftFace"    --  左边表情编号

local m_Midid = "Midid"    --  中间半身像
local m_midFace = "midFace"    --  中间表情

local m_Rightid = "Rightid"    --  右半身像，填写NPCid
local m_rightFace = "rightFace"    --  右边表情编号

local m_voiceId = "voiceId"    --  配音ID

local m_IsSkip = "IsSkip"       --是否能跳过（1：能跳过 0：不能跳过 默认不能跳过）
local m_hasMore = "hasMore"     --是否还有下一句（0：当前对白为最后一句 1:后续还有对白，不关闭对白界面 默认为最后一句，即当前对白结束后关闭对白界面）
---------
local m_optionText = "optionText"  --选项文字
local m_optionState = "optionState"  --选项状态
local m_optionFunc = "optionFunc"  --回调函数

local NPCOPTION_MAX_NUM = 4  --功能选项最多个数
local OPTION_MAX_NUM = 5  --选项最多个数

--===============================================================================--
--=========				    	       模板			     				=========--
--===============================================================================--
rwNpcTemplate = class("rwNpcTemplate")

--[Comment]
--_GroupTypeId:组ID
--_NpcTypeId:nNpcId
--_TaskList:任务列表
function rwNpcTemplate:ctor(nGroupTypeId,nNpcTypeId)
    self._GroupTypeId = nGroupTypeId
	self._NpcTypeId = nNpcTypeId
    self._DialogId = 0
    self._TaskList = {}
    self._FinishTaskList = {}
end

--[Comment]
--NPC流程
function rwNpcTemplate:Process()    
    local bShowFlag = true  --是否显示对话框

    if not rwtNpc[self._NpcTypeId] then
        return
    end

    --NPC自定义逻辑
	if rwChkFunc(rwtNpc[self._NpcTypeId]["NpcProcess"]) then  
        rwtNpc[self._NpcTypeId]["NpcProcess"](self._GroupTypeId,self._NpcTypeId)
        return 
    end

    --NPC任务结束表判断
    if rwtTaskEndNpcInfo[self._NpcTypeId] then
        local nIndex = 1
        local nTaskNum = 0
        while(rwtTaskEndNpcInfo[self._NpcTypeId][nIndex]) do
            local nTaskId = rwtTaskEndNpcInfo[self._NpcTypeId][nIndex]
            if rwTaskIsAccept(nTaskId) and not rwTaskIsSuccess(nTaskId) and rwTaskIsComplete(nTaskId) then
                nTaskNum = nTaskNum + 1
                table.insert(self._FinishTaskList,nTaskId)
            end
            nIndex = nIndex + 1
        end

        --单个任务直接出现任务对白
        if nTaskNum == 1 then
            bShowFlag = false
            self:NpcTaskCompleteDialogue()
            return
        end
    end

    --一般流程
    if rwtTaskNpcInfo[self._NpcTypeId] then
        local nIndex = 1
        local nTaskNum = 0
        while(rwtTaskNpcInfo[self._NpcTypeId][nIndex]) do
            local nTaskId = rwtTaskNpcInfo[self._NpcTypeId][nIndex]
            if rwTaskChkUserInTask(nTaskId) then
                nTaskNum = nTaskNum + 1
                table.insert(self._TaskList,nTaskId)
            end
            nIndex = nIndex + 1
        end

        --单个任务直接出现任务对白
        if nTaskNum == 1 then
            bShowFlag = false
            self:NpcTaskDialogue()
            return
        end     
    end

    if bShowFlag then
        self:NpcDialogue()
        self:NpcDialogOption()
    end
end

--[Comment]
--选项逻辑
function rwNpcTemplate:NpcDialogOption()    
    local tOptionInfo = {}
    local nNpcOptionIndex = 0

    tOptionInfo["data"] = {}
        
    --功能选项
    local nIndex = 1 
    if rwChkTable(rwtNpc[self._NpcTypeId]["Option"]) then
        while(rwtNpc[self._NpcTypeId]["Option"][nIndex]) do
            local bNpcOptionShow = true
            if rwChkFunc(rwtNpc[self._NpcTypeId]["Option"][nIndex]["Chk"]) then
                bNpcOptionShow = rwtNpc[self._NpcTypeId]["Option"][nIndex]["Chk"]()
            end
            if bNpcOptionShow then
                nNpcOptionIndex = nNpcOptionIndex + 1
                table.insert(tOptionInfo["data"],{["index"] = nNpcOptionIndex,
                [m_optionText] = rwtNpc[self._NpcTypeId]["Option"][nIndex]["Title"] or "",
                [m_optionState] = rwtNpc[self._NpcTypeId]["Option"][nIndex]["State"] or 0,
                [m_optionFunc] = "</F>rwLinkNpcOptionClick</N>".. self._NpcTypeId .."</N>".. nIndex .."</N>".. self._DialogId
                })

                if nNpcOptionIndex >= NPCOPTION_MAX_NUM then
                    break
                end
            end
            nIndex = nIndex + 1
        end
    end

    for i=1, OPTION_MAX_NUM - nNpcOptionIndex do

        local taskid = self._TaskList[i]
        if not taskid then
            break
        end
        nNpcOptionIndex = nNpcOptionIndex + 1
        table.insert(tOptionInfo["data"],i,{["index"] = nNpcOptionIndex,
            [m_optionText] = rwtTask[taskid]["Title"] or "",
            [m_optionState] = 1,
            [m_optionFunc] = "</F>rwLinkTaskNpcDialog</N>" .. taskid
        })
    end

    if #tOptionInfo["data"] > 0 then
        local sOptionStr = rwTable2Json(tOptionInfo)
        rwAddDlgOption(sOptionStr)
    end
end

--任务对白
function rwNpcTemplate:NpcTaskDialogue()
    local nTaskId = self._TaskList[1]
    if not nTaskId then
        return
    end
    if rwtTask[nTaskId] and rwtTask[nTaskId]["DialogId"] and rwtTask[nTaskId]["TaskNpc"] == self._NpcTypeId then
        rwOpenNpcChatDialog(rwtTask[nTaskId]["DialogId"],CONST_NPCCHAT_TYPE.TASK,nTaskId)
        self._DialogId = rwtTask[nTaskId]["DialogId"]
    end
end

--任务完成对白
function rwNpcTemplate:NpcTaskCompleteDialogue()
    local nTaskId = self._FinishTaskList[1]
    if not nTaskId then
        return
    end
    if rwtTask[nTaskId] and rwtTask[nTaskId]["FinishDialogId"] and rwtTask[nTaskId]["EndNpc"] == self._NpcTypeId then
        rwOpenNpcChatDialog(rwtTask[nTaskId]["FinishDialogId"],CONST_NPCCHAT_TYPE.TASK,nTaskId)
        self._DialogId = rwtTask[nTaskId]["FinishDialogId"]
    end
end

--普通对白
function rwNpcTemplate:NpcDialogue()
    local sMark = "DialogId"
    sMark = NPCGroupCaiDan_Process(self._NpcTypeId,sMark)

    if rwtNpc[self._NpcTypeId]["ChkOpen"] then
        --判断是否开放的NPC，默认取第一个选项
        if rwtNpc[self._NpcTypeId]["Option"] and rwtNpc[self._NpcTypeId]["Option"][1] and rwChkFunc(rwtNpc[self._NpcTypeId]["Option"][1]["Chk"]) then
            if rwChkFunc(rwtNpc[self._NpcTypeId]["Option"][1]["TaskChk"]) then
                if rwtNpc[self._NpcTypeId]["Option"][1]["TaskChk"]() then
                    sMark = "TaskIngDialogId"
                end
            end
            if sMark =="TaskIngDialogId" then
            else
                if not rwtNpc[self._NpcTypeId]["Option"][1]["Chk"]() then
                    sMark = "NotOpenDialogId"
                end
            end
        end
    end

	if rwChkTable(rwtNpc[self._NpcTypeId]["ExtraGenChk"]) then
		local bExtra = false 
		for i,v in pairs(rwtNpc[self._NpcTypeId]["ExtraGenChk"]) do
			if rwHasGenEvent(v) then
				bExtra = true
			end
		end
		if not bExtra then
			sMark = "ExtraDialogId"
		end
	end
	
	if rwChkFunc(rwtNpc[self._NpcTypeId]["SceneNpcChk"]) then
		local nTaskNum =#self._TaskList
		if nTaskNum == 0 then
			if rwtNpc[self._NpcTypeId]["SceneNpcChk"]() then
				return
			end
		end	
	end

    --如果是播放普通对白，检测掩码是否播放其他对白
    if sMark == "DialogId" then
        if rwChkTable(rwtNpc[self._NpcTypeId]["ChkUserTempData"]) then
            local nTempId = rwtNpc[self._NpcTypeId]["ChkUserTempData"]["Id"]
            local nData = rwtNpc[self._NpcTypeId]["ChkUserTempData"]["Data"] or 1
            if rwTempDataIsExist(nTempId,rwUserGetId()) and rwTempDataGetValue(nTempId,CONST_TEMP_DATA.Data1,rwUserGetId()) == nData then
                if rwChkInt(rwtNpc[self._NpcTypeId]["ChkUserTempData"]["DoOtherDialogId"])then
                    rwOpenNpcChatDialog(rwtNpc[self._NpcTypeId]["ChkUserTempData"]["DoOtherDialogId"])
                    self._DialogId = rwtNpc[self._NpcTypeId]["ChkUserTempData"]["DoOtherDialogId"]
                end
                return
            end
        end
    end

    if rwtNpc[self._NpcTypeId][sMark] then
        if rwChkInt(rwtNpc[self._NpcTypeId][sMark]) then
            rwOpenNpcChatDialog(rwtNpc[self._NpcTypeId][sMark],CONST_NPCCHAT_TYPE.NPC,self._NpcTypeId)
            self._DialogId = rwtNpc[self._NpcTypeId][sMark]
        elseif rwChkTable(rwtNpc[self._NpcTypeId][sMark]) then
            local nRandom = math.random(1,#rwtNpc[self._NpcTypeId][sMark])
            rwOpenNpcChatDialog(rwtNpc[self._NpcTypeId][sMark][nRandom],CONST_NPCCHAT_TYPE.NPC,self._NpcTypeId)
            self._DialogId = rwtNpc[self._NpcTypeId][sMark][nRandom]
        end
    else
        rwNpcDialogText({Content = "你好！"})
    end
end

--===============================================================================--
--=========				    	       函数			     				=========--
--===============================================================================--
--[Comment]
--tInfo:对白配置
function rwNpcDialogText(tInfo,sFunc)
    if not tInfo then
        return
    end
	sFunc = sFunc or ""
    local tJsonTable = {}       
    tJsonTable[m_Str] = tInfo["Content"] or ""   --  对白内容
    tJsonTable[m_DialogId] = tInfo["DialogId"] or 0   --  对白id
    tJsonTable[m_talkId] = tInfo["TalkId"] or -1   --  说话者
    tJsonTable[m_Leftid] = tInfo["LeftId"] or -1   --  左半身像，填写NPCid
    tJsonTable[m_leftFace] = tInfo["LeftFace"] or 0   --  左边表情编号
    tJsonTable[m_Midid] = tInfo["Midid"] or -1   --  中间半身像，填写NPCid
    tJsonTable[m_midFace] = tInfo["MidFace"] or 0   --  中间表情编号
    tJsonTable[m_Rightid] = tInfo["Rightid"] or -1   --  右半身像，填写NPCid
    tJsonTable[m_rightFace] = tInfo["RightFace"] or 0   --  右边表情编号
    tJsonTable[m_voiceId] = tInfo["VoiceId"] or 0  --  配音ID
    tJsonTable[m_IsSkip] = tInfo["IsSkip"] or 0  --是否可跳过
    tJsonTable[m_hasMore] = tInfo["HasMore"] or 0  --是否有下一句

    local sStr = rwTable2Json(tJsonTable)
    rwAddDlgText(sStr,sFunc)
end

--[Comment]
--tInfo:选项配置
function rwNpcDialogOption(tInfo)
    if not tInfo then
        return
    end
    local tJsonTable = {}
    tJsonTable["data"] = {}

    for i,v in ipairs(tInfo) do
        table.insert(tJsonTable["data"],{["index"] = i,
        [m_optionText] = v["Text"] or "",
        [m_optionState] = v["State"] or 0,
        [m_optionFunc] = v["Func"] or ""
        })
    end

    local sStr = rwTable2Json(tJsonTable)
    rwAddDlgOption(sStr)
end