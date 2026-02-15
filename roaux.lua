-- YouTube Audio Pro | Official Loader
local domain = "https://roblox-player.onrender.com/get-script"

local success, scriptContent = pcall(function()
    return game:HttpGet(domain)
end)

if success then
    if scriptContent:find("Forbidden") then
        warn("Access Denied: The gatekeeper rejected the request.")
    else
        local func, err = loadstring(scriptContent)
        if func then
            func() -- This runs your UI script!
        else
            warn("Loadstring Error: " .. tostring(err))
        end
    end
else
    warn("Connection Error: Could not reach the server.")
end
