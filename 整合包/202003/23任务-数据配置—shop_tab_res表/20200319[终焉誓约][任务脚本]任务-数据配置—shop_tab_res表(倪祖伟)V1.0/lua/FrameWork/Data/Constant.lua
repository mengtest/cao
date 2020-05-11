--region Constant.lua
--Purpose:		常量表
--Creator: 		余锦鑫
--Created:		2018-08-08

--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-03-20 $
--RCS-ID:		$Revision: 22 $
--endregion

--玩家金钱上限
MONEY_LIMIT = 2100000000
--玩家代币上限
EMONEY_LIMIT = 2100000000

--出战英雄数
FIGHT_HERO_COUNT = 3

--任务类型
CONST_TASK_TYPE={
    MAIN = 1,--主线任务
    MERCENARY = 5,--佣兵任务
    CHANGE_CLASS = 4,--转职任务
    ADVENTURE = 2,--2奇遇
    REWARD = 3,--3悬赏
    QUICKSEND = 6,--风迹快递任务
    --7 客户端副本用
    PATROL = 8,--巡查任务
    SIDE = 9,--支线任务
    Trial = 11,--试炼之程探索任务
    Force = 12,--试炼之程势力任务

-----------------脚本具体任务类型，客户端显示【支线】-----------------
	SEVENTDAY = 101,	--七日任务
    FOOD = 102,			--美食任务
	IMPRESSION = 103,	--亲密度任务
	REWARD_KILLMONSTOR = 104,	--悬赏杀怪任务
    FAMILY_OZZY = 105,	--奥兹家族任务
}
--任务模板中具体任务分类
CONST_TASK_DETAIL_TYPE = {
    TALK_BY_NPC = 1,--NPC对白    
    KILLMONSTER = 2,--直接杀怪
    COLLECT = 3,--采集
    PASS_COPYMAP = 4, --通关副本任务
    ESCORT = 5,--护送任务
    PUZZLE = 6,--解谜任务
    TALK_BY_TRAP = 7,--陷阱对白
    USE_TRANFER = 8, --使用传送阵
    TALK_BY_PANEL = 9, --点击面板对白
    DEFAULT = 10,  --默认类型
    TRAP_IN = 11, --到达陷阱 
    COUNTDOWN = 12, --倒计时 
    USE_CHANGEMAP = 13, --使用切屏点
    CHOOSE_OPTION = 14, --选项分支
    OPEN_TREASUREBOX = 15,	--开宝箱任务
    TALK_BY_COLLECT = 16, --采集完对白
    UPLEVEL = 17,  --升级类型任务
    TimeArea = 18, --时间内完成的任务
}

--具体任务分类模板表
ENUM_TASK_TEMPLATE = {}
--NPC组模板分类
ENUM_NPCGROUP_TEMPLATE = {}
--怪物组模板分类
ENUM_MONSTERGROUP_TEMPLATE = {}


CONST_NPCCHAT_TYPE={
    NPC=1,    --NPC普通对白
    TASK=2,   --任务对白
    TREASUREBOX=3,   --宝箱对白
    COPYMAP=4, --副本对白
    PUZZLE=5, --解密对白
    ESCORTTRAP=6, --护送陷阱对白
    MANYHEROCOPY=7, --多英雄副本对白
	SIDECOPYMAP=8, --同位副本进入对白
}

