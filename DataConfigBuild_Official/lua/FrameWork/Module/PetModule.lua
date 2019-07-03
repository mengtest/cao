--region PetModule.lua
--Date
--幻兽模块



--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================
---
-- 获取幻兽空间
-- @param nSpaceType 空间类型 1：程序空间，2：背包空间
-- @return 返回剩余空间
function rwGetPetSpace(nSpaceType)
    rwPrintNormalLog({Func = "rwGetPetSpace",nSpaceType = nSpaceType})
    if nSpaceType == CONST_USER_PET_SPACE.PROGRAM then
        return rwGetPetPackageLeft(true)
    elseif nSpaceType == CONST_USER_PET_SPACE.PACKAGE then
        return rwGetPetPackageLeft(false)
    end
end

--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 获得幻兽
-- @param nPetType 幻兽类型
-- @param nNum 增加的数量(暂时没用，以后接口增加添加多只幻兽时使用)
-- @return 布尔值
function rwAddPet(nPetType,nNum)
    rwPrintNormalLog({Func = "rwAddPet",nPetType = nPetType})
--    local nNum = nNum or 1
    local nNum = 1
    if rwGetPetSpace(CONST_USER_PET_SPACE.PACKAGE) >= nNum then
        return AddPet(nPetType)
    elseif rwGetPetSpace(CONST_USER_PET_SPACE.PACKAGE) >= 1 and rwGetPetSpace(CONST_USER_PET_SPACE.PROGRAM) >= nNum then
        return AddPet(nPetType)
    end    
end

--===================================================================
--===============================回调================================
--===================================================================




--===================================================================
--==============================回调封装=============================
--===================================================================
