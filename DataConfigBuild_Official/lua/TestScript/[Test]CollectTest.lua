--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--对话配置测试
--by:Syl

--endregion

local nCollect_1 = 90009
local nCollect_2 = 90010
local nCollect_3 = 90011
local nCollect_4 = 90012
local nCollect_5 = 90013
local nCollect_6 = 90014
local nCollect_7 = 90015
local nCollect_8 = 90016

--有对话宝箱
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}    
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["DialogId"] = 5252
rwtNpcGroup[nCollect_1]["CollectTime"] = 2
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6657


--有对话喂药
rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}    
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["DialogId"] = 5252
rwtNpcGroup[nCollect_2]["CollectTime"] = 2
rwtNpcGroup[nCollect_2]["Awards"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6657

--有对话砍树
rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}    
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_3]["CollectTime"] = 2
rwtNpcGroup[nCollect_3]["Awards"] = {}  
rwtNpcGroup[nCollect_3]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6657

--有对话采集4
rwtNpcGroup[nCollect_4] = rwtNpcGroup[nCollect_4] or {}    
rwtNpcGroup[nCollect_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_4]["CollectTime"] = 2
rwtNpcGroup[nCollect_4]["Awards"] = {}  
rwtNpcGroup[nCollect_4]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6657

--无对话宝箱
rwtNpcGroup[nCollect_5] = rwtNpcGroup[nCollect_5] or {}    
rwtNpcGroup[nCollect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_5]["DialogId"] = 5252
rwtNpcGroup[nCollect_5]["CollectTime"] = 3
rwtNpcGroup[nCollect_5]["Awards"] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000160
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_5
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--无对话喂药
rwtNpcGroup[nCollect_6] = rwtNpcGroup[nCollect_6] or {}    
rwtNpcGroup[nCollect_6]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_6]["DialogId"] = 5252
rwtNpcGroup[nCollect_6]["CollectTime"] = 3
rwtNpcGroup[nCollect_6]["Awards"] = {}  
rwtNpcGroup[nCollect_6]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000160
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_6
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--无对话砍树
rwtNpcGroup[nCollect_7] = rwtNpcGroup[nCollect_7] or {}    
rwtNpcGroup[nCollect_7]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_7]["CollectTime"] = 3
rwtNpcGroup[nCollect_7]["Awards"] = {}  
rwtNpcGroup[nCollect_7]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_7]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_7]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000160
rwtNpcGroup[nCollect_7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_7
rwtNpcGroup[nCollect_7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nCollect_7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--无对话采集4
rwtNpcGroup[nCollect_8] = rwtNpcGroup[nCollect_8] or {}    
rwtNpcGroup[nCollect_8]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_8]["CollectTime"] = 3
rwtNpcGroup[nCollect_8]["Awards"] = {}  
rwtNpcGroup[nCollect_8]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_8]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_8]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_8]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000160
rwtNpcGroup[nCollect_8]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_8
rwtNpcGroup[nCollect_8]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nCollect_8]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS



