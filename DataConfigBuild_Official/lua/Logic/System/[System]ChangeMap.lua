--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--各地图切屏


--endregion

--测试数据
--rwtNpcGroup[100000] = {} --卡诺萨城-->魔族之心
--rwtNpcGroup[100000]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
--rwtNpcGroup[100000]["ChangeMap"] = {2002,"8.694219,4.009258,8.262889"}

--rwtNpcGroup[100001] = {} --魔族之心-->卡诺萨城
--rwtNpcGroup[100001]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
--rwtNpcGroup[100001]["ChangeMap"] = {1000,"11.19832,0.2086792,-12.23162"}

rwtNpcGroup[54030] = {} --卡诺萨城-->第一片区
rwtNpcGroup[54030]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54030]["ChangeMap"] = {2001,"52.49,6.22,21.11"}

rwtNpcGroup[54031] = {} --第一片区-->卡诺萨城
rwtNpcGroup[54031]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54031]["ChangeMap"] = {1000, "53.33,23.56,68.65"}

rwtNpcGroup[57000] = {} --第一片区-->魔族高地
rwtNpcGroup[57000]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[57000]["ChangeMap"] = {2002,"2.82,3.88,-15.95"}  

rwtNpcGroup[57001] = {} --魔族高地-->第一片区
rwtNpcGroup[57001]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[57001]["ChangeMap"] = {2001,"-12.92,0.12,-79.79"}

rwtNpcGroup[54000] = {} --主城-->佣兵公会1楼
rwtNpcGroup[54000]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54000]["ChangeMap"] = {1000,"-27.66,554.03,99.19"}

rwtNpcGroup[54001] = {} --佣兵公会1楼-->主城
rwtNpcGroup[54001]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54001]["ChangeMap"] = {1000,"-27.83,23.12,77.13"}


rwtNpcGroup[54004] = {} --冒险者营地-->三月边陲
rwtNpcGroup[54004]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54004]["ChangeMap"] = {2003,"-63.08,0.10,-27.88"}

rwtNpcGroup[54005] = {} --三月边陲-->冒险者营地
rwtNpcGroup[54005]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54005]["ChangeMap"] = {2003,"7.90,1.95,-53.12"}

rwtNpcGroup[54006] = {} --永夜森林-->迷雾森林
rwtNpcGroup[54006]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54006]["ChangeMap"] = {2003,"-120.44,0.11,-225.93"}

rwtNpcGroup[54007] = {} --迷雾森林-->永夜森林
rwtNpcGroup[54007]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54007]["ChangeMap"] = {2003,"-156.73,-0.07,-231.03"}

rwtNpcGroup[54010] = rwtNpcGroup[54010] or {} --主城-王宫
rwtNpcGroup[54010]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54010]["ChangeMap"] = {1000,"-182.63,463.01,67.87"}

rwtNpcGroup[54011] = rwtNpcGroup[54011] or {} --王宫-主城
rwtNpcGroup[54011]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54011]["ChangeMap"] = {1000,"-168.31,32.54,68.21"}

rwtNpcGroup[54008] = {} --第一片区-->第二片区
rwtNpcGroup[54008]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54008]["ChangeMap"] = {2003,"22.64,-0.01,18.65"}

rwtNpcGroup[54009] = {} --第二片区-->第一片区
rwtNpcGroup[54009]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54009]["ChangeMap"] = {2001,"50.82,0.10,-218.37"}

--网易版本临时使用右相府
rwtNpcGroup[54012] = rwtNpcGroup[54012] or {} --主城-右相府
rwtNpcGroup[54012]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54012]["ChangeMap"] = {1003,"-0.28,0.04,1.35"}

rwtNpcGroup[54013] = rwtNpcGroup[54013] or {} --右相府-主城
rwtNpcGroup[54013]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54013]["ChangeMap"] = {1000,"30.76,22.81,76.20"}

--rwtNpcGroup[54014] = {} --自律联盟1-->2
--rwtNpcGroup[54014]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
--rwtNpcGroup[54014]["ChangeMap"] = {1000,"-37.92,562.29,116.16"}

--rwtNpcGroup[54015] = {} --自律联盟2-->1
--rwtNpcGroup[54015]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
--rwtNpcGroup[54015]["ChangeMap"] = {1000,"-37.94,555.14,115.87"}

rwtNpcGroup[54016] = {} --卡诺萨-->酒馆
rwtNpcGroup[54016]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54016]["ChangeMap"] = {1004,"8.84,3.08,-0.31"}

rwtNpcGroup[54017] = {} --酒馆-->卡诺萨
rwtNpcGroup[54017]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54017]["ChangeMap"] = {1000,"1.58,22.79,73.84"}

rwtNpcGroup[54018] = {} --卡诺萨-->不冬岛
rwtNpcGroup[54018]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54018]["ChangeMap"] = {2005,"-10.07,-5.48,24.57"}

rwtNpcGroup[54019] = {} --不冬岛-->卡诺萨
rwtNpcGroup[54019]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54019]["ChangeMap"] = {1000,"-69.07,19.12,-4.34"}

--rwtNpcGroup[54020] = {} --天空城-->不冬岛
--rwtNpcGroup[54020]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
--rwtNpcGroup[54020]["ChangeMap"] = {2005,"54.87,17.45,-87.43"}

--rwtNpcGroup[54021] = {} --不冬岛-->天空城
--rwtNpcGroup[54021]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
--rwtNpcGroup[54021]["ChangeMap"] = {2004," 94.64,-0.10,0.18"}

rwtNpcGroup[54022] = {} --不冬岛→鲸脊岛
rwtNpcGroup[54022]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54022]["ChangeMap"] = {2005,"353.80,1.54,166.16"}

rwtNpcGroup[54023] = {} --鲸脊岛→不冬岛
rwtNpcGroup[54023]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54023]["ChangeMap"] = {2005,"56.37,17.49,-85.64"}

rwtNpcGroup[54024] = {} --鲸脊岛→阿诺特岛
rwtNpcGroup[54024]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54024]["ChangeMap"] = {2005,"333.59,-2.87,-232.90"}

rwtNpcGroup[54025] = {} --阿诺特岛→鲸脊岛
rwtNpcGroup[54025]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54025]["ChangeMap"] = {2005,"434.86,1.62,67.66"}

rwtNpcGroup[54026] = {} --天空城→纳雅王宫
rwtNpcGroup[54026]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54026]["ChangeMap"] = {2006,"0.07,0.01,21.29"}

rwtNpcGroup[54027] = {} --纳雅王宫→天空城
rwtNpcGroup[54027]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54027]["ChangeMap"] = {2004,"-31.55,18.05,0.94"}

rwtNpcGroup[54028] = {} --阿诺特岛→鲸脊岛
rwtNpcGroup[54028]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54028]["ChangeMap"] = {2005,"78.36,22.06,-240.12"}

rwtNpcGroup[54029] = {} --阿诺特岛→鲸脊岛
rwtNpcGroup[54029]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[54029]["ChangeMap"] = {2005,"283.42,1.37,-372.88"}