CONST_CODE = {
    Unknown = -1,
    OK = 0,  
    Error_ChkMixLevel = 1,   --不满足最低等级检查
    Error_ChkMaxLevel = 2,   --不满足最高等级检查
    Error_ChkMoney = 3,      --金币数量不足
    Error_ChkEmoney = 4,     --代币数量不足
--    Error_ChkTradMoney = 5,  --交易币数量不足
    Error_ChkItemNum = 6,    --物品数量不足
    Error_ChkMoneyLimit = 7,      --金币数量达上限
    Error_ChkEmoneyLimit = 8,     --代币数量达上限   
--    Error_ChkTradMoneyLimit = 9,     --交易币数量达上限  
    Error_ChkExpLimit = 10,   --经验达上限
    Error_ChkTeamExpLimit = 11, --战队经验达上限
    Error_ChkPackSpace = 12,    --背包格子不足   
    Error_DelItem = 13,         --删除物品失败
    Error_ChkItemLimit = 14,         --物品数量超出携带上限
    Error_ChkPetPackSpace = 15,         --幻兽背包空间不足
    Error_ChkGenEventListNoExistFail = 16,  --检测表中刷新事件不存在失败
    Error_ChkGenEventListIsExistFail = 17,  --检测表中刷新事件存在失败
    Error_ChkFriendBoxSpace = 18,         --好友宝箱剩余空间不足
	Error_ChkAllFightHeroIsFail = 19,     --出战英雄检测不满足
    Error_ChkSysFuncUnlock = 20,                --系统功能解锁不满足
    Error_ChkTempDataDayJudgment = 21,                --隔天掩码判断并未隔天
    Error_ChkTime = 22,  --时间检测
}

CONST_CODE_MSG = {
    [CONST_CODE.Unknown] = 10066,
    [CONST_CODE.Error_ChkMixLevel] = 10067,   --不满足最低等级检查
    [CONST_CODE.Error_ChkMaxLevel] = 10068,   --不满足最高等级检查
    [CONST_CODE.Error_ChkMoney] = 10069,      --金币数量不足
    [CONST_CODE.Error_ChkEmoney] = 10070,     --代币数量不足
--    [CONST_CODE.Error_ChkTradMoney] = 10071,  --交易币数量不足
    [CONST_CODE.Error_ChkItemNum] = 10072,    --物品数量不足
    [CONST_CODE.Error_ChkMoneyLimit] = 10073,      --金币数量达上限
    [CONST_CODE.Error_ChkEmoneyLimit] = 10074,     --代币数量达上限
--    [CONST_CODE.Error_ChkTradMoneyLimit] = 10075,     --交易币数量达上限
    [CONST_CODE.Error_ChkExpLimit] = 10076,   --经验达上限
    [CONST_CODE.Error_ChkTeamExpLimit] = 10077, --战队经验达上限
    [CONST_CODE.Error_ChkPackSpace] = 10078,    --背包格子不足
    [CONST_CODE.Error_DelItem] = 10079,         --删除物品失败
    [CONST_CODE.Error_ChkItemLimit] = 10080,         --物品数量超出携带上限
    [CONST_CODE.Error_ChkPetPackSpace] = 10081,         --幻兽背包空间不足
    [CONST_CODE.Error_ChkFriendBoxSpace] = 10082,         --好友宝箱剩余空间不足
    [CONST_CODE.Error_ChkAllFightHeroIsFail] = 10083,     --出战英雄检测不满足
    [CONST_CODE.Error_ChkSysFuncUnlock] = 10084,                --系统功能解锁不满足
}

CONST_MSG_SHOW = {
    Msg_ShowBox = 1,  --弹窗，参数字符串
    Msg_ShowTip = 2,  --飘字，参数字符串
    Msg_ShowLocalDialog = 3,  --客户端对话，参数对话Id
}

--基础货币操作行为枚举
CONST_MONEY_COST = {
	CONST_BY_NPC = 1,
	ADD_BY_NPC =2,	
}


--玩家任务表
CONST_TASK_INFO_INDEX = {
    TASK_TYPE = 1,         --任务类型(只读)
	TASK_FINISH_FLAG = 2,  --完成标识 0未接 1已接  2完成
	TASK_DATA1 = 3,    --任务已完成目标个数记录
	TASK_DATA2 = 4,
	TASK_DATA3 = 5,
	TASK_DATA4 = 6,     --任务随机变量存储
	TASK_DATA5 = 7,    --任务随机变量储存
	TASK_DATA6 = 8,    --佣兵日常当前次数
	TASK_DATA7 = 9,    --佣兵日常总次数
    TASK_FINISH_TIME = 10,  --任务完成时间 
}

