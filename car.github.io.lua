   -- call the library
   local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

   -- main frame
   local Window = Rayfield:CreateWindow({
      Name = "gay",
      Icon = 0, -- inutile
      LoadingTitle = "Symbiote Hub",
      LoadingSubtitle = "by cypruxy",
      Theme = "Ocean",
   
      DisableRayfieldPrompts = false,
      DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
   
      ConfigurationSaving = {
         Enabled = true,
         FolderName = "Car Training Folder (script)", -- un dossiers pour mon scriptt
         FileName = "Symbiote (script)"
      },
   
      Discord = {
         Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
         Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
         RememberJoins = true -- Set this to false to make them join the discord every time they load it up
      },
   
      KeySystem = true, -- Set this to true to use our key system
      KeySettings = {
         Title = "Symbiote Register",
         Subtitle = "Key System",
         Note = "try : GoatCypruxy", -- Use this to tell the user how to get a key
         FileName = "Symbiote (key)", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
         SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
         GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
         Key = {"GoatCypruxy"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
      }
   })

   Rayfield:LoadConfiguration()
end
