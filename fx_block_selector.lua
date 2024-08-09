--[[

FX_BLOCK_SELECTOR

Small script attached to 'hidden' group buttons on FX tab
Click/press on the group heading to select/deselct all switches in that group

]]

local status = 0

function onValueChanged(key)
  if (key == "x" and self.values.x == 1) then
    -- Find all objects in parent tagged with "SWITCH"
	  switches = self.parent:findAllByProperty('tag', "SWITCH")
    -- Toggle status variable between 0 and 1
    status = (status + 1) % 2
    -- Iterate switches
    for _, s in ipairs(switches) do
      -- Only changes switches that have the same 3 letter prefix as the hidden button name
		  if (string.sub(s.name, 1, 3) == self.name) then s.values.x = status end
    end
  end
end
