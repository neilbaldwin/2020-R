
GROUPS = {
    "/slicer/preset/",
    "/tone/preset/",
    "/group1/preset/",
    "/group2/preset/",
    "/group3/preset/",
    "/group4/preset/",
    "/fx/preset/",
    "/patcher/preset/",
    "/transposer/preset/",
    "/send/preset/",
    "/mixer/preset/",
    "/sequencer1/preset/",
    "/sequencer2/preset/",
    "/sequencer3/preset/",
    "/sequencer4/preset/",
}

PRESETS = {"q", "w", "e", "r", "t", "u", "i", "o", "p"}
SUB_PRESETS = {"a", "s", "d", "f", "g", "h", "j", "k"}

function onReceiveNotify(n, args)
        p = self.children.PRESET.values.x + 1
        s = self.children.SUB_PRESET.values.x + 1
        for i = 1, #GROUPS do
            sendOSC(string.format("%s%s/", GROUPS[i], PRESETS[p]), 0.5)
            sendOSC(string.format("%s%s/", GROUPS[i], SUB_PRESETS[s]), 0.5)
        end
  end