local userInputService = game:GetService("UserInputService")
local ball = workspace.Ball -- Replace "Ball" with the actual name of your part

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        ball.CFrame = humanoidRootPart.CFrame
    end
end)
