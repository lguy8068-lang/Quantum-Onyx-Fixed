--[[
	Deobfuscated from Test.lua (Quantum obfuscator, 2 layers).
	- All 11,074 encrypted strings restored, source re-formatted.
	- Local variable names are still the obfuscator's single letters (K, n, p, u...).
	- The runtime anti-tamper / anti-dump wrapper was removed (not needed for reading).
	Script: "Quantum Onyx" Blox Fruits hub (author: flazhy).
--]]

if not game and (game.GetService and game:GetService("RunService")) or game.ClassName ~= "DataModel" or (typeof and typeof(game.Players) ~= "Instance") or not ((getmetatable and (setmetatable and (type and (pcall and (rawget and rawset)))))) then
	repeat
		task.wait()
		warn("stop skidding - flazhy")
	until false
end
local K = cloneref or function(K)
	return K
end
local n = K(game:GetService("Players"))
local p = n.LocalPlayer or (n:GetPropertyChangedSignal("LocalPlayer")):Wait()
local u = p
repeat
	task.wait()
until game:IsLoaded() and u:FindFirstChild("DataLoaded")
if u.PlayerGui:FindFirstChild("Main (minimal)") then
	if not (getgenv()).Team or (getgenv()).Team == "" then
		(getgenv()).Team = "Pirates"
	end
	local K = u.PlayerGui["Main (minimal)"]
	local n = (K:WaitForChild("ChooseTeam")):WaitForChild("Container")
	local p
	if (getgenv()).Team == "Pirates" then
		p = ((n:WaitForChild("Pirates")):WaitForChild("Frame")):WaitForChild("TextButton")
	elseif (getgenv()).Team == "Marines" then
		p = ((n:WaitForChild("Marines")):WaitForChild("Frame")):WaitForChild("TextButton")
	end
	if p then
		repeat
			task.wait()
			pcall(function()
				firesignal(p.Activated)
			end)
		until not u.PlayerGui:FindFirstChild("Main (minimal)")
	end
end
repeat
	task.wait()
until u.PlayerGui:FindFirstChild("Main")
if (getgenv()).QuantumOnyxActive then
	return print("already running")
end;
(getgenv()).QuantumOnyxActive = true
local s
if syn and syn.request then
	s = syn.request
elseif http_request then
	s = http_request
elseif http and http.request then
	s = http.request
elseif request then
	s = request
elseif httprequest then
	s = httprequest
end
local function c(K)
	if not s then
		return nil
	end
	return s(K)
end
local X = {}
local A = {}
local a = {}
local D = {}
local Q = {}
local S = {}
local F = {}
local H = {}
local O = {}
local L = nil
setmetatable(A, {
	__index = function(n, p)
		local u, s = pcall(game.GetService, game, p)
		if u and s then
			local u = K(s)
			rawset(n, p, u)
			return u
		end
		return nil
	end
})
local U = K(game:GetService("Workspace"))
local P = K(game:GetService("ReplicatedStorage"))
local R = K(game:GetService("CollectionService"))
local T = K(game:GetService("RunService"))
local x = K(game:GetService("Lighting"))
local e = K(game:GetService("VirtualInputManager"))
local y = K(game:GetService("HttpService"))
local z = K(game:GetService("UserInputService"))
local w = K(game:GetService("LogService"))
local o = K(game:GetService("ScriptContext"))
local G = K(game:GetService("StarterGui"))
local r = K(game:GetService("Stats"))
local B = K(game:GetService("TeleportService"))
local l = K(game:GetService("GuiService"))
local i = K(game:GetService("VirtualUser"))
local k = K(game:GetService("TweenService"))
local d = {}
local j = {}
local t = {}
local C = {}
local h = {}
local q = {}
local g = p.Character or p.CharacterAdded:Wait()
local N = g:WaitForChild("Humanoid", 10)
local v = g:WaitForChild("HumanoidRootPart", 10)
local m = p:WaitForChild("Data")
local V = m:WaitForChild("Level")
local J = m:WaitForChild("Fragments")
local Z = m:WaitForChild("Beli")
a = {
	LocalPlayer = p,
	Character = g;
	Humanoid = N,
	HumanoidRootPart = v,
	Data = m,
	Level = V,
	Fragments = J;
	Beli = Z;
	Money = Z
}
local function E(K)
	if not K then
		return
	end
	g = K
	N = K:WaitForChild("Humanoid", 10)
	v = K:WaitForChild("HumanoidRootPart", 10)
	a.Character = K
	a.Humanoid = N
	a.HumanoidRootPart = v
end
p.CharacterAdded:Connect(E)
local M = U:WaitForChild("Enemies")
local W = U:WaitForChild("SeaBeasts")
local b = U:WaitForChild("Boats")
local I = U:WaitForChild("Map")
local f = U:WaitForChild("_WorldOrigin")
local Y = U:GetAttribute("MAP")
local KU = (Y == "Sea1")
local nU = (Y == "Sea2")
local pU = (Y == "Sea3")
D = {
	Workspace = U;
	Enemies = M;
	SeaBeasts = W,
	Boats = b,
	Map = I,
	WorldOrigin = f,
	MAPA = Y,
	Sea_1 = KU,
	Sea_2 = nU,
	Sea_3 = pU
}
local uU = P:WaitForChild("Remotes")
local sU = uU:WaitForChild("CommF_")
local cU = P.Remotes["CommE"]
local XU = P:WaitForChild("Modules")
local AU = XU:WaitForChild("Net")
local aU = require(P:WaitForChild("GuideModule"))
local DU = require(P.Util["GetWaterHeightAtLocation"])
local QU = require(P.DangerDistance)
local SU = require(game.ReplicatedStorage["Modules"].Net)
local FU = require(game.ReplicatedStorage["ItemConfig"])
local HU = require((game:GetService("ReplicatedStorage")).NPCManager)
function DetectNpc(K)
	local n = u.Character and u.Character:FindFirstChild("HumanoidRootPart")
	if not n then
		return
	end
	local p, s = math.huge, nil
	for u, c in next, {
		U.NPCs;
		P.NPCs
	} do
		for u, c in next, c:GetChildren() do
			if c:GetAttribute("NPCLoaded") and (c:GetAttribute("NPCReady") and (c.Name == K and c:FindFirstChild("HumanoidRootPart"))) then
				local K = ((n.Position - c.HumanoidRootPart["Position"])).Magnitude
				if K < p then
					p, s = K, c
				end
			end
		end
	end
	if not s then
		local n, p = pcall(function()
			return (HU.getNPCsByName(K))[1]._modelState["_instance"]
		end)
		if n and p then
			s = p
		end
	end
	return s, p
end
local OU = "https://api.quantumonyx.cc"
local LU = "secretkey-wqe231weqweqweqweqweqwe"
local UU = "kQ9mZ2xW7nR4vB1jY6tF3hD8pL5cG0sA"
local PU = "QnTmOnyX"
local function RU(K, n)
	local p = PU:byte(((n - 1)) % # PU + 1)
	return (((K - p) - n)) % 32
end
local function TU(K)
	local n = (K:gsub("^%.", "")):gsub("%.$", "")
	local p = {}
	local u = 0
	for K = 1, # n, 1 do
		u = u + 1
		if u % 5 ~= 0 then
			table.insert(p, n:sub(K, K))
		end
	end
	local s = table.concat(p)
	local c = {}
	local X = 1
	local A = 1
	while X <= # s do
		local K = s:sub(X, X)
		local n = s:sub(X + 1, X + 1)
		local p = UU:find(K, 1, true) - 1
		local u = UU:find(n, 1, true) - 1
		local a = RU(p, A) + RU(u, A + 100) * 32
		table.insert(c, string.char(a))
		X = X + 2
		A = A + 1
	end
	return table.concat(c)
end
local xU = "https://raw.githubusercontent.com/lguy8068-lang/Quantum-Onyx-Fixed/"
local eU = xU
local yU = {}
local zU = {}
local function wU(K, n)
	if not K then
		return nil
	end
	if zU[K] then
		return zU[K]
	end
	for n = 1, (n or 2), 1 do
		local p, u = pcall(function()
			return (loadstring(game:HttpGet(xU .. K)))()
		end)
		if p and u ~= nil then
			zU[K] = u
			return u
		end
		task.wait(.3)
	end
	return nil
end
local oU = wU("refs/heads/main/Data.lua") or {}
local GU = wU("Util/BloxFruitModule/Preload/Visuals.lua") or {}
local rU = wU("dev/niulai.lua")
local BU = oU.MaterialEnemies
local lU = oU.QUESTS
local iU = oU.BossList
local kU = oU.ItemsToBuy
local dU = oU.Islands
local jU = {
	["Black Leg"] = {
		Npc = "Dark Step Teacher";
		Remote = {
			"BuyBlackLeg"
		}
	},
	Electro = {
		Npc = "Mad Scientist";
		Remote = {
			"BuyElectro"
		}
	};
	["Fishman Karate"] = {
		Npc = "Water Kung-fu Teacher";
		Remote = {
			"BuyFishmanKarate"
		}
	},
	["Dragon Claw"] = {
		Npc = "Sabi";
		Remote = {
			{
				"BlackbeardReward",
				"DragonClaw",
				"1"
			};
			{
				"BlackbeardReward",
				"DragonClaw",
				"2"
			}
		}
	},
	Superhuman = {
		Npc = "Martial Arts Master",
		Remote = {
			"BuySuperhuman"
		}
	},
	["Death Step"] = {
		Npc = "Phoeyu, the Reformed";
		Remote = {
			"BuyDeathStep"
		}
	};
	["Sharkman Karate"] = {
		Npc = "Sharkman Teacher",
		Remote = {
			"BuySharkmanKarate"
		}
	};
	["Electric Claw"] = {
		Npc = "Previous Hero";
		Remote = {
			"BuyElectricClaw"
		}
	},
	["Dragon Talon"] = {
		Npc = "Uzoth";
		Remote = {
			"BuyDragonTalon"
		}
	};
	Godhuman = {
		Npc = "Ancient Monk",
		Remote = {
			"BuyGodhuman"
		}
	};
	["Sanguine Art"] = {
		Npc = "Shafi";
		Remote = {
			{
				"BuySanguineArt",
				true
			},
			{
				"BuySanguineArt"
			}
		}
	}
}
local tU = oU.SwordData
function yU.FireInvoke(K, ...)
	return sU:InvokeServer(...)
end
local CU = {
	CurrentDracoStage = 1;
	DracoSequence = oU.DracoSequence or {
		"Relic1";
		"EndRelic1",
		"Relic2",
		"EndRelic2";
		"Relic3",
		"EndRelic3"
	};
	SwordList = oU.SwordList or {
		"Shizu";
		"Saishi";
		"Oroshi"
	},
	ActiveSword = nil,
	JoinTime = os.time(),
	CamLockConn = nil;
	BlueMoonState = "FIND_ISLAND"
}
function yU.IsReady(n, K)
	if not K or not K.Parent or not K:IsDescendantOf(U) then
		return false
	end
	if K:FindFirstChild("Ignored") then
		return false
	end
	if K.Parent == b or K:GetAttribute("IsBoat") or K.Name:find("Brigade") or K.Name:find("Boat") or K.Name:find("Ship") then
		local n = K:FindFirstChild("Health")
		if n and (((n:IsA("ValueBase") and n.Value <= 0) or (type(n.Value) == "number" and n.Value <= 0))) then
			return false
		end
		local p = K:FindFirstChildOfClass("Humanoid") or K:FindFirstChild("Humanoid")
		if p and (((p:IsA("Humanoid") and p.Health <= 0) or (p:IsA("ValueBase") and p.Value <= 0))) then
			return false
		end
		if K:GetAttribute("Dead") == true or K:GetAttribute("Sunk") == true then
			return false
		end
		local u = K:FindFirstChild("Engine") or K.PrimaryPart or K:FindFirstChildWhichIsA("BasePart")
		if not u or u.Position["Y"] < - 15 then
			return false
		end
		return true
	end
	if K.Parent == W then
		local n = K:FindFirstChild("Health")
		return n and n.Value > 0
	end
	local p = K:FindFirstChildOfClass("Humanoid")
	local u = K:FindFirstChild("HumanoidRootPart") or K.PrimaryPart
	if p and (p.Health > 0 and u) then
		return true
	end
	return false
end
local function hU()
	if not g then
		return 0
	end
	local K = (g:GetPivot()).Position
	return QU(K)
end
S = {
	StartTime = tick();
	StartLevel = (V and V.Value) or 0,
	StartBeli = (Z and Z.Value) or 0,
	StartFragments = (J and J.Value) or 0;
	LastDataLogTick = 0,
	LastErrorTick = {},
	ErrorLogs = {};
	FarmsCompleted = 0;
	ChestsCollected = 0,
	MobsKilled = 0;
	BossesKilled = 0;
	LevelGained = 0;
	BeliGained = 0,
	FragmentsGained = 0,
	ActiveFarm = "None"
}
F = {
	CleanMemory = function()
		pcall(function()
			if collectgarbage then
				collectgarbage("step", 200)
			end
			Q.Clean()
		end)
	end;
	ClearDebris = function()
		pcall(function()
			for K, n in next, U:GetChildren() do
				if n:IsA("Tool") and ((not n.Parent or not n.Parent:FindFirstChildOfClass("Humanoid"))) then
					n:Destroy()
				elseif n.Name == "Debris" or n.Name == "Effect" or n.Name == "Effects" then
					n:ClearAllChildren()
				elseif n:IsA("BasePart") and ((n.Name:find("Slash") or n.Name:find("HitEffect") or n.Name:find("Particle") or n.Name:find("Explosion"))) then
					n:Destroy()
				end
			end
			if U:FindFirstChild("Characters") then
				for K, n in next, U.Characters:GetChildren() do
					local p = n:FindFirstChildOfClass("Humanoid")
					if p and (p.Health <= 0 and n ~= u.Character) then
						n:Destroy()
					end
				end
			end
		end)
	end,
	ClearNew = function(K)
		if K then
			table.clear(K)
			return K
		end
		return {}
	end;
	CreateDictionary = function(K, n)
		local p = {}
		local u = (n ~= nil) and n or true
		if K then
			for n = 1, # K, 1 do
				p[K[n]] = u
			end
		end
		return p
	end;
	CreateAutoCache = function(K)
		local n = {}
		setmetatable(n, {
			__index = function(n, p)
				if p == nil then
					return nil
				end
				local u = K(p)
				rawset(n, p, u)
				return u
			end
		})
		return n
	end;
	FastMode = false;
	SetFastMode = function(K)
		if K == nil then
			K = true
		end
		F.FastMode = K
		task.spawn(function()
			pcall(function()
				local n = u and u:FindFirstChild("PlayerGui")
				local p = n.Main["SettingsMenu"].Content["ScrollingFrame"]:FindFirstChild("FastMode")
				if p and firesignal then
					local n = K and p:FindFirstChild("FirstButton") or p:FindFirstChild("SecondButton")
					if n and n:IsA("GuiButton") then
						firesignal(n.Activated)
					end
				end
			end)
		end)
		return F.FastMode
	end
}
local qU = F.ClearNew
local gU = F.CreateDictionary
local NU = F.CreateAutoCache
O = {
	Phase = 1,
	PhaseStart = tick(),
	LastHop = tick();
	LastRejoin = tick(),
	LastFruitRoll = 0,
	_IsHopping = false,
	_CancelHop = false;
	StopHop = function()
		O._CancelHop = true
		O._IsHopping = false
		if j then
			for K in pairs(j) do
				j[K] = false
			end
		end
		local K = {
			"AutoAfkJoinCastleRaid";
			"AutoAfkJoinFactoryRaid",
			"AutoAfkJoinBossRaid",
			"AutoAfkJoinEliteHunter",
			"AutoAfkJoinFruit"
		}
		for K, n in ipairs(K) do
			if X then
				X[n] = false
			end
			if yU and (yU.Toggles and (yU.Toggles[n] and yU.Toggles[n].Update)) then
				pcall(function()
					yU.Toggles[n].Update(false)
				end)
			end
		end
		if yU and yU.SendNotify then
			yU:SendNotify("AFK Farm", "AFK farm & server hop stopped.", 3)
		end
	end,
	ServerHop = function(K, n)
		O._CancelHop = false
		task.spawn(function()
			O._IsHopping = true
			local n = K or (X and tonumber(X.HopDelay)) or 0
			local p = {
				{
					Text = "Stop Hop";
					Callback = function()
						O.StopHop()
					end
				}
			}
			if n > 0 then
				if yU and yU.SendNotify then
					yU:SendNotify("Server Hop", string.format("Hopping server in %d seconds...", math.floor(n)), math.min(math.floor(n), 5), p)
				end
				local K = .2
				local u = 0
				while u < n do
					if O._CancelHop then
						O._IsHopping = false
						return
					end
					task.wait(K)
					u = u + K
				end
			end
			if O._CancelHop then
				O._IsHopping = false
				return
			end
			local u = game.JobId
			local s = false
			for K = 1, 100, 1 do
				if O._CancelHop then
					break
				end
				task.spawn(function()
					if s or O._CancelHop then
						return
					end
					local n, p = pcall(function()
						return P.__ServerBrowser:InvokeServer(K)
					end)
					if n and type(p) == "table" then
						for K, n in pairs(p) do
							if not s and (not O._CancelHop and (type(n) == "table" and (n.Count and (n.Count < 12 and K ~= game.JobId)))) then
								s = true
								if yU and yU.SendNotify then
									yU:SendNotify("Hopping", "Server found! Teleporting...", 5, nil, "ServerHop")
								end
								pcall(function()
									if not O._CancelHop then
										P.__ServerBrowser:InvokeServer("teleport", K)
									end
								end)
							end
						end
					end
				end)
			end
			O._IsHopping = false
		end)
	end;
	Rejoin = function()
		if yU and yU.SendNotify then
			yU:SendNotify("Rejoin", "Rejoining current server...", 3)
		end
		pcall(function()
			P.__ServerBrowser:InvokeServer("teleport", game.JobId)
		end)
	end
}
L = O.StopHop
yU.StopAfkFarm = O.StopHop
local function vU(K, n)
	pcall(function()
		l:ClearError()
	end)
	if j[K] then
		if yU and yU.SendNotify then
			yU:SendNotify("Quantum API", ("Already searching servers for ") .. (tostring(K) .. "..."), 2)
		end
		return
	end
	local p = {
		{
			Text = "Stop Hop";
			Callback = function()
				O.StopHop()
			end
		}
	}
	local u = ("/api/logs/") .. (tostring(K)):lower()
	local s = os.clock()
	local X = d[K] or 0
	if n and (s - X < n) then
		local p = math.ceil(n - ((s - X)))
		if yU and yU.SendNotify then
			yU:SendNotify("Cooldown", string.format("Wait %ds before next %s", p, K), 2)
		end
		return
	end
	O._CancelHop = false
	O._IsJoiningActive = true
	j[K] = true
	d[K] = s
	task.spawn(function()
		local n, s = pcall(function()
			return c({
				Url = OU .. u,
				Method = "GET";
				Headers = {
					["Content-Type"] = "application/json"
				}
			})
		end)
		if not n or not s or s.StatusCode ~= 200 then
			j[K] = false
			O._IsJoiningActive = false
			if yU and yU.SendNotify then
				yU:SendNotify("Error", ("Failed to fetch ") .. (K .. " data"), 3)
			end
			return
		end
		if O._CancelHop then
			j[K] = false
			O._IsJoiningActive = false
			return
		end
		local X = y:JSONDecode(s.Body)
		local A = X[(tostring(K)):lower()]
		if not A or # A == 0 then
			j[K] = false
			O._IsJoiningActive = false
			if O._CancelHop then
				return
			end
			if yU and yU.SendNotify then
				yU:SendNotify("Hopping Server", "No recent report found, hopping server...", 3, p, "ServerHop")
			end
			O.ServerHop(0, true)
			return
		end
		local a = {}
		for K = # A, 1, - 1 do
			local n = A[K]
			if n.jobId and n.jobId ~= "" then
				local K = TU(n.jobId)
				if K and (K ~= "" and K ~= game.JobId) then
					if not n.placeId or tostring(n.placeId) == tostring(game.PlaceId) then
						if not table.find(a, K) then
							table.insert(a, K)
						end
					end
				end
			end
		end
		if # a == 0 then
			j[K] = false
			O._IsJoiningActive = false
			if O._CancelHop then
				return
			end
			if yU and yU.SendNotify then
				yU:SendNotify("Hopping Server", "No active server found, hopping server...", 3, p, "ServerHop")
			end
			O.ServerHop(0, true)
			return
		end
		local D = game.JobId
		for K, n in ipairs(a) do
			if game.JobId ~= D or O._CancelHop then
				break
			end
			pcall(function()
				l:ClearError()
			end)
			if yU and yU.SendNotify then
				local n = K == 1 and string.format("Connecting to server (%d/%d)...", K, # a) or string.format("Server full!\nRetrying with server (%d/%d)...", K, # a)
				yU:SendNotify("Hopping Server", n, 30, p, "ServerHop")
			end
			local u = false
			local s = false
			local c = coroutine.running()
			local X
			X = B.TeleportInitFailed:Connect(function(K, n, p)
				u = true
				pcall(function()
					l:ClearError()
				end)
				if not s then
					s = true
					task.spawn(c)
				end
			end)
			task.spawn(function()
				pcall(function()
					if not O._CancelHop then
						P.__ServerBrowser:InvokeServer("teleport", n)
					end
				end)
			end)
			task.delay(6, function()
				if not s then
					s = true
					task.spawn(c)
				end
			end)
			coroutine.yield()
			pcall(function()
				X:Disconnect()
			end)
			pcall(function()
				l:ClearError()
			end)
			if game.JobId ~= D or O._CancelHop then
				break
			end
			if u then
				task.wait(.8)
			end
		end
		j[K] = false
		O._IsJoiningActive = false
		if game.JobId == D and not O._CancelHop then
			if yU and yU.SendNotify then
				yU:SendNotify("Hopping Server", "All candidate servers were full. Hopping to random server...", 5, p, "ServerHop")
			end
			O.ServerHop(0, true)
		end
	end)
end
yU.JoinAPI = vU
function yU.JoinAPI(p, K, n)
	return vU(K, n)
end
yU.TweenManager = ((function()
	local K = 0
	local n = false
	local p = false
	local s = nil
	local c = nil
	local A = {
		Sea_1 = {
			Inside = Vector3.new(61170.05, - 2, 1952.83);
			Outside = Vector3.new(4050.31, - 1.69, - 1814.12)
		},
		Sea_2 = {
			Inside = Vector3.new(920.48, 154.9, 32838.96);
			Outside = Vector3.new(- 6496.9, 89.04, - 116.51)
		},
		Sea_3 = {
			Inside = Vector3.new(11426, - 2155, 9732);
			Outside = Vector3.new(- 16224, 9, 439)
		}
	}
	local a = {
		Sea1 = {
			{
				{
					Vector3.new(4050.31, - 1.69, - 1814.12),
					Vector3.new(61163.85, 11.68, 1819.78)
				},
				Req = "None"
			};
			{
				{
					Vector3.new(61170.05, - 2, 1952.83);
					Vector3.new(3864.69, 6.74, - 1926.21)
				},
				Req = "None"
			}
		};
		Sea2 = {
			{
				{
					Vector3.new(- 6496.9, 89, - 116.5),
					Vector3.new(923.2, 127, 32852.8)
				},
				Req = "GhostShip"
			},
			{
				{
					Vector3.new(920.5, 154.9, 32838.9),
					Vector3.new(- 6508.6, 89, - 132.8)
				},
				Req = "None"
			},
			{
				{
					Vector3.new(- 287, 306.1, 592.9),
					Vector3.new(2284.9, 15.5, 902.5)
				},
				Req = "Flamingo"
			},
			{
				{
					Vector3.new(2284.9, 15.5, 910.5);
					Vector3.new(- 287, 306.1, 600.9)
				};
				Req = "None"
			},
			{
				{
					Vector3.new(2284.9, 15.5, 910.5);
					Vector3.new(- 287, 306.1, 600.9)
				};
				{
					Vector3.new(- 6496.9, 89, - 116.5);
					Vector3.new(923.2, 127, 32852.8)
				},
				Req = "GhostShip"
			},
			{
				{
					Vector3.new(920.5, 154.9, 32838.9),
					Vector3.new(- 6508.6, 89, - 132.8)
				};
				{
					Vector3.new(- 287, 306.1, 592.9);
					Vector3.new(2284.9, 15.5, 902.5)
				},
				Req = "Flamingo"
			}
		};
		Sea3 = {
			{
				{
					Vector3.new(- 5060.4, 318.5, - 3193.2);
					Vector3.new(- 12463.6, 378.3, - 7566.1)
				}
			};
			{
				{
					Vector3.new(- 5027, 318.5, - 3206.7),
					Vector3.new(5650.9, 1017.3, - 350.4)
				}
			};
			{
				{
					Vector3.new(- 5097.1, 318.5, - 3178.4);
					Vector3.new(- 16799.1, 84.3, 291.1)
				}
			};
			{
				{
					Vector3.new(- 12463.6, 378.3, - 7566.1);
					Vector3.new(- 5060.4, 318.5, - 3193.2)
				}
			},
			{
				{
					Vector3.new(5650.9, 1017.3, - 350.4);
					Vector3.new(- 5027, 318.5, - 3206.7)
				}
			},
			{
				{
					Vector3.new(- 16799.1, 84.3, 291.1);
					Vector3.new(- 5097.1, 318.5, - 3178.4)
				}
			};
			{
				{
					Vector3.new(- 12463.6, 378.3, - 7566.1);
					Vector3.new(- 5060.4, 318.5, - 3193.2)
				};
				{
					Vector3.new(- 5027, 318.5, - 3206.7);
					Vector3.new(5650.9, 1017.3, - 350.4)
				}
			};
			{
				{
					Vector3.new(- 12463.6, 378.3, - 7566.1);
					Vector3.new(- 5060.4, 318.5, - 3193.2)
				};
				{
					Vector3.new(- 5097.1, 318.5, - 3178.4);
					Vector3.new(- 16799.1, 84.3, 291.1)
				}
			},
			{
				{
					Vector3.new(5650.9, 1017.3, - 350.4);
					Vector3.new(- 5027, 318.5, - 3206.7)
				},
				{
					Vector3.new(- 5060.4, 318.5, - 3193.2);
					Vector3.new(- 12463.6, 378.3, - 7566.1)
				}
			};
			{
				{
					Vector3.new(5650.9, 1017.3, - 350.4),
					Vector3.new(- 5027, 318.5, - 3206.7)
				},
				{
					Vector3.new(- 5097.1, 318.5, - 3178.4),
					Vector3.new(- 16799.1, 84.3, 291.1)
				}
			},
			{
				{
					Vector3.new(- 16799.1, 84.3, 291.1);
					Vector3.new(- 5097.1, 318.5, - 3178.4)
				},
				{
					Vector3.new(- 5060.4, 318.5, - 3193.2);
					Vector3.new(- 12463.6, 378.3, - 7566.1)
				}
			};
			{
				{
					Vector3.new(- 16799.1, 84.3, 291.1),
					Vector3.new(- 5097.1, 318.5, - 3178.4)
				};
				{
					Vector3.new(- 5027, 318.5, - 3206.7);
					Vector3.new(5650.9, 1017.3, - 350.4)
				}
			}
		}
	}
	local D = nil
	local Q = nil
	local S = 0
	local F = 8
	local function H(K)
		if not K then
			return
		end
		g = K
		N = K:WaitForChild("Humanoid", 10)
		v = K:WaitForChild("HumanoidRootPart", 10)
	end
	u.CharacterAdded:Connect(H)
	if u.Character then
		H(u.Character)
	end
	local function O()
		return v and (v.Parent and (N and (N.Parent and N.Health > 0)))
	end
	local function L()
		if not u.Character then
			return
		end
		for K, n in ipairs(u.Character:GetDescendants()) do
			if n:IsA("BasePart") and n.CanCollide then
				n.CanCollide = false
			end
		end
	end
	local function x()
		if not v or v:FindFirstChild("PartVelocuty") then
			return
		end
		if s then
			pcall(function()
				s:Destroy()
			end)
		end
		s = Instance.new("BodyVelocity")
		s.Name = "PartVelocuty"
		s.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		s.Velocity = Vector3.zero
		s.P = 1000
		s.Parent = v
	end
	local function e(K)
		local n = typeof(K) == "Vector3" and K or (K and K.Position)
		if not n then
			return {
				Name = ""
			}
		end
		for K, p in next, U._WorldOrigin["Locations"]:GetChildren() do
			local u = p:FindFirstChild("Mesh") and p.Mesh["Scale"].X or (p:IsA("BasePart") and p.Size["X"]) or 0
			if u > 0 and ((n - p.Position)).Magnitude <= u then
				return p
			end
		end
		return {
			Name = ""
		}
	end
	local function y(K)
		local n = typeof(K) == "Vector3" and K or (K and K.Position)
		if not n then
			return false
		end
		local p = (e(n)).Name:lower()
		return p:find("under") or p:find("submerged") or p:find("sealed cavern") or p:find("dimension") or n.X > 50000 or n.Z > 25000 or n.Y < - 500
	end
	local function z()
		if KU then
			return A.Sea_1
		elseif nU then
			return A.Sea_2
		elseif pU then
			return A.Sea_3
		end
		local K = (u:FindFirstChild("Data") and (u.Data:FindFirstChild("Level") and u.Data["Level"].Value)) or 1
		return K >= 1500 and A.Sea_3 or K >= 700 and A.Sea_2 or A.Sea_1
	end
	local function w(K)
		if typeof(K) == "Vector3" then
			return CFrame.new(K)
		elseif typeof(K) == "CFrame" then
			return K
		elseif typeof(K) == "Instance" then
			if K:IsA("BasePart") then
				return K.CFrame
			elseif K:IsA("Model") then
				return K.PrimaryPart and K.PrimaryPart["CFrame"] or K:GetPivot()
			end
		end
	end
	local function o(K, p, s)
		local A = K.Position
		local a = v.Position
		local D = ((A - a)).Magnitude
		if D <= 8 then
			return true
		end
		x()
		local Q = 0
		local S = os.clock()
		local F = nil
		local H, P = nil, nil
		while O() and (not n and ((not s or s()))) do
			if R:HasTag(u, "Teleporting") or (N and N.PlatformStand) then
				break
			end
			if N and (N.Sit and not ((N.SeatPart and N.SeatPart:IsDescendantOf(U.Boats)))) then
				N.Sit = false
				N:ChangeState(Enum.HumanoidStateType["Jumping"])
			end
			local n = ((X.TweenMode or X.TweenOption)) == "TweenService" and "TweenService" or "Lerp"
			local s = math.clamp(((tonumber(X.TweenSpeed) or 350)) * ((p or 1)), .1, 600)
			local O = os.clock()
			local T = math.min(O - S, .05)
			S = O
			local x = ((A - v.Position)).Magnitude
			if x <= 6 then
				v.CFrame = K
				v.AssemblyLinearVelocity = Vector3.zero
				if F then
					pcall(function()
						F:Cancel()
					end)
				end
				return true
			end
			if n == "TweenService" then
				if H ~= "TweenService" or P ~= s or not F then
					if F then
						pcall(function()
							F:Cancel()
						end)
					end
					local n = TweenInfo.new(x / s, Enum.EasingStyle["Linear"])
					F = k:Create(v, n, {
						CFrame = K
					})
					c = F
					F:Play()
					P, H = s, "TweenService"
				end
			else
				if H == "TweenService" and F then
					pcall(function()
						F:Cancel()
					end)
					F = nil
					c = nil
					a = v.Position
					D = ((A - a)).Magnitude
					Q = 0
				end
				H = "Lerp"
				Q = Q + math.min(s * T, math.min(s / 30, 18))
				local n = D > 0 and math.clamp(Q / D, 0, 1) or 1
				v.CFrame = CFrame.new(a:Lerp(A, n)) * ((K - A))
				if Q >= D then
					v.CFrame = K
					v.AssemblyLinearVelocity = Vector3.zero
					return true
				end
			end
			v.AssemblyLinearVelocity = Vector3.zero
			L()
			task.wait()
		end
		if F then
			pcall(function()
				F:Cancel()
			end)
			if c == F then
				c = nil
			end
		end
		return false
	end
	local function G(n, u)
		if not O() or not v then
			return
		end
		K = K + 1
		p = false
		if c then
			pcall(function()
				c:Cancel()
			end)
			c = nil
		end
		o(typeof(n) == "Vector3" and CFrame.new(n) or n, u)
	end
	local function r(K, n, p, s)
		local c = tick()
		repeat
			if s then
				if u.Character and u.Character:FindFirstChild("Busy") then
					u.Character["Busy"].Value = false
				end
				pcall(function()
					R:RemoveTag(u, "Teleporting")
				end)
				if N and (N.Sit and not ((N.SeatPart and N.SeatPart:IsDescendantOf(U.Boats)))) then
					N.Sit = false
				end
			else
				if R:HasTag(u, "Teleporting") or (N and N.PlatformStand) then
					local n = tick()
					while O() and (v and (((R:HasTag(u, "Teleporting") or (N and N.PlatformStand))) and tick() - n < 6)) do
						if ((v.Position - K)).Magnitude < 150 then
							break
						end
						task.wait(.1)
					end
					task.wait(.5)
					break
				end
				if u.Character and u.Character:FindFirstChild("Busy") then
					u.Character["Busy"].Value = false
				end
			end
			task.wait(.25)
		until not O() or not v or ((v.Position - K)).Magnitude < 150 or (n and ((v.Position - n)).Magnitude > 500) or tick() - c > ((p or 6))
	end
	local function B(K, p, u)
		for K, p in ipairs(K) do
			if not O() or not v or n then
				return false
			end
			local s, c = p[1], p[2]
			G(CFrame.new(s), 1)
			if not O() or not v or n then
				return false
			end
			r(c, s, u and 4 or 6, u)
			if not v or ((v.Position - s)).Magnitude <= 500 then
				return false
			end
			S = tick()
			task.wait(.2)
		end
		return true
	end
	local function l(K, n, p, u)
		local s = ((p - n)).Magnitude
		local c, X = nil, s
		for K, u in ipairs(K) do
			local s = ((u[1][1] - n)).Magnitude
			for K = 1, # u - 1, 1 do
				s = s + ((u[K + 1][1] - u[K][2])).Magnitude
			end
			s = s + ((p - u[# u][2])).Magnitude
			if s < X then
				X = s
				c = u
			end
		end
		return ((c and (s - X) > ((u or 2500)))) and c or nil
	end
	local function i(K)
		if not O() or not v then
			return
		end
		local p = typeof(K) == "Vector3" and K or K.Position
		if not p then
			return
		end
		if not ((KU or nU or pU)) then
			local K = (u:FindFirstChild("Data") and (u.Data:FindFirstChild("Level") and u.Data["Level"].Value)) or 1
			if K >= 1500 then
				pU = true
			elseif K >= 700 then
				nU = true
			else
				KU = true
			end
		end
		if KU then
			local K = v.Position
			local u = K.X > 50000 or (e(K)).Name == "Underwater City"
			local s = p.X > 50000 or (e(p)).Name == "Underwater City"
			if u ~= s and tick() - S >= F then
				local K = u and Vector3.new(61170.05, - 2, 1952.83) or Vector3.new(4050.31, - 1.69, - 1814.12)
				local p = u and Vector3.new(3864.69, 6.74, - 1926.21) or Vector3.new(61163.85, 11.68, 1819.78)
				G(CFrame.new(K), 1)
				if not O() or not v or n then
					return
				end
				r(p, K, 6, false)
				S = tick()
				task.wait(.2)
			end
			if not O() or not v or n then
				return
			end
			local c = l(a.Sea1, v.Position, p)
			if c and tick() - S >= F then
				B(c, nil, false)
			end
			return
		end
		if nU then
			local K = (u:FindFirstChild("Data") and (u.Data:FindFirstChild("Level") and u.Data["Level"].Value)) or 0
			if Q == nil then
				pcall(function()
					local K = sU:InvokeServer("GetUnlockables")
					Q = typeof(K) == "table" and K.FlamingoAccess == true
				end)
			end
			local function s()
				return v.Position
			end
			local c = Vector3.new(2284.9, 15.5, 905.5)
			local X = (s()).Z > 25000 or (e(s())).Name == "Cursed Ship"
			local A = p.Z > 25000 or (e(p)).Name == "Cursed Ship"
			local D = ((s() - c)).Magnitude <= 260
			local H = ((p - c)).Magnitude <= 260
			local L = {
				{
					cond = X and not A,
					entry = Vector3.new(920.48, 154.9, 32838.96);
					exit = Vector3.new(- 6508.56, 89.04, - 132.84)
				},
				{
					cond = D and not H,
					entry = Vector3.new(2284.91, 15.54, 910.48);
					exit = Vector3.new(- 286.99, 306.14, 600.88)
				},
				{
					cond = not X and (A and K >= 1000);
					entry = Vector3.new(- 6496.9, 89.04, - 116.51);
					exit = Vector3.new(923.21, 126.98, 32852.83)
				};
				{
					cond = not D and (H and Q),
					entry = Vector3.new(- 286.99, 306.14, 592.88),
					exit = Vector3.new(2284.91, 15.54, 902.48)
				}
			}
			for K, p in ipairs(L) do
				if p.cond and tick() - S >= F then
					G(CFrame.new(p.entry), 1)
					if not O() or not v or n then
						return
					end
					r(p.exit, p.entry, 4, true)
					S = tick()
					task.wait(.2)
				end
				if not O() or not v or n then
					return
				end
			end
			local U = {}
			for n, p in ipairs(a.Sea2) do
				local u = ((p.Req ~= "GhostShip" or K >= 1000)) and ((p.Req ~= "Flamingo" or Q))
				if u then
					U[# U + 1] = p
				end
			end
			local P = l(U, v.Position, p)
			if P and tick() - S >= F then
				B(P, nil, true)
			end
			return
		end
		if (e(v)).Name:find("Submerged") and not (e(p)).Name:find("Submerged") then
			local K = P:FindFirstChild("Modules") and (P.Modules:FindFirstChild("Net") and P.Modules["Net"]:FindFirstChild("RF/SubmarineTransportation"))
			if K then
				local p = tick()
				repeat
					if not O() or not v or n then
						break
					end
					G(CFrame.new(11426, - 2155, 9732), 1)
					pcall(function()
						K:InvokeServer("InitiateTeleport", "Tiki Outpost")
					end)
					task.wait(.5)
				until not (e(v)).Name:find("Submerged") or not O() or tick() - p > 8
				task.wait(.3)
			end
		end
		if not O() or not v or n then
			return
		end
		local s = v.Position
		local c = s.Y > 10000 and s.X > 20000
		local X = p.Y > 10000 and p.X > 20000
		if c and not X then
			G(CFrame.new(28603, 14897, 103), 1)
			task.wait(.2)
			pcall(function()
				sU:InvokeServer("RaceV4Progress", "TeleportBack")
			end)
			local K = tick()
			repeat
				task.wait(.2)
			until not O() or not v or v.Position["Y"] < 10000 or tick() - K > 6
			task.wait(.3)
		end
		if not O() or not v or n then
			return
		end
		s = v.Position
		c = s.Y > 10000 and s.X > 20000
		if not c then
			local K = X and Vector3.new(3031, 2281, - 7326) or p
			if D == nil then
				pcall(function()
					local K = sU:InvokeServer("GetUnlockables")
					D = typeof(K) == "table" and K.DefeatedIndraTrueForm == true
				end)
			end
			if D ~= false then
				local n = l(a.Sea3, s, K)
				if n and tick() - S >= F then
					B(n, nil, true)
				end
			end
		end
		if not O() or not v or n then
			return
		end
		s = v.Position
		c = s.Y > 10000 and s.X > 20000
		if not c and X then
			G(CFrame.new(3031, 2281, - 7326), 1)
			task.wait(.2)
			pcall(function()
				if P:FindFirstChild("MapStash") and P.MapStash:FindFirstChild("Temple of Time") then
					P.MapStash["Temple of Time"].Parent = U:FindFirstChild("Map")
				end
			end)
			pcall(function()
				sU:InvokeServer("RaceV4Progress", "Teleport")
			end)
			local K = tick()
			repeat
				task.wait(.2)
			until not O() or not v or v.Position["Y"] > 10000 or tick() - K > 6
			task.wait(.3)
		end
	end
	local function d(K)
		if not O() or not v then
			return
		end
		local n = typeof(K) == "Vector3" and K or K.Position
		local p = z()
		if not p then
			return
		end
		local u = y(v.Position)
		local s = y(n)
		if u == s then
			return
		end
		local c = u and p.Inside or p.Outside
		G(CFrame.new(c), 1)
		task.wait(.2)
		if v and ((v.Position - c)).Magnitude < 50 then
			v.CFrame = v.CFrame + Vector3.new(0, 10, 0)
		end
		task.wait(.2)
	end
	local j = {}
	local t = nil
	function j.StopTween(u)
		n = true
		K = K + 1
		p = false
		if c then
			pcall(function()
				c:Cancel()
			end)
			c = nil
		end
		if t then
			pcall(function()
				t:Disconnect()
			end)
			t = nil
		end
		if s then
			pcall(function()
				if s.Parent then
					s:Destroy()
				end
			end)
			s = nil
		end
		if v then
			for K, n in ipairs(v:GetChildren()) do
				if n:IsA("BodyVelocity") or n:IsA("BodyPosition") or n:IsA("BodyGyro") then
					pcall(function()
						n:Destroy()
					end)
				end
			end
			pcall(function()
				v.Anchored = false
				v.AssemblyLinearVelocity = Vector3.zero
				v.AssemblyAngularVelocity = Vector3.zero
			end)
		end
	end
	function j.topos(a, s, c, X, A)
		if p or not O() then
			return
		end
		if N and (N.Sit and not ((N.SeatPart and N.SeatPart:IsDescendantOf(U.Boats)))) then
			N.Sit = false
			N:ChangeState(Enum.HumanoidStateType["Jumping"])
		end
		local D = w(s)
		if not D then
			return
		end
		n = false
		i(D)
		if not O() then
			return
		end
		d(D)
		if not O() or n then
			a:StopTween()
			return
		end
		local Q = tick()
		while O() and (v and (((R:HasTag(u, "Teleporting") or (N and N.PlatformStand))) and tick() - Q < 6)) do
			task.wait(.1)
		end
		if not O() then
			return
		end
		K = K + 1
		p = true
		local S = K
		L()
		task.spawn(function()
			local u = T.PreSimulation:Connect(L)
			t = u
			o(D, A, function()
				return S == K
			end)
			pcall(function()
				u:Disconnect()
			end)
			if t == u then
				t = nil
			end
			if not n and c then
				x()
			elseif not X and v then
				local K = v:FindFirstChild("PartVelocuty")
				if K then
					K:Destroy()
				end
				pcall(function()
					v.AssemblyLinearVelocity = Vector3.zero
					v.AssemblyAngularVelocity = Vector3.zero
				end)
			end
			p = false
		end)
	end
	function GetAllBoats()
		local K = {
			"My Boat"
		}
		for n, p in next, U.Boats:GetChildren() do
			local s = p:FindFirstChild("Owner")
			if s and tostring(s.Value) ~= u.Name then
				K[# K + 1] = p.Name .. ((" [") .. (tostring(s.Value) .. "]"))
			end
		end
		return K
	end
	function IsBoatAlive(K)
		if not K or not K.Parent then
			return false
		end
		local n = K:FindFirstChild("Humanoid")
		if n then
			if n:IsA("ValueBase") and (tonumber(n.Value) and tonumber(n.Value) <= 0) then
				return false
			end
			if n:IsA("Humanoid") and n.Health <= 0 then
				return false
			end
		end
		local p = K:FindFirstChild("Health")
		if p and (p:IsA("ValueBase") and (tonumber(p.Value) and tonumber(p.Value) <= 0)) then
			return false
		end
		if K:GetAttribute("Dead") or K:GetAttribute("Sunk") then
			return false
		end
		return K:FindFirstChildWhichIsA("VehicleSeat", true) ~= nil
	end
	function GetSelectedBoat()
		local K = X.SailTargetBoat
		local n = u.Character and (u.Character:GetPivot()).Position
		local p, s, c = nil, math.huge, nil
		for X, A in next, U.Boats:GetChildren() do
			local a = A:FindFirstChild("Owner")
			if a then
				local X = ((not K or K == "My Boat")) and tostring(a.Value) == u.Name or (A.Name .. ((" [") .. (tostring(a.Value) .. "]"))) == K
				if X then
					c = c or A
					if IsBoatAlive(A) and n then
						local K = (((A:GetPivot()).Position - n)).Magnitude
						if K < s then
							s, p = K, A
						end
					elseif IsBoatAlive(A) then
						return A
					end
				end
			end
		end
		return p or c
	end
	function j.StopBoatTween(K)
		j.StopBoatFlag = true
		j.ActiveBoatTween = nil
	end
	function j.toposboat(n, K)
		if j.ActiveBoatTween then
			return
		end
		local p = GetSelectedBoat()
		local u = p and p:FindFirstChild("VehicleSeat")
		local s = typeof(K) == "Vector3" and CFrame.new(K) or K
		if not ((p and (u and (N and (N.Sit and s))))) then
			return
		end
		local c = tonumber(X.BoatPosY) or 31
		s = CFrame.new(s.X, c, s.Z)
		local A = CFrame.new(u.CFrame["X"], c, u.CFrame["Z"])
		local a = ((s.Position - A.Position)).Magnitude
		if a <= 25 then
			return
		end
		j.ActiveBoatTween = true
		j.StopBoatFlag = false
		local D = Instance.new("BodyVelocity")
		D.MaxForce = Vector3.new(1000000000, 1000000000, 1000000000)
		D.Velocity = Vector3.zero
		D.P = 1000000000
		D.Parent = u
		task.spawn(function()
			local K, n = 0, tick()
			while not j.StopBoatFlag and (N.Health > 0 and N.Sit) do
				local p = tick()
				local c = p - n
				n = p
				local Q = math.max(tonumber(X.SpeedBoat) or 250, .1)
				K = K + Q * c
				local S = math.clamp(K / a, 0, 1)
				local F = A:Lerp(s, S)
				local H = F.Position - u.CFrame["Position"]
				D.Velocity = H.Magnitude > .1 and H.Unit * Q or Vector3.zero
				u.CFrame = F
				if S >= 1 or ((s.Position - u.CFrame["Position"])).Magnitude <= 25 then
					u.CFrame = s
					break
				end
				task.wait()
			end
			D.Velocity = Vector3.zero
			D:Destroy()
			j.ActiveBoatTween = nil
			j.StopBoatFlag = false
		end)
	end
	return j
end))()
local mU = yU.TweenManager
local function VU(K)
	return not ((K.Team == u.Team and tostring(K.Team) == "Marines")) and not ((K:HasTag(("Ally") .. u.Name) or u:HasTag(("Ally") .. K.Name)))
end
yU.FastAttack = ((function()
	local K = {
		ValidTools = {
			Melee = true,
			Sword = true;
			Gun = true,
			["Blox Fruit"] = true
		};
		BodyParts = {
			"RightLowerArm";
			"RightUpperArm",
			"LeftLowerArm",
			"LeftUpperArm",
			"RightHand",
			"LeftHand"
		},
		LastCombo = 0;
		ComboTime = 0,
		GunDebounce = 0,
		MaxHits = 2,
		CurrentTarget = nil,
		Hits = {},
		GunIndices = nil;
		LastAttack = 0,
		ShootController = nil,
		UserId = (tostring(u.UserId or 0)):sub(2, 4),
		OverheatData = {
			Dragonstorm = {
				MaxOverheat = 3;
				Cooldown = 0,
				TotalOverheat = 0,
				Distance = 500,
				Shooting = false
			}
		},
		ShootsPerTarget = {
			["Dual Flintlock"] = 2
		};
		ShootStyles = {
			["Skull Guitar"] = "TAP",
			["Soul Guitar"] = "TAP";
			Bazooka = "Position",
			Cannon = "Position";
			Dragonstorm = "Overheat"
		},
		RemoteFruits = {
			["Blade-Blade"] = true;
			["Gas-Gas"] = true
		},
		NormalFruits = {
			["Light-Light"] = true,
			["Ice-Ice"] = true
		},
		CombatUtils = require(P.Modules["CombatUtil"]);
		CombatController = require(P.Controllers["CombatController"]),
		GunValidator = uU:WaitForChild("Validator2");
		RegisterAttack = AU:WaitForChild("RE/RegisterAttack");
		ShootGun = AU:FindFirstChild("RE/ShootGunEvent") or (require(P.Modules["Net"])):RemoteEvent("ShootGunEvent"),
		RegisterHit = (require(P.Modules["Net"])):RemoteEvent("RegisterHit", true)
	}
	local function p()
		local n = K.ShootController
		if not n then
			pcall(function()
				n = getupvalue(K.CombatController["Attack"], 9)
				K.ShootController = n
			end)
		end
		if not n then
			return 0, 0
		end
		if not K.GunIndices then
			local p = getupvalues(n)
			local u, s, c
			for K = 1, # p, 1 do
				local n = p[K]
				if n == 798405 then
					u = K
				elseif n == 727595 then
					s = K
				elseif n == 1099511627776 then
					c = K
				end
			end
			if u and (s and c) then
				K.GunIndices = {
					u - 1,
					u;
					u + 1;
					s,
					s + 1;
					c,
					c + 1
				}
			else
				K.GunIndices = {
					12,
					13,
					14,
					15,
					16;
					17;
					18
				}
			end
		end
		local p = K.GunIndices
		local u, s, c, X, A, a, D = getupvalue(n, p[1]), getupvalue(n, p[2]), getupvalue(n, p[3]), getupvalue(n, p[4]), getupvalue(n, p[5]), getupvalue(n, p[6]), getupvalue(n, p[7])
		if type(u) ~= "number" or type(s) ~= "number" or type(c) ~= "number" or type(X) ~= "number" or type(A) ~= "number" or type(a) ~= "number" then
			return 0, 0
		end
		local Q = u * s
		local S = (((((c * s + u * X)) % A) * A + Q)) % a
		local F = math.floor(S / A)
		local H = S - F * A
		local O = ((D or 0)) + 1
		setupvalue(n, p[1], H)
		setupvalue(n, p[3], F)
		setupvalue(n, p[7], O)
		return math.floor((S / a) * 16777215), O
	end
	local function s()
		if X.RemoveAnimationFast then
			return
		end
		pcall(function()
			local n = g and g:FindFirstChild("EquippedWeapon")
			if not N or not n then
				return
			end
			local p = K.CombatUtils:GetMovesetAnimCache(N)
			local u = K.CombatUtils:GetWeaponData(K.CombatUtils:GetWeaponName(n))
			if not p or not u or not u.Moveset or not u.Moveset["Basic"] then
				return
			end
			local s = K.CombatUtils:GetPureWeaponName(K.CombatUtils:GetWeaponName(n)) .. (("-basic") .. math.random(1, # u.Moveset["Basic"]))
			local c = p[s]
			if c then
				c:Play(0, 1, ((c:GetAttribute("SpeedMult") or 1)) * 5)
				c.TimePosition = .01
			end
		end)
	end
	local function c(p, s)
		local c = {}
		s = s or 50
		local A = v or (g and g:FindFirstChild("HumanoidRootPart"))
		if not A then
			return c
		end
		local a = A.Position
		local D = (A:FindFirstChild("Buddha") and 10) or K.MaxHits
		local Q = K.BodyParts[math.random(# K.BodyParts)]
		local S = K.CurrentTarget
		if S and (S.Parent and not S:GetAttribute("IsBoat")) then
			local K = S:FindFirstChild("HumanoidRootPart") or S.PrimaryPart
			if K and (((K.Position - a)).Magnitude <= s and yU:IsReady(S)) then
				table.insert(c, {
					S;
					S:FindFirstChild(Q) or K
				})
				if # c >= D then
					return c
				end
			end
		end
		if X.attackmobs and M then
			local K = M:GetChildren()
			for n = 1, # K, 1 do
				if # c >= D then
					break
				end
				local u = K[n]
				if u ~= S and not u:GetAttribute("IsBoat") then
					local K = u:FindFirstChild("HumanoidRootPart") or u.PrimaryPart
					if K and (((K.Position - a)).Magnitude <= s and yU:IsReady(u)) then
						local n = false
						if not p and X.MasteryFarm then
							local K = u:FindFirstChildOfClass("Humanoid")
							if K and K.Health / K.MaxHealth <= ((X.HealthMob or 0)) / 100 then
								n = true
							end
						end
						if not n then
							table.insert(c, {
								u;
								u:FindFirstChild(Q) or K
							})
						end
					end
				end
			end
		end
		if X.attackplayers and (not u:GetAttribute("PvpDisabled") and U:FindFirstChild("Characters")) then
			local K = U.Characters:GetChildren()
			local p = u and u.Character
			for u = 1, # K, 1 do
				if # c >= D then
					break
				end
				local A = K[u]
				if A ~= p then
					local K = A:FindFirstChild("HumanoidRootPart") or A.PrimaryPart
					if K and ((K.Position - a)).Magnitude <= s then
						local p = n:GetPlayerFromCharacter(A)
						if p and ((X.AutoKillPlayerinTrial or VU(p))) then
							table.insert(c, {
								A;
								K
							})
						end
					end
				end
			end
		end
		return c
	end
	local function A(p, s, c)
		K.Hits = {}
		p = p or 200
		local A = u and u.Character or g
		local a = A and ((A:FindFirstChild("HumanoidRootPart") or A.PrimaryPart)) or v
		if not a then
			return
		end
		local D = a.Position
		if s or X.attackmobs then
			local u = M and M:GetChildren()
			if u then
				for s = 1, # u, 1 do
					local c = u[s]
					if c ~= A and not c:GetAttribute("IsBoat") then
						local u = c.PrimaryPart or c:FindFirstChild("HumanoidRootPart")
						if u and (((D - u.Position)).Magnitude <= p and yU:IsReady(c)) then
							local p = n:GetPlayerFromCharacter(c)
							if c.Parent ~= U.Characters or (p and VU(p)) then
								table.insert(K.Hits, {
									c,
									u
								})
							end
						end
					end
				end
			end
		end
		if s or (X.attackplayers and not u:GetAttribute("PvpDisabled")) then
			local u = U:FindFirstChild("Characters") and U.Characters:GetChildren()
			if u then
				for s = 1, # u, 1 do
					local c = u[s]
					if c ~= A then
						local u = c:FindFirstChild("HumanoidRootPart") or c.PrimaryPart
						if u and ((D - u.Position)).Magnitude <= p then
							local p = n:GetPlayerFromCharacter(c)
							if p and ((X.AutoKillPlayerinTrial or VU(p))) then
								table.insert(K.Hits, {
									c;
									u
								})
							end
						end
					end
				end
			end
		end
		if c then
			if W then
				local n = W:GetChildren()
				for u = 1, # n, 1 do
					local s = n[u]
					local c = s:FindFirstChildOfClass("MeshPart") or s:FindFirstChildWhichIsA("BasePart") or s.PrimaryPart
					if c and (((D - c.Position)).Magnitude <= p and yU:IsReady(s)) then
						table.insert(K.Hits, {
							s,
							c
						})
					end
				end
			end
			if M then
				local n = M:GetChildren()
				for u = 1, # n, 1 do
					local s = n[u]
					if s:GetAttribute("IsBoat") then
						local n = s:FindFirstChildOfClass("MeshPart") or s:FindFirstChildWhichIsA("BasePart") or s.PrimaryPart
						if n and (((D - n.Position)).Magnitude <= p and yU:IsReady(s)) then
							table.insert(K.Hits, {
								s,
								n
							})
						end
					end
				end
			end
		end
	end
	local function a()
		local n, p
		local s = math.huge
		local c = u and u.Character or g
		local X = c and ((c:FindFirstChild("HumanoidRootPart") or c.PrimaryPart)) or v
		local A = X and X.Position
		local a = K.CurrentTarget
		if a and (typeof(a) == "Instance" and a:IsDescendantOf(workspace)) then
			local n = a:IsA("BasePart") and a or a:FindFirstChild("HumanoidRootPart") or a:FindFirstChildWhichIsA("BasePart") or (a:IsA("Model") and a.PrimaryPart)
			if n and n:IsDescendantOf(workspace) then
				local p = a:FindFirstChildOfClass("Humanoid")
				if not p or p.Health > 0 then
					if not A or ((A - n.Position)).Magnitude <= 400 then
						K.Hits = {
							{
								a;
								n
							}
						}
						return n.Position, n
					end
				end
			end
		end
		local D = K.Hits
		for K = 1, # D, 1 do
			local u = D[K]
			local c = type(u) == "table" and u[1] or u
			local X = type(u) == "table" and u[2] or (typeof(u) == "Instance" and (u:IsA("BasePart") and u))
			if X and X:IsDescendantOf(workspace) then
				local K = A and ((A - X.Position)).Magnitude or 0
				local u = n and ((c.Parent == W or (n.Parent ~= W and c:GetAttribute("IsBoat"))))
				if not n or u or (K < s and not ((n.Parent == W or n:GetAttribute("IsBoat")))) then
					n, p = c, X
					s = K
				end
			end
		end
		if not p then
			return nil, nil
		end
		K.Hits = {
			{
				n,
				p
			}
		}
		return p.Position, p
	end
	local function D(n, u, s)
		if not n then
			return
		end
		local c = n.Name
		local X
		pcall(function()
			X = K.CombatUtils:GetWeaponData(c)
		end)
		local A = (X and X.ShootType) or K.ShootStyles[c] or "Normal"
		n:SetAttribute("LocalTotalShots", ((n:GetAttribute("LocalTotalShots") or 0)) + 1)
		if K.GunValidator then
			pcall(function()
				local n, u = p()
				if n and (u and n ~= 0) then
					K.GunValidator:FireServer(n, u)
				end
			end)
		end
		if A == "Custom" or c == "Skull Guitar" or c == "Soul Guitar" then
			local p = P:FindFirstChild("Events") and P.Events:FindFirstChild("ShootSoulGuitar")
			if p and p:IsA("BindableFunction") then
				local n = pcall(function()
					p:Invoke(u)
				end)
				if not n and K.ShootGun then
					K.ShootGun:FireServer(u)
				end
			elseif n:FindFirstChild("RemoteEvent") then
				n.RemoteEvent:FireServer("TAP", u)
			elseif K.ShootGun then
				K.ShootGun:FireServer(u)
			end
			return
		end
		if A == "Projectile" or c == "Cannon" or c == "Bazooka" then
			if K.ShootGun then
				K.ShootGun:FireServer(u)
			end
			return
		end
		if A == "HitscanBurst" or c == "Dual Flintlock" then
			if K.ShootGun then
				K.ShootGun:FireServer(u, s and {
					s
				} or {}, math.random(math.floor(workspace:GetServerTimeNow())))
			end
			return
		end
		if K.ShootGun then
			local n = type(s) == "table" and s or (s and {
				s
			} or {})
			K.ShootGun:FireServer(u, n)
		end
	end
	local function Q()
		local n = u and u.Character or g
		if not n then
			return
		end
		local s = n:FindFirstChildOfClass("Tool")
		if not s or s.Parent ~= n then
			return
		end
		s.Enabled = true
		local c = s.Name
		if c == "Dragonstorm" or K.ShootStyles[c] == "Overheat" then
			s:SetAttribute("IsReloading_Client", false)
			s:SetAttribute("LocalShotsLeft", 100)
			s:SetAttribute("LocalOverheat", 0)
		end
		if K.GunDebounce > tick() then
			if not s.Enabled then
				K.GunDebounce = 0
			else
				return
			end
		end
		local Q = n:FindFirstChild("HumanoidRootPart") or n.PrimaryPart or v
		local S = Q and Q.Position
		if not S then
			return
		end
		local F
		pcall(function()
			F = K.CombatUtils:GetWeaponData(c)
		end)
		local H = (F and F.ShootType) or K.ShootStyles[c] or "Normal"
		local O = (F and F.ShootStyle) or ""
		if c == "Dragonstorm" or O == "Gatling" then
			local n = X.DragonstormMode or "Spread Damage"
			local u = string.find(tostring(n), "Single") ~= nil
			local D = math.max(400, (F and tonumber(F.Range)) or (K.OverheatData[c] and K.OverheatData[c].Distance) or 400)
			A(D, true, true)
			local Q = K.CurrentTarget
			if Q and (typeof(Q) == "Instance" and Q:IsDescendantOf(workspace)) then
				local n = Q:IsA("BasePart") and Q or Q:FindFirstChild("HumanoidRootPart") or Q:FindFirstChildWhichIsA("BasePart") or (Q:IsA("Model") and Q.PrimaryPart)
				if n and ((S - n.Position)).Magnitude <= D then
					local p = false
					for K, u in ipairs(K.Hits) do
						if ((type(u) == "table" and u[2] or u)) == n then
							p = true
							break
						end
					end
					if not p then
						table.insert(K.Hits, 1, {
							Q;
							n
						})
					end
				end
			end
			if # K.Hits == 0 then
				return
			end
			K.GunDebounce = tick() + .05
			if u then
				local n, u = a()
				if not u and K.Hits[1] then
					local p = K.Hits[1]
					u = type(p) == "table" and p[2] or (typeof(p) == "Instance" and p)
					n = u and u.Position
				end
				if not u or not n then
					return
				end
				s:SetAttribute("LocalTotalShots", ((s:GetAttribute("LocalTotalShots") or 0)) + 1)
				if K.GunValidator then
					pcall(function()
						local n, u = p()
						if n and (u and n ~= 0) then
							K.GunValidator:FireServer(n, u)
						end
					end)
				end
				if K.ShootGun then
					K.ShootGun:FireServer(n, {
						u
					})
				end
			else
				local n = {}
				local u = {}
				if Q and (typeof(Q) == "Instance" and Q:IsDescendantOf(workspace)) then
					local K = Q:IsA("BasePart") and Q or Q:FindFirstChild("HumanoidRootPart") or Q:FindFirstChildWhichIsA("BasePart") or (Q:IsA("Model") and Q.PrimaryPart)
					if K and ((S - K.Position)).Magnitude <= D then
						u[K] = true
						table.insert(n, K)
					end
				end
				for p = 1, # K.Hits, 1 do
					local s = K.Hits[p]
					local c = type(s) == "table" and s[2] or (typeof(s) == "Instance" and (s:IsA("BasePart") and s))
					if c and (c:IsDescendantOf(workspace) and not u[c]) then
						local K = c.Parent and c.Parent:FindFirstChildOfClass("Humanoid")
						if not K or K.Health > 0 then
							u[c] = true
							table.insert(n, c)
							if # n >= 8 then
								break
							end
						end
					end
				end
				if # n == 0 then
					return
				end
				s:SetAttribute("LocalTotalShots", ((s:GetAttribute("LocalTotalShots") or 0)) + # n)
				if K.GunValidator then
					pcall(function()
						local n, u = p()
						if n and (u and n ~= 0) then
							K.GunValidator:FireServer(n, u)
						end
					end)
				end
				if K.ShootGun then
					for n, p in ipairs(n) do
						K.ShootGun:FireServer(p.Position, {
							p
						})
					end
				end
			end
		elseif H == "Projectile" or c == "Cannon" or c == "Bazooka" or H == "Custom" or c == "Skull Guitar" or c == "Soul Guitar" then
			A(250, true, true)
			local n, p = a()
			if not p then
				return
			end
			local u = (F and tonumber(F.Cooldown)) or (H == "Projectile" and 3.5 or 1.5)
			K.GunDebounce = tick() + u
			D(s, n, p)
		else
			A(200, false, true)
			if # K.Hits == 0 then
				return
			end
			local n, p = a()
			if not p then
				return
			end
			local u = (F and tonumber(F.Cooldown)) or .4
			K.GunDebounce = tick() + u
			D(s, n, p)
		end
	end
	local function S(K, p)
		if not p or not p:FindFirstChild("LeftClickRemote") then
			return
		end
		local s = g and g:FindFirstChild("HumanoidRootPart")
		if not s then
			return
		end
		local c = s.Position
		if M then
			local n = M:GetChildren()
			for u = 1, # n, 1 do
				local s = n[u]
				if not s:GetAttribute("IsBoat") then
					local n = s.PrimaryPart or s:FindFirstChild("HumanoidRootPart")
					if n and (((n.Position - c)).Magnitude <= 65 and yU:IsReady(s)) then
						p.LeftClickRemote:FireServer(((n.Position - c)).Unit, K)
					end
				end
			end
		end
		if X.attackplayers and (not u:GetAttribute("PvpDisabled") and U:FindFirstChild("Characters")) then
			local s = U.Characters:GetChildren()
			local A = u and u.Character
			for u = 1, # s, 1 do
				local a = s[u]
				if a ~= A then
					local u = a:FindFirstChild("HumanoidRootPart") or a.PrimaryPart
					if u and ((u.Position - c)).Magnitude <= 65 then
						local s = n:GetPlayerFromCharacter(a)
						if s and ((X.AutoKillPlayerinTrial or VU(s))) then
							p.LeftClickRemote:FireServer(((u.Position - c)).Unit, K)
						end
					end
				end
			end
		end
		if W then
			local K = W:GetChildren()
			for n = 1, # K, 1 do
				local u = K[n]
				local s = u:FindFirstChildOfClass("MeshPart") or u.PrimaryPart
				if s and (((s.Position - c)).Magnitude <= 70 and yU:IsReady(u)) then
					p.LeftClickRemote:FireServer(Vector3.new(.01, - 500, .01), 1, true)
				end
			end
		end
	end
	local function F(K, n)
		local p = g and g:FindFirstChildOfClass("Tool")
		if not p then
			return
		end
		if not n and M then
			local p = 50
			local u = M:GetChildren()
			for s = 1, # u, 1 do
				local c = u[s]
				if not c:GetAttribute("IsBoat") then
					local u = c:FindFirstChild("HumanoidRootPart") or c.PrimaryPart
					if u and (((u.Position - K)).Magnitude < p and yU:IsReady(c)) then
						p = ((u.Position - K)).Magnitude
						n = u
					end
				end
			end
		end
		D(p, K, n)
	end
	local function H()
		local p = tonumber(X.FastAttackDelay) or 0
		if p > 0 then
			local n = tick()
			if n - K.LastAttack < p then
				return
			end
			K.LastAttack = n
		end
		local A = g and g:FindFirstChildOfClass("Tool")
		local a = A and A.ToolTip or nil
		if X.DoubleAttack and yU.Utilities then
			local K = yU.Utilities:Checkfruit()
			local n = K and yU.Utilities:CheckToolName(K)
			if n and n:FindFirstChild("LeftClickRemote") then
				pcall(function()
					n.LeftClickRemote:FireServer(Vector3.new(.01, - 500, .01), 1, true)
				end)
			end
		end
		if not A then
			if X.DoubleAttack and yU.Utilities then
				local K = yU.Utilities:Checkfruit()
				local n = K and yU.Utilities:CheckToolName(K)
				if n then
					A = n
					a = "Blox Fruit"
				else
					return
				end
			else
				return
			end
		end
		if not K.ValidTools[a] then
			return
		end
		if X.FastSettings == "Fast Attack" then
			if a == "Gun" then
				if X.AutoAttackGun ~= false then
					Q()
				end
				return
			end
			local n = a == "Blox Fruit" and A:FindFirstChild("LeftClickRemote") ~= nil
			local p = c(n)
			if a == "Blox Fruit" and not K.NormalFruits[A.Name] then
				local n = K.LastCombo
				if (tick() - K.ComboTime) > .65 then
					n = 0
				end
				n = n >= 5 and 1 or (n + 1)
				K.LastCombo = n
				K.ComboTime = tick()
				if A:FindFirstChild("LeftClickRemote") then
					S(n, A)
				end
			else
				K.RegisterAttack:FireServer(X.FastAttackDelay or .3)
				s()
				local n = {}
				local u = nil
				for K = 1, # p, 1 do
					local s = p[K]
					if s[1] and s[2] then
						table.insert(n, s)
						u = u or s[2]
					end
				end
				if u and K.RegisterHit then
					K.RegisterHit:FireServer(u, n, nil, nil, K.UserId .. (tostring(coroutine.running())):sub(11, 15))
				end
			end
			if X.DoubleAttack and (a == "Blox Fruit" and yU.Utilities) then
				local n = yU.Utilities:Checkfruit()
				local p = n and yU.Utilities:CheckToolName(n)
				if p and (p ~= A and p:FindFirstChild("LeftClickRemote")) then
					S(K.LastCombo or 1, p)
				end
			end
		elseif X.FastSettings == "Legit Attack" then
			if a == "Gun" then
				if X.AutoAttackGun ~= false then
					Q()
				end
				return
			end
			if a == "Blox Fruit" and (A:FindFirstChild("LeftClickRemote") and not K.NormalFruits[A.Name]) then
				local n = K.LastCombo
				if (tick() - K.ComboTime) > .65 then
					n = 0
				end
				n = n >= 5 and 1 or (n + 1)
				K.LastCombo = n
				K.ComboTime = tick()
				S(n, A)
			else
				local p = g and g:FindFirstChild("EquippedWeapon")
				if p then
					local K = p:GetDescendants()
					for n = 1, # K, 1 do
						local p = K[n]
						if p:IsA("BasePart") and p.Size["X"] ~= 60 then
							p.Size = Vector3.new(60, 60, 60)
							p.CanCollide = false
							p.Massless = true
						end
					end
				end
				local s = v or (g and g:FindFirstChild("HumanoidRootPart"))
				local c = s and s.Position
				local function a(n)
					local p = n.PrimaryPart or n:FindFirstChild("HumanoidRootPart")
					if not p or not c or ((p.Position - c)).Magnitude > 65 then
						return
					end
					local u = n:FindFirstChild("UpperTorso") or n:FindFirstChild("Torso") or n:FindFirstChild("Head") or p
					if u and u.Size["X"] ~= 70 then
						u.Size = Vector3.new(70, 70, 70)
						u.Transparency = 1
						u.CanCollide = false
						u.Massless = true
					end
					if A and A.Parent == g then
						pcall(function()
							A:Activate()
						end)
					end
					K.CombatController:Attack(A)
				end
				if M then
					local K = M:GetChildren()
					for n = 1, # K, 1 do
						local p = K[n]
						if yU:IsReady(p) then
							a(p)
						end
					end
				end
				if X.attackplayers and (not u:GetAttribute("PvpDisabled") and U:FindFirstChild("Characters")) then
					local K = U.Characters:GetChildren()
					local p = u and u.Character
					for u = 1, # K, 1 do
						local s = K[u]
						if s ~= p then
							local K = n:GetPlayerFromCharacter(s)
							if K and ((X.AutoKillPlayerinTrial or VU(K))) then
								a(s)
							end
						end
					end
				end
			end
		end
	end
	local O = {
		Attack = H,
		ShootGun = Q;
		CustomShoot = F,
		GetHits = c,
		AttackManager = K
	}
	return O
end))()
local JU = yU.FastAttack
local ZU = JU.ShootGun
local EU = JU.CustomShoot
yU.ServerStatus = {
	GetFruitStock = function()
		local function K(K)
			local n, p = pcall(yU.FireInvoke, yU, "GetFruits", K)
			local u, s = {}, type(p) == "table" and p.RestockIn or (((K and 7200 or 14400)) - os.time() % ((K and 7200 or 14400)))
			if type(p) == "table" then
				for K, n in pairs(p) do
					if type(n) == "table" and ((n.OnSale or n.InStock)) then
						u[# u + 1] = string.format("[*] %s \226\128\148 $%d", (tostring(n.Name or "Unknown")):gsub("%-.*", ""), n.Price or 0)
					end
				end
			end
			local c, X, A = math.floor(s / 3600), math.floor((s % 3600) / 60), s % 60
			local a = c > 0 and string.format("%dh %dm %ds", c, X, A) or X > 0 and string.format("%dm %ds", X, A) or (A .. "s")
			return a, # u > 0 and table.concat(u, "\n") or "No fruits in stock"
		end
		local n, p = K(false)
		local u, s = K(true)
		local c = "_"
		return string.format("Normal Dealer\n%s\nRestock: %s\n\n%s\n\nMirage Dealer\n%s\nRestock: %s\n\n%s", c, n, p, c, u, s)
	end
}
local MU = yU.ServerStatus
yU.DataList = {
	BonesList = {
		["Reborn Skeleton"] = true;
		["Living Zombie"] = true;
		["Demonic Soul"] = true;
		["Posessed Mummy"] = true
	},
	CakesList = {
		["Head Baker"] = true;
		["Baking Staff"] = true;
		["Cake Guard"] = true;
		["Cookie Crafter"] = true
	};
	RaceList = {
		Fishman = CFrame.new(28224.057, 14889.427, - 210.587),
		Human = CFrame.new(29237.295, 14889.427, - 206.95),
		Cyborg = CFrame.new(28492.414, 14894.427, - 422.11);
		Skypiea = CFrame.new(28967.408, 14918.075, 234.312),
		Ghoul = CFrame.new(28672.721, 14889.128, 454.596);
		Mink = CFrame.new(29020.66, 14889.427, - 379.268)
	},
	HumanRace = {
		Orbitus = true;
		Diamond = true;
		Jeremy = true
	},
	TyrantList = {
		["Serpent Hunter"] = true;
		["Skull Slayer"] = true,
		["Isle Champion"] = true,
		["Sun-kissed Warrior"] = true
	}
}
yU.Utilities = ((function()
	local K = {
		ActiveTweens = {},
		SpawnCache = {};
		MobCycle = {},
		NextSpawnCooldown = {},
		OrbitAngle = 0,
		OrbitSpeed = 3;
		LastTick = tick()
	}
	function K.GetFarmCFrame(n, K)
		if not K then
			return nil
		end
		local p = X.PosMethod or "Above"
		local u = K.Position
		local s = g and g:FindFirstChildOfClass("Tool")
		local c = s and s.ToolTip == "Blox Fruit"
		local A = tonumber(X.PosY) or (c and 18 or 18)
		A = math.clamp(A, 3, 30)
		if p == "Orbit" then
			local K = tick()
			local p = K - n.LastTick
			n.LastTick = K
			n.OrbitAngle = n.OrbitAngle + n.OrbitSpeed * p
			local s = tonumber(X.CircleRadius) or (c and 6 or A)
			local a = math.cos(n.OrbitAngle) * s
			local D = math.sin(n.OrbitAngle) * s
			local Q = u + Vector3.new(a, A, D)
			return CFrame.new(Q)
		else
			local K = u + Vector3.new(0, A, .5)
			return CFrame.new(K)
		end
	end
	function K.GetDistance(n, K)
		if typeof(K) == "CFrame" then
			return u:DistanceFromCharacter(K.Position)
		elseif typeof(K) == "Vector3" then
			return u:DistanceFromCharacter(K)
		end
	end
	function K.AutoHaki(K)
		if not u.Character:HasTag("Buso") and Z.Value >= 25000 then
			yU:FireInvoke("BuyHaki", "Buso")
		elseif u.Character:HasTag("Buso") and not u.Character:FindFirstChild("HasBuso") then
			yU:FireInvoke("Buso")
		end
	end
	function K.CheckToolName(n, K)
		local p = u and u.Backpack
		if g then
			return g:FindFirstChild(K) or p:FindFirstChild(K)
		end
	end
	local p = {
		["Rocket-Rocket"] = 1,
		Rocket = 1;
		["Spin-Spin"] = 2;
		Spin = 2;
		["Blade-Blade"] = 3;
		Blade = 3,
		["Chop-Chop"] = 3;
		Chop = 3;
		["Spring-Spring"] = 4;
		Spring = 4;
		["Bomb-Bomb"] = 5;
		Bomb = 5,
		["Smoke-Smoke"] = 6,
		Smoke = 6;
		["Spike-Spike"] = 7;
		Spike = 7,
		["Flame-Flame"] = 8,
		Flame = 8,
		["Falcon-Falcon"] = 9,
		Falcon = 9;
		["Ice-Ice"] = 10;
		Ice = 10,
		["Sand-Sand"] = 11;
		Sand = 11;
		["Dark-Dark"] = 12,
		Dark = 12,
		["Diamond-Diamond"] = 13,
		Diamond = 13;
		["Light-Light"] = 14;
		Light = 14,
		["Ghost-Ghost"] = 15,
		Ghost = 15,
		["Rubber-Rubber"] = 16;
		Rubber = 16;
		["Barrier-Barrier"] = 17,
		Barrier = 17;
		["Magma-Magma"] = 18;
		Magma = 18,
		["Quake-Quake"] = 19;
		Quake = 19;
		["Human-Human: Buddha"] = 20,
		["Buddha-Buddha"] = 20;
		Buddha = 20,
		["Love-Love"] = 21,
		Love = 21,
		["Spider-Spider"] = 22,
		Spider = 22,
		["Sound-Sound"] = 23;
		Sound = 23,
		["Phoenix-Phoenix"] = 24;
		Phoenix = 24;
		["Portal-Portal"] = 25,
		Portal = 25;
		["Rumble-Rumble"] = 26,
		Rumble = 26;
		["Pain-Pain"] = 27;
		Pain = 27,
		["Blizzard-Blizzard"] = 28;
		Blizzard = 28;
		["Gravity-Gravity"] = 29;
		Gravity = 29;
		["Mammoth-Mammoth"] = 30;
		Mammoth = 30;
		["T-Rex-T-Rex"] = 31;
		["T-Rex"] = 31;
		["Dough-Dough"] = 32;
		Dough = 32;
		["Shadow-Shadow"] = 33;
		Shadow = 33,
		["Venom-Venom"] = 34,
		Venom = 34,
		["Control-Control"] = 35;
		Control = 35,
		["Gas-Gas"] = 36,
		Gas = 36;
		["Spirit-Spirit"] = 37;
		Spirit = 37,
		["Dragon-Dragon"] = 38,
		Dragon = 38,
		["Leopard-Leopard"] = 39;
		Leopard = 39;
		["Yeti-Yeti"] = 40;
		Yeti = 40,
		["Kitsune-Kitsune"] = 41,
		Kitsune = 41;
		["Dragon (East)-Dragon (East)"] = 42,
		["Dragon (West)-Dragon (West)"] = 43
	}
	function K.Checkfruit(n, K)
		local s = u and u.Backpack
		local c = u and u.Character
		local X = {}
		if s then
			table.insert(X, s:GetChildren())
		end
		if c then
			table.insert(X, c:GetChildren())
		end
		for n, u in ipairs(X) do
			for n, u in pairs(u) do
				if u:IsA("Tool") then
					if u:FindFirstChild("EatRemote") or u:FindFirstChild("DropRemote") or u:GetAttribute("IsPhysical") or u:GetAttribute("Fruit") or (u.ToolTip ~= "Blox Fruit" and string.find(u.Name, "Fruit")) then
						if K then
							local K = u.Name:gsub(" Fruit$", "")
							local n = K:match("^(.-)%-") or K
							local s = K:match("%-(.+)$") or K
							local c = p[K] or p[u.Name] or p[n] or p[s]
							if not c then
								for n, p in pairs(p) do
									if u.Name:find(n, 1, true) or n:find(K, 1, true) then
										c = p
										break
									end
								end
							end
							if c and c >= 19 then
								return u.Name, u
							end
						else
							return u.Name, u
						end
					end
				end
			end
		end
		return nil
	end
	function K.EquipTool(n, K)
		local p = u and u.Backpack
		if p and (N and p:FindFirstChild(K)) then
			N:EquipTool(p[K])
		end
	end
	function K.EquipWeapon(n, K)
		local p = K or X.SelectWeapon
		local s = u and u.Backpack
		for K, u in ipairs(s:GetChildren()) do
			if u and (u:IsA("Tool") and u.ToolTip == p) then
				n:EquipTool(u.Name)
				return true
			end
		end
	end
	function yU.CheckInventory(n, K)
		local p, u = pcall(function()
			return (SU:RemoteFunction("GetAllItemValues")):InvokeServer()
		end)
		if not p or not u then
			return nil
		end
		local s = {}
		for K, n in next, u do
			local p = tostring(n.ItemId) .. (("_") .. tostring(n.NetworkedUID))
			s[p] = s[p] or {
				ItemId = n.ItemId,
				UID = n.NetworkedUID,
				Attributes = {}
			}
			if n.Value ~= nil then
				s[p].Attributes[n.Key] = n.Value
			end
		end
		for n, p in next, s do
			local u
			local s, c = pcall(function()
				return FU.match(p.ItemId)
			end)
			if s and (c and c:isOk()) then
				local K = c:unwrap()
				if K and (K.Index and K.Index["DebugLabel"]) then
					u = tostring(K.Index["DebugLabel"])
				end
			end
			local X = u and ((u:match("^(.-)%s*%[") or u))
			local A = p.Attributes
			if X == K and A.IsOwned == true then
				return {
					Name = X;
					ItemId = p.ItemId,
					UID = p.UID,
					Quantity = A.Quantity,
					Mastery = A.Mastery,
					IsOwned = A.IsOwned;
					IsEquipped = A.IsEquipped;
					Attributes = A
				}
			end
		end
		return nil
	end
	function K.CheckInventory(u, K, n, p)
		local s, c = pcall(function()
			return (SU:RemoteFunction("GetAllItemValues")):InvokeServer()
		end)
		if not s or not c then
			return K == "Material" and 0 or K == "Sword" and 0 or false
		end
		local X = {}
		for K, n in next, c do
			local p = tostring(n.ItemId) .. (("_") .. tostring(n.NetworkedUID))
			X[p] = X[p] or {
				ItemId = n.ItemId;
				UID = n.NetworkedUID;
				Attributes = {}
			}
			if n.Value ~= nil then
				X[p].Attributes[n.Key] = n.Value
			end
		end
		for u, s in next, X do
			local c
			local X, A = pcall(function()
				return FU.match(s.ItemId)
			end)
			if X and (A and A:isOk()) then
				local K = A:unwrap()
				if K and (K.Index and K.Index["DebugLabel"]) then
					c = tostring(K.Index["DebugLabel"])
				end
			end
			if c then
				local u = c:match("^(.-)%s*%[") or c
				if string.lower(u) == string.lower(n) then
					local n = s.Attributes
					if K == "Material" then
						return n.Quantity or 0
					elseif K == "Moveset" then
						return n.Mastery or 0
					elseif K == "Mastery" then
						return ((n.Mastery or 0)) >= ((p or 0))
					end
				end
			end
		end
		return K == "Material" and 0 or K == "Sword" and 0 or false
	end
	function K.GetConnectMon(p, K, n)
		local s = u.Character and u.Character:FindFirstChild("HumanoidRootPart")
		local c, X = nil, math.huge
		local A = type(K) == "table"
		local a = type(K) == "string"
		if n and not s then
			return nil
		end
		local D = {}
		if M then
			table.insert(D, M)
		end
		table.insert(D, P)
		for p, u in next, D do
			for p, u in next, u:GetChildren() do
				if not u:FindFirstChild("Ignored") then
					local p = false
					if a then
						p = (u.Name == K) or (string.lower(u.Name) == string.lower(K))
					elseif A then
						p = K[u.Name] == true or table.find(K, u.Name) ~= nil
						if not p then
							for K, n in next, K do
								if typeof(n) == "string" and string.lower(n) == string.lower(u.Name) then
									p = true
									break
								end
							end
						end
					end
					if p then
						local K = u:IsDescendantOf(U)
						local p = u.Parent == P or u:IsDescendantOf(P)
						local A = (K and yU:IsReady(u)) or (p and (u:FindFirstChild("HumanoidRootPart") ~= nil and not u:FindFirstChild("Ignored")))
						if A then
							if not n then
								return u
							end
							local K = u:FindFirstChild("HumanoidRootPart") or u.PrimaryPart
							if K then
								local n = ((s.Position - K.Position)).Magnitude
								if p then
									n = n + 50000
								end
								if n < X then
									X, c = n, u
								end
							end
						end
					end
				end
			end
		end
		return c
	end
	function K.CheckMon(n, K)
		return n:GetConnectMon(K) ~= nil
	end
	function K.GetEnemies(n, K)
		return n:GetConnectMon(K, true)
	end
	local s = "QuantumBringTag"
	K.BringCache = {}
	local c = {}
	local A = 0
	local a = 0
	function K.BringEnemies(D, p)
		if not X.BringMonster then
			return
		end
		local Q = g and g:FindFirstChild("HumanoidRootPart")
		local S = p and ((p:FindFirstChild("HumanoidRootPart") or p.PrimaryPart))
		if not Q or not S then
			return
		end
		local F = tick()
		if F - A < .4 then
			return
		end
		A = F
		local H = tonumber(X.BringMonsterRadius) or 350
		local O = math.clamp(H + 50, 100, 500)
		if F - a > 3 then
			a = F
			pcall(function()
				sethiddenproperty(u, "SimulationRadius", O)
			end)
		end
		K.BringCache[p.Name] = S.CFrame
		local L = 0
		for K in pairs(c) do
			local n = K.Parent and K:FindFirstChildOfClass("Humanoid")
			if not K.Parent or not n or n.Health <= 0 or K:FindFirstChild("Ignored") then
				c[K] = nil
				pcall(function()
					K:RemoveTag(s)
				end)
			else
				L = L + 1
			end
		end
		if L >= 6 then
			return
		end
		local P = {}
		for K, n in ipairs(n:GetPlayers()) do
			if n ~= u then
				local K = n.Character
				local p = K and ((K:FindFirstChild("HumanoidRootPart") or K.PrimaryPart))
				if p then
					table.insert(P, p.Position)
				end
			end
		end
		local R = M or U:FindFirstChild("Enemies")
		if not R then
			return
		end
		local T = 0
		local x = S.Position
		local e = Q.Position
		local y = R:GetChildren()
		for K = 1, # y, 1 do
			local n = y[K]
			if n ~= p and (n.Name == p.Name and (not c[n] and (not n:HasTag(s) and yU:IsReady(n)))) then
				local K = n:FindFirstChild("HumanoidRootPart") or n.PrimaryPart
				if K then
					local p = K.Position
					if ((p - x)).Magnitude <= H and ((p - e)).Magnitude <= H then
						local K = false
						for n = 1, # P, 1 do
							if ((p - P[n])).Magnitude <= 55 then
								K = true
								break
							end
						end
						if not K then
							c[n] = true
							n:AddTag(s)
							T = T + 1
							if T >= 3 or (L + T) >= 6 then
								break
							end
						end
					end
				end
			end
		end
	end;
	(R:GetInstanceAddedSignal(s)):Connect(function(n)
		task.spawn(function()
			local p = n:FindFirstChild("HumanoidRootPart") or n.PrimaryPart
			local A = n:FindFirstChildOfClass("Humanoid")
			if not p or not A then
				c[n] = nil
				pcall(function()
					n:RemoveTag(s)
				end)
				return
			end
			local a = n.Name
			local D = p:FindFirstChild("BringBodyPos")
			if not D then
				D = Instance.new("BodyPosition")
				D.Name = "BringBodyPos"
				D.MaxForce = Vector3.new(1000000, 1000000, 1000000)
				D.P = 8000
				D.D = 600
				D.Position = p.Position
				D.Parent = p
			end
			local Q = {}
			for K, n in ipairs(n:GetChildren()) do
				if n:IsA("BasePart") then
					n.CanCollide = false
					table.insert(Q, n)
				end
			end
			local S = tick() + 25
			local F = 0
			local H = 0
			while X.BringMonster and (n.Parent and (p.Parent and (A.Health > 0 and (not n:FindFirstChild("Ignored") and (n:HasTag(s) and tick() < S))))) do
				local s = tick()
				local c = u.Character
				local A = c and c:FindFirstChild("HumanoidRootPart")
				local S = K.BringCache and K.BringCache[a]
				local O = tonumber(X.BringMonsterRadius) or 350
				if A and S then
					local K = typeof(S) == "CFrame" and S.Position or S
					local n = ((A.Position - p.Position)).Magnitude
					if n <= O + 50 then
						F = 0
						if s - H > 1 then
							H = s
							for K = 1, # Q, 1 do
								local n = Q[K]
								if n.Parent and n.CanCollide then
									n.CanCollide = false
								end
							end
						end
						if ((D.Position - K)).Magnitude > .5 then
							D.Position = K
						end
					else
						F = F + 1
					end
				else
					F = F + 1
				end
				if F > 15 then
					local K = n;
					(Instance.new("IntValue", K)).Name = "Ignored"
					break
				end
				task.wait(.1)
			end
			c[n] = nil
			pcall(function()
				if D and D.Parent then
					D:Destroy()
				end
				if n:HasTag(s) then
					n:RemoveTag(s)
				end
				for K = 1, # Q, 1 do
					local n = Q[K]
					if n.Parent then
						n.CanCollide = true
					end
				end
			end)
		end)
	end)
	local D = {}
	local function Q(K)
		return ((tostring(K or "")):gsub(" %p?Lv%.? %d+%p?", ""))
	end
	function K.DeleteIgnoredMobSpawn(K)
		for K, n in pairs(D) do
			if n and n:FindFirstChild("Ignored") then
				n.Ignored:Destroy()
			end
		end
		local n = f and f:FindFirstChild("EnemySpawns")
		if n then
			for K, n in pairs(n:GetChildren()) do
				if n:FindFirstChild("Ignored") then
					n.Ignored:Destroy()
				end
			end
		end
		if typeof(getnilinstances) == "function" then
			pcall(function()
				for K, n in pairs(getnilinstances()) do
					if n:IsA("BasePart") and n:FindFirstChild("Ignored") then
						n.Ignored:Destroy()
					end
				end
			end)
		end
	end
	function K.DeleteIgnoredMobs(K)
		local n = M or U:FindFirstChild("Enemies")
		if n then
			for K, n in pairs(n:GetChildren()) do
				if n:FindFirstChild("Ignored") then
					n.Ignored:Destroy()
				end
			end
		end
	end
	function K.DetectPartSpawnMob(p, K, n)
		if not K then
			return nil
		end
		local u = type(K) == "table"
		local function s(n)
			local p = Q(n)
			if u then
				for K, u in next, K do
					local s = Q(u)
					if p == s or n == u or (p:lower()):find(s:lower(), 1, true) then
						return true
					end
				end
			else
				local u = Q(K)
				if p == u or n == K or (p:lower()):find(u:lower(), 1, true) then
					return true
				end
			end
			return false
		end
		for K, p in pairs(D) do
			if p and (p:IsA("BasePart") and s(p.Name)) then
				if not n or not p:FindFirstChild("Ignored") then
					return p
				end
			end
		end
		local c = f and f:FindFirstChild("EnemySpawns")
		if c then
			for K, p in pairs(c:GetChildren()) do
				if p:IsA("BasePart") and s(p.Name) then
					if not table.find(D, p) then
						table.insert(D, p)
					end
					if not n or not p:FindFirstChild("Ignored") then
						return p
					end
				end
			end
		end
		if typeof(getnilinstances) == "function" then
			pcall(function()
				for K, p in pairs(getnilinstances()) do
					if p:IsA("BasePart") and s(p.Name) then
						if not table.find(D, p) then
							table.insert(D, p)
						end
						if not n or not p:FindFirstChild("Ignored") then
							return p
						end
					end
				end
			end)
		end
		return nil
	end
	function K.MobsNextSpawn(n, K)
		if not K then
			return
		end
		local p = n:DetectPartSpawnMob(K, true)
		if p then
			local s = u.Character or g
			local c = s and s:FindFirstChild("HumanoidRootPart")
			if c and ((((p.Position - c.Position)).Magnitude <= 100 or n:CheckMon(K))) then
				(Instance.new("IntValue", p)).Name = "Ignored"
			end
			mU:topos(p.CFrame * CFrame.new(0, math.max(tonumber(X.PosY) or 30, 1), 0))
		else
			n:DeleteIgnoredMobSpawn()
		end
		return n:GetEnemies(K)
	end
	function K.StartQuest(s, K, n, p)
		if X.BypassGetQuest then
			yU:FireInvoke("StartQuest", K, n)
			task.wait(.3)
			return
		end
		local c = u.Character
		local A = c and c:FindFirstChild("HumanoidRootPart")
		if A and s:GetDistance(p) <= 25 then
			yU:FireInvoke("StartQuest", K, n)
			task.wait(.5)
		else
			mU:topos(p)
		end
	end
	function K.ServerHop(n, K)
		O.ServerHop(K)
	end
	function K.Rejoin(K)
		O.Rejoin()
	end
	function K.GetLowestFruit(n, K)
		local u = require(P.Modules["Net"])
		local s, c = pcall(function()
			return (u:RemoteFunction("GetAllItemValues")):InvokeServer()
		end)
		if not s or not c or type(c) ~= "table" then
			return nil
		end
		local X = {}
		for K, n in ipairs(c) do
			if n.Key == "IsOwned" and n.Value == true then
				X[n.ItemId] = true
			end
		end
		local A = nil
		local a = math.huge
		for n in pairs(X) do
			local u, s = pcall(function()
				return FU.match(n)
			end)
			if u and (s and (s.isOk and s:isOk())) then
				local u = s:unwrap()
				if u and (u.Index and u.Index["IdType"] == "PhysicalMoveset") then
					local s = tostring(u.Index["DebugLabel"] or u.Index["Name"] or "")
					local c = s:match("^(.-)%s*%[") or s
					local X = tostring(u.Index["StorageKey"] or c)
					local D = c:match("^(.-)%-") or c
					local Q = c:match("%-(.+)$") or c
					local S = p[c] or p[X] or p[D] or p[Q]
					if not S then
						for K, n in pairs(p) do
							if c:find(K, 1, true) or K:find(c, 1, true) or X:find(K, 1, true) then
								S = n
								break
							end
						end
					end
					if S then
						local p = (K and S >= 19) or (not K and S <= 18)
						if p and S < a then
							a = S
							A = {
								Name = c,
								RawName = c;
								StorageKey = X;
								ItemId = n,
								Rank = S
							}
						end
					end
				end
			end
		end
		return A
	end
	return K
end))()
local WU = yU.Utilities
local function bU(K)
	if not K then
		return ""
	end
	local n = string.lower(tostring(K))
	n = string.gsub(n, "%-", " ")
	n = string.gsub(n, "^the%s+", "")
	n = string.gsub(n, "men$", "man")
	n = string.gsub(n, "ies$", "y")
	if string.sub(n, - 1) == "s" and string.sub(n, - 2) ~= "ss" then
		n = string.sub(n, 1, - 2)
	end
	return string.match(n, "^%s*(.-)%s*$") or ""
end
local function IU(K, n)
	if not K or not n then
		return false
	end
	local p = bU(K)
	local u = bU(n)
	if p == "" or u == "" then
		return false
	end
	if p == u then
		return true
	end
	return string.find(p, u, 1, true) ~= nil or string.find(u, p, 1, true) ~= nil
end
function HasActiveQuest()
	if aU and (aU.Data and aU.Data["QuestData"]) then
		return true
	end
	local K = u and u:FindFirstChild("PlayerGui")
	if not K then
		return false
	end
	local n = K:FindFirstChild("Main")
	if n then
		local K = n:FindFirstChild("Quest")
		if K and K.Visible then
			return true
		end
	end
	local p = K:FindFirstChild("TrackedQuestFrame")
	if p and p.Enabled then
		local K = p:FindFirstChild("Frame")
		if K and K.Visible then
			local n = K:FindFirstChild("description")
			if n and (n.Text and n.Text ~= "") then
				return true
			end
			local p = K:FindFirstChild("header")
			local u = p and p:FindFirstChild("textLabel")
			if u and (u.Text and u.Text ~= "") then
				return true
			end
		end
	end
	return false
end
local function fU(K)
	if not K or K == "" then
		return nil
	end
	local n = string.gsub(K, "%s*%b()", "")
	n = string.gsub(n, "^.-:%s*", "")
	n = string.gsub(n, "^[Dd]efeat%s*", "")
	n = string.gsub(n, "^%d+%s*", "")
	n = string.match(n, "^%s*(.-)%s*$")
	if n and n ~= "" then
		return (n:gsub("^%l", string.upper))
	end
	return nil
end
function GetActiveQuest()
	if aU and (aU.Data and aU.Data["QuestData"]) then
		local K = aU.Data["QuestData"]
		if K.Task then
			for K in next, K.Task do
				return tostring(K)
			end
		end
		if K.Name then
			return tostring(K.Name)
		end
	end
	local K = u and u:FindFirstChild("PlayerGui")
	if not K then
		return nil
	end
	local n = K:FindFirstChild("Main")
	if n then
		local K = n:FindFirstChild("Quest")
		if K and K.Visible then
			local n = K:FindFirstChild("Container")
			local p = n and n:FindFirstChild("QuestTitle")
			local u = p and p:FindFirstChild("Title")
			if u and u.Text then
				local K = fU(u.Text)
				if K then
					return K
				end
			end
		end
	end
	local p = K:FindFirstChild("TrackedQuestFrame")
	if p and p.Enabled then
		local K = p:FindFirstChild("Frame")
		if K and K.Visible then
			local n = K:FindFirstChild("description")
			if n and (n.Text and n.Text ~= "") then
				local K = fU(n.Text)
				if K then
					return K
				end
			end
			local p = K:FindFirstChild("header")
			local u = p and p:FindFirstChild("textLabel")
			if u and (u.Text and u.Text ~= "") then
				local K = fU(u.Text)
				if K then
					return K
				end
			end
		end
	end
	return nil
end
function VerifyQuest(K)
	if not K then
		return false
	end
	if not HasActiveQuest() then
		return false
	end
	local n = GetActiveQuest()
	if not n then
		return false
	end
	if type(K) == "table" then
		for K, p in ipairs(K) do
			if IU(p, n) then
				return true
			end
		end
		return false
	end
	if IU(K, n) then
		return true
	end
	local p = u and u:FindFirstChild("PlayerGui")
	local s = p and p:FindFirstChild("Main")
	local c = s and s:FindFirstChild("Quest")
	if c and c.Visible then
		local n = c:FindFirstChild("Container")
		local p = n and n:FindFirstChild("QuestTitle")
		local u = p and p:FindFirstChild("Title")
		if u and (u.Text and string.find(string.lower(u.Text), string.lower(tostring(K)), 1, true)) then
			return true
		end
	end
	local X = p and p:FindFirstChild("TrackedQuestFrame")
	if X and X.Enabled then
		local n = X:FindFirstChild("Frame")
		if n and n.Visible then
			local p = n:FindFirstChild("header")
			local u = p and p:FindFirstChild("textLabel")
			if u and (u.Text and string.find(string.lower(u.Text), string.lower(tostring(K)), 1, true)) then
				return true
			end
			local s = n:FindFirstChild("description")
			if s and (s.Text and string.find(string.lower(s.Text), string.lower(tostring(K)), 1, true)) then
				return true
			end
		end
	end
	return false
end
function CheckQuest()
	local K = V.Value
	local n, p, s = "", "", 0
	if KU and (K >= 1 and K <= 9) then
		local n = tostring(u.Team)
		if n == "Marines" then
			return {
				"Trainee",
				"MarineQuest",
				1,
				K
			}
		elseif n == "Pirates" then
			return {
				"Bandit";
				"BanditQuest1",
				1,
				K
			}
		end
	end
	local c = KU and lU.Sea_1 or nU and lU.Sea_2 or pU and lU.Sea_3
	if c then
		for n, p in ipairs(c) do
			if K >= p[1] and K <= p[2] then
				if type(p[6]) == "table" then
					for n = # p - 1, 6, - 1 do
						local u = p[n]
						if WU:CheckMon(u[1]) and K >= u[2] then
							return {
								u[1];
								u[3];
								u[4];
								K
							}
						end
					end
				elseif p[6] and (WU:CheckMon(p[6]) and K >= p[7]) then
					return {
						p[6];
						p[4],
						p[5] + 1;
						K
					}
				end
				return {
					p[3],
					p[4];
					p[5];
					K
				}
			end
		end
	end
	return {
		n;
		p,
		s,
		K
	}
end
function CheckBoss(K)
	local n = pU and iU.Sea_3 or nU and iU.Sea_2 or KU and iU.Sea_1
	if not n then
		return nil
	end
	for n, p in next, n do
		if p[2] == K then
			return p
		end
	end
	return nil
end
function yU.SendNotify(c, K, n, p, u, s)
	pcall(function()
		if rU and (rU.Notification and rU.Notification["Notify"]) then
			rU.Notification:Notify({
				Title = K,
				Description = n;
				Buttons = u,
				Id = s
			}, {
				Time = p or 5
			})
		end
	end)
end
local YU, K1 = nil, nil
local function n1(K)
	if not K then
		return nil
	end
	if typeof(K) == "Vector3" then
		return K
	end
	if typeof(K) == "CFrame" then
		return K.Position
	end
	if typeof(K) == "Instance" and K:IsDescendantOf(workspace) then
		if K:IsA("BasePart") then
			return K.Position
		end
		if K:IsA("Model") then
			local n = K:FindFirstChild("HumanoidRootPart") or K:FindFirstChild("Head") or K.PrimaryPart
			return n and n.Position
		end
	end
	return nil
end
local p1 = getrawmetatable(game)
local u1 = p1.__namecall
setreadonly(p1, false)
p1.__namecall = newcclosure(function(K, ...)
	local n = getnamecallmethod()
	local p = {
		...
	}
	if not checkcaller() and ((n == "FireServer" or n == "InvokeServer")) then
		local n = n1(K1) or n1(YU)
		if n and typeof(p[1]) ~= "boolean" then
			for u = 1, math.min(6, # p), 1 do
				local s = p[u]
				if typeof(s) == "Vector3" then
					p[u] = n
					return u1(K, unpack(p))
				elseif typeof(s) == "CFrame" then
					p[u] = CFrame.new(s.Position, n)
					return u1(K, unpack(p))
				end
			end
		end
	end
	return u1(K, ...)
end)
function NPCPos(K, n)
	local p = V and V.Value or 1
	local function u(K, n)
		if typeof(K) == "Instance" then
			if K:IsA("BasePart") then
				return K.CFrame
			end
			if K:IsA("Model") then
				return K:GetPivot()
			end
		elseif typeof(K) == "CFrame" then
			return K
		elseif typeof(K) == "Vector3" then
			return CFrame.new(K)
		end
		if n and type(n) == "table" then
			if n.CFrame and typeof(n.CFrame) == "CFrame" then
				return n.CFrame
			end
			if n.Position and typeof(n.Position) == "Vector3" then
				return CFrame.new(n.Position)
			end
			if n.Position and typeof(n.Position) == "CFrame" then
				return n.Position
			end
		end
		return nil
	end
	if aU and (aU.Data and aU.Data["NPCList"]) then
		pcall(function()
			if aU.ChangeQuest and n then
				aU.ChangeQuest(n)
			end
		end)
		if n then
			for K, p in next, aU.Data["NPCList"] do
				if p and (p.InternalQuestName and string.lower(p.InternalQuestName) == string.lower(n)) then
					local n = u(K, p)
					if n then
						return n
					end
				end
			end
		end
		for K, n in next, aU.Data["NPCList"] do
			if n and (n.Levels and table.find(n.Levels, p)) then
				local p = u(K, n)
				if p then
					return p
				end
			end
		end
		local s = n and ((n:gsub("Quest.*", "")):gsub("%d+", "")):lower() or ""
		local c = K and (K:match("^(%a+)") and (K:match("^(%a+)")):lower()) or ""
		for K, n in next, aU.Data["NPCList"] do
			if n and type(n) == "table" then
				local p = (tostring(n.NPCName or "")):lower()
				local X = (tostring(n.InternalQuestName or "")):lower()
				if (s ~= "" and ((p:find(s, 1, true) or X:find(s, 1, true)))) or (c ~= "" and (# c >= 4 and p:find(c, 1, true))) then
					local p = u(K, n)
					if p then
						return p
					end
				end
			end
		end
		local X = aU.Data["LastClosestNPC"]
		if X then
			for K, n in next, aU.Data["NPCList"] do
				if n and n.NPCName == X then
					local p = u(K, n)
					if p then
						return p
					end
				end
			end
		end
	end
	local function s(p)
		if not p then
			return nil
		end
		local u = n and ((n:gsub("Quest.*", "")):gsub("%d+", "")):lower() or ""
		local s = K and (K:match("^(%a+)") and (K:match("^(%a+)")):lower()) or ""
		for K, p in next, p:GetChildren() do
			local c = p.Name:lower()
			local X = false
			if u ~= "" and (c:find(u, 1, true) and ((c:find("quest") or c:find("giver")))) then
				X = true
			elseif s ~= "" and (# s >= 4 and c:find(s, 1, true)) then
				X = true
			elseif c:find("quest") and (n and c:find((n:lower()):gsub("quest.*", ""))) then
				X = true
			end
			if X then
				local K = p:FindFirstChild("HumanoidRootPart") or p.PrimaryPart
				if K then
					return K.CFrame
				end
				return p:GetPivot()
			end
		end
		return nil
	end
	local c = s(U:FindFirstChild("NPCs")) or s(P:FindFirstChild("NPCs"))
	if c then
		return c
	end
	if K then
		if not WU.SpawnCache or not WU.SpawnCache[K] then
			local K = P:FindFirstChild("FortBuilderReplicatedSpawnPositionsFolder")
			if K then
				for K, n in next, K:GetChildren() do
					if n:IsA("BasePart") then
						WU.SpawnCache = WU.SpawnCache or {}
						WU.SpawnCache[n.Name] = WU.SpawnCache[n.Name] or {}
						table.insert(WU.SpawnCache[n.Name], n.CFrame)
					end
				end
			end
		end
		local n = WU.SpawnCache and WU.SpawnCache[K]
		if n and # n > 0 then
			return n[1]
		end
	end
	if K then
		local n = WU:GetEnemies(K)
		local p = n and ((n:FindFirstChild("HumanoidRootPart") or n.PrimaryPart))
		if p then
			return p.CFrame
		end
	end
	return nil
end
local s1 = 0
local c1 = nil
local X1 = 70
function GetQuest()
	local K = CheckQuest()
	if not K or not K[2] or K[2] == "" then
		return
	end
	local n = K[1]
	local p = K[2]
	local s = K[3]
	if HasActiveQuest() then
		if VerifyQuest(n) then
			return
		end
		pcall(function()
			yU:FireInvoke("AbandonQuest")
		end)
		task.wait(.2)
	end
	if X.BypassGetQuest then
		yU:FireInvoke("StartQuest", p, s)
		if X.QuestDebounce then
			s1 = tick()
			c1 = p
		end
		task.wait(.3)
		if X.AutoSetSpawnPoint then
			yU:FireInvoke("SetSpawnPoint")
		end
		return
	end
	local c = NPCPos(n, p)
	if not c then
		return
	end
	if WU:GetDistance(c) <= 25 then
		yU:FireInvoke("StartQuest", p, s)
		if X.QuestDebounce then
			s1 = tick()
			c1 = p
		end
		task.wait(.3)
	else
		if u.Character and u.Character:FindFirstChild("HumanoidRootPart") then
			local K = u.Character["HumanoidRootPart"].Position
			local n = typeof(c) == "CFrame" and c.Position or (typeof(c) == "Vector3" and c or (c.Position))
			local p = ((n - K)).Magnitude > 5 and ((n - K)).Unit * 5 or Vector3.zero
			mU:topos(CFrame.new(n - p))
		else
			mU:topos(c)
		end
	end
	if X.AutoSetSpawnPoint then
		yU:FireInvoke("SetSpawnPoint")
	end
end
local A1 = {
	["Blox Fruit"] = {
		tooltip = "Blox Fruit";
		keys = "BloxFruitKeys",
		delay = "BloxFruitDelay"
	},
	Melee = {
		tooltip = "Melee";
		keys = "MeleeKeys",
		delay = "MeleeDelay"
	};
	Sword = {
		tooltip = "Sword";
		keys = "SwordKeys";
		delay = "SwordDelay"
	},
	Gun = {
		tooltip = "Gun";
		keys = "GunKeys",
		delay = "GunDelay"
	}
}
local function a1()
	if not X.AutoSkills then
		return
	end
	if not N then
		return
	end
	local K = X.SelectSkills
	local n = type(K) == "table" and K or {
		K
	}
	for K, n in next, n do
		local p = A1[n]
		if p then
			local K = u.Character
			local n = K and K:FindFirstChildWhichIsA("Tool")
			if not n or n.ToolTip ~= p.tooltip then
				for K, n in next, u.Backpack:GetChildren() do
					if n:IsA("Tool") and n.ToolTip == p.tooltip then
						N:EquipTool(n)
						task.wait(.5)
						break
					end
				end
			end
			local s = ((X[p.delay] or 300)) / 1000
			local c = X[p.keys]
			c = type(c) == "table" and c or {
				c
			}
			for K, n in next, c do
				local p = typeof(n) == "EnumItem" and n or Enum.KeyCode[n]
				if p then
					local K = typeof(n) == "EnumItem" and n.Name or tostring(n)
					local u = ((X[("HoldTime_") .. K] or 0)) / 1000
					e:SendKeyEvent(true, p, false, game)
					if u > 0 then
						task.wait(u)
					else
						task.wait()
					end
					e:SendKeyEvent(false, p, false, game)
					task.wait(s)
				end
			end
		end
	end
end
function checkv3boss()
	return WU:CheckMon("Diamond") or WU:CheckMon("Orbitus") or WU:CheckMon("Jeremy")
end
function EquipSword(K)
	if not u.Character:FindFirstChild(K) then
		yU:FireInvoke("LoadItem", K)
	end
end
function PostWebhook(K, n)
	if not K or K == "" or typeof(K) ~= "string" or not K:find("http") then
		return
	end
	task.spawn(function()
		pcall(function()
			local p = typeof(n) == "table" and y:JSONEncode(n) or tostring(n)
			c({
				Url = K,
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json"
				};
				Body = p
			})
		end)
	end)
end
function WeeboLogs(K, n)
	local p = n or {}
	local s = (">>> **User:** ") .. (u.Name .. (("\n**Event:** ") .. K))
	if p.Position then
		local K = math.floor(u:DistanceFromCharacter(p.Position))
		s = s .. (("\n**Distance:** ") .. (K .. "m"))
	end
	if p.Extra then
		s = s .. (("\n") .. p.Extra)
	end
	local c = {
		{
			name = "Event Details",
			value = s,
			inline = true
		}
	}
	if p.Field2 then
		table.insert(c, {
			name = p.Field2["name"] or "Info";
			value = ("```\n") .. (tostring(p.Field2["value"]) .. "\n```");
			inline = false
		})
	end
	local A = nil
	if X and (X.WebhookPingId and X.WebhookPingId ~= "") then
		if X.WebhookPingOnEvents and ((K:find("Mirage") or K:find("Kitsune") or K:find("Prehistoric"))) then
			A = ("<@") .. (X.WebhookPingId .. ">")
		elseif X.WebhookPingOnMythical and (((tostring(p.Extra)):find("Dragon") or (tostring(p.Extra)):find("Kitsune") or (tostring(p.Extra)):find("Leopard") or (tostring(p.Extra)):find("T-Rex") or (tostring(p.Extra)):find("Mammoth") or (tostring(p.Extra)):find("Dough"))) then
			A = ("<@") .. (X.WebhookPingId .. ">")
		end
	end
	local a = {
		content = A;
		embeds = {
			{
				type = "rich";
				color = 8202738,
				fields = c;
				thumbnail = {
					url = "https://cdn.discordapp.com/attachments/1262751352791236620/1505931000948068513/Screenshot_2026-04-18_235959.png?ex=6a0c6b09&is=6a0b1989&hm=f43a97cbb0b52c83e79ef0247dac0e986d46d7455506a50e106993d36c1dea4b&"
				};
				timestamp = (DateTime.now()):ToIsoDate()
			}
		}
	}
	return a
end
local function D1(K)
	local n, p, u = string.match(tostring(K), "^([^%d]*%d)(%d*)(.-)$")
	if not n then
		return tostring(K)
	end
	return n .. ((((p:reverse()):gsub("(%d%d%d)", "%1,")):reverse()) .. u)
end
local function Q1(K)
	local n = math.floor(K % 60)
	local p = math.floor(((K / 60)) % 60)
	local u = math.floor(K / 3600)
	return string.format("%02d:%02d:%02d", u, p, n)
end
local function S1()
	if not u.Character then
		return "None"
	end
	local K = u.Character:FindFirstChildOfClass("Tool")
	if K then
		return K.Name .. ((" (") .. (((K.ToolTip ~= "" and K.ToolTip or "Weapon")) .. ")"))
	end
	return "None"
end
local function F1()
	local K = {
		{
			"AutoFarmLevel",
			"Level Farm"
		};
		{
			"AutoBone",
			"Bone Farm"
		},
		{
			"AutoCakePrince",
			"Cake Prince"
		},
		{
			"AutoDoughKing";
			"Dough King"
		},
		{
			"AutoTaskEliteHunter",
			"Elite Hunter"
		},
		{
			"AutoChest";
			"Chest Farm"
		},
		{
			"AutoMaterial";
			"Material Farm"
		};
		{
			"AutoRaid";
			"Raid / Dungeon"
		};
		{
			"AutoTrialDracoTP",
			"Draco Trial"
		};
		{
			"AutoSeaEvents",
			"Sea Events"
		},
		{
			"AutoFish",
			"Fish Farm"
		},
		{
			"AutoTTK";
			"True Triple Katana"
		},
		{
			"AutoSoulReaper",
			"Soul Reaper"
		},
		{
			"AutoFactoryRaid";
			"Factory Raid"
		},
		{
			"AutoFarmPirateRaid";
			"Pirate Raid"
		};
		{
			"AutoKaitun";
			"Quantum Kaitun"
		};
		{
			"AutoFindLeviatan";
			"Leviathan Hunt"
		}
	}
	local n = {}
	for K, p in next, K do
		if X[p[1]] then
			table.insert(n, ("[ON] ") .. p[2])
		end
	end
	if # n == 0 then
		return "None (Idle)"
	end
	return table.concat(n, "\n")
end
function H.SendDataLog(p, K, n)
	local s = ((X.DataLogWebhookUrl and X.DataLogWebhookUrl ~= "")) and X.DataLogWebhookUrl or X.Webhook
	if not s or s == "" or typeof(s) ~= "string" or not s:find("http") then
		return
	end
	local c = (V and V.Value) or 0
	local A = (Z and Z.Value) or 0
	local a = (J and J.Value) or 0
	local D = math.max(0, c - S.StartLevel)
	local Q = math.max(0, A - S.StartBeli)
	local F = math.max(0, a - S.StartFragments)
	local H = KU and "Sea 1 (Old World)" or nU and "Sea 2 (Dressrosa)" or pU and "Sea 3 (Zou)" or "Unknown Sea"
	local O = (u:FindFirstChild("leaderstats") and (u.leaderstats:FindFirstChild("Bounty/Honor") and u.leaderstats["Bounty/Honor"].Value)) or "N/A"
	local L = yU.ActiveFunction or "Idle"
	local P = Q1(tick() - S.StartTime)
	local R = math.floor(U:GetRealPhysicsFPS())
	local T = 0
	pcall(function()
		T = math.floor(tonumber((r.Network["ServerStatsItem"]["Data Ping"]:GetValueString()):match("%d+")) or 0)
	end)
	local x = {
		{
			name = "Player Profile",
			value = ("**User:** ") .. (u.Name .. ((" (`") .. (u.UserId .. (("`)\n**Sea:** ") .. (H .. (("\n**Bounty/Honor:** ") .. D1(O)))))));
			inline = true
		};
		{
			name = "Statistics",
			value = ("**Level:** ") .. (D1(c) .. ((" *(+") .. (D1(D) .. ((")*\n**Beli:** $") .. (D1(A) .. ((" *(+$") .. (D1(Q) .. ((")*\n**Fragments:** Frags: ") .. (D1(a) .. ((" *(+") .. (D1(F) .. ")*")))))))))));
			inline = true
		};
		{
			name = "Equipment & Status";
			value = ("**Active Farm:** `") .. (L .. (("`\n**Equipped:** ") .. (S1() .. (("\n**Elapsed Time:** ") .. (P .. (("\n**Performance:** ") .. (R .. ((" FPS | ") .. (T .. " ms")))))))));
			inline = false
		}
	}
	if X.SendWebhookInventory ~= false then
		local K = {}
		local n = {}
		local p = {}
		local u = {}
		local s = {}
		pcall(function()
			local n = (SU:RemoteFunction("GetAllItemValues")):InvokeServer()
			if n and typeof(n) == "table" then
				local p = {}
				for K, n in next, n do
					local u = tostring(n.ItemId) .. (("_") .. tostring(n.NetworkedUID))
					p[u] = p[u] or {
						ItemId = n.ItemId,
						UID = n.NetworkedUID,
						Attributes = {}
					}
					if n.Value ~= nil then
						p[u].Attributes[n.Key] = n.Value
					end
				end
				for n, p in next, p do
					local c = p.Attributes
					if c.IsOwned == true or (c.Quantity and c.Quantity > 0) then
						local n = ""
						local X, A = pcall(function()
							return FU.match(p.ItemId)
						end)
						if X and (A and (A.isOk and A:isOk())) then
							local K = A:unwrap()
							if K and (K.Index and K.Index["DebugLabel"]) then
								n = tostring(K.Index["DebugLabel"])
							end
						end
						local a = n:match("^(.-)%s*%[") or n
						a = a:gsub("^%-%-%s*", "")
						local D = n:match("%[(.-)%]") or ""
						local Q = c.Quantity or 1
						if D:find("PhysicalMoveset") or D:find("Fruit") then
							local n = a:match("^(.-)%-") or a
							table.insert(K, n .. ((Q > 1 and (" (x") .. (Q .. ")") or "")))
						elseif D:find("Accessory") then
							table.insert(u, a)
						elseif D:find("Material") then
							table.insert(s, a .. ((" (") .. (Q .. ")")))
						end
					end
				end
			end
		end)
		table.sort(K)
		table.sort(n)
		table.sort(s)
		local c = # K > 0 and table.concat(K, ", ") or "None"
		if # c > 900 then
			c = c:sub(1, 897) .. "..."
		end
		table.insert(x, {
			name = ("Fruit Storage (") .. (# K .. " Fruits)");
			value = ("```\n") .. (c .. "\n```");
			inline = false
		})
		local X = # n > 0 and table.concat(n, ", ") or "None"
		if # X > 900 then
			X = X:sub(1, 897) .. "..."
		end
		table.insert(x, {
			name = ("Owned Swords (") .. (# n .. ")"),
			value = ("```\n") .. (X .. "\n```");
			inline = false
		})
		if # s > 0 then
			local K = table.concat(s, ", ")
			if # K > 900 then
				K = K:sub(1, 897) .. "..."
			end
			table.insert(x, {
				name = ("Materials (") .. (# s .. ")");
				value = ("```\n") .. (K .. "\n```"),
				inline = false
			})
		end
	end
	if X.SendWebhookFarmsAll then
		table.insert(x, {
			name = "Farms All Status",
			value = ("```\n") .. (F1() .. "\n```"),
			inline = false
		})
	end
	if n then
		table.insert(x, {
			name = "Log Details",
			value = n;
			inline = false
		})
	end
	local e = {
		embeds = {
			{
				title = K or "Quantum Onyx - Blox Fruit Data Log",
				type = "rich";
				color = 3066993,
				fields = x,
				thumbnail = {
					url = ("https://www.roblox.com/headshot-thumbnail/image?userId=") .. (u.UserId .. "&width=420&height=420&format=png")
				};
				footer = {
					text = ("Quantum Onyx | ") .. os.date("%X")
				},
				timestamp = (DateTime.now()):ToIsoDate()
			}
		}
	}
	PostWebhook(s, e)
	S.LastDataLogTick = tick()
end
function H.LogError(u, K, n, p)
end
local H1 = {}
function yU.GetPedestal(K)
	if not I:FindFirstChild("Turtle") or not I.Turtle:FindFirstChild("Cursed") then
		return nil
	end
	local n = I.Turtle["Cursed"]
	if H1.Evil == 3 and n:FindFirstChild("Pedestal2") then
		return n.Pedestal2
	elseif H1.Good == 3 and n:FindFirstChild("Pedestal1") then
		return n.Pedestal1
	elseif ((H1.Evil == 4 and H1.Good == 4)) and n:FindFirstChild("Pedestal3") then
		return n.Pedestal3
	end
	return nil
end
function yU.CDKProgress(K)
	local n = sU:InvokeServer("CDKQuest", "Progress")
	if type(n) ~= "table" then
		return "None"
	end
	local p = n.Evil or - 2
	local u = n.Good or - 2
	H1.Evil = p
	H1.Good = u
	H1.Finished = n.Finished or false
	if n.Finished == true or (p == 4 and u == 4) then
		return "Alucard Boss"
	end
	if u == 0 or u == - 3 then
		return "Boat Quest"
	elseif u == 1 or u == - 4 then
		return "Raid Quest"
	elseif u == 2 or u == - 5 then
		return "Heavenly Quest"
	elseif u == 3 then
		return "Burn Tushita Scroll"
	end
	if p == 0 or p == - 3 then
		return "Pain Quest"
	elseif p == 1 or p == - 4 then
		return "Haze Quest"
	elseif p == 2 or p == - 5 then
		return "Hell Quest"
	elseif p == 3 then
		return "Burn Yama Scroll"
	end
	if u == - 2 and p == - 2 then
		if WU:CheckToolName("Tushita") or ((WU:CheckInventory("Moveset", "Tushita") or 0)) >= 350 then
			return "Start Tushita"
		else
			return "Start Yama"
		end
	elseif u == - 2 then
		return "Start Tushita"
	elseif p == - 2 then
		return "Start Yama"
	end
	return "None"
end
local function O1(K)
	for K, n in ipairs(K) do
		n.Humanoid:ChangeState(Enum.HumanoidStateType["Dead"])
	end
end
function RemoveEffects()
	return function()
		local K = P.Effect["Container"]
		local n = require(P.Util["CameraShaker"])
		local p = require(K:FindFirstChild("Death"))
		local u = require(K:FindFirstChild("Respawn"))
		local s = require(K:FindFirstChild("LevelUp"))
		hookfunction(p, function()
		end)
		hookfunction(s, function()
		end)
		hookfunction(u, function()
		end)
		n:Stop()
	end
end
function round(K)
	return math.floor(K + .5)
end
function GetHeadshotImage(K)
	return string.format("https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=420&height=420&format=png", K)
end
yU._ActiveESPs = yU._ActiveESPs or {}
local function L1()
	local K = u.Character
	if K and K.Parent then
		local n = K:FindFirstChild("HumanoidRootPart") or K:FindFirstChild("Head") or K.PrimaryPart
		if n and n.Parent then
			local K, p = pcall(function()
				return n.Position
			end)
			if K and p then
				return p
			end
		end
	end
	return nil
end
local function U1(K)
	if not K or not K.Parent then
		return 0
	end
	local n = L1()
	if not n then
		return 0
	end
	local p, u = pcall(function()
		return K.Position
	end)
	if not p or not u then
		return 0
	end
	return math.floor(((n - u)).Magnitude)
end
function ClearESP(K)
	for n, p in next, yU._ActiveESPs do
		if not K or p.Category == K then
			if p.Folder and p.Folder["Parent"] then
				pcall(function()
					p.Folder:Destroy()
				end)
			end
			yU._ActiveESPs[n] = nil
		end
	end
end
function AddESP(K, n, p, u, s, c)
	if not K or K:FindFirstChild("ESPquantumONYX") then
		return
	end
	local X = Instance.new("Folder", K)
	X.Name = "ESPquantumONYX"
	yU._ActiveESPs[K] = {
		Folder = X;
		Category = c or "General"
	}
	local A = math.clamp((K.Size["Y"] / 2) + 2.2, 2.6, 40)
	if c == "Player" then
		A = 2.4
	end
	local a = Instance.new("BillboardGui", X)
	a.Name = "ESP_Billboard"
	a.Adornee = K
	a.Size = UDim2.new(0, 260, 0, s and 42 or 26)
	a.StudsOffset = Vector3.new(0, A, 0)
	a.AlwaysOnTop = true
	a.LightInfluence = 0
	a.MaxDistance = 100000
	a.ClipsDescendants = false
	local D = Instance.new("Frame", a)
	D.Name = "IconContainer"
	D.Size = UDim2.new(0, 28, 0, 28)
	D.Position = UDim2.new(0, 0, .5, - 14)
	D.BackgroundTransparency = .25
	D.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
	local Q = Instance.new("UICorner", D)
	Q.CornerRadius = UDim.new(1, 0)
	local S = Instance.new("UIStroke", D)
	S.Color = n or Color3.fromRGB(255, 255, 255)
	S.Thickness = 1.2
	local F = Instance.new("ImageLabel", D)
	F.BackgroundTransparency = 1
	F.Size = UDim2.new(1, 0, 1, 0)
	F.Image = "rbxassetid://0"
	local H = Instance.new("UICorner", F)
	H.CornerRadius = UDim.new(1, 0)
	local O = Instance.new("Frame", a)
	O.Name = "InfoContainer"
	O.BackgroundTransparency = 1
	O.Position = UDim2.new(0, 0, 0, 0)
	O.Size = UDim2.new(1, 0, 1, 0)
	O.ClipsDescendants = false
	local L = Instance.new("TextLabel", O)
	L.Name = "NameLabel"
	L.BackgroundTransparency = 1
	L.TextSize = 12
	L.Font = Enum.Font["GothamBold"]
	L.TextStrokeTransparency = .2
	L.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	L.TextColor3 = Color3.fromRGB(255, 255, 255)
	L.RichText = true
	local U, P, R, T
	local x, e, y, z
	if s then
		L.Size = UDim2.new(1, 0, 0, 16)
		L.Position = UDim2.new(0, 0, 0, 1)
		L.TextYAlignment = Enum.TextYAlignment["Center"]
		L.TextXAlignment = Enum.TextXAlignment["Left"]
		local K = Instance.new("Frame", O)
		K.Name = "BarsContainer"
		K.BackgroundTransparency = 1
		K.Size = UDim2.new(0, 160, 0, 13)
		K.Position = UDim2.new(0, 0, 0, 19)
		K.ClipsDescendants = false
		U = Instance.new("Frame", K)
		U.Name = "HealthBar"
		U.Size = UDim2.new(0, 76, 0, 13)
		U.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
		U.BackgroundTransparency = .3
		U.BorderSizePixel = 0
		U.ClipsDescendants = true
		local n = Instance.new("UICorner", U)
		n.CornerRadius = UDim.new(0, 3)
		R = Instance.new("UIStroke", U)
		R.Color = Color3.fromRGB(50, 255, 100)
		R.Thickness = .8
		R.Transparency = .4
		P = Instance.new("Frame", U)
		P.Name = "Fill"
		P.Size = UDim2.new(1, 0, 1, 0)
		P.BackgroundColor3 = Color3.fromRGB(50, 255, 100)
		P.BackgroundTransparency = .35
		P.BorderSizePixel = 0
		local p = Instance.new("UICorner", P)
		p.CornerRadius = UDim.new(0, 3)
		T = Instance.new("TextLabel", U)
		T.Name = "HealthText"
		T.BackgroundTransparency = 1
		T.Size = UDim2.new(1, 0, 1, 0)
		T.TextSize = 9
		T.Font = Enum.Font["GothamBold"]
		T.TextStrokeTransparency = .15
		T.TextColor3 = Color3.fromRGB(255, 255, 255)
		T.RichText = true
		x = Instance.new("Frame", K)
		x.Name = "EnergyBar"
		x.Size = UDim2.new(0, 76, 0, 13)
		x.Position = UDim2.new(0, 80, 0, 0)
		x.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
		x.BackgroundTransparency = .3
		x.BorderSizePixel = 0
		x.ClipsDescendants = true
		local u = Instance.new("UICorner", x)
		u.CornerRadius = UDim.new(0, 3)
		y = Instance.new("UIStroke", x)
		y.Color = Color3.fromRGB(70, 180, 255)
		y.Thickness = .8
		y.Transparency = .4
		e = Instance.new("Frame", x)
		e.Name = "Fill"
		e.Size = UDim2.new(1, 0, 1, 0)
		e.BackgroundColor3 = Color3.fromRGB(70, 180, 255)
		e.BackgroundTransparency = .35
		e.BorderSizePixel = 0
		local s = Instance.new("UICorner", e)
		s.CornerRadius = UDim.new(0, 3)
		z = Instance.new("TextLabel", x)
		z.Name = "EnergyText"
		z.BackgroundTransparency = 1
		z.Size = UDim2.new(1, 0, 1, 0)
		z.TextSize = 9
		z.Font = Enum.Font["GothamBold"]
		z.TextStrokeTransparency = .15
		z.TextColor3 = Color3.fromRGB(255, 255, 255)
		z.RichText = true
	else
		L.Size = UDim2.new(1, 0, 1, 0)
		L.Position = UDim2.new(0, 0, 0, 0)
		L.TextYAlignment = Enum.TextYAlignment["Center"]
		L.TextXAlignment = Enum.TextXAlignment["Center"]
	end
	local w = ""
	local o = ""
	local G = .1
	task.spawn(function()
		while task.wait(G) do
			if not a or not a.Parent or not K or not K.Parent then
				yU._ActiveESPs[K] = nil
				break
			end
			if p then
				local K, n = pcall(p)
				if K and (n and n ~= w) then
					w = n
					L.Text = n
				end
			end
			if u then
				local K, n = pcall(u)
				if K and (n and n ~= o) then
					o = n
					if n ~= "" and n ~= "rbxassetid://0" then
						F.Image = n
						D.Visible = true
						O.Position = UDim2.new(0, 34, 0, 0)
						O.Size = UDim2.new(1, - 34, 1, 0)
						L.TextXAlignment = Enum.TextXAlignment["Left"]
					else
						D.Visible = false
						O.Position = UDim2.new(0, 0, 0, 0)
						O.Size = UDim2.new(1, 0, 1, 0)
						if not s then
							L.TextXAlignment = Enum.TextXAlignment["Center"]
						end
					end
				end
			else
				if D.Visible then
					D.Visible = false
					O.Position = UDim2.new(0, 0, 0, 0)
					O.Size = UDim2.new(1, 0, 1, 0)
					if not s then
						L.TextXAlignment = Enum.TextXAlignment["Center"]
					end
				end
			end
			if s and U then
				local K, n, p, u, c, X, A = pcall(s)
				if K and n then
					U.Visible = true
					P.Size = UDim2.new(math.clamp(n, 0, 1), 0, 1, 0)
					if p then
						P.BackgroundColor3 = p
						R.Color = p
					end
					T.Text = u or ""
				elseif K then
					U.Visible = false
				end
				if K and (c and x) then
					x.Visible = true
					e.Size = UDim2.new(math.clamp(c, 0, 1), 0, 1, 0)
					if X then
						e.BackgroundColor3 = X
						y.Color = X
					end
					z.Text = A or ""
				elseif K and x then
					x.Visible = false
				end
			end
		end
	end)
end
function PlayerESP()
	if not X.ESPPlayer then
		return
	end
	for K, n in ipairs(n:GetPlayers()) do
		if n ~= u and (n.Character and n.Character["Parent"]) then
			local K = n.Character:FindFirstChild("Head") or n.Character:FindFirstChild("HumanoidRootPart")
			local p = n.Character:FindFirstChildOfClass("Humanoid")
			if K and (p and (p.Health > 0 and not K:FindFirstChild("ESPquantumONYX"))) then
				local p = (u.Team ~= nil and (n.Team ~= nil and n.Team == u.Team))
				local s = p and Color3.fromRGB(0, 255, 140) or Color3.fromRGB(255, 60, 60)
				AddESP(K, s, function()
					if not K or not K.Parent then
						return ""
					end
					local p = U1(K)
					local u = n:FindFirstChild("Data")
					local s = ((u and u:FindFirstChild("Level"))) and tostring(u.Level["Value"]) or "?"
					return string.format("<b>%s</b> <font color='rgb(255,215,0)'>[Lv. %s]</font> \226\128\162 <font color='rgb(210,210,210)'>%dm</font>", n.DisplayName or n.Name, s, p)
				end, function()
					return GetHeadshotImage(n.UserId)
				end, function()
					local K = n.Character
					if not ((K and K.Parent)) then
						return nil
					end
					local u = K:FindFirstChildOfClass("Humanoid")
					if not u or u.Health <= 0 then
						return nil
					end
					local s = math.floor(u.Health)
					local c = math.max(math.floor(u.MaxHealth), 1)
					local X = math.clamp(s / c, 0, 1)
					local A = p and Color3.fromRGB(0, 255, 140) or Color3.fromRGB(50, 255, 100)
					local a = string.format("%d/%d HP", s, c)
					local D, Q = 100, 100
					local S = K:FindFirstChild("Energy")
					if S and S.Value ~= nil then
						D = math.floor(tonumber(S.Value) or 0)
						Q = math.max(tonumber(S.MaxValue) or 100, 1)
					else
						local K = n:FindFirstChild("Data")
						if K and (K:FindFirstChild("Stats") and (K.Stats:FindFirstChild("Melee") and K.Stats["Melee"]:FindFirstChild("Level"))) then
							Q = 100 + (((tonumber(K.Stats["Melee"].Level["Value"]) or 1)) * 5)
							D = Q
						end
					end
					local F = math.clamp(D / Q, 0, 1)
					local H = Color3.fromRGB(70, 180, 255)
					local O = string.format("%d/%d EN", D, Q)
					return X, A, a, F, H, O
				end, "Player")
			end
		end
	end
end
local function P1(K)
	K.CharacterAdded:Connect(function(n)
		task.wait(.4)
		if K == u then
			if X.ESPPlayer then
				pcall(PlayerESP)
			end
			if X.ESPIsland then
				pcall(IslandESP)
			end
			if X.DevilFruitESP then
				pcall(FruitESP)
			end
			if X.ESPChest then
				pcall(ChestESP)
			end
			if X.ESP_Berries then
				pcall(BerryESP)
			end
			if X.ESP_RealFruits then
				pcall(RealFruitESP)
			end
			if X.ESPMyBoat then
				pcall(MyBoatESP)
			end
		else
			if X.ESPPlayer then
				pcall(PlayerESP)
			end
		end
	end)
end
for K, n in ipairs(n:GetPlayers()) do
	P1(n)
end
n.PlayerAdded:Connect(P1)
function IslandESP()
	if not X.ESPIsland then
		return
	end
	local K = f and f:FindFirstChild("Locations")
	if not K then
		return
	end
	for K, n in ipairs(K:GetChildren()) do
		if n:IsA("BasePart") and (n.Name ~= "Sea" and not n:FindFirstChild("ESPquantumONYX")) then
			AddESP(n, Color3.fromRGB(100, 200, 255), function()
				local K = U1(n)
				return string.format("<b><font color='rgb(100,200,255)'>%s</font></b>\n<font color='rgb(200,200,200)'>%d studs</font>", n.Name, K)
			end, nil, nil, "Island")
		end
	end
end
function FruitESP()
	if not X.DevilFruitESP then
		return
	end
	for K, n in ipairs(U:GetChildren()) do
		if n:IsA("Model") and (string.find(n.Name, "Fruit") and n.Name ~= "Fruit1") then
			local K = n:FindFirstChild("Handle") or n.PrimaryPart or n:FindFirstChildWhichIsA("BasePart")
			if K and not K:FindFirstChild("ESPquantumONYX") then
				local p = (n.Name == "Fruit") and "Spawned Fruit" or n.Name
				AddESP(K, Color3.fromRGB(255, 170, 0), function()
					local n = U1(K)
					return string.format("Fruit: <b><font color='rgb(255,170,0)'>%s</font></b>\n<font color='rgb(220,220,220)'>%d studs away</font>", p, n)
				end, nil, nil, "Fruit")
			end
		end
	end
end
function ChestESP()
	if not X.ESPChest then
		return
	end
	local K = U:FindFirstChild("ChestModels")
	if not K then
		return
	end
	for K, n in ipairs(K:GetChildren()) do
		local p = n:FindFirstChild("RootPart") or n.PrimaryPart
		if p and not p:FindFirstChild("ESPquantumONYX") then
			local K = n.Name:lower()
			local u = Color3.fromRGB(255, 255, 255)
			local s = "rbxassetid://0"
			local c = "Chest"
			if K:find("silver") then
				u = Color3.fromRGB(210, 210, 220)
				s = "rbxassetid://97335861533611"
				c = "Silver Chest"
			elseif K:find("gold") then
				u = Color3.fromRGB(255, 215, 0)
				s = "rbxassetid://103232045481498"
				c = "Gold Chest"
			elseif K:find("diamond") then
				u = Color3.fromRGB(0, 230, 255)
				s = "rbxassetid://103232045481498"
				c = "Diamond Chest"
			end
			AddESP(p, u, function()
				local K = U1(p)
				return string.format("<b><font color='rgb(%d,%d,%d)'>%s</font></b>\n<font color='rgb(200,200,200)'>%d studs</font>", u.R * 255, u.G * 255, u.B * 255, c, K)
			end, function()
				return s
			end, nil, "Chest")
		end
	end
end
local R1 = {
	["Yellow Star Berry"] = Color3.fromRGB(255, 220, 50);
	["Red Cherry Berry"] = Color3.fromRGB(255, 65, 65),
	["Purple Jelly Berry"] = Color3.fromRGB(190, 80, 255);
	["Pink Pig Berry"] = Color3.fromRGB(255, 130, 180);
	["Blue Icicle Berry"] = Color3.fromRGB(80, 210, 255),
	["Green Toad Berry"] = Color3.fromRGB(65, 235, 95),
	["Orange Berry"] = Color3.fromRGB(255, 145, 35),
	["White Cloud Berry"] = Color3.fromRGB(240, 240, 255)
}
local T1 = Color3.fromRGB(255, 105, 180)
local x1 = U:FindFirstChild("Quantum_Berry_Anchors")
if not x1 then
	x1 = Instance.new("Folder")
	x1.Name = "Quantum_Berry_Anchors"
	x1.Parent = U
end
local e1 = {}
function BerryESP()
	if not X.ESP_Berries then
		ClearESP("Berry")
		return
	end
	local K = {}
	for n, p in ipairs(R:GetTagged("BerryBush")) do
		local u = p.Parent
		if u then
			local n = u:GetAttribute("CFrame") or (u:IsA("Model") and u:GetPivot())
			for p, s in pairs(p:GetAttributes()) do
				if type(s) == "string" and (# s > 0 and p:sub(1, 12) == "_BerryCFrame") then
					local c = u:GetAttribute(p)
					local X = n and (c and n:ToWorldSpace(c))
					if X then
						local n = u.Name .. (("_") .. p)
						K[n] = true
						local c = e1[n]
						if not c or not c.Parent then
							c = Instance.new("Part")
							c.Name = ("BerryAnchor_") .. s
							c.Size = Vector3.new(1.2, 1.2, 1.2)
							c.Transparency = 1
							c.CanCollide = false
							c.Anchored = true
							c.CFrame = X
							c.Parent = x1
							e1[n] = c
						else
							c.CFrame = X
						end
						if c and not c:FindFirstChild("ESPquantumONYX") then
							local K = R1[s] or T1
							AddESP(c, K, function()
								local n = U1(c)
								return string.format("Berry: <b><font color='rgb(%d,%d,%d)'>%s</font></b>\n<font color='rgb(220,220,220)'>%d studs</font>", K.R * 255, K.G * 255, K.B * 255, s, n)
							end, nil, nil, "Berry")
						end
					end
				end
			end
		end
	end
	for n, p in pairs(e1) do
		if not K[n] then
			if p and p.Parent then
				pcall(function()
					p:Destroy()
				end)
			end
			e1[n] = nil
		end
	end
end
function RealFruitESP()
	if not X.ESP_RealFruits then
		return
	end
	local K = {
		"PineappleSpawner",
		"AppleSpawner";
		"BananaSpawner"
	}
	for K, n in ipairs(K) do
		local p = U:FindFirstChild(n)
		if p and not p:FindFirstChild("ESPquantumONYX") then
			local K = n:gsub("Spawner", "")
			AddESP(p, Color3.fromRGB(50, 205, 50), function()
				local n = U1(p)
				return string.format("Natural Fruit: <b><font color='rgb(50,205,50)'>%s</font></b>\n<font color='rgb(220,220,220)'>%d studs</font>", K, n)
			end, nil, nil, "RealFruit")
		end
	end
	for K, n in ipairs(U:GetChildren()) do
		if n:IsA("Tool") and ((n.Name == "Pineapple" or n.Name == "Apple" or n.Name == "Banana")) then
			local K = n:FindFirstChild("Handle") or (n:IsA("BasePart") and n)
			if K and (K:IsA("BasePart") and not K:FindFirstChild("ESPquantumONYX")) then
				AddESP(K, Color3.fromRGB(50, 205, 50), function()
					local p = U1(K)
					return string.format("Natural Fruit: <b><font color='rgb(50,205,50)'>%s</font></b>\n<font color='rgb(220,220,220)'>%d studs</font>", n.Name, p)
				end, nil, nil, "RealFruit")
			end
		end
	end
end
function MyBoatESP()
	if not X.ESPMyBoat then
		ClearESP("MyBoat")
		return
	end
	local K = U:FindFirstChild("Boats")
	if not K then
		return
	end
	for K, n in ipairs(K:GetChildren()) do
		local p = n:FindFirstChild("Owner")
		local s = ""
		if p then
			if typeof(p.Value) == "Instance" then
				s = p.Value["Name"]
			else
				s = tostring(p.Value or "")
			end
		end
		local c = (s == u.Name or (p and p.Value == u))
		if c then
			local K = n.PrimaryPart or n:FindFirstChildWhichIsA("VehicleSeat") or n:FindFirstChildWhichIsA("BasePart")
			if K and not K:FindFirstChild("ESPquantumONYX") then
				AddESP(K, Color3.fromRGB(0, 255, 180), function()
					local p = U1(K)
					local u = n:FindFirstChild("Health")
					local s = u and string.format(" [%d HP]", u.Value) or ""
					return string.format("My Boat (%s)%s\n%d studs away", n.Name, s, p)
				end, nil, nil, "MyBoat")
			end
		end
	end
end
local function y1(K, n)
	if not K then
		return
	end
	local p = n or 450
	local u = K:GetPivot()
	if u.Position["Y"] < p - 10 then
		pcall(function()
			K:PivotTo(CFrame.new(u.Position["X"], p, u.Position["Z"]))
		end)
	end
	local s = K:FindFirstChildWhichIsA("VehicleSeat", true) or K:FindFirstChild("VehicleSeat", true) or K:FindFirstChildWhichIsA("Seat", true) or K.PrimaryPart
	if s and s:IsA("BasePart") then
		local K = s:FindFirstChild("BoatProtectBP")
		if not K then
			K = Instance.new("BodyPosition")
			K.Name = "BoatProtectBP"
			K.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			K.P = 100000
			K.D = 1000
			K.Position = Vector3.new(u.Position["X"], p, u.Position["Z"])
			K.Parent = s
		else
			K.Position = Vector3.new(u.Position["X"], p, u.Position["Z"])
		end
		local n = s:FindFirstChild("BoatProtectBV")
		if not n then
			n = Instance.new("BodyVelocity")
			n.Name = "BoatProtectBV"
			n.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			n.Velocity = Vector3.zero
			n.P = 100000
			n.Parent = s
		else
			n.Velocity = Vector3.zero
		end
	end
end
local function z1(K)
	if not K then
		return
	end
	pcall(function()
		for K, n in ipairs(K:GetDescendants()) do
			if n.Name == "BoatProtectBP" or n.Name == "BoatProtectBV" then
				n:Destroy()
			end
		end
	end)
end
local function w1(K)
	if not K then
		return
	end
	for K, n in ipairs(K:GetDescendants()) do
		if n:IsA("BasePart") then
			n.CanCollide = false
		end
	end
end
local function o1(K)
	if not ((K and (K.Character and (K.Character:FindFirstChild("HumanoidRootPart") and K.Character:FindFirstChild("Humanoid"))))) then
		return false
	end
	local n = K.Character["HumanoidRootPart"]
	local p = K.Character:FindFirstChild("ForceField") ~= nil
	if p then
		return true
	end
	for K, p in ipairs(U:GetChildren()) do
		if p:IsA("BasePart") and ((p.Name:find("SafeZone") or p.Name:find("PeaceZone"))) then
			local K = ((n.Position - p.Position)).Magnitude
			if K < (p.Size["Magnitude"] / 2 + 10) then
				return true
			end
		end
	end
	return false
end
local function G1(K)
	if not K then
		return false
	end
	if K == u then
		return false
	end
	if not ((K.Character and (K.Character:FindFirstChild("HumanoidRootPart") and (K.Character:FindFirstChild("Humanoid") and K.Character["Humanoid"].Health > 0)))) then
		return false
	end
	if K.Team and (u.Team and K.Team == u.Team) then
		return false
	end
	return true
end
local r1 = {
	Fishman = CFrame.new(28224.057, 14889.427, - 210.587),
	Human = CFrame.new(29237.295, 14889.427, - 206.95);
	Cyborg = CFrame.new(28492, 14901, - 426),
	Skypiea = CFrame.new(28967.408, 14918.075, 234.312);
	Ghoul = CFrame.new(28672.721, 14889.128, 454.596),
	Mink = CFrame.new(29020.66, 14889.427, - 379.268)
}
yU.GameData = ((function()
	local K = {
		CurrentQuest = nil;
		GetPvPTarget = GetPvPTarget
	}
	function K.GetNearest(n, K)
		local p = nil
		local s = K or math.huge
		local c = u.Character
		local A = c and ((c:FindFirstChild("HumanoidRootPart") or c.PrimaryPart))
		if not A then
			return nil
		end
		local a = A.Position
		for K, n in ipairs(M:GetChildren()) do
			local u = n:FindFirstChild("HumanoidRootPart") or n.PrimaryPart
			local c = n:FindFirstChildOfClass("Humanoid")
			if u and (c and c.Health > 0) then
				local K = ((a - u.Position)).Magnitude
				if K <= ((X.checknearestdist or 500)) and K < s then
					s = K
					p = n
				end
			end
		end
		return p
	end
	function K.GetNearestPlayer(K)
		local p, s = nil, math.huge
		local c = u.Character
		local X = c and ((c:FindFirstChild("HumanoidRootPart") or c.PrimaryPart))
		if not X then
			return nil
		end
		local A = X.Position
		for K, n in ipairs(n:GetPlayers()) do
			if n ~= u and (G1(n) and (n.Character and n.Character["Parent"])) then
				local K = n.Character:FindFirstChildOfClass("Humanoid")
				local u = n.Character:FindFirstChild("HumanoidRootPart") or n.Character["PrimaryPart"]
				if K and (K.Health > 0 and (u and not o1(n))) then
					local K = ((u.Position - A)).Magnitude
					if K < s then
						s = K
						p = n
					end
				end
			end
		end
		return p
	end
	function K.PlatesBartilo(K)
		local n = I.Dressrosa["BartiloPlates"]
		local p = BrickColor.new("Sand yellow")
		for K = 1, 8, 1 do
			local u = n[("Plate") .. K]
			if u.BrickColor == p then
				return ("Plate") .. K
			end
		end
	end
	local p = {}
	K.VisitedChests = {}
	K.CurrentChest = nil
	K.ChestTargetTime = 0
	K.ChestNearTime = 0
	local s = K.VisitedChests
	local function c()
		local K = X.ChestFilterType
		if not K then
			return true
		end
		if type(K) == "string" and ((K == "All" or K == "")) then
			return true
		end
		if type(K) == "table" then
			local n = {
				Diamond = false;
				Gold = false;
				Silver = false
			}
			for K, p in pairs(K) do
				if p == "Diamond" then
					n.Diamond = true
				end
				if p == "Gold" then
					n.Gold = true
				end
				if p == "Silver" then
					n.Silver = true
				end
			end
			if n.Diamond and (n.Gold and n.Silver) then
				return true
			end
		end
		return false
	end
	local function A(K, n)
		if not K then
			return
		end
		p[K] = tick() + ((n or 60))
	end
	K.BlacklistChest = A
	local function a(K)
		if not K or not K:IsA("Instance") then
			return
		end;
		(K:GetAttributeChangedSignal("IsDisabled")):Connect(function()
			if not K:GetAttribute("IsDisabled") then
				p[K] = nil
			end
		end)
	end
	for K, n in ipairs(R:GetTagged("_ChestTagged")) do
		a(n)
	end;
	(R:GetInstanceAddedSignal("_ChestTagged")):Connect(a)
	local function D(K)
		if not K then
			return nil
		end
		if K:IsA("BasePart") then
			return K.CFrame
		elseif K:IsA("Model") then
			return K.PrimaryPart and K.PrimaryPart["CFrame"] or K:GetPivot()
		end
		return nil
	end
	local function Q(K)
		local n = D(K)
		return n and n.Position or nil
	end
	local function S(K)
		if not K or not K.Parent then
			return false
		end
		if not R:HasTag(K, "_ChestTagged") then
			return false
		end
		if not K:IsA("BasePart") and not K:IsA("Model") then
			return false
		end
		if p[K] and tick() < p[K] then
			return false
		end
		if K:GetAttribute("IsDisabled") == true or K:GetAttribute("Collected") == true then
			return false
		end
		local n = K:IsA("BasePart") and K or (K.PrimaryPart or K:FindFirstChildWhichIsA("BasePart"))
		if not n then
			return false
		end
		local u = K:FindFirstChildWhichIsA("TouchTransmitter", true)
		if not u then
			return false
		end
		return true
	end
	local function F(K)
		local n = K.Name
		if n == "Chest3" or n == "DiamondChest" or (n:lower()):find("diamond") then
			return "Diamond"
		elseif n == "Chest2" or n == "GoldChest" or (n:lower()):find("gold") then
			return "Gold"
		elseif n == "Chest1" or n == "SilverChest" or (n:lower()):find("silver") or (n:lower()):find("bronze") or (n:lower()):find("wood") or (n:lower()):find("normal") then
			return "Silver"
		end
		if K.Parent then
			local n = K.Parent["Name"]:lower()
			if n:find("diamond") then
				return "Diamond"
			end
			if n:find("gold") then
				return "Gold"
			end
			if n:find("silver") or n:find("bronze") or n:find("wood") or n:find("normal") then
				return "Silver"
			end
		end
		return "Silver"
	end
	local function H(K)
		local n = F(K)
		if n == "Diamond" then
			return 3
		elseif n == "Gold" then
			return 2
		elseif n == "Silver" then
			return 1
		end
		return 0
	end
	local function O(K)
		local n = X.ChestFilterType
		if not n or n == "All" then
			return true
		end
		local p = F(K)
		if type(n) == "table" then
			if # n == 0 then
				return true
			end
			for K, n in pairs(n) do
				if n == p or (type(n) == "string" and n:find(p)) then
					return true
				end
			end
			if n[p] == true then
				return true
			end
			return false
		elseif type(n) == "string" then
			if n == "Diamond" or n == "Diamond Only" then
				return p == "Diamond"
			elseif n == "Gold" or n == "Gold Only" then
				return p == "Gold"
			elseif n == "Silver" or n == "Silver Only" or n == "Normal" or n == "Normal Only" then
				return p == "Silver"
			elseif n == "Diamond & Gold" then
				return p == "Diamond" or p == "Gold"
			elseif n == "Gold & Silver" then
				return p == "Gold" or p == "Silver"
			end
			return true
		end
		return true
	end
	function K.DetectChest(K)
		local n = u.Character and ((u.Character:FindFirstChild("HumanoidRootPart") or u.Character["PrimaryPart"]))
		if not n then
			return nil
		end
		local p = c()
		local X = nil
		local A = - 1
		local a = false
		local D = math.huge
		local F = R:GetTagged("_ChestTagged")
		if p then
			for K, n in pairs(s) do
				if not K or not K.Parent or not R:HasTag(K, "_ChestTagged") then
					s[K] = nil
				end
			end
			local K = 0
			local p = 0
			for n, u in ipairs(F) do
				if S(u) and O(u) then
					K = K + 1
					if not s[u] then
						p = p + 1
					end
				end
			end
			if K > 0 and p == 0 then
				table.clear(s)
			end
			for K, p in ipairs(F) do
				if S(p) and (O(p) and not s[p]) then
					local K = Q(p)
					if K then
						local u = ((n.Position - K)).Magnitude
						local s = p:IsDescendantOf(workspace)
						local c = false
						if s and not a then
							c = true
						elseif s == a and u < D then
							c = true
						end
						if c then
							X = p
							a = s
							D = u
						end
					end
				end
			end
		else
			for K, p in ipairs(F) do
				if S(p) and O(p) then
					local K = Q(p)
					if K then
						local u = ((n.Position - K)).Magnitude
						local s = H(p)
						local c = p:IsDescendantOf(workspace)
						local Q = false
						if s > A then
							Q = true
						elseif s == A then
							if c and not a then
								Q = true
							elseif c == a and u < D then
								Q = true
							end
						end
						if Q then
							X = p
							A = s
							a = c
							D = u
						end
					end
				end
			end
		end
		return X
	end
	function K.GetRaidIslands(K)
		local n = f:WaitForChild("Locations")
		for K = 5, 1, - 1 do
			local p = ("Island ") .. K
			for K, n in ipairs(n:GetChildren()) do
				if n.Name == p and (n:IsA("Part") and ((u.Character["PrimaryPart"].Position - n.Position)).Magnitude < 3500) then
					return n
				end
			end
		end
	end
	function K.GetCurrentRaidIslandIndex(K)
		local n = K:GetRaidIslands()
		if n and n.Name:match("Island (%d+)") then
			return tonumber(n.Name:match("Island (%d+)"))
		end
		return nil
	end
	function K.GetDungeonProps(n, K)
		if not K then
			return nil
		end
		if not K:FindFirstChild("Props") then
			return nil
		end
		for K, n in next, K.Props:GetChildren() do
			if n:GetAttribute("KitsuneMarkActive") == true or n:GetAttribute("Speed") == 5 then
				return n
			end
		end
		return nil
	end
	function K.Checkelites(K)
		for K, n in pairs({
			"Urban";
			"Deandre";
			"Diablo"
		}) do
			if WU:CheckMon(n) then
				return n
			end
		end
		for K, n in pairs({
			"Urban",
			"Deandre",
			"Diablo"
		}) do
			if VerifyQuest(n) then
				return n
			end
		end
		return nil
	end
	function K.DetectPirateRaid(K)
		local n = Vector3.new(- 5542, 314, - 2971)
		for K, p in ipairs(U.Enemies:GetChildren()) do
			local u = p:FindFirstChild("HumanoidRootPart") or p.PrimaryPart
			local s = p:FindFirstChildOfClass("Humanoid")
			if u and (s and (s.Health > 0 and (((u.Position - n)).Magnitude <= 1200 and (not string.find(p.Name:lower(), "indra") and (not string.find(p.Name, "Boss") and p.Name ~= "Blank Buddy"))))) then
				return p
			end
		end
		return nil
	end
	function K.PreventHappen(K)
		if WU:Checkfruit() or WU:CheckToolName("Microchip") or WU:CheckToolName("Special Microchip") or WU:CheckToolName("Fist of Darkness") or WU:CheckToolName("God's Chalice") or u.PlayerGui["Main"].TopHUDList["RaidTimer"].Visible or u:GetAttribute("IslandRaiding") then
			return true
		end
		return false
	end
	function K.GetDungeonIslands(K)
		local n = I:FindFirstChild("Dungeon")
		if not n then
			return nil
		end
		local p, u, s = nil, math.huge, 0
		for K = 1, 100, 1 do
			local c = n:FindFirstChild(tostring(K))
			if c then
				local n = ((v.Position - (c:GetPivot()).Position)).Magnitude
				local X = c:GetExtentsSize()
				local A = math.max(X.X, X.Y, X.Z) / 2 + 100
				if n < A and n < u then
					u = n
					p = c
					s = K
				end
			end
		end
		if not p then
			return nil
		end
		local c = n:FindFirstChild(tostring(s + 1))
		if not c then
			return nil
		end
		if p:FindFirstChild("ExitTeleporter") and p.ExitTeleporter:FindFirstChild("Root") then
			return p.ExitTeleporter["Root"]
		end
		return nil
	end
	function K.HazePosition(K)
		local n = u:FindFirstChild("QuestHaze")
		if not n then
			return nil
		end
		local p, s = nil, math.huge
		for K, n in ipairs(n:GetChildren()) do
			if n.Value > 0 then
				for K, c in pairs(M:GetChildren()) do
					if c:IsA("Model") and (string.find(c.Name, n.Name) and (c:FindFirstChild("HumanoidRootPart") and c:FindFirstChild("HazeESP"))) then
						local K = u:DistanceFromCharacter(c.HumanoidRootPart["Position"])
						if K < s then
							s = K
							p = c.HumanoidRootPart["Position"]
						end
					end
				end
				if not p then
					local K = nil
					for c, X in pairs(f.EnemySpawns:GetChildren()) do
						if string.find(X.Name, n.Name) and not X:FindFirstChild("Ignored") then
							local n = u:DistanceFromCharacter(X.Position)
							if n < s then
								s = n
								p = X.Position
								K = X
							end
						end
					end
					if K and s <= 100 then
						local n = K;
						(Instance.new("IntValue", n)).Name = "Ignored"
					elseif not K then
						for K, p in pairs(f.EnemySpawns:GetChildren()) do
							if string.find(p.Name, n.Name) and p:FindFirstChild("Ignored") then
								p.Ignored:Destroy()
							end
						end
					end
				end
			end
		end
		return p
	end
	function K.HazeMobs(K)
		local n = u:FindFirstChild("QuestHaze")
		if not n then
			return nil
		end
		local p, s = nil, math.huge
		for K, n in ipairs(n:GetChildren()) do
			if n.Value > 0 then
				for K, c in pairs(M:GetChildren()) do
					if c:IsA("Model") and (string.find(c.Name, n.Name) and (c:FindFirstChild("HumanoidRootPart") and (c:FindFirstChild("Humanoid") and (c.Humanoid["Health"] > 0 and (c:FindFirstChild("HazeESP") and yU:IsReady(c)))))) then
						local K = u:DistanceFromCharacter(c.HumanoidRootPart["Position"])
						if K < s then
							s = K
							p = c
						end
					end
				end
			end
		end
		return p
	end
	function K.GetPathButton(K)
		for K, n in next, (I["Boat Castle"].Summoner:FindFirstChild("Circle")):GetChildren() do
			if n and (n.Name == "Part" and (n:FindFirstChild("Part") and n.Part["BrickColor"] ~= BrickColor.new("Lime green"))) then
				return n.Part
			end
		end
	end
	function K.GetPathFruit(K)
		for K, n in next, U:GetChildren() do
			if n:IsA("Tool") or n:IsA("Model") and string.find(n.Name, "Fruit") then
				return n
			end
		end
	end
	function K.CheckQuestStatus(K)
		local n
		pcall(function()
			(AU:WaitForChild("RF/DragonHunter")):InvokeServer({
				Context = "RequestQuest"
			})
		end)
		task.wait(.3)
		pcall(function()
			n = (AU:WaitForChild("RF/DragonHunter")):InvokeServer({
				Context = "Check"
			})
		end)
		local p = false
		local u, s, c
		if n and (type(n) == "table" and n.Text) then
			local K = (tostring(n.Text)):upper()
			local X, A = K:match("%((%d+)/(%d+)%)")
			X = tonumber(X)
			A = tonumber(A)
			local a = ((X and A)) and (A - X) or nil
			if K:find("DESTROY") or K:find("TREE") then
				p = true
				c = 2
				s = a or tonumber(K:match("%d+")) or 10
				u = "Tree"
			elseif K:find("DEFEAT") or K:find("ENFORCER") or K:find("ASSAILANT") or K:find("VENOMOUS") then
				p = true
				c = 1
				s = a or tonumber(K:match("%d+")) or 0
				if K:find("VENOMOUS") or K:find("ASSAILANT") then
					u = "Venomous Assailant"
				else
					u = "Hydra Enforcer"
				end
			end
		end
		return p, u, s, c
	end
	function K.TaskDone(K)
		local n = u.PlayerGui:FindFirstChild("Notifications")
		if n then
			for K, n in ipairs(n:GetChildren()) do
				for K, n in next, n:GetChildren() do
					if n:IsA("TextLabel") and ((string.find(n.Text, "Task completed!") or string.find(n.Text, "Head back to the Dojo") or string.find(n.Text, "Abandoned"))) then
						return true
					end
				end
			end
		end
		return false
	end
	function K.DodgeSeabeast(K)
		for K, n in ipairs(f:GetChildren()) do
			if n:IsA("Part") then
				if n.BrickColor == BrickColor.new("Toothpaste") or n.BrickColor == BrickColor.new("Institutional white") or n.Name:find("LightBullet") then
					return true
				end
			end
		end
		return false
	end
	function K.TerrorDodge(K)
		for K, n in ipairs(f:GetChildren()) do
			local p = n.Name:lower()
			if p:find("sharkslam") or p:find("spin") or p:find("chargemodel") then
				return true
			end
		end
		return false
	end
	local L = {
		["Sea Beast"] = "SeaBeast";
		["Terror Shark"] = "Terrorshark",
		Shark = "Shark";
		Piranha = "Piranha";
		["Fish Crew Member"] = "Fish Crew Member";
		["Pirate Brigade"] = "PirateBrigade",
		["Pirate Grand Brigade"] = "PirateGrandBrigade";
		["Ghost Ship"] = "FishBoat"
	}
	local P = {}
	function K.GetSeaEventTargets(K)
		local n = X.SeaEventTargets
		local p = qU(P)
		if not n then
			return p
		end
		if type(n) == "table" then
			for K, n in pairs(n) do
				if n == true then
					local n = L[K] or K
					table.insert(p, n)
				elseif type(K) == "number" and type(n) == "string" then
					local K = L[n] or n
					table.insert(p, K)
				end
			end
		elseif type(n) == "string" then
			local K = L[n] or n
			table.insert(p, K)
		end
		return p
	end
	function K.TyrantEyes(K)
		local n = I:FindFirstChild("TikiOutpost") and I.TikiOutpost:FindFirstChild("IslandModel")
		if not n then
			return 0
		end
		local p = n:FindFirstChild("IslandChunks") and n.IslandChunks:FindFirstChild("E")
		local u = {
			n:FindFirstChild("Eye1");
			n:FindFirstChild("Eye2");
			p:FindFirstChild("Eye3"),
			p:FindFirstChild("Eye4")
		}
		local s = 0
		for K, n in ipairs(u) do
			if n and n.Transparency == 0 then
				s = s + 1
			end
		end
		return s
	end
	function K.CheckSeaLevel(K)
		local n = {
			"Level 1",
			"Level 2";
			"Level 3",
			"Level 4",
			"Level 5",
			"Level 6";
			"Infinite"
		}
		local p = {
			["Level 1"] = CFrame.new(- 21998.375, 30.0006, - 682.309),
			["Level 2"] = CFrame.new(- 26779.5215, 30.0005, - 822.858);
			["Level 3"] = CFrame.new(- 31171.957, 30.0001, - 2256.9377),
			["Level 4"] = CFrame.new(- 34054.6875, 30.2187, - 2560.1201),
			["Level 5"] = CFrame.new(- 38887.5547, 30.0004, - 2162.9902),
			["Level 6"] = CFrame.new(- 44541.7617, 30.0003, - 1244.8584);
			Infinite = CFrame.new(- 10000000, 31, 37016.25)
		}
		local u = X.SeaLevelSelected
		if typeof(u) == "number" then
			u = n[u] or "Level 6"
		end
		return p[u] or p["Level 6"] or p["Level 1"]
	end
	function K.CheckBerries(K)
		for K, n in next, R:GetTagged("BerryBush") do
			for K, n in pairs(n:GetAttributes()) do
				if K:sub(1, 12) == "_BerryCFrame" and (type(n) == "string" and # n > 0) then
					return true
				end
			end
			for K, n in ipairs(n:GetChildren()) do
				if n:IsA("Model") or n:IsA("BasePart") then
					return true
				end
			end
		end
		return false
	end
	return K
end))()
local B1 = yU.GameData
yU.SubFunction = ((function()
	local K = {}
	function K.Attack(u, n, p)
		if not n then
			return
		end
		if n:FindFirstChild("Ignored") then
			return
		end
		if not g then
			return
		end
		local s = n:FindFirstChildOfClass("Humanoid")
		local c = n:FindFirstChild("HumanoidRootPart") or n.PrimaryPart
		if not c then
			return
		end
		if n:IsDescendantOf(U) and (s and s.Health <= 0) then
			return
		end
		local A = s and s.Health
		if A and A > 0 then
			if K.LastTarget == n then
				if K.LastHealth and A >= K.LastHealth then
					if tick() - ((K.LastHealthTime or tick())) >= 4 then
						local p = n;
						(Instance.new("IntValue", p)).Name = "Ignored"
						K.LastTarget = nil
						K.LastHealth = nil
						K.LastHealthTime = nil
						return
					end
				else
					K.LastHealth = A
					K.LastHealthTime = tick()
				end
			else
				K.LastTarget = n
				K.LastHealth = A
				K.LastHealthTime = tick()
			end
		end
		if JU and JU.AttackManager then
			JU.AttackManager["CurrentTarget"] = n
		end
		mU:topos(WU:GetFarmCFrame(c), true)
		if n:IsDescendantOf(U) then
			if X.MasteryFarm then
				if s and s.Health / s.MaxHealth > X.HealthMob / 100 then
					K1 = nil
					WU:EquipWeapon()
				else
					K1 = c
					a1()
					K1 = nil
				end
			else
				K1 = nil
				if X.AutoMasterySwords then
					WU:EquipWeapon("Sword")
				else
					WU:EquipWeapon()
				end
			end
			WU:AutoHaki()
			if p ~= false and X.BringMonster then
				WU:BringEnemies(n)
			end
		end
	end
	function GetNearestBoatDealerCF()
		local K = u.Character and (u.Character:GetPivot()).Position or Vector3.zero
		local n = nil
		local p = math.huge
		local s = U:FindFirstChild("NPCs")
		if s then
			for u, s in ipairs(s:GetChildren()) do
				if s.Name:find("Boat Dealer") or s.Name:find("Luxury Boat") then
					local u = s:GetPivot()
					local c = ((u.Position - K)).Magnitude
					if c < p then
						p = c
						n = u
					end
				end
			end
		end
		if not n or p > 15000 then
			local u = {}
			if pU then
				u = {
					Vector3.new(- 16927.451, 9.086, 433.864),
					Vector3.new(- 5400, 15, - 2900),
					Vector3.new(- 6078, 15, - 2207),
					Vector3.new(- 13274, 15, - 7814);
					Vector3.new(5200, 15, 1000),
					Vector3.new(2284, 15, 905)
				}
			elseif nU then
				u = {
					Vector3.new(- 5330, 5, - 714);
					Vector3.new(- 25, 15, 874);
					Vector3.new(- 2200, 15, - 3000);
					Vector3.new(600, 15, - 5300),
					Vector3.new(- 3000, 15, - 10000)
				}
			else
				u = {
					Vector3.new(94, 5, 1374),
					Vector3.new(- 2800, 5, 2100);
					Vector3.new(- 1400, 15, 300),
					Vector3.new(- 1100, 15, 3900);
					Vector3.new(1060, 16, 1428),
					Vector3.new(- 650, 15, 1500),
					Vector3.new(1100, 15, - 1200),
					Vector3.new(- 4800, 15, 4200),
					Vector3.new(4800, 15, 700);
					Vector3.new(5100, 15, 4100)
				}
			end
			for u, s in ipairs(u) do
				local c = ((s - K)).Magnitude
				if c < p then
					p = c
					n = CFrame.new(s)
				end
			end
		end
		return n or (pU and CFrame.new(- 16927.451, 9.086, 433.864) or nU and CFrame.new(- 5330, 5, - 714) or CFrame.new(94, 5, 1374))
	end
	function NormalizeBoatName(K)
		local n = K or X.BoatSelected
		if typeof(n) == "number" and (Data and Data.BoatsList) then
			n = Data.BoatsList[n]
		end
		if typeof(n) ~= "string" or n == "" then
			n = (pU and "Beast Hunter" or "PirateBrigade")
		end
		local p = u and (u.Team and tostring(u.Team)) or "Pirates"
		local s = string.find(p, "Marine") ~= nil
		if s then
			if n == "PirateSloop" or n == "Sloop" then
				return "MarineSloop"
			elseif n == "PirateBrigade" or n == "Brigade" then
				return "MarineBrigade"
			elseif n == "PirateGrandBrigade" or n == "Grand Brigade" then
				return "MarineGrandBrigade"
			end
		else
			if n == "MarineSloop" or n == "Sloop" then
				return "PirateSloop"
			elseif n == "MarineBrigade" or n == "Brigade" then
				return "PirateBrigade"
			elseif n == "MarineGrandBrigade" or n == "Grand Brigade" then
				return "PirateGrandBrigade"
			end
		end
		return n
	end
	yU.NormalizeBoatName = NormalizeBoatName
	function BuyBoatSafe(K, n)
		local p = NormalizeBoatName(K)
		local u = GetNearestBoatDealerCF()
		if not n and (WU and WU:GetDistance(u) > 25) then
			mU:topos(u)
			return false
		end
		sU:InvokeServer("BuyBoat", p)
		return true
	end
	function K.AutoBoatSail(p, n)
		local s = u.Character
		local c = s and s:FindFirstChildOfClass("Humanoid")
		local A = s and ((s:FindFirstChild("HumanoidRootPart") or s.PrimaryPart))
		if not s or not c or c.Health <= 0 or not A then
			mU:StopBoatTween()
			return
		end
		local a = GetSelectedBoat()
		local D = false
		if not a or not IsBoatAlive(a) then
			D = true
		else
			local K = (a:GetPivot()).Position
			local n = ((A.Position - K)).Magnitude
			if n > 3000 then
				D = true
			end
		end
		if D then
			mU:StopBoatTween()
			local K = f.Locations:FindFirstChild("Tiki Outpost")
			local n = K and K.Position or Vector3.new(- 16641.5, 213.3, 435.4)
			if ((A.Position - n)).Magnitude > 3000 then
				if s:FindFirstChild("Head") then
					s.Head:Destroy()
				else
					c.Health = 0
				end
				return
			end
			local p = GetNearestBoatDealerCF()
			local u = ((A.Position - p.Position)).Magnitude
			if u <= 25 then
				BuyBoatSafe(X.BoatSelected)
			else
				mU:topos(p)
			end
			return
		end
		local Q = a:FindFirstChildWhichIsA("VehicleSeat", true) or a:FindFirstChild("VehicleSeat", true) or a:FindFirstChildWhichIsA("Seat", true)
		if X.AutoRepairBoat and K:AutoRepairBoat(a) then
			mU:StopBoatTween()
			return
		end
		if not c.Sit then
			mU:StopBoatTween()
			if Q and Q:IsA("BasePart") then
				mU:topos(Q.CFrame * CFrame.new(0, 1.5, 0))
				task.wait(.3)
			end
			return
		end
		mU:toposboat(n or B1:CheckSeaLevel())
	end
	function K.AutoRepairBoat(n, K)
		local p = u.Character
		local s = p and p:FindFirstChildOfClass("Humanoid")
		if not ((p and (s and s.Health > 0))) then
			return false
		end
		local c = u:FindFirstChild("PlayerGui")
		local X = c and c:FindFirstChild("Main")
		local A = X and X:FindFirstChild("BottomHUDList")
		local a = A and A:FindFirstChild("ShipHealthBar")
		if not ((a and a.Visible)) then
			return false
		end
		local D = a:FindFirstChild("TextLabel")
		if not ((D and D.Text)) then
			return false
		end
		local Q = string.gsub(D.Text, "Ship ", "")
		local S = string.split(Q, "/")
		local F, H = tonumber(S[1]), tonumber(S[2])
		if not ((F and (H and F < H))) then
			return false
		end
		K = K or GetSelectedBoat()
		if not K then
			return false
		end
		local O = K.PrimaryPart or K:FindFirstChild("VehicleSeat") or K:FindFirstChildWhichIsA("BasePart")
		if not O then
			return false
		end
		if u:DistanceFromCharacter(O.Position) < 20 then
			if not s.Sit then
				local K = p:FindFirstChild("_RepairHammer")
				if K then
					local n = K:FindFirstChild("M1UP")
					if n then
						n:Destroy()
					elseif not K:GetAttribute("Repairing") then
						local n = K:FindFirstChild("M1Down")
						if n then
							n:FireServer("Default")
							task.wait(.5)
						end
					end
				else
					local K = WU:CheckToolName("_RepairHammer")
					if K and K.Parent == u.Backpack then
						s:EquipTool(K)
						task.wait(.2)
					else
						local K = uU:FindFirstChild("SubclassNetwork")
						local n = K and K:FindFirstChild("UseSubclass")
						if n then
							n:InvokeServer({
								Action = "RequestHammer"
							})
							task.wait(3)
						end
					end
				end
			else
				s.Sit = false
				mU:topos(O.CFrame * CFrame.new(0, 15, 0))
			end
		else
			mU:topos(O.CFrame * CFrame.new(0, 15, 0))
		end
		return true
	end
	function K.AttackTree(K)
		local n = I:FindFirstChild("TikiOutpost") and (I.TikiOutpost:FindFirstChild("IslandModel") and (I.TikiOutpost["IslandModel"]:FindFirstChild("IslandChunks") and (I.TikiOutpost["IslandModel"].IslandChunks:FindFirstChild("D") and I.TikiOutpost["IslandModel"].IslandChunks["D"]:FindFirstChild("EagleBossArena"))))
		if not n then
			return
		end
		for K, n in ipairs(n:GetChildren()) do
			if n.Name == "Tree" and (n:IsA("Model") and n:FindFirstChild("Group")) then
				local K = (n.Group:GetChildren())[1]
				if K then
					local n = K.CFrame["Position"]
					mU:topos(K.CFrame * CFrame.new(0, 15, 0))
					if u:DistanceFromCharacter(n) <= 75 then
						if X.ShootGunTyrant then
							local K = X.SelectGunTyrant or "Skull Guitar"
							if not u.Character:FindFirstChild(K) then
								local n = u.Backpack:FindFirstChild(K) or u.Backpack:FindFirstChild("Skull Guitar")
								if n and u.Character:FindFirstChild("Humanoid") then
									u.Character["Humanoid"]:EquipTool(n)
								else
									sU:InvokeServer("LoadItem", K)
								end
								task.wait(.2)
							end
							WU:EquipWeapon("Gun")
							task.wait(.15)
							EU(n)
							local p = u.Character:FindFirstChildOfClass("Tool")
							if p and p:FindFirstChild("RemoteEvent") then
								pcall(function()
									p.RemoteEvent:FireServer("TAP", n)
								end)
							end
						else
							YU = n
							a1()
							YU = nil
						end
						break
					end
				end
			end
		end
	end
	return K
end))()
local l1 = yU.SubFunction
yU.Functions = yU.Functions or {}
yU.Loops = yU.Loops or {}
yU.FunctionList = yU.FunctionList or {}
yU.ActiveFunction = yU.ActiveFunction or nil
yU.FunctionDisplayNames = yU.FunctionDisplayNames or {}
local i1 = {
	"AutoFactoryRaid";
	"AutoFarmPirateRaid";
	"AutoSoulReaper",
	"AutoTaskEliteHunter",
	"Tweenfruit",
	"AutoBerrySafe"
}
function yU.IsMultiFunction(K)
	for n, p in ipairs(i1) do
		if p == K then
			return true
		end
	end
	return false
end
local k1 = oU.BossMap or {}
local d1 = oU.BossHopNames or {}
yU.LoadLibrary = function()
	local K = rU:CreateWindow({
		Title = "Quantum Onyx";
		Subtitle = "Blox Fruit",
		Version = "v.Developer",
		Theme = "Purple",
		Credits = {
			{
				Name = "Vin ",
				Role = "ServerOwner"
			},
			{
				Name = "Flazhy ",
				Role = "MainDeveloper"
			},
			{
				Name = "Kiel ";
				Role = "WebDesigner"
			};
			{
				Name = "CudalPH ",
				Role = "Tester"
			};
			{
				Name = "Pierce ";
				Role = "Support"
			}
		};
		SaveFile = "BloxFruits"
	})
	local p = {
		Home = K:AddTab("Home", "home-quantum");
		Sub = K:AddTab("Sub Farm", "swords-quantum");
		Sevent = K:AddTab("Sea Event", "ship-quantum");
		Player = K:AddTab("Player", "user-quantum"),
		Dragon = K:AddTab("Dragon Update", "visual-quantum");
		Raid = K:AddTab("Dungeon", "raid-quantum");
		Trial = K:AddTab("Trials", "rabbit-quantum"),
		Travel = K:AddTab("Travel", "map-quantum");
		Shop = K:AddTab("Tiktok Shop", "cart-quantum");
		Misc = K:AddTab("Misc", "misc-quantum"),
		Web = K:AddTab("Webhook", "cat-quantum")
	}
	local s = {}
	function s.CreateToggle(c, K, n, p, u, s)
		s = s or {}
		if s.global then
			X[p] = u
		end
		yU.Toggles = yU.Toggles or {}
		local A = (s.save ~= false) and p or nil
		local function a(K, n)
			local u = K and K[p]
			if not u then
				return
			end
			if n and u.Start then
				u.Start()
			elseif not n and u.Stop then
				u.Stop()
			elseif not n then
				u.Running = false
			end
		end
		local D = K:addToggle(n, u, function(K)
			X[p] = K
			a(yU.Functions, K)
			a(yU.Loops, K)
			if not K and yU.ActiveFunction == p then
				yU.ActiveFunction = nil
			end
			if type(s.callback) == "function" then
				s.callback(K)
			end
		end, s.locked, s.description, A)
		if p then
			yU.Toggles[p] = D
		end
		return D
	end
	function s.CreateDropdown(a, K, n, p, u, s, c, A)
		c = c or {}
		if c.global then
			X[p] = u
		end
		local D = (c.save ~= false) and p or nil
		return K:addDropdown(n, u, s, function(K)
			if c.global then
				X[p] = K
			end
			X[p] = K
			if type(c.callback) == "function" then
				c.callback(K)
			end
		end, c.locked, A, D)
	end
	function s.CreateSlider(a, K, n, p, u, s, c, A)
		A = A or {}
		if A.global then
			X[p] = c
		end
		local D = (A.save ~= false) and p or nil
		return K:addSlider(n, u, s, c, function(K)
			if A.global then
				X[p] = K
			end
			X[p] = K
			if type(A.callback) == "function" then
				A.callback(K)
			end
		end, A.locked, A.step, D)
	end
	function s.CreateTextbox(s, K, n, p, u)
		u = u or {}
		if u.global then
			X[p] = u.default or ""
		end
		local c = (u.save ~= false) and p or nil
		return K:addTextbox(n, function(K)
			if u.global then
				X[p] = K
			end
			X[p] = K
			if type(u.callback) == "function" then
				u.callback(K)
			end
		end, u.confirmText, c)
	end
	local c = KU and "Sea_1" or nU and "Sea_2" or pU and "Sea_3"
	local A = {}
	A.Materials = (oU.Materials and (c and oU.Materials[c])) or {}
	A.BossNames = (oU.BossNames and (c and oU.BossNames[c])) or {}
	A.BoatsList = oU.BoatsList or {}
	A.ZoneList = oU.ZoneList or {}
	A.SeaEventTargets = oU.SeaEventTargets or {}
	A.RodsList = oU.RodsList or {}
	A.BaitsList = oU.BaitsList or {}
	local a = {}
	pcall(function()
		local K = require(P.Raids)
		for K, n in pairs(K.raids) do
			table.insert(a, n)
		end
		for K, n in pairs(K.advancedRaids) do
			table.insert(a, n)
		end
	end)
	A.Raids_Chip = a
	A.DungeonCards = oU.DungeonCards or {}
	A.TrainMethods = oU.TrainMethods or {}
	local D = KU and "Sea 1" or nU and "Sea 2" or pU and "Sea 3" or nil
	A.ActiveIslands = D and (dU and dU[D]) or {}
	local Q = {}
	for K, n in next, A.ActiveIslands do
		table.insert(Q, K)
	end
	A.IslandsList = Q
	local S = {}
	local O = oU.IgnoreNPC or {
		"Quest",
		"Boat";
		"Home"
	}
	for K, n in next, P.NPCs:GetChildren() do
		local p = false
		local u = n.Name:lower()
		for K, n in next, O do
			if u:find(n:lower(), 1, true) then
				p = true
				break
			end
		end
		if not p then
			table.insert(S, n.Name)
		end
	end
	A.NPCList = S
	A.LegendarySwordNames = oU.LegendarySwordNames or {}
	A.BossHopNames = oU.BossHopNames or d1 or {}
	local L = {}
	for K in pairs(jU or {}) do
		table.insert(L, K)
	end
	table.sort(L)
	A.MeleeNames = L
	local function R(K)
		local n = {}
		for K, p in pairs(K or {}) do
			table.insert(n, K)
		end
		return n
	end
	A.AbilityNames = R(kU and kU.Ability)
	A.GunNames = R(kU and kU.Gun)
	A.AccessoryNames = R(kU and kU.Accessory)
	A.DealerFruitList = oU.DealerFruitList or {}
	A.ScrollList = oU.ScrollList or {}
	A.ChestTiers = oU.ChestTiers or {
		"Diamond";
		"Gold",
		"Silver"
	}
	A.AdminPanelGrid = {
		{
			Label = "Teleport Tool";
			Callback = function()
				local K = u:GetMouse()
				local n = u.Backpack:FindFirstChild("Teleport Tool") or (u.Character and u.Character:FindFirstChild("Teleport Tool"))
				if n then
					n:Destroy()
				end
				local p = Instance.new("Tool")
				p.RequiresHandle = false
				p.CanBeDropped = false
				p.Name = "Teleport Tool"
				p:SetAttribute("ItemId", 1173)
				p.ToolTip = "Tool"
				p.Activated:Connect(function()
					local n = u.Character
					local p = n and n:FindFirstChild("HumanoidRootPart")
					if p and (K and K.Hit) then
						local n = K.Hit["Position"] + Vector3.new(0, 3.5, 0)
						p.CFrame = CFrame.new(n, n + p.CFrame["LookVector"])
					end
				end)
				p.Parent = u.Backpack
			end
		};
		{
			Label = "Summon Heaven Dimension",
			Callback = function()
				if GU and GU.SummonIsland then
					GU:SummonIsland("Heaven Dimension")
				end
			end
		},
		{
			Label = "Summon Pakistan Dimension";
			Callback = function()
				if GU and GU.SummonIsland then
					GU:SummonIsland("Pakistan Dimension")
				end
			end
		},
		{
			Label = "Summon Red Legion Hideout";
			Callback = function()
				if GU and GU.SummonIsland then
					GU:SummonIsland("Red Legion Hideout")
				end
			end
		};
		{
			Label = "Summon Rip Family Arena",
			Callback = function()
				if GU and GU.SummonIsland then
					GU:SummonIsland("Rip Family Arena")
				end
			end
		};
		{
			Label = "Summon Pocket Dimension",
			Callback = function()
				if GU and GU.SummonIsland then
					GU:SummonIsland("Pocket Dimension")
				end
			end
		};
		{
			Label = "Summon Rip Family Hideout",
			Callback = function()
				if GU and GU.SummonIsland then
					GU:SummonIsland("Rip Family Hideout")
				end
			end
		};
		{
			Label = "Give Triple DarkBlade";
			Callback = function()
				if GU and GU.GiveDarkBlade then
					GU:GiveDarkBlade()
				end
			end
		};
		{
			Label = "Give Celestial Art",
			Callback = function()
				if GU and GU.GiveCelestialArt then
					GU:GiveCelestialArt()
				end
			end
		},
		{
			Label = "Give Divine Art";
			Callback = function()
				if GU and GU.GiveDivineArt then
					GU:GiveDivineArt()
				end
			end
		},
		{
			Label = "Give Tensei",
			Callback = function()
				if GU and GU.GiveTensei then
					GU:GiveTensei()
				end
			end
		};
		{
			Label = "Give All Kamui Tools";
			Callback = function()
				if GU and GU.GiveAllKamuis then
					GU:GiveAllKamuis()
				end
			end
		};
		{
			Label = "Rain Fruit New",
			Callback = function()
				if GU and GU.GiveFruitRain then
					GU:GiveFruitRain()
				end
			end
		},
		{
			Label = "Give Black Blast";
			Callback = function()
				if GU and GU.GiveBlackBlast then
					GU:GiveBlackBlast()
				end
			end
		};
		{
			Label = "Give Black Nuke",
			Callback = function()
				if GU and GU.GiveBlackNuke then
					GU:GiveBlackNuke()
				end
			end
		};
		{
			Label = "Give Rogue Fruit",
			Callback = function()
				if GU and GU.GiveRougeFruit then
					GU:GiveRougeFruit()
				end
			end
		}
	}
	local e = {}
	e.OnAutoLoadScript = function()
		if X.AutoLoadScriptonLoad then
			local K = X.TeamSelectLoad or "Pirates"
			local n = string.format(" task.wait(1) getgenv().Team = \"%s\" loadstring(game:HttpGet(\"https://raw.githubusercontent.com/lguy8068-lang/Quantum-Onyx-Fixed/refs/heads/main/Quantum%20Onyx%20Loader.lua\"))() ", K)
			local p = pcall(function()
				syn.queue_on_teleport(n)
			end)
			if not p then
				pcall(function()
					queue_on_teleport(n)
				end)
			end
		end
	end
	e.ToggleDamageCounter = function(K)
		pcall(function()
			P.Assets["GUI"].DamageCounter["Enabled"] = not K
		end)
	end
	e.ToggleNotifications = function(K)
		pcall(function()
			u.PlayerGui["Notifications"].Enabled = not K
		end)
	end
	local y = nil
	e.ToggleWalkInWater = function(K)
		X.Water = K
		if K then
			if y then
				task.cancel(y)
				y = nil
			end
			y = task.spawn(function()
				local K = U:FindFirstChild("Map") or U:WaitForChild("Map", 5)
				local n = K and ((K:FindFirstChild("WaterBase-Plane") or K:WaitForChild("WaterBase-Plane", 5)))
				while X.Water do
					if n then
						n.Size = Vector3.new(1000, 113, 1000)
					end
					task.wait(.5)
				end
				if n then
					n.Size = Vector3.new(1000, 80, 1000)
				end
			end)
		end
	end
	local z = os.time()
	e.OnAutoHop30Mins = function(K)
		if not K then
			return
		end
		if os.time() - z >= 1800 then
			if yU and yU.SendNotify then
				yU:SendNotify("Server Hop", "30 minutes elapsed. Hopping to a new server...", 4)
			end
			WU:ServerHop()
		else
			local K = 1800 - ((os.time() - z))
			warn(("[AutoHop] Wait %dm %ds"):format(math.floor(K / 60), K % 60))
		end
	end
	local w = nil
	local o = {
		"red_game43",
		"rip_indra",
		"Axiore";
		"Polkster",
		"wenlocktoad",
		"Daigrock";
		"toilamvidamme",
		"oofficialnoobie",
		"Uzoth";
		"Azarth",
		"arlthmetic";
		"Death_King";
		"Lunoven";
		"TheGreateAced",
		"rip_fud",
		"drip_mama",
		"layandikit12";
		"Hingoi"
	}
	e.ToggleHopAdmin = function(K)
		X.HopWhenAdmin = K
		if K then
			if w then
				task.cancel(w)
				w = nil
			end
			w = task.spawn(function()
				while X.HopWhenAdmin do
					task.wait(1.5)
					for K, n in ipairs(n:GetPlayers()) do
						if table.find(o, n.Name) then
							if yU and yU.SendNotify then
								yU:SendNotify("Server Hop", ("Admin detected (") .. (n.Name .. ")! Hopping..."), 5)
							end
							WU:ServerHop(0)
							break
						end
					end
				end
			end)
		end
	end
	local G = nil
	e.ToggleAntiAFK = function(K)
		X.AntiAFK = K
		if K then
			if G then
				task.cancel(G)
				G = nil
			end
			G = task.spawn(function()
				while X.AntiAFK do
					if i then
						pcall(function()
							i:CaptureController()
							i:ClickButton1(Vector2.new(0, 0))
						end)
					end
					task.wait(300)
				end
			end)
		end
	end
	e.RemoveEffects = function()
		if RemoveEffects then
			(RemoveEffects())()
		end
	end
	e.BribeLeviathan = function()
		sU:InvokeServer("InfoLeviathan", "2")
	end
	e.GetAllBoats = function()
		local K = {
			"My Boat"
		}
		if U:FindFirstChild("Boats") then
			for n, p in ipairs(U.Boats:GetChildren()) do
				if p.Name ~= "Boat" and not table.find(K, p.Name) then
					table.insert(K, p.Name)
				end
			end
		end
		return K
	end
	e.BuyNewBoat = function()
		local K = (NormalizeBoatName and NormalizeBoatName(X.BoatSelected))
		sU:InvokeServer("BuyBoat", K)
	end
	e.OpenFishIndex = function()
		pcall(function()
			(u:WaitForChild("PlayerGui")):SetAttribute("FishIndexVisible", true)
		end)
	end
	e.GetStatsInfo = function()
		if not u:FindFirstChild("Data") or not m then
			return "Loading..."
		end
		local K, n = m.Stats, m.Points
		if not K or not n then
			return "No Stats"
		end
		local p = {
			("Points Available: ") .. tostring(n.Value)
		}
		local s = {
			"Melee",
			"Defense";
			"Sword",
			"Gun",
			"Demon Fruit"
		}
		for n, u in ipairs(s) do
			local s = K:FindFirstChild(u) and (K[u]:FindFirstChild("Level") and K[u].Level["Value"]) or 0
			table.insert(p, u .. ((": ") .. s))
		end
		return table.concat(p, "\n")
	end
	local r = nil
	e.AutoStats = function()
		local function K(K)
			if not m or not m.Points then
				return
			end
			local n = m.Points["Value"]
			if n >= 1 and (X.PointsSlider and X.PointsSlider > 0) then
				local p = math.clamp(X.PointsSlider, 1, n)
				sU:InvokeServer("AddPoint", K, p)
			end
		end
		if r then
			task.cancel(r)
			r = nil
		end
		r = task.spawn(function()
			while X.AutoStats do
				task.wait(.3)
				if X.Melee then
					K("Melee")
				end
				if X.Defense then
					K("Defense")
				end
				if X.Sword then
					K("Sword")
				end
				if X.Gun then
					K("Gun")
				end
				if X.DemonFruit then
					K("Demon Fruit")
				end
			end
		end)
	end
	e.GetPlayerList = function()
		local K = {
			"Nearest"
		}
		for n, p in ipairs(n:GetChildren()) do
			if p.Name ~= u.Name then
				table.insert(K, p.Name)
			end
		end
		return K
	end
	local B = nil
	e.OnCamLockToggle = function(K)
		X.CamLock = K
		if B then
			B:Disconnect()
			B = nil
		end
		if K then
			B = T.RenderStepped:Connect(function()
				if not X.CamLock then
					if B then
						B:Disconnect()
						B = nil
					end
					return
				end
				pcall(function()
					local K = ((X.SelectPlayer == "Nearest" or not X.SelectPlayer)) and B1:GetNearestPlayer() or n:FindFirstChild(X.SelectPlayer)
					local p = K and K.Character
					local u = p and p:FindFirstChildOfClass("Humanoid")
					local s = p and ((p:FindFirstChild("Head") or p:FindFirstChild("HumanoidRootPart") or p.PrimaryPart))
					if s and (u and u.Health > 0) then
						local K = U.CurrentCamera or U.Camera
						if K then
							K.CFrame = CFrame.new(K.CFrame["Position"], s.Position)
						end
					end
				end)
			end)
		end
	end
	local function l()
		pcall(function()
			local K = U.CurrentCamera or U.Camera
			local n = u.Character and u.Character:FindFirstChildOfClass("Humanoid")
			if K and n then
				K.CameraSubject = n
			end
		end)
	end
	local function k()
		if not X.SpectatePlayer then
			l()
			return
		end
		pcall(function()
			local K = ((X.SelectPlayer == "Nearest" or not X.SelectPlayer)) and B1:GetNearestPlayer() or n:FindFirstChild(X.SelectPlayer)
			local p = K and (K.Character and K.Character:FindFirstChildOfClass("Humanoid"))
			local s = U.CurrentCamera or U.Camera
			if s then
				if p and p.Health > 0 then
					s.CameraSubject = p
				else
					local K = u.Character and u.Character:FindFirstChildOfClass("Humanoid")
					if K then
						s.CameraSubject = K
					end
				end
			end
		end)
	end
	e.OnSpectateToggle = function(K)
		X.SpectatePlayer = K
		if not K then
			l()
		else
			k()
		end
	end
	e.OnTPPlayerToggle = function(K)
		X.TeleporttoPlayer = K
		if not K then
			mU:StopTween()
		end
	end
	e.GetPlayerHunterQuest = function()
		if pU then
			pcall(function()
				sU:InvokeServer("PlayerHunter")
			end)
		end
	end
	local function d()
		local K = x:FindFirstChild("FantasySky") or x:FindFirstChild("Sky")
		return K and K.MoonTextureId or ""
	end
	local function j()
		local K = x:GetAttribute("MoonPhase")
		local n = tostring(d())
		local p = x.ClockTime
		local u = (p >= 18 or p <= 5.5)
		local s = x:GetAttribute("IsBlueMoon") == true
		if s then
			return "Blue Moon (Active)"
		end
		if K == 5 or n:find("9709149431") then
			return u and "Full Moon (Active)" or "Full Moon (Tonight)"
		elseif K == 4 then
			return "Phase 4 (Next Night Full Moon)"
		elseif K then
			local n = ((5 - K)) % 8
			return string.format("Phase %d (%d nights left)", K, n)
		else
			return "Phase 1"
		end
	end
	local function t(K, n)
		local p = x:GetAttribute("MoonPhase") or 1
		local u = (n >= 18 or n <= 5.5)
		local s = x:GetAttribute("IsBlueMoon") == true
		if s then
			return "Kitsune Shrine Active"
		end
		if u then
			local K = (n <= 5.5) and (5.5 - n) or ((24 - n) + 5.5)
			local p = math.max(0, math.floor(K * 60))
			return string.format("Night Ends in %dm %02ds", math.floor(p / 60), p % 60)
		else
			local u = 18 - n
			local s = math.max(0, math.floor(u * 60))
			if p == 5 or (K and K:find("Full Moon")) then
				return string.format("Rises in %dm %02ds", math.floor(s / 60), s % 60)
			else
				return string.format("Next Night in %dm %02ds", math.floor(s / 60), s % 60)
			end
		end
	end
	local function C()
		if not u.Character or not u.Character:FindFirstChild("RaceTransformed") then
			return "Not Ready"
		end
		local K, n, p = yU:FireInvoke("UpgradeRace", "Check")
		local s = {
			[0] = "Ready For Trial",
			[1] = "Need More Training",
			[2] = ("Can Buy Gear With ") .. (((p or "?")) .. " Fragments"),
			[3] = "Need More Training";
			[4] = ("Can Buy Gear With ") .. (((p or "?")) .. " Fragments");
			[5] = "Race Complete",
			[6] = (((n or 2)) - 2) .. "/3 Upgrades Done";
			[7] = ("Can Buy Gear With ") .. (((p or "?")) .. " Fragments"),
			[8] = (10 - ((n or 10))) .. " Training Sessions Left"
		}
		return (s[K] or "Unknown")
	end
	local function h()
		if pU then
			if not u.Character or not u.Character:FindFirstChild("RaceTransformed") then
				if pU then
					local K, n = pcall(function()
						return U.HydraIslandClient["RemoteFunction"]:InvokeServer("Interacted")
					end)
					if K and (n and ((n == 1 or n == 2 or n == 3 or n == 4))) then
						return "Ready For Trial"
					end
				end
				return "Not Ready"
			end
			local K, n, p, s = pcall(function()
				return sU:InvokeServer("UpgradeRace", "Check", 2)
			end)
			if not K then
				return "Unknown"
			end
			local c = {
				[0] = "Ready For Trial",
				[1] = "Need More Training",
				[2] = ("Can Buy Gear With ") .. (s .. " Fragments"),
				[3] = "Need More Training",
				[4] = ("Can Buy Gear With ") .. (s .. " Fragments");
				[5] = "Race Complete",
				[6] = (((p or 2)) - 2) .. "/3 Upgrades Done",
				[7] = ("Can Buy Gear With ") .. (s .. " Fragments");
				[8] = (10 - ((p or 10))) .. " Training Sessions Left"
			}
			return c[n]
		end
	end
	local function q()
		local K = tonumber(string.match(sU:InvokeServer("CakePrinceSpawner", true), "%d+"))
		if K then
			return K
		elseif WU:CheckMon("Cake Prince") then
			return "Cake Prince"
		elseif WU:CheckMon("Dough King") then
			return "Dough King"
		else
			return "None"
		end
	end
	local function g()
		local K, n = pcall(function()
			return sU:InvokeServer("LegendarySwordDealer", "1")
		end)
		return (K and n) or "Unknown"
	end
	local function N()
		if pU then
			local K, n = pcall(function()
				return sU:InvokeServer("InfoLeviathan", "1")
			end)
			if not K or not n or n == - 1 then
				return "I don't know anything yet."
			end
			local p = {
				[1] = "I haven't heard a thing, mate. It's quiet as a ghost ship out there.";
				[2] = "Some citizens claim they heard something strange, I doubt it though..";
				[3] = "I heard it's been a bit chilly outside. That's a bit strange..",
				[4] = "It's just downright freezing out! What's with these ominous clouds? Something's happening..",
				[5] = "The Leviathan is out there! Go find it before it causes more destruction."
			}
			return p[n] or "Unknown"
		end
		return "Not Sea 3"
	end
	local function v()
		return f.Locations:FindFirstChild("Mirage Island") and "[Spawned]" or "[None]"
	end
	local function V()
		return f.Locations:FindFirstChild("Kitsune Island") and "[Spawned]" or "[None]"
	end
	local function J()
		return f.Locations:FindFirstChild("Frozen Dimension") and "[Spawned]" or "[None]"
	end
	local function Z()
		return f.Locations:FindFirstChild("Prehistoric Island") and "[Spawned]" or "[None]"
	end
	local function E(K)
		local n = math.floor(K / 3600)
		local p = math.floor(((K % 3600)) / 60)
		local u = math.floor(K % 60)
		return n > 0 and string.format("%dh %02dm %02ds", n, p, u) or string.format("%dm %02ds", p, u)
	end
	local function W()
		local K = nil
		for n, p in ipairs(f.Locations:GetChildren()) do
			local u = p:GetAttribute("TimeIn")
			if u and u > 1700000000 then
				if K == nil or u < K then
					K = u
				end
			end
		end
		if K then
			local n = os.time() - K
			local p = math.floor(n / 3600)
			local u = math.floor(((n % 3600)) / 60)
			local s = math.floor(n % 60)
			return string.format("%dh %dm %ds", p, u, s)
		end
		return "Unknown"
	end
	local function b()
		if M then
			for K, n in next, M:GetChildren() do
				local p = n:FindFirstChildOfClass("Humanoid")
				if p and p.Health > 0 then
					if n.Name:find("indra") then
						return "[Used - rip_indra Active!]"
					elseif n.Name:find("Dough King") then
						return "[Used - Dough King Active!]"
					elseif n.Name:find("Darkbeard") then
						return "[Used - Darkbeard Active!]"
					end
				end
			end
		end
		for K, n in next, n:GetPlayers() do
			local p = n.Character
			local u = n:FindFirstChild("Backpack")
			if (p and p:FindFirstChild("God's Chalice")) or (u and u:FindFirstChild("God's Chalice")) then
				return ("[Spawned - Held by ") .. (((n.DisplayName or n.Name)) .. "]")
			end
			if (p and p:FindFirstChild("Sweet Chalice")) or (u and u:FindFirstChild("Sweet Chalice")) then
				return ("[Sweet Chalice - Held by ") .. (((n.DisplayName or n.Name)) .. "]")
			end
			if (p and p:FindFirstChild("Fist of Darkness")) or (u and u:FindFirstChild("Fist of Darkness")) then
				return ("[Fist of Darkness - Held by ") .. (((n.DisplayName or n.Name)) .. "]")
			end
		end
		local K = nil
		for n, p in ipairs(f.Locations:GetChildren()) do
			local u = p:GetAttribute("TimeIn")
			if u and u > 1700000000 then
				if K == nil or u < K then
					K = u
				end
			end
		end
		if K then
			local n = os.time() - K
			local p = 14400
			if n < p then
				local K = p - n
				local u = math.floor(K / 3600)
				local s = math.floor(((K % 3600)) / 60)
				local c = math.floor(K % 60)
				return string.format("Not Spawned (Wait %dh %02dm %02ds)", u, s, c)
			else
				local K = n % p
				local u = p - K
				local s = math.floor(u / 3600)
				local c = math.floor(((u % 3600)) / 60)
				return string.format("Available in Chests (Next: %dh %02dm)", s, c)
			end
		end
		return "Unknown"
	end
	local function Y()
		if not pU then
			return "None | 0"
		end
		local K = 0
		local n, p = pcall(function()
			return yU:FireInvoke("EliteHunter", "Progress")
		end)
		if n and tonumber(p) then
			K = tonumber(p)
		end
		local u = B1.Checkelites and B1:Checkelites()
		return string.format("%s | %s", u and tostring(u) or "None", tostring(K))
	end
	local uU = 0
	local cU = nil
	local function XU()
		if not KU then
			return "None"
		end
		if tick() - uU >= 3 then
			uU = tick()
			local K, n = pcall(function()
				local K = SU and SU:RemoteFunction("RequestNextRaidHint")
				if K then
					return K:InvokeServer()
				end
			end)
			if K and (type(n) == "table" and n.Boss) then
				cU = n
				cU._fetchTick = tick()
			else
				cU = nil
			end
		end
		if not cU then
			return "None"
		end
		local K = cU.Boss or "Boss"
		local n = cU.Island or "Unknown Island"
		local p = cU.State
		if p == "Armed" or p == "Triggered" then
			return string.format("[Spawned] %s (%s)", tostring(K), tostring(n))
		elseif p == "Arming" then
			return string.format("[Arming] %s (%s)", tostring(K), tostring(n))
		elseif p == "Deferred" then
			return string.format("[Deferred] %s (%s)", tostring(K), tostring(n))
		else
			local p = cU._fetchTick and (tick() - cU._fetchTick) or 0
			local u = math.max(0, math.floor(((tonumber(cU.Seconds) or 0)) - p))
			if u > 0 then
				local p = math.floor(u / 60)
				local s = math.floor(u % 60)
				return string.format("%s (%s) in %dm %02ds", tostring(K), tostring(n), p, s)
			else
				return string.format("%s (%s) [Stirring Soon]", tostring(K), tostring(n))
			end
		end
	end
	local aU = function()
		local K, n = pcall(function()
			local K = j()
			local n = x.ClockTime
			local p = t(K, n)
			local u = os.time() - z
			local s = pU and (("God's Chalice: ") .. b()) or (nU and (("Fist of Darkness: ") .. b()) or nil)
			local c = pU and (("Elite Hunter: ") .. Y()) or nil
			local X = KU and (("Next Secret Boss: ") .. XU()) or nil
			local function A()
				local K = U.DistributedGameTime
				local n = ((os.date("!*t")).wday == 1 or (os.date("!*t")).wday == 7)
				local p = n and 2700 or 3600
				local u = p - (K % p)
				local s = math.floor(u / 60)
				local c = math.floor(u % 60)
				local X = {}
				for K, n in next, U:GetChildren() do
					if n:IsA("Model") and (n.Name:find("Fruit") and n:FindFirstChild("Handle")) then
						local K = n.Name == "Fruit" and "Spawned Fruit" or n.Name
						table.insert(X, K)
					end
				end
				if # X > 0 then
					return string.format("Spawned Now! (%s)", table.concat(X, ", "))
				else
					return string.format("%02dm %02ds (%s)", s, c, n and "Weekend Boost" or "Weekday")
				end
			end
			local a = {
				("Server Uptime: ") .. W();
				("Time in Server: ") .. E(u),
				("Next Fruit Spawn: ") .. A()
			}
			if s then
				table.insert(a, s)
			end
			if c then
				table.insert(a, c)
			end
			if X then
				table.insert(a, X)
			end
			table.insert(a, ("Moon: ") .. (K .. ((p and (" | ") .. p or ""))))
			table.insert(a, ("Sword: ") .. g())
			table.insert(a, ("Cake Stats: ") .. q())
			table.insert(a, ("Ancient One: ") .. C())
			table.insert(a, ("Ancient One (Draco): ") .. h())
			table.insert(a, ("Bribe: ") .. N())
			table.insert(a, ("Mirage: ") .. v())
			table.insert(a, ("Kitsune: ") .. V())
			table.insert(a, ("Frozen Dimension: ") .. J())
			table.insert(a, ("Prehistoric: ") .. Z())
			return table.concat(a, "\n")
		end)
		return K and n or "Failed to load server status"
	end
	e.StatusServer = aU
	yU._StatusServer = aU
	local function DU()
		local K, n = pcall(function()
			local K = SU and SU:RemoteFunction("GachaNetworkRF")
			if K then
				return K:InvokeServer({
					Context = "Check",
					BoxName = "ZiolesGacha";
					SpokeNPC = "Blox Fruit Gacha"
				})
			end
		end)
		if K and type(n) == "table" then
			if n.RequirementsMet == true then
				local K = n.Price and n.Price["Value"] or 0
				return ("Ready ($") .. (((D1 and D1(K) or tostring(K))) .. ")")
			elseif n.Level and n.Level["RequirementMet"] == false then
				return "Need level 50"
			elseif n.Price and n.Price["RequirementMet"] == false then
				return ("Need $") .. ((D1 and D1(n.Price["Value"] or 0) or tostring(n.Price["Value"] or 0)))
			elseif n.Cooldown then
				local K = n.Cooldown["ErrorMessage"] or n.ErrorMessage
				if K and K ~= "" then
					local n = (tostring(K)):match("%d+:%d+")
					if n then
						return n
					end
					return (tostring(K)):gsub("[%%%[%]]", "")
				elseif n.Cooldown["TimeEnds"] then
					local K = math.max(0, math.floor(n.Cooldown["TimeEnds"] - os.time()))
					local p = math.floor(K / 60)
					local u = K % 60
					return string.format("%02d:%02d", p, u)
				end
			end
			if n.ErrorMessage and n.ErrorMessage ~= "" then
				local K = (tostring(n.ErrorMessage)):match("%d+:%d+")
				if K then
					return K
				end
				return (tostring(n.ErrorMessage)):gsub("[%%%[%]]", "")
			end
		end
		local p, u, s, c = pcall(function()
			return yU:FireInvoke("Cousin", "Check", "DLCBoxData")
		end)
		if p and (tonumber(s) and tonumber(s) < 50) then
			return "Need level 50"
		end
		local X, A = pcall(function()
			return yU:FireInvoke("Cousin", "CheckTime", "DLCBoxData")
		end)
		if X and A == true then
			return ("Ready ($") .. (math.floor(tonumber(c or 0)) .. ")")
		elseif X and type(A) == "string" then
			return A
		end
		return "Unknown"
	end
	local function QU()
		local K, n, p, u, s, c = pcall(function()
			return yU:FireInvoke("Bones", "Check")
		end)
		local X, A
		if K then
			if type(n) == "table" then
				X = tonumber(n[3] or n.PurchasesLeft or n.left)
				A = tonumber(n[4] or n.WaitMinutes or n.wait)
			else
				X = tonumber(u)
				A = tonumber(s)
			end
		end
		if not K or not X then
			return "Error"
		elseif X <= 0 then
			return ("No purchases left \226\128\148 wait ") .. (tostring(A or "?") .. " min")
		else
			return X .. " purchase(s) left"
		end
	end
	local function FU()
		local K = yU:FireInvoke("KenTalk", "Status")
		local n = tonumber(K and string.match(tostring(K), "%d+")) or (u:FindFirstChild("VisionRadius") and u.VisionRadius["Value"] or 0)
		local p = u:GetAttribute("KenMaxDodges") or 0
		local s = u:GetAttribute("KenDodgesLeft") or 0
		local c = n >= 5000 and "Max" or n >= 4500 and "7" or n >= 3000 and "6" or n >= 1800 and "5" or n >= 900 and "4" or n >= 300 and "3" or n >= 50 and "2" or "1"
		local X = p > 0 and p or (n >= 4500 and 8 or n >= 3000 and 7 or n >= 1800 and 6 or n >= 900 and 5 or n >= 300 and 4 or n >= 50 and 3 or 2)
		return string.format("%d/5000 (Lvl %s \226\128\162 %d/%d Dodges)", math.floor(n), tostring(c), s, X)
	end
	e.PlayerStatus = function()
		local K = {
			("Next Roll: ") .. (DU() .. "\n");
			("Bone Roll: ") .. (QU() .. "\n");
			("Observation: ") .. (FU() .. "\n");
			("Simulation Data: ") .. tostring(u:GetAttribute("SimulationData") or "N/A")
		}
		return table.concat(K, "\n")
	end
	e.GetFruitStock = function()
		return MU and MU:GetFruitStock() or "No fruit stock data"
	end
	e.TPDojoTrainer = function()
		mU:topos(CFrame.new(5867, 1208, 870))
	end
	e.TPDragonHunter = function()
		mU:topos(CFrame.new(5864, 1209, 808))
	end
	e.TPDragonWizard = function()
		mU:topos(CFrame.new(5775, 1209, 806))
	end
	e.ToggleUpgradeDragonTalon = function(K)
		X.AutoUpgradeDragonTalon = K
		if not K then
			return mU:StopTween()
		end
		task.spawn(function()
			while X.AutoUpgradeDragonTalon and task.wait(.5) do
				local K = CFrame.new(5661.89014, 1211.31909, 864.836731, .811413169, - 1.36805838e-008, - 0.584473014, 4.75227395e-008, 1, 4.25682458e-008, .584473014, - 6.23161966e-008, .811413169)
				mU:topos(K)
				if u.Character and (u.Character:FindFirstChild("HumanoidRootPart") and ((K.Position - u.Character["HumanoidRootPart"].Position)).Magnitude <= 5) then
					P.Modules["Net"]["RF/InteractDragonQuest"]:InvokeServer({
						NPC = "Uzoth",
						Command = "Upgrade"
					})
				end
			end
		end)
	end
	e.CraftPrehistoricItem = function(K)
		(AU:WaitForChild("RF/Craft")):InvokeServer("Craft", K, 1, {})
	end
	e.ChangeDracoRace = function()
		if u:DistanceFromCharacter(Vector3.new(5773, 1210, 807)) <= 5 then
			(AU("RF/InteractDragonQuest")):InvokeServer({
				NPC = "Dragon Wizard";
				Command = "DragonRace"
			})
		else
			mU:topos(CFrame.new(5773, 1210, 807))
		end
	end
	e.UnlockDungeonDifficulty = function()
		pcall(function()
			P.DungeonShared["DataRemote"]:InvokeServer("TryUnlockDifficulty", "Simulation", "Hard")
		end)
		pcall(function()
			P.DungeonShared["DataRemote"]:InvokeServer("TryUnlockDifficulty", "Simulation", "Challenge")
		end)
		pcall(function()
			AU["RF/DungeonNPCNetworkFunction"]:InvokeServer("UnlockDifficulty")
		end)
		pcall(function()
			AU["RF/DungeonNPCNetworkFunction"]:InvokeServer("UnlockNext")
		end)
		yU:SendNotify("Dungeon", "Attempted to unlock difficulty", 4)
	end
	e.TPDungeonHub = function()
		AU["RF/DungeonNPCNetworkFunction"]:InvokeServer("TeleportToDungeonHub", false)
	end
	e.TPDungeonBack = function()
		AU["RF/DungeonNPCNetworkFunction"]:InvokeServer("TeleportBack")
	end
	e.OpenNormalFruitShop = function()
		(require(P.Controllers["UI"].FruitShop)):Open()
	end
	e.OpenAdvFruitShop = function()
		(require(P.Controllers["UI"].FruitShop)):Open("AdvancedFruitDealer")
	end
	e.GetFruitSpawnStatus = function()
		local K = 0
		local n = math.huge
		local p = u.Character and (u.Character:FindFirstChild("HumanoidRootPart") and u.Character["HumanoidRootPart"].Position)
		if p then
			for p, s in next, U:GetChildren() do
				if s:IsA("Model") and string.find(s.Name, "Fruit") then
					local p = s:FindFirstChild("Handle")
					if p and p:IsA("BasePart") then
						K = K + 1
						local s = u:DistanceFromCharacter(p.Position)
						if s < n then
							n = s
						end
					end
				end
			end
			return K > 0 and string.format("Fruits Found: %d\nPosition: %.2f Studs Away", K, n) or "No fruits detected nearby."
		end
		return "Scanning for fruit..."
	end
	e.TPAdvFruitDealer = function()
		if I:FindFirstChild("MysticIsland") then
			local K = getnilinstances()
			for n, p in next, P.NPCs:GetChildren() do
				table.insert(K, p)
			end
			for K, n in pairs(K) do
				if n.Name == "Advanced Fruit Dealer" then
					mU:topos(n.PrimaryPart["CFrame"])
				end
			end
		end
	end
	local function HU()
		local K = {}
		local n, p = pcall(function()
			return (SU:RemoteFunction("GetAllItemValues")):InvokeServer()
		end)
		if n and p then
			for n, p in next, p do
				if (p.Key == "AccessoryType" and p.Value == "Trinket") or (p.Key == "Type" and p.Value == "Trinket") then
					if p.NetworkedUID then
						table.insert(K, p.NetworkedUID)
					end
				end
			end
		end
		return K
	end
	e.BuyTrinket = function()
		local K = pcall(function()
			return P.Remotes["AccessoryInteract"]:InvokeServer("d")
		end)
		yU:SendNotify("Trinkets", K and "Purchased Trinket!" or "Failed to purchase trinket.", 4)
	end
	e.FuseTrinkets = function()
		local K = HU()
		if # K >= 3 then
			local n = pcall(function()
				return P.Remotes["AccessoryInteract"]:InvokeServer("a", K[1], K[2], K[3])
			end)
			yU:SendNotify("Trinkets", n and "Fused 3 Trinkets successfully!" or "Failed to fuse trinkets.", 4)
		else
			yU:SendNotify("Trinkets", ("Need at least 3 trinkets (Found: ") .. (tostring(# K) .. ")"), 4)
		end
	end
	e.RefineTrinket = function()
		local K = HU()
		if # K >= 1 then
			local n = pcall(function()
				return P.Remotes["AccessoryInteract"]:InvokeServer("c", K[1])
			end)
			yU:SendNotify("Trinket Refiner", n and "Refined trinket!" or "Failed to refine trinket.", 4)
		else
			yU:SendNotify("Trinket Refiner", "No trinket available to refine.", 4)
		end
	end
	e.OpenTrinketMergeGUI = function()
		pcall(function()
			((u:WaitForChild("PlayerGui")):WaitForChild("AccessoryMerge")).Open:Fire(false)
		end)
	end
	e.OpenTrinketRefineGUI = function()
		pcall(function()
			((u:WaitForChild("PlayerGui")):WaitForChild("AccessoryMerge")).Open:Fire(true)
		end)
	end
	e.OpenTrinketScrapGUI = function()
		pcall(function()
			((u:WaitForChild("PlayerGui")):WaitForChild("AccessoryTrasher")).Open:Fire()
		end)
	end
	e.InitTempleOfTime = function()
		pcall(function()
			((P:FindFirstChild("MapStash")):FindFirstChild("Temple of Time")).Parent = U:FindFirstChild("Map")
		end)
	end
	e.TPRaceDoor = function()
		if m and (m.Race and r1[m.Race["Value"]]) then
			mU:topos(r1[m.Race["Value"]])
		end
	end
	e.ResetCharHead = function()
		if u.Character and u.Character:FindFirstChild("Head") then
			u.Character["Head"]:Destroy()
		end
	end
	local OU = {
		GreatTree = CFrame.new(2948, 2282, - 7214),
		TempleOfTime = CFrame.new(28286, 14895, 103);
		AncientOne = CFrame.new(28982, 14888, - 120);
		LeverPull = CFrame.new(28575, 14937, 72),
		SafeZone = CFrame.new(28273, 14897, 157),
		PvpZone = CFrame.new(28767, 14967, - 164);
		Clock = CFrame.new(29552, 15069, - 86)
	}
	e.TPTrialArea = function(K)
		if OU[K] then
			mU:topos(OU[K])
		end
	end
	e.TeleportJobID = function(K)
		K = (((tostring(K)):gsub("`", "")):gsub("lua", "")):gsub("%s+", "")
		P.__ServerBrowser:InvokeServer("teleport", K)
	end
	e.TeleportQuantumPremium = function(K)
		K = ((((tostring(K)):gsub("`", "")):gsub("lua", "")):gsub("QuantumOnyx%-", "")):gsub("%s+", "")
		if TU then
			K = TU(K)
		end
		P.__ServerBrowser:InvokeServer("teleport", K)
	end
	e.RejoinServer = function()
		P.__ServerBrowser:InvokeServer("teleport", P.__ServerBrowser:InvokeServer("getjob"))
	end
	e.ServerHop = function()
		WU:ServerHop()
	end
	e.JoinAPI = vU
	e.JoinRaidBossServer = function()
		local K = X.SelectBosstoHop
		if type(K) == "number" or not K or K == "" then
			K = d1[K] or d1[1] or "rip_indra True Form"
		end
		local n = k1[K] or K or "Ripindra"
		if vU then
			vU(tostring(n))
		end
	end
	local LU = function(K, n)
		local p = kU and (kU[n] and kU[n][K])
		if not p then
			return
		end
		if n == "Frags" or n == "Ability" or n == "Accessory" then
			yU:FireInvoke(unpack(p))
		elseif n == "Sword" then
			task.wait(.1)
			yU:FireInvoke(K == "Pole v.2" and p or "BuyItem", p)
		elseif n == "Gun" then
			task.wait(.5)
			if K == "Kabucha" then
				yU:FireInvoke(p[1], p[2], p[3])
				yU:FireInvoke(p[1], p[2], "2")
			else
				yU:FireInvoke(unpack(p))
			end
		end
	end
	e.BuyItem = LU
	e.BuySelectedFruit = function()
		local K = X.SelectFruitDealerFruit
		if not K or K == "" then
			yU:SendNotify("Fruit Dealer", "Please select a fruit first.", 4)
			return
		end
		local n, p = pcall(function()
			return yU:FireInvoke("GetFruits")
		end)
		if n and typeof(p) == "table" then
			for n, p in next, p do
				if p and ((p.Name == K or p.Name:match("^(.-)%-") == K:match("^(.-)%-"))) then
					if p.OnSale then
						pcall(function()
							return yU:FireInvoke("PurchaseRawFruit", p.Name, false)
						end)
					else
						yU:SendNotify("Fruit Dealer", p.Name .. " is currently out of stock!", 4)
					end
					return
				end
			end
		end
		yU:SendNotify("Fruit Dealer", "Could not check fruit stock.", 4)
	end
	e.BuyCyborgRace = function()
		yU:FireInvoke("CyborgTrainer", "Buy")
	end
	e.BuyGhoulRace = function()
		yU:FireInvoke("Ectoplasm", "BuyCheck", 4)
		yU:FireInvoke("Ectoplasm", "Change", 4)
	end
	local UU = {
		["Common Scroll"] = "CommonScroll";
		["Rare Scroll"] = "RareScroll";
		["Legendary Scroll"] = "LegendaryScroll",
		["Mythical Scroll"] = "MythicalScroll"
	}
	e.CraftScroll = function()
		local K = X.SelectScrollType or "Common Scroll"
		local n = UU[K] or "CommonScroll"
		local p = tonumber(X.ScrollCraftAmount) or 1
		local u = pcall(function()
			return (SU:RemoteFunction("Craft")):InvokeServer(n, p)
		end)
		yU:SendNotify("Scroll Craft", u and (("Crafted ") .. (tostring(p) .. (("x ") .. (K .. "!")))) or "Failed to craft scroll (check materials)", 5)
	end
	e.OpenTitleNames = function()
		pcall(function()
			((u:WaitForChild("PlayerGui")):WaitForChild("TitlesMenu")).Open:Fire()
		end)
	end
	e.OpenAwakenings = function()
		pcall(function()
			u.PlayerGui["Main"].AwakeningToggler["Visible"] = true
		end)
	end
	e.OpenHakiColors = function()
		pcall(function()
			u.PlayerGui["Main"].Colors["Visible"] = true
		end)
	end
	e.SetWalkSpeed = function(K)
		X.WalkSpeed = K
		if X.WalkSpeed and (u.Character and u.Character:FindFirstChild("Humanoid")) then
			(u.Character["Humanoid"]:GetPropertyChangedSignal("WalkSpeed")):Connect(function()
				u.Character["Humanoid"].WalkSpeed = X.WalkSpeed
			end)
			u.Character["Humanoid"].WalkSpeed = X.WalkSpeed
		end
	end
	e.SetJumpPower = function(K)
		X.JumpPower = K
		if X.JumpPower and (u.Character and u.Character:FindFirstChild("Humanoid")) then
			u.Character["Humanoid"].JumpPower = X.JumpPower
		end
	end
	local function PU(K)
		for n, p in pairs(U:GetDescendants()) do
			if p:IsA("BasePart") and (not p.Parent:FindFirstChild("Humanoid") and not p.Parent["Parent"]:FindFirstChild("Humanoid")) then
				p.LocalTransparencyModifier = K and .7 or 0
			end
		end
	end
	e.ToggleXray = function(K)
		PU(K)
	end
	local RU = u.CameraMaxZoomDistance
	e.ToggleInfiniteZoom = function(K)
		u.CameraMaxZoomDistance = K and math.huge or RU
	end
	e.ToggleWhiteScreen = function(K)
		X.White_Screen = K
		T:Set3dRenderingEnabled(not K)
	end
	e.ToggleBlackScreen = function(K)
		X.BlackScreen = K
		pcall(function()
			if u.PlayerGui["Main"]:FindFirstChild("Blackscreen") then
				u.PlayerGui["Main"].Blackscreen["Size"] = K and UDim2.new(1000, 0, 1000, 1000) or UDim2.new(1, 0, 1000, 1000)
			end
		end)
	end
	e.RedeemAllCodes = function()
		task.spawn(function()
			local K = {}
			local n = {}
			local function p(p)
				if type(p) == "string" then
					local u = (((p:gsub("%s+", "")):gsub("\"", "")):gsub("'", "")):gsub("&#39;", "")
					if u ~= "" and (# u >= 3 and (# u <= 40 and not n[u])) then
						n[u] = true
						table.insert(K, u)
					end
				end
			end
			local u = {
				"SECRET_ADMIN";
				"ADMIN",
				"SUB2GAMERROBOT_EXP1",
				"SUB2GAMERROBOT_RESET1",
				"fudd10",
				"fudd10_v2",
				"BYAKUYAx10";
				"STAT_REFUND",
				"UPD17_TESTER",
				"ResetStatsSorry",
				"kittgaming",
				"chandler",
				"StrawHatMaine";
				"Enyu_is_Pro",
				"Magicbus",
				"JCWK",
				"Starcode_JCWK",
				"SUB2OFFICIALNOOBIE";
				"Sub2NoobMaster123",
				"TheGreatAce";
				"Axiore";
				"Starcode_Axiore",
				"TantaiGaming";
				"Starcode_TantaiGaming",
				"Sub2Fer999",
				"Starcode_Fer999",
				"SUB2TOKIOCODES",
				"SUBGOD";
				"StrawHat",
				"BLXFRUIT",
				"DRAGONBALL"
			}
			for K, n in ipairs(u) do
				p(n)
			end
			local s = P:FindFirstChild("Remotes") and P.Remotes:FindFirstChild("Redeem")
			local c = 0
			if s then
				for K, n in ipairs(K) do
					local p, u = pcall(function()
						return s:InvokeServer(n)
					end)
					if p and u then
						local K = tostring(u)
						if u == true or u == "SUCCESS" or (K:lower()):find("success") then
							c = c + 1
						end
					end
					task.wait(.08)
				end
			end
		end)
	end
	e.ForceFPSBoost = function()
		local K = U:FindFirstChildOfClass("Terrain")
		if K then
			K.WaterWaveSize = 0
			K.WaterWaveSpeed = 0
			K.WaterReflectance = 0
			K.WaterTransparency = 0
		end
		x.GlobalShadows = false
		x.FogEnd = 9000000000;
		(settings()).Rendering["QualityLevel"] = 1
		for K, n in pairs(game:GetDescendants()) do
			if n:IsA("Part") or n:IsA("UnionOperation") or n:IsA("MeshPart") or n:IsA("CornerWedgePart") or n:IsA("TrussPart") then
				n.Material = "Plastic"
				n.Reflectance = 0
			elseif n:IsA("Decal") then
				n.Transparency = 1
			elseif n:IsA("ParticleEmitter") or n:IsA("Trail") then
				n.Lifetime = NumberRange.new(0)
			elseif n:IsA("Explosion") then
				n.BlastPressure = 1
				n.BlastRadius = 1
			end
		end
		for K, n in pairs(x:GetDescendants()) do
			if n:IsA("BlurEffect") or n:IsA("SunRaysEffect") or n:IsA("ColorCorrectionEffect") or n:IsA("BloomEffect") or n:IsA("DepthOfFieldEffect") then
				n.Enabled = false
			end
		end
		for K, n in next, U:GetChildren() do
			if n:IsA("ForceField") or n:IsA("Sparkles") or n:IsA("Smoke") or n:IsA("Fire") then
				pcall(function()
					n:Destroy()
				end)
			end
		end
	end
	e.OpenDevConsole = function()
		pcall(function()
			(game:GetService("StarterGui")):SetCore("DevConsoleVisible", true)
		end)
	end
	e.CleanMemory = function()
		if F.CleanMemory then
			F.CleanMemory()
		end
		yU:SendNotify("Memory Cleaner", "Garbage collection completed & memory trimmed!", 4)
	end
	e.OnFastModeToggle = function(K)
		task.spawn(function()
			if F.SetFastMode then
				F.SetFastMode(K)
			end
		end)
	end
	e.SendTestWebhook = function()
		if X.Webhook and X.Webhook ~= "" then
			if PostWebhook and WeeboLogs then
				PostWebhook(X.Webhook, WeeboLogs("Test Notification", {
					Extra = "**Status:** Webhook connection is active & working properly!";
					Field2 = {
						name = "User",
						value = u.Name
					}
				}))
			end
			yU:SendNotify("Webhook", "Test webhook dispatched!", 4)
		else
			yU:SendNotify("Webhook", "Please enter a valid Webhook URL first.", 4)
		end
	end
	e.SendDataLogNow = function()
		if H.SendDataLog then
			H:SendDataLog("Quantum Onyx - Manual Data Log Request", "Triggered manually via UI button.")
		end
		yU:SendNotify("Data Log", "Data Log webhook sent successfully!", 5)
	end
	task.spawn(function()
		while task.wait(3) do
			if X.AutoFastMode and not F.FastMode then
				F.SetFastMode(true)
			end
		end
	end)
	local xU = p.Home:addSection()
	local eU = xU:addMenu("Magnet Event")
	s:CreateToggle(eU, "Auto Roll Magnet Gacha", "AutoRollMagnetGacha", false, {
		global = true;
		save = true
	})
	eU:addButton("Open Magnet Gacha GUI", function()
		local K = require(P.Controllers["UI"].GachaWindow)
		if K and K.Open then
			K:Open("MagnetEventGacha26")
		end
	end)
	s:CreateToggle(eU, "Auto Complete Secret Quests", "AutoCompleteSecretQuests", false, {
		global = true,
		stop = true
	})
	yU.SecretTrackerLabel = eU:addLabel("Secret Quests Tracker", "Checking progress...")
	yU.SecretTrackerDropdown = s:CreateDropdown(eU, "Finished Secret Quests", "FinishedSecretQuestsTracker", "None", {
		"None"
	}, {
		global = false;
		save = false
	})
	eU:addButton("Refresh Secret Quests Tracker", function()
		if yU and yU.UpdateSecretTracker then
			yU.UpdateSecretTracker()
		end
	end)
	local zU = xU:addMenu("Main Farm")
	s:CreateDropdown(zU, "Weapon", "SelectWeapon", "Melee", {
		"Melee",
		"Sword";
		"Blox Fruit",
		"Gun"
	}, {
		global = true
	})
	s:CreateDropdown(zU, "Farm Method", "FarmMode", "Quest", {
		"Quest";
		"No Quest";
		"Nearest"
	}, {
		global = true
	})
	s:CreateSlider(zU, "Nearest (Distance)", "checknearestdist", 1000, 5000, 1500, {
		global = true
	})
	s:CreateToggle(zU, "Auto Farm", "AutoFarm", false, {
		global = true,
		save = true,
		stop = true
	})
	s:CreateToggle(zU, "Take Quest", "AcceptQuests", false, {
		global = true,
		save = true,
		description = "Accept Quest for Bones/Cakes"
	})
	s:CreateToggle(zU, "Auto Bones", "AutoFarmBones", false, {
		global = true,
		save = true,
		stop = true
	})
	s:CreateToggle(zU, "Enable Mastery", "MasteryFarm", false, {
		global = true;
		save = true
	})
	s:CreateSlider(zU, "Health Mob%", "HealthMob", 15, 100, 25, {
		global = true
	})
	s:CreateToggle(zU, "Auto Random Surprise", "Auto_Random_Surprise", false, {
		global = true,
		save = true
	})
	s:CreateToggle(zU, "Auto Pray", "AutoPray", false, {
		global = true
	})
	s:CreateToggle(zU, "Auto Try Luck", "AutoTryLuck", false, {
		global = true
	})
	s:CreateToggle(zU, "Auto Katakuri", "AutoFarmPrince", false, {
		global = true,
		save = true,
		stop = true
	})
	s:CreateToggle(zU, "Ignore Katakuri", "IgnoreCakePrince", false, {
		global = true
	})
	s:CreateToggle(zU, "Auto Dough King", "AutoDoughKing", false, {
		global = true;
		save = true,
		stop = true
	})
	s:CreateToggle(zU, "Ignore Farm Dough King Item", "IgnoreDoughChaliceFarm", false, {
		global = true,
		save = true,
		description = "this function will make the Auto Dough King only focus on boss and will not try to get chalice"
	})
	s:CreateDropdown(zU, "Select Material", "SelectMaterial", (A.Materials and A.Materials[1]) or "Leather + Scrap Metal", A.Materials or {}, {
		global = true
	})
	s:CreateToggle(zU, "Auto Farm Material", "AutoMaterial", false, {
		global = true,
		stop = true
	})
	local wU = xU:addMenu("Boss Farm")
	s:CreateDropdown(wU, "Select Boss", "SelectBoss", 1, A.BossNames or {}, {
		global = true
	})
	s:CreateToggle(wU, "Auto Farm Boss", "AutoFarmBoss", false, {
		global = true,
		save = true;
		stop = true
	})
	s:CreateToggle(wU, "Auto Kill All Bosses", "AutoKillAllBosses", false, {
		global = true,
		save = true,
		stop = true
	})
	s:CreateToggle(wU, "Get Boss Quest", "GetBossQuest", false, {
		global = true,
		save = true,
		description = "Automatically takes the boss quest before attacking"
	})
	local BU = xU:addMenu("Tyrant Farm")
	s:CreateToggle(BU, "Auto Summon Kill Tyrant Of The Skies", "AutoTyrantOfTheSkies", false, {
		global = true;
		save = true;
		stop = true;
		description = "turn on auto skill or gun shooting for destroying vases"
	})
	s:CreateToggle(BU, "Use Skull Guitar for Vases", "ShootGunTyrant", true, {
		global = true;
		save = true;
		description = "Uses Skull Guitar custom shoot to destroy Tyrant vases"
	})
	local lU = xU:addMenu("Chest Farm")
	s:CreateToggle(lU, "Start Farming Chest", "AutoChest", false, {
		global = true;
		save = true;
		stop = true
	})
	s:CreateDropdown(lU, "Chest Type", "ChestFilterType", {
		"Diamond",
		"Gold";
		"Silver"
	}, {
		"Diamond";
		"Gold";
		"Silver"
	}, {
		global = true,
		save = true,
		description = "Select which chest tiers to collect"
	}, true)
	s:CreateToggle(lU, "Stop If Items", "StopChest", false, {
		global = true;
		save = true
	})
	s:CreateToggle(lU, "Auto Hop Server On Chests", "AutoHopChest", false, {
		global = true,
		save = true
	})
	s:CreateSlider(lU, "Chest Hop Target Count", "ChestHopCount", 1, 50, 10, {
		global = true;
		save = true
	})
	s:CreateToggle(lU, "Stop Hop If Chalice / Fist", "StopHopChestIfChalice", true, {
		global = true,
		save = true
	})
	local iU = p.Home:addSection()
	local tU = iU:addMenu("Farm Settings")
	s:CreateDropdown(tU, "Tween Option", "TweenMode", "Lerp", {
		"TweenService";
		"Lerp"
	}, {
		global = true;
		save = true
	})
	s:CreateSlider(tU, "Tweening Speed", "TweenSpeed", 10, 200, 200, {
		global = true,
		save = true
	})
	s:CreateSlider(tU, "Farm Distance", "PosY", 0, 30, 18, {
		global = true
	})
	s:CreateSlider(tU, "Bring Radius", "BringMonsterRadius", 150, 400, 350, {
		global = true
	})
	s:CreateDropdown(tU, "Pos Method", "PosMethod", "Above", {
		"Above";
		"Orbit"
	}, {
		global = true
	})
	s:CreateToggle(tU, "Start Bring", "BringMonster", true, {
		global = true;
		save = true
	})
	s:CreateDropdown(tU, "Attack Method", "FastSettings", "Fast Attack", {
		"Fast Attack",
		"Legit Attack"
	}, {
		global = true
	})
	s:CreateSlider(tU, "Fast Attack Delay", "FastAttackDelay", 0, 1, 0, {
		global = true;
		step = .01
	})
	s:CreateToggle(tU, "Fast Attack", "AutoAttack", true, {
		global = true,
		save = true
	})
	s:CreateToggle(tU, "Quantum Attack", "QuantumAttack", false, {
		global = true
	})
	s:CreateToggle(tU, "Auto Attack Gun", "AutoAttackGun", true, {
		global = true;
		save = true
	})
	s:CreateDropdown(tU, "Dragonstorm Mode", "DragonstormMode", "Spread Damage", {
		"Spread Damage";
		"Single Damage"
	}, {
		global = true,
		save = true;
		description = "Choose between Spread Damage or Single Damage for Dragonstorm gun"
	})
	s:CreateSlider(tU, "Gun Shoot Amount", "ShootAmount", 1, 10, 1, {
		global = true;
		save = true,
		description = "Number of shots to fire per attack cycle"
	})
	s:CreateToggle(tU, "Remove Fast Attack Animation", "RemoveAnimationFast", true, {
		global = true,
		save = true
	})
	s:CreateToggle(tU, "attack mobs", "attackmobs", true, {
		global = true,
		save = true
	})
	s:CreateToggle(tU, "attack players", "attackplayers", true, {
		global = true,
		save = true
	})
	s:CreateToggle(tU, "Auto Activate Observation Haki", "AutoActivateObservationHaki", false, {
		global = true;
		save = true
	})
	s:CreateToggle(tU, "Auto Set Spawn Point", "AutoSetSpawnPoint", false, {
		global = true,
		save = true
	})
	s:CreateToggle(tU, "Debounce Quests", "QuestDebounce", false, {
		global = true
	})
	s:CreateToggle(tU, "Bypass Get Quest", "BypassGetQuest", false, {
		global = true;
		save = true,
		description = "Gets the quest without teleporting to the quest NPC"
	})
	s:CreateDropdown(tU, "Select Team", "TeamSelectLoad", 1, {
		"Pirates",
		"Marines"
	}, {
		global = true
	})
	s:CreateToggle(tU, "Auto Load Script on Load", "AutoLoadScriptonLoad", false, {
		global = true;
		save = true;
		description = "Works on higher unc executors",
		callback = e.OnAutoLoadScript
	})
	s:CreateToggle(tU, "Disable Damage Counter", "DisableDamageCounter", false, {
		callback = e.ToggleDamageCounter
	})
	s:CreateToggle(tU, "Disable Notifications", "DisableNotifications", false, {
		callback = e.ToggleNotifications
	})
	s:CreateToggle(tU, "Walk in Water", "Water", true, {
		callback = e.ToggleWalkInWater
	})
	s:CreateToggle(tU, "Auto Hop when 30mins", "AutoHopwhen30mins", false, {
		locked = true,
		global = true;
		save = true,
		callback = e.OnAutoHop30Mins
	})
	s:CreateToggle(tU, "Auto Hop When Admin Joined", "HopWhenAdmin", true, {
		callback = e.ToggleHopAdmin
	})
	s:CreateToggle(tU, "Anti Afk", "AntiAFK", true, {
		callback = e.ToggleAntiAFK
	})
	if e.RemoveEffects then
		tU:addButton("Remove Effects", e.RemoveEffects)
	end
	local CU = iU:addMenu("Farm Settings")
	s:CreateDropdown(CU, "Select Skills", "SelectSkills", "Blox Fruit", {
		"Blox Fruit",
		"Melee",
		"Sword";
		"Gun"
	}, {
		global = true
	}, true)
	s:CreateDropdown(CU, "Blox Fruit Skills", "BloxFruitKeys", "Z", {
		"Z",
		"X";
		"C";
		"V";
		"F"
	}, {
		global = true
	}, true)
	s:CreateDropdown(CU, "Melee Skills", "MeleeKeys", "Z", {
		"Z",
		"X",
		"C"
	}, {
		global = true
	}, true)
	s:CreateDropdown(CU, "Sword Skills", "SwordKeys", "Z", {
		"Z";
		"X"
	}, {
		global = true
	}, true)
	s:CreateDropdown(CU, "Gun Skills", "GunKeys", "Z", {
		"Z";
		"X"
	}, {
		global = true
	}, true)
	s:CreateToggle(CU, "Auto Use Skills", "AutoSkills", false, {
		global = true;
		save = true
	})
	local hU = iU:addMenu("Skills Settings")
	s:CreateSlider(hU, "Z Hold Time (ms)", "HoldTime_Z", 0, 5, 0, {
		global = true,
		save = true,
		step = .1
	})
	s:CreateSlider(hU, "X Hold Time (ms)", "HoldTime_X", 0, 5, 0, {
		global = true;
		save = true;
		step = .1
	})
	s:CreateSlider(hU, "C Hold Time (ms)", "HoldTime_C", 0, 5, 0, {
		global = true;
		save = true,
		step = .1
	})
	s:CreateSlider(hU, "V Hold Time (ms)", "HoldTime_V", 0, 5, 0, {
		global = true,
		save = true,
		step = .1
	})
	s:CreateSlider(hU, "F Hold Time (ms)", "HoldTime_F", 0, 5, 0, {
		global = true;
		save = true;
		step = .1
	})
	s:CreateSlider(hU, "Blox Fruit Skill Delay (ms)", "BloxFruitDelay", 0, 5, 0, {
		global = true;
		save = true;
		step = .1
	})
	s:CreateSlider(hU, "Melee Skill Delay (ms)", "MeleeDelay", 0, 5, 0, {
		global = true,
		save = true;
		step = .1
	})
	s:CreateSlider(hU, "Sword Skill Delay (ms)", "SwordDelay", 0, 5, 0, {
		global = true;
		save = true,
		step = .1
	})
	s:CreateSlider(hU, "Gun Skill Delay (ms)", "GunDelay", 0, 5, 0, {
		global = true,
		save = true,
		step = .1
	})
	local qU = p.Sub:addSection()
	local gU = qU:addMenu("World Farm")
	s:CreateToggle(gU, "Auto Second Sea Quest", "AutoSecondSea", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(gU, "Auto Third Sea Quest", "AutoThirdSea", false, {
		global = true,
		stop = true
	})
	local NU = qU:addMenu("Quest Farm")
	s:CreateToggle(NU, "Complete Saber Quest", "AutoUnlockSaber", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(NU, "Complete Bartilo Quest", "AutoBartiloQuest", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(NU, "Complete Citizen Quest", "CompleteCitizenQuest", false, {
		global = true;
		stop = true
	})
	s:CreateToggle(NU, "Complete Rainbow Haki Quest", "GetRainbowHaki", false, {
		global = true,
		stop = true
	})
	local VU = qU:addMenu("Items Farm")
	s:CreateToggle(VU, "Auto Get Yama (Fully)", "AutoYama", false, {
		global = true,
		save = true,
		stop = true
	})
	s:CreateToggle(VU, "Auto Get Tushita (Fully)", "AutoTushita", false, {
		global = true;
		save = true,
		stop = true
	})
	s:CreateToggle(VU, "Auto Get CDK (Fully)", "AutoCDKQuest", false, {
		global = true,
		locked = true;
		stop = true,
		save = true,
		description = "don't turn on remove fog while using this function"
	})
	s:CreateToggle(VU, "Auto Get Rengoku (Fully)", "AutoRengoku", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(VU, "Auto Get TTK (Fully)", "AutoTTK", false, {
		global = true,
		save = true,
		stop = true
	})
	s:CreateToggle(VU, "Auto Evolve DarkBlade (V2)", "AutoGetDBV2", false, {
		locked = true;
		global = true,
		stop = true
	})
	s:CreateToggle(VU, "Auto Shark Anchor (Fully)", "AutoSharkAnchor", false, {
		locked = true,
		global = true;
		stop = true
	})
	s:CreateToggle(VU, "Auto Get Skull Guitar (Fully)", "AutoGetSkullGuitar", false, {
		global = true,
		locked = true;
		save = true,
		stop = true
	})
	s:CreateToggle(VU, "Ignore Material Farm for Skull Guitar", "IgnoreMaterialFarmGuitar", false, {
		global = true,
		locked = true,
		stop = true
	})
	local JU = qU:addMenu("Sword Mastery")
	s:CreateSlider(JU, "Select Sword Mastery", "SelectSwordMastery", 100, 600, 600, {
		locked = true,
		global = true
	})
	s:CreateToggle(JU, "Auto Mastery Swords (Fully)", "AutoMasterySwords", false, {
		global = true,
		save = true
	})
	local ZU = qU:addMenu("Fight Style Obtainment")
	s:CreateToggle(ZU, "Auto Death Step", "AutoDeathStep", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(ZU, "Auto Sharkman Karate", "AutoSharkmanKarate", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(ZU, "Auto Electric Claw", "AutoElectricClaw", false, {
		global = true;
		stop = true
	})
	s:CreateToggle(ZU, "Auto Dragon Talon", "AutoDragonTalon", false, {
		global = true,
		stop = true
	})
	local EU = p.Sub:addSection()
	local bU = EU:addMenu("Timely Farm")
	s:CreateToggle(bU, "Auto Elite Hunter", "AutoTaskEliteHunter", false, {
		global = true;
		save = true;
		stop = true
	})
	s:CreateToggle(bU, "Auto Factory Raid", "AutoFactoryRaid", false, {
		global = true,
		save = true;
		stop = true
	})
	s:CreateToggle(bU, "Auto Pirate Raid", "AutoFarmPirateRaid", false, {
		global = true;
		save = true;
		stop = true
	})
	s:CreateToggle(bU, "Auto Soul Reaper", "AutoSoulReaper", false, {
		global = true;
		save = true,
		stop = true
	})
	s:CreateToggle(bU, "Auto Darkbeard", "AutoDarkbeard", false, {
		global = true;
		save = true,
		stop = true
	})
	s:CreateToggle(bU, "Auto Greybeard", "AutoGreybeard", false, {
		global = true,
		save = true;
		stop = true
	})
	s:CreateToggle(bU, "Auto Cursed Captain", "AutoCursedCaptain", false, {
		global = true,
		save = true;
		stop = true
	})
	s:CreateToggle(bU, "Auto Open Colors Plate", "AutoOpenColorsTask", false, {
		global = true,
		save = false;
		stop = true
	})
	s:CreateToggle(bU, "Auto True Form Rip Indra", "AutoRipIndra", false, {
		global = true,
		save = true,
		stop = true
	})
	local IU = EU:addMenu("Other Farm")
	s:CreateToggle(IU, "Start Farm Observation", "AutoFarmObservation", false, {
		global = true,
		save = true,
		stop = true
	})
	s:CreateToggle(IU, "Auto Get Observation V2", "AutoKenV2", false, {
		global = true;
		save = true;
		stop = true
	})
	s:CreateToggle(IU, "Farm Observation Hopping", "StartObsHop", false, {
		global = true;
		save = true
	})
	s:CreateToggle(IU, "Auto Dummy Training", "DummyTraining", false, {
		global = true;
		save = true,
		stop = true
	})
	local fU = p.Sevent:addSection()
	local YU = fU:addMenu("Mirage Event")
	s:CreateToggle(YU, "Auto Find Mirage Island", "AutoFindMirageIsland", false, {
		global = true;
		save = true;
		stop = true
	})
	s:CreateToggle(YU, "Teleport to Mirage", "AutoTeleportMirage", false, {
		global = true;
		save = true;
		stop = true
	})
	local K1 = fU:addMenu("Kitsune Event")
	s:CreateToggle(K1, "Auto Find Kitsune Island", "AutoFindKitsuneIsland", false, {
		global = true,
		save = true;
		stop = true
	})
	s:CreateToggle(K1, "Teleport to Shrine", "AutoTeleportKitsune", false, {
		global = true,
		save = true;
		stop = true
	})
	s:CreateToggle(K1, "Auto Collect Azure Embers", "CollectAzure", false, {
		global = true,
		save = true,
		stop = true
	})
	yU._BlueMoonState = "FIND_ISLAND"
	s:CreateToggle(K1, "Auto Kitsune Farm", "AutoBlueMoonFarm", false, {
		global = true,
		lock = true;
		save = true,
		stop = true
	})
	s:CreateSlider(K1, "Set Azure Ember", "SetAzureEmber", 1, 25, 1, {
		global = true
	})
	s:CreateToggle(K1, "Auto Trade Azure Ember", "TradeAzureEmber", false, {
		global = true;
		save = true
	})
	local n1 = fU:addMenu("Leviathan Hunt")
	n1:addButton("Bribe", e.BribeLeviathan or function()
	end)
	local p1 = s:CreateToggle(n1, "Auto Find Leviathan", "AutoFindLeviatan", false, {
		locked = true,
		global = true;
		stop = true
	})
	yU._FindLeviathan = p1
	s:CreateToggle(n1, "Ignore Sea Events While Finding", "AutoIgnoreSeaEventsLeviathan", false, {
		global = true;
		save = true;
		description = "Ignores sea beasts, sharks, and ships so boat sails uninterrupted to Leviathan"
	})
	s:CreateToggle(n1, "Auto Kill Leviathan", "AutoKillLeviathan", false, {
		locked = true;
		global = true;
		stop = true
	})
	s:CreateToggle(n1, "Auto Shoot Heart", "AutoShootHeart", false, {
		locked = true,
		global = true,
		stop = true
	})
	s:CreateToggle(n1, "Auto Sail back to Tiki", "AutoSailbacktoTiki", false, {
		locked = true;
		global = true;
		stop = true
	})
	local u1 = p.Sevent:addSection()
	local s1 = u1:addMenu("Sea Farm")
	s:CreateDropdown(s1, "Select Boat", "BoatSelected", "PirateBrigade", A.BoatsList or {}, {
		global = true,
		save = true
	})
	s:CreateDropdown(s1, "Select Zone", "SeaLevelSelected", 6, A.ZoneList or {}, {
		global = true
	})
	s:CreateSlider(s1, "Boat Height", "BoatPosY", 0, 150, 31, {
		locked = true,
		global = true
	})
	s:CreateSlider(s1, "Boat Speed", "SpeedBoat", 10, 350, 275, {
		global = true
	})
	s:CreateDropdown(s1, "Sea Event Targets", "SeaEventTargets", 1, A.SeaEventTargets or {}, {
		global = true
	}, true)
	local c1 = e.GetAllBoats and e.GetAllBoats() or {
		"My Boat"
	}
	local X1 = s:CreateDropdown(s1, "Select Owned Boat", "SailTargetBoat", "My Boat", c1, {
		global = true
	})
	s1:addButton("Refresh Boats", function()
		if e.GetAllBoats then
			c1 = e.GetAllBoats()
			X1:Refresh(c1)
		end
	end)
	s:CreateToggle(s1, "ESP My Boat", "ESPMyBoat", false, {
		global = true,
		callback = function(K)
			X.ESPMyBoat = K
			if not K then
				if ClearESP then
					ClearESP("MyBoat")
				end
			else
				if MyBoatESP then
					MyBoatESP()
				end
			end
		end
	})
	s:CreateToggle(s1, "Auto Drive", "AutoSail", false, {
		global = true;
		stop = true
	})
	s1:addButton("Buy New Boat", e.BuyNewBoat or function()
	end)
	s:CreateToggle(s1, "Auto Farm Sea Events", "AutoFarmSeaEvents", false, {
		global = true;
		description = "don't turn off Auto Drive when farming sea events, it's connected"
	})
	s:CreateToggle(s1, "Auto Repair Boat", "AutoRepairBoat", false, {
		global = true;
		save = true
	})
	s:CreateToggle(s1, "Protect Boat (Float in Combat)", "ProtectBoat", true, {
		global = true;
		save = true,
		description = "Floats your boat high in the air when fighting sea events to prevent damage"
	})
	s:CreateToggle(s1, "Auto Buy New Boat When dies", "AutoBuyNewBoatWhendies", false, {
		global = true
	})
	s:CreateToggle(s1, "Auto Reset Charater if boat destroyed", "ResetPlayerdestroyboat", true, {
		global = true
	})
	s:CreateToggle(s1, "Auto Dodge Terror Shark", "DodgeTerror", true, {
		global = true,
		save = true
	})
	s:CreateToggle(s1, "Auto Dodge Seabeast", "DodgefSeabeast", true, {
		global = true,
		save = true
	})
	s:CreateToggle(s1, "Use M1 DragonStorm for Seabeast/ships", "UseDragonSforSeabeasts", false, {
		global = true
	})
	s:CreateSlider(s1, "Manual Speed", "ManualBoatSpeed", 20, 350, 220, {
		global = true,
		save = true
	})
	s:CreateToggle(s1, "Manual Increase Boat Speed", "ManualIncreaseBoatSpeed", false, {
		global = true,
		save = true
	})
	local A1 = u1:addMenu("Fishing")
	s:CreateDropdown(A1, "Fishing Rods", "SelectedRod", 1, A.RodsList or {}, {
		global = true
	})
	s:CreateDropdown(A1, "Baits", "SelectedBait", 1, A.BaitsList or {}, {
		global = true
	})
	A1:addButton("Open Fish Index", e.OpenFishIndex or function()
	end)
	s:CreateToggle(A1, "Auto Fishing", "Auto_Fishing", false, {
		global = true
	})
	s:CreateToggle(A1, "Auto Catch Chest", "AutoGetChest", false, {
		global = true
	})
	s:CreateToggle(A1, "Auto Craft Bait", "AutoCraftBait", false, {
		global = true
	})
	s:CreateToggle(A1, "Auto Get / Complete Angler Quest", "AutoGetAnglerQuest", false, {
		global = true,
		save = true
	})
	s:CreateToggle(A1, "Auto Sell Fish", "AutoSellFish", false, {
		global = true
	})
	s:CreateToggle(A1, "Auto Use Rod Skill", "AutoUseRodSkill", false, {
		global = true
	})
	local a1 = u1:addMenu("FishSlap Minigame")
	s:CreateToggle(a1, "Auto Fish Slap", "AutoSlap", false, {
		global = true
	})
	local Q1 = p.Player:addSection()
	local S1 = Q1:addMenu("Player Stats")
	local F1 = S1:addLabel("Player Status", "Scanning for Information...")
	task.spawn(function()
		while task.wait(.5) do
			if e.GetStatsInfo then
				F1:RefreshDesc(e.GetStatsInfo())
			end
		end
	end)
	s:CreateSlider(S1, "Select Points", "PointsSlider", 0, 1000, 10, {
		global = true
	})
	s:CreateToggle(S1, "Melee", "Melee", false, {
		global = true
	})
	s:CreateToggle(S1, "Defense", "Defense", false, {
		global = true
	})
	s:CreateToggle(S1, "Sword", "Sword", false, {
		global = true
	})
	s:CreateToggle(S1, "Gun", "Gun", false, {
		global = true
	})
	s:CreateToggle(S1, "Devil Fruit", "DemonFruit", false, {
		global = true
	})
	s:CreateToggle(S1, "Start Adding Stats", "AutoStats", false, {
		global = true;
		callback = function(K)
			if K and e.AutoStats then
				e.AutoStats()
			end
		end
	})
	task.wait(.02)
	local H1 = p.Player:addSection()
	local O1 = H1:addMenu("ESP Menu")
	for K, n in next, {
		{
			"Players ESP",
			"ESPPlayer",
			"Player";
			PlayerESP
		};
		{
			"Islands ESP";
			"ESPIsland";
			"Island";
			IslandESP
		};
		{
			"Fruits ESP",
			"DevilFruitESP",
			"Fruit",
			FruitESP
		},
		{
			"Chests ESP",
			"ESPChest";
			"Chest";
			ChestESP
		},
		{
			"Berries ESP";
			"ESP_Berries",
			"Berry",
			BerryESP
		},
		{
			"Natural Fruits ESP (Pineapple, etc.)";
			"ESP_RealFruits",
			"RealFruit";
			RealFruitESP
		}
	} do
		s:CreateToggle(O1, n[1], n[2], false, {
			callback = function(K)
				X[n[2]] = K
				if not K then
					if ClearESP then
						ClearESP(n[3])
					end
				else
					if n[4] then
						n[4]()
					end
				end
			end
		})
	end
	local L1 = H1:addMenu("PVP Menu")
	local U1
	local function P1()
		return e.GetPlayerList and e.GetPlayerList() or {
			"Nearest"
		}
	end
	U1 = s:CreateDropdown(L1, "Select Player", "SelectPlayer", 1, P1(), {
		global = true
	})
	L1:addButton("Refresh Player List", function()
		if U1 and U1.Refresh then
			U1:Refresh(P1())
		end
	end)
	s:CreateToggle(L1, "Cam Lock", "CamLock", false, {
		global = true,
		callback = e.OnCamLockToggle
	})
	s:CreateToggle(L1, "Spectate Player", "SpectatePlayer", false, {
		global = true;
		callback = e.OnSpectateToggle
	})
	s:CreateToggle(L1, "Teleport to Player", "TeleporttoPlayer", false, {
		global = true;
		stop = true,
		callback = e.OnTPPlayerToggle
	})
	s:CreateToggle(L1, "Enable Aimbot ", "EnableAimbot", false, {
		global = true
	})
	L1:addButton("Get Player Quest", e.GetPlayerHunterQuest or function()
	end)
	local R1 = H1:addMenu("Server Menu")
	local T1 = R1:addLabel("Server Status", "Loading...")
	yU._ServerInfo = T1
	R1:addButton("Refresh Server Info", function()
		pcall(function()
			if e.StatusServer then
				T1:RefreshDesc(e.StatusServer())
			end
		end)
	end)
	local x1 = R1:addLabel("Player Status", "Loading...")
	R1:addButton("Refresh Player Info", function()
		if e.PlayerStatus then
			x1:RefreshDesc(e.PlayerStatus())
		end
	end)
	local e1 = R1:addLabel("Fruit Stock", "Loading fruit stock...")
	R1:addButton("Refresh Fruit Stock", function()
		if e.GetFruitStock then
			e1:RefreshDesc(e.GetFruitStock())
		end
	end)
	task.spawn(function()
		task.wait(.5)
		pcall(function()
			if e.StatusServer and T1 then
				T1:RefreshDesc(e.StatusServer())
			end
		end)
	end)
	local y1 = p.Dragon:addSection()
	local z1 = y1:addMenu("Berry Farm")
	s:CreateToggle(z1, "Auto Collect Berries", "AutoBerrySafe", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(z1, "Hop If No Berries", "HopIfNoBerries", false, {
		global = true,
		save = true
	})
	local w1 = y1:addMenu("Belt Obtainment")
	w1:addButton("Teleport to Dojo Trainer", e.TPDojoTrainer or function()
	end)
	s:CreateToggle(w1, "Auto White Belt", "AutoWhiteBelt", false, {
		global = true;
		stop = true
	})
	s:CreateToggle(w1, "Auto Purple Belt", "AutoPurpleBelt", false, {
		global = true;
		stop = true
	})
	local o1 = p.Dragon:addSection()
	local G1 = o1:addMenu("Prehistoric Event")
	local l1 = s:CreateToggle(G1, "Auto Find Prehistoric Island", "AutoFindPrehistoricIsland", false, {
		global = true,
		save = true;
		stop = true
	})
	yU._FindPrehistoricIsland = l1
	s:CreateToggle(G1, "Teleport to Prehistoric Island", "AutoTeleportPrehistoric", false, {
		global = true,
		save = true;
		stop = true
	})
	s:CreateToggle(G1, "Auto Complete Volcanic Event", "AutoVolcanicEvent", false, {
		global = true;
		stop = true
	})
	s:CreateToggle(G1, "Use Skull Guitar for Volcano", "ShootGunVolcano", true, {
		global = true;
		save = true,
		description = "Uses Skull Guitar custom shoot to patch the volcano"
	})
	s:CreateToggle(G1, "Auto Collect Bones", "AutoCollectBones", false, {
		global = true,
		save = true,
		stop = true
	})
	s:CreateToggle(G1, "Auto Collect Dragon Eggs", "AutoCollectEgg", false, {
		global = true,
		save = true;
		stop = true
	})
	s:CreateToggle(G1, "Auto Farm Blaze Ember", "AutoQuestBlaze", false, {
		global = true,
		save = true;
		stop = true
	})
	s:CreateDropdown(G1, "Select Gun", "SelectGunBlaze", 1, {
		"Skull Guitar",
		"Bazooka"
	}, {
		global = true
	})
	s:CreateToggle(G1, "Use Shoot Gun for tree quest", "ShootGunBlaze", false, {
		global = true,
		save = true
	})
	G1:addButton("Teleport to Dragon Hunter", e.TPDragonHunter or function()
	end)
	G1:addButton("Teleport to Dragon Wizard", e.TPDragonWizard or function()
	end)
	s:CreateToggle(G1, "Auto Upgrade Dragon Talon", "AutoUpgradeDragonTalon", false, {
		callback = e.ToggleUpgradeDragonTalon
	})
	G1:addButton("Craft Volcanic Magnet", function()
		e.CraftPrehistoricItem("Volcanic Magnet")
	end)
	G1:addButton("Craft Dragonheart", function()
		e.CraftPrehistoricItem("Dragonheart")
	end)
	G1:addButton("Craft Dragonstorm", function()
		e.CraftPrehistoricItem("Dragonstorm")
	end)
	G1:addButton("Craft Dino Hood", function()
		e.CraftPrehistoricItem("DinoHood")
	end)
	G1:addButton("Craft T-Rex Skull", function()
		e.CraftPrehistoricItem("TRexSkull")
	end)
	local i1 = o1:addMenu("Draco Race")
	local j1 = s:CreateToggle(i1, "Teleport to Draco Trial", "AutoTrialDracoTP", false, {
		global = true;
		stop = true
	})
	yU._AutoTrialDracoToggle = j1
	i1:addButton("Change to Draco Race", e.ChangeDracoRace or function()
	end)
	s:CreateToggle(i1, "Auto Draco Race V2 ", "AutoCollectFireFlowers", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(i1, "Auto Complete Draco Trial", "AutoCompleteDracoTrial", false, {
		locked = true;
		global = true,
		stop = true
	})
	local h1 = p.Raid:addSection()
	local g1 = h1:addMenu("Raid Menu")
	s:CreateDropdown(g1, "Raid Chip", "SelectRaid", 1, A.Raids_Chip or {}, {
		global = true
	})
	s:CreateToggle(g1, "Auto Buy Chip", "AutoBuyChip", false, {
		global = true;
		save = true
	})
	local N1 = s:CreateToggle(g1, "Auto Complete Raid", "AutoRaidFull", false, {
		global = true,
		stop = true
	})
	yU._AutoRaidToggle = N1
	s:CreateToggle(g1, "Instant Kill Islands 4-5 ", "InstantKillLateIslands", false, {
		locked = true,
		global = true
	})
	s:CreateToggle(g1, "Auto Unstore Below 1m Fruit", "AutoUnstoreBelowFruit", false, {
		global = true;
		save = true,
		description = "this will ignore fruit skins"
	})
	s:CreateToggle(g1, "Auto Awaken", "AutoAwaken", false, {
		global = true;
		save = true
	})
	s:CreateSlider(g1, "Frags Cap", "FragsCap", 1000, 1000000, 1000, {
		global = true
	})
	s:CreateToggle(g1, "Auto stop raid when fragments reach cap", "Autostopraid", false, {
		global = true;
		save = true
	})
	local v1 = h1:addMenu("Dungeon Menu")
	s:CreateToggle(v1, "Auto Unlock Difficulties", "AutoUnlockDifficulties", false, {
		global = true,
		save = true,
		description = "Automatically unlocks Hard and Challenge difficulties using Simulation Data"
	})
	s:CreateToggle(v1, "Auto Complete Dungeon", "AutoDungeonFull", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(v1, "Auto Destroy Shrines and Vents", "AutoDungeonShrine", false, {
		global = true;
		stop = true
	})
	s:CreateDropdown(v1, "Select Cards", "CardsSelection", 1, A.DungeonCards or {}, {
		global = true
	}, true)
	s:CreateToggle(v1, "Auto Select Cards", "AutoCardsDungeon", false, {
		global = true
	})
	v1:addButton("Unlock Next Difficulty", e.UnlockDungeonDifficulty or function()
	end)
	v1:addButton("Teleport to Dungeon Map", e.TPDungeonHub or function()
	end)
	v1:addButton("Return to Previous Sea", e.TPDungeonBack or function()
	end)
	local m1 = h1:addMenu("Law Menu")
	s:CreateToggle(m1, "Start Law Raid Farm", "AutoLawRaid", false, {
		global = true,
		stop = true;
		save = true
	})
	task.wait(.02)
	local V1 = p.Raid:addSection()
	local J1 = V1:addMenu("Fruit Menu")
	J1:addButton("Open Normal Shop", e.OpenNormalFruitShop or function()
	end)
	J1:addButton("Open Advanced Shop", e.OpenAdvFruitShop or function()
	end)
	s:CreateToggle(J1, "Auto Roll Fruit", "Random_Auto", false, {
		global = true;
		save = true
	})
	s:CreateToggle(J1, "Auto Store Fruit", "AutoStoreFruit", false, {
		global = true;
		save = true
	})
	local Z1 = J1:addLabel("Fruit Spawn Status", "Scanning for fruit...")
	task.spawn(function()
		while task.wait(1.5) do
			if e.GetFruitSpawnStatus then
				Z1:RefreshDesc(e.GetFruitSpawnStatus())
			end
		end
	end)
	s:CreateToggle(J1, "Teleport to Fruit", "Tweenfruit", false, {
		global = true;
		save = true,
		stop = true
	})
	s:CreateToggle(J1, "Hop If No Fruit In Server", "HopIfNoFruit", false, {
		global = true;
		save = true
	})
	s:CreateToggle(J1, "Fruit Notification", "FruitCheck", false, {
		global = true;
		save = true
	})
	J1:addButton("Teleport To Advanced Fruit Dealer", e.TPAdvFruitDealer or function()
	end)
	local E1 = V1:addMenu("Trinkets & Refiner")
	E1:addButton("Buy Trinket", e.BuyTrinket or function()
	end)
	s:CreateToggle(E1, "Auto Buy Trinkets", "AutoBuyTrinkets", false, {
		global = true,
		save = true,
		description = "Automatically buys trinkets when fragments/currency available"
	})
	E1:addButton("Fuse / Merge 3 Trinkets", e.FuseTrinkets or function()
	end)
	s:CreateToggle(E1, "Auto Fuse / Merge Trinkets", "AutoFuseTrinkets", false, {
		global = true;
		save = true,
		description = "Automatically merges 3 matching trinkets to upgrade grade"
	})
	E1:addButton("Reforge / Refine Trinket", e.RefineTrinket or function()
	end)
	s:CreateToggle(E1, "Auto Refine Trinket", "AutoRefineTrinkets", false, {
		global = true;
		save = true;
		description = "Automatically rerolls/refines trinket stats"
	})
	E1:addButton("Open Trinket Merge GUI", e.OpenTrinketMergeGUI or function()
	end)
	E1:addButton("Open Trinket Refiner GUI", e.OpenTrinketRefineGUI or function()
	end)
	E1:addButton("Open Trinket Scrap / Trash GUI", e.OpenTrinketScrapGUI or function()
	end)
	s:CreateToggle(E1, "Auto Scrap Junk Trinkets", "AutoScrapTrinkets", false, {
		global = true;
		save = true,
		description = "Automatically scraps surplus trinkets for simulation data"
	})
	local M1 = p.Trial:addSection()
	local W1 = M1:addMenu("Trials")
	if e.InitTempleOfTime then
		e.InitTempleOfTime()
	end
	W1:addButton("Go to Race Door", e.TPRaceDoor or function()
	end)
	local b1 = {
		"Last Resort";
		"Agility",
		"Water Body";
		"Heavenly Blood";
		"Heightened Senses",
		"Energy Core",
		"Primordial Reign"
	}
	local function I1()
		local K = {}
		for n, p in ipairs((game:GetService("Players")):GetPlayers()) do
			if p ~= u and (p:FindFirstChild("Data") and p.Data:FindFirstChild("Race")) then
				K[p.Name] = p.Data["Race"].Value
			end
		end
		return K
	end
	local function f1()
		local K = 0
		local n = (I and I:FindFirstChild("Temple of Time")) or (U:FindFirstChild("Map") and U.Map:FindFirstChild("Temple of Time"))
		if not n then
			if e and e.InitTempleOfTime then
				e.InitTempleOfTime()
			end
			n = (I and I:FindFirstChild("Temple of Time")) or (U:FindFirstChild("Map") and U.Map:FindFirstChild("Temple of Time"))
		end
		if not n then
			return false
		end
		local p = U.Characters:GetChildren()
		for u, s in pairs(I1()) do
			local c = n:FindFirstChild(s .. "Corridor")
			if c then
				local n = c:FindFirstChild("Door") and (c.Door:FindFirstChild("Door") and (c.Door["Door"]:FindFirstChild("RightDoor") and ((c.Door["Door"].RightDoor:FindFirstChild("Union") or c.Door["Door"].RightDoor:FindFirstChildWhichIsA("BasePart")))))
				if not n and c:FindFirstChild("Door") then
					n = c.Door:FindFirstChildWhichIsA("BasePart", true)
				end
				if n then
					for p, s in ipairs(p) do
						if s.Name == u then
							local p = s:FindFirstChild("HumanoidRootPart")
							local u = false
							if p then
								for K, n in ipairs(b1) do
									if p:FindFirstChild(n) or s:FindFirstChild(n) then
										u = true
										break
									end
								end
							end
							if u and ((p.Position - n.Position)).Magnitude <= 50 then
								K = K + 1
							end
							break
						end
					end
				end
			end
		end
		return K >= 2
	end
	s:CreateToggle(W1, "Auto (Activate) Race", "AutoActiveRacenear", false, {
		global = true,
		description = "instantly activates the race the moment 2+ accounts are ready there"
	})
	task.spawn(function()
		local K = 0
		while task.wait() do
			pcall(function()
				if X.AutoActiveRacenear and ((tick() - K > 1) and f1()) then
					K = tick()
					P.Remotes["CommE"]:FireServer("ActivateAbility")
				end
			end)
		end
	end)
	s:CreateToggle(W1, "Auto Complete Trials", "AutoFinishTrial", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(W1, "Kill Players after Trial", "AutoKillPlayerinTrial", false, {
		global = true,
		stop = true
	})
	W1:addButton("Reset Character", e.ResetCharHead or function()
	end)
	s:CreateToggle(W1, "Auto Choose Gear", "AutoChooseGear", false, {
		global = true,
		stop = true,
		description = "Automatically selects and places your gear in the Ancient Clock upon winning the trial"
	})
	s:CreateDropdown(W1, "Train Method", "TrainMethod", "Bones", A.TrainMethods or {
		"Bones",
		"Cakes"
	}, {
		global = true
	})
	s:CreateToggle(W1, "Start Auto Train", "AutoTrainGear", false, {
		global = true;
		stop = true
	})
	s:CreateToggle(W1, "Auto Pull Lever (Fully)", "AutoFullyPullLever", false, {
		locked = true,
		global = true,
		save = true,
		stop = true
	})
	s:CreateToggle(W1, "Teleport To Blue Gear", "TweenMGear", false, {
		global = true
	})
	local Y1 = M1:addMenu("Area")
	Y1:addButton("Teleport to Top of Great Tree", function()
		e.TPTrialArea("GreatTree")
	end)
	Y1:addButton("Teleport to Temple of Time", function()
		e.TPTrialArea("TempleOfTime")
	end)
	Y1:addButton("Teleport to Ancient One", function()
		e.TPTrialArea("AncientOne")
	end)
	Y1:addButton("Teleport to Lever Pull", function()
		e.TPTrialArea("LeverPull")
	end)
	Y1:addButton("Teleport to Safe Zone", function()
		e.TPTrialArea("SafeZone")
	end)
	Y1:addButton("Teleport back to Pvp Zone", function()
		e.TPTrialArea("PvpZone")
	end)
	Y1:addButton("Teleport to Clock", function()
		e.TPTrialArea("Clock")
	end)
	local K8 = p.Trial:addSection()
	local n8 = K8:addMenu("Misc Trial")
	s:CreateToggle(n8, "Auto Upgrade Gear", "BuyGear", false, {
		global = true
	})
	s:CreateToggle(n8, "Auto Activate V3", "AutoAgility", false, {
		global = true;
		save = true
	})
	s:CreateToggle(n8, "Auto Activate V4", "AutoActiveRaceV4", false, {
		global = true,
		save = true
	})
	s:CreateToggle(n8, "Auto Look Moon", "AutoLookMoon", false, {
		global = true
	})
	local p8 = K8:addMenu("Upgrades")
	s:CreateToggle(p8, "Auto Race Evolve V2", "AutoStartRaceV2", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(p8, "Auto Race Evolve V3", "AutoStartRaceV3", false, {
		global = true;
		stop = true
	})
	local u8 = K8:addMenu("Race Obtainment")
	s:CreateToggle(u8, "Auto Get Ghoul Race [Fully]", "AutoGetGhoulRace", false, {
		global = true,
		stop = true
	})
	s:CreateToggle(u8, "Auto Get Cyborg Race [Fully]", "AutoGetCyborgRace", false, {
		global = true,
		stop = true
	})
	local s8 = p.Travel:addSection()
	local c8 = s8:addMenu("World Travel")
	c8:addButton("Teleport to World 1", function()
		yU:FireInvoke("TravelMain")
	end)
	c8:addButton("Teleport to World 2", function()
		yU:FireInvoke("TravelDressrosa")
	end)
	c8:addButton("Teleport to World 3", function()
		yU:FireInvoke("TravelZou")
	end)
	local X8 = s8:addMenu("Island Travel")
	yU._ActiveIslands = A.ActiveIslands or {}
	s:CreateDropdown(X8, "Select Island", "TeleportIslandSelect", "walang kayo sorry", A.IslandsList or {}, {
		global = true
	})
	local A8 = s:CreateToggle(X8, "Start Traveling", "TeleportToIsland", false, {
		global = true;
		stop = true
	})
	yU._TravelToggle = A8
	local a8 = s8:addMenu("NPC Travel")
	s:CreateDropdown(a8, "Select Npc", "NpcTween", 1, A.NPCList or {}, {
		global = true
	})
	s:CreateToggle(a8, "Start Traveling", "TPtoNPC", false, {
		global = true;
		stop = true
	})
	local D8 = p.Travel:addSection()
	local Q8 = D8:addMenu("Server Travel")
	s:CreateTextbox(Q8, ("JobID [") .. (game.PlaceId .. "]"), "JobID", {
		save = false,
		callback = e.TeleportJobID
	})
	s:CreateTextbox(Q8, ("Quantum Premium [") .. (game.PlaceId .. "]"), "QuantumPremium", {
		save = false;
		callback = e.TeleportQuantumPremium
	})
	Q8:addButton("Copy Current Job ID", function()
		setclipboard(tostring(game.JobId))
	end)
	local S8 = D8:addMenu("Misc Travel")
	S8:addButton("Rejoin Server", e.RejoinServer or function()
	end)
	S8:addButton("Server Hop, Random Server", e.ServerHop or function()
	end)
	local F8 = D8:addMenu("Quantum Joiner")
	F8:addButton("Join Full Moon Server", function()
		e.JoinAPI("FullMoon")
	end)
	F8:addButton("Join Near Full Moon Server", function()
		e.JoinAPI("NearFullMoon")
	end)
	F8:addButton("Join Mirage Island Server", function()
		e.JoinAPI("mirage")
	end)
	F8:addButton("Join Elite Hunter Server", function()
		e.JoinAPI("elites")
	end)
	F8:addButton("Join Kitsune Island Server", function()
		e.JoinAPI("kitsune")
	end)
	F8:addButton("Join Prehistoric Island Server", function()
		e.JoinAPI("prehistoric")
	end)
	F8:addButton("Join Factory Raid Server", function()
		e.JoinAPI("factory")
	end)
	F8:addButton("Join 4 Hours Server", function()
		e.JoinAPI("fourhours")
	end)
	F8:addButton("Join Castle Raid Server", function()
		e.JoinAPI("pirate")
	end)
	s:CreateDropdown(F8, "Select Legendary Sword", "SelectLegendarySword", 1, A.LegendarySwordNames or {
		"Shizu",
		"Oroshi",
		"Saishi"
	}, {
		global = true
	})
	F8:addButton("Join Legendary Sword Server", function()
		e.JoinAPI("legendarysword")
	end)
	F8:addButton("Join Fruit Server", function()
		e.JoinAPI("fruit")
	end)
	s:CreateDropdown(F8, "Select Boss", "SelectBosstoHop", 1, A.BossHopNames or {}, {
		global = true
	})
	F8:addButton("Join Raid Boss Server", e.JoinRaidBossServer or function()
	end)
	local H8 = D8:addMenu("AFK Quantum Joiner")
	s:CreateSlider(H8, "Hop Delay (s)", "HopDelay", 1, 60, 10, {
		global = true;
		save = true
	})
	s:CreateToggle(H8, "Auto Afk Join Castle Raid", "AutoAfkJoinCastleRaid", false, {
		locked = true,
		save = true,
		global = true
	})
	s:CreateToggle(H8, "Auto Afk Join Factory Raid", "AutoAfkJoinFactoryRaid", false, {
		locked = true;
		global = true,
		save = true
	})
	s:CreateToggle(H8, "Auto Afk Join Boss Raid", "AutoAfkJoinBossRaid", false, {
		locked = true,
		global = true;
		save = true
	})
	s:CreateToggle(H8, "Auto Afk Join Elite Hunter", "AutoAfkJoinEliteHunter", false, {
		locked = true;
		global = true;
		save = true
	})
	s:CreateToggle(H8, "Auto Afk Join Fruit", "AutoAfkJoinFruit", false, {
		locked = true;
		global = true;
		save = true
	})
	s:CreateToggle(H8, "Stop Hop If Chalice / Fist", "StopHopEliteIfChalice", true, {
		global = true;
		save = true
	})
	local O8 = p.Shop:addSection()
	local L8 = O8:addMenu("Selection Shop")
	s:CreateDropdown(L8, "Select Melee", "SelectMelee", 1, A.MeleeNames or {}, {
		global = true
	})
	s:CreateToggle(L8, "Auto Buy Melee", "AutoBuyMelee", false, {
		global = true,
		stop = true
	})
	s:CreateDropdown(L8, "Abilities", "BuyAbility", "Geppo", A.AbilityNames or {}, {
		global = true
	})
	L8:addButton("Buy Ability", function()
		if X.BuyAbility and e.BuyItem then
			e.BuyItem(X.BuyAbility, "Ability")
		end
	end)
	s:CreateDropdown(L8, "Gun list", "GunSelect", "Slingshot", A.GunNames or {}, {
		global = true
	})
	L8:addButton("Buy Gun", function()
		if X.GunSelect and e.BuyItem then
			e.BuyItem(X.GunSelect, "Gun")
		end
	end)
	s:CreateDropdown(L8, "Accessories", "BuyAccessories", 1, A.AccessoryNames or {}, {
		global = true
	})
	L8:addButton("Buy Accessory", function()
		if X.BuyAccessories and e.BuyItem then
			e.BuyItem(X.BuyAccessories, "Accessory")
		end
	end)
	local U8 = O8:addMenu("Item Shop")
	s:CreateToggle(U8, "Buy Haki Color", "AutoBuyEnchancementColor", false, {
		global = true;
		save = true
	})
	s:CreateToggle(U8, "Buy Legendary Sword", "BuyLegendSword", false, {
		global = true;
		save = true
	})
	s:CreateToggle(U8, "Buy True Triple Katana", "BuyTTK", false, {
		global = true,
		save = true
	})
	local P8 = p.Shop:addSection()
	local R8 = P8:addMenu("Normal Fruit Dealer")
	s:CreateDropdown(R8, "Select Fruit to Buy", "SelectFruitDealerFruit", "Buddha-Buddha", A.DealerFruitList or {}, {
		global = true,
		save = true
	})
	s:CreateToggle(R8, "Auto Buy Fruit (Normal Dealer)", "AutoBuyFruitDealer", false, {
		global = true,
		save = true
	})
	R8:addButton("Buy Selected Fruit", e.BuySelectedFruit or function()
	end)
	local T8 = P8:addMenu("Race Shop")
	T8:addButton("Cyborg Race", e.BuyCyborgRace or function()
	end)
	T8:addButton("Ghoul Race", e.BuyGhoulRace or function()
	end)
	local x8 = P8:addMenu("Fragment Shop")
	x8:addButton("Reroll Race", function()
		if e.BuyItem then
			e.BuyItem("Race Rerol", "Frags")
		end
	end)
	x8:addButton("Reset Player Stats", function()
		if e.BuyItem then
			e.BuyItem("Reset Stats", "Frags")
		end
	end)
	local e8 = P8:addMenu("Scroll Crafting & Trade")
	s:CreateDropdown(e8, "Select Scroll", "SelectScrollType", "Common Scroll", {
		"Common Scroll",
		"Rare Scroll";
		"Legendary Scroll",
		"Mythical Scroll"
	}, {
		global = true;
		save = true
	})
	s:CreateSlider(e8, "Craft Amount", "ScrollCraftAmount", 1, 10, 1, {
		global = true
	})
	e8:addButton("Craft Selected Scroll", e.CraftScroll or function()
	end)
	s:CreateToggle(e8, "Auto Craft Selected Scroll", "AutoCraftScrolls", false, {
		global = true,
		save = true;
		description = "Automatically crafts scrolls when you have sufficient materials"
	})
	local y8 = p.Misc:addSection()
	local z8 = y8:addMenu("Team Selection")
	z8:addButton("Join Marines Team", function()
		yU:FireInvoke("SetTeam", "Marines")
	end)
	z8:addButton("Join Pirates Team", function()
		yU:FireInvoke("SetTeam", "Pirates")
	end)
	local w8 = y8:addMenu("Menu Openings")
	w8:addButton("Open Title Names", e.OpenTitleNames or function()
	end)
	w8:addButton("Open Awakenings", e.OpenAwakenings or function()
	end)
	local o8 = y8:addMenu("Fake Admin")
	o8:addButtonGrid("Admin Panel", A.AdminPanelGrid or {})
	local G8 = p.Misc:addSection()
	local r8 = G8:addMenu("Players Clients")
	s:CreateToggle(r8, "Remove Observation Effect", "RemoveObservationEffect", false, {
		global = true;
		save = true
	})
	s:CreateSlider(r8, "Walk Speed", "WalkSpeed", 50, 500, 50, {
		callback = e.SetWalkSpeed
	})
	s:CreateSlider(r8, "Jump Power", "JumpPower", 50, 500, 50, {
		callback = e.SetJumpPower
	})
	s:CreateToggle(r8, "X-ray Vision", "XrayVision", false, {
		callback = e.ToggleXray
	})
	s:CreateToggle(r8, "Infinite Zoom", "InfiniteZoom", false, {
		callback = e.ToggleInfiniteZoom
	})
	s:CreateToggle(r8, "White Screen", "White_Screen", false, {
		callback = e.ToggleWhiteScreen
	})
	s:CreateToggle(r8, "Black Screen", "BlackScreen", false, {
		callback = e.ToggleBlackScreen
	})
	r8:addButton("Redeem all Codes", e.RedeemAllCodes or function()
	end)
	s:CreateToggle(r8, "Remove Fog", "NoFog", false, {
		global = true;
		save = true
	})
	r8:addButton("Force FPS BOOST", e.ForceFPSBoost or function()
	end)
	r8:addButton("Developer Console", e.OpenDevConsole or function()
	end)
	r8:addButton("Clean Memory / Free RAM (GC)", e.CleanMemory or function()
	end)
	s:CreateToggle(r8, "Auto Memory Cleaner (60s)", "AutoCleanMemory", true, {
		global = true;
		save = true
	})
	s:CreateToggle(r8, "Auto Turn On Fast Mode", "AutoFastMode", false, {
		global = true;
		save = true;
		description = "Automatically enables the game's built-in Fast Mode setting to maximize FPS";
		callback = e.OnFastModeToggle
	})
	local B8 = p.Web:addSection()
	local l8 = B8:addMenu("General Webhook")
	s:CreateTextbox(l8, "Main Webhook Url", "Webhook", {
		save = true;
		global = true
	})
	s:CreateToggle(l8, "Enable Send Webhook", "AutoWebhook", false, {
		global = true,
		save = true
	})
	l8:addButton("Send Test Webhook", e.SendTestWebhook or function()
	end)
	local i8 = B8:addMenu("World & Fruit Events")
	s:CreateToggle(i8, "Send Webhook Prehistoric", "SendWebhookPrehistoric", false, {
		global = true;
		save = true
	})
	s:CreateToggle(i8, "Send Webhook Kitsune", "SendWebhookKitsune", false, {
		global = true,
		save = true
	})
	s:CreateToggle(i8, "Send Webhook Mirage", "SendWebhookMirage", false, {
		global = true;
		save = true
	})
	s:CreateToggle(i8, "Send Webhook Rolled Fruit", "SendWebhookRolledFruit", false, {
		global = true,
		save = true
	})
	s:CreateToggle(i8, "Send Webhook Store Fruit", "SendWebhookStoreFruit", false, {
		global = true,
		save = true
	})
	local k8 = p.Web:addSection()
	local d8 = k8:addMenu("Data Log & Farm Tracker")
	s:CreateToggle(d8, "Enable Data Log Webhook", "SendWebhookDataLog", false, {
		global = true;
		save = true
	})
	s:CreateTextbox(d8, "DataLog Webhook URL (Optional)", "DataLogWebhookUrl", {
		save = true,
		global = true
	})
	s:CreateSlider(d8, "Data Log Interval (Minutes)", "DataLogInterval", 1, 60, 5, {
		global = true,
		save = true
	})
	s:CreateToggle(d8, "Send on Level Up", "SendWebhookLevelUp", false, {
		global = true;
		save = true
	})
	s:CreateToggle(d8, "Include Inventory in Data Log", "SendWebhookInventory", true, {
		global = true,
		save = true
	})
	s:CreateToggle(d8, "Include Farms All Summary", "SendWebhookFarmsAll", true, {
		global = true,
		save = true
	})
	d8:addButton("Send Data Log Now", e.SendDataLogNow or function()
	end)
	local j8 = k8:addMenu("Webhook Ping & Settings")
	s:CreateTextbox(j8, "Discord User ID (For Ping)", "WebhookPingId", {
		save = true,
		global = true
	})
	s:CreateToggle(j8, "Ping on Mirage / Kitsune", "WebhookPingOnEvents", false, {
		global = true;
		save = true
	})
	s:CreateToggle(j8, "Ping on Mythical Fruit", "WebhookPingOnMythical", false, {
		global = true;
		save = true
	})
end
yU.LoadLoops = function()
	yU.Loops = yU.Loops or {}
	local K = {}
	local function n(n, p, u, s)
		if not n or type(u) ~= "function" then
			return
		end
		if K[n] then
			K[n].Active = false
			if K[n].Thread then
				task.cancel(K[n].Thread)
				K[n].Thread = nil
			end
		end
		local c = {
			Name = n,
			Interval = p or 0;
			Func = u;
			NoCheck = s or false,
			Running = false,
			Active = true;
			Stop = function()
				if X then
					X[n] = false
				end
				if yU.Loops[n] then
					yU.Loops[n].Running = false
				end
			end
		}
		yU.Loops[n] = c
		K[n] = c
		c.Thread = task.spawn(function()
			local K = p and (p > 0 and p) or .03
			while c.Active do
				if c.NoCheck or (X and X[n]) then
					c.Running = true
					pcall(u)
					c.Running = false
					task.wait(K)
				else
					task.wait(.5)
				end
			end
		end)
	end
	n("ESPPlayer", .5, PlayerESP)
	n("ESPIsland", 2, IslandESP)
	n("DevilFruitESP", 1, FruitESP)
	n("ESPChest", 1.5, ChestESP)
	n("ESP_Berries", 1.5, BerryESP)
	n("ESP_RealFruits", 1.5, RealFruitESP)
	n("ESPMyBoat", 1.5, MyBoatESP)
	n("AutoFastMode", 3, function()
		if not F.FastMode then
			F.SetFastMode(true)
		end
	end)
	local p = nil
	n("QuantumAttack", .5, function()
		if X.QuantumAttack then
			if not p then
				p = hookfunction(task.delay, function(K, n, ...)
					if K > .1 then
						return p(0, n, ...)
					end
					return p(K, n, ...)
				end)
				local K = require(P.Util["CameraShaker"])
				K:Stop()
			end
		else
			if p then
				hookfunction(task.delay, p)
				p = nil
			end
		end
	end, true)
	local s = tick()
	local c = tick()
	local A = tick()
	local a = tick()
	local D = tick()
	local Q = 0
	local function O(K)
		local n = u.PlayerGui:FindFirstChild("Notifications")
		if not n then
			return false
		end
		for n, p in ipairs(n:GetChildren()) do
			for n, p in ipairs(p:GetChildren()) do
				if p:IsA("TextLabel") and string.find(p.Text, K) then
					return true
				end
			end
		end
		return false
	end
	n("AutoAfkJoinBossRaid", .4, function()
		if tick() - s < 2.5 then
			a = tick()
		else
			local K = X.SelectBosstoHop
			if type(K) == "number" or not K or K == "" then
				K = d1[K] or d1[1] or "rip_indra True Form"
			end
			local n = k1[K] or K or "Ripindra"
			if K and n then
				local p = WU:GetConnectMon(K)
				if not p and ((K == "rip_indra True Form" or K == "Ripindra")) then
					p = WU:GetConnectMon("rip_indra") or WU:GetConnectMon("rip_indra True Form")
				end
				if not p then
					if tick() - a >= 3 then
						a = tick()
						vU(n, 0)
					end
				else
					a = tick()
				end
			end
		end
	end)
	n("AutoAfkJoinEliteHunter", .4, function()
		if not pU then
			return
		end
		if tick() - s < 2.5 then
			D = tick()
		elseif X.StopHopEliteIfChalice and ((WU:CheckToolName("God's Chalice") or WU:CheckToolName("Sweet Chalice") or WU:CheckToolName("Fist of Darkness"))) then
			X.AutoAfkJoinEliteHunter = false
			if yU and (yU.Toggles and (yU.Toggles["AutoAfkJoinEliteHunter"] and yU.Toggles["AutoAfkJoinEliteHunter"].Update)) then
				pcall(function()
					yU.Toggles["AutoAfkJoinEliteHunter"].Update(false)
				end)
			end
			if yU and yU.SendNotify then
				yU:SendNotify("Elite Hunter", "Chalice / Fist detected! Stopped auto elite hop.", 5)
			end
		else
			local K = B1:Checkelites()
			if not K and (tick() - Q >= 1.5) then
				Q = tick()
				pcall(function()
					yU:FireInvoke("EliteHunter")
				end)
				task.wait(.2)
				K = B1:Checkelites()
			end
			if K then
				D = tick()
				if not VerifyQuest(K) then
					pcall(function()
						yU:FireInvoke("AbandonQuest")
					end)
					task.wait(.1)
					pcall(function()
						yU:FireInvoke("EliteHunter")
					end)
				else
					local n = WU:GetEnemies(K)
					if n then
						l1:Attack(n)
					end
				end
			else
				if tick() - D >= 3 then
					D = tick()
					vU("elites", 0)
				end
			end
		end
	end)
	n("AutoAfkJoinCastleRaid", .4, function()
		if not pU then
			return
		end
		if tick() - s < 2.5 then
			c = tick()
		elseif B1:DetectPirateRaid() then
			c = tick()
		elseif O("Good job!") or tick() - c >= 10 then
			vU("pirate", 0)
			c = tick()
		end
	end)
	n("AutoAfkJoinFactoryRaid", .4, function()
		if not nU then
			return
		end
		if tick() - s < 2.5 then
			A = tick()
		elseif WU:CheckMon("Core") then
			A = tick()
		elseif O("MALffffUNCtion. END") or tick() - A >= 3 then
			vU("factory", 0)
			A = tick()
		end
	end)
	local L = tick()
	local function R()
		for K, n in ipairs(U:GetChildren()) do
			if n:IsA("Tool") and ((n.ToolTip == "Blox Fruit" or n.Name:find("Fruit") or n:FindFirstChild("Handle"))) then
				local K = n:FindFirstChild("Handle") or n:FindFirstChildWhichIsA("BasePart")
				if K then
					return n, K
				end
			end
		end
		return nil, nil
	end
	n("AutoAfkJoinFruit", .4, function()
		if tick() - s < 2.5 then
			L = tick()
			return
		end
		local K, n = R()
		if K and n then
			L = tick()
			if v then
				mU:topos(n.CFrame)
				if ((v.Position - n.Position)).Magnitude <= 30 then
					firetouchinterest(v, n, 0)
					task.wait(.1)
					firetouchinterest(v, n, 1)
				end
			end
			local p = u.Backpack:FindFirstChild(K.Name) or (u.Character and u.Character:FindFirstChild(K.Name))
			if p then
				local K = p:GetAttribute("OriginalName") or p.Name
				pcall(function()
					yU:FireInvoke("StoreFruit", K, p)
				end)
			end
		else
			if tick() - L >= 3 then
				L = tick()
				vU("fruit", 0)
			end
		end
	end)
	local T = false
	local e = V and V.Value or 0
	n("AutoDataLogWebhook", 5, function()
		if V and V.Value then
			if V.Value > e then
				local K = V.Value - e
				e = V.Value
				if X.SendWebhookLevelUp and ((X.AutoWebhook or X.SendWebhookDataLog)) then
					H:SendDataLog("Level Up Detected!", ("**New Level Reached:** ") .. (D1(V.Value) .. ((" *(+") .. (K .. ")*"))))
				end
			elseif V.Value < e then
				e = V.Value
			end
		end
		if X.SendWebhookDataLog and ((X.AutoWebhook or (X.DataLogWebhookUrl and X.DataLogWebhookUrl ~= ""))) then
			local K = math.max(60, ((tonumber(X.DataLogInterval) or 5)) * 60)
			if (tick() - S.LastDataLogTick) >= K then
				H:SendDataLog("Quantum Onyx - Periodic Farm Data Log")
			end
		end
	end, true)
	n("AutoMemoryCleaner", 60, function()
		if X.AutoCleanMemory ~= false then
			F.CleanMemory()
		end
	end, true)
	n("AutoDebrisLagCleaner", 15, function()
		if X.AutoClearDebris ~= false then
			F.ClearDebris()
		end
		if X.AutoAggressiveGC ~= false then
			F.CleanMemory()
		end
	end, true)
	n("RemoveObservationEffect", .2, function()
		if not X.RemoveObservationEffect then
			return
		end
		pcall(function()
			local K = u:GetAttribute("KenActive")
			if K then
				for K, n in next, x:GetChildren() do
					if n:IsA("BlurEffect") and n.Name == "Blur" then
						n.Enabled = false
					elseif n:IsA("ColorCorrectionEffect") and n.Name == "ColorCorrection" then
						n.Enabled = false
					end
				end
				local K = workspace.CurrentCamera
				if K then
					for K, n in next, K:GetChildren() do
						if n:IsA("BasePart") and (n.Name:lower()):find("ken") then
							n.Transparency = 1
						end
					end
				end
			end
		end)
	end, true)
	n("AutoWebhook", 1, function()
		if X.SendWebhookPrehistoric or X.SendWebhookKitsune or X.SendWebhookMirage then
			local K = {
				["Prehistoric Island"] = X.SendWebhookPrehistoric;
				["Kitsune Island"] = X.SendWebhookKitsune;
				["Mirage Island"] = X.SendWebhookMirage
			}
			for K, n in next, K do
				if n then
					local n = f.Locations:FindFirstChild(K)
					if n and not C[K] then
						C[K] = true
						PostWebhook(X.Webhook, WeeboLogs(K, {
							Position = (n:GetPivot()).Position
						}))
					elseif not n then
						C[K] = false
					end
				end
			end
		end
		if not T then
			T = true
			cU.OnClientEvent:Connect(function(K, n, p)
				if K == "ItemChanged" and (p == "stored" and (n and n.Name)) then
					if X.SendWebhookStoreFruit then
						local K = yU:FireInvoke("getInventory")
						local p = {}
						for K, n in pairs(K) do
							if n.Type == "Blox Fruit" then
								table.insert(p, n.Name)
							end
						end
						PostWebhook(X.Webhook, WeeboLogs("Stored Fruit", {
							Extra = ("**Fruit:** ") .. n.Name;
							Field2 = {
								name = "Inventory";
								value = # p > 0 and table.concat(p, ", ") or "Empty"
							}
						}))
					end
				end
			end)
			local K = (game:GetService("ReplicatedStorage")).Modules["Net"]["RE/SpinGacha"]
			K.OnClientEvent:Connect(function(K)
				if K and (K.Winners and K.Winners[1]) then
					if X.SendWebhookRolledFruit then
						local n = K.Winners[1]
						if n.ItemType == "Fruit" and n.DisplayName then
							PostWebhook(X.Webhook, WeeboLogs("Rolled Fruit", {
								Extra = ("**Fruit:** ") .. n.DisplayName
							}))
						end
					end
				end
			end)
		end
	end)
	local y = 0
	n("AutoServerRefresh", 3, function()
		if tick() - y < 3 then
			return
		end
		y = tick()
		if yU._ServerInfo and (type(yU._ServerInfo["RefreshDesc"]) == "function" and type(yU._StatusServer) == "function") then
			pcall(function()
				local K = yU._StatusServer()
				if K then
					yU._ServerInfo:RefreshDesc(K)
				end
			end)
		end
	end, true)
	n("TradeAzureEmber", .5, function()
		local K = WU:CheckInventory("Material", "Azure Ember")
		if K >= X.SetAzureEmber then
			(AU:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer()
			yU:FireInvoke("KitsuneStatuePray")
		end
	end)
	n("AutoGetAnglerQuest", 2, function()
		local K = AU:FindFirstChild("RF/JobsRemoteFunction")
		if K then
			pcall(function()
				K:InvokeServer("FishingNPC", "Angler", "CheckQuest")
				local n = K:InvokeServer("FishingNPC", "Angler", "Speak")
				if n and ((n.canAccept or not n.IsInQuest)) then
					K:InvokeServer("FishingNPC", "Angler", "AskQuest")
				end
			end)
		end
	end)
	n("AutoUseRodSkill", .5, function()
		(AU:WaitForChild("RF/JobToolAbilities")):InvokeServer("Z", true)
	end)
	n("FruitCheck", 1, function()
		for K, n in next, U:GetChildren() do
			if n:IsA("Model") and (string.find(n.Name, "Fruit") and not string.find(n.Name, "Fruit1")) then
				local K = n.Name
				if K == "Fruit" then
					K = "Spawned Unknown Fruit"
				end
				yU:SendNotify("Blox Fruit Spawned", ("") .. (K .. " has spawned in the map!"), 15)
			end
		end
	end)
	n("AutoAwaken", .5, function()
		yU:FireInvoke("Awakener", "Check")
		yU:FireInvoke("Awakener", "Awaken")
	end)
	local z = 0
	n("AutoBuyFruitDealer", 5, function()
		if not X.AutoBuyFruitDealer or not X.SelectFruitDealerFruit then
			return
		end
		if tick() - z < 10 then
			return
		end
		local K = X.SelectFruitDealerFruit
		if not K or K == "" then
			return
		end
		local n, p = pcall(function()
			return yU:FireInvoke("GetFruits")
		end)
		if n and typeof(p) == "table" then
			for n, p in next, p do
				if p and ((p.Name == K or p.Name:match("^(.-)%-") == K:match("^(.-)%-"))) then
					if p.OnSale == true then
						local K = Z and Z.Value or 0
						local n = tonumber(p.Price) or 0
						if K >= n then
							z = tick()
							local K = pcall(function()
								return yU:FireInvoke("PurchaseRawFruit", p.Name, false)
							end)
							if K then
								yU:SendNotify("Fruit Dealer", ("Auto-bought ") .. (p.Name .. ((" for $") .. (D1(n) .. "!"))), 6)
								if X.SendWebhookStoreFruit or X.AutoWebhook then
									local K = ((X.DataLogWebhookUrl and X.DataLogWebhookUrl ~= "")) and X.DataLogWebhookUrl or X.Webhook
									if K and K ~= "" then
										PostWebhook(K, WeeboLogs("Fruit Dealer Purchase", {
											Extra = ("**Auto Purchased Fruit:** ") .. (p.Name .. ((" ($") .. (D1(n) .. ")")));
											Field2 = {
												name = "Beli Remaining",
												value = ("$") .. D1(((Z and Z.Value or 0)) - n)
											}
										}))
									end
								end
							end
						end
					end
					break
				end
			end
		end
	end, true)
	local w = 0
	n("AutoCraftScrolls", 5, function()
		if not X.AutoCraftScrolls then
			return
		end
		if tick() - w < 5 then
			return
		end
		w = tick()
		local K = X.SelectScrollType or "Common Scroll"
		local n = {
			["Common Scroll"] = "CommonScroll",
			["Rare Scroll"] = "RareScroll";
			["Legendary Scroll"] = "LegendaryScroll",
			["Mythical Scroll"] = "MythicalScroll"
		}
		local p = n[K] or "CommonScroll"
		local u = tonumber(X.ScrollCraftAmount) or 1
		pcall(function()
			(SU:RemoteFunction("Craft")):InvokeServer(p, u)
		end)
	end, true)
	n("AutoActivateObservationHaki", .5, function()
		uU.CommE:FireServer("Ken", true)
	end)
	n("AutoSellFish", .5, function()
		(AU:WaitForChild("RF/JobsRemoteFunction")):InvokeServer("FishingNPC", "SellFish")
	end)
	n("AutoAgility", .5, function()
		P.Remotes["CommE"]:FireServer("ActivateAbility")
	end)
	n("AutoActiveRaceV4", .5, function()
		if u.Character and (u.Character:FindFirstChild("RaceEnergy") and u.Character:FindFirstChild("RaceTransformed")) then
			if u.Character["RaceEnergy"].Value >= 1 and not u.Character["RaceTransformed"].Value then
				u.Backpack["Awakening"].RemoteFunction:InvokeServer({
					[1] = true
				})
			end
		end
	end)
	n("AutoLookMoon", .2, function()
		U.CurrentCamera["CFrame"] = CFrame.lookAt(U.CurrentCamera["CFrame"].p, U.CurrentCamera["CFrame"].p + x:GetMoonDirection() * 100)
	end)
	n("ManualIncreaseBoatSpeed", .2, function()
		if u.Character and (u.Character:FindFirstChild("Humanoid") and u.Character["Humanoid"].Sit) then
			local K = u.Character["Humanoid"].SeatPart
			if K and K:IsA("VehicleSeat") then
				K.MaxSpeed = tonumber(X.ManualBoatSpeed) or 150
				K.Torque = .2
				K.TurnSpeed = 5
			else
				for K, n in next, b:GetChildren() do
					local p = n:FindFirstChildWhichIsA("VehicleSeat") or n:FindFirstChild("VehicleSeat")
					if p then
						p.MaxSpeed = tonumber(X.ManualBoatSpeed) or 150
						p.Torque = .2
						p.TurnSpeed = 5
					end
				end
			end
		end
	end)
	n("BuyGear", .5, function()
		yU:FireInvoke("UpgradeRace", "Buy")
	end)
	n("AutoBuyEnchancementColor", .5, function()
		yU:FireInvoke("ColorsDealer", "1")
		yU:FireInvoke("ColorsDealer", "2")
	end)
	n("BuyTTK", .5, function()
		yU:FireInvoke("MysteriousMan", "2")
	end)
	n("BuyLegendSword", .5, function()
		yU:FireInvoke("LegendarySwordDealer", "1")
		yU:FireInvoke("LegendarySwordDealer", "2")
	end)
	n("Random_Auto", 2, function()
		local K = SU:RemoteFunction("GachaNetworkRF")
		local n = K:InvokeServer({
			Context = "Check";
			BoxName = "ZiolesGacha"
		})
		if n and n.RequirementsMet then
			K:InvokeServer({
				Context = "Purchase";
				BoxName = "ZiolesGacha"
			})
			if yU and yU.SendNotify then
				yU:SendNotify("Random Fruit", "Successfully purchased!", 5)
			end
			task.wait(.5)
			pcall(function()
				(require(P.Controllers["UI"].Spinner)).Close()
			end)
		end
	end)
	local o = {}
	n("AutoStoreFruit", 1, function()
		local K = {
			u.Backpack;
			u.Character;
			U.Characters:FindFirstChild(u.Name)
		}
		for K, n in ipairs(K) do
			if n then
				for K, n in ipairs(n:GetChildren()) do
					if n:IsA("Tool") and string.find(n.Name, "Fruit") then
						local K = n:GetAttribute("OriginalName") or n.Name:match("^(.-)%-") or n.Name
						local p = o[K] or 0
						if (tick() - p) > 45 then
							local p = yU:FireInvoke("StoreFruit", K, n)
							task.wait(.3)
							if not n:IsDescendantOf(game) or n.Parent == nil or p == true then
								o[K] = nil
								if X.SendWebhookStoreFruit then
									local n = X.Webhook
									if n and n ~= "" then
										local p = {}
										pcall(function()
											local K = (SU:RemoteFunction("GetAllItemValues")):InvokeServer()
											if K and typeof(K) == "table" then
												for K, n in next, K do
													if n.Key == "IsOwned" and n.Value == true then
														local K, u = pcall(function()
															return FU.match(n.ItemId)
														end)
														if K and (u and (u.isOk and u:isOk())) then
															local K = u:unwrap()
															if K and (K.Index and K.Index["DebugLabel"]) then
																local n = tostring(K.Index["DebugLabel"])
																if n:find("PhysicalMoveset") or n:find("Fruit") then
																	local K = n:match("^(.-)%s*%[") or n
																	local u = K:match("^(.-)%-") or K
																	table.insert(p, u)
																end
															end
														end
													end
												end
											end
										end)
										PostWebhook(n, WeeboLogs("Stored Fruit", {
											Extra = ("**Stored Fruit:** ") .. K,
											Field2 = {
												name = "Storage Count",
												value = tostring(# p) .. " Fruits Stored"
											}
										}))
									end
								end
							else
								o[K] = tick()
							end
						end
					end
				end
			end
		end
	end)
	n("Auto_Random_Surprise", 2, function()
		local K = WU:CheckInventory("Material", "Bones")
		if K >= 50 then
			yU:FireInvoke("Bones", "Buy", 1, 1)
			task.wait(1.5)
		end
	end)
	n("AutoRollMagnetGacha", 2, function()
		local K = SU:RemoteFunction("GachaNetworkRF")
		local n = K:InvokeServer({
			Context = "Check",
			BoxName = "MagnetEventGacha26"
		})
		if n and n.RequirementsMet then
			K:InvokeServer({
				Context = "Purchase",
				BoxName = "MagnetEventGacha26"
			})
			if yU and yU.SendNotify then
				yU:SendNotify("Magnet Gacha", "Rolled Magnet Gacha!", 4)
			end
			task.wait(1.5)
		end
	end)
	n("AutoPray", 1, function()
		yU:FireInvoke("gravestoneEvent", 1)
	end)
	n("AutoTryLuck", 1, function()
		yU:FireInvoke("gravestoneEvent", 2)
	end)
	n("AutoAttack", 0, function()
		if X.AutoAttack ~= false and (JU and JU.Attack) then
			JU.Attack()
		end
	end, true)
	n("NoFog", 2.5, function()
		if X.NoFog then
			x.FogEnd = math.huge
			if x:FindFirstChild("FantasySky") then
				x.FantasySky:Destroy()
			elseif x:FindFirstChild("Sky") then
				x.Sky:Destroy()
			elseif x:FindFirstChild("SeaTerrorCC") then
				x.SeaTerrorCC:Destroy()
			end
			local K = x:FindFirstChild("LightingLayers")
			if K then
				for K, n in ipairs(K:GetChildren()) do
					if (n:IsA("Atmosphere") or n:IsA("Sky")) then
						n:Destroy()
					end
				end
			end
		end
	end)
	n("AutoCardsDungeon", .3, function()
		local K = X.CardsSelection
		if not K then
			return
		end
		if type(K) == "string" then
			K = {
				K
			}
		end
		if # K == 0 then
			return
		end
		for n, p in ipairs(u.PlayerGui:GetDescendants()) do
			if p:IsA("TextLabel") and (p.Name == "DisplayName" and p.Text) then
				local n = string.lower(p.Text:gsub("<[^>]+>", ""))
				for K, u in ipairs(K) do
					if string.find(n, string.lower(u)) then
						local K = p.Parent
						if K and K.Activated then
							firesignal(K.Activated)
							return true
						end
					end
				end
			end
		end
	end)
end
yU.LoadFunctions = function()
	yU.Functions = yU.Functions or {}
	yU.FunctionList = yU.FunctionList or {}
	yU.ActiveFunction = yU.ActiveFunction or nil
	local K = yU.Functions
	local p = yU.FunctionList
	local s = .25
	local c = {}
	local A = nil
	local function a()
		if X.AutoFarmPirateRaid and pU then
			if B1:DetectPirateRaid() then
				A = tick()
				yU.ActiveFunction = "AutoFarmPirateRaid"
				return true
			elseif A and tick() - A < 8 then
				yU.ActiveFunction = "AutoFarmPirateRaid"
				return true
			end
		end
		if X.AutoFactoryRaid and (WU:CheckMon("Core") and nU) then
			yU.ActiveFunction = "AutoFactoryRaid"
			return true
		end
		if X.AutoSoulReaper and pU then
			if WU:CheckMon("Soul Reaper") or WU:CheckToolName("Hallow Essence") then
				yU.ActiveFunction = "AutoSoulReaper"
				return true
			end
		end
		if X.AutoTaskEliteHunter and pU then
			if B1:Checkelites() then
				yU.ActiveFunction = "AutoTaskEliteHunter"
				return true
			end
		end
		if X.Tweenfruit then
			if B1:GetPathFruit() or X.HopIfNoFruit then
				yU.ActiveFunction = "Tweenfruit"
				return true
			end
		end
		if X.AutoBerrySafe then
			if B1:CheckBerries() or X.HopIfNoBerries then
				yU.ActiveFunction = "AutoBerrySafe"
				return true
			end
		end
		yU.ActiveFunction = nil
		return false
	end
	local function D(K, n)
		yU.ActiveFunction = K
		n.Running = true
		pcall(n.Func)
		task.wait(s)
	end
	local function Q(K, n)
		if K.Running then
			K.Running = false
		end
		task.wait(n or s)
	end
	local function S(n, u, s, A)
		if not n or type(u) ~= "function" or not s then
			return
		end
		if c[n] then
			if K[n] then
				K[n].StopFlag = true
			end
			task.cancel(c[n])
			c[n] = nil
		end
		K[n] = {
			Enable = s;
			Running = false;
			Func = u;
			NoLock = A or false;
			StopFlag = false;
			Stop = function()
				if X then
					X[n] = false
				end
				K[n].Running = false
				if yU.ActiveFunction == n then
					yU.ActiveFunction = nil
				end
				mU:StopTween()
				if mU.StopBoatTween then
					mU:StopBoatTween()
				end
			end;
			Call = function()
				local K = yU.ActiveFunction
				yU.ActiveFunction = nil
				pcall(u)
				yU.ActiveFunction = K
			end
		}
		local S = false
		for K, p in ipairs(p) do
			if p.Name == n then
				p.Func = u
				S = true
				break
			end
		end
		if not S then
			table.insert(p, {
				Name = n,
				Func = u
			})
		end
		c[n] = task.spawn(function()
			local p = K[n]
			while p and not p.StopFlag do
				if not ((X and X[n])) then
					if yU.ActiveFunction == n then
						yU.ActiveFunction = nil
					end
					Q(p, .5)
				elseif p.NoLock then
					D(n, p)
				elseif yU.IsMultiFunction(n) then
					if a() and yU.ActiveFunction == n then
						D(n, p)
					else
						Q(p)
					end
				elseif a() then
					Q(p)
				elseif yU.ActiveFunction == nil or yU.ActiveFunction == n then
					D(n, p)
					yU.ActiveFunction = nil
				else
					Q(p)
				end
			end
			if yU.ActiveFunction == n then
				yU.ActiveFunction = nil
			end
		end)
		if X and X[n] then
			K[n].Running = true
		end
	end
	S("AutoTaskEliteHunter", function()
		local K = B1:Checkelites()
		if K then
			if not VerifyQuest(K) then
				yU:FireInvoke("AbandonQuest")
				task.wait(.1)
				yU:FireInvoke("EliteHunter")
			else
				local n = WU:GetEnemies(K)
				if n then
					return l1:Attack(n)
				end
			end
		end
	end, pU)
	S("AutoFarmBones", function()
		if X.AcceptQuests and not VerifyQuest("Demonic Soul") then
			return WU:StartQuest("HauntedQuest2", 1, CFrame.new(- 9517, 172, 6078))
		end
		local K = WU:GetEnemies(yU.DataList["BonesList"])
		if K then
			return l1:Attack(K, true)
		end
		WU:MobsNextSpawn("Reborn Skeleton")
	end, pU)
	S("AutoFarmBoss", function()
		local K = CheckBoss(X.SelectBoss)
		if not K then
			return task.wait(1)
		end
		X.SelectBoss = K[2]
		if X.GetBossQuest and (not VerifyQuest(K[2]) and (WU:CheckMon(K[2]) and V.Value >= ((K[1] or 0)))) then
			return WU:StartQuest(K[3], K[4], K[5])
		end
		local n = WU:GetEnemies(K[2])
		if n then
			l1:Attack(n)
		else
			WU:MobsNextSpawn(K[2])
		end
	end, true)
	S("AutoKillAllBosses", function()
		local K = pU and iU.Sea_3 or nU and iU.Sea_2 or KU and iU.Sea_1
		if not K or # K == 0 then
			return task.wait(1)
		end
		for K, n in next, K do
			local p = n[1] or 0
			local s = n[2]
			if V.Value >= p and WU:CheckMon(s) then
				local K = WU:GetEnemies(s)
				if K and yU:IsReady(K) then
					if X.GetBossQuest and not VerifyQuest(s) then
						if u.PlayerGui["Main"]:FindFirstChild("Quest") and u.PlayerGui["Main"].Quest["Visible"] then
							pcall(function()
								yU:FireInvoke("AbandonQuest")
							end)
							task.wait(.2)
						end
						return WU:StartQuest(n[3], n[4], n[5])
					end
					return l1:Attack(K)
				end
			end
		end
		for K, n in next, K do
			local p = n[1] or 0
			local u = n[2]
			if V.Value >= p then
				local K = n[5]
				if K then
					return WU:MobsNextSpawn(u)
				end
			end
		end
	end, true)
	S("TeleportToIsland", function()
		for K, n in next, yU._ActiveIslands do
			if K == X.TeleportIslandSelect then
				local K = ((g.HumanoidRootPart["Position"] - Vector3.new(n.X, n.Y, n.Z))).Magnitude
				if K <= 10 then
					yU._TravelToggle["Update"](false)
				else
					mU:topos(n)
				end
			end
		end
	end, true)
	S("TPtoNPC", function()
		local K = DetectNpc(X.NpcTween)
		if K then
			mU:topos(K:GetPivot())
		end
	end, true)
	S("TeleporttoPlayer", function()
		local K = ((X.SelectPlayer == "Nearest" or not X.SelectPlayer)) and B1:GetNearestPlayer() or n:FindFirstChild(X.SelectPlayer)
		if K and (K ~= u and K.Character) then
			local n = K.Character:FindFirstChild("HumanoidRootPart") or K.Character["PrimaryPart"]
			local p = K.Character:FindFirstChildOfClass("Humanoid")
			if n and (p and p.Health > 0) then
				mU:topos(n.CFrame)
			end
		end
	end, true)
	S("AutoFarm", function()
		local K = CheckQuest()
		if not K or not K[1] or K[1] == "" then
			return
		end
		local n = K[1]
		local p = K[2]
		local s = WU:GetEnemies(n)
		local c = B1:GetNearest()
		local A = X.FarmMode or "Quest"
		local a = (p and (p:lower()):find("submerged"))
		if pU and (a and A ~= "Nearest") then
			local K = u.Character["HumanoidRootPart"].Position["Y"] or 0
			if K > - 500 then
				local K = u:DistanceFromCharacter(Vector3.new(- 16269.1016, 29.5177539, 1372.3204))
				if K > 15 then
					mU:topos(CFrame.new(- 16269.1016, 29.5177539, 1372.3204))
					task.wait(.5)
					for K = 1, 2, 1 do
						(AU:WaitForChild("RF/SubmarineWorkerSpeak")):InvokeServer("TravelToSubmergedIsland")
					end
					return
				end
			end
		end
		if A == "Quest" then
			if not VerifyQuest(n) then
				return GetQuest()
			end
			if s then
				return l1:Attack(s, true)
			else
				return WU:MobsNextSpawn(n)
			end
		elseif A == "No Quest" then
			if s then
				return l1:Attack(s, true)
			else
				return WU:MobsNextSpawn(n)
			end
		elseif A == "Nearest" then
			if c then
				return l1:Attack(c, true)
			end
		end
	end, true)
	local F = 0
	local H = ""
	S("AutoFarmPrince", function()
		if not X.IgnoreCakePrince and WU:CheckMon("Cake Prince") then
			local K = WU:GetEnemies("Cake Prince")
			if K then
				if u:GetAttribute("CurrentLocation") ~= "Dimensional Shift" then
					mU:topos(CFrame.new(- 2168, 84, - 12397))
					task.wait(1)
					return
				else
					return l1:Attack(K)
				end
			end
		end
		local K = tick()
		if K - F > 4 then
			F = K
			local n, p = pcall(function()
				return yU:FireInvoke("CakePrinceSpawner")
			end)
			if n and type(p) == "string" then
				H = p
			end
		end
		if string.find(H, "open the portal now") then
			yU:FireInvoke("CakePrinceSpawner")
			task.wait(1)
			return
		end
		if X.AcceptQuests and not VerifyQuest("Cookie Crafter") then
			return WU:StartQuest("CakeQuest1", 1, CFrame.new(- 2021, 38, - 12029))
		end
		local n = WU:GetEnemies(yU.DataList["CakesList"])
		if n then
			return l1:Attack(n, true)
		else
			mU:topos(CFrame.new(- 2304, 228, - 12240))
		end
	end, pU)
	S("AutoTeleportMirage", function()
		if X.AutoTeleportMirage then
			for K, n in pairs(U._WorldOrigin["Locations"]:GetChildren()) do
				if n.Name == "Mirage Island" then
					mU:topos(n.CFrame * CFrame.new(0, 333, 0), true)
				end
			end
		end
	end, pU)
	S("AutoTeleportPrehistoric", function()
		if X.AutoTeleportPrehistoric then
			for K, n in pairs(U._WorldOrigin["Locations"]:GetChildren()) do
				if n.Name == "Prehistoric Island" then
					mU:topos(n.CFrame * CFrame.new(0, 333, 0), true)
				end
			end
		end
	end, pU)
	S("AutoTeleportKitsune", function()
		if X.AutoTeleportKitsune then
			for K, n in pairs(U._WorldOrigin["Locations"]:GetChildren()) do
				if n.Name == "Kitsune Island" then
					mU:topos(n.CFrame * CFrame.new(0, 300, 0), true)
				end
			end
		end
	end, pU)
	S("AutoBlueMoonFarm", function()
		if not X.AutoBlueMoonFarm then
			yU._BlueMoonState = "FIND_ISLAND"
			mU:StopBoatTween()
			return
		end
		function IsBlueMoonActive()
			return x:GetAttribute("IsBlueMoon") == true
		end
		function HasBlueMoonEnded()
			return x:GetAttribute("BlueMoonEnded") == true
		end
		local function K()
			return I:FindFirstChild("KitsuneIsland") or (f and (f:FindFirstChild("Locations") and f.Locations:FindFirstChild("Kitsune Island"))) or U:FindFirstChild("KitsuneIsland")
		end
		local function n(K)
			if not K then
				return nil
			end
			return K:FindFirstChild("optimizedcylinder", true) or K:FindFirstChild("Shrine", true) or K:FindFirstChild("Statue", true) or K.PrimaryPart
		end
		local function p()
			pcall(function()
				yU:FireInvoke("TouchKitsuneStatue")
			end)
		end
		local function s()
			local K = nil
			local n = math.huge
			local p = u.Character and (u.Character:GetPivot()).Position
			if not p then
				return nil
			end
			for u, s in ipairs(U:GetChildren()) do
				if s:IsA("Model") and s.Name == "EmberTemplate" then
					local u = s:FindFirstChildWhichIsA("BasePart") or s.PrimaryPart
					if u and u:GetAttribute("IsPlayerEmber") ~= true then
						local s = ((u.Position - p)).Magnitude
						if s < n then
							n = s
							K = u
						end
					end
				end
			end
			return K
		end
		if IsBlueMoonActive() then
			yU._BlueMoonState = "COLLECT_EMBERS"
		end
		local c = K()
		local A = n(c)
		if ((c or A)) and (yU._BlueMoonState == "FIND_ISLAND" and not IsBlueMoonActive()) then
			mU:StopBoatTween()
			if N and N.Sit then
				N.Sit = false
			end
			yU._BlueMoonState = "GO_TO_SHRINE"
		end
		if yU._BlueMoonState == "FIND_ISLAND" then
			if IsBlueMoonActive() then
				yU._BlueMoonState = "COLLECT_EMBERS"
				return
			end
			if c then
				mU:StopBoatTween()
				if N and N.Sit then
					N.Sit = false
				end
				yU._BlueMoonState = "GO_TO_SHRINE"
			else
				l1:AutoBoatSail(CFrame.new(- 10000000, 31, 37016.25))
			end
		elseif yU._BlueMoonState == "GO_TO_SHRINE" then
			if A and v then
				local K = ((A.Position - v.Position)).Magnitude
				if K > 30 then
					mU:topos(A.CFrame * CFrame.new(0, 5, 0), true)
				else
					p()
					task.wait(.3)
					if IsBlueMoonActive() then
						yU._BlueMoonState = "COLLECT_EMBERS"
					end
				end
			else
				yU._BlueMoonState = "FIND_ISLAND"
			end
		elseif yU._BlueMoonState == "COLLECT_EMBERS" then
			if HasBlueMoonEnded() or not IsBlueMoonActive() then
				yU._BlueMoonState = "FIND_ISLAND"
				return
			end
			local K = s()
			if K then
				mU:topos(K.CFrame)
			end
		end
	end, pU)
	S("AutoDoughKing", function()
		if WU:CheckMon("Dough King") then
			local K = WU:GetEnemies("Dough King")
			if K then
				if u:GetAttribute("CurrentLocation") ~= "Dimensional Shift" then
					mU:topos(CFrame.new(- 2168, 84, - 12397))
					task.wait(1)
					return
				else
					return l1:Attack(K)
				end
			end
		else
			if not X.IgnoreDoughChaliceFarm then
				if not WU:CheckToolName("Sweet Chalice") then
					local K = yU:FireInvoke("SweetChaliceNpc")
					if K == "Where are the items?" then
						if WU:CheckInventory("Material", "Conjured Cocoa") < 10 then
							local K = WU:GetEnemies({
								"Chocolate Bar Battler";
								"Cocoa Warrior"
							})
							if K then
								l1:Attack(K, true)
							else
								WU:MobsNextSpawn("Chocolate Bar Battler")
							end
						elseif not WU:CheckToolName("God's Chalice") then
							local K = B1:Checkelites()
							if K then
								if not VerifyQuest(K) then
									yU:FireInvoke("AbandonQuest")
									task.wait(.1)
									yU:FireInvoke("EliteHunter")
								else
									local n = WU:GetEnemies(K)
									if n then
										l1:Attack(n)
									end
								end
							else
								Functions.AutoChest["Call"]()
							end
						end
					end
				else
					local K = tick()
					if K - F > 4 then
						F = K
						local n, p = pcall(function()
							return yU:FireInvoke("CakePrinceSpawner")
						end)
						if n and type(p) == "string" then
							H = p
						end
					end
					if string.find(H, "open the portal now") then
						yU:FireInvoke("CakePrinceSpawner")
						task.wait(1)
					else
						local K = WU:GetEnemies(yU.DataList["CakesList"])
						if K then
							return l1:Attack(K, true)
						else
							WU:MobsNextSpawn("Head Baker")
						end
					end
				end
			end
		end
	end, pU)
	S("AutoTyrantOfTheSkies", function()
		local K = WU:GetEnemies("Tyrant of the Skies")
		local n = WU:GetEnemies(yU.DataList["TyrantList"])
		if WU:CheckMon("Tyrant of the Skies") then
			return l1:Attack(K)
		elseif B1:TyrantEyes() >= 4 then
			l1:AttackTree()
		else
			if n then
				return l1:Attack(n, true)
			else
				mU:topos(CFrame.new(- 16257, 22, 1062))
			end
		end
	end, pU)
	S("AutoMaterial", function()
		local K = X.SelectMaterial
		local n = nil
		if KU then
			n = BU.Sea_1[K]
		elseif nU then
			n = BU.Sea_2[K]
		elseif pU then
			n = BU.Sea_3[K]
		end
		if n and # n > 0 then
			local K = WU:GetEnemies(n)
			if K then
				return l1:Attack(K, true)
			else
				return WU:MobsNextSpawn(n[1])
			end
		end
	end, true)
	S("AutoSecondSea", function()
		if not ((KU and V.Value >= 700)) then
			return nil
		end
		local K = yU:FireInvoke("DressrosaQuestProgress")
		if K.KilledIceBoss then
			yU:FireInvoke("TravelDressrosa")
		else
			if I.Ice["Door"].CanCollide then
				if not WU:CheckToolName("Key") then
					if u:DistanceFromCharacter(Vector3.new(4852, 6, 719)) < 5 then
						yU:FireInvoke("DressrosaQuestProgress", "Detective")
					else
						mU:topos(CFrame.new(4852, 6, 719))
					end
				else
					WU:EquipTool("Key")
					if WU:CheckToolName("Key") then
						mU:topos(I.Ice["Door"].CFrame)
					end
				end
			else
				local K = WU:GetEnemies("Ice Admiral")
				if K then
					return l1:Attack(K)
				end
			end
		end
	end, KU)
	local O = CFrame.new(- 339.798, 331.861, 643.832)
	S("AutoThirdSea", function()
		if V.Value >= 1500 then
			if sU:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
				local K = sU:InvokeServer("TalkTrevor", "1")
				local n = sU:InvokeServer("GetUnlockables")
				if K ~= 0 and ((n == nil or n.FlamingoAccess == nil)) then
					local K, n = WU:Checkfruit(true)
					if not K then
						local p = WU:GetLowestFruit(true)
						if p then
							sU:InvokeServer("LoadFruit", p.StorageKey or p.Name)
							task.wait(.5)
							K, n = WU:Checkfruit(true)
						else
							yU:SendNotify("Auto Third Sea", "Need a 1M+ fruit in storage or inventory for Trevor!", 5)
							return
						end
					end
					local p = u.Character and u.Character:FindFirstChild("HumanoidRootPart")
					if not p then
						return
					end
					local s = DetectNpc("Trevor") or (U:FindFirstChild("NPCs") and U.NPCs:FindFirstChild("Trevor"))
					local c = s and ((s:FindFirstChild("HumanoidRootPart") or s.PrimaryPart))
					local X = c and c.CFrame or O
					local A = ((p.Position - X.Position)).Magnitude
					if A > 8 then
						mU:topos(X)
						return
					end
					if n and (n.Parent == u.Backpack and (u.Character and u.Character:FindFirstChildOfClass("Humanoid"))) then
						u.Character["Humanoid"]:EquipTool(n)
						task.wait(.3)
					end
					if sU:InvokeServer("TalkTrevor", "1") ~= 1 then
						sU:InvokeServer("TalkTrevor", "1")
						task.wait(.2)
						sU:InvokeServer("TalkTrevor", "2")
						task.wait(.2)
						sU:InvokeServer("TalkTrevor", "3")
					end
				elseif not sU:InvokeServer("ZQuestProgress", "Check") then
					if WU:CheckMon("Don Swan") then
						local K = WU:GetEnemies("Don Swan")
						if K then
							return l1:Attack(K)
						else
							WU:MobsNextSpawn("Don Swan")
						end
					end
				elseif sU:InvokeServer("ZQuestProgress", "Check") == 0 then
					local K = U:FindFirstChild("Map") and (U.Map:FindFirstChild("IndraIsland") and U.Map["IndraIsland"]:FindFirstChild("Part"))
					local n = K and K.Position or Vector3.new(- 1926.788, 12.168, 1739.809)
					local p = u.Character and u.Character:FindFirstChild("HumanoidRootPart")
					if p and ((p.Position - n)).Magnitude > 1000 then
						local K = CFrame.new(- 1926.78772, 12.1678171, 1739.80884, .956294656, 0, - 0.292404652, 0, 1, 0, .292404652, 0, .956294656)
						mU:topos(K)
						if ((p.Position - K.Position)).Magnitude <= 8 then
							sU:InvokeServer("ZQuestProgress", "Begin")
						end
					else
						local K = WU:GetEnemies("rip_indra")
						if K then
							return l1:Attack(K)
						end
					end
				elseif sU:InvokeServer("TalkTrevor", "1") == 0 and (sU:InvokeServer("ZQuestProgress", "Check") == 1 and sU:InvokeServer("ZQuestProgress", "Zou") == 0) then
					sU:InvokeServer("TravelZou")
				end
			end
		end
	end, nU)
	S("AutoTushita", function()
		if WU:CheckInventory("Moveset", "Tushita") then
			return
		end
		local K = sU:InvokeServer("TushitaProgress")
		if typeof(K) ~= "table" then
			K = {
				Torches = {
					false;
					false,
					false,
					false;
					false
				}
			}
		end
		if K.OpenedDoor then
			local K = WU:GetEnemies("Longma")
			if K then
				return l1:Attack(K)
			else
				mU:topos(CFrame.new(- 10237, 339, 8758))
			end
			return
		end
		if WU:CheckMon("rip_indra True Form") or WU:CheckToolName("Holy Torch") then
			if not WU:CheckToolName("Holy Torch") then
				return mU:topos(CFrame.new(5713, 19, 255))
			else
				WU:EquipTool("Holy Torch")
				local n = K.Torches or {}
				for K = 1, # n, 1 do
					if not n[K] then
						sU:InvokeServer("TushitaProgress", "Torch", K)
					end
				end
				return true
			end
		end
		if WU:CheckToolName("God's Chalice") then
			WU:EquipTool("God's Chalice")
			return mU:topos(CFrame.new(- 5561, 314, - 2663))
		end
		local n = B1:Checkelites()
		if n then
			if not VerifyQuest(n) then
				sU:InvokeServer("AbandonQuest")
				task.wait(.1)
				sU:InvokeServer("EliteHunter")
			else
				local K = WU:GetEnemies(n)
				if K then
					return l1:Attack(K)
				end
			end
		else
			Functions.AutoChest["Call"]()
		end
	end, pU)
	S("AutoYama", function()
		if WU:CheckInventory("Moveset", "Yama") then
			return nil
		end
		local K = tonumber(sU:InvokeServer("EliteHunter", "Progress")) or 0
		if K < 30 then
			local K = B1:Checkelites()
			if K then
				if not VerifyQuest(K) then
					sU:InvokeServer("AbandonQuest")
					task.wait(.1)
					sU:InvokeServer("EliteHunter")
				else
					local n = WU:GetEnemies(K)
					if n then
						return l1:Attack(n)
					end
				end
			else
				vU("elites", 1)
			end
		else
			local K = I:FindFirstChild("Waterfall") and I.Waterfall:FindFirstChild("SealedKatana")
			local n = K and K:FindFirstChild("Hitbox")
			if n then
				if u:DistanceFromCharacter(n.Position) > 10 then
					mU:topos(n.CFrame * CFrame.new(0, 3, 0))
				else
					local K = n:FindFirstChildOfClass("ClickDetector") or n:FindFirstChildWhichIsA("ClickDetector", true)
					if K then
						fireclickdetector(K)
					end
				end
			else
				mU:topos(CFrame.new(5289, 1005, 393))
			end
		end
	end, pU)
	S("AutoRengoku", function()
		if WU:CheckMon("Awakened Ice Admiral") then
			local K = WU:GetEnemies({
				"Awakened Ice Admiral"
			})
			if K then
				return l1:Attack(K)
			end
		end
		if WU:CheckToolName("Hidden Key") then
			if u:DistanceFromCharacter((CFrame.new(6571, 299, - 6968)).Position) > 2 then
				mU:topos(CFrame.new(6571, 299, - 6968))
			else
				WU:EquipTool("Hidden Key")
			end
		elseif WU:CheckToolName("Library Key") then
			if u:DistanceFromCharacter((CFrame.new(6373, 293, - 6839)).Position) > 2 then
				mU:topos(CFrame.new(6571, 299, - 6968))
			else
				WU:EquipTool("Library Key")
			end
		else
			local K = WU:GetEnemies({
				"Arctic Warrior";
				"Snow Lurker"
			})
			if K then
				return l1:Attack(K, true)
			else
				WU:MobsNextSpawn("Arctic Warrior")
			end
		end
	end, nU)
	local L = 0
	local T = nil
	local y = 0
	pcall(function()
		local K = P.Remotes:FindFirstChild("BonusMomentsRemoteEvent")
		if K then
			K.OnClientEvent:Connect(function(K, n, ...)
				if K == "Prickly Harvest" then
					local K = {
						...
					}
					if n == "UpdateProgress" and typeof(K[1]) == "number" then
						y = math.max(y, K[1])
					elseif n == "CactusHarvested" then
						y = math.min(10, y + 1)
					elseif n == "ResetCacti" then
						y = 0
					end
				end
			end)
		end
	end)
	local z = function(K)
		if not K or not K:IsA("BasePart") then
			return
		end
		local n = u.Character
		if not n then
			return
		end
		local p = n:FindFirstChildOfClass("Tool")
		if not p then
			if WU and WU.EquipWeapon then
				WU:EquipWeapon()
			end
			p = n:FindFirstChildOfClass("Tool")
		end
		if p then
			pcall(function()
				p:Activate()
			end)
		end
		pcall(function()
			local n = require(P.Modules["Net"])
			local p = n:RemoteEvent("RegisterAttack")
			if p then
				p:FireServer(.3)
			end
			local u = n:RemoteEvent("RegisterHit", true)
			if u then
				u:FireServer(K, {
					{
						nil;
						K
					}
				})
				u:FireServer(K)
			end
		end)
	end
	local function w()
		local K = tick()
		if not T or (K - L > 2) then
			L = K
			pcall(function()
				local K = require(P.Modules["Net"])
				local n = K:RemoteFunction("RequestBonusMomentReplication")
				local p = n:InvokeServer({
					Type = "GetMomentProgress"
				})
				if p and p.Data then
					T = p.Data
					if yU and yU.UpdateSecretTracker then
						yU.UpdateSecretTracker(T)
					end
				end
			end)
		end
		return T or {}
	end
	local o = {
		{
			Name = "Windmill Maintenance";
			Address = "Sea1/Pirate Village/Windmill Maintenance"
		};
		{
			Name = "Archaeologist's Tablet",
			Address = "Sea1/Desert/Archaeologist's Tablet"
		};
		{
			Name = "Rescue Hasan",
			Address = "Sea1/Desert/Rescue Hasan"
		},
		{
			Name = "Prickly Harvest",
			Address = "Sea1/Desert/Prickly Harvest"
		},
		{
			Name = "Breaking the Ice";
			Address = "Sea1/Frozen Village/Breaking the Ice"
		};
		{
			Name = "Evil Slimes";
			Address = "Sea1/Magma Village/Evil Slimes"
		},
		{
			Name = "Zipline Repair",
			Address = "Sea1/Jungle/Zipline Repair"
		};
		{
			Name = "Don Megalo",
			Address = "Sea1/Prison/Don Megalo"
		},
		{
			Name = "Escape from Alcatraz",
			Address = "Sea1/Prison/Escape from Alcatraz"
		};
		{
			Name = "Fishman Karate",
			Address = "Sea1/Underwater City/Fishman Karate"
		},
		{
			Name = "Fountain Pipe Repair";
			Address = "Sea1/Fountain/Fountain Pipe Repair"
		},
		{
			Name = "King's Apprentice";
			Address = "Sea1/Colosseum/King's Apprentice"
		}
	}
	local G = function(K)
		local n = K or w()
		local p = {}
		local u = 0
		for K, s in ipairs(o) do
			if n[s.Address] == true then
				u = u + 1
				table.insert(p, s.Name)
			end
		end
		local s = math.floor(((u / # o)) * 100)
		if yU and yU.SecretTrackerLabel then
			pcall(function()
				yU.SecretTrackerLabel:RefreshTitle(string.format("Secret Quests: %d/%d (%d%%)", u, # o, s))
				if u == # o then
					yU.SecretTrackerLabel:RefreshDesc("All Completed!")
				else
					yU.SecretTrackerLabel:RefreshDesc(string.format("Completed: %d | Remaining: %d", u, # o - u))
				end
			end)
		end
		if yU and yU.SecretTrackerDropdown then
			pcall(function()
				if # p == 0 then
					yU.SecretTrackerDropdown:Refresh({
						"None Completed Yet"
					})
				else
					yU.SecretTrackerDropdown:Refresh(p)
				end
			end)
		end
		return u, p
	end
	yU.UpdateSecretTracker = G
	task.spawn(function()
		task.wait(3)
		if yU and yU.UpdateSecretTracker then
			yU.UpdateSecretTracker()
		end
	end)
	S("AutoCompleteSecretQuests", function()
		if not KU then
			return
		end
		local K = w()
		if not K["Sea1/Pirate Village/Windmill Maintenance"] then
			local K = u.Character and ((u.Character:FindFirstChild("HumanoidRootPart") or u.Character["PrimaryPart"]))
			if not K then
				return
			end
			local n = P.Remotes:FindFirstChild("BonusMomentsRemoteEvent")
			if n then
				n:FireServer("Windmill Maintenance", "Init")
			end
			local p = (U.Map:FindFirstChild("Pirate") and U.Map["Pirate"]:FindFirstChild("WindmillRig", true))
			if p then
				local n = p:FindFirstChild("Windmill_rig", true) or p
				local u, s = nil, math.huge
				for n, p in ipairs(n:GetChildren()) do
					if p:IsA("MeshPart") and (p.Name:find("Rope%d") and p.Transparency < 1) then
						local n = ((K.Position - p.Position)).Magnitude
						if n < s then
							s = n
							u = p
						end
					end
				end
				if u then
					WU:EquipWeapon("Sword")
					mU:topos(u.CFrame * CFrame.new(0, 0, 2), true)
					z(u)
				else
					mU:topos(CFrame.new(- 1249, 115, 4044), true)
				end
			else
				mU:topos(CFrame.new(- 1249, 115, 4044), true)
			end
		elseif not K["Sea1/Desert/Archaeologist's Tablet"] then
			local K = U:FindFirstChild("Archaeologist's Tablet", true)
			local n = nil
			if K then
				local p = K:FindFirstChild("Pillars")
				if p then
					for K, p in ipairs(p:GetChildren()) do
						if p:IsA("Model") then
							local K = p:GetAttribute("NumHits") or 0
							if K < 3 then
								n = p
								break
							end
						end
					end
				end
			end
			if n then
				local K = n:GetAttribute("NumHits") or 0
				local p = n:FindFirstChild(("SandLayer") .. tostring(K + 1)) or n:FindFirstChild("SandLayer1") or n:FindFirstChildWhichIsA("BasePart")
				if p then
					mU:topos(p.CFrame * CFrame.new(0, 2, 3))
					z(p)
				end
			else
				mU:topos(CFrame.new(1270, 24, 4648))
				local K = P.Remotes:FindFirstChild("BonusMomentsRemoteFunction")
				if K then
					K:InvokeServer("Archaeologist's Tablet", "ClaimReward")
				end
				local n = P.Remotes:FindFirstChild("BonusMomentsRemoteEvent")
				if n then
					n:FireServer("Archaeologist's Tablet", "ClaimReward")
				end
				local p = P.Remotes:FindFirstChild("CommF_")
				if p then
					p:InvokeServer("ClaimReward", "Archaeologist's Tablet")
				end
			end
		elseif not K["Sea1/Desert/Rescue Hasan"] then
			local K = u.Character:FindFirstChild("DisableMovement")
			if K then
				K:Destroy()
			end
			local n = Vector3.new(1320, 25, 4450)
			local p = nil
			local s = U:FindFirstChild("Enemies")
			if s then
				for K, u in ipairs(s:GetChildren()) do
					local s = u:FindFirstChildOfClass("Humanoid")
					if s and s.Health > 0 then
						local K = (((u:GetPivot()).Position - n)).Magnitude
						if K <= 200 then
							p = u
							break
						end
					end
				end
			end
			if p then
				l1:Attack(p, true)
			else
				mU:topos(CFrame.new(1308, 23, 4492))
				local K = P.Remotes:FindFirstChild("BonusMomentsRemoteEvent")
				if K then
					K:FireServer("Rescue Hasan", "StartWaves")
					K:FireServer("Rescue Hasan", "Interact")
				end
				local n = P.Remotes:FindFirstChild("BonusMomentsRemoteFunction")
				if n then
					pcall(function()
						n:InvokeServer("Rescue Hasan", "StartWaves")
						n:InvokeServer("Rescue Hasan", "Interact")
					end)
				end
			end
		elseif not K["Sea1/Desert/Prickly Harvest"] then
			local K = CFrame.new(862, 5, 4453)
			local n = P.Remotes:FindFirstChild("BonusMomentsRemoteFunction")
			local p = P.Remotes:FindFirstChild("BonusMomentsRemoteEvent")
			if y >= 10 then
				mU:topos(K)
				if n then
					n:InvokeServer("Prickly Harvest", "Interact")
					n:InvokeServer("Prickly Harvest", "ClaimReward")
				end
				if p then
					p:FireServer("Prickly Harvest", "ClaimReward")
				end
				local u = P.Remotes:FindFirstChild("CommF_")
				if u then
					u:InvokeServer("ClaimReward", "Prickly Harvest")
				end
				y = 0
			else
				if n and y == 0 then
					local p, u = n:InvokeServer("Prickly Harvest", "Interact")
					if typeof(u) == "number" then
						y = math.max(y, u)
					end
					if p == "Reward" or y >= 10 then
						mU:topos(K)
						return
					end
				end
				local p = nil
				local u = U:FindFirstChild("Cacti", true)
				if u then
					for K, n in ipairs(u:GetChildren()) do
						if n:IsA("Model") then
							local K = n:FindFirstChild("Trunk") or n:FindFirstChild("Spike") or n.PrimaryPart
							if K and (K:IsA("BasePart") and K.Transparency < .9) then
								p = K
								break
							end
						end
					end
				end
				if p then
					mU:topos(p.CFrame * CFrame.new(0, 2, 3))
					z(p)
				else
					mU:topos(CFrame.new(1160, 15, 4350))
				end
			end
		elseif not K["Sea1/Frozen Village/Breaking the Ice"] then
			local K = P.Remotes:FindFirstChild("BonusMomentsRemoteEvent")
			if K then
				K:FireServer("Breaking the Ice", "Init")
				K:FireServer("Breaking the Ice", "IcebergHit")
			end
			local n = U:FindFirstChild("Iceberg", true)
			if n then
				local K = n:IsA("BasePart") and n or n.PrimaryPart or n:FindFirstChildWhichIsA("BasePart")
				if K then
					mU:topos(K.CFrame * CFrame.new(0, 2, 3))
					z(K)
					return
				end
			else
				mU:topos(CFrame.new(1298, 87, - 1344))
			end
		elseif not K["Sea1/Magma Village/Evil Slimes"] then
			local K = Vector3.new(- 5472.8, 17.2, 8303.6)
			local n = 15
			local p = nil
			local s = math.huge
			local c = U:FindFirstChild("Enemies")
			if c then
				for c, X in ipairs(c:GetChildren()) do
					local A = X:FindFirstChildOfClass("Humanoid")
					local a = X:FindFirstChild("HumanoidRootPart") or X.PrimaryPart
					if A and (A.Health > 0 and (a and (((X.Name == "Evil Slime" or ((a.Position - K)).Magnitude <= 350)) and (u:DistanceFromCharacter(a.Position) <= n and u:DistanceFromCharacter(a.Position) < s)))) then
						s = u:DistanceFromCharacter(a.Position)
						p = X
					end
				end
			end
			if not p then
				local K = P.Remotes:FindFirstChild("BonusMomentsRemoteEvent")
				if K then
					K:FireServer("Evil Slimes", "Init")
					K:FireServer("Evil Slimes", "Interact")
				end
				local n = (U.Map:FindFirstChild("Magma") and (U.Map["Magma"]:FindFirstChild("BonusMoment_Locations", true) and U.Map["Magma"].BonusMoment_Locations:FindFirstChild("SlimeGeyser"))) or U:FindFirstChild("SlimeGeyser", true)
				local p = n and ((n:FindFirstChild("Lava.001") or n:FindFirstChild("Cube_cell.006")))
				local u = p and (p.CFrame * CFrame.new(0, 3, 0))
				if not p then
					mU:topos(CFrame.new(- 5290, 9, 8349))
				else
					mU:topos(u, true)
					z(p)
				end
			else
				l1:Attack(p, true)
			end
		elseif not K["Sea1/Jungle/Zipline Repair"] then
			local K = P.Remotes:FindFirstChild("BonusMomentsRemoteFunction")
			local n = P.Remotes:FindFirstChild("BonusMomentsRemoteEvent")
			if n then
				n:FireServer("Zipline Repair", "Initialize")
			end
			if K then
				pcall(function()
					K:InvokeServer("Zipline Repair", "Initialize")
				end)
			end
			local p = u.Character and ((u.Character:FindFirstChild("HumanoidRootPart") or u.Character["PrimaryPart"]))
			if not p then
				return
			end
			local s = u.Character:FindFirstChild("Grappling Hook") or (u.Backpack and u.Backpack:FindFirstChild("Grappling Hook"))
			if not s then
				local u = (U:FindFirstChild("GroundPickupGrapplingHook") and U.GroundPickupGrapplingHook:FindFirstChild("hook.001", true)) or U:FindFirstChild("hook.001", true)
				local s = u and (u.CFrame * CFrame.new(0, 0, 2)) or CFrame.new(- 1237.5, 0, - 287.5)
				mU:topos(s, true)
				local c = ((p.Position - s.Position)).Magnitude
				if c <= 15 then
					local p = (u and u:FindFirstChildWhichIsA("ProximityPrompt")) or (U:FindFirstChild("GroundPickupGrapplingHook") and U.GroundPickupGrapplingHook:FindFirstChildWhichIsA("ProximityPrompt", true))
					if p then
						fireproximityprompt(p, 0)
						fireproximityprompt(p)
					end
					if n then
						n:FireServer("Zipline Repair", "PickupTool")
					end
					if K then
						pcall(function()
							K:InvokeServer("Zipline Repair", "PickupTool")
						end)
					end
				end
			else
				if s.Parent ~= u.Character and u.Character:FindFirstChild("Humanoid") then
					u.Character["Humanoid"]:EquipTool(s)
				end
				local n = (U:FindFirstChild("Map") and (U.Map:FindFirstChild("Jungle") and U.Map["Jungle"]:FindFirstChild("ZiplinePair"))) or (R:GetTagged("ZiplinePair"))[1]
				local c = {}
				if n then
					for K, n in ipairs(n:GetChildren()) do
						if n:IsA("Model") and n.Name == "zipline" then
							local K = n.PrimaryPart or n:FindFirstChild("Cube.003") or n:FindFirstChildWhichIsA("BasePart")
							if K then
								table.insert(c, K)
							end
						end
					end
				end
				local X = c[1]
				local A = c[2]
				local a = X and (X.CFrame * CFrame.new(0, 4, 3)) or CFrame.new(- 1280.9, 82, - 247.1)
				local D = A and A.Position or Vector3.new(- 1482.8, 78.1, - 15.3)
				mU:topos(a, true)
				local Q = ((p.Position - a.Position)).Magnitude
				if Q <= 15 then
					local n = u.Character:FindFirstChild("Grappling Hook")
					if n then
						pcall(function()
							n:Activate()
						end)
					end
					pcall(function()
						local n = require(P.Util["Trajectory"])
						local p = n.getArcAim(a.Position, D)
						if K then
							K:InvokeServer("Zipline Repair", "Throw", "Grappling Hook", p)
						end
					end)
				end
			end
		elseif not K["Sea1/Prison/Don Megalo"] then
			local K = P.Remotes:FindFirstChild("BonusMomentsRemoteFunction")
			local n = U.Map["Prison"]:FindFirstChild("BonusMoment_Locations")
			if K then
				K:InvokeServer("Don Megalo", "Init")
			end
			local p = n and n:FindFirstChild("Key")
			local u = n and n:FindFirstChild("MegaloGate")
			local s = n and n:FindFirstChild("SharkCape")
			local c = s and ((s:FindFirstChild("RootPart") or s:FindFirstChildWhichIsA("BasePart", true)))
			local function X(K)
				local n = K and K:FindFirstChildWhichIsA("ProximityPrompt", true)
				return n ~= nil and n.Enabled
			end
			local A = not p or not X(p)
			local a = not u or not X(u)
			if not A then
				mU:topos(p.CFrame, true)
				if K then
					K:InvokeServer("Don Megalo", "TakeKey")
				end
			elseif not a then
				mU:topos(u.CFrame * CFrame.new(0, 0, 3), true)
				if K then
					K:InvokeServer("Don Megalo", "Unlock")
				end
			elseif WU:CheckMon("Megalo Guard") then
				local K = WU:GetEnemies("Megalo Guard")
				if K then
					l1:Attack(K, true)
				end
			elseif WU:CheckMon("Don Megalo") then
				local K = WU:GetEnemies("Don Megalo")
				if K then
					l1:Attack(K, true)
				end
			elseif c and (s and s.Parent) then
				mU:topos(c.CFrame * CFrame.new(0, 0, 2), true)
				if K then
					K:InvokeServer("Don Megalo", "TakeCape")
				end
			elseif c then
				mU:topos(c.CFrame * CFrame.new(0, 0, 2), true)
				if K then
					K:InvokeServer("Don Megalo", "ClaimCape")
				end
			else
				mU:topos(CFrame.new(5351, 8, 1100))
			end
		elseif not K["Sea1/Prison/Escape from Alcatraz"] then
			local K = P.Remotes:FindFirstChild("BonusMomentsRemoteFunction")
			if K then
				K:InvokeServer("Escape from Alcatraz", "Provoke", "Puncher")
				K:InvokeServer("Escape from Alcatraz", "Provoke", "Digger")
				K:InvokeServer("Escape from Alcatraz", "Provoke", "Raft")
				K:InvokeServer("Escape from Alcatraz", "Provoke", 1)
			end
			local n = nil
			local p = U:FindFirstChild("Enemies")
			if p then
				for K, p in ipairs(p:GetChildren()) do
					if p.Name:find("Prisoner") then
						local K = p:FindFirstChildOfClass("Humanoid")
						if K and K.Health > 0 then
							n = p
							break
						end
					end
				end
			end
			if n then
				l1:Attack(n, true)
			else
				mU:topos(CFrame.new(5351, 8, 1100))
			end
		elseif not K["Sea1/Fountain/Fountain Pipe Repair"] then
			local K = U:FindFirstChild("FountainPipeNodes", true)
			local n = nil
			if K then
				for K, p in ipairs(K:GetChildren()) do
					if p:IsA("BasePart") and not p.CanCollide then
						n = p
						break
					end
				end
			end
			if n then
				mU:topos(n.CFrame * CFrame.new(0, 0, 2))
				z(n)
			else
				local K = U:FindFirstChild("Grand Brigade")
				local n = K and K:FindFirstChild("FakeVehicleSeat")
				if n then
					mU:topos(n.CFrame * CFrame.new(0, 0, 2), true)
				else
					mU:topos(CFrame.new(5616, 402, 4478), true)
				end
				local p = P.Remotes:FindFirstChild("BonusMomentsRemoteFunction")
				if p then
					p:InvokeServer("Fountain Pipe Repair", "TurnIn")
				end
			end
		elseif not K["Sea1/Colosseum/King's Apprentice"] then
			local K = U:FindFirstChild("King's Apprentice")
			local n = K and K:FindFirstChild("StartMatchHitbox")
			local p = Vector3.new(- 1726.6, 9.87, - 3250.5)
			local s = false
			pcall(function()
				s = K and K:GetAttribute("MatchActive") == true
			end)
			local c = nil
			local X = math.huge
			local A = 15
			local a = U:FindFirstChild("Enemies")
			if a then
				for K, n in ipairs(a:GetChildren()) do
					local s = n:FindFirstChildOfClass("Humanoid")
					local a = n:FindFirstChild("HumanoidRootPart") or n.PrimaryPart
					if s and (s.Health > 0 and (a and (((((a.Position - p)).Magnitude <= 350 or n.Name == "Gladiator")) and (u:DistanceFromCharacter(a.Position) <= A and u:DistanceFromCharacter(a.Position) < X)))) then
						X = u:DistanceFromCharacter(a.Position)
						c = n
					end
				end
			end
			if not c then
				pcall(function()
					local K = require(P.Modules["Net"])
					local n = K:RemoteFunction("BonusMomentsGuide")
					if n then
						n:InvokeServer("InteractQuestGiver", "ColosseumEmperor")
					end
				end)
				local K = P.Remotes:FindFirstChild("BonusMomentsRemoteEvent")
				if K then
					K:FireServer("King's Apprentice", "Interact")
				end
				task.wait(.5)
				local p = n and (n.CFrame * CFrame.new(0, 2, 0)) or CFrame.new(- 1726.6, 12, - 3250.5)
				mU:topos(p, true)
			else
				l1:Attack(c, true)
			end
		else
			mU:topos(CFrame.new(- 688, 15, 1585))
			if yU and yU.SendNotify then
				yU:SendNotify("Secret Quests", "All Secret Quests Completed!", 5)
			end
		end
	end, KU)
	S("AutoUnlockSaber", function()
		if m.Level["Value"] >= 200 then
			if U.Map["Jungle"].Final["Part"].CanCollide then
				if U.Map["Jungle"].QuestPlates["Door"].CanCollide then
					for K, n in next, U.Map["Jungle"].QuestPlates:GetChildren() do
						if n:FindFirstChild("Button") and n.Button:FindFirstChild("TouchInterest") then
							mU:topos(n.Button["CFrame"])
						end
					end
				else
					if not U.Map["Desert"].Burn["Part"].CanCollide then
						if sU:InvokeServer("ProQuestProgress", "RichSon") ~= 0 and sU:InvokeServer("ProQuestProgress", "RichSon") ~= 1 then
							if not WU:CheckToolName("Cup") then
								if ((u.Character["HumanoidRootPart"].Position - (CFrame.new(1112, 5, 4365)).Position)).Magnitude < 5 then
									mU:topos(CFrame.new(1114, 8, 4365))
									firetouchinterest(U.Map["Desert"].Cup, u.Character["HumanoidRootPart"], 0)
									firetouchinterest(U.Map["Desert"].Cup, u.Character["HumanoidRootPart"], 1)
									return
								end
								mU:topos(CFrame.new(1112, 5, 4365))
							else
								WU:EquipTool("Cup")
								if WU:CheckToolName("Cup") and (WU:CheckToolName("Cup")).Handle:FindFirstChild("TouchInterest") then
									sU:InvokeServer("ProQuestProgress", "FillCup", u.Character:FindFirstChild("Cup"))
									sU:InvokeServer("ProQuestProgress", "SickMan")
								end
							end
						elseif sU:InvokeServer("ProQuestProgress", "RichSon") == 0 then
							local K = WU:GetEnemies("Mob Leader")
							if K then
								return l1:Attack(K)
							end
						elseif sU:InvokeServer("ProQuestProgress", "RichSon") == 1 then
							if not WU:CheckToolName("Relic") then
								if ((u.Character["HumanoidRootPart"].Position - CFrame.new(- 1404, 30, 5))).Magnitude > 8 then
									mU:topos(CFrame.new(- 1404, 30, 5))
								else
									sU:InvokeServer("ProQuestProgress", "RichSon")
								end
							else
								WU:EquipTool("Relic")
								mU:topos(CFrame.new(- 1405, 30, 5))
							end
						end
					else
						if not WU:CheckToolName("Torch") and U.Map["Desert"].Burn["Part"].CanCollide then
							mU:topos(U.Map["Jungle"].Torch["CFrame"])
						else
							WU:EquipTool("Torch")
							if ((u.Character["HumanoidRootPart"].Position - (CFrame.new(1115, 5, 4349)).Position)).Magnitude < 5 then
								mU:topos(CFrame.new(1115, 5, 4351))
								firetouchinterest(u.Character["Torch"].Handle, U.Map["Desert"].Burn["Fire"], 0)
								firetouchinterest(u.Character["Torch"].Handle, U.Map["Desert"].Burn["Fire"], 1)
								return
							end
							mU:topos(CFrame.new(1115, 5, 4349))
						end
					end
				end
			else
				local K = WU:GetEnemies("Saber Expert")
				if K then
					return l1:Attack(K)
				end
			end
		end
	end, KU)
	S("AutoBartiloQuest", function()
		if V.Value >= 850 then
			if sU:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
				if VerifyQuest("Swan Pirates") and (VerifyQuest("50") and u.PlayerGui["Main"].Quest["Visible"]) then
					local K = WU:GetEnemies("Swan Pirate")
					if K then
						return l1:Attack(K, true)
					end
					WU:MobsNextSpawn("Swan Pirate")
				else
					if ((u.Character["HumanoidRootPart"].Position - (CFrame.new(- 456.28952, 73.0200958, 299.895966)).Position)).Magnitude > 8 then
						mU:topos(CFrame.new(- 456.28952, 73.0200958, 299.895966))
					else
						sU:InvokeServer("StartQuest", "BartiloQuest", 1)
					end
				end
			elseif sU:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
				if WU:CheckMon("Jeremy") then
					local K = WU:GetEnemies("Jeremy")
					if K then
						return l1:Attack(K)
					end
				else
					yU:SendNotify("Bartilo Quest", "boss jeremy, not spawned", 8)
				end
			elseif sU:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
				if ((u.Character["HumanoidRootPart"].Position - Vector3.new(- 1835.65, 10.4325, 1679.75))).Magnitude > 100 then
					mU:topos(CFrame.new(- 1835.65, 10.4325, 1679.75))
				else
					u.Character["HumanoidRootPart"].CFrame = I.Dressrosa["BartiloPlates"][B1:PlatesBartilo()].CFrame
					task.wait()
					firetouchinterest(I.Dressrosa["BartiloPlates"][B1:PlatesBartilo()], u.Character["HumanoidRootPart"], 0)
					firetouchinterest(I.Dressrosa["BartiloPlates"][B1:PlatesBartilo()], u.Character["HumanoidRootPart"], 1)
				end
			elseif sU:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
				yU:SendNotify("Bartilo Quest", "Quest Completed", 8)
			end
		end
	end, nU)
	S("AutoGetDBV2", function()
		if m.Value < 350 and u:GetAttribute("YoruEvolution") then
			return nil
		end
		local K = sU:InvokeServer("IndraTalk")
		local n = sU:InvokeServer("RobotTalk")
		if n == 3 or n == 4 then
			local n = u:DistanceFromCharacter(Vector3.new(1421, 87, - 1281))
			if n > 5 then
				mU:topos(CFrame.new(1421, 87, - 1281))
			else
				sU:InvokeServer("IndraTalk")
				if K == 0 then
					local K = {
						CFrame.new(1002, 6, - 1354),
						CFrame.new(- 4941, 719, - 2650);
						CFrame.new(- 5232, 26, 4395)
					}
					for n = 1, 3, 1 do
						mU:topos(K[n])
						sU:InvokeServer("LoveLetter", n)
						task.wait(.5)
					end
				else
					mU:topos(CFrame.new(- 1037, 10, 1800))
					sU:InvokeServer("RobotTalk")
				end
			end
		end
	end, KU)
	S("AutoGetSkullGuitar", function()
		local K = sU:InvokeServer("GuitarPuzzleProgress", "Check")
		if K and K.Pipes then
			if not X.IgnoreMaterialFarmGuitar then
				if WU:CheckInventory("Material", "Ectoplasm") < 250 then
					if not nU then
						sU:InvokeServer("TravelDressrosa")
					else
						local K = WU:GetEnemies({
							"Ship Deckhand";
							"Ship Engineer",
							"Ship Steward",
							"Ship Officer"
						})
						if K then
							return l1:Attack(K, true)
						else
							return WU:MobsNextSpawn("Ship Deckhand")
						end
					end
					return
				elseif WU:CheckInventory("Material", "Dark Fragment") < 1 then
					if not nU then
						sU:InvokeServer("TravelDressrosa")
					else
						if WU:CheckMon("Darkbeard") then
							local K = WU:GetEnemies("Darkbeard")
							if K then
								return l1:Attack(K)
							else
								return WU:MobsNextSpawn("Darkbeard")
							end
						elseif WU:CheckToolName("Fist of Darkness") then
							WU:EquipTool("Fist of Darkness")
							return mU:topos(CFrame.new(3777, 14, - 3499))
						else
							vU("Darkbeard", 5)
						end
					end
					return
				end
			end
		end
		if V.Value < 2300 or (x:GetAttribute("MoonPhase") ~= 5) then
			return nil
		else
			if K then
				local n = K.Pipes
				local p = K.Swamp
				local s = K.Trophies
				local c = K.Gravestones
				local X = K.Ghost
				if n then
					if u:DistanceFromCharacter(Vector3.new(- 9680, 6, 6346)) < 5 then
						sU:InvokeServer("soulGuitarBuy", true)
					else
						mU:topos(CFrame.new(- 9680, 6, 6346))
					end
					return true
				else
					if not p then
						local K = WU:GetEnemies("Living Zombie")
						if K then
							return l1:Attack(K, true)
						else
							return WU:MobsNextSpawn("Living Zombie")
						end
					elseif not c then
						if u:DistanceFromCharacter(Vector3.new(- 8800, 178, 6033)) > 10 then
							mU:topos(CFrame.new(- 8800, 178, 6033))
						else
							local K = {
								Placard1 = "Right",
								Placard2 = "Right",
								Placard3 = "Left",
								Placard4 = "Right";
								Placard5 = "Left",
								Placard6 = "Left";
								Placard7 = "Left"
							}
							for K, n in pairs(K) do
								local p = I["Haunted Castle"][K][n]:FindFirstChild("ClickDetector")
								if p then
									fireclickdetector(p)
								end
							end
						end
					elseif not X then
						if u:DistanceFromCharacter(Vector3.new(- 9758, 270, 6291)) > 10 then
							mU:topos(CFrame.new(- 9758, 270, 6291))
						else
							sU:InvokeServer("GuitarPuzzleProgress", "Ghost")
							sU:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
							task.wait(.1)
							sU:InvokeServer("GuitarPuzzleProgress", "Check")
						end
					elseif not s then
						if u:DistanceFromCharacter(Vector3.new(- 9529, 6, 6039)) > 10 then
							mU:topos(CFrame.new(- 9529, 6, 6039))
						else
							local K = {
								"Segment6";
								"Segment2";
								"Segment8",
								"Segment9";
								"Segment5"
							}
							local n = {
								Segment1 = "Trophy1",
								Segment3 = "Trophy2";
								Segment4 = "Trophy3";
								Segment7 = "Trophy4";
								Segment10 = "Trophy5"
							}
							for K, n in pairs(K) do
								local p = I["Haunted Castle"].Tablet[n]
								if p.Line["Rotation"].Z ~= 0 then
									repeat
										task.wait()
										fireclickdetector(p.ClickDetector)
									until p.Line["Rotation"].Z == 0
								end
							end
							for K, n in pairs(n) do
								local p = I["Haunted Castle"].Trophies["Quest"][n].Handle["CFrame"]
								p = tostring(p)
								p = (p:split(", "))[4]
								local u = "180"
								if p == "1" or p == "-1" then
									u = "90"
								end
								if not string.find(tostring(I["Haunted Castle"].Tablet[K].Line["Rotation"].Z), u) then
									repeat
										task.wait()
										fireclickdetector(I["Haunted Castle"].Tablet[K].ClickDetector)
									until string.find(tostring(I["Haunted Castle"].Tablet[K].Line["Rotation"].Z), u)
								end
							end
						end
					elseif not n then
						if u:DistanceFromCharacter(Vector3.new(- 9576, 6, 6230)) > 10 then
							mU:topos(CFrame.new(- 9576, 6, 6230))
						else
							for K, n in pairs({
								Part1 = "Really black",
								Part2 = "Really black";
								Part3 = "Dusty Rose";
								Part4 = "Storm blue";
								Part5 = "Really black",
								Part6 = "Parsley green";
								Part7 = "Really black";
								Part8 = "Dusty Rose";
								Part9 = "Really black";
								Part10 = "Storm blue"
							}) do
								pcall(function()
									local p = I["Haunted Castle"]["Lab Puzzle"].ColorFloor["Model"][K]
									if p.BrickColor["Name"] ~= n then
										repeat
											task.wait()
											fireclickdetector(p.ClickDetector)
										until p.BrickColor["Name"] == n
									end
								end)
							end
						end
					end
					return true
				end
			else
				if u:DistanceFromCharacter(Vector3.new(- 8654, 141, 6169)) < 10 then
					sU:InvokeServer("gravestoneEvent", 2, true)
				else
					mU:topos(CFrame.new(- 8654, 141, 6169))
				end
				return true
			end
		end
	end, pU or nU)
	local r = 0
	S("AutoChest", function()
		local K = B1:DetectChest()
		if not K then
			B1.CurrentChest = nil
			if X.AutoHopChest then
				local K = tonumber(X.ChestHopCount) or 10
				if r >= K then
					r = 0
					local K = tonumber(X.HopDelay) or 10
					yU:SendNotify("Chest Farm", ("Target reached. Hopping in ") .. (math.floor(K) .. "s..."), math.min(math.floor(K), 5))
					WU:ServerHop(K)
					task.wait(K + 5)
				end
			end
			return
		end
		local n = u.Character and u.Character:FindFirstChild("HumanoidRootPart")
		if not n then
			return
		end
		if B1.CurrentChest ~= K then
			B1.CurrentChest = K
			B1.ChestTargetTime = tick()
			B1.ChestNearTime = 0
		end
		local p = K:IsA("BasePart") and K.CFrame or (K:IsA("Model") and ((K.PrimaryPart and K.PrimaryPart["CFrame"] or K:GetPivot())))
		if not p then
			return
		end
		local s = ((n.Position - p.Position)).Magnitude
		if s <= 15 then
			local n = K:GetAttribute("IsDisabled") == true or K:GetAttribute("Collected") == true or not K:FindFirstChildWhichIsA("TouchTransmitter", true) or not K:IsDescendantOf(workspace)
			if n then
				B1.BlacklistChest(K, 90)
				B1.VisitedChests[K] = true
				r = r + 1
				B1.CurrentChest = nil
				B1.ChestNearTime = 0
				B1.ChestTargetTime = 0
				mU:StopTween()
				task.wait(.15)
				return
			end
			if B1.ChestNearTime == 0 then
				B1.ChestNearTime = tick()
			elseif tick() - B1.ChestNearTime > 2 then
				B1.BlacklistChest(K, 60)
				B1.CurrentChest = nil
				B1.ChestNearTime = 0
				B1.ChestTargetTime = 0
				mU:StopTween()
			end
			return
		end
		local c = math.max(30, (s / 140) + 10)
		if tick() - B1.ChestTargetTime > c then
			B1.BlacklistChest(K, 60)
			B1.CurrentChest = nil
			B1.ChestTargetTime = 0
			mU:StopTween()
			return
		end
		mU:topos(p * CFrame.new(0, 1.5, 0), true)
		task.wait(.1)
		if X.StopChest or X.StopHopChestIfChalice then
			if WU:CheckToolName("God's Chalice") or WU:CheckToolName("Fist of Darkness") or WU:CheckToolName("Sweet Chalice") then
				X.AutoChest = false
				X.AutoHopChest = false
			end
		end
	end, true)
	S("AutoFactoryRaid", function()
		if WU:CheckMon("Core") then
			local K = WU:GetEnemies("Core")
			if K then
				return l1:Attack(K)
			end
		end
	end, nU)
	S("AutoFarmPirateRaid", function()
		local K = nil
		for n, p in pairs(U.Enemies:GetChildren()) do
			if p.Name ~= "rip_indra True Form" then
				local n = p:FindFirstChild("Humanoid")
				if n and n.Health > 0 then
					if p and (p.PrimaryPart and ((p.PrimaryPart["Position"] - Vector3.new(- 5556, 314, - 2988))).Magnitude < 700) then
						K = p
					end
				end
			end
		end
		if K then
			return l1:Attack(K, true)
		end
	end, pU)
	S("AutoSoulReaper", function()
		local K = WU:GetEnemies("Soul Reaper")
		if K then
			return l1:Attack(K)
		end
		if WU:CheckToolName("Hallow Essence") then
			WU:EquipTool("Hallow Essence")
			return mU:topos(CFrame.new(- 8932.322265625, 146.83154296875, 6062.55078125))
		end
	end, pU)
	S("AutoGreybeard", function()
		if WU:CheckMon("Greybeard") then
			local K = WU:GetEnemies("Greybeard")
			if K then
				return l1:Attack(K)
			end
		end
	end, KU)
	S("AutoDarkbeard", function()
		if WU:CheckMon("Darkbeard") then
			local K = WU:GetEnemies("Darkbeard")
			if K then
				return l1:Attack(K)
			end
		end
		if WU:CheckToolName("Fist of Darkness") then
			WU:EquipTool("Fist of Darkness")
			return mU:topos(CFrame.new(3777, 14, - 3499))
		end
	end, nU)
	S("AutoCursedCaptain", function()
		if WU:CheckMon("Cursed Captain") then
			local K = WU:GetEnemies("Cursed Captain")
			if K then
				return l1:Attack(K)
			end
		end
	end, nU)
	S("AutoRipIndra", function()
		if WU:CheckMon("rip_indra True Form") then
			local K = WU:GetEnemies("rip_indra True Form")
			if K then
				return l1:Attack(K)
			end
		else
			return mU:topos(CFrame.new(- 5333, 424, - 2673))
		end
		if WU:CheckToolName("God's Chalice") then
			WU:EquipTool("God's Chalice")
			return mU:topos(CFrame.new(- 5561, 314, - 2663))
		end
	end, pU)
	S("AutoFarmObservation", function()
		if not R:HasTag(u.Character, "Ken") then
			return nil
		end
		if u:GetAttribute("KenDodgesLeft") > 1 then
			uU.CommE:FireServer("Ken", true)
		end
		local K = u:FindFirstChild("VisionRadius")
		local n = u:GetAttribute("KenMaxDodges") or 8
		local p = u:GetAttribute("KenDodgesLeft") or 0
		local s = p <= 0
		if K and not s then
			local K, u
			if KU then
				K, u = WU:GetEnemies({
					"Galley Captain"
				}), CFrame.new(5533, 88, 4852)
			elseif nU then
				K, u = WU:GetEnemies({
					"Lava Pirate"
				}), CFrame.new(- 5478, 16, - 5247)
			elseif pU then
				K, u = WU:GetEnemies({
					"Venomous Assailant"
				}), CFrame.new(4731.2719, 1090.178, 1078.1713)
			end
			if K and K:FindFirstChild("HumanoidRootPart") then
				if p >= 1 then
					mU:topos(K.HumanoidRootPart["CFrame"] * CFrame.new(3, 0, 0), true)
				else
					mU:topos(K.HumanoidRootPart["CFrame"] * CFrame.new(0, 50, 10), true)
					if p == .5 and X.StartObsHop then
						P.__ServerBrowser:InvokeServer("teleport", P.__ServerBrowser:InvokeServer("getjob"))
					end
				end
				if p <= .5 then
					uU.CommE:FireServer("Ken", true)
					yU:SendNotify("Observation", ("Dodges low! (") .. (p .. (("/") .. (n .. ")"))), 10)
				end
			else
				mU:topos(u, true)
			end
		else
			yU:SendNotify("Observation", "Max Vision reached!", 10)
		end
	end, true)
	S("DummyTraining", function()
		if not VerifyQuest("Training Dummy") and not (u.PlayerGui["Main"]:FindFirstChild("Quest")).Visible then
			return sU:InvokeServer("ArenaTrainer")
		end
		local K = WU:GetEnemies("Training Dummy")
		if K then
			return l1:Attack(K)
		end
		WU:MobsNextSpawn("Training Dummy")
	end, pU)
	S("AutoStartRaceV2", function()
		if not m.Race:FindFirstChild("Evolved") then
			local K = sU:InvokeServer("Alchemist", "1")
			if K == 0 or K == 2 then
				if u:DistanceFromCharacter(Vector3.new(- 2777, 73, - 3570)) <= 4 then
					sU:InvokeServer("Alchemist", K == 0 and "2" or "3")
				else
					mU:topos(CFrame.new(- 2777, 73, - 3570))
				end
			elseif K == 1 then
				local K = {
					"Flower 1",
					"Flower 2";
					"Flower 3"
				}
				for n, p in ipairs(K) do
					if not WU:CheckToolName(p) then
						if n == 3 then
							local K = U:FindFirstChild("Flower1")
							local n = U:FindFirstChild("Flower2")
							local p = ((not K or K.Transparency == 1)) and ((not n or n.Transparency == 1))
							if WU:CheckToolName("Flower 1") and WU:CheckToolName("Flower 2") or p then
								local K = WU:GetEnemies("Swan Pirate")
								if K then
									l1:Attack(K, true)
								else
									WU:MobsNextSpawn("Swan Pirate")
								end
								return
							end
						else
							local p = U:FindFirstChild(("Flower") .. n)
							if p and p.Transparency ~= 1 then
								mU:topos(p.CFrame)
								task.wait(.5)
								return
							else
								local p = false
								for n = n + 1, 2, 1 do
									if not WU:CheckToolName(K[n]) then
										local K = U:FindFirstChild(("Flower") .. n)
										if K and K.Transparency ~= 1 then
											p = true
											break
										end
									end
								end
								if not p then
									mU:topos(CFrame.new(- 382, 73, 290))
									yU:SendNotify("Race V1-V2 Quest", "Waiting for night time", 8)
									return
								end
							end
						end
					end
				end
			end
		end
	end, nU)
	S("AutoStartRaceV3", function()
		if not m.Race:FindFirstChild("Evolved") then
			return nil
		end
		local K = sU:InvokeServer("Wenlocktoad", "1")
		if K == 0 or K == 2 then
			if u:DistanceFromCharacter(Vector3.new(- 1992, 125, - 73)) <= 4 then
				sU:InvokeServer("Wenlocktoad", K == 0 and "2" or "3")
			else
				mU:topos(Vector3.new(- 1992, 125, - 73))
			end
		elseif K == 1 then
			if m.Race["Value"] == "Mink" then
				Functions.AutoChest["Call"]()
			elseif m.Race["Value"] == "Human" then
				if checkv3boss() then
					local K = WU:GetEnemies({
						"Diamond";
						"Orbitus",
						"Jeremy"
					})
					if K then
						return l1:Attack(K)
					end
				else
					mU:topos(CFrame.new(- 382, 73, 290))
					yU:SendNotify("Human V3 Quest", "Diamond, Orbitus, or Jeremy not currently spawned.", 8)
				end
			elseif m.Race["Value"] == "Ghoul" then
				local K = nil
				local p = math.huge
				for n, s in pairs(n:GetChildren()) do
					if s.Name ~= u.Name and (not s:GetAttribute("IslandRaiding") and not s:GetAttribute("PvpDisabled")) then
						local n = U.Characters:FindFirstChild(s.Name)
						if n then
							local c = n:FindFirstChild("HumanoidRootPart")
							local X = n:FindFirstChildOfClass("Humanoid")
							if c and (X and X.Health > 0) then
								local X = s.Data["Level"].Value - u.Data["Level"].Value
								if X < 500 and X > - 500 then
									if not o1(n) then
										local n = ((c.Position - u.Character["HumanoidRootPart"].Position)).Magnitude
										if n < p then
											p = n
											K = c
										end
									end
								end
							end
						end
					end
				end
				if K then
					local n = K.Parent
					local p = n:FindFirstChildOfClass("Humanoid")
					local u = K
					repeat
						task.wait()
						WU:AutoHaki()
						WU:EquipWeapon()
						mU:topos((K.CFrame * CFrame.new(0, 8, 0)) * CFrame.Angles(math.rad(- 45), 0, 0), true)
						if u and (u.Parent and (p and p.Health > 0)) then
							AimbotTargetInstance = n
							YU = u.Position
						else
							AimbotTargetInstance = nil
							YU = nil
							break
						end
						a1()
					until not X.AutoStartRaceV3 or not p or p.Health <= 0 or not K.Parent
					AimbotTargetInstance = nil
					YU = nil
				end
			elseif m.Race["Value"] == "Skypiea" then
				local K = nil
				local p = math.huge
				for n, s in pairs(n:GetChildren()) do
					if s.Name ~= u.Name and (not s:GetAttribute("IslandRaiding") and (not s:GetAttribute("PvpDisabled") and tostring(s.Data["Race"].Value) == "Skypiea")) then
						local n = U.Characters:FindFirstChild(s.Name)
						if n then
							local c = n:FindFirstChild("HumanoidRootPart")
							local X = n:FindFirstChildOfClass("Humanoid")
							if c and (X and X.Health > 0) then
								local X = s.Data["Level"].Value - u.Data["Level"].Value
								if X < 500 and X > - 500 then
									if not o1(n) then
										local n = ((c.Position - u.Character["HumanoidRootPart"].Position)).Magnitude
										if n < p then
											p = n
											K = c
										end
									end
								end
							end
						end
					end
				end
				if K then
					local n = K.Parent
					local p = n:FindFirstChildOfClass("Humanoid")
					local u = K
					repeat
						task.wait()
						WU:AutoHaki()
						WU:EquipWeapon()
						mU:topos((K.CFrame * CFrame.new(0, 8, 0)) * CFrame.Angles(math.rad(- 45), 0, 0), true)
						if u and (u.Parent and (p and p.Health > 0)) then
							AimbotTargetInstance = n
							YU = u.Position
						else
							AimbotTargetInstance = nil
							YU = nil
							break
						end
						a1()
					until not X.AutoStartRaceV3 or not p or p.Health <= 0 or not K.Parent
					AimbotTargetInstance = nil
					YU = nil
				end
			else
				yU:SendNotify("Supports Rabbit/Human/Sky V3", "wait for me to update all v3, love from flazhy...", 8)
			end
		end
	end, nU)
	S("AutoRaidFull", function()
		if X.Autostopraid then
			local K = tonumber(X.FragsCap) or 10000
			if J.Value >= K then
				yU._AutoRaidToggle["Update"](false)
				return
			end
		end
		if u.PlayerGui["Main"].TopHUDList["RaidTimer"].Visible and u:GetAttribute("IslandRaiding") then
			local K = {}
			for n, p in ipairs(U.Enemies:GetChildren()) do
				if p:FindFirstChild("Humanoid") and (p:FindFirstChild("HumanoidRootPart") and (p.Humanoid["Health"] > 0 and u:DistanceFromCharacter(p.HumanoidRootPart["Position"]) < 500)) then
					table.insert(K, p)
				end
			end
			if # K > 0 then
				local n = B1:GetCurrentRaidIslandIndex()
				local p = X.InstantKillLateIslands and (n and ((n == 4 or n == 5)))
				if p then
					O1(K)
					task.wait(.2)
				else
					local n = K[1]
					if n then
						l1:Attack(n, true)
					end
				end
			else
				local K = B1:GetRaidIslands()
				if K then
					mU:topos(CFrame.new(K.Position + Vector3.new(0, 80, 0)), true)
				end
			end
		end
		if WU:CheckToolName("Special Microchip") and (not u.PlayerGui["Main"].TopHUDList["RaidTimer"].Visible and (not B1:GetRaidIslands() and not u:GetAttribute("IslandRaiding"))) then
			if nU then
				local K = Vector3.new(- 6522, 308, - 4658)
				mU:topos(CFrame.new(K))
				if ((v.Position - K)).Magnitude <= 5 then
					fireclickdetector(I.CircleIsland["RaidSummon2"].Button["Main"].ClickDetector)
				end
			elseif pU then
				local K = Vector3.new(- 5073, 315, - 3153)
				mU:topos(CFrame.new(K))
				if ((v.Position - K)).Magnitude <= 5 then
					fireclickdetector(I["Boat Castle"].RaidSummon2["Button"].Main["ClickDetector"])
				end
			end
		elseif X.SelectRaid and (X.AutoBuyChip and not WU:CheckToolName("Special Microchip")) then
			if X.AutoUnstoreBelowFruit and (not WU:Checkfruit() and not u:GetAttribute("IslandRaiding")) then
				local K = WU:GetLowestFruit()
				if K then
					sU:InvokeServer("LoadFruit", K.StorageKey or K.Name)
					task.wait(.5)
					local n = WU:Checkfruit()
					if n and (u.Character and u.Character:FindFirstChildOfClass("Humanoid")) then
						local K = u.Backpack:FindFirstChild(n)
						if K then
							u.Character["Humanoid"]:EquipTool(K)
						end
					end
				end
			elseif not u:GetAttribute("IslandRaiding") then
				local K = WU:Checkfruit()
				if K and (u.Character and u.Character:FindFirstChildOfClass("Humanoid")) then
					local n = u.Backpack:FindFirstChild(K)
					if n then
						u.Character["Humanoid"]:EquipTool(n)
					end
				end
				sU:InvokeServer("RaidsNpc", "Select", X.SelectRaid)
				task.wait(1)
			else
				task.wait(1)
			end
		end
	end, nU or pU)
	local B = 0
	S("AutoDungeonFull", function()
		local K = I:FindFirstChild("Dungeon")
		if not K then
			return
		end
		local function n()
			local n, p, u = nil, math.huge, 0
			local s = v.Position
			for c = 1, 100, 1 do
				local X = K:FindFirstChild(tostring(c))
				if X then
					local K = (X:GetPivot()).Position
					local A = math.sqrt(((s.X - K.X)) ^ 2 + ((s.Z - K.Z)) ^ 2)
					local a = X:GetExtentsSize()
					local D = math.max(a.X, a.Z) / 2 + 300
					if A < D and A < p then
						p = A
						n = X
						u = c
					end
				end
			end
			return n, u
		end
		local function p(K)
			local n = {}
			if not K then
				return n
			end
			local p = K:GetExtentsSize()
			local u = math.max(p.X, p.Z) / 2 + 300
			local s = (K:GetPivot()).Position
			for K, p in ipairs(U.Enemies:GetChildren()) do
				if p:IsDescendantOf(U) and (p:FindFirstChild("Humanoid") and (p.Humanoid["Health"] > 0 and (p:FindFirstChild("HumanoidRootPart") and (p.Name ~= "Blank Buddy" and not string.find(string.lower(p.Name), "shadow"))))) then
					local K = p.HumanoidRootPart["Position"]
					local c = math.sqrt(((s.X - K.X)) ^ 2 + ((s.Z - K.Z)) ^ 2)
					if c < u then
						table.insert(n, p)
					end
				end
			end
			return n
		end
		local s, c = n()
		local A = p(s)
		if X.AutoDungeonShrine and c == B then
			local K = B1:GetDungeonProps(s)
			if K then
				local n = (K:GetPivot()).Position
				if u:DistanceFromCharacter(n) > 10 then
					mU:topos(CFrame.new(n + Vector3.new(0, 5, 0)), true)
				else
					a1()
				end
				return
			end
		end
		if # A == 0 then
			local K = tick()
			repeat
				task.wait(.5)
				s, c = n()
				A = p(s)
			until # A > 0 or (tick() - K) > 2
		end
		if # A > 0 then
			B = c
			local K = A[1]
			local n = u.Character:FindFirstChildOfClass("Tool")
			local p = K and (K:FindFirstChild("HumanoidRootPart") and K.HumanoidRootPart["Position"])
			local a = s and (s:GetPivot()).Position or (p or Vector3.zero)
			local D = ((K and (p and p.Y > a.Y + 100))) and 0 or (X.DoubleAttack and 20 or ((n and (n.ToolTip == "Blox Fruit" and (n.Name ~= "Ice-Ice" and n.Name ~= "Light-Light")))) and 20 or 30)
			if K and (K.Parent and K:FindFirstChild("HumanoidRootPart")) then
				mU:topos(CFrame.new(K.HumanoidRootPart["Position"] + Vector3.new(0, D, 0)), true)
				WU:EquipWeapon()
				WU:AutoHaki()
				WU:BringEnemies(K)
				l1:Attack(K, true)
			end
		else
			if c <= B then
				local K = B1:GetDungeonIslands()
				if K and u:DistanceFromCharacter(K.Position) > 20 then
					mU:topos(CFrame.new(K.Position + Vector3.new(0, 10, 0)), true)
					task.wait(1)
				end
			end
		end
	end, true)
	S("AutoUnlockDifficulties", function()
		if I:FindFirstChild("Dungeon") then
			return
		end
		pcall(function()
			game.ReplicatedStorage["DungeonShared"].DataRemote:InvokeServer("TryUnlockDifficulty", "Simulation", "Hard")
		end)
		pcall(function()
			game.ReplicatedStorage["DungeonShared"].DataRemote:InvokeServer("TryUnlockDifficulty", "Simulation", "Challenge")
		end)
		pcall(function()
			AU["RF/DungeonNPCNetworkFunction"]:InvokeServer("UnlockDifficulty")
		end)
		pcall(function()
			AU["RF/DungeonNPCNetworkFunction"]:InvokeServer("UnlockNext")
		end)
		pcall(function()
			AU["RF/DungeonNPCNetworkFunction"]:InvokeServer("Unlock")
		end)
		task.wait(5)
	end, true, true)
	S("AutoBuyTrinkets", function()
		pcall(function()
			P.Remotes["AccessoryInteract"]:InvokeServer("d")
		end)
		task.wait(1.5)
	end, true, true)
	S("AutoFuseTrinkets", function()
		local K = {}
		local n, p = pcall(function()
			return (SU:RemoteFunction("GetAllItemValues")):InvokeServer()
		end)
		if n and p then
			for n, p in next, p do
				if (p.Key == "AccessoryType" and p.Value == "Trinket") or (p.Key == "Type" and p.Value == "Trinket") then
					if p.NetworkedUID then
						table.insert(K, p.NetworkedUID)
					end
				end
			end
		end
		if # K >= 3 then
			pcall(function()
				P.Remotes["AccessoryInteract"]:InvokeServer("a", K[1], K[2], K[3])
			end)
		end
		task.wait(2)
	end, true, true)
	S("AutoRefineTrinkets", function()
		local K = {}
		local n, p = pcall(function()
			return (SU:RemoteFunction("GetAllItemValues")):InvokeServer()
		end)
		if n and p then
			for n, p in next, p do
				if (p.Key == "AccessoryType" and p.Value == "Trinket") or (p.Key == "Type" and p.Value == "Trinket") then
					if p.NetworkedUID then
						table.insert(K, p.NetworkedUID)
					end
				end
			end
		end
		if # K >= 1 then
			pcall(function()
				P.Remotes["AccessoryInteract"]:InvokeServer("c", K[1])
			end)
		end
		task.wait(2)
	end, true, true)
	S("AutoScrapTrinkets", function()
		local K = GetPlayerTrinketUIDs and GetPlayerTrinketUIDs() or {}
		if # K > 3 then
			local n = {}
			for p = 4, math.min(# K, 10), 1 do
				table.insert(n, K[p])
			end
			if # n > 0 then
				pcall(function()
					P.Remotes["AccessoryInteract"]:InvokeServer("b", n)
				end)
			end
		end
		task.wait(3)
	end, true, true)
	S("AutoOpenColorsTask", function()
		local K = u.Character and u.Character["PrimaryPart"]
		if K then
			local K = {
				{
					pos = Vector3.new(- 5415, 314, - 2212),
					color = "Pure Red"
				};
				{
					pos = Vector3.new(- 4972, 336, - 3720);
					color = "Snow White"
				},
				{
					pos = Vector3.new(- 5420, 1089, - 2667),
					color = "Winter Sky"
				}
			}
			for K, n in next, K do
				if u:DistanceFromCharacter(n.pos) < 5 then
					P.Modules["Net"]["RF/FruitCustomizerRF"]:InvokeServer({
						StorageName = n.color,
						Type = "AuraSkin";
						Context = "Equip"
					})
					break
				end
			end
		end
		if not X.AutoFarm and (not X.AutoFarmBones and not X.AutoFarmPrince) then
			local K = B1:GetPathButton()
			if K then
				mU:topos(K.CFrame)
			elseif not X.AutoRipIndra then
				mU:topos(CFrame.new(- 5119, 315, - 2964))
			end
		end
	end, pU)
	S("AutoVolcanicEvent", function()
		local K = I:FindFirstChild("PrehistoricIsland")
		if not K then
			return
		end
		local n = K:FindFirstChild("Core")
		if not n then
			return
		end
		local p = n:FindFirstChild("InteriorLava")
		if p then
			local K = p.Parent
			p:Destroy()
			if K and K ~= n then
				K:Destroy()
			end
		end
		local s = n:FindFirstChild("VolcanoRocks")
		if s and K then
			for K, n in ipairs(K:GetDescendants()) do
				local p = string.lower(n.Name)
				if p:find("lava") or p:find("beam") then
					pcall(function()
						n:Destroy()
					end)
				end
			end
		end
		local c = n:FindFirstChild("ActivationPrompt")
		local A = c and c:FindFirstChildOfClass("ProximityPrompt")
		if A and A.Enabled then
			if u:DistanceFromCharacter(c.CFrame["Position"]) <= 50 then
				fireproximityprompt(c.ProximityPrompt, math.huge)
			else
				mU:topos(c.CFrame)
			end
			return
		end
		if WU:CheckMon("Lava Golem") then
			local K = WU:GetEnemies("Lava Golem")
			if K then
				local n = K:FindFirstChild("HumanoidRootPart")
				local p = K:FindFirstChildOfClass("Humanoid")
				if n then
					n.Velocity = Vector3.zero
					n.AssemblyLinearVelocity = Vector3.zero
				end
				if p then
					p.WalkSpeed = 0
					p.JumpPower = 0
				end
				return l1:Attack(K, true)
			end
		end
		local a = false
		if s then
			for n, p in pairs(s:GetChildren()) do
				if p:FindFirstChild("VFXLayer") and p.VFXLayer["At0"].Glow["Enabled"] == true then
					a = true
					local n = p.VFXLayer["CFrame"].Position
					local s = K:FindFirstChild("Meshes/volcanoisland_Plane.005", true)
					local c = s and ((n - s.Position)).Unit
					local A = n + c * 30
					local D
					if s and ((A - s.Position)).Magnitude < 40 then
						local K = math.atan(c.Z, c.X) + tick() * .5
						D = n + Vector3.new(math.cos(K) * 30, 5, math.sin(K) * 30)
					else
						D = A
					end
					mU:topos(CFrame.new(D), true)
					if u:DistanceFromCharacter(n) <= 150 then
						if X.ShootGunVolcano then
							local K = X.SelectGunVolcano or "Skull Guitar"
							if not u.Character:FindFirstChild(K) then
								local n = u.Backpack:FindFirstChild(K) or u.Backpack:FindFirstChild("Skull Guitar")
								if n and u.Character:FindFirstChild("Humanoid") then
									u.Character["Humanoid"]:EquipTool(n)
								else
									sU:InvokeServer("LoadItem", K)
								end
								task.wait(.2)
							end
							WU:EquipWeapon("Gun")
							task.wait(.15)
							EU(n)
							local p = u.Character:FindFirstChildOfClass("Tool")
							if p and p:FindFirstChild("RemoteEvent") then
								pcall(function()
									p.RemoteEvent:FireServer("TAP", n)
								end)
							end
						else
							YU = n
							a1()
							YU = nil
						end
					end
					return
				end
			end
		end
		if not a then
			local K = n:FindFirstChild("PrehistoricRelic")
			if K and K:FindFirstChild("Shield") then
				mU:topos(K.Shield["CFrame"] + Vector3.new(0, 3, 0), true)
				return
			end
		end
	end, pU)
	S("AutoWhiteBelt", function()
		if u:DistanceFromCharacter(Vector3.new(5867, 1208, 870)) <= 5 then
			AU["RF/InteractDragonQuest"]:InvokeServer({
				NPC = "Dojo Trainer",
				Command = "ClaimQuest"
			})
			task.wait(1)
			AU["RF/InteractDragonQuest"]:InvokeServer({
				NPC = "Dojo Trainer",
				Command = "RequestQuest"
			})
			task.wait(1)
		else
			mU:topos(CFrame.new(5867, 1208, 870))
		end
		local K = WU:GetEnemies((CheckQuest())[2])
		if K then
			return l1:Attack(K)
		else
			WU:MobsNextSpawn((CheckQuest())[2])
		end
	end, pU)
	S("AutoPurpleBelt", function()
		if u:DistanceFromCharacter(Vector3.new(5867, 1208, 870)) <= 5 then
			AU["RF/InteractDragonQuest"]:InvokeServer({
				NPC = "Dojo Trainer",
				Command = "ClaimQuest"
			})
			task.wait(1)
			AU["RF/InteractDragonQuest"]:InvokeServer({
				NPC = "Dojo Trainer";
				Command = "RequestQuest"
			})
			task.wait(1)
		else
			mU:topos(CFrame.new(5867, 1208, 870))
		end
		Functions.AutoTaskEliteHunter["Call"]()
	end, pU)
	S("AutoCollectBones", function()
		if u:GetAttribute("PrehistoricIslandParticipant") then
			if U:FindFirstChild("DinoBone") then
				for K, n in pairs(U:GetChildren()) do
					if n.Name == "DinoBone" then
						mU:topos(n.CFrame)
					end
				end
			end
		end
	end, pU)
	S("AutoCollectEgg", function()
		local K = I:FindFirstChild("PrehistoricIsland")
		if K then
			local n = K:FindFirstChild("Core")
			if n then
				n = n:FindFirstChild("SpawnedDragonEggs")
			end
			if n and # n:GetChildren() > 0 then
				for K, n in next, n:GetChildren() do
					if n.Name == "DragonEgg" then
						local K = n:FindFirstChild("Molten")
						if K and K:FindFirstChild("ProximityPrompt") then
							local n = K.ProximityPrompt
							if n.Enabled then
								mU:topos(K.CFrame)
								fireproximityprompt(n)
							end
						end
					end
				end
			end
		end
	end, pU)
	local l = 1
	local i = tick()
	local d = 0
	S("AutoQuestBlaze", function()
		local K = U:FindFirstChild("EmberTemplate")
		if K and (K:FindFirstChild("Part") and K.Part["Position"].Y > 10) then
			mU:topos(K.Part["CFrame"] * CFrame.new(0, 3, 0), true)
			return
		end
		if B1:TaskDone() then
			B1.CurrentQuest = nil
			return
		end
		if not B1.CurrentQuest then
			local K, n, p, u = B1:CheckQuestStatus()
			B1.CurrentQuest = K and {
				HasQuest = K;
				Mobs = n;
				Progress = p;
				QuestType = u
			} or nil
		end
		if not B1.CurrentQuest then
			mU:topos(CFrame.new(5864, 1209, 808))
			return
		end
		if tick() - d >= 8 then
			d = tick()
			local K = B1:CheckQuestStatus()
			if not K then
				B1.CurrentQuest = nil
				return
			end
		end
		if B1.CurrentQuest["QuestType"] == 1 and ((B1.CurrentQuest["Mobs"] == "Hydra Enforcer" or B1.CurrentQuest["Mobs"] == "Venomous Assailant")) then
			local K = WU:GetEnemies(B1.CurrentQuest["Mobs"])
			if K then
				return l1:Attack(K, true)
			else
				WU:MobsNextSpawn(B1.CurrentQuest["Mobs"])
			end
		elseif B1.CurrentQuest["QuestType"] == 2 then
			local K = {
				Vector3.new(5326, 1000.5, 441.52);
				Vector3.new(5344.88, 1000.5, 359.94);
				Vector3.new(5260.73, 1000.5, 345.5),
				Vector3.new(5237.99, 1000.5, 429.64)
			}
			if tick() - i >= 2 then
				l = (l % # K) + 1
				i = tick()
			end
			local n = K[l]
			local p = u.Character and u.Character:FindFirstChild("HumanoidRootPart")
			if not p then
				return
			end
			local s = ((p.Position - n)).Magnitude
			mU:topos(CFrame.new(n + Vector3.new(0, 15, 0)), true)
			if s > 150 then
				return
			end
			local c = X.SelectGunBlaze or "Skull Guitar"
			if not u.Character:FindFirstChild(c) and not ((u.Character:FindFirstChildOfClass("Tool") and (u.Character:FindFirstChildOfClass("Tool")).ToolTip == "Gun")) then
				local K = u.Backpack:FindFirstChild(c) or u.Backpack:FindFirstChild("Skull Guitar")
				if K and u.Character:FindFirstChild("Humanoid") then
					u.Character["Humanoid"]:EquipTool(K)
				else
					sU:InvokeServer("LoadItem", c)
				end
				task.wait(.05)
			end
			WU:EquipWeapon("Gun")
			EU(n)
			if not X.ShootGunBlaze then
				YU = n
				a1()
				YU = nil
			end
		end
	end, pU)
	S("AutoCollectFireFlowers", function()
		local K = U:FindFirstChild("FireFlowers")
		if K then
			local n = K:GetChildren()
			for K = 1, # n, 1 do
				local p = n[K]
				local s = p:IsA("Model")
				if s then
					s = p.PrimaryPart or p:FindFirstChildOfClass("MeshPart")
				end
				if s then
					if u:DistanceFromCharacter(s.Position) > 3 then
						mU:topos(s.CFrame)
					else
						fireproximityprompt(p.ProximityPrompt, math.huge)
						task.wait(.5)
					end
					return
				end
			end
		end
		local n = WU:GetEnemies("Forest Pirate")
		if n then
			return l1:Attack(n, true)
		end
		WU:MobsNextSpawn("Forest Pirate")
	end, pU)
	S("AutoTrainGear", function()
		if u.Character:FindFirstChild("RaceEnergy") and u.Character:FindFirstChild("RaceTransformed") then
			if u.Character["RaceEnergy"].Value >= 1 and not u.Character["RaceTransformed"].Value then
				u.Backpack["Awakening"].RemoteFunction:InvokeServer({
					[1] = true
				})
			end
		end
		if m.Race["Value"] == "Draco" then
			sU:InvokeServer("UpgradeRace", "Buy", 2)
		else
			sU:InvokeServer("UpgradeRace", "Buy")
		end
		if X.TrainMethod == "Bones" then
			local K = WU:GetEnemies(yU.DataList["BonesList"])
			if K then
				return l1:Attack(K, true)
			end
			WU:MobsNextSpawn("Reborn Skeleton")
		elseif X.TrainMethod == "Cakes" then
			local K = WU:GetEnemies(yU.DataList["CakesList"])
			if K then
				return l1:Attack(K, true)
			end
			WU:MobsNextSpawn("Baking Staff")
		end
	end, pU)
	S("TweenMGear", function()
		local K = I:FindFirstChild("MysticIsland")
		if K then
			for K, n in next, K:GetChildren() do
				if n.Name == "Part" and n:IsA("MeshPart") then
					mU:topos(n.CFrame)
				end
			end
		end
	end, pU)
	S("AutoGetGhoulRace", function()
		if u.Data["Race"].Value == "Ghoul" then
			return nil
		end
		if WU:CheckInventory("Material", "Ectoplasm") < 100 then
			local K = WU:GetEnemies({
				"Ship Deckhand";
				"Ship Engineer";
				"Ship Steward",
				"Ship Officer"
			})
			if K then
				return l1:Attack(K, true)
			else
				return WU:MobsNextSpawn("Ship Deckhand")
			end
		else
			if WU:CheckToolName("Hellfire Torch") then
				if u:DistanceFromCharacter(Vector3.new(921, 125, 33453)) < 10 then
					sU:InvokeServer("Ectoplasm", "BuyCheck", 4)
					task.wait()
					sU:InvokeServer("Ectoplasm", "Buy", 4)
				else
					mU:topos(CFrame.new(921, 125, 33453))
				end
			else
				if WU:CheckMon("Cursed Captain") then
					local K = WU:GetEnemies("Cursed Captain")
					if K then
						return l1:Attack(K)
					else
						return WU:MobsNextSpawn("Cursed Captain")
					end
				else
					vU("CursedCaptain", 5)
				end
			end
		end
	end, nU)
	S("AutoGetCyborgRace", function()
		if m.Race["Value"] == "Cyborg" and sU:InvokeServer("CyborgTrainer", "Check") == 2 then
			return nil
		end
		local K = sU:InvokeServer("CyborgTrainer", "Check") == 1 or (I.CircleIsland and (I.CircleIsland:FindFirstChild("RaidSummon") and (I.CircleIsland["RaidSummon"]:FindFirstChild("Button") and (I.CircleIsland["RaidSummon"].Button:FindFirstChild("Main") and not I.CircleIsland["RaidSummon"].Button["Main"].CanCollide))))
		if K then
			if J.Value >= 2500 then
				sU:InvokeServer("CyborgTrainer", "Buy")
			else
				yU:SendNotify("Auto Cyborg Race", "Not enough fragments to buy Cyborg", 10)
			end
			return
		end
		local n = ("Quantum Onyx Hub/") .. (u.Name .. "CyborgRace.json")
		if isfolder and (makefolder and not isfolder("Quantum Onyx Hub")) then
			makefolder("Quantum Onyx Hub")
		end
		local p = nil
		if isfile and isfile(n) then
			local K, u = pcall(readfile, n)
			if K and (u and u ~= "") then
				p = u
			end
		end
		local function s(K)
			if writefile then
				pcall(writefile, n, tostring(K))
			end
		end
		local c = Vector3.new(- 5544, 229, - 5938)
		if WU:CheckToolName("Core Brain") then
			s("Unlocked")
			local K = u.Backpack:FindFirstChild("Core Brain") or (u.Character and u.Character:FindFirstChild("Core Brain"))
			if K and (K.Parent == u.Backpack and u.Character:FindFirstChildOfClass("Humanoid")) then
				u.Character["Humanoid"]:EquipTool(K)
			end
			mU:topos(CFrame.new(c))
			if ((v.Position - c)).Magnitude <= 8 then
				fireclickdetector(I.CircleIsland["RaidSummon"].Button["Main"].ClickDetector)
				task.wait(.5)
			end
			return
		end
		if p == nil and not WU:CheckToolName("Fist of Darkness") then
			mU:topos(CFrame.new(c))
			if ((v.Position - c)).Magnitude <= 8 then
				fireclickdetector(I.CircleIsland["RaidSummon"].Button["Main"].ClickDetector)
				task.wait(.5)
				if u.PlayerGui:FindFirstChild("Notifications") then
					for K, n in ipairs(u.PlayerGui["Notifications"]:GetChildren()) do
						if n:IsA("TextLabel") and (n.Text and n.Text ~= "") then
							local K = string.lower(n.Text)
							if K:find("core brain") or K:find("supply a <core brain>") or K:find("has been processed") then
								s("Unlocked")
								p = "Unlocked"
								break
							elseif K:find("microchip not found") then
								s("Chest")
								p = "Chest"
								break
							end
						end
					end
				end
			end
			return
		end
		if u.PlayerGui:FindFirstChild("Notifications") then
			for K, n in ipairs(u.PlayerGui["Notifications"]:GetChildren()) do
				if n:IsA("TextLabel") and (n.Text and n.Text ~= "") then
					local K = string.lower(n.Text)
					if K:find("core brain") or K:find("supply a <core brain>") or K:find("has been processed") then
						s("Unlocked")
						p = "Unlocked"
					end
				end
			end
		end
		local X = I.CircleIsland and I.CircleIsland:FindFirstChild("SecretLabDoors")
		local A = p == "Unlocked" or (X and (X:FindFirstChild("colormodel") and X.colormodel["Color"].G > X.colormodel["Color"].R))
		if not A then
			if not WU:CheckToolName("Fist of Darkness") then
				Functions.AutoChest["Call"]()
			else
				local K = u.Backpack:FindFirstChild("Fist of Darkness") or (u.Character and u.Character:FindFirstChild("Fist of Darkness"))
				if K and (K.Parent == u.Backpack and u.Character:FindFirstChildOfClass("Humanoid")) then
					u.Character["Humanoid"]:EquipTool(K)
				end
				mU:topos(CFrame.new(c))
				if ((v.Position - c)).Magnitude <= 8 then
					fireclickdetector(I.CircleIsland["RaidSummon"].Button["Main"].ClickDetector)
					s("Unlocked")
					task.wait(.5)
				end
			end
		else
			if WU:CheckMon("Order") then
				local K = WU:GetEnemies("Order")
				if K then
					return l1:Attack(K)
				else
					mU:topos(CFrame.new(- 6300, 16, - 4997))
				end
			elseif WU:CheckToolName("Microchip") then
				local K = u.Backpack:FindFirstChild("Microchip") or (u.Character and u.Character:FindFirstChild("Microchip"))
				if K and (K.Parent == u.Backpack and u.Character:FindFirstChildOfClass("Humanoid")) then
					u.Character["Humanoid"]:EquipTool(K)
				end
				mU:topos(CFrame.new(c))
				if ((v.Position - c)).Magnitude <= 8 then
					fireclickdetector(I.CircleIsland["RaidSummon"].Button["Main"].ClickDetector)
					task.wait(1)
				end
			else
				if J.Value >= 1000 then
					sU:InvokeServer("BlackbeardReward", "Microchip", "2")
					task.wait(1)
				else
					yU:SendNotify("Auto Cyborg Race", "Not enough fragments to buy Microchip", 10)
				end
			end
		end
	end, nU)
	S("AutoLawRaid", function()
		if WU:CheckMon("Order") then
			local K = WU:GetEnemies("Order")
			if K then
				l1:Attack(K)
			else
				mU:topos(CFrame.new(- 6300, 16, - 4997))
			end
			return
		end
		if not WU:CheckMon("Order") and not WU:CheckToolName("Microchip") then
			sU:InvokeServer("BlackbeardReward", "Microchip", "2")
		elseif not WU:CheckMon("Order") and WU:CheckToolName("Microchip") then
			local K = Vector3.new(- 5544, 229, - 5938)
			mU:topos(CFrame.new(K))
			if ((v.Position - K)).Magnitude <= 5 then
				fireclickdetector(I.CircleIsland["RaidSummon"].Button["Main"].ClickDetector)
			end
		elseif not sU:InvokeServer("BlackbeardReward", "Microchip", "1") then
			yU:SendNotify("Auto Law Raid", "Not Enough Frags", 8)
		end
	end, nU)
	S("AutoBuyMelee", function()
		local K = jU and jU[X.SelectMelee]
		if not K then
			return
		end
		local n = KU and 1 or nU and 2 or pU and 3 or 1
		if K.Sea and K.Sea ~= n then
			return
		end
		local p = u.Character and u.Character:FindFirstChild("HumanoidRootPart")
		if not p then
			return
		end
		local s = DetectNpc(K.Npc)
		if not s then
			return
		end
		local c = s:FindFirstChild("HumanoidRootPart") or s.PrimaryPart or s:FindFirstChildWhichIsA("BasePart")
		if not c then
			return
		end
		if ((p.Position - c.Position)).Magnitude > 15 then
			mU:topos(c.CFrame * CFrame.new(0, 0, - 4), true)
		else
			local n = K.Remote
			if n then
				if typeof(n[1]) == "table" then
					for K, n in next, n do
						sU:InvokeServer(unpack(n))
						task.wait(.15)
					end
				else
					sU:InvokeServer(unpack(n))
				end
			end
			task.wait(.5)
		end
	end, true)
	S("Auto_Fishing", function()
		local K = X.SelectedRod
		if not K then
			return
		end
		if not WU:CheckToolName(K) then
			pcall(function()
				(AU:FindFirstChild("RF/JobsRemoteFunction")):InvokeServer("FishingNPC", "FirstTimeFreeRod")
			end)
			sU:InvokeServer("LoadItem", K, {
				"Gear"
			})
		end
		if X.AutoCraftBait and X.SelectedBait then
			local K = false
			local n, p = pcall(function()
				return (SU:RemoteFunction("GetAllItemValues")):InvokeServer()
			end)
			if n and p then
				local n = {}
				for K, p in next, p do
					local u = tostring(p.ItemId) .. (("_") .. tostring(p.NetworkedUID))
					n[u] = n[u] or {
						ItemId = p.ItemId,
						Attributes = {}
					}
					if p.Value ~= nil then
						n[u].Attributes[p.Key] = p.Value
					end
				end
				for n, p in next, n do
					local u = nil
					local s, c = pcall(function()
						return FU.match(p.ItemId)
					end)
					if s and (c and c:isOk()) then
						local K = c:unwrap()
						if K and (K.Index and K.Index["DebugLabel"]) then
							u = tostring(K.Index["DebugLabel"])
						end
					end
					local A = u and ((u:match("^(.-)%s*%[") or u))
					local a = p.Attributes
					if A == X.SelectedBait and (a.IsOwned == true and ((a.Quantity or 0)) > 0) then
						sU:InvokeServer("LoadItem", A, {
							"Usables"
						})
						K = true
						task.wait(.5)
						break
					end
				end
			end
			if not K then
				local K = AU["RF/Craft"] and AU["RF/Craft"]:InvokeServer("Check", X.SelectedBait)
				if K then
					AU["RF/Craft"]:InvokeServer("Craft", X.SelectedBait, 1, {})
					task.wait(1.5)
					sU:InvokeServer("LoadItem", X.SelectedBait, {
						"Usables"
					})
					task.wait(.5)
				end
			end
		end
		WU:EquipTool(K)
		local n = u.Character or g
		local p = n and n:FindFirstChild("HumanoidRootPart")
		if not p then
			return
		end
		local s = DU(p.Position)
		local c = require(P.FishReplicated["FishingClient"].Config)
		local A = (c and (c.Rod and c.Rod["MaxLaunchDistance"])) or 150
		local a = p.CFrame["LookVector"]
		local D = (n:FindFirstChild("Head") and n.Head["Position"]) or (p.Position + Vector3.new(0, 2, 0))
		local Q, S = U:FindPartOnRayWithIgnoreList(Ray.new(D, (a * A) * (.99751243781095)), {
			n;
			U.Characters,
			U.Enemies
		})
		local F, H = U:FindPartOnRayWithIgnoreList(Ray.new(((S or (p.Position + a * 40))) + Vector3.new(0, 3, 0), Vector3.new(0, - 500, 0)), {
			n;
			U.Characters;
			U.Enemies
		})
		local O = Vector3.new(S and S.X or ((p.Position + a * 40)).X, math.max((H and H.Y) or s, s), S and S.Z or ((p.Position + a * 40)).Z)
		X.LastCastLocation = O
		local L = n:FindFirstChild(K)
		if not L then
			return
		end
		local R = L:GetAttribute("ServerState")
		local T = L:GetAttribute("State")
		local x = u.PlayerGui:FindFirstChild("Fishing_Reeling")
		local y = R == "Biting" or T == "Biting"
		if x and x.Enabled then
			local K = x:FindFirstChild("Minigame")
			local n = K and K:FindFirstChild("Container")
			local p = n and n:FindFirstChild("ReelZone")
			local u = n and n:FindFirstChild("Fish")
			local s = n and n:FindFirstChild("Treasure")
			local c = ((X.AutoGetChest and (s and s.Visible))) and s or u
			if p and (c and c.Visible) then
				local K = c.Position["X"].Scale + (c.Size["X"].Scale * .5)
				local n = p.Position["X"].Scale + (p.Size["X"].Scale * .5)
				local u = K - n
				if u > .03 then
					e:SendMouseButtonEvent(0, 0, 0, true, game, 1)
				elseif u < - 0.03 then
					e:SendMouseButtonEvent(0, 0, 0, false, game, 1)
				else
					e:SendMouseButtonEvent(0, 0, 0, true, game, 1)
					task.wait(.02)
					e:SendMouseButtonEvent(0, 0, 0, false, game, 1)
				end
			else
				e:SendMouseButtonEvent(0, 0, 0, true, game, 1)
				task.wait(.05)
				e:SendMouseButtonEvent(0, 0, 0, false, game, 1)
			end
			local A = P:FindFirstChild("FishReplicated") and P.FishReplicated:FindFirstChild("FishingRequest")
			if A then
				if X.AutoGetChest then
					pcall(function()
						A:InvokeServer("Catch", 1, 1)
					end)
				else
					pcall(function()
						A:InvokeServer("Catch", 1)
					end)
				end
			end
		elseif y then
			e:SendMouseButtonEvent(0, 0, 0, true, game, 1)
			task.wait(.08)
			e:SendMouseButtonEvent(0, 0, 0, false, game, 1)
			task.wait(.15)
		elseif T == "ReeledIn" or R == "ReeledIn" or not R or R == "Waiting" then
			e:SendMouseButtonEvent(0, 0, 0, true, game, 1)
			local K = tick()
			repeat
				task.wait(.015)
				local n = (u.Character and u.Character:FindFirstChild("Fishing_Cast Meter")) or U:FindFirstChild("Fishing_Cast Meter")
				local p = n and (n:FindFirstChild("CastMeter") and n.CastMeter:FindFirstChild("Bar"))
				local s = p and p:FindFirstChild("Frame")
				if s and s.Size["Y"].Scale >= .95 then
					break
				end
			until tick() - K >= 1.2
			e:SendMouseButtonEvent(0, 0, 0, false, game, 1)
			task.wait(.3)
		end
	end, true)
	local j = 0
	S("AutoSlap", function()
		local K = u.PlayerGui:FindFirstChild("FishSlapMinigame")
		if K and K.Enabled then
			local n = K:FindFirstChild("Bar")
			local p = n and n:FindFirstChild("GreenZone")
			local u = n and n:FindFirstChild("Tick")
			local s = K:FindFirstChild("SlapButton")
			if p and (u and (s and (tick() - j >= .1))) then
				local K = u.AbsolutePosition["Y"] + (u.AbsoluteSize["Y"] * .5)
				local n = p.AbsolutePosition["Y"] + (p.AbsoluteSize["Y"] * .5)
				local c = p.AbsoluteSize["Y"] * .45
				if math.abs(K - n) <= c then
					j = tick()
					if firesignal then
						firesignal(s.Activated)
					end
				end
			end
		end
	end, true)
	S("AutoMasterySwords", function()
		local K, n = pcall(function()
			return (SU:RemoteFunction("GetAllItemValues")):InvokeServer()
		end)
		if not K or not n then
			return
		end
		local p = {}
		for K, n in next, n do
			local u = tostring(n.ItemId) .. (("_") .. tostring(n.NetworkedUID))
			p[u] = p[u] or {
				ItemId = n.ItemId,
				Attributes = {}
			}
			if n.Value ~= nil then
				p[u].Attributes[n.Key] = n.Value
			end
		end
		local u = {}
		for K, n in next, p do
			local p = n.Attributes
			if p.IsOwned == true and p.Mastery ~= nil then
				local K, s = pcall(function()
					return FU.match(n.ItemId)
				end)
				if K and (s and s:isOk()) then
					local K = s:unwrap()
					local n = tostring(K.Index["DebugLabel"])
					local c = n:match("^(.-)%s*%[") or n
					local X = tU[c]
					if X then
						table.insert(u, {
							Name = c;
							Mastery = p.Mastery;
							Order = X.Order
						})
					end
				end
			end
		end
		table.sort(u, function(K, n)
			if K.Order == n.Order then
				return K.Mastery < n.Mastery
			end
			return K.Order < n.Order
		end)
		for K, n in next, u do
			if WU:CheckToolName(n.Name) then
				if n.Mastery < X.SelectSwordMastery then
					return
				end
			end
		end
		for K, n in next, u do
			if n.Mastery < X.SelectSwordMastery then
				if not WU:CheckToolName(n.Name) then
					sU:InvokeServer("LoadItem", n.Name)
					task.wait(.5)
				end
				return
			end
		end
	end, true, true)
	local t = 0
	local C = 1
	local h = 0
	local q = {
		CFrame.new(- 4602, 16, - 2881),
		CFrame.new(- 6126, 16, - 2250),
		CFrame.new(3911, 7, - 2582);
		CFrame.new(- 426, 11, 5301)
	}
	S("AutoCDKQuest", function()
		local K = yU:CDKProgress()
		if K == "Start Yama" then
			if not WU:CheckToolName("Yama") then
				sU:InvokeServer("LoadItem", "Yama")
			end
			local K = I:FindFirstChild("Turtle") and I.Turtle:FindFirstChild("Cursed")
			local n = K and K:FindFirstChild("Pedestal2")
			if n then
				if u:DistanceFromCharacter(n.Position) <= 12 then
					if n:FindFirstChild("ProximityPrompt") and n.ProximityPrompt["Enabled"] then
						fireproximityprompt(n.ProximityPrompt, math.huge)
					end
					sU:InvokeServer("CDKQuest", "StartTrial", "Evil")
					task.wait(.5)
				else
					mU:topos(n.CFrame)
				end
			else
				sU:InvokeServer("CDKQuest", "StartTrial", "Evil")
				mU:topos(CFrame.new(- 12391.56, 600.24, - 6500.53))
			end
		elseif K == "Pain Quest" then
			if not WU:CheckToolName("Yama") then
				sU:InvokeServer("LoadItem", "Yama")
			end
			if tick() - t > 10 then
				t = tick()
				sU:InvokeServer("CDKQuest", "StartTrial", "Evil")
			end
			local K = WU:GetEnemies("Forest Pirate") or WU:GetEnemies("Jungle Pirate") or WU:GetEnemies("Pirate Millionaire")
			if K and K:FindFirstChild("HumanoidRootPart") then
				mU:topos(K.HumanoidRootPart["CFrame"] * CFrame.new(0, 0, 3))
			else
				mU:topos(CFrame.new(- 13234, 520, - 6800))
			end
		elseif K == "Haze Quest" then
			if not WU:CheckToolName("Yama") then
				sU:InvokeServer("LoadItem", "Yama")
			end
			local K = u:FindFirstChild("QuestHaze")
			if not K then
				sU:InvokeServer("CDKQuest", "StartTrial", "Evil")
				local n = tick()
				repeat
					task.wait(.3)
					K = u:FindFirstChild("QuestHaze")
				until K or (tick() - n) > 4 or not X.AutoGetCDK
			end
			if K then
				local K = B1:HazeMobs()
				if K then
					l1:Attack(K, true)
				else
					local K = B1:HazePosition()
					if K then
						mU:topos(CFrame.new(K + Vector3.new(0, 20, 0)))
					else
						mU:topos(CFrame.new(- 12391.56, 600.24, - 6500.53))
					end
				end
			end
		elseif K == "Hell Quest" then
			if not WU:CheckToolName("Yama") then
				sU:InvokeServer("LoadItem", "Yama")
			end
			if tick() - t > 10 then
				t = tick()
				sU:InvokeServer("CDKQuest", "StartTrial", "Evil")
			end
			local K = U._WorldOrigin["Locations"]:FindFirstChild("Hell Dimension")
			local n = I:FindFirstChild("HellDimension")
			local p = (K and u:DistanceFromCharacter(K.Position) <= 1000) or (n and (n:FindFirstChild("Exit") and u:DistanceFromCharacter(n.Exit["Position"]) <= 1000))
			if p then
				if n and (n:FindFirstChild("Exit") and n.Exit["BrickColor"] == BrickColor.new("Olivine")) then
					if u:DistanceFromCharacter(n.Exit["Position"]) <= 25 then
						pcall(function()
							firetouchinterest(v, n.Exit, 0)
							firetouchinterest(v, n.Exit, 1)
						end)
					end
					mU:topos(n.Exit["CFrame"])
					return
				end
				local K = B1:GetNearest(150)
				if K then
					mU:topos(K.HumanoidRootPart["CFrame"] * Vector3.new(0, 30, 0), true)
					WU:AutoHaki()
					WU:EquipWeapon()
				else
					if n then
						for K, n in ipairs(n:GetChildren()) do
							if n.Name:find("Torch") and n:IsA("MeshPart") then
								local K = n:FindFirstChildOfClass("ProximityPrompt")
								if K and K.Enabled then
									if u:DistanceFromCharacter(n.Position) > 15 then
										mU:topos(n.CFrame, true)
										task.wait(.2)
									end
									fireproximityprompt(K, math.huge)
									task.wait(.1)
									mU:topos(n.CFrame * CFrame.new(0, 30, 0), true)
									task.wait(.3)
									break
								end
							end
						end
					end
				end
			else
				if WU:CheckMon("Soul Reaper") then
					local K = WU:GetEnemies("Soul Reaper")
					if K and K:FindFirstChild("HumanoidRootPart") then
						mU:topos(K.HumanoidRootPart["CFrame"] * CFrame.new(0, 0, 3))
					end
				else
					local K, n, p, s, c = sU:InvokeServer("Bones", "Check")
					local X = s ~= nil and (s ~= "00:00" and s ~= "")
					if p and (p > 0 and (K and K >= 50)) then
						if WU:CheckToolName("Hallow Essence") then
							WU:EquipTool("Hallow Essence")
							mU:topos(CFrame.new(- 8932, 142, 6063))
						else
							if u:DistanceFromCharacter(Vector3.new(- 8934, 142, 6036)) <= 50 then
								sU:InvokeServer("Bones", "Buy", 1, 1)
							else
								mU:topos(CFrame.new(- 8934, 142, 6036))
							end
						end
					else
						local K = WU:CheckToolName("Hallow Essence")
						if K then
							WU:EquipTool("Hallow Essence")
							mU:topos(CFrame.new(- 8932, 142, 6063))
						else
							vU("SoulReaper", 2)
						end
					end
				end
			end
		elseif K == "Burn Yama Scroll" then
			local K = I:FindFirstChild("Turtle") and I.Turtle:FindFirstChild("Cursed")
			local n = K and K:FindFirstChild("Pedestal2")
			if n then
				if u:DistanceFromCharacter(n.Position) <= 12 then
					if n:FindFirstChild("ProximityPrompt") and n.ProximityPrompt["Enabled"] then
						fireproximityprompt(n.ProximityPrompt, math.huge)
						P.DialogueController["_Close"]:Fire()
					end
					sU:InvokeServer("CDKQuest", "StartTrial", "Evil")
					task.wait(.5)
				else
					mU:topos(n.CFrame)
				end
			else
				mU:topos(CFrame.new(- 12391.56, 600.24, - 6500.53))
			end
		elseif K == "Start Tushita" then
			if not WU:CheckToolName("Tushita") then
				sU:InvokeServer("LoadItem", "Tushita")
			end
			local K = I:FindFirstChild("Turtle") and I.Turtle:FindFirstChild("Cursed")
			local n = K and K:FindFirstChild("Pedestal1")
			if n then
				if u:DistanceFromCharacter(n.Position) <= 12 then
					if n:FindFirstChild("ProximityPrompt") and n.ProximityPrompt["Enabled"] then
						fireproximityprompt(n.ProximityPrompt, math.huge)
					end
					sU:InvokeServer("CDKQuest", "StartTrial", "Good")
					task.wait(.5)
				else
					mU:topos(n.CFrame)
				end
			else
				sU:InvokeServer("CDKQuest", "StartTrial", "Good")
				mU:topos(CFrame.new(- 12391.07, 600.24, - 6599.23))
			end
		elseif K == "Boat Quest" then
			if not WU:CheckToolName("Tushita") then
				sU:InvokeServer("LoadItem", "Tushita")
			end
			if tick() - t > 10 then
				t = tick()
				sU:InvokeServer("CDKQuest", "StartTrial", "Good")
			end
			local K = q[C] or q[1]
			if u:DistanceFromCharacter(K.Position) > 15 then
				mU:topos(K)
				local n = U.NPCs:FindFirstChild("Luxury Boat Dealer")
				if n and u:DistanceFromCharacter((n:GetPivot()).Position) <= 25 then
					pcall(function()
						sU:InvokeServer("CDKQuest", "BoatQuest", n, "Check")
						sU:InvokeServer("CDKQuest", "BoatQuest", n)
						sU:InvokeServer("CDKQuest", "BoatQuest", n, "Pardon me...")
						P.DialogueController["_Close"]:Fire()
					end)
				end
			else
				local K = U.NPCs:FindFirstChild("Luxury Boat Dealer")
				if K then
					pcall(function()
						sU:InvokeServer("CDKQuest", "BoatQuest", K, "Check")
						sU:InvokeServer("CDKQuest", "BoatQuest", K)
						sU:InvokeServer("CDKQuest", "BoatQuest", K, "Pardon me...")
						P.DialogueController["_Close"]:Fire()
					end)
				end
				task.wait(1.5)
				C = (C % # q) + 1
			end
		elseif K == "Raid Quest" then
			if not WU:CheckToolName("Tushita") then
				sU:InvokeServer("LoadItem", "Tushita")
			end
			if tick() - t > 10 then
				t = tick()
				sU:InvokeServer("CDKQuest", "StartTrial", "Good")
			end
			local K = B1:DetectPirateRaid()
			if K then
				h = tick()
				l1:Attack(K, true)
			else
				mU:topos(CFrame.new(- 5542, 330, - 2971))
				if h == 0 then
					h = tick()
				end
				if tick() - h > 35 then
					vU("pirate", 2)
					h = tick()
				end
			end
		elseif K == "Heavenly Quest" then
			if not WU:CheckToolName("Tushita") then
				sU:InvokeServer("LoadItem", "Tushita")
			end
			if tick() - t > 10 then
				t = tick()
				sU:InvokeServer("CDKQuest", "StartTrial", "Good")
			end
			local K = f.Locations:FindFirstChild("Heavenly Dimension")
			local n = I:FindFirstChild("HeavenlyDimension")
			local p = (K and u:DistanceFromCharacter(K.Position) <= 1000) or (n and (n:FindFirstChild("Exit") and u:DistanceFromCharacter(n.Exit["Position"]) <= 1000))
			if p then
				if n and (n:FindFirstChild("Exit") and n.Exit["BrickColor"] == BrickColor.new("Cloudy grey")) then
					if u:DistanceFromCharacter(n.Exit["Position"]) <= 25 then
						pcall(function()
							firetouchinterest(v, n.Exit, 0)
							firetouchinterest(v, n.Exit, 1)
						end)
					end
					mU:topos(n.Exit["CFrame"])
					return
				end
				local K = B1:GetNearest(150)
				if K then
					mU:topos(K.HumanoidRootPart["CFrame"] * Vector3.new(0, 30, 0), true)
					WU:AutoHaki()
					WU:EquipWeapon()
				else
					if n then
						for K, n in ipairs(n:GetChildren()) do
							if n.Name:find("Torch") and n:IsA("MeshPart") then
								local K = n:FindFirstChildOfClass("ProximityPrompt")
								if K and K.Enabled then
									if u:DistanceFromCharacter(n.Position) > 15 then
										mU:topos(n.CFrame, true)
										task.wait(.2)
									end
									fireproximityprompt(K, math.huge)
									task.wait(.1)
									mU:topos(n.CFrame * CFrame.new(0, 30, 0), true)
									task.wait(.3)
									break
								end
							end
						end
					end
				end
			else
				if WU:CheckMon("Cake Queen") then
					local K = WU:GetEnemies("Cake Queen")
					if K then
						l1:Attack(K, true)
					end
				else
					WU:MobsNextSpawn("Cake Queen")
				end
			end
		elseif K == "Burn Tushita Scroll" then
			local K = I:FindFirstChild("Turtle") and I.Turtle:FindFirstChild("Cursed")
			local n = K and K:FindFirstChild("Pedestal1")
			if n then
				if u:DistanceFromCharacter(n.Position) <= 12 then
					if n:FindFirstChild("ProximityPrompt") and n.ProximityPrompt["Enabled"] then
						fireproximityprompt(n.ProximityPrompt, math.huge)
					end
					sU:InvokeServer("CDKQuest", "StartTrial", "Good")
					task.wait(.5)
				else
					mU:topos(n.CFrame)
				end
			else
				mU:topos(CFrame.new(- 12391.07, 600.24, - 6599.23))
			end
		elseif K == "Alucard Boss" then
			local K = I:FindFirstChild("Turtle") and I.Turtle:FindFirstChild("Cursed")
			if not K then
				mU:topos(CFrame.new(- 12389, 601, - 6548))
			else
				if K:FindFirstChild("PlacedGem") and K.PlacedGem["Transparency"] == 0 then
					if not WU:CheckMon("Cursed Skeleton Boss") then
						mU:topos(CFrame.new(- 12341.67, 603.35, - 6550.61))
					else
						local K = WU:GetEnemies("Cursed Skeleton Boss")
						if K then
							l1:Attack(K, true)
						end
					end
				else
					local n = K:FindFirstChild("Pedestal3")
					if n and n:FindFirstChild("ProximityPrompt") then
						if u:DistanceFromCharacter(n.Position) <= 12 then
							fireproximityprompt(n.ProximityPrompt, math.huge)
							P.DialogueController["_Close"]:Fire()
						else
							mU:topos(n.CFrame)
						end
					else
						sU:InvokeServer("CDKQuest", "Alucard")
						mU:topos(CFrame.new(- 12356.77, 600.24, - 6551.03))
					end
				end
			end
		end
	end, pU)
	local Z = CFrame.new(- 11892, 931, - 8761)
	S("GetRainbowHaki", function()
		for K, n in ipairs({
			"Stone",
			"Hydra Leader";
			"Kilo Admiral";
			"Captain Elephant";
			"Beautiful Pirate"
		}) do
			if VerifyQuest(n) then
				local K = WU:GetEnemies(n)
				if K then
					return l1:Attack(K)
				else
					WU:MobsNextSpawn(n)
					return
				end
			end
		end
		if u:DistanceFromCharacter(Z.Position) <= 10 then
			sU:InvokeServer("HornedMan", "Bet")
		else
			mU:topos(Z)
		end
	end, pU)
	S("CompleteCitizenQuest", function()
		local K = sU:InvokeServer("CitizenQuestProgress")
		if K then
			local n = K.FoundTreasure
			local p = K.KilledBandits
			local s = K.KilledBoss
			if n then
				return nil
			end
			if s then
				mU:topos(CFrame.new(- 12512, 340, - 9872))
				return true
			end
			if not p then
				local K = VerifyQuest("Forest Pirate")
				if K then
					K = VerifyQuest("50")
				end
				if K then
					local K = WU:GetEnemies("Forest Pirate")
					if K then
						return l1:Attack(K, true)
					else
						mU:topos(CFrame.new(- 13497, 391, - 7909))
					end
				else
					if u:DistanceFromCharacter(Vector3.new(- 12445, 332, - 7676)) <= 8 then
						sU:InvokeServer("StartQuest", "CitizenQuest", 1)
					else
						mU:topos(CFrame.new(- 12445, 332, - 7676))
					end
				end
			else
				local K = WU:GetEnemies("Captain Elephant")
				if VerifyQuest("Captain Elephant") then
					if K then
						return l1:Attack(K)
					else
						mU:topos(CFrame.new(- 13382, 367, - 8539))
					end
				else
					if u:DistanceFromCharacter(Vector3.new(- 12445, 332, - 7676)) <= 8 then
						sU:InvokeServer("CitizenQuestProgress", "Citizen")
					else
						mU:topos(CFrame.new(- 12445, 332, - 7676))
					end
				end
			end
		end
	end, pU)
	S("AutoFullyPullLever", function()
		local K = sU:InvokeServer("RaceV4Progress", "Check")
		if K == 1 then
			sU:InvokeServer("RaceV4Progress", "Begin")
		elseif K == 2 then
			if WU:GetDistance(CFrame.new(28610, 14897, 106)) > 500 then
				mU:topos(CFrame.new(28610, 14897, 106))
				return
			else
				if WU:GetDistance(CFrame.new(28610, 14897, 107)) < 20 then
					wait(1)
					sU:InvokeServer("RaceV4Progress", "TeleportBack")
					wait(.5)
					mU:topos(CFrame.new(2956, 2282, - 7216))
					sU:InvokeServer("RaceV4Progress", "Teleport")
				end
				return
			end
		elseif K == 3 then
			sU:InvokeServer("RaceV4Progress", "Continue")
		elseif I:FindFirstChild("MysticIsland") and not sU:InvokeServer("CheckTempleDoor") then
			if (x.ClockTime > 16 or x.ClockTime < 5) then
				local K = CFrame.new(I.MysticIsland["Center"].Position["X"], 500, I.MysticIsland["Center"].Position["Z"])
				mU:topos(K, true)
				local n = false
				for K, p in pairs(I.MysticIsland:GetChildren()) do
					if p.Name == "Part" and (p:IsA("MeshPart") and p.Transparency == 0) then
						n = p
					end
				end
				if not n then
					if WU:GetDistance(K) < 200 then
						U.CurrentCamera["CFrame"] = CFrame.lookAt(U.CurrentCamera["CFrame"].p, U.CurrentCamera["CFrame"].p + x:GetMoonDirection() * 100)
						wait(.5)
						P.Remotes["CommE"]:FireServer("ActivateAbility")
					end
				else
					mU:topos(n.CFrame)
				end
			end
		elseif sU:InvokeServer("CheckTempleDoor") then
			if WU:GetDistance(CFrame.new(28575, 14937, 72)) > 10 then
				mU:topos(CFrame.new(28575, 14937, 72))
			else
				fireproximityprompt(I["Temple of Time"].Lever["Prompt"].ProximityPrompt, math.huge)
			end
		end
	end, pU)
	S("AutoKenV2", function()
		local K = sU:InvokeServer("CitizenQuestProgress")
		if not K.FoundTreasure then
			Functions.CompleteCitizenQuest["Call"]()
		end
		if not WU:CheckToolName("Fruit Bowl") then
			if not WU:CheckToolName("Apple") then
				for K, n in pairs(U:GetChildren()) do
					if n.Name == "Apple" then
						mU:topos(CFrame.new(n.Handle["Position"]))
						task.wait()
					end
				end
			elseif not WU:CheckToolName("Banana") then
				for K, n in pairs(U:GetChildren()) do
					if n.Name == "Banana" then
						mU:topos(CFrame.new(n.Handle["Position"]))
						task.wait()
					end
				end
			elseif not WU:CheckToolName("Pineapple") then
				for K, n in pairs(U:GetChildren()) do
					if n.Name == "Pineapple" then
						mU:topos(CFrame.new(n.Handle["Position"]))
					end
				end
			end
			if WU:CheckToolName("Banana") and (WU:CheckToolName("Apple") and WU:CheckToolName("Pineapple")) then
				mU:topos(CFrame.new(- 12445, 332, - 7673))
				sU:InvokeServer("CitizenQuestProgress", "Citizen")
			end
		end
		if WU:CheckToolName("Fruit Bowl") then
			mU:topos(CFrame.new(- 10920, 624, - 10267))
			task.wait(.5)
			sU:InvokeServer("KenTalk2", "Start")
			task.wait(.1)
			sU:InvokeServer("KenTalk2", "Buy")
		end
	end, pU)
	S("AutoDeathStep", function()
		if WU:CheckToolName("Death Step") then
			return
		end
		local K = WU:CheckToolName("Black Leg")
		if not K or K.Level["Value"] < 400 then
			X.SelectMelee = "Black Leg"
			Functions.AutoBuyMelee["Call"]()
			if K and K.Level["Value"] < 400 then
				local K = WU:GetEnemies({
					"Arctic Warrior";
					"Snow Lurker"
				})
				if K then
					return l1:Attack(K)
				else
					WU:MobsNextSpawn("Arctic Warrior")
				end
			end
			return
		end
		X.SelectMelee = "Death Step"
		Functions.AutoBuyMelee["Call"]()
		if U.Map["IceCastle"].Hall["LibraryDoor"].PhoeyuDoor["Transparency"] == 0 then
			if WU:CheckToolName("Library Key") then
				mU:topos(CFrame.new(6371, 297, - 6841))
				task.wait(.3)
				sU:InvokeServer("BuyDeathStep")
			else
				local K = WU:GetEnemies("Awakened Ice Admiral")
				if K then
					return l1:Attack(K)
				else
					mU:topos(CFrame.new(5669, 29, - 6483))
				end
			end
		end
	end, nU)
	S("AutoSharkmanKarate", function()
		if WU:CheckToolName("Sharkman Karate") then
			return
		end
		local K = WU:CheckToolName("Fishman Karate")
		if not K or K.Level["Value"] < 400 then
			X.SelectMelee = "Fishman Karate"
			Functions.AutoBuyMelee["Call"]()
			if K and K.Level["Value"] < 400 then
				local K = WU:GetEnemies("Water Fighter")
				if K then
					return l1:Attack(K)
				else
					WU:MobsNextSpawn("Water Fighter")
				end
			end
			return
		end
		local n = sU:InvokeServer("BuySharkmanKarate")
		if type(n) == "string" and n:find("keys") then
			if WU:CheckToolName("Water Key") then
				mU:topos(CFrame.new(- 2605, 239, - 10315))
				task.wait(.3)
				sU:InvokeServer("BuySharkmanKarate")
			else
				local K = WU:GetEnemies("Tide Keeper")
				if K then
					return l1:Attack(K)
				else
					mU:topos(CFrame.new(- 3054, 237, - 10145))
				end
			end
		else
			X.SelectMelee = "Sharkman Karate"
			Functions.AutoBuyMelee["Call"]()
		end
	end, nU)
	S("AutoElectricClaw", function()
		if WU:CheckToolName("Electric Claw") then
			return
		end
		local K = WU:CheckToolName("Electro")
		if not K or K.Level["Value"] < 400 then
			X.SelectMelee = "Electro"
			Functions.AutoBuyMelee["Call"]()
			if K and K.Level["Value"] < 400 then
				local K = WU:GetEnemies("Fishman Raider")
				if K then
					return l1:Attack(K)
				else
					WU:MobsNextSpawn("Fishman Raider")
				end
			end
			return
		end
		local n = sU:InvokeServer("BuyElectricClaw", "Start")
		if n == nil then
			mU:topos(CFrame.new(- 12548, 337, - 7481))
			task.wait(.3)
		else
			X.SelectMelee = "Electric Claw"
			Functions.AutoBuyMelee["Call"]()
		end
	end, pU)
	S("AutoDragonTalon", function()
		if WU:CheckToolName("Dragon Talon") then
			return
		end
		local K = WU:CheckToolName("Dragon Claw")
		if not K or K.Level["Value"] < 400 then
			X.SelectMelee = "Dragon Claw"
			Functions.AutoBuyMelee["Call"]()
			if K and K.Level["Value"] < 400 then
				local K = WU:GetEnemies("Reborn Skeleton")
				if K then
					return l1:Attack(K, true)
				else
					WU:MobsNextSpawn("Reborn Skeleton")
				end
			end
			return
		end
		if not WU:CheckToolName("Fire Essence") then
			sU:InvokeServer("Bones", "Buy", 1, 1)
			task.wait(.1)
		else
			X.SelectMelee = "Dragon Talon"
			Functions.AutoBuyMelee["Call"]()
		end
	end, pU)
	S("AutoSharkAnchor", function()
		if M:FindFirstChild("Terrorshark") then
			for K, n in pairs(M:GetChildren()) do
				if n.Name == "Terrorshark" then
					if n:FindFirstChild("Humanoid") and (n:FindFirstChild("HumanoidRootPart") and n.Humanoid["Health"] > 0) then
						repeat
							task.wait()
							local K = u.Character and u.Character:FindFirstChildOfClass("Tool")
							local p = ((K and (K.ToolTip == "Blox Fruit" and (K.Name ~= "Ice-Ice" and K.Name ~= "Light-Light")))) and 16 or 40
							task.wait()
							WU:AutoHaki()
							WU:EquipWeapon()
							local s
							if n.HumanoidRootPart["CFrame"].Y > - 3 then
								s = CFrame.new(0, 250, 0)
							elseif B1:TerrorDodge() then
								s = CFrame.new(0, 150, 30)
							else
								s = CFrame.new(0, p, 0)
							end
							mU:topos(n.HumanoidRootPart["CFrame"] * s, true)
							l1:Attack(n)
						until not X.AutoSharkAnchor or not n.Parent or n.Humanoid["Health"] <= 0
					end
				end
			end
		else
			l1:AutoBoatSail(CFrame.new(- 10000000, 31, 37016.25))
		end
	end, pU)
	S("Tweenfruit", function()
		local K = nil
		local n = math.huge
		for p, u in ipairs(U:GetChildren()) do
			if u:IsA("Model") and (u.Name:find("Fruit") and u.Name ~= "Fruit1") then
				local p = u:FindFirstChild("Handle") or u:FindFirstChildWhichIsA("BasePart")
				if p then
					local u = v and ((p.Position - v.Position)).Magnitude or 0
					if u < n then
						n = u
						K = p
					end
				end
			end
		end
		if K then
			mU:topos(K.CFrame)
		elseif X.HopIfNoFruit then
			WU:ServerHop()
		end
	end, true)
	local E = nil
	S("AutoBerrySafe", function()
		local K, n, p = nil, nil, nil
		local u = math.huge
		for s, c in ipairs(R:GetTagged("BerryBush")) do
			local X = c.Parent
			if X and X:IsDescendantOf(U) then
				local s = X:GetAttribute("CFrame") or (X:IsA("Model") and X:GetPivot())
				for c, A in pairs(c:GetAttributes()) do
					if type(A) == "string" and (# A > 0 and c:sub(1, 12) == "_BerryCFrame") then
						local A = X:GetAttribute(c)
						local a = s and (A and s:ToWorldSpace(A))
						if a then
							local s = v and ((a.Position - v.Position)).Magnitude or 0
							if s < u then
								u = s
								K = X
								n = c
								p = a
							end
						end
					end
				end
			end
		end
		if K and (n and p) then
			E = nil
			mU:topos(p)
			if v and ((p.Position - v.Position)).Magnitude <= 60 then
				task.spawn(function()
					local p = AU:FindFirstChild("RF/ClaimBerry")
					if p then
						p:InvokeServer(K.Name, n)
					end
				end)
			end
		elseif X.HopIfNoBerries then
			if not E then
				E = tick()
			elseif tick() - E >= 5 then
				local K = (X and tonumber(X.HopDelay)) or 10
				if yU and yU.SendNotify then
					yU:SendNotify("Berry Farm", ("No Berries found in server. Hopping in ") .. (tostring(math.floor(K)) .. "s..."), math.min(math.floor(K), 5))
				end
				WU:ServerHop(K)
				task.wait(K + 5)
			end
		else
			E = nil
		end
	end, true)
	S("AutoKillLeviathan", function()
		for K, n in ipairs(W:GetChildren()) do
			if n.Name == "Leviathan Segment" and n:FindFirstChild("HumanoidRootPart") then
				local K = n.HumanoidRootPart["CFrame"] * CFrame.new(0, 21, 0)
				mU:topos(K, true)
				WU:AutoHaki()
				if ((u.Character["HumanoidRootPart"].Position - n.HumanoidRootPart["Position"])).Magnitude < 150 then
					K1 = n.HumanoidRootPart
					a1()
					K1 = nil
				end
				return
			end
		end
		for K, n in ipairs(W:GetChildren()) do
			if n.Name == "Leviathan" and n:FindFirstChild("Head") then
				local K = CFrame.new(n.Head["Position"].X, 60, n.Head["Position"].Z)
				mU:topos(K, true)
				WU:AutoHaki()
				if ((u.Character["HumanoidRootPart"].Position - n.Head["Position"])).Magnitude < 150 then
					K1 = n.Head
					a1()
					K1 = nil
				end
				return
			end
		end
	end, pU)
	S("AutoShootHeart", function()
		local K = u.Character
		local n = K and K:FindFirstChildOfClass("Humanoid")
		local p = K and ((K:FindFirstChild("HumanoidRootPart") or K.PrimaryPart))
		if not K or not n or n.Health <= 0 or not p then
			return
		end
		local s = U.Map and U.Map:FindFirstChild("FrozenHeart")
		if not s then
			return
		end
		local c = s:FindFirstChild("Inside")
		if c and c:GetAttribute("Harpooned") then
			if yU and yU.SendNotify then
				yU:SendNotify("Heart Leviathan", "Successfully fired harpoon at Heart Leviathan!", 5)
			end
			task.wait(3)
			return
		end
		local A = GetSelectedBoat()
		if not A or not IsBoatAlive(A) then
			local K = GetNearestBoatDealerCF()
			if K and (p and ((p.Position - K.Position)).Magnitude <= 25) then
				BuyBoatSafe(X.BoatSelected or "Beast Hunter")
			elseif K then
				mU:topos(K)
			end
			return
		end
		w1(A)
		local a = A:FindFirstChildWhichIsA("VehicleSeat", true) or A:FindFirstChild("VehicleSeat", true) or A:FindFirstChildWhichIsA("Seat", true)
		local D = s:FindFirstChild("Cube")
		if not D then
			return
		end
		local Q = CFrame.new(D.Position["X"], (A:GetPivot()).Position["Y"], D.Position["Z"]) * CFrame.new(0, 0, 300)
		local S = Q * CFrame.Angles(0, math.rad(360), 0)
		if not n.Sit then
			mU:StopBoatTween()
			if a and a:IsA("BasePart") then
				mU:topos(a.CFrame * CFrame.new(0, 1.5, 0))
				task.wait(.3)
			end
			return
		end
		if a and ((S.Position - a.Position)).Magnitude > 5 then
			local K = ((S.Position - a.Position)).Magnitude
			local n = K / 150
			local p = TweenInfo.new(n, Enum.EasingStyle["Quad"])
			local u = k:Create(a, p, {
				CFrame = S
			})
			u:Play()
			u.Completed:Wait()
			task.wait(1)
		else
			local K = A:FindFirstChild("Harpoon")
			if K then
				local p = K:FindFirstChild("Seat")
				if n.SeatPart and (n.SeatPart["Parent"] and n.SeatPart["Parent"].Name == "Harpoon") then
					if sU then
						sU:InvokeServer("FireHarpoon", .78539816339745, .00044342573293784, K, U:GetServerTimeNow())
					end
				elseif p and p:IsA("BasePart") then
					mU:topos(p.CFrame * CFrame.new(0, 1.5, 0))
				end
			end
		end
	end, pU)
	S("AutoSail", function()
		local K = u.Character
		local n = K and K:FindFirstChildOfClass("Humanoid")
		local p = K and ((K:FindFirstChild("HumanoidRootPart") or K.PrimaryPart))
		if not K or not n or n.Health <= 0 or not p then
			return
		end
		local s = GetSelectedBoat()
		if not s or not IsBoatAlive(s) then
			local u = f.Locations:FindFirstChild("Tiki Outpost")
			local s = u and u.Position or Vector3.new(- 16641.5, 213.3, 435.4)
			if ((p.Position - s)).Magnitude > 3000 then
				mU:StopBoatTween()
				if K:FindFirstChild("Head") then
					K.Head:Destroy()
				else
					n.Health = 0
				end
				return
			end
		end
		local c = B1:GetSeaEventTargets() or {}
		local A = nil
		local a = nil
		local D = X.AutoFindLeviatan and X.AutoIgnoreSeaEventsLeviathan
		if X.AutoFarmSeaEvents and (not D and # c > 0) then
			local K = table.find(c, "SeaBeast") ~= nil or table.find(c, "Sea Beast") ~= nil
			if K then
				for K, n in ipairs(W:GetChildren()) do
					if yU:IsReady(n) then
						local K = n:FindFirstChild("HumanoidRootPart") or n:FindFirstChildWhichIsA("BasePart")
						if K and u:DistanceFromCharacter(K.Position) <= 1500 then
							A = n
							a = "SeaBeast"
							break
						end
					end
				end
			end
			if not A then
				for K, n in ipairs(M:GetChildren()) do
					if yU:IsReady(n) then
						for K, p in ipairs(c) do
							if p ~= "SeaBeast" and ((string.find(n.Name, p) or (p == "FishBoat" and n.Name:find("FishBoat")))) then
								local K = n:FindFirstChild("HumanoidRootPart") or n:FindFirstChild("Engine") or n:FindFirstChildWhichIsA("BasePart")
								if K and u:DistanceFromCharacter(K.Position) <= 1500 then
									A = n
									a = p
									break
								end
							end
						end
						if A then
							break
						end
					end
				end
			end
		end
		if A then
			mU:StopBoatTween()
			local K = GetSelectedBoat()
			if X.ProtectBoat and K then
				y1(K, 450)
			end
			if N and N.Sit then
				N.Sit = false
				task.wait(.05)
			end
			WU:AutoHaki()
			if a == "SeaBeast" then
				if X.UseDragonSforSeabeasts then
					WU:EquipWeapon("Gun")
				else
					WU:EquipWeapon()
				end
				local K = A:FindFirstChild("HumanoidRootPart") or A:FindFirstChildWhichIsA("BasePart")
				if K then
					local n = workspace.Map:FindFirstChild("WaterBase-Plane")
					local p = n and n.Position["Y"] or 0
					local u = X.DodgefSeabeast and B1:DodgeSeabeast()
					local s = u and 400 or 250
					local c = u and 20 or 2
					if ((Vector3.new(0, K.Position["Y"], 0) - Vector3.new(0, p, 0))).Magnitude <= 175 then
						mU:topos(K.CFrame * CFrame.new(0, s, c), true)
					else
						mU:topos(CFrame.new(K.Position["X"], p + s, K.Position["Z"]), true)
					end
					if X.UseDragonSforSeabeasts then
						if JU and JU.AttackManager then
							JU.AttackManager["CurrentTarget"] = A
						end
						ZU()
					else
						a1()
					end
				end
			elseif a == "PirateBrigade" or a == "Pirate Grand Brigade" or a == "Ghost Ship" or a == "FishBoat" or A:FindFirstChild("Engine") then
				local K = A:FindFirstChild("Health")
				local n = A:FindFirstChildOfClass("Humanoid") or A:FindFirstChild("Humanoid")
				local p = (K and (((K:IsA("ValueBase") and K.Value <= 0) or (type(K.Value) == "number" and K.Value <= 0)))) or (n and (((n:IsA("Humanoid") and n.Health <= 0) or (n:IsA("ValueBase") and n.Value <= 0)))) or A:GetAttribute("Dead") == true or A:GetAttribute("Sunk") == true
				local u = A:FindFirstChild("Engine") or A.PrimaryPart or A:FindFirstChildWhichIsA("BasePart")
				if u and u.Position["Y"] < - 15 then
					p = true
				end
				if not p and u then
					if X.UseDragonSforSeabeasts then
						WU:EquipWeapon("Gun")
						if JU and JU.AttackManager then
							JU.AttackManager["CurrentTarget"] = A
						end
						ZU()
					else
						WU:EquipWeapon()
					end
					mU:topos(u.CFrame * CFrame.new(0, 25, 0), true)
					YU = u.Position
					a1()
					YU = nil
				end
			else
				local K = A:FindFirstChild("HumanoidRootPart") or A.PrimaryPart
				if K then
					local n = (a == "Terror Shark" or a == "Terrorshark" or A.Name:find("Terror"))
					if n then
						task.wait()
						WU:AutoHaki()
						WU:EquipWeapon()
						local n
						if K.CFrame["Y"] > - 3 then
							n = CFrame.new(0, 250, 0)
						elseif B1:TerrorDodge() then
							n = CFrame.new(0, 150, 30)
						else
							n = CFrame.new(0, 40, 0)
						end
						mU:topos(K.CFrame * n, true)
						l1:Attack(A)
					else
						WU:EquipWeapon()
						mU:topos(K.CFrame * CFrame.new(0, 20, 0), true)
						l1:Attack(A)
					end
				end
			end
		else
			local K = GetSelectedBoat()
			if K then
				z1(K)
			end
			l1:AutoBoatSail()
			task.wait(.4)
		end
	end, nU or pU)
	S("AutoFindMirageIsland", function()
		if I:FindFirstChild("MysticIsland") or f.Locations:FindFirstChild("Mirage Island") then
			mU:StopBoatTween()
		else
			l1:AutoBoatSail(CFrame.new(- 10000000, 31, 37016.25))
		end
	end, pU)
	S("AutoFindKitsuneIsland", function()
		if I:FindFirstChild("KitsuneIsland") or f.Locations:FindFirstChild("Kitsune Island") then
			mU:StopBoatTween()
			if N.Sit then
				N.Sit = false
			end
		else
			l1:AutoBoatSail(CFrame.new(- 10000000, 31, 37016.25))
		end
	end, pU)
	S("AutoFindPrehistoricIsland", function()
		if I:FindFirstChild("PrehistoricIsland") or f.Locations:FindFirstChild("Prehistoric Island") then
			mU:StopBoatTween()
			if N.Sit then
				N.Sit = false
			end
			yU._FindPrehistoricIsland["Update"](false)
		else
			l1:AutoBoatSail(CFrame.new(- 10000000, 31, 37016.25))
		end
	end, pU)
	S("CollectAzure", function()
		local K = U:FindFirstChild("EmberTemplate")
		if K and K:FindFirstChild("Part") then
			mU:topos(K.Part["CFrame"])
		end
	end, pU)
	S("AutoFinishTrial", function()
		if X and X.AutoCompleteDracoTrial then
			return
		end
		local K = m.Race["Value"]
		if K == "Draco" or not r1[K] then
			return
		end
		if u.PlayerGui["Main"].TopHUDList["RaidTimer"].Visible then
			if K == "Mink" and I:FindFirstChild("MinkTrial") then
				local K = I.MinkTrial["Ceiling"]
				if ((K.Position - u.Character["HumanoidRootPart"].Position)).Magnitude <= 500 then
					mU:topos(K.CFrame * CFrame.new(0, - 5, 0))
				end
			elseif K == "Human" and I:FindFirstChild("HumanTrial") then
				if ((u.Character["HumanoidRootPart"].Position - I.HumanTrial["BossSpawn"].Position)).Magnitude <= 250 then
					for K, n in ipairs(M:GetChildren()) do
						if n:FindFirstChild("HumanoidRootPart") and n.Humanoid["Health"] > 0 then
							if ((n.HumanoidRootPart["Position"] - I.HumanTrial["BossSpawn"].Position)).Magnitude <= 200 then
								l1:Attack(n)
								break
							end
						end
					end
				end
			elseif K == "Ghoul" and I:FindFirstChild("GhoulTrial") then
				if ((u.Character["HumanoidRootPart"].Position - I.GhoulTrial["BossSpawn"].Position)).Magnitude <= 250 then
					for K, n in ipairs(M:GetChildren()) do
						if n:FindFirstChild("HumanoidRootPart") and n.Humanoid["Health"] > 0 then
							if ((n.HumanoidRootPart["Position"] - I.GhoulTrial["BossSpawn"].Position)).Magnitude <= 200 then
								l1:Attack(n, true)
								break
							end
						end
					end
				end
			elseif K == "Cyborg" and I:FindFirstChild("CyborgTrial") then
				if ((u.Character["HumanoidRootPart"].Position - I.CyborgTrial["Floor"].Position)).Magnitude <= 250 then
					mU:topos(I.CyborgTrial["Floor"].CFrame * CFrame.new(0, - 70, 0), true)
				end
			elseif K == "Skypiea" and I:FindFirstChild("SkyTrial") then
				local K = I.SkyTrial["Model"].FinishPart
				if ((K.Position - u.Character["HumanoidRootPart"].Position)).Magnitude <= 1000 then
					mU:topos(K.CFrame, true)
				end
			elseif K == "Fishman" and I:FindFirstChild("FishmanTrial") then
				if ((u.Character["HumanoidRootPart"].Position - (I.FishmanTrial:GetPivot()).Position)).Magnitude < 1000 then
					local K = f.Locations:FindFirstChild("Trial of Water")
					if K then
						for n, p in next, U.SeaBeasts:GetChildren() do
							if string.find(p.Name, "SeaBeast") and p:FindFirstChild("HumanoidRootPart") then
								if ((p.HumanoidRootPart["Position"] - K.Position)).Magnitude <= 1500 then
									if p.Health["Value"] > 0 then
										WU:AutoHaki()
										WU:EquipWeapon()
										local K = 150
										local n = 5
										if X.DodgefSeabeast and B1:DodgeSeabeast() then
											K = 400
											n = math.random(- 30, 30)
										end
										mU:topos(p.HumanoidRootPart["CFrame"] * CFrame.new(0, K, n), true)
										YU = p.HumanoidRootPart["CFrame"].Position
										a1()
										YU = nil
										break
									end
								end
							end
						end
					end
				end
			end
		else
			if r1[K] then
				mU:topos(r1[K], true)
			end
		end
	end, pU)
	S("AutoKillPlayerinTrial", function()
		if u.PlayerGui["Main"].TopHUDList["RaidTimer"].Visible then
			for K, n in pairs(workspace.Characters:GetChildren()) do
				if n.Name ~= u.Name and (n:FindFirstChild("HumanoidRootPart") and (n:FindFirstChild("Humanoid") and n.Humanoid["Health"] > 0)) then
					if ((n.HumanoidRootPart["Position"] - u.Character["HumanoidRootPart"].Position)).Magnitude < 300 then
						mU:topos(n.HumanoidRootPart["CFrame"] * CFrame.new(0, 20, 10), true)
						WU:EquipWeapon()
						WU:AutoHaki()
						break
					end
				end
			end
		end
	end, pU)
	S("AutoChooseGear", function()
		local K, n = pcall(function()
			return sU:InvokeServer("TempleClock", "Check")
		end)
		if (K and (n and n.HadPoint == true)) or not n then
			local K = ((n and (n.RaceDetails and n.RaceDetails["B"] == 2))) and "Omega" or "Alpha"
			local p = {
				{};
				{
					"Gear1"
				};
				{
					"Gear2";
					"Omega"
				};
				{
					"Gear2",
					"Alpha"
				};
				{
					"Gear2";
					true
				};
				{
					"Gear2",
					false
				};
				{
					"Gear3";
					"Alpha"
				};
				{
					"Gear3";
					"Omega"
				},
				{
					"Gear3";
					true
				};
				{
					"Gear3";
					false
				},
				{
					"Gear4";
					K
				},
				{
					"Gear4",
					true
				},
				{
					"Gear4";
					false
				},
				{
					"Gear5";
					"Default"
				},
				{
					"Gear5",
					true
				},
				{
					"Gear5",
					false
				}
			}
			for K, n in ipairs(p) do
				pcall(function()
					sU:InvokeServer("TempleClock", "SpendPoint", table.unpack(n))
				end)
			end
		end
	end, pU)
	S("AutoFindLeviatan", function()
		local K = GetSelectedBoat()
		local n = u.Character
		local p = n and ((n:FindFirstChild("HumanoidRootPart") or n.PrimaryPart))
		local s = K and (K:GetPivot()).Position
		local c = ((p and s)) and ((p.Position - s)).Magnitude or 0
		if not K or not IsBoatAlive(K) or c > 3000 then
			mU:StopBoatTween()
			local K = f.Locations:FindFirstChild("Tiki Outpost")
			local s = K and K.Position or Vector3.new(- 16641.5, 213.3, 435.4)
			if p and ((p.Position - s)).Magnitude > 3000 then
				if n and n:FindFirstChild("Head") then
					n.Head:Destroy()
				elseif u.Character and u.Character:FindFirstChildOfClass("Humanoid") then
					(u.Character:FindFirstChildOfClass("Humanoid")).Health = 0
				end
				return
			end
			local c = GetNearestBoatDealerCF()
			if WU:GetDistance(c) <= 25 then
				BuyBoatSafe(X.BoatSelected or "Beast Hunter")
			else
				mU:topos(c)
			end
			return
		elseif not X.AutoIgnoreSeaEventsLeviathan and (X.AutoFarmSeaEvents and not N.Sit) then
			local K = false
			local n = B1:GetSeaEventTargets() or {}
			for n, p in next, n do
				local s = (p == "SeaBeast") and W or M
				for n, s in next, s:GetChildren() do
					if s and (s.Parent and string.find(s.Name, p)) then
						local n = s:FindFirstChild("HumanoidRootPart") or s:FindFirstChildWhichIsA("BasePart")
						if n and u:DistanceFromCharacter(n.Position) <= 1500 then
							K = true
							break
						end
					end
				end
				if K then
					break
				end
			end
			if K then
				return
			end
		elseif X.AutoRepairBoat and l1:AutoRepairBoat(K) then
			mU:StopBoatTween()
			return
		elseif not N.Sit then
			mU:StopBoatTween()
			local n = K:FindFirstChildWhichIsA("VehicleSeat", true) or K:FindFirstChild("VehicleSeat", true) or K:FindFirstChildWhichIsA("Seat", true)
			if n and n:IsA("BasePart") then
				mU:topos(n.CFrame * CFrame.new(0, 1.5, 0))
				task.wait(.3)
			end
		else
			if I:FindFirstChild("LeviathanGate") or f.Locations:FindFirstChild("Frozen Dimension") then
				mU:StopBoatTween()
				if N.Sit then
					N.Sit = false
				end
				yU._FindLeviathan["Update"](false)
			else
				mU:toposboat(CFrame.new(- 10000000, 30.0003, - 1244.8584), true)
			end
		end
	end, pU)
	S("AutoRepairBoat", function()
		l1:AutoRepairBoat()
	end, true)
	S("AutoSailbacktoTiki", function()
		local K = GetSelectedBoat()
		local n = (u.Character and u.Character:FindFirstChildOfClass("Humanoid")) or N
		if K and ((not n or not n.Sit)) then
			mU:StopBoatTween()
			local n = K:FindFirstChildWhichIsA("VehicleSeat", true) or K:FindFirstChild("VehicleSeat", true) or K:FindFirstChildWhichIsA("Seat", true)
			if n and n:IsA("BasePart") then
				mU:topos(n.CFrame * CFrame.new(0, 1.5, 0))
				task.wait(.3)
			end
		else
			mU:toposboat(CFrame.new(- 16892, 37, 384))
		end
	end, pU)
	S("AutoCompleteDracoTrial", function()
		local K = u.PlayerGui:FindFirstChild("Main") and u.PlayerGui["Main"]:FindFirstChild("TopHUDList")
		local n = K and K:FindFirstChild("RaidTimer")
		if n and n.Visible then
			local K = I:FindFirstChild("DracoTrial") or U:FindFirstChild("DracoTrial", true)
			if not K then
				return
			end
			for n = CU.CurrentDracoStage, 6, 1 do
				local p = K:FindFirstChild(CU.DracoSequence[n], true)
				local u = p and ((p:FindFirstChildOfClass("ProximityPrompt") or p:FindFirstChildWhichIsA("ProximityPrompt", true)))
				if u and u.Enabled then
					CU.CurrentDracoStage = n
					local K = u.Parent:IsA("BasePart") and u.Parent or (p:IsA("BasePart") and p) or p.PrimaryPart
					if K then
						mU:topos(K.CFrame, true)
						if v and ((K.Position - v.Position)).Magnitude <= 20 then
							fireproximityprompt(u, math.huge)
							task.wait(.3)
							if not u.Enabled then
								CU.CurrentDracoStage = n + 1
							end
						end
					end
					return
				end
			end
			local n = K:FindFirstChild("TrialDoor", true)
			local p = n and ((n:FindFirstChild("DoorTouch", true) or n:FindFirstChildWhichIsA("BasePart", true)))
			if p then
				mU:topos(p.CFrame, true)
			end
		else
			CU.CurrentDracoStage = 1
			pcall(function()
				uU.DracoTrial:InvokeServer()
			end)
		end
	end, pU)
	S("AutoTrialDracoTP", function()
		local K = I.PrehistoricIsland:FindFirstChild("TrialTeleport")
		if K and (K:IsA("Part") and ((v.Position - K.Position)).Magnitude <= 10) then
			yU._AutoTrialDracoToggle["Update"](false)
			return
		end
		if K and K:IsA("Part") then
			mU:topos(CFrame.new((K:GetPivot()).Position + Vector3.new(0, 0, 0)), true)
		end
	end, pU)
	S("AutoTTK", function()
		CU.ActiveSword = nil
		for K, n in ipairs(CU.SwordList) do
			local p = WU:CheckInventory("Moveset", n)
			if p ~= nil and (p > 0 and p < 300) then
				CU.ActiveSword = n
				break
			end
		end
		if CU.ActiveSword then
			if not u.Character:FindFirstChild(CU.ActiveSword) then
				sU:InvokeServer("LoadItem", CU.ActiveSword)
			end
			WU:EquipWeapon("Sword")
			local K = WU:GetEnemies({
				"Water Fighter",
				"Sea Soldier"
			})
			if K then
				return l1:Attack(K, true)
			else
				return WU:MobsNextSpawn("Water Fighter")
			end
		else
			local K = WU:CheckInventory("Moveset", "Shizu")
			local n = WU:CheckInventory("Moveset", "Saishi")
			local p = WU:CheckInventory("Moveset", "Oroshi")
			local u = K and K >= 300
			local s = n and n >= 300
			local c = p and p >= 300
			if u and (s and c) then
				sU:InvokeServer("MysteriousMan", "2")
			else
				local K = sU:InvokeServer("LegendarySwordDealer", "1")
				if K then
					print("Buy")
					sU:InvokeServer("LegendarySwordDealer", "2")
				else
					print("Hop")
					vU("legendarysword", 2)
				end
			end
		end
	end, nU)
end
function yU.CoreSetup(K)
	if K.SetupData then
		K:SetupData()
	end
end
function yU.CombatHooks(K)
	if K.LoadFunctions then
		K:LoadFunctions()
	end
end
function yU.RuntimeServices(K)
	if K.LoadLoops then
		K:LoadLoops()
	end
end
local function j1(K, ...)
	local n = tick()
	local p = yU[K]
	if p then
		p(yU, ...)
	end
	local u = tick() - n
	print(string.format("[Quantum Onyx] %s initialized in %.4fs", K, u))
end
j1("CoreSetup")
j1("CombatHooks")
j1("RuntimeServices")
task.spawn(j1, "LoadLibrary")
task.spawn(function()
	task.wait(1.5)
	yU:SendNotify("Quantum Fully Loaded", "All Functions, Modules, Dependencies, Successfully loaded.", 8)
	task.wait(1)
	yU:SendNotify("Quantum (INFO)", "Quantum Onyx Script is 100% Free and Keyless", 8)
	pcall(function()
		(loadstring(game:HttpGet("https://raw.githubusercontent.com/lguy8068-lang/Quantum-Onyx-Fixed/refs/heads/main/Weebo.lua")))()
	end)
end)
