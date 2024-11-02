loadstring(game:HttpGet(("https://raw.githubusercontent.com/REDzHUB/LibraryV2/main/redzLib")))()

MakeWindow({
  Hub = {
    Title = "ARBIX HUB Bellu Piece",
    Animation = "by : TOUKA"
  },
  Key = {
    KeySystem = false,
    Title = "Key System",
    Description = "",
    KeyLink = "",
    Keys = {"1234"},
    Notifi = {
      Notifications = true,
      CorrectKey = "Running the Script...",
      Incorrectkey = "The key is incorrect",
      CopyKeyLink = "Copied to Clipboard"
    }
  }
})


MinimizeButton({
  Image = "",
  Size = {40, 40},
  Color = Color3.fromRGB(10, 10, 10),
  Corner = true,
  Stroke = true,
  StrokeColor = Color3.fromRGB(255, 0, 0)
})

local Main = MakeTab({Name = "Main"})



MakeNotifi({
  Title = "ARBIX HUB",
  Text = "JOIN OUR TELEGRAM",
  Time = 5
})

local section = AddSection(Main, {"INF Stats"})

AddButton(Main, {
  Name = "Get inf stats",
  Callback = function()
      local args = {
    [1] = "GunStat",
    [2] = -1100000000
}

game:GetService("ReplicatedStorage").stat:FireServer(unpack(args))
      MakeNotifi({
  Title = "DONE YOU GOT INF STATS ",
  Text = "JOIN OUR TELEGRAM",
  Time = 5
})
  end
})


local section = AddSection(Main, {"INF LEVELS AND MONEY ( dupe quest )"})

AddButton(Main, {
  Name = "GET INF LEVELS ( YOU NEED TO GET QUEST AND PRESS DONE THEN ENABLE IT",
  Callback = function()
 while true do 
    local args = {
    [1] = false
}

game:GetService("ReplicatedStorage").QuestResult:FireServer(unpack(args))
        wait(0.1)
  end
})
