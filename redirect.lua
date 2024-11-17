--| Redirect to Main Script upon Rejoin |--
print("[*] Redirecting...")
local requestSuccess, requestError = pcall(function()
    
    if not game:IsLoaded() then
      game.Loaded:Wait()
    end

    getgenv().VULTURE_REJOINING = true

    local function sendRequest()
        local loadSuccess, loadError = pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/YungCaesarr/Vultures-Hub/refs/heads/main/main.lua'))()
        end)
        return loadSuccess
    end

    if sendRequest() == false then
        repeat
            task.wait()
        until sendRequest() == true
    end
    
end)

if not requestSuccess then warn('[Redirect] Something went wrong. Contact an Admin.'); warn(requestError); end
