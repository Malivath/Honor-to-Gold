local button = CreateFrame("Button", "MyAddonMinimapButton", Minimap)
local buttons = {MyActionButton, MyActionButton2, MyActionButton3, MyActionButton4, MyActionButton5}
button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")  -- Optional
button:SetSize(32, 32)  -- The size of the icon.
button:SetPoint("CENTER", 0, 0)  -- Position of the icon.
button:SetNormalTexture("Interface\\AddOns\\TestAddon\\1.tga")

button:SetScript("OnClick", function(self, button)
    if button == "LeftButton" then
        for _, btn in ipairs(buttons) do
            print(btn:GetName())  -- This line is for debugging
            if btn:IsShown() then
                btn:Hide()
            else
                btn:Show()
            end
        end
    end
end)


local frame = CreateFrame("Button", "MyActionButton", UIParent, "SecureActionButtonTemplate")
frame:SetAttribute("type", "macro")
frame:SetAttribute("macrotext", [[
/run BuyMerchantItem(108,1)
/run BuyMerchantItem(108,1)
/run BuyMerchantItem(108,1)
/run BuyMerchantItem(108,1)
/run BuyMerchantItem(108,1)
/run BuyMerchantItem(108,1)
/run BuyMerchantItem(108,1)
/run BuyMerchantItem(108,1)
/run BuyMerchantItem(108,1)
]])

frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 0, 0)
frame:SetSize(32, 32) -- This is the size of the button, adjust as needed

local border = frame:CreateTexture(nil, "OVERLAY")
border:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
border:SetBlendMode("ADD")
border:SetAlpha(0.9)
border:SetSize(65, 65) -- This is the default size for the action button border
border:SetPoint("CENTER", frame, "CENTER", 0, 1)


local texture = frame:CreateTexture()
texture:SetAllPoints()
texture:SetTexture("Interface\\AddOns\\TestAddon\\1.tga") -- Replace with the path to your icon texture
frame.texture = texture

-- Add text
local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
text:SetPoint("CENTER") -- This sets the position of the text
text:SetText("1") -- Replace with your text
text:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE")

frame:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")

frame:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    local name, currentAmount = GetCurrencyInfo(392) -- 392 is the ID for Honor Points in Cataclysm
    GameTooltip:AddLine("Current Honor Points: " .. currentAmount, 1, 1, 1)
    GameTooltip:AddLine([["Talk to Sergant Magor Clate in the Champions 
    Hall in stormwind then click this until bags are full"]], 1, 1, 1)
    GameTooltip:Show()
end)

frame:SetScript("OnLeave", function(self)
    GameTooltip:Hide()
end)
    

local frame = CreateFrame("Button", "MyActionButton2", UIParent, "SecureActionButtonTemplate")
frame:SetAttribute("type", "macro")
frame:SetAttribute("macrotext", [[
/use 0 10
/click StaticPopup1Button1
/use 0 11
/click StaticPopup1Button1
/use 0 12
/click StaticPopup1Button1
/use 0 13
/click StaticPopup1Button1
/use 0 14
/click StaticPopup1Button1
/use 0 15
/click StaticPopup1Button1
/use 0 16
/click StaticPopup1Button1
/use 1 1
/click StaticPopup1Button1
/use 1 2
/click StaticPopup1Button1
/use 1 3
/click StaticPopup1Button1
/use 1 4
/click StaticPopup1Button1
/use 1 5
/click StaticPopup1Button1
/use 1 6
/click StaticPopup1Button1
/use 1 7
/click StaticPopup1Button1
/use 1 8
/click StaticPopup1Button1
/use 1 9
/click StaticPopup1Button1
/use 1 10
/click StaticPopup1Button1
/use 1 11
/click StaticPopup1Button1
/use 1 12
/click StaticPopup1Button1
/use 1 13
/click StaticPopup1Button1
/use 1 14
/click StaticPopup1Button1
/use 1 15
/click StaticPopup1Button1
/use 1 16
/click StaticPopup1Button1
/use 1 17
/click StaticPopup1Button1
/use 1 18
/click StaticPopup1Button1
/use 1 19
/click StaticPopup1Button1
/use 1 20
/click StaticPopup1Button1
                                ]])
frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 35, 0)
frame:SetSize(32, 32) -- This is the size of the button, adjust as needed

local border = frame:CreateTexture(nil, "OVERLAY")
border:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
border:SetBlendMode("ADD")
border:SetAlpha(0.9)
border:SetSize(65, 65) -- This is the default size for the action button border
border:SetPoint("CENTER", frame, "CENTER", 0, 1)


local texture = frame:CreateTexture()
texture:SetAllPoints()
texture:SetTexture("Interface\\AddOns\\TestAddon\\2.tga") -- Replace with the path to your icon texture
frame.texture = texture

-- Add text
local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
text:SetPoint("CENTER") -- This sets the position of the text
text:SetText("2") -- Replace with your text
text:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE")

frame:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")

frame:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:SetText([["First bag equip"]], 1, 1, 1)
    GameTooltip:Show()
end)

