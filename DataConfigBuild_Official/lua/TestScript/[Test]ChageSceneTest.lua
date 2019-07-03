--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--副本内多场景切换接口测试


--endregion

local nCopyMapId = 3011
local nSubScene = 28

--主副本测试怪
local nMonster_GenId_1 = 3011099


--子场景测试怪
local nMonster_GenId_2 = 28001
local nMonster_GenId_3 = 28002



-------初始化
--子场景初始化
function CopyMap_Test_SubScene_InitMap()--初始化函数
   rwPrintLog("进入子场景，开始执行初始化函数")
   if not tTestMapUserData then
        tTestMapUserData = {}       
   end
   if not tTestMapUserData["EnterNum"] then
       tTestMapUserData["EnterNum"] = 1
    else
         tTestMapUserData["EnterNum"] = tTestMapUserData["EnterNum"] + 1
   end
   local sMsg = "进入次数："..tTestMapUserData["EnterNum"]
   rwPrintLog(sMsg)
   rwSendSystemMessage(sMsg,2)
   if tTestMapUserData["EnterNum"] == 1 then 
            --创建测试怪1
           if not rwHasGenEvent(nMonster_GenId_2) then  
                rwAddGenEvent(nMonster_GenId_2)
           end
    else
            --删除测试怪1
           if rwHasGenEvent(nMonster_GenId_2) then  
                rwDelGenEvent(nMonster_GenId_2)
           end
           --创建测试怪2
           if not rwHasGenEvent(nMonster_GenId_3) then  
                rwAddGenEvent(nMonster_GenId_3)
           end
   end
   rwPrintLog("子场景初始化函数执行完毕")
end
--切图后触发
rwtChangeSceneSucc_Func[nSubScene] = rwtChangeSceneSucc_Func[nSubScene] or {}
table.insert(rwtChangeSceneSucc_Func[nSubScene],CopyMap_Test_SubScene_InitMap)



--主副本初始化
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function(nCopyMapId)
   tTestMapUserData = {}
    --创建测试怪
   if not rwHasGenEvent(nMonster_GenId_1) then  
        rwAddGenEvent(nMonster_GenId_1)
   end
end