CONST_TASK_DATA_START_VAL = 2

--动态创建删除时机
CONST_TASK_INFO_DELTYPE = {
    Complete = 0,   --任务条件达成时删除
    Success = 1,    --任务完成领取奖励时删除
    NotDel = 2,    --不删除
}

--奖励类型
CONST_ITEMREWARD_TYPE={
    ITEM = 1,       --物品
    HERO = 2,       --英雄
    PET = 3,       --幻兽
}

--奖励触发类型
CONST_ACTION_TYPE={
    TASK = 1,               --任务
    TREASURE_BOX = 2,       --宝箱
    GIFT = 3,               --礼包
    TIPS = 4,               --提示（飘字）
    WINDOWS = 5,            --弹窗提示
}

--奖励目标类型
CONST_AWARD_TARGET = {
    SELF = 1,   --玩家自己
    TEAM = 2,   --玩家队伍
}

--特殊物品ID
CONST_SPECIALITEM_ID={
    EMONEY = 1,         --代币
--    TRADMONEY = 2,      --交易币
    MONEY = 3,          --金币(罗兰币)
    EXPBALL = 4,        --英雄经验球值
    TEAMEXP = 5,        --战队经验
    FIGHTEXP = 6,        --出战英雄经验

    PETEXPBALL = 8,         --幻兽经验球值
}

CONST_AWARD_TYPE = {
    AWARD = 1,    --直接添加
    MEMORY_AWARD = 2,   --添加到内存
}

--玩家属性
CONST_USER_ATTR={
    USER_INT_MONEY = 1, --金币
	USER_INT_EMONEY = 2, --代币
	USER_INT_EXP = 3, --战队经验
--	USER_INT_EQUIP_PACK_SPACE = 4, --装备背包剩余空间
	USER_INT_ID = 5, --玩家id
	USER_INT_EXP_BALL = 6, --经验球值
	USER_INT_EXP_BALL_LIMIT = 7, --经验球容量
	USER_INT_LEVEL = 8,	--等级
    USER_INT_CUR_MAP = 9, --获取玩家所在地图
    USER_INT_DYNAMIC_MAP_ID = 10, --当前动态地图ID
	USER_INT_SHOW_HERO_ID = 11, -- 当前英雄形象
    --USER_INT_COPY_MAP_TIMES_LEFT = 9, --副本剩余次数
	USER_INT_LEAGUE_LEVEL = 12,
	USER_INT_LEAGUE_EXP = 13,

    --USER_INT_TRAD_MONEY = 99, --交易币

}

--玩家幻兽空间
CONST_USER_PET_SPACE = {
    PROGRAM = 1,    --程序空间
    PACKAGE = 2,    --背包空间
}

CONST_HERO_ATTR={
    --HERO_ATTR_TYPE_ID = 1,            -- 英雄类型id
	HERO_ATTR_LEVEL = 1,                -- 等级
	--HERO_ATTR_EXP = 3,                -- 经验值
    --HERO_ATTR_ID = 4,                 -- 动态ID
	--HERO_ATTR_FORMATION = 5,          -- 编队
	--HERO_ATTR_SKILL_POINTS = 6,       -- 技能点
	--HERO_ATTR_RESET_FIRST = 7,        -- 是否首次重置技能点
	--	HERO_ATTR_HERO_RANK = 2,        -- 阶数
	 HERO_ATTR_IMPRESSION = 2,			--亲密度等级
	HERO_ATTR_HERO_CLASS = 3,			-- 转职次数
}

--NPC功能项类型ID
CONST_NPC_OPTIONTYPE={
    NORMAL = 1,         
}