frame:SetScript("OnLeave", function(self)
    GameTooltip:Hide()
end)

local frame = CreateFrame("Button", "MyActionButton3", UIParent, "SecureActionButtonTemplate")
frame:SetAttribute("type", "macro")
frame:SetAttribute("macrotext", [[
/use 1 21
/click StaticPopup1Button1
/use 1 22
/click StaticPopup1Button1
/use 2 1
/click StaticPopup1Button1
/use 2 2
/click StaticPopup1Button1
/use 2 3
/click StaticPopup1Button1
/use 2 4
/click StaticPopup1Button1
/use 2 5
/click StaticPopup1Button1
/use 2 6
/click StaticPopup1Button1
/use 2 7
/click StaticPopup1Button1
/use 2 8
/click StaticPopup1Button1
/use 2 9
/click StaticPopup1Button1
/use 2 10
/click StaticPopup1Button1
/use 2 11
/click StaticPopup1Button1
/use 2 12
/click StaticPopup1Button1
/use 2 13
/click StaticPopup1Button1
/use 2 14
/click StaticPopup1Button1
/use 2 15
/click StaticPopup1Button1
/use 2 16
/click StaticPopup1Button1
/use 2 17
/click StaticPopup1Button1
/use 2 18
/click StaticPopup1Button1
/use 2 19
/click StaticPopup1Button1
/use 2 20
/click StaticPopup1Button1
/use 2 21
/click StaticPopup1Button1
/use 2 22
/click StaticPopup1Button1
                                ]])
frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 70, 0)
frame:SetSize(32, 32) -- This is the size of the button, adjust as needed

local border = frame:CreateTexture(nil, "OVERLAY")
border:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
border:SetBlendMode("ADD")
border:SetAlpha(0.9)
border:SetSize(65, 65) -- This is the default size for the action button border
border:SetPoint("CENTER", frame, "CENTER", 0, 1)


local texture = frame:CreateTexture()
texture:SetAllPoints()
texture:SetTexture("Interface\\AddOns\\TestAddon\\3.tga") -- Replace with the path to your icon texture
frame.texture = texture

-- Add text
local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
text:SetPoint("CENTER") -- This sets the position of the text
text:SetText("3") -- Replace with your text
text:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE")

frame:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")

frame:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:SetText([["Second bag equip."]], 1, 1, 1)
    GameTooltip:Show()
end)

frame:SetScript("OnLeave", function(self)
    GameTooltip:Hide()
end)

