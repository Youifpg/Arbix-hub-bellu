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

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local QuestResult = ReplicatedStorage:WaitForChild("QuestResult")

local Toggle = AddToggle(Main, {
    Name = "Toggle Test",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = Value  -- Pass the toggle value directly
        }
        QuestResult:FireServer(unpack(args))  -- Fire the server with the toggle value

        if Value then
            print("Toggle is ON: Quest marked as completed.")
        else
            print("Toggle is OFF: Quest marked as not completed.")
        end
    end
})

local Label = AddTextLabel(Main, "Note : First complete any quest then press done then enable the toogle to get inf")
