if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
local name_m = game.Players.LocalPlayer.Name 
print('yeseews')
if name_m == 'thailand_AsH' then
    -- Admin
    _G.Settings = {
        ['Max Level (Prestige)'] = 160,
        -- รีเบิด
        ['Prestige'] = {
            ['Memories'] = { -- ใส่ชื่อการ์ดที่ต้องการ (โอกาสได้99%)
                [1] = "Afterimages",
                [2] = "Flashstep",
                [3] = "Assassin"
            }   
        },
        -- ซื้อน้ำยา EXP X2
        ['Boost EXP X2'] = { 
            ['Buy'] = '2x XP Boost [30m]', 
            ['Use'] = '2x XP Boost [30m]'
        },
        -- เลือกด่าน
        ['Mission'] = {
            ['Auto Join Mission (Boost)'] = true, -- เข้าด่านที่มีบูส เพื่อให้ได้ EXP +50%
            ['Auto Next Difficulty'] = true, -- ไปด่านต่อไปเมื่อแรงค์ถึง
            ['Auto Leave (When Win)'] = 2 -- ออกจากด่านเมื่อชนะครบ 2รอบ
        },
        -- อัพแรงค์
        ['Upgrades'] = {
            "ODM_Damage",
            "Blade_Durability",
            "Crit_Chance",
            "Crit_Chance",
            "Crit_Damage",
            "ODM_Control",
            "ODM_Gas",
            "ODM_Range",
            "ODM_Speed"
        },
        -- ฟามไททัน
        ['Auto Attack Titan'] = true, -- ตีไททัน
        ['Auto Repair Weapon'] = true, -- ซ่อมอาวุธ
        ['Auto Fill Gas'] = true, -- เติมแก๊ส + เติมดาบ
        -- เพิ่มความลื่น
        ['FPS Booster'] = true, -- ภาพกาก
        ['Close Gui'] = false, -- ปิดหน้า GUI
        ['White Screen'] = true -- จอขาวลด RAM
    }
else
    -- Admin
    _G.Settings = {
        ['Max Level (Prestige)'] = 200,
        -- รีเบิด
        ['Prestige'] = {
            ['Memories'] = { -- ใส่ชื่อการ์ดที่ต้องการ (โอกาสได้99%)
                [1] = "Apotheosis",
                [2] = "Overslash",
                [3] = "Thanatophobia",
                [4] = "Gambler"
            }
        },
        -- ซื้อน้ำยา EXP X2
        ['Boost EXP X2'] = { 
            ['Buy'] = '2x XP Boost [30m]', 
            ['Use'] = '2x XP Boost [30m]'
        },
        -- เลือกด่าน
        ['Mission'] = {
            ['Auto Join Mission (Boost)'] = true, -- เข้าด่านที่มีบูส เพื่อให้ได้ EXP +50%
            ['Auto Next Difficulty'] = true, -- ไปด่านต่อไปเมื่อแรงค์ถึง
            ['Auto Leave (When Win)'] = 2 -- ออกจากด่านเมื่อชนะครบ 2รอบ
        },
        -- อัพแรงค์
        ['Upgrades'] = {
            "ODM_Damage",
            "Blade_Durability",
            "Crit_Chance",
            "Crit_Chance",
            "Crit_Damage",
            "ODM_Control",
            "ODM_Gas",
            "ODM_Range",
            "ODM_Speed"
        },
        -- ฟามไททัน
        ['Auto Attack Titan'] = true, -- ตีไททัน
        ['Auto Repair Weapon'] = true, -- ซ่อมอาวุธ
        ['Auto Fill Gas'] = true, -- เติมแก๊ส + เติมดาบ
        -- เพิ่มความลื่น
        ['FPS Booster'] = true, -- ภาพกาก
        ['Close Gui'] = false, -- ปิดหน้า GUI
        ['White Screen'] = true -- จอขาวลด RAM
    }
end
script_key="RazCedFsLiYTRvNLSZkZFoMakqfiashp";
setfpscap(10)
queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/londnee/code/refs/heads/main/smr.lua"))()')
if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("SwitchHub") then
    local player = game.Players.LocalPlayer
    local switchHubGui = Instance.new("ScreenGui")
    switchHubGui.Name = "SwitchHub"
    switchHubGui.Parent = player:WaitForChild("PlayerGui") -- ตั้ง Parent เป็น PlayerGui
    switchHubGui.DisplayOrder = 10 -- กำหนด DisplayOrder
    switchHubGui.Enabled = true -- เปิดใช้งาน GUI
    switchHubGui.IgnoreGuiInset = true -- ให้ GUI อยู่ในตำแหน่งบนสุด
    switchHubGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling -- ตั้งค่า ZIndexBehavior
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fed2be135c061b074c5deabeb2949dae.lua"))()
    Nexus_Version = 104

    local FileName, Success, Error, Function = 'ic3w0lf22.Nexus.lua'

    if isfile and readfile and isfile(FileName) then -- Execute ASAP, update later.
        Function, Error = loadstring(readfile(FileName), 'Nexus')

        if Function then
            Function()

            if Nexus then Nexus:Connect() end
        end
    end

    for i=1, 10 do
        Success, Error = pcall(function()
            local Response = (http_request or (syn and syn.request)) { Method = 'GET', Url = 'https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RBX%20Alt%20Manager/Nexus/Nexus.lua' }

            if not Response.Success then error(('HTTP Error %s'):format(Response.StatusCode)) end

            Function, Error = loadstring(Response.Body, 'Nexus')

            if not Function then error(Error) end

            if isfile and not isfile(FileName) then
                writefile(FileName, Response.Body)
            end
            
            if not Nexus then -- Nexus was already ran earlier, this will update the existing file to the latest version instead of re-creating Nexus
                Function()
                Nexus:Connect()
            end
        end)
        
        if Success then break else task.wait(1) end
    end

    if not Success and Error then
        (messagebox or print)(('Nexus encountered an error while launching!\n\n%s'):format(Error), 'Roblox Account Manager', 0)
    end
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild("SwitchHub") then
    print('Task Bu')
end
-- Admin
