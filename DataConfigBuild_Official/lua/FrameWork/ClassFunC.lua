--region ClassFunC.lua
--Date
--类定义文件


--endregion

local setmetatableindex_
setmetatableindex_ = function(t, index)
    if type(t) == "userdata" then
        local peer = tolua.getpeer(t)
        if not peer then
            peer = {}
            tolua.setpeer(t, peer)
        end
        setmetatableindex_(peer, index)
    else
        local mt = getmetatable(t)
        if not mt then mt = {} end
        if not mt.__index then
            mt.__index = index
            setmetatable(t, mt)
        elseif mt.__index ~= index then
            setmetatableindex_(mt, index)
        end
    end
end
setmetatableindex = setmetatableindex_

function clone(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local newObject = {}
        lookup_table[object] = newObject
        for key, value in pairs(object) do
            newObject[_copy(key)] = _copy(value)
        end
        return setmetatable(newObject, getmetatable(object))
    end
    return _copy(object)
end


--[[
cls = {}
cls.__cname   --类名
cls.__create  --创建实例方法
cls.__supers  --存放父类数组
--]]

function class(classname, ...)
    local cls = {__cname = classname}   --设置类名

    local supers = {...}   --父类数组，模拟class的多继承
    for _, super in ipairs(supers) do
        local superType = type(super)
        assert(superType == "nil" or superType == "table" or superType == "function",
            string.format("class() - create class '%s' with invalid super class type '%s'",
                classname, superType))

        if superType == "function" then  --如果是一个函数，直接将__create方法指向super，那么也就是用这个方法来创建实例
            assert(cls.__create == nil,
                string.format("class() - create class '%s' with more than one creating function",
                    classname));
            -- if super is function, set it to __create
            cls.__create = super
        elseif superType == "table" then  --lua里table分两种:userdata（C++类）和纯lua表
            if super[".isclass"] then
                --这种我们目前不用，cocos2dx引擎使用tolua++时用
                -- super is native class
                assert(cls.__create == nil,
                    string.format("class() - create class '%s' with more than one creating function or native class",
                        classname));
                cls.__create = function() return super:create() end
            else
                --我们目前使用，继承纯lua表
                -- super is pure lua class
                cls.__supers = cls.__supers or {}
                cls.__supers[#cls.__supers + 1] = super
                if not cls.super then
                    -- 设置第一个父类当class.super
                    -- set first super pure lua class as class.super
                    cls.super = super
                end
            end
        else
            error(string.format("class() - create class '%s' with invalid super type",
                        classname), 0)
        end
    end

    cls.__index = cls
    if not cls.__supers or #cls.__supers == 1 then
        --如果子类的父类不存在或者只存在只有一个，那么把索引方法指向唯一的父类
        setmetatable(cls, {__index = cls.super})
    else
        --如果子类存在多个父类，那么索引方法会遍历所有的父类
        setmetatable(cls, {__index = function(_, key)
            local supers = cls.__supers
            for i = 1, #supers do
                local super = supers[i]
                if super[key] then return super[key] end
            end
        end})
    end

    if not cls.ctor then
        -- add default constructor
        cls.ctor = function() end
    end
    cls.new = function(...)
        --创建对象，会调用自身的__create方法（如果有的话），然后会调用ctor方法来初始化
        local instance
        if cls.__create then
            instance = cls.__create(...)
        else
            instance = {}
        end
        setmetatableindex(instance, cls)
        instance.class = cls
        instance:ctor(...)
        return instance
    end
    cls.create = function(_, ...)  --模拟cocos2dx的编程习惯
        return cls.new(...)
    end
    return cls
end

