--region *.lua
--Date
--此文件由[BabeLua]插件自动生成


local nXuanShang_YanMa = 1161  --悬赏任务次数记录掩码
--endregion
--悬赏任务

--单个悬赏任务完成
function RweardTask_Finish(nTaskId)
    if not rwtTask[nTaskId] then
        return 
    end
        --数据埋点处理-------------------------
        if not rwTempDataIsExist(nXuanShang_YanMa) then		--判断是否存在掩码
		    rwTempDataAdd(nXuanShang_YanMa)
	    end
        local nDoTimes= rwTempDataGetValue(nXuanShang_YanMa,CONST_TEMP_DATA.Data1) 
        nDoTimes = nDoTimes+1      --悬赏次数+1
        rwTempDataSet(nXuanShang_YanMa,nDoTimes,CONST_TEMP_DATA.Data1)  --更新掩码
        rwSetTaskFinishNum(CONST_TASK_TYPE.REWARD,nDoTimes)   --传送给服务端
        --------------------------------------------------
end
