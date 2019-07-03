--region CommonFunC.lua
--Date
--非TYPE的功能函数封装



--endregion

--local gamerw = rwGetCommonInstance()

--===============================================================
--分割字符串
--参数:待分割的字符串,分割字符
--返回:子串表.(含有空串)
function rwComLuaStringSplit(str,split_char)
	----rwTestLogFunc({F="rwComLuaStringSplit",str=str,split_char=split_char})
	local sub_str_tab = {};
	while (true) do
		local pos = string.find(str,split_char);
		if (not pos) then
			local size_t = table.getn(sub_str_tab)
			table.insert(sub_str_tab,size_t+1,str);
			break;
		end
		
		local sub_str = string.sub(str,1,pos - 1);
		local size_t = table.getn(sub_str_tab)
		table.insert(sub_str_tab,size_t+1,sub_str);
		local t = string.len(str);
			str = string.sub(str, pos + 1,t);
	end
	return sub_str_tab;
end

--获取当前的系统时间，单位秒,该值为时间戳
function rwComGetCurrentTime()
	--rwTestLogFunc({F="rwComGetCurrentTime"})
	local nRet = os.time()
	return nRet
end

--获取当前的系统时间表
--day 日
--hour 小时
--min 分钟
--month 月
--sec 秒
-- wday 星期
--yday 当年已过天数
--year 年
function rwComGetCurrentTimebyTable()
	local nRet = os.date("*t")
	return nRet
end

--查找tTable中是否有nElement元素，true存在，false不存在
function rwComElementIsExit(tTable,nElement)
	if(tTable ~= nil and table.getn(tTable) > 0) then
		for index,v in pairs(tTable) do
			if(v == nElement) then
				return true,index
			end
		end
	end
	return false
end
 
--将LUA表转换为JSON字符串
function rwTable2Json(t)
    local function serialize(tbl)  
        local tmp = {}  
        for k, v in pairs(tbl) do  
            local k_type = type(k)  
            local v_type = type(v)  
            local key = (k_type == "string" and "\"" .. k .. "\":")  --LUA表下标处理（字符串或者数字）
                or (k_type == "number" and "")  
            local value = (v_type == "table" and serialize(v))  
                or (v_type == "boolean" and tostring(v))  
                or (v_type == "string" and "\"" .. v .. "\"")  
                or (v_type == "number" and v)  
            tmp[#tmp + 1] = key and value and tostring(key) .. tostring(value) or nil  
        end  
        if table.maxn(tbl) == 0 then  
            return "{" .. table.concat(tmp, ",") .. "}"  
        else  
            return "[" .. table.concat(tmp, ",") .. "]"  
        end  
    end
    return serialize(t)  
end

--输出函数
--function Log_Record(new,fileName)
--	local file = io.open("./"..fileName,"a+")
--	file:write(new)
--	file:close()
--end


function rwChkInt(Val)
    if Val and type(Val) == "number" then
        return true
    end
    return false
end

function rwChkTable(Val)
    if Val and type(Val) == "table" then
        return true
    end
    return false
end

function rwChkFunc(Val)
    if Val and type(Val) == "function" then
        return true
    end
    return false
end

--lua表复制
function SysCopyTable(tTable)
	local tTemp = {}
	if tTable ~= nil and type(tTable) == "table" then
		for i,v in pairs(tTable) do
			local sType = type(v)
			if sType == "table" then
				tTemp[i] = SysCopyTable(v)
			else
				tTemp[i] = v
			end
		end
	end
	return tTemp
end
