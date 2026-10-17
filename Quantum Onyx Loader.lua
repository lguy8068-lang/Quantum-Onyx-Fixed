local BLOX_FRUITS_GAME_ID = 994732206
local BLOX_FRUITS_URL = "https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/Games/BloxFruits.lua"

local StarterGui = game:GetService("StarterGui")

local function Notify(title, text, duration)
 pcall(function()
 StarterGui:SetCore("SendNotification", {
 Title = title or "Quantum Onyx",
 Text = text or "",
 Duration = duration or 5,
 })
 end)
end

if game.GameId ~= BLOX_FRUITS_GAME_ID then
 warn("[Quantum Onyx] This loader only supports Blox Fruits.")
 Notify("Quantum Onyx", "This loader only supports Blox Fruits.")
 return
end

Notify("Quantum Onyx", "Loading Blox Fruits...", 3)

local ok, err = pcall(function()
 loadstring(game:HttpGet(BLOX_FRUITS_URL))()
end)

if not ok then
 warn("[Quantum Onyx] Failed to load script: " .. tostring(err))
 Notify("Quantum Onyx", "Failed to load script. Check console (F9).")
end