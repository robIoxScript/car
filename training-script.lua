if game.PlaceId == 111130915266245 then
   local CurrentVersion = "Symbiote Hub - Race Training v1"
   local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

   local Window = Rayfield:CreateWindow({
      Name = CurrentVersion,
      Icon = 0, -- Unused
      LoadingTitle = "Symbiote Hub",
      LoadingSubtitle = "by cypruxy",
      Theme = "Ocean",
      DisableRayfieldPrompts = false,
      DisableBuildWarnings = false,
      ConfigurationSaving = {
         Enabled = true,
         FolderName = "Car Training Folder (script)", 
         FileName = "Symbiote (script)"
      },
   
      Discord = {
         Enabled = true,
         Invite = "ffJj5ap6rx", 
         RememberJoins = true
      },
   
      KeySystem = true,
      KeySettings = {
         Title = "Symbiote Register",
         Subtitle = "Key System",
         Note = "Try: GoatCypruxy",
         FileName = "Symbiote (key)",
         SaveKey = true,
         GrabKeyFromSite = false,
         Key = {"GoatCypruxy"}
      }
   })

   local FarmTab = Window:CreateTab("Auto Farm", 4483362458) -- Title, Image

   local Toggle = FarmTab:CreateToggle({
      Name = "Enable Auto Farm",
      CurrentValue = false,
      Flag = "Toggle1",
      Callback = function(Value)
         if Value then
            while true do
               game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Join Race"):FireServer()
               wait(1)
               local args = {
                  [1] = "Auto Race",
                  [2] = true
               }
               game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Set Stat"):FireServer(unpack(args))
               wait(1)
               if not Rayfield.Flags["Toggle1"].CurrentValue then
                  break
               end
            end
         end
      end,
   })

   Rayfield:LoadConfiguration()
end