--NPC群组type
CONST_NPCGROUP_TYPE={
    Building = 1,    --建筑
    MapNpc = 2,      --地图上NPC
    ChangeMap = 3,   --切屏NPC
    CopyMap = 4,     --进入副本NPC
    Trap = 5,        --陷阱
    Transfer = 6,       --传送阵
    TreasureBox = 7,   --宝箱NPC     
    Collect = 8,       --采集 
    Adventure = 11,    --奇遇陷阱
	
    SingleNpc = 21,    --单个NPC直接触发NPC功能
    PuzzleNpc = 22,    --解谜NPC
    CheckEvent = 23,   --检测功能从而触发不同事件
    ManyHeroes = 24,   --检测功能从而触发不同事件
}

--LOG类型
CONST_LOG_TYPE={
    NORMAL = 1,
    WARN = 2,    
    ERROR = 3,          
}

--对话框  1物品使用界面 2任务完成界面

--玩家次数记录表
CONST_USER_TIMESTYPE = {
    CopyMap = 1,  --表示每天可进入副本的次数
    MercenaryRefreshAll = 2, --每天佣兵刷新次数
    Mercenary = 3,  --每天佣兵任务次数
    MercenaryDaily = 4, --佣兵日常
    TeamCopyMap = 5,  --多人副本
	MercenaryPaotui = 6,  --跑腿任务
    Patrol = 7,  --巡查任务
    Daily_CopyMap_Money = 18 ,  --日常金钱本
    Daily_CopyMap_PetExp = 19,  --日常本命经验本
    Daily_CopyMap_Exp = 20,   --日常经验本
}

CONST_TEMP_DATA = {
    RecordTime = 1,  --记录时间
    Data1 = 2,
    Data2 = 3,
    Data3 = 4,
    Data4 = 5,
    Data5 = 6,
    Data6 = 7,
    Data7 = 8,
    Data8 = 9,
}

--解谜事件类型
CONST_PUZZLE_EVENT_TYPE = {
--    AddPic = 1,      --添加图片
--    RemovePic = 2,   --移除图片
--    MovePic = 3,     --移动图片
--    DragPic = 4,     --可拖动图片
--    AddEffect = 6,   --添加特效
--    RemoveEffect = 7,--移除特效
--    AddMsg = 11,     --文本提示
--    Complete = 16,   --完成解谜
--    Exit = 17,       --退出解谜（未用到）
    GetItem = 1,       --找物品
    ChkAndGetItem = 2, --有前置条件找物品
    FinishTask = 3,    --任务相关

    --测试
    OpenDialog = 4,    --打开对白 
    BoxAward = 5,    --开宝箱奖励
    EnterCopyMap = 6,    --进入副本

}

--奇遇判定类型
CONST_ADVENTURE_TYPE = {
	TIME = 1,  -- 时间
	USER = 2,  -- 玩家
	HERO = 3,  -- 英雄
	PROBABILITY = 4, -- 概率
	TIMERANGE = 5, -- 时间范围
	TASK = 6, -- 任务情况
	USEROTHER = 7, -- 玩家其他
	HEROOTHER = 8, -- 英雄其他
	TASKFINISH = 9, -- 任务完成
	USERDATA = 10, -- 用户数据
}

----风迹速递判定类型
--CONST_QUICKSEND_JUDGE_TYPE = {
--	TASK = 1, -- 任务情况
--	USER = 2,  -- 玩家
--	HERO = 3,  -- 英雄
--	PROBABILITY = 4, -- 概率
--	TIMERANGE = 5, -- 时间范围
--	TIME = 6,  -- 时间
--	USEROTHER = 7, -- 玩家其他
--	HEROOTHER = 8, -- 英雄其他
--	TASKFINISH = 9, -- 任务完成
--	USERDATA = 10, -- 用户数据
--}

--时间标志位表
CONST_TIME_TYPE = {
	[1] = "day",
	[2] = "hour",
	[3] = "min",
	[4] = "sec",
	[5] = "wday",
	[6] = "month",
	[7] = "year",
	[8] = "yday",
}

