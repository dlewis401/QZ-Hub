local keys = {
    "MEM9lXfk84cichqk8aOiMPtdH3DjzdXX1zuo",
    "mukzcisEkMjdFz3hKz5TN6wIbNW7QcYlBmcBGBG9VJ1P934BcgOTYnUAmBQS",
    "3454435/345/34./54356.546546756745645654'6;54]65;54[65]6p456[p546[54[645p6456p54]6]54"
}

local counter = 1
local keyCheck
for i,v in pairs(keys) do
    if counter == #keys then
    --not whitelisted!
    keys = ""
    game.Players.LocalPlayer:Kick("Not a valid key!")
    else
        if v == _G.Key then
            --Whitelisted!
            print("Successfully whitelisted!")
            loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/dlewis401/QZ-Hub/main/QuarantineZHub.lua"))()
            keyCheck = _G.Key
            keys = ""
        else
            counter = counter +1
        end
    end
end

while true do
    if _G.Key == keyCheck then
        --Not spoofed
    else
        game.Players.LocalPlayer:Kick("Invalid Key - Please get a real one n00b")
    end
    wait()
end