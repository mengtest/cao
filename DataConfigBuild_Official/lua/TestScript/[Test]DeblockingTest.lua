--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

--nMapMaskId
--1：雷鸣大陆
--2：古加尼尔
--3：天空之城
function TestUnlockWorldMap(nMapMaskId)
    rwPrintNormalLog({Func = "TestUnlockWorldMap",nMapMaskId = nMapMaskId})
    return rwAddUserRecordData(6,nMapMaskId)
end

function TestWorldMapIsUnLocked(nMapMaskId)
    rwPrintNormalLog({Func = "TestWorldMapIsUnLocked",nMapMaskId = nMapMaskId})
    return rwHasUserRecordData(6,nMapMaskId)
end