local frame = CreateFrame("Button", "MyActionButton4", UIParent, "SecureActionButtonTemplate")
frame:SetAttribute("type", "macro")
frame:SetAttribute("macrotext", [[
/use 3 1
/click StaticPopup1Button1
/use 3 2
/click StaticPopup1Button1
/use 3 3
/click StaticPopup1Button1
/use 3 4
/click StaticPopup1Button1
/use 3 5
/click StaticPopup1Button1
/use 3 6
/click StaticPopup1Button1
/use 3 7
/click StaticPopup1Button1
/use 3 8
/click StaticPopup1Button1
/use 3 9
/click StaticPopup1Button1
/use 3 10
/click StaticPopup1Button1
/use 3 11
/click StaticPopup1Button1
/use 3 12
/click StaticPopup1Button1
/use 3 13
/click StaticPopup1Button1
/use 3 14
/click StaticPopup1Button1
/use 3 15
/click StaticPopup1Button1
/use 3 16
/click StaticPopup1Button1
/use 3 17
/click StaticPopup1Button1
/use 3 18
/click StaticPopup1Button1
/use 3 19
/click StaticPopup1Button1
/use 3 20
/click StaticPopup1Button1
/use 3 21
/click StaticPopup1Button1
/use 3 22
/click StaticPopup1Button1
                                ]])
frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 105, 0)
frame:SetSize(32, 32) -- This is the size of the button, adjust as needed

local border = frame:CreateTexture(nil, "OVERLAY")
border:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
border:SetBlendMode("ADD")
border:SetAlpha(0.9)
border:SetSize(65, 65) -- This is the default size for the action button border
border:SetPoint("CENTER", frame, "CENTER", 0, 1)


local texture = frame:CreateTexture()
texture:SetAllPoints()
texture:SetTexture("Interface\\AddOns\\TestAddon\\4.tga") -- Replace with the path to your icon texture
frame.texture = texture

-- Add text
local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
text:SetPoint("CENTER") -- This sets the position of the text
text:SetText("4") -- Replace with your text
text:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE")

frame:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")

frame:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:SetText([["Third bag equip."]], 1, 1, 1)
    GameTooltip:Show()
end)

frame:SetScript("OnLeave", function(self)
    GameTooltip:Hide()
end)

local frame = CreateFrame("Button", "MyActionButton5", UIParent, "SecureActionButtonTemplate")
frame:SetAttribute("type", "macro")
frame:SetAttribute("macrotext", [[
/use 4 1
/click StaticPopup1Button1
/use 4 2
/click StaticPopup1Button1
/use 4 3
/click StaticPopup1Button1
/use 4 4
/click StaticPopup1Button1
/use 4 5
/click StaticPopup1Button1
/use 4 6
/click StaticPopup1Button1
/use 4 7
/click StaticPopup1Button1
/use 4 8
/click StaticPopup1Button1
/use 4 9
/click StaticPopup1Button1
/use 4 10
/click StaticPopup1Button1
/use 4 11
/click StaticPopup1Button1
/use 4 12
/click StaticPopup1Button1
/use 4 13
/click StaticPopup1Button1
/use 4 14
/click StaticPopup1Button1
/use 4 15
/click StaticPopup1Button1
/use 4 16
/click StaticPopup1Button1
/use 4 17
/click StaticPopup1Button1
/use 4 18
/click StaticPopup1Button1
/use 4 19
/click StaticPopup1Button1
/use 4 20
/click StaticPopup1Button1
/use 4 21
/click StaticPopup1Button1
/use 4 22
/click StaticPopup1Button1
/use 0 10
        ]])
frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 140, 0)
frame:SetSize(32, 32) -- This is the size of the button, adjust as needed

local texture = frame:CreateTexture()
texture:SetAllPoints()
texture:SetTexture("Interface\\AddOns\\TestAddon\\5.tga") -- Replace with the path to your icon texture
frame.texture = texture

local border = frame:CreateTexture(nil, "OVERLAY")
border:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
border:SetBlendMode("ADD")
border:SetAlpha(0.9)
border:SetSize(65, 65) -- This is the default size for the action button border
border:SetPoint("CENTER", frame, "CENTER", 0, 1)

-- Add text
local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
text:SetPoint("CENTER") -- This sets the position of the text
text:SetText("5") -- Replace with your text
text:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE")

frame:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")

frame:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:SetText([["Fourth bag equip."]], 1, 1, 1)
    GameTooltip:Show()
end)

frame:SetScript("OnLeave", function(self)
    GameTooltip:Hide()
end)
