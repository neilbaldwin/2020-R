
PRESETS = {"q", "w", "e", "r", "t", "u", "i", "o", "p"}
SUB_PRESETS = {"a", "s", "d", "f", "g", "h", "j", "k"}

function onReceiveNotify(n, args)
    if (n == "PRESET") then
        p = args
        --print("PRESET")
        sendOSC(string.format("%s/preset/%s/", self.name, PRESETS[p]), 0.5)
        self.children.SUB_PRESET.values.x = 0
        sendOSC(string.format("%s/preset/%s/", self.name, SUB_PRESETS[1]), 0.5)
    elseif (n == "SUB_PRESET") then
        --print("SUB PRESET")
        p,s = unpack(args)
        sendOSC(string.format("%s/preset/%s/", self.name, PRESETS[p]), 0.5)
        sendOSC(string.format("%s/preset/%s/", self.name, SUB_PRESETS[s]), 0.5)
    end
end