--时间范围顺序
CONST_TIMERANGE_TYPE = {
	[1] = "year",
	[2] = "month",
	[3] = "day",
	[4] = "hour",
	[5] = "min",
	[6] = "sec",
}

--每星期第几天枚举
--lua  星期天为1 周一为2
--gopher-lua  目前星期天为0 周一为1
CONST_WDAY_TYPE = {
    Monday = 1,      --周一
    Tuesday = 2,     --周二
    Wednesday = 3,   --周三
    Thursday = 4,    --周四
    Friday = 5,      --周五
    Saturday = 6,    --周六
    Sunday = 0,      --周天
}

--机关类型
CONST_VALVE_TYPE = {
    DOOR = 1,           --门
    MAGICARRAY = 2,       --幻阵
    OBSTACLE = 3,       --障碍
}

--机关数据表
CONST_VALVE_DATA_INDEX = {
    STATUS = 1,           --机关状态
    DATA1 = 2,            --参数1（幻阵机关：0-3分别表示冰火光暗，对应幻阵4种颜色）
    DATA2 = 3,            --参数2
}

--机关状态表
CONST_VALVE_STATUS = {
    UNOPEN = 0,             --机关状态
    OPEN = 1,               --参数1
    CLOSE = 2,              --参数2
}

--特殊状态表
CONST_SPECICAL_STATUS={
    LOOKFACE = 1, --形象
    EFFECT = 2,  --特效
	MOTION = 4,  --动作
}

--特殊状态对下
CONST_SPECICAL_TARGET={
    SELF = 1, --玩家自己
    TEAMMATE = 2, --队友
    TEAM = 3,  --整个队伍
    NPCGROUP = 4, --NPC组
    MONSTER = 5, --怪物
    VALVE = 6, --机关
    MAP_POS = 7 ,--地图坐标点
}
--副本类型
CONST_COPYMAP_TYPE = {
    SINGLE = 1,    --单人
    MULTI = 2,   --多人
}
--日常副本类型
CONST_DAILYCOPYMAP_TYPE = {
    MONEY_MAP = 1,
    MATERIAL_MAP = 2,
	EXP_MAP = 3,
}
--副本任务类型
CONST_COPYMAP_TASK_TYPE ={
    PLOT = 1,  --剧情副本
    NORMAL = 2, -- 普通副本
	SIDE = 3,  --并列副本
}
--副本记录表初始化类型
CONST_COPYMAP_INIT_TYPE ={
    DYNCOPYMAP = 1,  --记录在动态地图
    USERID = 2, -- 普通副本
}
--传送阵索引
CONST_TRANSFER_INDEX = {
    MAINCITY = 1,		  --主城
    LUOLANZHEN = 2,		  --罗兰镇
    FENGCHEZHEN = 3,	  --风车镇
    AKELAISI = 4,		  --阿克莱斯
    AIHAOSHENDIAN = 5,	  --哀嚎神殿
    MAOXIANZHEYINGDI = 6, --冒险者营地
    SANYUEBIANCHUI = 7,	  --三月边陲
    YUESHENSENLIN = 8,	  --月神森林
    YONGYESENLIN = 9,	  --永夜森林
    MIWUSENLIN = 10,	  --迷雾森林
	BUDONGDAO = 11,		  --不冬岛
	JINGJIDAO = 12,		  --鲸脊岛
	ANUOTEDAO = 13,		  --阿诺特岛
	TIANKONGCHENG = 14,	  --天空城
	KOUDAIDAO = 15,		  --口袋岛
}

--事件类型
CONST_BASE_EVENT_TYPE = {
    AUTO_WAY = 1,   --自动寻路
    CHANGE_MAP = 2, --切屏
    OPEN_DIALOG = 3,  --播放对白
    GET_SERVER_AWARD = 4,  --服务端奖励
    ADD_STATE = 5,  --添加状态
    USER_MSG = 6,  --玩家提示
    CHANGE_LOOK = 7,  --改变外形
    DYN_CREATE = 8,  --动态创建
    DYN_DELETE = 9,  --动态删除
    PLAY_STORY = 10,  --播放剧情
    OPEN_GUIDE = 11,  --播放引导
    PLAY_SCENEANIMATION = 12,  --播放过场动画
}

