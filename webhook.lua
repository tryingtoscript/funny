local WebhookLink = "https://discord.com/api/webhooks/781225212385427536/EO5n_i3nEiZAI5qFZLlVftzeSbSKegLAgHoDCrhdsgpJe7UTd2fS_dBPogGWMGkfhH3-/github"




--// Artifact checks here
repeat wait() until game.IsLoaded

local Players;
local Player;

repeat Players = game:GetService("Players"); wait() until Players ~= nil
Players = game:GetService("Players")
repeat Player = Players.LocalPlayer; wait() until Players.LocalPlayer ~= nil
Player = Players.LocalPlayer
repeat wait() until Player:FindFirstChild("Backpack")
repeat wait() until Player.Backpack:FindFirstChildOfClass("Tool") ~= nil

local function Artifacts()
    if Player.Backpack:FindFirstChild("Night Stone") then
        return "Night Stone"
    elseif Player.Backpack:FindFirstChild("Fairfrozen") then
        return "Fairfrozen"
    elseif Player.Backpack:FindFirstChild("Amulet of the White King") then
        return "Amulet of the White King"
    elseif Player.Backpack:FindFirstChild("Philosopher's Stone") then
        return "Philosopher's Stone"
    elseif Player.Backpack:FindFirstChild("Rift Gem") then
        return "Rift Gem"
    elseif Player.Backpack:FindFirstChild("Lannis's Amulet") then
        return "Lannis's Amulet"
    elseif Player.Backpack:FindFirstChild("Scroom Key") then
        return "Scroom Key"
    elseif Player.Backpack:FindFirstChild("Howler Friend") then
        return "Howler Friend"
    elseif Player.Backpack:FindFirstChild("Spider Cloak") then
        return "Spider Cloak"
    elseif Player.Backpack:FindFirstChild("Scroll of Fimbulvetr") then
        return "Scroll of Fimbulvetr"
    elseif Player.Backpack:FindFirstChild("Scroll of Manus Dei") then
        return "Scroll of Manus Dei"
    end
    
    return false
end

local function WebhookMessage(Artifact)
local Message = {
    ["content"] = "@everyone",
    ["embeds"] = {
        {
            ["title"] = "Found Artifact",
            ["description"] = Artifact,
            ["color"] = 16711680,

            ["fields"] = {
                {
                    ["name"] = "Artifact Found:",
                    ["value"] = Artifact
                }
            },

                ["footer"] = {
                    ["text"] = "x_up#0001 but like rogue is dogshit game"
                }
            }
        }
    }
    
    
    syn.request({
        Url = tostring(WebhookLink),
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json'
        },
        Body = game:GetService('HttpService'):JSONEncode(Message)
    });
end

if Artifacts() ~= false then
	WebhookMessage(Artifacts())
end