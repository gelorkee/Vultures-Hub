--| Redirect to Main Script upon Rejoin |--
task.wait()
print("[*] Redirecting...")

local httprequest = (syn and syn.request) or (http and http.request) or http_request or request

local s2, e2 = pcall(function()
    
    if not game:IsLoaded() then
      game.Loaded:Wait()
    end

    getgenv().VULTURE_REJOINING = true
    
    local fetched = httprequest({
        Url = "https://raw.githubusercontent.com/YungCaesarr/Vultures-Hub/refs/heads/main/main.lua",
        Method = "GET",
    })

    local function sendRequest()
        print'Req sent'
        local sx, ex = pcall(function()
            loadstring(fetched.Body)()
        end)
        return sx
    end
    
    if sendRequest() == false then
        repeat
            task.wait()
        until sendRequest() == true
    end

end)

if not s2 then warn('[Redirect] Something went wrong. Contact an Admin.'); warn(e2); end