--特殊状态
CONST_USER_SPECIAL_STATE = {
    HIDE = 1, --隐身状态
}

--随机类型
CONST_RANDOM_EVENT_TYPE = {
	FIXED = 1, --固定概率
	COMBINATION = 2, --组合(C:2,5)
}
--随机事件类型组
CONST_RANDOM_BUILDEVENT_TYPE = {
	GETAWARD = 1, --直接获取奖励
	TREASURECAVE = 2 , --进入藏宝洞
}
--随机事件条件类型
CONST_RANDOM_CONDITION_TYPE = {
	RATE = 1, --概率
	TEMP = 2, --掩码
}

--片区宝箱type
CONST_AREABOX_TYPE={
    Copper = 1,
    Silver = 2,
    Gold = 3,

}

--机关触发行为类型
CONST_BEHAVIOR_TYPE={
    Click = 1,  --点击机关
    Enter = 2,  --进入机关触发区域
    Leave = 3,  --离开机关
}
--解密掩码判断
CONST_PUZZLE_CHKTEMP_TYPE = {
	CHKONETEMP = 1,		--单个掩码
	CHKSUNDRYTEMP = 2,  --多个掩码
}

--系统功能id枚举
CONST_SYSTEM_FUNCTION = {
	FASHION = 1,		--时装功能
	IMPRESSION = 2,		--羁绊(好感度)
	UPLEV_HERO = 3,		--英雄升级
	HRO_UP_CLASS = 4,		--英雄进阶（英雄突破）
	STRENGTH_EQUIP = 5,		--装备强化
	UP_ORDER_EQUIP = 6,		--装备升阶
	UP_STAR_EQUIP = 7,		--装备升星
	SKILL_UPLEV = 8,		--技能升级
	CREAVE_SKILL_RUNE = 9,		--符文镶嵌
	UPLEV_CREAVE_RUNE = 10,		--符文升级
	PET_COMPLEX = 11,		--本命合体（本命助力）
	UPLEV_PET = 12,		--幻兽升级
	UP_STAR_PET = 13,		--幻兽升星
	HERO_LOTTERY = 14,		--英雄抽取
	PET_LOTTERY = 15,		--幻兽抽取（暂时不用）
	EDIT_FORMATION = 16,		--编队
	SYNDICATE = 17,		--工会
	PVPSORT_RANKING = 18,		--换位竞技场
	PVP_KNIGHT = 19,		--骑士考核
	CHANGE_USER_NAME = 20,		--战队改名
	FRIEND = 21,		--好友功能
	FRIEND_BOX = 22,		--好友宝箱
	SHOP = 23,		--商城
	SHARE_BOSS = 24,		--讨伐领主
	MUL_COPY_MAP = 25,		--多人副本
	DAILY_TASK = 26,		--自律联盟
	DAILY_COPY_MAP = 27,		--每日副本
	DREAM_LAND = 28,		--温丽梦境
	ACTIVITY = 29,		--每日必做
    WENJUAN1 = 30,		--问卷1
    WENJUAN2 = 31,		--问卷2
    MULTI_HERO_COPYMAP = 32,		--多英雄副本（魔物入侵）
    STRONGEST_GUIDE = 33,		--最强指南（佣兵考核、多英雄养成）
    PLAYER_TRAINING = 34,		--玩家训练(战技研习)
    HERO_TRAINING = 35,		--英雄特训
    WELFARE = 36,		--福利系统
    EXPRESS = 37,		--风迹速递跑环
	ZHOUHUIFUBEN = 38,	--周回复本
	POKER = 39,		--王牌通缉
	FIGHTINGPOWER = 40,		--战斗力显示功能
	AOZI = 41,			--奥兹家族
	MOFAYIHUI = 42,		--魔法议会
	QIJIXUEYUAN = 43,	--奇迹学院
	MILINGUODU = 44,	--密林国度
	SHENGJIE = 45,		--圣界
	YINGHAOLINGYU = 46,	--英豪领域	
	STRENGTHEN = 47,	--冒险方略（提升实力）
    WENJUAN3 = 48,		--问卷3  --CBT1版本问卷
}

