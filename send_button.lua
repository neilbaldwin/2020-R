--[[

SEND button script. Attached to the SEND button in each parameter group.

When SEND is pressed, the status of the parameter switches in the parent group,
along with the group name (set to '2020''s base nodes e.g. /group1/1 is sent to
the onReceiveNotify() function in the root document.

This keeps the code inside each parameter group light putting the main code and
parameter tables in the root document so it acts like 'global' code/data

--]]

function onValueChanged(key)
    -- Only activate when SEND value is 1
    if (key == 'x' and self.values.x == 1) then
  
      -- Get all parameter toggle buttons in parent group but only ones tagged as 'SWITCH'
      local switches = self.parent:findAllByProperty('tag', "SWITCH")
      
      -- Get status of RANGE, VALUES and RESET buttons in parent group
      local SW_RANGE = self.parent.children.RANGE.values.x
      local SW_VALUES = self.parent.children.VALUES.values.x
      local SW_RESET = self.parent.children.RESET.values.x
  
      -- Iterate all parameter toggles
      for i, s in ipairs(switches) do
        -- If parameter is on, send notification to root (document) script
        if (s.values.x == 1) then
          -- 'group' is taken from parent group NAME parameter e.g. /group1/1
          local GROUP = self.parent.name
          -- Send notification to root script with group name and switch statuses
          self.parent.parent.parent.parent:notify(s.name, {GROUP, SW_VALUES, SW_RANGE, SW_RESET})
        end
      end
      -- Always turn reset switch off after sending parameters
      self.parent.children.RESET.values.x = 0
    end
  end