--[英雄传说][测试脚本]传送系统测试 *.lua
--Date
--传送系统测试



--endregion

local nNpcGroup1 = 10000001
local nNpcGroup2 = 10000002
local nNpcGroup3 = 10000003
local nNpcGroup4 = 10000004

rwtNpcGroup[nNpcGroup1] = {} --卡诺萨城(传送阵)
rwtNpcGroup[nNpcGroup1]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nNpcGroup1]["nIndex"] = 1
rwtNpcGroup[nNpcGroup1]["nMapId"] = 1000
rwtNpcGroup[nNpcGroup1]["sPos"] = "0.37,1.084,-8.86"



rwtNpcGroup[nNpcGroup2] = {} --风车镇(传送阵)
rwtNpcGroup[nNpcGroup2]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nNpcGroup2]["nIndex"] = 2
rwtNpcGroup[nNpcGroup2]["nMapId"] = 2001
rwtNpcGroup[nNpcGroup2]["sPos"] = "-71.33,0.067,-93.83"


rwtNpcGroup[nNpcGroup3] = {} --罗兰镇(传送阵)
rwtNpcGroup[nNpcGroup3]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nNpcGroup3]["nIndex"] = 3
rwtNpcGroup[nNpcGroup3]["nMapId"] = 2001
rwtNpcGroup[nNpcGroup3]["sPos"] = "-80.76,0.067,21.167"

rwtNpcGroup[nNpcGroup4] = {} --湖畔镇(传送阵)
rwtNpcGroup[nNpcGroup4]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nNpcGroup4]["nIndex"] = 4
rwtNpcGroup[nNpcGroup4]["nMapId"] = 2001
rwtNpcGroup[nNpcGroup4]["sPos"] = "11.17,0.67,-27.83"