--怪物模板枚举
CONST_MONSTERGROUP_TYPE = {
    BASE = 1,   --基础通用模板
}
----gen的事件类型
--CONST_GEN_EVENTTYPE = {
--	NPCGROUP = 1,
--	MONSTERGROUP = 2,
--}

--服务端对白参数类型
CONST_SERVERDIALOG_PARAM_TYPE = {
    GOLDMONSTER = 1,    --黄金怪
    DREAM_LAND = 2, --温丽梦境
    QUICKSEND = 3,  --每日速递
	CAT_EACH = 4, --撸猫
}

--试炼之程获取参数属性枚举
CONST_TRIAL_DATA_INDEX = {
    CHAPTER_ID = 1,            --章节id
    CHAPTER_PROGRESS = 2,      --章节进度
    LEVEL1 = 3,                --好感度1等级
    LEVEL1EXP = 4,             --好感度1等级的当前经验
    LEVEL2 = 5,                --好感度2等级
    LEVEL2EXP = 6,             --好感度2等级的当前经验
}

--***************************界面相关常量***************************--
--打开界面类型ID
CONST_MENUTYPE = {
    ---1到10是为了做兼容，客户端索引到另外一个枚举-----
    NpcTalk = 1,        --NPC对话
    Hero = 2,           --英雄
    Equipment = 3,      --装备
    Mercenary = 4,      --佣兵界面
    Bag = 5,            --背包
    TranferTarget = 6,  --传送目标选择
    Lottery = 7,        --占卜界面
    Pet = 8,            --本命界面
    Arena = 9,          --竞技场
    ShareBoss = 10,     --分享BOSS（讨伐领主）
    ---后续界面ID同客户端界面ID
    --NpcTalk = 100, --Npc对话    --1
    --Hero = 200, --英雄          --2
    Hero_Level1 = 201, --英雄升级
    Hero_Level2 = 202, --英雄升阶
    --Hero_Equipment1 = 203, --装备强化  --3
    Hero_Equipment2 = 204, --装备升星
    Hero_Equipment3 = 205, --装备进阶
    Hero_Skill = 206, --技能升级
    Hero_Rune = 207, --符文镶嵌
    Hero_impression = 208, -- 英雄礼物
    Hero_pet = 209, -- 本命助力
    --Mercenary = 400, --佣兵   --4
    Reward = 410,   --悬赏界面
    UNION = 420,   --自律联盟界面（4个NPC头像）
    --Arrest = 410, --悬赏界面
    --DayTask = 420, -- 自律联盟
    --Bag = 500, --背包  --5
    --TransferTarget = 600, --传送目标  --6
    --Lottery = 700, --占卜  --7
    Lottery1 = 710,  --艾恩速达
    Lottery2 = 720,   --友达投递
    --Pet = 800, --本命  --8
    Hero_Pet1 = 801, --本命升级
    Hero_Pet2 = 802, --本命升星
    --Arena = 900, --竞技场  --9
    --ShareBoss = 1000, --分享BOSS  --10
    Knight = 1100, -- 骑士考核
    Dailyact = 1200, -- 每日必做
    Syndicate = 1300, -- 公会主界面
    Syndicate_activity = 1310, -- 公会活动界面
    WenlyDream = 1400, -- 温丽梦境
    DailyInstance = 1500, -- 每日副本
    Shop_Dimensity = 1600, -- 魔石商店
    Shop_Legion = 1610, -- 公会商店
--    Shop_Pet = 1620, -- 本命商店
--    Shop_Hero = 1630, -- 英雄场商店
    Shop_Arena = 1640, -- 竞技商店
    Shop_Knight = 1650, -- 骑士商店
    Shop_WenlyDream = 1660, -- 梦境商店
    Shop_First = 1670, --第一个商店
	Shop_Courier = 1680, --速递商店
    Formation = 1700,   --多英雄副本-编队界面
    FriendBox = 1800, --好友宝箱
    Friend = 1900,          --好友
    LimitActivity = 2000,   --限时活动
    FourteenLoop = 2010,    --14日活跃循环活动
    SupplyCard = 2100,      --充值月卡
	ZhouHuiFuBen = 2200,      --周回副本
	Newplayerlogin = 2300, --新人登入福利；
	Sevendaysgoal = 2400, --开服放送庆典；
	Multiplayerlevel = 2500,--多人副本
	Dailylogin = 2600, --每日签到；
	Achievement = 2700, --成就
	Levelbouns = 2800, --等级奖励
	Darkdairy= 2900, --黯月事件簿；
	Orgcoming=3000,--圣界来袭宣传界面；
	Poker=3100, --王牌通缉界面
    Training = 3200,--战技研习
    worldmap = 3300,--世界地图
	ApPanel = 3400,--体力回复弹窗
	MainPanel = 3500,--主界面
	FashionShop = 3600,--时装商城
	InvestMoney_XingShi = 3700,--充值-星石
	InvestMoney_LiBao = 4000,--充值-直购礼包
} 
--对话框NPC表情
CONST_NPC_FACE={
    Happy = 1,     --开心
    Angry = 2,     --生气
    Surprised = 3, --惊讶 
}
--对话框文字颜色
CONST_COLOR_CODE={
    WHITE = "FFFFFF",     --白色
    GREEN = "00FF0C",     --绿色
    BLUE = "6AE8FF",      --蓝色
    RED = "FF0000",       --红色
    GOLDEN = "FAD13B",    --金色
}
--奖励提示界面
CONST_UI_AWARD = {
    UseItem = 1,       --使用物品获得奖励
    Task_Tips = 2,     --任务奖励飘字
    Task_Box = 3,      --任务奖励弹窗
    CopyMap_Item = 4,  --副本道具奖励
}

