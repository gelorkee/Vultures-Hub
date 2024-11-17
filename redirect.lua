--| Redirect to Main Script upon Rejoin |--
task.wait()
print("[*] Redirecting...")
local s2, e2 = pcall(function()
    getgenv().VULTURE_REJOINING = true
    loadstring(game:HttpGet('https://raw.githubusercontent.com/YungCaesarr/Vultures-Hub/refs/heads/main/main.lua'))()
end)

if not s2 then warn('something went wrong 2'); warn(e2); end
