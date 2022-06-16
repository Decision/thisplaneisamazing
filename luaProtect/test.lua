Object = {}
--实例化方法
function Object:new()
	local obj = {}
	--给空对象设置元表 以及 __index
	self.__index = self
	setmetatable(obj, self)
	return obj
end

Object.id=1

function Object:Test()
    print(self.id)
end

abc=Object:new()
abc.id=2
abc:Test()