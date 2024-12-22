        local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        local Emotes = PlayerGui:WaitForChild("MainGUI"):WaitForChild("Game"):FindFirstChild("Emotes")

        if Emotes then
            local success = pcall(function()
                require(game:GetService("ReplicatedStorage").Modules.EmoteModule).GeneratePage(
                    {"headless", "zombie", "zen", "ninja", "floss", "dab", "sit"},
                    Emotes,
                    "Free Emotes"
                )
            end)

            if success then
                game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Emotes Loader";
            Text = "Successfully unlocked all emotes.";
            Duration = 10;
            Button1 = "OK"
        })
            end
        end
