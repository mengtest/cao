--[英雄传说][测试脚本]NPC系统测试 *.lua
--Date
--NPC系统测试



--endregion


--测试多选项
local nNpcGroup90000 = 90000
local nNpcGroup90000Config = {}
nNpcGroup90000Config[nNpcGroup90000] = {}
nNpcGroup90000Config[nNpcGroup90000][1] = {}
nNpcGroup90000Config[nNpcGroup90000][1]["Text"] = {}
nNpcGroup90000Config[nNpcGroup90000][1]["Text"]["Content"] = "第一句对白，测试5个选项"
nNpcGroup90000Config[nNpcGroup90000][1]["Text"]["TalkId"] = 101
nNpcGroup90000Config[nNpcGroup90000][1]["Text"]["LeftId"] = 101
nNpcGroup90000Config[nNpcGroup90000][1]["Text"]["LeftFace"] = 100101
nNpcGroup90000Config[nNpcGroup90000][1]["Option"] = {}
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][1] = {}
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][1]["Text"] = "测试1个"
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][1]["State"] = 1
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][1]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 3
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][2] = {}
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][2]["Text"] = "测试2个"
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][2]["State"] = 2
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][2]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 2
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][3] = {}
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][3]["Text"] = "测试3个"
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][3]["State"] = 2
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][3]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 4
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][4] = {}
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][4]["Text"] = "测试4个"
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][4]["State"] = 2
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][4]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 5
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][5] = {}
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][5]["Text"] = "测试5个以上"
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][5]["State"] = 0
nNpcGroup90000Config[nNpcGroup90000][1]["Option"][5]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 6

nNpcGroup90000Config[nNpcGroup90000][2] = {}
nNpcGroup90000Config[nNpcGroup90000][2]["Text"] = {}
nNpcGroup90000Config[nNpcGroup90000][2]["Text"]["Content"] = "第三句对白，测试2个选项"
nNpcGroup90000Config[nNpcGroup90000][2]["Text"]["TalkId"] = 101
nNpcGroup90000Config[nNpcGroup90000][2]["Text"]["LeftId"] = 101
nNpcGroup90000Config[nNpcGroup90000][2]["Text"]["LeftFace"] = 100105
nNpcGroup90000Config[nNpcGroup90000][2]["Option"] = {}
nNpcGroup90000Config[nNpcGroup90000][2]["Option"][1] = {}
nNpcGroup90000Config[nNpcGroup90000][2]["Option"][1]["Text"] = "好的"
nNpcGroup90000Config[nNpcGroup90000][2]["Option"][1]["Func"] = "</F>rwOpenNpcChatDialog</N>" .. 10375
nNpcGroup90000Config[nNpcGroup90000][2]["Option"][2] = {}
nNpcGroup90000Config[nNpcGroup90000][2]["Option"][2]["Text"] = "返回"
nNpcGroup90000Config[nNpcGroup90000][2]["Option"][2]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1

nNpcGroup90000Config[nNpcGroup90000][3] = {}
nNpcGroup90000Config[nNpcGroup90000][3]["Text"] = {}
nNpcGroup90000Config[nNpcGroup90000][3]["Text"]["Content"] = "第二句对白，测试1个选项"
nNpcGroup90000Config[nNpcGroup90000][3]["Text"]["TalkId"] = 101
nNpcGroup90000Config[nNpcGroup90000][3]["Text"]["LeftId"] = 101
nNpcGroup90000Config[nNpcGroup90000][3]["Text"]["LeftFace"] = 100114
nNpcGroup90000Config[nNpcGroup90000][3]["Option"] = {}
nNpcGroup90000Config[nNpcGroup90000][3]["Option"][1] = {}
nNpcGroup90000Config[nNpcGroup90000][3]["Option"][1]["Text"] = "返回"
nNpcGroup90000Config[nNpcGroup90000][3]["Option"][1]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1

nNpcGroup90000Config[nNpcGroup90000][4] = {}
nNpcGroup90000Config[nNpcGroup90000][4]["Text"] = {}
nNpcGroup90000Config[nNpcGroup90000][4]["Text"]["Content"] = "这里有3个选项"
nNpcGroup90000Config[nNpcGroup90000][4]["Option"] = {}
nNpcGroup90000Config[nNpcGroup90000][4]["Option"][1] = {}
nNpcGroup90000Config[nNpcGroup90000][4]["Option"][1]["Text"] = "返回"
nNpcGroup90000Config[nNpcGroup90000][4]["Option"][1]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][4]["Option"][2] = {}
nNpcGroup90000Config[nNpcGroup90000][4]["Option"][2]["Text"] = "返回"
nNpcGroup90000Config[nNpcGroup90000][4]["Option"][2]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][4]["Option"][3] = {}
nNpcGroup90000Config[nNpcGroup90000][4]["Option"][3]["Text"] = "返回"
nNpcGroup90000Config[nNpcGroup90000][4]["Option"][3]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1

nNpcGroup90000Config[nNpcGroup90000][5] = {}
nNpcGroup90000Config[nNpcGroup90000][5]["Text"] = {}
nNpcGroup90000Config[nNpcGroup90000][5]["Text"]["Content"] = "这里有4个选项"
nNpcGroup90000Config[nNpcGroup90000][5]["Option"] = {}
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][1] = {}
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][1]["Text"] = "返回"
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][1]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][2] = {}
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][2]["Text"] = "返回"
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][2]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][3] = {}
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][3]["Text"] = "返回"
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][3]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][4] = {}
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][4]["Text"] = "返回"
nNpcGroup90000Config[nNpcGroup90000][5]["Option"][4]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1

nNpcGroup90000Config[nNpcGroup90000][6] = {}
nNpcGroup90000Config[nNpcGroup90000][6]["Text"] = {}
nNpcGroup90000Config[nNpcGroup90000][6]["Text"]["Content"] = "这里有6个选项"
nNpcGroup90000Config[nNpcGroup90000][6]["Option"] = {}
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][1] = {}
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][1]["Text"] = "返回1"
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][1]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][2] = {}
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][2]["Text"] = "返回2"
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][2]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][3] = {}
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][3]["Text"] = "返回3"
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][3]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][4] = {}
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][4]["Text"] = "返回4"
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][4]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][5] = {}
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][5]["Text"] = "返回5"
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][5]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][6] = {}
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][6]["Text"] = "返回6"
nNpcGroup90000Config[nNpcGroup90000][6]["Option"][6]["Func"] = "</F>nNpcGroup90000_Func</N>" .. nNpcGroup90000 .. "</N>" .. 1


rwtNpcGroup[nNpcGroup90000] = rwtNpcGroup[nNpcGroup90000] or {}
rwtNpcGroup[nNpcGroup90000]["InterfaceFunc"] = function(NpcGroupType,NpcGroupId,GenEventId)
    nNpcGroup90000_Func(NpcGroupType,1)
end

function nNpcGroup90000_Test()
    nNpcGroup90000_Func(nNpcGroup90000,1)
end

function nNpcGroup90000_Func(nGourpId,nIndex)
    if not nNpcGroup90000Config[nGourpId][nIndex] then
        return
    end
    rwNpcDialogText(nNpcGroup90000Config[nGourpId][nIndex]["Text"])
    rwNpcDialogOption(nNpcGroup90000Config[nGourpId][nIndex]["Option"])
end
