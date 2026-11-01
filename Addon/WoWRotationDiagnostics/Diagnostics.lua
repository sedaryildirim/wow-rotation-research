local addonName = ...

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(_, event, loadedName)
    if event == "ADDON_LOADED" and loadedName == addonName then
        print("|cff66ccffWoW Rotation Research:|r diagnostics scaffold loaded.")
        print("|cff66ccffWoW Rotation Research:|r no combat actions or input automation are active.")
    end
end)
