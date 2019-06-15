

local S = lib_ecology.intllib

--Local vars to define air and tree trunks, leaves, fruits, vines, and other associated nodes for use within the lua schematics
--air is defined as an _ (underscore) throughout
--Leaf direction and probabilities are defined.
--Trunk direction and probabilities are defined
--Vine direction is defined
--Fruit uses a generic probability of 127

local schem_path = lib_ecology.path .. "/schematics/"
local metatable = {
	__index = function(self, index)
		local path = schem_path .. index .. ".mts"
		if io.open(path) then
			self[index] = path
			return path
		else
			return nil
		end
	end
}

lib_ecology.schem = setmetatable({}, metatable)
