local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local Humanoid = char:WaitForChild("Humanoid")

local walk = 16
local run = 30

uis.InputBegan:Connect(function(input, gameProcessed)
	
	if input.KeyCode == Enum.KeyCode.LeftControl then
		Humanoid.WalkSpeed = run
		
	end
	
end)

uis.InputEnded:Connect(function(input, gameProcessed)
	
	if input.KeyCode == Enum.KeyCode.LeftControl then
		Humanoid.WalkSpeed = walk
		
	 end
	
end)