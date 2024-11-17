--| Redirect to Main Script upon Rejoin |--
task.wait()
print("[*] Redirecting...")

local function checkHttpAvailable()
    local httpAvailable, response = pcall(function()
        return game:HttpGet("https://www.google.com")
    end)
    return httpAvailable
end
    
if not game:IsLoaded() then
  game.Loaded:Wait()
end
    
if checkHttpAvailable() == false then
  repeat task.wait(0.2) until checkHttpAvailable() == true
end

getgenv().VULTURE_REJOINING = true
local content = game:HttpGet('https://raw.githubusercontent.com/YungCaesarr/Vultures-Hub/refs/heads/main/main.lua')
print(content)
loadstring(content)()