--语言常量定义
CONST_LANGUAGE_TYPE = {
	CHINESE = 1,  --中文版本
	ENGLISH = 2,  --英文版本
}

--世界地图分片区解锁
CONST_MAPUNLOCK = {
	SHILUOQUNDAO = 1,	--失落群岛
	GUJIANIER = 2,		--古加尼尔

}

--多英雄副本地图ID表
CONST_MANYHEROS_MAP = {
    MOZUZHIXIN = 1,     --魔族之心地图
	DYXKSCC = 2,		--多英雄-狂沙虫巢地图
    DYXHLZJ = 3,		--多英雄-黑龙战舰
    DYXKSCC_TWO = 4,    --多英雄-狂沙虫巢单人
    DYXLXMD = 5,        --多英雄-露西墓地
}

--联盟美食时间枚举
CONST_FOOD_TIME = {
    Monday = 1,  --周一
    Tuesday = 2, --周二
    Wednesday = 3,  --周三
    Thursday = 4, --周四
    Friday = 5,  --周五
	Saturday = 6,  --周六
    Sunday = 0,  --周日
    Breakfast = 1 ,  --早餐
    Lunch = 2,  --午餐
    Dinner = 3,   --晚餐
}

CONST_FOOD_EGG= {
    IsEgg = 1,  --彩蛋任务
    NoEgg = 2,  --非彩蛋任务
}

--任务中对白选项点击后触发类型枚举
CONST_TASK_DIALOG_OPTION_TYPE= {
    Dialog = 1, --对白类型
    KillMonster = 2, --杀怪类型
}
