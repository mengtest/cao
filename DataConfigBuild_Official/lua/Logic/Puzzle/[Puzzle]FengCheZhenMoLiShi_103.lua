--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--endregion


tPuzzleEvent[103] = {}
tPuzzleEvent[103][103001] = {} --
tPuzzleEvent[103][103001]["AddPicture"] = 103004
--tPuzzleEvent[103][103001]["AddEffect"] = 103003
tPuzzleEvent[103][103001]["RemoveSelf"] = 103101
tPuzzleEvent[103][103001]["ClickDialog"] = 10920



rwtDialog[10920] = {}
--rwtDialog[10920]["CloseDialog"] = 1
rwtDialog[10920]["DialogEndInit"] = {}
rwtDialog[10920]["DialogEndInit"]["Events"] = {}
rwtDialog[10920]["DialogEndInit"]["Events"][1] = {}
rwtDialog[10920]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[10920]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = 10921
rwtDialog[10920]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {103003}



rwtDialog[10919] = {}
rwtDialog[10919]["DialogEndInit"] = {}
rwtDialog[10919]["DialogEndInit"]["Events"] = {}
rwtDialog[10919]["DialogEndInit"]["Events"][1] = {}
rwtDialog[10919]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {103005}

rwtDialog[10921] = {}
rwtDialog[10921]["DialogEndInit"] = {}
rwtDialog[10921]["DialogEndInit"]["Events"] = {}
rwtDialog[10921]["DialogEndInit"]["Events"][1] = {}
rwtDialog[10921]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {103102}
