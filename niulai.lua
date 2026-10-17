--[[
	Deobfuscated from niulai.lua (Quantum obfuscator, 2 layers).
	- All encrypted strings restored, source re-formatted.
	- Local variable names are still the obfuscator's single letters.
	- The runtime anti-tamper / anti-dump block (lines 9-677 of the raw output) was removed.
	Part of "Quantum Onyx" (flazhy) - loaded as dev/niulai.lua.
--]]

if not game and (game.GetService and game:GetService("RunService")) or game.ClassName ~= "DataModel" or (typeof and typeof(game.Players) ~= "Instance") or not ((getmetatable and (setmetatable and (type and (pcall and (rawget and rawset)))))) then
	repeat
		task.wait()
		warn("stop skidding - flazhy")
	until false
end
local s, b, e = {}, {}, {}
s.Notification = {}
e.Notify = s.Notification
local function Y(s)
	local b, e = pcall(game.GetService, game, s)
	return b and e or nil
end
local R = Y("Players") or game:GetService("Players")
local M = Y("UserInputService") or game:GetService("UserInputService")
local L = Y("TweenService") or game:GetService("TweenService")
local p = Y("TextService") or game:GetService("TextService")
local c = Y("HttpService") or game:GetService("HttpService")
local A = R.LocalPlayer
if not A then
	pcall(function()
		A = (R:GetPropertyChangedSignal("LocalPlayer")):Wait()
	end)
	A = A or R.LocalPlayer
end
local z = (A and A:GetMouse()) or {
	X = 0,
	Y = 0
}
local g = (gethui and gethui()) or Y("CoreGui") or game:GetService("CoreGui")
e.Services = {
	Players = R,
	UIS = M,
	Tween = L;
	Text = p;
	Http = c;
	LocalPlayer = A;
	Mouse = z
}
e.ENV = (getgenv and getgenv()) or _G
e.CoreGui = g
local j = e.Notify
local r, h = TweenInfo.new, e.ENV
s._CurrentGui = nil
e.Save = {
	FolderName = "Quantum Onyx Hub";
	Settings = {};
	_Keys = {};
	RegisteredControls = {},
	ActiveProfile = "[Auto]"
}
local l = e.Save
function l.RegisterKey(b, s)
	b._Keys[s] = true
end
function l.RegisterControl(e, s, b)
	if not s then
		return
	end
	e._Keys[s] = true
	e.RegisteredControls[s] = b
end
function l.PruneStaleKeys(s)
	if not next(s._Keys) then
		return
	end
	local b = false
	for e in pairs(s.Settings) do
		if e:sub(1, 1) ~= "_" and not s._Keys[e] then
			s.Settings[e] = nil
			b = true
		end
	end
	local e = s:Get("_saveSlots", {})
	local Y = false
	for b, e in ipairs(e) do
		if e.data then
			for b in pairs(e.data) do
				if not s._Keys[b] then
					e.data[b] = nil
					Y = true
				end
			end
		end
	end
	if b then
		s:Save()
	end
	if Y then
		s:Save("_saveSlots", e)
	end
end
JsonEncode = function(s)
	return c:JSONEncode(s)
end
JsonDecode = function(s)
	return c:JSONDecode(s)
end
local y = nil
function l.GetPlayerName(s)
	local b = A or (R and R.LocalPlayer)
	if not b then
		pcall(function()
			b = (game:GetService("Players")).LocalPlayer
		end)
	end
	local e = b and b.Name
	if not e or e == "" then
		e = ("User_") .. tostring(b and b.UserId or "0")
	end
	return e:gsub("[^%w]", "")
end
function l.GetGameId(s)
	local b = 0
	pcall(function()
		b = game.GameId
	end)
	if not b or b == 0 then
		pcall(function()
			b = game.PlaceId
		end)
	end
	return tostring(b or 0)
end
function l.GetFileName(b, s)
	local e = b:GetPlayerName()
	local Y = b:GetGameId()
	if s and (type(s) == "string" and s ~= "") then
		local b = (s:gsub("[^%w%s]", "")):gsub("%s+", "_")
		return e .. (("-") .. (b .. (("-") .. (Y .. ".json"))))
	end
	if not y then
		local s, b = pcall(function()
			return ((game:GetService("MarketplaceService")):GetProductInfo(game.PlaceId)).Name
		end)
		local R = ((s and b)) and (b:gsub("[^%w%s]", "")):gsub("%s+", "_") or Y
		y = e .. (("-") .. (R .. (("-") .. (Y .. ".json"))))
	end
	return y
end
function l.Save(e, s, b)
	if s ~= nil then
		e.Settings[s] = b
	end
	if not isfolder(e.FolderName) then
		pcall(makefolder, e.FolderName)
	end
	pcall(writefile, e.FolderName .. (("/") .. e:GetFileName()), JsonEncode(e.Settings))
end
function l.Load(s)
	if not isfolder(s.FolderName) then
		pcall(makefolder, s.FolderName)
	end
	local b = s.FolderName .. (("/") .. s:GetFileName())
	local e, Y = pcall(readfile, b)
	if not e or not Y then
		local b = s:GetPlayerName()
		local R = s:GetGameId()
		local M = {
			s.FolderName .. (("/") .. (b .. (("-") .. (R .. ".json"))));
			s.FolderName .. (("/") .. (b .. ".json"))
		}
		for s, b in ipairs(M) do
			local R, M = pcall(readfile, b)
			if R and M then
				Y = M
				e = true
				break
			end
		end
	end
	if e and Y then
		local b = nil
		pcall(function()
			b = JsonDecode(Y)
		end)
		if type(b) == "table" then
			s.Settings = b
			return b
		end
	end
	s:Save()
	return {}
end
function l.Get(e, s, b)
	local Y = e.Settings[s]
	return Y ~= nil and Y or b
end
function l.GetSnapshot(s)
	local b = {}
	for e, Y in pairs(s.Settings) do
		if e:sub(1, 1) ~= "_" and s._Keys[e] then
			b[e] = Y
		end
	end
	for s, e in pairs(s.RegisteredControls) do
		if b[s] == nil and e.Get then
			local Y, R = pcall(e.Get)
			if Y and R ~= nil then
				b[s] = R
			end
		end
	end
	return b
end
function l.ApplySnapshot(e, s, b)
	if type(s) ~= "table" then
		return false
	end
	b = b ~= false
	for s, Y in pairs(s) do
		if s:sub(1, 1) ~= "_" then
			e.Settings[s] = Y
			local R = e.RegisteredControls[s]
			if R and R.Set then
				pcall(R.Set, Y, b)
			end
		end
	end
	e:Save()
	return true
end
function l.ResetToDefaults(b, s)
	s = s ~= false
	for e, Y in pairs(b.RegisteredControls) do
		if Y and (Y.Default ~= nil and Y.Set) then
			b.Settings[e] = Y.Default
			pcall(Y.Set, Y.Default, s)
		end
	end
	b:Save()
end
function l.ElementSave(e, s, b)
	local Y = true
	if e.IsAutoSave then
		Y = e:IsAutoSave()
	else
		Y = e:Get("_opt_AutoSave", true)
	end
	if not Y then
		return
	end
	e:Save(s, b)
	local R = e:Get("_saveSlots", {})
	local M = nil
	for s, b in ipairs(R) do
		if b.name == "[Auto]" then
			M = s
			break
		end
	end
	local L = e:GetSnapshot()
	if M then
		R[M].data = L
		R[M].updated = os.date("%Y-%m-%d %H:%M")
	else
		table.insert(R, 1, {
			name = "[Auto]",
			data = L;
			created = os.date("%Y-%m-%d %H:%M");
			updated = os.date("%Y-%m-%d %H:%M")
		})
	end
	e:Save("_saveSlots", R)
end
function l.ClearAll(s)
	s.Settings = {}
	if isfolder(s.FolderName) then
		pcall(writefile, s.FolderName .. (("/") .. s:GetFileName()), "{}")
	end
end
s.SaveSystem = l
s.Modules = e
e.Util, e.Tween, e.Media, e.Theme, e.UI = {}, {}, {}, {}, {}
local Z, w, a, f = e.Util, e.Tween, e.Media, e.Theme
function Z.Set(s, b, e)
	s[b] = e
end
function Z.Protect(s)
	if h.HIDEUI then
		s.Parent = h.HIDEUI
	elseif gethui then
		s.Parent = gethui()
	elseif syn and syn.protect_gui then
		pcall(syn.protect_gui, s)
		s.Parent = g
	else
		s.Parent = g
	end
end
local H = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
function Z.RandomName()
	local s = {}
	for b = 1, 16, 1 do
		local e = math.random(1, # H)
		s[b] = H:sub(e, e)
	end
	return table.concat(s)
end
function Z.Create(s, b, e)
	local Y = Instance.new(s)
	if b then
		for s, b in pairs(b) do
			if s ~= "Children" and s ~= "Parent" then
				pcall(Z.Set, Y, s, b)
			end
		end
		local s = b.Children
		if s then
			for b = 1, # s, 1 do
				local e = s[b]
				if e then
					e.Parent = Y
				end
			end
		end
		if b.Parent then
			Y.Parent = b.Parent
		elseif e then
			Y.Parent = e
		end
	elseif e then
		Y.Parent = e
	end
	return Y
end
function Z.GuiCenterLocal(s, b, e)
	e = ((e and e ~= 0)) and e or 1
	local Y = (b and b.AbsolutePosition) or Vector2.zero
	local R = s.AbsolutePosition + (s.AbsoluteSize * .5)
	return ((R.X - Y.X)) / e, ((R.Y - Y.Y)) / e
end
function Z.PinAbsToOffset(s, b, e)
	e = ((e and e ~= 0)) and e or 1
	local Y = (b and b.AbsolutePosition) or Vector2.zero
	local R = s.AbsolutePosition
	s.Position = UDim2.fromOffset(((R.X - Y.X)) / e, ((R.Y - Y.Y)) / e)
	return s.Position
end
function Z.MakeDraggable(s, b)
	local e = nil
	local Y = Vector3.zero
	local R = UDim2.new()
	s.InputBegan:Connect(function(s)
		if e ~= nil then
			return
		end
		if s.UserInputType == Enum.UserInputType["MouseButton1"] or s.UserInputType == Enum.UserInputType["Touch"] then
			e = s
			Y = s.Position
			R = b.Position
		end
	end)
	M.InputChanged:Connect(function(s)
		if not e then
			return
		end
		if s == e or (e.UserInputType == Enum.UserInputType["MouseButton1"] and s.UserInputType == Enum.UserInputType["MouseMovement"]) then
			local e = ((MainUIScale and MainUIScale.Scale > 0)) and MainUIScale.Scale or 1
			local M = s.Position - Y
			b.Position = UDim2.new(R.X["Scale"], R.X["Offset"] + (M.X / e), R.Y["Scale"], R.Y["Offset"] + (M.Y / e))
		end
	end)
	M.InputEnded:Connect(function(s)
		if s == e then
			e = nil
		end
	end)
end
function Z.BindHover(s, b, e, Y, R, M)
	s.MouseEnter:Connect(function()
		w.Play(s, b, .15, Enum.EasingStyle["Quint"])
		if M and Y then
			w.Play(M, Y, .15)
		end
	end)
	s.MouseLeave:Connect(function()
		w.Play(s, e, .2, Enum.EasingStyle["Quint"])
		if M and R then
			w.Play(M, R, .2)
		end
	end)
end
function Z.Trim(s)
	if type(s) ~= "string" then
		return ""
	end
	return ((((s:gsub("^%s+", "")):gsub("%s+$", "")):gsub("[ \t]+", " ")):gsub("\n[ \t]+", "\n")):gsub("[ \t]+\n", "\n")
end
local k = {}
function Z.TextHeight(s, b, e, Y)
	if not s or s == "" then
		return 0
	end
	b = b or Enum.Font["Gotham"]
	e = e or 11
	Y = Y or 150
	local R = (typeof(b) == "EnumItem" and b.Name) or tostring(b)
	local M = tostring(s) .. (("\000") .. (R .. (("\000") .. (tostring(e) .. (("\000") .. tostring(Y))))))
	local L = k[M]
	if L then
		return L
	end
	local c = (tostring(s)):gsub("<[^>]->", "")
	local A = 0
	for s in c:gmatch("\n") do
		A = A + 1
	end
	local z = (p:GetTextSize(c, e, b, Vector2.new(Y, 10000))).Y
	local g = (z + (A * 4)) + 2
	k[M] = g
	return g
end
function Z.WrapText(s, b, e, Y)
	if type(s) ~= "string" or s == "" then
		return ""
	end
	return s
end
function Z.DescMetrics(s, b, e, Y)
	b = b or Enum.Font["Gotham"]
	e = e or 11
	Y = Y or 150
	if typeof(s) ~= "string" or s == "" then
		return "", 0
	end
	local R = Z.TextHeight(s, b, e, Y)
	return s, math.max(R, 14)
end
function w.Info(s, b, e, Y, R, M)
	return r(s, b or Enum.EasingStyle["Cubic"], e or Enum.EasingDirection["Out"], Y or 0, R or false, M or 0)
end
function w.Play(s, b, e, Y, R, M)
	if not s then
		return nil
	end
	if typeof(e) == "number" and e == 0 then
		for b, e in pairs(b) do
			pcall(Z.Set, s, b, e)
		end
		if typeof(M) == "function" then
			M()
		end
		return nil
	end
	local p = typeof(e) == "TweenInfo" and e or w.Info(e or .25, Y, R)
	local c = L:Create(s, p, b)
	if typeof(M) == "function" then
		local s
		s = c.Completed:Connect(function(b)
			if s then
				s:Disconnect()
			end
			if b == Enum.PlaybackState["Completed"] then
				M()
			end
		end)
	end
	c:Play()
	return c
end
function w.Group()
	local s = {}
	return {
		Play = function(b, e, Y, R, M, L, p)
			local c = w.Play(e, Y, R, M, L, p)
			if c then
				s[# s + 1] = c
			end
			return c
		end;
		Cancel = function()
			for b = 1, # s, 1 do
				local e = s[b]
				if e then
					pcall(function()
						e:Cancel()
					end)
				end
			end
			table.clear(s)
		end
	}
end
function a.PathToAsset(s)
	if type(s) ~= "string" or s == "" then
		return nil
	end
	local b = (s:gsub("^%s+", "")):gsub("%s+$", "")
	if b == "" then
		return nil
	end
	if b:match("^%d+$") then
		return ("rbxassetid://") .. b
	end
	if b:find("^rbxassetid://") or b:find("^rbxasset://") or b:find("^http://") or b:find("^https://") then
		return b
	end
	local e = getcustomasset or (getgenv and (getgenv()).getcustomasset) or getsynasset or (getgenv and (getgenv()).getsynasset)
	if e then
		local s, Y = pcall(e, b)
		if s and (type(Y) == "string" and Y ~= "") then
			return Y
		end
		if l and l.FolderName then
			local R = l.FolderName .. (("/") .. b)
			s, Y = pcall(e, R)
			if s and (type(Y) == "string" and Y ~= "") then
				return Y
			end
			local M = l.FolderName .. (("\\") .. b)
			s, Y = pcall(e, M)
			if s and (type(Y) == "string" and Y ~= "") then
				return Y
			end
		end
		s, Y = pcall(function()
			return e(b, true)
		end)
		if s and (type(Y) == "string" and Y ~= "") then
			return Y
		end
	end
	return b
end
function a.ListImages(s)
	local b = {}
	if not ((isfolder and (listfiles and isfolder(s)))) then
		return b
	end
	local e, Y = pcall(listfiles, s)
	if not e or not Y then
		return b
	end
	for s, e in ipairs(Y) do
		local Y = string.lower(e)
		if Y:find("%.png") or Y:find("%.jpe?g") or Y:find("%.webp") or Y:find("%.gif") or Y:find("%.bmp") then
			table.insert(b, e)
		end
	end
	table.sort(b)
	return b
end
function a.ListVideos(s)
	local b = {}
	if not ((isfolder and (listfiles and isfolder(s)))) then
		return b
	end
	local e, Y = pcall(listfiles, s)
	if not e or not Y then
		return b
	end
	for s, e in ipairs(Y) do
		local Y = string.lower(e)
		if Y:find("%.webm") or Y:find("%.mp4") or Y:find("%.mov") or Y:find("%.mkv") or Y:find("%.avi") then
			table.insert(b, e)
		end
	end
	table.sort(b)
	return b
end
function a.IsVideo(s)
	if type(s) ~= "string" then
		return false
	end
	local b = (string.lower(s)):gsub("%s+$", "")
	return b:find("%.webm") ~= nil or b:find("%.mp4") ~= nil or b:find("%.mov") ~= nil or b:find("%.mkv") ~= nil or b:find("%.avi") ~= nil or b:find("%[vid%]") ~= nil
end
local E = Z.Create
local B, N, u = Z.Protect, Z.RandomName, Z.Set
local I, P, m, X = Z.Trim, Z.TextHeight, Z.WrapText, Z.DescMetrics
local x, C, d, t = a.PathToAsset, a.ListImages, a.ListVideos, a.IsVideo
function b.Tween(L, s, b, e, Y, R, M)
	return w.Play(s, b, e, Y, R, M)
end
function s.DestroyGui(s)
	if s._CurrentGui and s._CurrentGui["Parent"] then
		s._CurrentGui:Destroy()
		s._CurrentGui = nil
	end
end
function CircleClick(s, b, e)
	task.spawn(function()
		s.ClipsDescendants = true
		local Y = b - s.AbsolutePosition["X"]
		local R = e - s.AbsolutePosition["Y"]
		local M = math.max(s.AbsoluteSize["X"], s.AbsoluteSize["Y"]) * 1.5
		local L = E("ImageLabel", {
			Name = "Circle";
			Image = "rbxassetid://266543268";
			ImageColor3 = Color3.fromRGB(80, 80, 80),
			ImageTransparency = .8;
			BackgroundTransparency = 1;
			ZIndex = 10,
			Size = UDim2.new(0, 0, 0, 0);
			Position = UDim2.new(0, Y, 0, R)
		}, s)
		w.Play(L, {
			Size = UDim2.new(0, M, 0, M);
			Position = UDim2.new(.5, - M / 2, .5, - M / 2)
		}, .45, Enum.EasingStyle["Quad"], Enum.EasingDirection["Out"])
		w.Play(L, {
			ImageTransparency = 1
		}, .45, Enum.EasingStyle["Linear"], Enum.EasingDirection["Out"], function()
			L:Destroy()
		end)
	end)
end
local T = h.QuantumThemeManager
if not T then
	T = (loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/Util/LibraryModule/Themes.lua")))()
	h.QuantumThemeManager = T
end
f.Manager = T
function f.Color(s)
	if T.Current and T.Current[s] then
		return T.Current[s]
	end
	return Color3.fromRGB(255, 0, 255)
end
function ThemeColor(s)
	return f.Color(s)
end
function j.Init(s)
	if not s.GUI then
		local b = Instance.new("ScreenGui", g)
		b.Name = N()
		b.ZIndexBehavior = Enum.ZIndexBehavior["Global"]
		b.ResetOnSpawn = false
		b.IgnoreGuiInset = true
		B(b)
		s.GUI = E("Frame", {
			Name = "STX_Notification",
			BackgroundTransparency = 1;
			Size = UDim2.new(1, - 20, 1, - 52);
			Position = UDim2.new(1, - 10, 0, 10),
			AnchorPoint = Vector2.new(1, 0);
			ClipsDescendants = false,
			ZIndex = 999;
			Parent = b;
			Children = {
				E("UIListLayout", {
					Name = "STX_NotificationUIListLayout";
					HorizontalAlignment = Enum.HorizontalAlignment["Right"],
					SortOrder = Enum.SortOrder["LayoutOrder"],
					VerticalAlignment = Enum.VerticalAlignment["Top"];
					Padding = UDim.new(0, 6)
				})
			}
		})
	end
end
j.ActiveMessages = j.ActiveMessages or {}
j.ActiveById = j.ActiveById or {}
function j.Notify(Y, s, e)
	assert(Y.GUI, "Notification GUI not initialized. Call :Init(parent) first.")
	s = s or {}
	e = e or {}
	local R = s.Title or "Notification"
	local M = s.Description or ""
	local L = e.Time or 3
	local p = 12
	local c = Enum.Font["Gotham"]
	local A = 176
	if s.Id then
		local b = j.ActiveById[s.Id]
		if b and (b.Host and (b.Host["Parent"] and not b.isDismissed)) then
			if b.TitleLabel and b.TitleLabel["Parent"] then
				b.TitleLabel["Text"] = R
			end
			if b.DescLabel and b.DescLabel["Parent"] then
				local s = m(M, c, p, A)
				b.DescLabel["Text"] = s
			end
			if b.ResetTimer then
				b.ResetTimer(L)
			end
			return b
		end
	end
	local g = R .. (("||") .. M)
	if j.ActiveMessages[g] then
		return
	end
	j.ActiveMessages[g] = true
	local r = s.Buttons or s.Button or s.Actions or s.Options or (e and ((e.Buttons or e.Actions)))
	local h = {}
	if type(r) == "string" then
		table.insert(h, {
			Text = r;
			Callback = s.Callback
		})
	elseif type(r) == "table" then
		if r.Text or r.Name or r.Title then
			table.insert(h, {
				Text = r.Text or r.Name or r.Title or "Okay";
				Callback = r.Callback or r.OnClick or r.Function,
				Primary = r.Primary or r.IsPrimary
			})
		else
			local s = # r > 0
			if s then
				for s, b in ipairs(r) do
					if type(b) == "string" then
						table.insert(h, {
							Text = b
						})
					elseif type(b) == "table" then
						table.insert(h, {
							Text = b.Text or b.Name or b.Title or "Button";
							Callback = b.Callback or b.OnClick or b.Function,
							Primary = b.Primary or b.IsPrimary
						})
					end
				end
			else
				for s, b in pairs(r) do
					table.insert(h, {
						Text = tostring(s),
						Callback = type(b) == "function" and b or (type(b) == "table" and ((b.Callback or b.OnClick or b.Function)));
						Primary = type(b) == "table" and ((b.Primary or b.IsPrimary))
					})
				end
			end
		end
	end
	local l = # h > 0
	local y = 22
	local Z = l and (y + 8) or 0
	local a = m(M, c, p, A)
	local f = P(a, c, p, A)
	local H = ((28 + f) + Z) + 14
	local k = 200
	local B = 46
	local N = 26
	local u = E("Frame", {
		AnchorPoint = Vector2.new(1, 0);
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(1, - 10, 0, 10);
		Size = UDim2.new(0, B, 0, 0);
		ClipsDescendants = false;
		ZIndex = 1000
	}, Y.GUI)
	local I = E("TextLabel", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 8, 0, 2);
		Size = UDim2.new(1, - 16, 0, 18);
		ZIndex = 1002;
		Font = Enum.Font["FredokaOne"];
		Text = R;
		TextColor3 = Color3.fromRGB(220, 220, 220),
		TextSize = 12;
		TextTransparency = 1,
		TextXAlignment = Enum.TextXAlignment["Left"]
	})
	local X = E("TextLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, - 8, 0, 2),
		Size = UDim2.new(0, 40, 0, 18);
		ZIndex = 1002;
		Font = Enum.Font["Gotham"],
		Text = ("(") .. (L .. "s)"),
		TextColor3 = Color3.fromRGB(180, 180, 180);
		TextSize = 11,
		TextTransparency = 1,
		TextXAlignment = Enum.TextXAlignment["Right"]
	})
	local x = E("TextLabel", {
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 8, 0, 22),
		Size = UDim2.new(0, 184, 0, f),
		ZIndex = 1002,
		Font = c,
		Text = a,
		TextColor3 = Color3.fromRGB(180, 180, 180),
		TextSize = p,
		TextTransparency = 1;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment["Left"];
		TextYAlignment = Enum.TextYAlignment["Top"]
	})
	local C = E("ImageLabel", {
		Name = "PillLogo",
		AnchorPoint = Vector2.new(.5, .5);
		BackgroundTransparency = 1;
		Position = UDim2.new(.5, 0, .5, 0);
		Size = UDim2.new(0, 0, 0, 0);
		Image = "rbxassetid://87383580130479";
		ImageTransparency = 1,
		ScaleType = Enum.ScaleType["Fit"],
		ZIndex = 1002
	})
	local d = E("TextLabel", {
		Name = "DoneLabel";
		AnchorPoint = Vector2.new(.5, .5),
		BackgroundTransparency = 1;
		Position = UDim2.new(.5, 0, .5, 0);
		Size = UDim2.new(1, - 8, 1, 0);
		ZIndex = 1002;
		Font = Enum.Font["GothamBold"];
		Text = "Done",
		TextColor3 = Color3.fromRGB(220, 220, 220),
		TextSize = 11,
		TextTransparency = 1;
		TextXAlignment = Enum.TextXAlignment["Center"];
		TextYAlignment = Enum.TextYAlignment["Center"]
	})
	local t = E("Frame", {
		Name = "ProgressBarBackground";
		BackgroundColor3 = Color3.fromRGB(40, 40, 40);
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 8, 1, - 10),
		Size = UDim2.new(1, - 16, 0, 4);
		ZIndex = 1002,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(1, 0)
			}),
			E("Frame", {
				Name = "ProgressBarFill";
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 1003;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(1, 0)
					}),
					E("UIGradient", {
						Color = ThemeColor("Lit");
						Rotation = 0
					})
				}
			})
		}
	})
	local T = nil
	local W = {}
	if l then
		T = E("Frame", {
			Name = "ButtonContainer",
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 8, 0, (22 + f) + 6);
			Size = UDim2.new(1, - 16, 0, y);
			ZIndex = 1002;
			Children = {
				E("UIListLayout", {
					Name = "ButtonsLayout",
					FillDirection = Enum.FillDirection["Horizontal"],
					HorizontalAlignment = Enum.HorizontalAlignment["Center"];
					VerticalAlignment = Enum.VerticalAlignment["Center"],
					SortOrder = Enum.SortOrder["LayoutOrder"];
					Padding = UDim.new(0, 6)
				})
			}
		})
		local s = # h
		local b = ((s - 1)) * 6
		local e = 1 / s
		local Y = - math.floor(b / s)
		for b, R in ipairs(h) do
			local M = R.Text or "Button"
			local L = R.Primary
			if L == nil then
				local b = string.lower(M)
				if s == 1 or b == "okay" or b == "ok" or b == "yes" or b == "confirm" or b == "accept" or b == "apply" then
					L = true
				else
					L = false
				end
			end
			local p = L and Color3.fromRGB(38, 38, 38) or Color3.fromRGB(28, 28, 28)
			local c = L and Color3.fromRGB(52, 52, 52) or Color3.fromRGB(40, 40, 40)
			local A = L and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(180, 180, 180)
			local z = E("UIStroke", {
				Color = L and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(48, 48, 48);
				Transparency = 1;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
			local g = E("TextButton", {
				Name = ("Button_") .. tostring(b),
				BackgroundColor3 = p,
				BackgroundTransparency = 1;
				BorderSizePixel = 0,
				Size = UDim2.new(e, Y, 1, 0);
				LayoutOrder = b,
				ZIndex = 1003,
				AutoButtonColor = false;
				Font = Enum.Font["GothamMedium"],
				Text = M,
				TextColor3 = A,
				TextSize = 11;
				TextTransparency = 1,
				Parent = T;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 6)
					});
					z
				}
			})
			table.insert(W, {
				Instance = g,
				Stroke = z,
				DefaultBg = p;
				HoverBg = c,
				IsPrimary = L;
				Data = R
			})
		end
	end
	local F = {
		E("UICorner", {
			CornerRadius = UDim.new(0, 13)
		}),
		C;
		d,
		I,
		X,
		x,
		t
	}
	if T then
		table.insert(F, T)
	end
	local J = E("Frame", {
		BackgroundColor3 = Color3.fromRGB(25, 25, 25);
		BorderSizePixel = 0;
		ClipsDescendants = true,
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 1001,
		Children = F
	}, u)
	local Q = t.ProgressBarFill
	local i = false
	local function D()
		if i then
			return
		end
		i = true
		b:Tween(I, {
			TextTransparency = 1
		}, .2, Enum.EasingStyle["Sine"], Enum.EasingDirection["In"])
		b:Tween(X, {
			TextTransparency = 1
		}, .2, Enum.EasingStyle["Sine"], Enum.EasingDirection["In"])
		b:Tween(x, {
			TextTransparency = 1
		}, .2, Enum.EasingStyle["Sine"], Enum.EasingDirection["In"])
		b:Tween(t, {
			BackgroundTransparency = 1
		}, .2, Enum.EasingStyle["Sine"], Enum.EasingDirection["In"])
		b:Tween(Q, {
			BackgroundTransparency = 1
		}, .2, Enum.EasingStyle["Sine"], Enum.EasingDirection["In"])
		for s, e in ipairs(W) do
			b:Tween(e.Instance, {
				BackgroundTransparency = 1,
				TextTransparency = 1
			}, .2, Enum.EasingStyle["Sine"], Enum.EasingDirection["In"])
			if e.Stroke then
				b:Tween(e.Stroke, {
					Transparency = 1
				}, .2, Enum.EasingStyle["Sine"], Enum.EasingDirection["In"])
			end
		end
		task.wait(.2)
		b:Tween(u, {
			Size = UDim2.new(0, B, 0, N)
		}, .28, Enum.EasingStyle["Quad"], Enum.EasingDirection["InOut"])
		task.wait(.28)
		b:Tween(d, {
			TextTransparency = 0
		}, .18, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
		task.wait(.35)
		b:Tween(u, {
			Size = UDim2.new(0, 0, 0, 0)
		}, .18, Enum.EasingStyle["Quad"], Enum.EasingDirection["In"])
		b:Tween(d, {
			TextTransparency = 1
		}, .12, Enum.EasingStyle["Sine"], Enum.EasingDirection["In"])
		task.wait(.18)
		if u and u.Parent then
			u:Destroy()
		end
		j.ActiveMessages[g] = nil
		if s.Id then
			j.ActiveById[s.Id] = nil
		end
	end
	for s, b in ipairs(W) do
		local e = b.Instance
		local Y = b.Stroke
		local R = b.Data
		e.MouseEnter:Connect(function()
			if not i then
				w.Play(e, {
					BackgroundColor3 = b.HoverBg
				}, .15, Enum.EasingStyle["Quint"])
				if Y then
					w.Play(Y, {
						Transparency = .5
					}, .15)
				end
			end
		end)
		e.MouseLeave:Connect(function()
			if not i then
				w.Play(e, {
					BackgroundColor3 = b.DefaultBg
				}, .15, Enum.EasingStyle["Quint"])
				if Y then
					w.Play(Y, {
						Transparency = .8
					}, .15)
				end
			end
		end)
		e.MouseButton1Click:Connect(function()
			if i then
				return
			end
			CircleClick(e, z.X, z.Y)
			if type(R.Callback) == "function" then
				task.spawn(function()
					local s, b = pcall(R.Callback)
					if not s then
						warn(("[Notification Callback Error]: ") .. tostring(b))
					end
				end)
			end
			task.spawn(D)
		end)
	end
	w.Play(u, {
		Size = UDim2.new(0, k, 0, H)
	}, .35, Enum.EasingStyle["Back"], Enum.EasingDirection["Out"])
	task.delay(.12, function()
		w.Play(I, {
			TextTransparency = 0
		}, .22, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
		w.Play(X, {
			TextTransparency = 0
		}, .22, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
		w.Play(x, {
			TextTransparency = 0
		}, .22, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
		w.Play(t, {
			BackgroundTransparency = 0
		}, .22, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
		w.Play(Q, {
			BackgroundTransparency = 0
		}, .22, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
		for s, b in ipairs(W) do
			w.Play(b.Instance, {
				BackgroundTransparency = 0,
				TextTransparency = 0
			}, .22, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
			if b.Stroke then
				w.Play(b.Stroke, {
					Transparency = .8
				}, .22, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
			end
		end
		w.Play(Q, {
			Size = UDim2.new(0, 0, 1, 0)
		}, L, Enum.EasingStyle["Linear"], Enum.EasingDirection["Out"])
	end)
	local q = L
	task.spawn(function()
		while q > 0 and not i do
			if X and X.Parent then
				X.Text = ("(") .. (q .. "s)")
			end
			task.wait(1)
			q = q - 1
		end
		if not i then
			D()
		end
	end)
	local V = {
		Host = u;
		TitleLabel = I,
		DescLabel = x;
		CooldownLabel = X,
		ResetTimer = function(s)
			q = s or L
			if X and X.Parent then
				X.Text = ("(") .. (q .. "s)")
			end
		end;
		Dismiss = D;
		isDismissed = false
	}
	if s.Id then
		j.ActiveById[s.Id] = V
	end
	return V
end
local W = {
	Languages = {
		English = "en";
		Filipino = "fil";
		Indonesian = "id",
		Spanish = "es";
		French = "fr";
		German = "de",
		Japanese = "ja",
		Korean = "ko",
		Vietnamese = "vi",
		Thai = "th";
		Russian = "ru",
		Portuguese = "pt",
		Turkish = "tr",
		Hindi = "hi";
		["Chinese Simplified"] = "zh-cn",
		["Chinese Traditional"] = "zh-tw",
		Arabic = "ar";
		Italian = "it",
		Polish = "pl",
		Dutch = "nl";
		Ukrainian = "uk",
		Malay = "ms";
		Bengali = "bn",
		Urdu = "ur",
		Persian = "fa";
		Romanian = "ro";
		Czech = "cs";
		Greek = "el";
		Swedish = "sv";
		Hungarian = "hu";
		Danish = "da";
		Finnish = "fi";
		Norwegian = "no";
		Hebrew = "he",
		Slovak = "sk";
		Bulgarian = "bg";
		Croatian = "hr";
		Serbian = "sr";
		Lithuanian = "lt",
		Latvian = "lv";
		Slovenian = "sl"
	};
	RegisteredElements = {},
	Cache = {}
}
function TranslateText(s, b)
	if not b or b == "" then
		return b or ""
	end
	local e = s .. ((":") .. b)
	if W.Cache[e] then
		return W.Cache[e]
	end
	local Y, R = pcall(function()
		local e = ("https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=") .. (s .. (("&dt=t&q=") .. c:UrlEncode(b)))
		local Y = game:HttpGet(e)
		local R = c:JSONDecode(Y)
		local M = ""
		if R and R[1] then
			for s, b in ipairs(R[1]) do
				if b[1] then
					M = M .. b[1]
				end
			end
		end
		return M
	end)
	if Y and (R and R ~= "") then
		W.Cache[e] = R
		return R
	end
	return b
end
function RegisterTranslatable(s, b)
	if not s or not b or b == "" then
		return
	end
	W.RegisteredElements[s] = {
		original = b
	}
end
function ApplyTranslation(s)
	if W._busy then
		W._pending = s
		return
	end
	W._busy = true
	W._pending = nil
	local function b()
		W._busy = false
		if W._pending and W._pending ~= s then
			local s = W._pending
			W._pending = nil
			task.defer(ApplyTranslation, s)
		end
	end
	if s == "en" then
		for s, b in pairs(W.RegisteredElements) do
			if s and s.Parent then
				pcall(function()
					s.Text = b.original
				end)
			end
		end
		b()
		return
	end
	task.spawn(function()
		local b, e = {}, {}
		for s, Y in pairs(W.RegisteredElements) do
			if s and s.Parent then
				local s = Y.original
				if not e[s] then
					e[s] = true
					table.insert(b, s)
				end
			end
		end
		local function Y(s, b)
			for e, Y in pairs(W.RegisteredElements) do
				if e and (e.Parent and Y.original == s) then
					pcall(function()
						e.Text = b
					end)
				end
			end
		end
		for b, e in ipairs(b) do
			local R = s .. ((":") .. e)
			local M = W.Cache[R]
			local L = M ~= nil
			if not M then
				M = TranslateText(s, e)
				W.Cache[R] = M
			end
			Y(e, M or e)
			if not L then
				task.wait()
			end
		end
		Finish()
	end)
end
function s.CreateWindow(Y, e)
	local R = "Quantum Onyx Project"
	if type(e) == "table" then
		e.Title = R
	end
	if e.SaveFile and (type(e.SaveFile) == "string" and e.SaveFile ~= "") then
		y = l:GetFileName(e.SaveFile)
		l.Settings = {}
		l:Load()
	else
		if not y then
			y = l:GetFileName()
			l:Load()
		end
	end
	local L = e.Subtitle or "Untitled"
	local c = e.Version or "v1.0"
	local j = e.Theme or "Purple"
	local r = e.Credits or {}
	local h = {}
	function h.IsDeveloperBuild()
		local s = string.lower(tostring(c))
		return s == "developer" or s == "v.developer" or string.find(s, "developer", 1, true) ~= nil
	end
	local w = T.Themes[j] or T.Themes["Purple"]
	T.Current = w
	function ParseKeySetting(s)
		if s == true then
			return true, nil
		end
		if type(s) ~= "table" then
			return false, nil
		end
		local b, e = false, nil
		for s, Y in ipairs(s) do
			if Y == true then
				b = true
			elseif type(Y) == "string" then
				e = Y
			end
		end
		return b, e
	end
	local a, f = ParseKeySetting(e.Key)
	local H = f == "Full"
	local k = {}
	local u = {}
	local I = nil
	local P = false
	local m = false
	local X = e.Intro ~= false
	function LoadKeyValid()
		local s = l.FolderName .. "/Key.json"
		if not isfolder(l.FolderName) or not isfile(s) then
			return false
		end
		local b, e = pcall(function()
			return JsonDecode(readfile(s))
		end)
		if not b or type(e) ~= "table" then
			return false
		end
		if type(e.key) ~= "string" or e.key == "" then
			return false
		end
		return e.verified == true
	end
	local F = a and LoadKeyValid() or false
	function h.HasKeyAccess()
		if not a then
			return true
		end
		return F
	end
	local J
	function h.CreateDummy()
		local s = {}
		setmetatable(s, {
			__index = function(b, e)
				return function()
					return s
				end
			end
		})
		return s
	end
	J = h.CreateDummy()
	function checkCondition(s)
		if s == nil then
			return true
		end
		if type(s) == "function" then
			local b, e = pcall(s)
			return b and e
		end
		if type(s) == "table" and type(s.fn) == "function" then
			local b, e = pcall(s.fn)
			if not ((b and e)) then
				return false
			end
			return true
		end
		return not (not s)
	end
	function IsFullLocked()
		return a and (H and (not F and not m))
	end
	function RefreshKeyLock()
		if not F then
			P = false
			return
		end
		if P then
			return
		end
		P = true
		if H and I then
			I.Visible = false
		end
		for s, b in ipairs(k) do
			local e = b.frame
			if e and e.Parent then
				local s = b.blocker
				if s and s.Parent then
					s:Destroy()
				end
				for s, b in ipairs(e:GetChildren()) do
					if b:IsA("ImageLabel") and b.Image == "rbxassetid://7733992528" then
						b:Destroy()
					end
				end
				e.BackgroundTransparency = .4
				local Y = e:FindFirstChild("AccentBar")
				if Y then
					Y.BackgroundTransparency = 0
				end
			end
		end
		task.defer(function()
			for s, b in ipairs(u) do
				pcall(function()
					if b.saveKey then
						local s = l:Get(b.saveKey, nil)
						if s ~= nil then
							l.Settings[b.saveKey] = s
						end
					end
					if b.UpdateFn then
						b.UpdateFn()
					end
				end)
				if s % 12 == 0 then
					task.wait()
				end
			end
		end)
	end
	function RegisterKeyLocked(b, e)
		if not a or not e then
			return
		end
		if h.HasKeyAccess() then
			return
		end
		b.BackgroundTransparency = .55
		local Y = b:FindFirstChild("AccentBar")
		if Y then
			Y.BackgroundTransparency = .8
		end
		for s, b in ipairs(b:GetDescendants()) do
			if b:IsA("TextLabel") or b:IsA("TextButton") then
				if b.Name == "ButtonLabel" or b.Name == "ToggleTitle" or b.Name == "SliderTitle" then
					b.TextColor3 = Color3.fromRGB(130, 110, 160)
				end
			end
		end
		E("ImageLabel", {
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.new(1, - 6, 0, 6),
			Size = UDim2.new(0, 11, 0, 11),
			Image = "rbxassetid://7733992528",
			ImageColor3 = Color3.fromRGB(140, 110, 190);
			ImageTransparency = .3;
			ZIndex = 10
		}, b)
		local R = E("TextButton", {
			Name = "_KeyBlocker",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0);
			Text = "",
			ZIndex = 10,
			AutoButtonColor = false
		}, b)
		R.Activated:Connect(function()
			s.Notification:Notify({
				Title = "Key Required",
				Description = "Verify your key in the Key System panel to unlock this feature."
			}, {
				Time = 3
			})
		end)
		table.insert(k, {
			frame = b;
			blocker = R
		})
	end
	local Q = {
		body = nil,
		accentElements = {};
		litGradients = {};
		buttonGradients = {}
	}
	local i, D, q, V
	V = {
		List = l:Get("_favorites", {});
		Entries = {};
		Refresh = nil
	}
	function ApplyTheme(s)
		local e = T.Themes[s]
		if not e then
			return
		end
		T.Current = e
		l:Save("_activeTheme", s)
		if Q.body then
			b:Tween(Q.body, {
				BackgroundColor3 = e.Body
			}, .28, Enum.EasingStyle["Quint"])
		end
		for s, Y in ipairs(Q.accentElements) do
			local R, M, L = Y[1], Y[2], Y[3]
			local p = e[L] or e.Accent
			if R and R.Parent then
				b:Tween(R, {
					[M] = p
				}, .28, Enum.EasingStyle["Quint"])
			end
		end
		for s, b in ipairs(Q.litGradients) do
			if b and b.Parent then
				b.Color = e.Lit
			end
		end
		for s, b in ipairs(Q.buttonGradients) do
			if b and b.Parent then
				b.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, e.AccentLight);
					ColorSequenceKeypoint.new(1, e.AccentDark)
				})
			end
		end
		pcall(function()
			if D then
				local s = D:FindFirstChildOfClass("UIStroke")
				if s then
					s.Color = e.Accent
				end
			end
			for s, b in ipairs(i or {}) do
				if b.tabUnderline then
					b.tabUnderline["BackgroundColor3"] = e.Accent
				end
			end
			if TopFrame then
			end
		end)
	end
	function RegisterThemeElement(s, b, e)
		table.insert(Q.accentElements, {
			s,
			b,
			e or "Accent"
		})
	end
	function RegisterLitGradient(s)
		table.insert(Q.litGradients, s)
	end
	function RegisterButtonGradient(s)
		table.insert(Q.buttonGradients, s)
	end
	function CreateAccentBar(s, b)
		b = b or {}
		local e = E("Frame", {
			Name = "AccentBar";
			BackgroundColor3 = ThemeColor("Accent") or b.Color or Color3.fromRGB(192, 132, 252);
			BackgroundTransparency = b.Transparency or 0;
			BorderSizePixel = 0,
			AnchorPoint = Vector2.new(0, .5),
			Position = UDim2.new(0, 0, .5, 0),
			Size = b.Size or UDim2.new(0, 2, 0, 14),
			ZIndex = 3;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				})
			}
		}, s)
		if b.Gradient then
			local s = E("UIGradient", {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, ThemeColor("AccentLight") or Color3.fromRGB(216, 180, 254));
					ColorSequenceKeypoint.new(1, ThemeColor("AccentDark") or Color3.fromRGB(139, 92, 246))
				});
				Rotation = (b.Gradient and b.Gradient["Rotation"]) or 90
			}, e)
			RegisterButtonGradient(s)
		end
		RegisterThemeElement(e, "BackgroundColor3", "Accent")
		return e
	end
	local K = E("ScreenGui", {
		Name = N(),
		ZIndexBehavior = Enum.ZIndexBehavior["Sibling"]
	}, g)
	local o = M.TouchEnabled and not M.KeyboardEnabled
	local O = o and .45 or .5
	local U = 1.8
	local n = o and .7 or 1
	local s9 = .05
	local b9 = E("UIScale", {
		Name = "LibraryUIScale";
		Scale = n
	}, K)
	local e9 = {}
	function UnscaledLayout(s)
		local b = b9.Scale
		if b == 0 then
			return s
		end
		return s / b
	end
	function FitScrollCanvas(s, b, e, Y)
		if not s or not b then
			return
		end
		Y = Y or 4
		e = e or "Y"
		local R = e == "X" and b.AbsoluteContentSize["X"] or b.AbsoluteContentSize["Y"]
		local M = e == "X" and s.AbsoluteSize["X"] or s.AbsoluteSize["Y"]
		if M < 2 then
			M = e == "X" and s.Size["X"].Offset or s.Size["Y"].Offset
		end
		R = UnscaledLayout(R)
		M = UnscaledLayout(math.max(M, 0))
		if R > 0 then
			R = R + Y
		end
		local L = math.max(R, 0)
		local p = R > (M + 1)
		if e == "X" then
			s.CanvasSize = UDim2.new(0, L, 0, 0)
			if not p then
				s.CanvasPosition = Vector2.new(0, s.CanvasPosition["Y"])
			end
		else
			s.CanvasSize = UDim2.new(0, 0, 0, L)
			if not p then
				s.CanvasPosition = Vector2.new(s.CanvasPosition["X"], 0)
			end
		end
		s.ScrollingEnabled = true
		pcall(function()
			s.ElasticBehavior = p and Enum.ElasticBehavior["WhenScrollable"] or Enum.ElasticBehavior["Never"]
		end)
	end
	local Y9 = {}
	local R9 = false
	function DebouncedFitScrollCanvas(s, b, e, Y)
		if not s or not b then
			return
		end
		Y9[s] = {
			layout = b;
			axis = e or "Y";
			pad = Y or 2
		}
		if not R9 then
			R9 = true
			task.defer(function()
				R9 = false
				for s, b in pairs(Y9) do
					Y9[s] = nil
					FitScrollCanvas(s, b.layout, b.axis, b.pad)
				end
			end)
		end
	end
	function RegisterLayoutRefresh(s)
		table.insert(e9, s)
	end
	function ScaledFontSize(s, b)
		local e = b9.Scale
		if e <= 0 then
			e = 1
		end
		if e < 1 then
			return math.max(math.floor(s * e), 4), 1
		end
		local Y = math.min(math.floor(((e - 1)) * 10 + .5), 6)
		return math.min(s + Y, 18), 1
	end
	function MakeTextConstraint(s, b)
		local e = select(1, ScaledFontSize(s, b))
		local Y = E("UITextSizeConstraint", {
			MaxTextSize = e;
			MinTextSize = 1
		})
		RegisterLayoutRefresh(function()
			local e = select(1, ScaledFontSize(s, b))
			Y.MaxTextSize = e
			Y.MinTextSize = 1
		end)
		return Y
	end
	function BindScaledText(s, b)
		RegisterLayoutRefresh(function()
			s.TextSize = select(1, ScaledFontSize(b))
		end)
	end
	local M9 = false
	function RefreshAllLayouts()
		for s, b in ipairs(e9) do
			pcall(b)
		end
	end
	function ScheduleRefreshAllLayouts()
		if M9 then
			return
		end
		M9 = true
		task.defer(function()
			M9 = false
			RefreshAllLayouts()
		end)
	end
	function h.SetUIScalePreview(b)
		b = math.clamp(b, O, U)
		b9.Scale = b
		local e = s.Notification["GUI"] and s.Notification["GUI"].Parent
		if e then
			local s = e:FindFirstChildOfClass("UIScale")
			if not s then
				s = E("UIScale", {
					Name = "LibraryUIScale"
				}, e)
			end
			s.Scale = b
		end
		return b
	end
	function h.ApplyUIScale(s)
		s = h.SetUIScalePreview(s)
		ScheduleRefreshAllLayouts()
		return s
	end
	local L9 = true
	local p9 = n
	local function c9()
		if not L9 then
			return
		end
		local s = workspace.CurrentCamera
		if not s then
			return
		end
		local b = s.ViewportSize
		if b.X < 50 or b.Y < 50 then
			return
		end
		local e = o and 800 or 1000
		local Y = o and 460 or 600
		local R = math.min(b.X / e, b.Y / Y, 1)
		local M = math.clamp(p9 * R, O, U)
		h.SetUIScalePreview(M)
		ScheduleRefreshAllLayouts()
	end
	do
		local s = workspace.CurrentCamera
		if s then
			(s:GetPropertyChangedSignal("ViewportSize")):Connect(c9)
			task.defer(c9)
		end
	end
	local A9 = h.ApplyUIScale
	function h.ApplyUIScale(s)
		p9 = s
		return A9(s)
	end
	local z9 = E("Frame", {
		BackgroundColor3 = ThemeColor("Body"),
		BackgroundTransparency = .05,
		BorderSizePixel = 0;
		AnchorPoint = Vector2.new(.5, .5);
		Position = UDim2.new(.5, 0, .5, 0),
		Size = UDim2.new(0, 510, 0, 330);
		Visible = not X,
		Active = true;
		ClipsDescendants = true,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 10)
			})
		}
	}, K)
	local g9 = E("ImageLabel", {
		Name = "BodyBackground",
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
		Image = "",
		ImageTransparency = .88;
		ScaleType = Enum.ScaleType["Crop"],
		ZIndex = 0;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 10)
			})
		}
	}, z9)
	local j9 = E("Frame", {
		Name = "BodyVideoHolder";
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = 1,
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0),
		Visible = false,
		ClipsDescendants = true,
		ZIndex = 0;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 10)
			})
		}
	}, z9)
	local r9 = nil
	pcall(function()
		r9 = Instance.new("VideoFrame")
		r9.Name = "BodyVideo"
		r9.BackgroundTransparency = 1
		r9.BorderSizePixel = 0
		r9.Size = UDim2.new(1, 0, 1, 0)
		r9.Visible = true
		r9.Looped = true
		r9.Volume = 0
		r9.ZIndex = 0
		r9.Parent = j9
	end)
	function ClearBackgroundMedia()
		g9.Image = ""
		g9.Visible = false
		if j9 then
			j9.Visible = false
		end
		if r9 then
			pcall(function()
				r9.Playing = false
			end)
			pcall(function()
				r9:Pause()
			end)
			pcall(function()
				r9.Video = ""
			end)
		end
	end
	local h9 = nil
	function ApplyBackgroundImage(b, e)
		e = e or l:Get("_opt_BgImageTransparency", .88)
		if type(b) ~= "string" or b == "" then
			ClearBackgroundMedia()
			l:Save("_opt_BgImage", "")
			return
		end
		local Y = t(b)
		if Y then
			g9.Image = ""
			g9.Visible = false
			local e = x(b)
			if not e then
				s.Notification:Notify({
					Title = "Video BG",
					Description = "Could not load video asset. File not found or unsupported."
				}, {
					Time = 3
				})
				ClearBackgroundMedia()
				return
			end
			if not r9 or not r9.Parent then
				pcall(function()
					if r9 then
						r9:Destroy()
					end
					r9 = Instance.new("VideoFrame")
					r9.Name = "BodyVideo"
					r9.BackgroundTransparency = 1
					r9.BorderSizePixel = 0
					r9.Size = UDim2.new(1, 0, 1, 0)
					r9.Visible = true
					r9.Looped = true
					r9.Volume = 0
					r9.ZIndex = 0
					r9.Parent = j9
				end)
			end
			if j9 then
				j9.Visible = true
			end
			if r9 then
				pcall(function()
					r9.Visible = true
					r9.Looped = true
					r9.Volume = 0
					r9.Video = e
					r9.Playing = true
					r9:Play()
				end)
				task.spawn(function()
					task.wait(.08)
					pcall(function()
						r9.Playing = true
						r9:Play()
					end)
					local s = tick()
					while tick() - s < 5 do
						local s = false
						pcall(function()
							s = r9.IsLoaded
						end)
						if s then
							pcall(function()
								r9.Playing = true
								r9:Play()
							end)
							break
						end
						task.wait(.2)
					end
				end)
				if not h9 then
					h9 = task.spawn(function()
						while true do
							task.wait(1.5)
							if j9 and (j9.Visible and (r9 and r9.Parent)) then
								local s = false
								pcall(function()
									s = r9.Playing
								end)
								if not s then
									pcall(function()
										r9.Playing = true
										r9:Play()
									end)
								end
							end
						end
					end)
				end
			end
			l:Save("_opt_BgImage", b)
		else
			local s = x(b)
			if not s then
				return
			end
			ClearBackgroundMedia()
			g9.Visible = true
			g9.Image = s
			g9.ImageTransparency = e
			l:Save("_opt_BgImage", b)
		end
	end
	local l9 = l:Get("_opt_BgImage", "")
	if l9 ~= "" then
		task.defer(function()
			ApplyBackgroundImage(l9)
		end)
	end
	g9.ImageTransparency = l:Get("_opt_BgImageTransparency", .88)
	do
		local s = l:Get("_opt_UITransparency", .05)
		z9.BackgroundTransparency = s
	end
	Q.body = z9
	B(K)
	Y:DestroyGui()
	Y._CurrentGui = K
	s.Notification:Init(z9)
	I = E("Frame", {
		Name = "FullLockOverlay",
		BackgroundColor3 = Color3.fromRGB(6, 4, 12);
		BackgroundTransparency = .08;
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0),
		Visible = false,
		ZIndex = 1003;
		Active = true;
		Children = {
			E("TextButton", {
				Name = "ClickBlocker";
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, 0);
				Position = UDim2.new(0, 0, 0, 0),
				Text = "";
				AutoButtonColor = false,
				ZIndex = 1004,
				Active = true
			});
			E("UICorner", {
				CornerRadius = UDim.new(0, 10)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(140, 80, 220);
				Transparency = .55;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}),
			E("ImageLabel", {
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(.5, .5);
				Position = UDim2.new(.5, 0, .38, 0);
				Size = UDim2.new(0, 28, 0, 28);
				Image = "rbxassetid://7733992528";
				ImageColor3 = Color3.fromRGB(160, 100, 240);
				ImageTransparency = .1,
				ZIndex = 1004
			});
			E("TextLabel", {
				Name = "LockTitle",
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(.5, .5),
				Position = UDim2.new(.5, 0, .52, 0),
				Size = UDim2.new(.85, 0, 0, 22),
				Font = Enum.Font["FredokaOne"],
				Text = "Premium Privilege Only",
				TextColor3 = Color3.fromRGB(210, 160, 255);
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment["Center"];
				ZIndex = 1004
			}),
			E("TextLabel", {
				Name = "LockDesc";
				BackgroundTransparency = 1;
				AnchorPoint = Vector2.new(.5, .5),
				Position = UDim2.new(.5, 0, .66, 0),
				Size = UDim2.new(.88, 0, 0, 36),
				Font = Enum.Font["Gotham"],
				RichText = true,
				Text = "Premium features require a valid key.\n<font color=\"#34D399\">Freemium</font> is still available below.";
				TextColor3 = Color3.fromRGB(180, 160, 210),
				TextSize = 10;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment["Center"],
				ZIndex = 1004
			});
			E("TextButton", {
				Name = "FreemiumBtn";
				BackgroundColor3 = Color3.fromRGB(30, 18, 52);
				BackgroundTransparency = .15;
				AnchorPoint = Vector2.new(.5, .5),
				Position = UDim2.new(.5, 0, .82, 0),
				Size = UDim2.new(.62, 0, 0, 26);
				Font = Enum.Font["GothamBold"];
				Text = "Continue Freemium";
				TextColor3 = Color3.fromRGB(130, 230, 180);
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 1005;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 6)
					}),
					E("UIStroke", {
						Color = Color3.fromRGB(80, 200, 140),
						Transparency = .45,
						Thickness = 1;
						ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
					})
				}
			}),
			E("Frame", {
				BackgroundColor3 = Color3.fromRGB(140, 80, 220),
				BackgroundTransparency = .7,
				BorderSizePixel = 0;
				AnchorPoint = Vector2.new(.5, .5);
				Position = UDim2.new(.5, 0, .44, 0);
				Size = UDim2.new(.55, 0, 0, 1),
				ZIndex = 1004,
				Children = {
					E("UIGradient", {
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 1);
							NumberSequenceKeypoint.new(.2, 0);
							NumberSequenceKeypoint.new(.8, 0),
							NumberSequenceKeypoint.new(1, 1)
						})
					})
				}
			})
		}
	}, z9)
	if IsFullLocked() then
		I.Visible = true
	end
	local y9 = E("Frame", {
		BackgroundColor3 = ThemeColor("Body");
		BackgroundTransparency = 1,
		BorderSizePixel = 0;
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 0, 32),
		ZIndex = 1005;
		Active = true,
		ClipsDescendants = true,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(1, 0)
			})
		}
	}, z9)
	local Z9 = E("TextLabel", {
		Name = "TitleHub";
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 12, 0, 2);
		Size = UDim2.new(1, - 255, 0, 16),
		Font = Enum.Font["FredokaOne"],
		Text = R;
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 13;
		TextTruncate = Enum.TextTruncate["AtEnd"];
		TextXAlignment = Enum.TextXAlignment["Left"]
	}, y9)
	local w9 = E("TextLabel", {
		Name = "SubtitleHub";
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 12, 0, 18),
		Size = UDim2.new(1, - 255, 0, 12);
		Font = Enum.Font["Gotham"],
		RichText = true,
		Text = string.format("<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>", L, os.date("%A"));
		TextColor3 = Color3.fromRGB(200, 200, 200);
		TextSize = 10;
		TextTruncate = Enum.TextTruncate["AtEnd"],
		TextXAlignment = Enum.TextXAlignment["Left"]
	}, y9)
	function h.SetSubtitleTier()
		if h.IsDeveloperBuild() then
			w9.Text = string.format("<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#7286FF\">v.Developer</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>", L, os.date("%A"))
		elseif h.HasKeyAccess() then
			w9.Text = string.format("<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#FFD700\">v.Premium</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>", L, os.date("%A"))
		elseif a then
			w9.Text = string.format("<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#34D399\">v.Freemium</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>", L, os.date("%A"))
		else
			w9.Text = string.format("<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#34D399\">%s</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>", L, c, os.date("%A"))
		end
	end
	function SetSubtitlePremium()
		h.SetSubtitleTier()
	end
	h.SetSubtitleTier()
	local a9 = I and I:FindFirstChild("FreemiumBtn", true)
	if a9 then
		a9.MouseButton1Click:Connect(function()
			m = true
			I.Visible = false
			h.SetSubtitleTier()
		end)
	end
	function h.SyncKeyAccess()
		if a then
			F = LoadKeyValid()
		end
		if F then
			RefreshKeyLock()
		end
		h.SetSubtitleTier()
	end
	local f9 = Enum.KeyCode["RightControl"]
	local H9 = false
	local k9 = nil
	local E9 = true
	l:RegisterKey("_opt_UIKeybind")
	do
		local s = l:Get("_opt_UIKeybind", "RightControl")
		local b = Enum.KeyCode[s]
		if b then
			f9 = b
		end
	end
	local B9
	B9 = function()
		E9 = not E9
		z9.Visible = E9
	end
	local N9 = E("ImageButton", {
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, .5);
		Position = UDim2.new(1, - 34, 0, 16);
		Size = UDim2.new(0, 20, 0, 20),
		ZIndex = 1005,
		Image = "rbxassetid://92966930061759"
	}, z9)
	local u9 = E("ImageButton", {
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, .5),
		Position = UDim2.new(1, - 8, 0, 16);
		Size = UDim2.new(0, 20, 0, 20);
		ZIndex = 1005,
		Image = "rbxassetid://79324227570635"
	}, z9)
	local I9 = E("TextButton", {
		Name = "CreditsBtn";
		BackgroundColor3 = Color3.fromRGB(14, 10, 22),
		BackgroundTransparency = 0;
		AnchorPoint = Vector2.new(1, .5),
		Position = UDim2.new(1, - 62, 0, 16),
		Size = UDim2.new(0, 83, 0, 23);
		Text = "";
		AutoButtonColor = false,
		ZIndex = 1005;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(160, 100, 240),
				Transparency = .72,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			});
			E("Frame", {
				BackgroundColor3 = Color3.fromRGB(160, 100, 240);
				BackgroundTransparency = 0;
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, .5, - 7),
				Size = UDim2.new(0, 2, 0, 14);
				ZIndex = 1006,
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(1, 0)
					}),
					E("UIGradient", {
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color3.fromRGB(210, 160, 255)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 60, 220))
						});
						Rotation = 90
					})
				}
			});
			E("ImageLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 8, .5, - 7),
				Size = UDim2.new(0, 14, 0, 14),
				Image = "rbxassetid://83474083071373",
				ImageColor3 = Color3.fromRGB(185, 140, 255),
				ZIndex = 1006
			}),
			E("TextLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 27, 0, 0),
				Size = UDim2.new(1, - 30, 1, 0);
				Font = Enum.Font["GothamBold"];
				Text = "Credits",
				TextColor3 = Color3.fromRGB(195, 155, 255),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment["Left"],
				ZIndex = 1006
			})
		}
	}, z9)
	local P9 = I9:FindFirstChildOfClass("UIStroke")
	Z.BindHover(I9, {
		BackgroundColor3 = Color3.fromRGB(22, 14, 38)
	}, {
		BackgroundColor3 = Color3.fromRGB(14, 10, 22)
	}, {
		Transparency = .38
	}, {
		Transparency = .72
	}, P9)
	local m9 = E("TextButton", {
		Name = "SettingsBtn",
		BackgroundColor3 = Color3.fromRGB(14, 10, 22),
		BackgroundTransparency = 0;
		AnchorPoint = Vector2.new(1, .5);
		Position = UDim2.new(1, - 153, 0, 16),
		Size = UDim2.new(0, 83, 0, 23),
		Text = "";
		AutoButtonColor = false,
		ZIndex = 1005;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(160, 100, 240),
				Transparency = .72;
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}),
			E("Frame", {
				BackgroundColor3 = Color3.fromRGB(160, 100, 240);
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, .5, - 7),
				Size = UDim2.new(0, 2, 0, 14),
				ZIndex = 1006,
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(1, 0)
					}),
					E("UIGradient", {
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color3.fromRGB(210, 160, 255)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 60, 220))
						}),
						Rotation = 90
					})
				}
			}),
			E("ImageLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 8, .5, - 7);
				Size = UDim2.new(0, 14, 0, 14),
				Image = "rbxassetid://81151604784579";
				ImageColor3 = Color3.fromRGB(185, 140, 255);
				ZIndex = 1006
			});
			E("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 27, 0, 0);
				Size = UDim2.new(1, - 30, 1, 0),
				Font = Enum.Font["GothamBold"],
				Text = "Settings";
				TextColor3 = Color3.fromRGB(195, 155, 255),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment["Left"];
				ZIndex = 1006
			})
		}
	}, z9)
	local X9 = m9:FindFirstChildOfClass("UIStroke")
	Z.BindHover(m9, {
		BackgroundColor3 = Color3.fromRGB(22, 14, 38)
	}, {
		BackgroundColor3 = Color3.fromRGB(14, 10, 22)
	}, {
		Transparency = .38
	}, {
		Transparency = .72
	}, X9)
	local x9 = false
	function h.MakeOverlay(s, e, Y, R, M)
		local L = E("Frame", {
			Visible = false,
			Active = true;
			BackgroundTransparency = .5,
			BackgroundColor3 = Color3.fromRGB(4, 2, 10);
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 20
		}, z9)
		local p = E("Frame", {
			Visible = false,
			AnchorPoint = Vector2.new(.5, .5),
			Position = UDim2.new(.5, 0, .5, 0);
			BackgroundColor3 = Color3.fromRGB(11, 8, 18),
			BackgroundTransparency = 0,
			Size = UDim2.new(0, Y, 0, R);
			ZIndex = 2000,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 12)
				}),
				E("UIStroke", {
					Color = Color3.fromRGB(140, 90, 220);
					Transparency = .6;
					Thickness = 1;
					ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
				}),
				E("Frame", {
					BackgroundColor3 = Color3.fromRGB(80, 40, 160);
					BackgroundTransparency = .92,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, .45, 0),
					Position = UDim2.new(0, 0, 0, 0);
					ZIndex = 21,
					Children = {
						E("UICorner", {
							CornerRadius = UDim.new(0, 12)
						}),
						E("UIGradient", {
							Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0);
								NumberSequenceKeypoint.new(1, 1)
							});
							Rotation = 90
						})
					}
				}),
				E("ImageLabel", {
					BackgroundTransparency = 1;
					AnchorPoint = Vector2.new(.5, 0),
					Position = UDim2.new(.5, 0, 0, 14);
					Size = UDim2.new(0, 20, 0, 20),
					Image = e,
					ImageColor3 = Color3.fromRGB(190, 140, 255);
					ZIndex = 22
				}),
				E("TextLabel", {
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(.5, 0);
					Position = UDim2.new(.5, 0, 0, 38),
					Size = UDim2.new(1, - 24, 0, 16),
					Font = Enum.Font["FredokaOne"];
					Text = s;
					TextColor3 = Color3.fromRGB(210, 175, 255);
					TextSize = 15,
					TextXAlignment = Enum.TextXAlignment["Center"],
					ZIndex = 22
				}),
				E("Frame", {
					BackgroundColor3 = Color3.fromRGB(160, 100, 255);
					BackgroundTransparency = .72,
					BorderSizePixel = 0,
					AnchorPoint = Vector2.new(.5, 0),
					Position = UDim2.new(.5, 0, 0, 57),
					Size = UDim2.new(.65, 0, 0, 1),
					ZIndex = 22,
					Children = {
						E("UIGradient", {
							Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 1);
								NumberSequenceKeypoint.new(.2, 0),
								NumberSequenceKeypoint.new(.8, 0);
								NumberSequenceKeypoint.new(1, 1)
							})
						})
					}
				})
			}
		}, z9)
		local c = E("ScrollingFrame", {
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(.5, 0);
			Position = UDim2.new(.5, 0, 0, 64);
			Size = UDim2.new(1, - 16, 1, - 100);
			Active = true;
			ScrollBarThickness = 0;
			ScrollBarImageTransparency = 1,
			ScrollingDirection = Enum.ScrollingDirection["Y"];
			AutomaticCanvasSize = Enum.AutomaticSize["Y"],
			ElasticBehavior = Enum.ElasticBehavior["WhenScrollable"],
			CanvasSize = UDim2.new(0, 0, 0, 0),
			ZIndex = 22,
			Children = {
				E("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment["Center"];
					SortOrder = Enum.SortOrder["LayoutOrder"];
					Padding = UDim.new(0, 4)
				});
				E("UIPadding", {
					PaddingTop = UDim.new(0, 3),
					PaddingBottom = UDim.new(0, 3),
					PaddingLeft = UDim.new(0, 2);
					PaddingRight = UDim.new(0, 2)
				})
			}
		}, p)
		local A = E("TextButton", {
			Name = "CloseBtn",
			BackgroundColor3 = Color3.fromRGB(30, 18, 52);
			BackgroundTransparency = 0;
			AnchorPoint = Vector2.new(.5, 1),
			Size = UDim2.new(.52, 0, 0, 24);
			Position = UDim2.new(.5, 0, 1, - 9),
			Text = "Close";
			TextColor3 = Color3.fromRGB(180, 135, 255),
			Font = Enum.Font["GothamBold"],
			TextSize = 11,
			AutoButtonColor = false;
			ZIndex = 22,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 6)
				});
				E("UIStroke", {
					Color = Color3.fromRGB(140, 90, 220);
					Transparency = .65;
					Thickness = 1;
					ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
				})
			}
		}, p)
		A.MouseEnter:Connect(function()
			b:Tween(A, {
				BackgroundColor3 = Color3.fromRGB(50, 28, 85)
			}, .15, Enum.EasingStyle["Quint"])
		end)
		A.MouseLeave:Connect(function()
			b:Tween(A, {
				BackgroundColor3 = Color3.fromRGB(30, 18, 52)
			}, .2, Enum.EasingStyle["Quint"])
		end)
		local z = false
		local function g()
			z = true
			L.Visible = true
			p.Visible = true
			p.Size = UDim2.new(0, Y * .5, 0, R * .5)
			p.BackgroundTransparency = .6
			b:Tween(p, {
				Size = UDim2.new(0, Y, 0, R);
				BackgroundTransparency = 0
			}, .3, Enum.EasingStyle["Back"], Enum.EasingDirection["Out"])
		end
		local function j()
			if not z then
				return
			end
			z = false
			b:Tween(p, {
				Size = UDim2.new(0, Y * .5, 0, R * .5),
				BackgroundTransparency = .6
			}, .22, Enum.EasingStyle["Quint"], Enum.EasingDirection["In"], function()
				p.Visible = false
				L.Visible = false
				p.Size = UDim2.new(0, Y, 0, R)
				p.BackgroundTransparency = 0
				if M then
					M()
				end
			end)
		end
		local function r()
			return z
		end
		A.MouseButton1Click:Connect(j)
		L.InputBegan:Connect(function(s)
			if x9 then
				return
			end
			if s.UserInputType == Enum.UserInputType["MouseButton1"] or s.UserInputType == Enum.UserInputType["Touch"] then
				j()
			end
		end)
		return p, c, L, g, j, r
	end
	local C9, d9, t9, T9, W9, G9 = h.MakeOverlay("Credits", "rbxassetid://83474083071373", 270, 270, nil)
	local v9 = {
		ServerOwner = Color3.fromRGB(255, 200, 80),
		MainDeveloper = Color3.fromRGB(175, 115, 255);
		WebDesigner = Color3.fromRGB(100, 200, 255),
		Tester = Color3.fromRGB(80, 225, 160)
	}
	if # r > 0 then
		E("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 14),
			Font = Enum.Font["GothamBold"],
			Text = "TEAM";
			TextColor3 = Color3.fromRGB(130, 90, 200),
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment["Center"];
			ZIndex = 23
		}, d9)
	end
	for e, Y in ipairs(r) do
		local R = Y.Role or "Developer"
		local M = Y.Name or "Unknown"
		local L = Y.Url or ""
		local p = Y.UrlIcon or "rbxassetid://83474083071373"
		local c = Y.UrlTag or "View Profile"
		local A = v9[R] or Color3.fromRGB(175, 115, 255)
		local g, j, r = A.R, A.G, A.B
		local h = (L ~= "") and 80 or 60
		local l = E("Frame", {
			BackgroundColor3 = Color3.fromRGB(10, 7, 18),
			BackgroundTransparency = 0;
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, h);
			ZIndex = 23;
			ClipsDescendants = true,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 12)
				})
			}
		}, d9)
		E("Frame", {
			BackgroundColor3 = A;
			BackgroundTransparency = .86,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0);
			ZIndex = 23;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 12)
				});
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(g * .5, j * .5, r * .5)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 4, 12))
					});
					Rotation = 135
				})
			}
		}, l)
		local y = E("UIStroke", {
			Color = A,
			Transparency = .65,
			Thickness = 1;
			ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
		}, l)
		E("Frame", {
			BackgroundColor3 = A,
			BorderSizePixel = 0;
			Position = UDim2.new(0, 0, 0, 8),
			Size = UDim2.new(0, 3, 1, - 16),
			ZIndex = 25,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255));
						ColorSequenceKeypoint.new(1, A)
					}),
					Rotation = 90
				})
			}
		}, l)
		local Z = E("Frame", {
			BackgroundColor3 = Color3.new(g * .18, j * .18, r * .18);
			BorderSizePixel = 0,
			Position = UDim2.new(0, 12, 0, 10);
			Size = UDim2.new(0, 36, 0, 36),
			ZIndex = 25;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIStroke", {
					Color = A,
					Transparency = .4;
					Thickness = 1.5,
					ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
				}),
				E("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0);
					Font = Enum.Font["FredokaOne"];
					Text = string.upper(string.sub(M, 1, 1));
					TextColor3 = A,
					TextSize = 18;
					TextXAlignment = Enum.TextXAlignment["Center"],
					ZIndex = 26
				})
			}
		}, l)
		E("TextLabel", {
			BackgroundTransparency = 1;
			Position = UDim2.new(0, 58, 0, 10);
			Size = UDim2.new(1, - 148, 0, 16);
			Font = Enum.Font["FredokaOne"],
			Text = M;
			TextColor3 = Color3.fromRGB(242, 235, 255),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment["Left"];
			ZIndex = 25
		}, l)
		local w = E("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			BackgroundColor3 = Color3.new(g * .12, j * .12, r * .12);
			BorderSizePixel = 0,
			Position = UDim2.new(1, - 8, 0, 10),
			Size = UDim2.new(0, 76, 0, 20);
			ZIndex = 25;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 6)
				});
				E("UIStroke", {
					Color = A,
					Transparency = .5,
					Thickness = 1;
					ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
				}),
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(g * .24, j * .24, r * .24));
						ColorSequenceKeypoint.new(1, Color3.new(g * .08, j * .08, r * .08))
					});
					Rotation = 90
				});
				E("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0);
					Font = Enum.Font["GothamBold"],
					Text = R,
					TextColor3 = A,
					TextSize = 9,
					TextXAlignment = Enum.TextXAlignment["Center"];
					ZIndex = 26
				})
			}
		}, l)
		E("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 58, 0, 28),
			Size = UDim2.new(1, - 148, 0, 12);
			Font = Enum.Font["Gotham"];
			Text = string.lower(R),
			TextColor3 = Color3.new(g * .82, j * .82, r * .82);
			TextSize = 10;
			TextXAlignment = Enum.TextXAlignment["Left"];
			ZIndex = 25
		}, l)
		if L ~= "" then
			E("Frame", {
				BackgroundColor3 = A,
				BackgroundTransparency = .78;
				BorderSizePixel = 0;
				Position = UDim2.new(0, 10, 0, 52),
				Size = UDim2.new(1, - 20, 0, 1),
				ZIndex = 25;
				Children = {
					E("UIGradient", {
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 1);
							NumberSequenceKeypoint.new(.15, 0),
							NumberSequenceKeypoint.new(.85, 0),
							NumberSequenceKeypoint.new(1, 1)
						})
					})
				}
			}, l)
			E("ImageLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 14, 0, 57),
				Size = UDim2.new(0, 13, 0, 13),
				Image = p;
				ImageColor3 = Color3.new(g * .8, j * .8, r * .8);
				ZIndex = 26
			}, l)
			E("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 32, 0, 56),
				Size = UDim2.new(1, - 140, 0, 14),
				Font = Enum.Font["Gotham"],
				Text = c;
				TextColor3 = Color3.new(g * .75, j * .75, r * .75),
				TextSize = 10;
				TextXAlignment = Enum.TextXAlignment["Left"],
				ZIndex = 26
			}, l)
			local e = E("TextButton", {
				AnchorPoint = Vector2.new(1, 0);
				BackgroundColor3 = Color3.new(g * .12, j * .12, r * .12),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Position = UDim2.new(1, - 8, 0, 55),
				Size = UDim2.new(0, 68, 0, 20);
				AutoButtonColor = false;
				Text = "",
				ZIndex = 26;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 6)
					});
					E("UIStroke", {
						Color = A,
						Transparency = .5,
						Thickness = 1;
						ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
					}),
					E("UIGradient", {
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color3.new(g * .26, j * .26, r * .26));
							ColorSequenceKeypoint.new(1, Color3.new(g * .08, j * .08, r * .08))
						});
						Rotation = 90
					})
				}
			}, l)
			local Y = E("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0);
				Font = Enum.Font["GothamBold"];
				Text = "COPY LINK";
				TextColor3 = A,
				TextSize = 9,
				TextXAlignment = Enum.TextXAlignment["Center"];
				ZIndex = 27
			}, e)
			local R = e:FindFirstChildOfClass("UIStroke")
			e.MouseEnter:Connect(function()
				b:Tween(e, {
					BackgroundColor3 = Color3.new(g * .28, j * .28, r * .28)
				}, .12, Enum.EasingStyle["Quint"])
				b:Tween(R, {
					Transparency = .15
				}, .12)
			end)
			e.MouseLeave:Connect(function()
				b:Tween(e, {
					BackgroundColor3 = Color3.new(g * .12, j * .12, r * .12)
				}, .18, Enum.EasingStyle["Quint"])
				b:Tween(R, {
					Transparency = .5
				}, .18)
			end)
			local h = L
			local y = M
			e.MouseButton1Click:Connect(function()
				CircleClick(e, z.X, z.Y)
				pcall(function()
					((setclipboard or toclipboard))(h)
				end)
				Y.Text = "COPIED"
				Y.TextColor3 = Color3.fromRGB(100, 255, 160)
				b:Tween(e, {
					BackgroundColor3 = Color3.fromRGB(14, 60, 32)
				}, .12, Enum.EasingStyle["Quint"])
				task.delay(1.4, function()
					Y.Text = "COPY LINK"
					Y.TextColor3 = A
					b:Tween(e, {
						BackgroundColor3 = Color3.new(g * .12, j * .12, r * .12)
					}, .25, Enum.EasingStyle["Quint"])
				end)
				s.Notification:Notify({
					Title = y;
					Description = "Profile link copied to clipboard!"
				}, {
					Time = 2
				})
			end)
		end
		local a = E("TextButton", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, L ~= "" and 54 or h),
			Text = "";
			ZIndex = 28;
			AutoButtonColor = false
		}, l)
		a.MouseEnter:Connect(function()
			b:Tween(l, {
				BackgroundColor3 = Color3.new(g * .06, j * .04, r * .11)
			}, .14, Enum.EasingStyle["Quint"])
			b:Tween(y, {
				Transparency = .28
			}, .14)
			b:Tween(Z, {
				Size = UDim2.new(0, 39, 0, 39),
				Position = UDim2.new(0, 11, 0, 9)
			}, .18, Enum.EasingStyle["Back"], Enum.EasingDirection["Out"])
		end)
		a.MouseLeave:Connect(function()
			b:Tween(l, {
				BackgroundColor3 = Color3.fromRGB(10, 7, 18)
			}, .2, Enum.EasingStyle["Quint"])
			b:Tween(y, {
				Transparency = .65
			}, .2)
			b:Tween(Z, {
				Size = UDim2.new(0, 36, 0, 36);
				Position = UDim2.new(0, 12, 0, 10)
			}, .2, Enum.EasingStyle["Quint"])
		end)
	end
	E("Frame", {
		BackgroundColor3 = Color3.fromRGB(140, 90, 220);
		BackgroundTransparency = .78,
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 0, 1),
		ZIndex = 23;
		Children = {
			E("UIGradient", {
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1);
					NumberSequenceKeypoint.new(.12, 0),
					NumberSequenceKeypoint.new(.88, 0);
					NumberSequenceKeypoint.new(1, 1)
				})
			})
		}
	}, d9)
	local F9 = E("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 22);
		ZIndex = 23
	}, d9)
	E("TextLabel", {
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 0, 0, 4),
		Size = UDim2.new(1, 0, 0, 14);
		Font = Enum.Font["GothamBold"];
		Text = "COMMUNITY";
		TextColor3 = Color3.fromRGB(130, 90, 200);
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment["Center"],
		ZIndex = 24
	}, F9)
	function h.MakePremiumSocialCard(s, e)
		local Y = e.AccentColor
		local R, M, L = Y.R, Y.G, Y.B
		local p = E("Frame", {
			BackgroundColor3 = Color3.fromRGB(10, 7, 18),
			BackgroundTransparency = 0;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 0, 72),
			ZIndex = 23,
			ClipsDescendants = true,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 12)
				})
			}
		}, s)
		E("Frame", {
			BackgroundColor3 = Y;
			BackgroundTransparency = .88,
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 1, 0);
			ZIndex = 23;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 12)
				});
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(R * .6, M * .6, L * .6)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 4, 12))
					});
					Rotation = 135
				})
			}
		}, p)
		E("UIStroke", {
			Color = Y,
			Transparency = .65;
			Thickness = 1,
			ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
		}, p)
		E("Frame", {
			BackgroundColor3 = Y,
			BorderSizePixel = 0;
			Position = UDim2.new(0, 0, 0, 10),
			Size = UDim2.new(0, 3, 1, - 20);
			ZIndex = 25,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
						ColorSequenceKeypoint.new(1, Y)
					});
					Rotation = 90
				})
			}
		}, p)
		local c = E("Frame", {
			BackgroundColor3 = Color3.new(R * .18, M * .18, L * .18),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 14, .5, - 20),
			Size = UDim2.new(0, 40, 0, 40),
			ZIndex = 25;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIStroke", {
					Color = Y;
					Transparency = .4;
					Thickness = 1.5;
					ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
				});
				E("ImageLabel", {
					BackgroundTransparency = 1;
					AnchorPoint = Vector2.new(.5, .5),
					Position = UDim2.new(.5, 0, .5, 0),
					Size = UDim2.new(0, 20, 0, 20),
					Image = e.IconImg;
					ImageColor3 = Y;
					ZIndex = 26
				})
			}
		}, p)
		E("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 64, 0, 14),
			Size = UDim2.new(1, - 160, 0, 18),
			Font = Enum.Font["FredokaOne"];
			Text = e.Label,
			TextColor3 = Color3.fromRGB(240, 235, 255);
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment["Left"];
			ZIndex = 25
		}, p)
		E("TextLabel", {
			BackgroundTransparency = 1;
			Position = UDim2.new(0, 64, 0, 34);
			Size = UDim2.new(1, - 160, 0, 12);
			Font = Enum.Font["Gotham"],
			Text = e.SubLabel,
			TextColor3 = Color3.new(R * .8, M * .8, L * .8);
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment["Left"],
			ZIndex = 25
		}, p)
		local A = E("TextButton", {
			AnchorPoint = Vector2.new(1, .5);
			BackgroundColor3 = Color3.new(R * .14, M * .14, L * .14),
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Position = UDim2.new(1, - 10, .5, 0);
			Size = UDim2.new(0, 68, 0, 28),
			AutoButtonColor = false,
			Text = "";
			ZIndex = 26;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 8)
				}),
				E("UIStroke", {
					Color = Y;
					Transparency = .45,
					Thickness = 1;
					ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
				}),
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(R * .28, M * .28, L * .28));
						ColorSequenceKeypoint.new(1, Color3.new(R * .1, M * .1, L * .1))
					});
					Rotation = 90
				})
			}
		}, p)
		local g = E("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Font = Enum.Font["GothamBold"],
			Text = e.BadgeText or "COPY",
			TextColor3 = Y,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment["Center"];
			ZIndex = 27
		}, A)
		local j = A:FindFirstChildOfClass("UIStroke")
		local r = p:FindFirstChildOfClass("UIStroke")
		local h = E("TextButton", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Text = "";
			ZIndex = 28,
			AutoButtonColor = false
		}, p)
		h.MouseEnter:Connect(function()
			b:Tween(p, {
				BackgroundColor3 = Color3.new(R * .07, M * .04, L * .12)
			}, .14, Enum.EasingStyle["Quint"])
			b:Tween(r, {
				Transparency = .3
			}, .14)
			b:Tween(c, {
				Size = UDim2.new(0, 43, 0, 43);
				Position = UDim2.new(0, 12, .5, - 21)
			}, .18, Enum.EasingStyle["Back"], Enum.EasingDirection["Out"])
		end)
		h.MouseLeave:Connect(function()
			b:Tween(p, {
				BackgroundColor3 = Color3.fromRGB(10, 7, 18)
			}, .2, Enum.EasingStyle["Quint"])
			b:Tween(r, {
				Transparency = .65
			}, .2)
			b:Tween(c, {
				Size = UDim2.new(0, 40, 0, 40);
				Position = UDim2.new(0, 14, .5, - 20)
			}, .2, Enum.EasingStyle["Quint"])
		end)
		A.MouseEnter:Connect(function()
			b:Tween(A, {
				BackgroundColor3 = Color3.new(R * .28, M * .28, L * .28)
			}, .12, Enum.EasingStyle["Quint"])
			b:Tween(j, {
				Transparency = .15
			}, .12)
		end)
		A.MouseLeave:Connect(function()
			b:Tween(A, {
				BackgroundColor3 = Color3.new(R * .14, M * .14, L * .14)
			}, .18, Enum.EasingStyle["Quint"])
			b:Tween(j, {
				Transparency = .45
			}, .18)
		end)
		local function l()
			CircleClick(A, z.X, z.Y)
			pcall(function()
				((setclipboard or toclipboard))(e.CopyText)
			end)
			g.Text = "COPIED"
			g.TextColor3 = Color3.fromRGB(100, 255, 160)
			b:Tween(A, {
				BackgroundColor3 = Color3.new(R * .1, M * .4, L * .25)
			}, .12, Enum.EasingStyle["Quint"])
			b:Tween(j, {
				Transparency = 0
			}, .12)
			b:Tween(r, {
				Transparency = .15
			}, .12)
			task.delay(1.4, function()
				g.Text = e.BadgeText or "COPY"
				g.TextColor3 = Y
				b:Tween(A, {
					BackgroundColor3 = Color3.new(R * .14, M * .14, L * .14)
				}, .35, Enum.EasingStyle["Quint"])
				b:Tween(j, {
					Transparency = .45
				}, .35)
				b:Tween(r, {
					Transparency = .65
				}, .35)
			end)
			if e.OnClick then
				e.OnClick(e.CopyText)
			end
		end
		A.MouseButton1Click:Connect(l)
		h.MouseButton1Click:Connect(l)
		return p
	end
	h.MakePremiumSocialCard(d9, {
		Label = "TikTok",
		SubLabel = "@trustmenotcondom";
		IconImg = "http://www.roblox.com/asset/?id=14620084334";
		AccentColor = Color3.fromRGB(210, 145, 255);
		BadgeText = "COPY";
		CopyText = "https://www.tiktok.com/@trustmenotcondom?_t=ZS-8syewdU3Bxq&_r=1",
		OnClick = function()
			s.Notification:Notify({
				Title = "TikTok";
				Description = "TikTok link copied to clipboard."
			}, {
				Time = 2
			})
		end
	})
	h.MakePremiumSocialCard(d9, {
		Label = "Discord",
		SubLabel = "discord.gg/YEvpu5St2Z",
		IconImg = "rbxassetid://129297846250682",
		AccentColor = Color3.fromRGB(114, 137, 255),
		BadgeText = "COPY";
		CopyText = "https://discord.gg/YEvpu5St2Z";
		OnClick = function()
			s.Notification:Notify({
				Title = "Discord",
				Description = "Discord invite copied to clipboard."
			}, {
				Time = 3
			})
		end
	})
	local S9, J9, Q9, i9, D9, q9 = h.MakeOverlay("Settings", "rbxassetid://81151604784579", 270, 270, nil)
	local V9, K9, o9, O9, U9, n9 = h.MakeOverlay("Save Manager", "rbxassetid://7733715400", 270, 270, nil)
	I9.MouseButton1Click:Connect(function()
		CircleClick(I9, z.X, z.Y)
		if q9 and q9() then
			D9()
		end
		if n9 and n9() then
			U9()
		end
		T9()
	end)
	function CloseFullLock()
		if IsFullLocked() and I then
			I.Visible = true
		end
	end
	function h.MakeMiniToggle(e, Y, R, M, L, p, c)
		L = L or 23
		local A = p and not h.HasKeyAccess()
		if A then
			l:Save(R, false)
		end
		local z = l:Get(R, M)
		if A then
			z = false
		end
		local g = E("Frame", {
			BackgroundColor3 = Color3.fromRGB(18, 12, 30),
			BackgroundTransparency = .2,
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 0, 34),
			ZIndex = L,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 8)
				})
			}
		}, e)
		local j = E("UIStroke", {
			Color = Color3.fromRGB(140, 90, 220);
			Transparency = ((z and not A)) and .45 or .82;
			Thickness = 1;
			ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
		}, g)
		local r = E("Frame", {
			BackgroundColor3 = Color3.fromRGB(160, 100, 255);
			BackgroundTransparency = ((z and not A)) and 0 or .8,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, .5, - 10),
			Size = UDim2.new(0, 3, 0, 20),
			ZIndex = L + 1;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 170, 255)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 55, 210))
					});
					Rotation = 90
				})
			}
		}, g)
		local y = E("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 14, 0, 0);
			Size = UDim2.new(1, - 70, 1, 0),
			Font = Enum.Font["GothamBold"],
			Text = Y .. ((A and " (Premium)" or ""));
			TextColor3 = ((z and not A)) and Color3.fromRGB(215, 185, 255) or Color3.fromRGB(155, 130, 195);
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment["Left"],
			ZIndex = L + 1
		}, g)
		if A then
			E("ImageLabel", {
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(1, .5),
				Position = UDim2.new(1, - 54, .5, 0),
				Size = UDim2.new(0, 12, 0, 12),
				Image = "rbxassetid://7733992528";
				ImageColor3 = Color3.fromRGB(140, 110, 190);
				ZIndex = L + 3
			}, g)
		end
		local Z = E("Frame", {
			BackgroundColor3 = ((z and not A)) and Color3.fromRGB(90, 45, 170) or Color3.fromRGB(14, 9, 26),
			AnchorPoint = Vector2.new(1, .5);
			Position = UDim2.new(1, - 10, .5, 0);
			Size = UDim2.new(0, 38, 0, 20),
			BorderSizePixel = 0,
			ZIndex = L + 2,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				})
			}
		}, g)
		local w = E("UIStroke", {
			Color = Color3.fromRGB(140, 90, 220);
			Transparency = ((z and not A)) and .4 or .72,
			Thickness = 1,
			ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
		}, Z)
		local a = E("Frame", {
			AnchorPoint = Vector2.new(0, .5),
			Position = ((z and not A)) and UDim2.new(0, 20, .5, 0) or UDim2.new(0, 3, .5, 0);
			Size = UDim2.new(0, 14, 0, 14);
			BorderSizePixel = 0;
			ZIndex = L + 3;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, ((z and not A)) and Color3.fromRGB(235, 205, 255) or Color3.fromRGB(120, 100, 150)),
						ColorSequenceKeypoint.new(1, ((z and not A)) and Color3.fromRGB(170, 105, 255) or Color3.fromRGB(60, 50, 90))
					});
					Rotation = 135
				})
			}
		}, Z)
		local f = a:FindFirstChildOfClass("UIGradient")
		local H = E("TextButton", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Text = "",
			ZIndex = L + 4
		}, g)
		local k = z
		H.MouseButton1Click:Connect(function()
			if A then
				s.Notification:Notify({
					Title = "Premium Only",
					Description = "This feature requires a premium key."
				}, {
					Time = 3
				})
				return
			end
			k = not k
			b:Tween(a, {
				Position = k and UDim2.new(0, 20, .5, 0) or UDim2.new(0, 3, .5, 0)
			}, .22, Enum.EasingStyle["Back"])
			b:Tween(Z, {
				BackgroundColor3 = k and Color3.fromRGB(90, 45, 170) or Color3.fromRGB(14, 9, 26)
			}, .2, Enum.EasingStyle["Quint"])
			b:Tween(w, {
				Transparency = k and .4 or .72
			}, .2)
			b:Tween(j, {
				Transparency = k and .45 or .82
			}, .2)
			b:Tween(r, {
				BackgroundTransparency = k and 0 or .8
			}, .2)
			b:Tween(y, {
				TextColor3 = k and Color3.fromRGB(215, 185, 255) or Color3.fromRGB(155, 130, 195)
			}, .2)
			if f then
				f.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, k and Color3.fromRGB(235, 205, 255) or Color3.fromRGB(120, 100, 150)),
					ColorSequenceKeypoint.new(1, k and Color3.fromRGB(170, 105, 255) or Color3.fromRGB(60, 50, 90))
				})
			end
			l:Save(R, k)
			if typeof(c) == "function" then
				pcall(c, k)
			end
		end)
		return function()
			return k
		end
	end
	function h.MakeMiniSlider(s, e, Y, R, L, p, c, A, z, g)
		z = z or 23
		c = c or .05
		g = g == true
		l:RegisterKey(Y)
		local j = l:Get(Y, p)
		if j ~= nil then
			p = j
		end
		p = math.clamp(p, R, L)
		local r = o and 16 or 12
		local h = o and 20 or 14
		local function y(s)
			return math.floor(s / c + .5) * c
		end
		local function Z(s)
			return math.floor(s * 100 + .5) .. "%"
		end
		local w
		local a = s
		while a do
			if a:IsA("ScrollingFrame") then
				w = a
				break
			end
			a = a.Parent
		end
		local f = E("Frame", {
			BackgroundColor3 = Color3.fromRGB(18, 12, 30),
			BackgroundTransparency = .2;
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, o and 52 or 48),
			Active = true,
			ZIndex = z,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 8)
				})
			}
		}, s)
		E("UIStroke", {
			Color = Color3.fromRGB(140, 90, 220),
			Transparency = .7,
			Thickness = 1;
			ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
		}, f)
		E("Frame", {
			BackgroundColor3 = Color3.fromRGB(160, 100, 255);
			BackgroundTransparency = .15,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, .5, - 12),
			Size = UDim2.new(0, 3, 0, 24);
			ZIndex = z + 1;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 170, 255));
						ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 55, 210))
					}),
					Rotation = 90
				})
			}
		}, f)
		E("TextLabel", {
			BackgroundTransparency = 1;
			Position = UDim2.new(0, 14, 0, 6);
			Size = UDim2.new(1, - 70, 0, 14),
			Font = Enum.Font["GothamBold"],
			Text = e;
			TextColor3 = Color3.fromRGB(215, 185, 255),
			TextSize = 11;
			TextXAlignment = Enum.TextXAlignment["Left"];
			ZIndex = z + 1
		}, f)
		local H = E("TextLabel", {
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.new(1, - 10, 0, 6);
			Size = UDim2.new(0, 44, 0, 14);
			Font = Enum.Font["GothamBold"];
			Text = Z(p);
			TextColor3 = Color3.fromRGB(192, 132, 252),
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment["Right"];
			ZIndex = z + 1
		}, f)
		local k = E("Frame", {
			BackgroundColor3 = Color3.fromRGB(10, 10, 16),
			BackgroundTransparency = .1;
			Position = UDim2.new(0, 12, 0, o and 30 or 28),
			Size = UDim2.new(1, - 24, 0, o and 14 or 10);
			Active = true;
			ZIndex = z + 2;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIStroke", {
					Color = Color3.fromRGB(140, 90, 220);
					Transparency = .72,
					Thickness = 1;
					ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
				})
			}
		}, f)
		local B = E("Frame", {
			BackgroundColor3 = Color3.fromRGB(160, 100, 255);
			BackgroundTransparency = 0,
			Size = UDim2.new(((p - R)) / ((L - R)), 0, 1, 0),
			ZIndex = z + 3;
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				}),
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(139, 92, 246));
						ColorSequenceKeypoint.new(1, Color3.fromRGB(216, 180, 254))
					})
				})
			}
		}, k)
		local N = E("Frame", {
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			AnchorPoint = Vector2.new(.5, .5);
			Position = UDim2.new(((p - R)) / ((L - R)), 0, .5, 0);
			Size = UDim2.new(0, r, 0, r),
			Active = true,
			ZIndex = z + 4,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIStroke", {
					Color = Color3.fromRGB(192, 132, 252);
					Transparency = .3;
					Thickness = 1.5;
					ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
				})
			}
		}, k)
		E("TextButton", {
			Name = "TouchHitbox";
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(.5, .5);
			Position = UDim2.new(.5, 0, .5, 0);
			Size = UDim2.new(0, math.max(r + 14, 28), 0, math.max(r + 14, 28));
			Text = "",
			ZIndex = z + 5
		}, N)
		local u = p
		local I = false
		local P = nil
		local function m(s, b)
			if not A then
				return
			end
			if g then
				A(s, b)
			elseif b then
				A(s, true)
			end
		end
		local function X(s, e)
			e = e ~= false
			s = y(math.clamp(s, R, L))
			u = s
			local M = ((s - R)) / ((L - R))
			local p = UDim2.new(M, 0, 1, 0)
			local c = UDim2.new(M, 0, .5, 0)
			if e then
				b:Tween(B, {
					Size = p
				}, .12, Enum.EasingStyle["Quint"])
				b:Tween(N, {
					Position = c
				}, .12, Enum.EasingStyle["Quint"])
			else
				B.Size = p
				N.Position = c
			end
			H.Text = Z(s)
			if e then
				l:Save(Y, s)
			end
			m(s, e)
		end
		local function x(s)
			local b = math.clamp(((s - k.AbsolutePosition["X"])) / k.AbsoluteSize["X"], 0, 1)
			X(R + ((L - R)) * b, false)
		end
		local C = nil
		local function d(s)
			if not I then
				return
			end
			if s ~= C then
				return
			end
			I = false
			C = nil
			P = nil
			x9 = false
			if w then
				w.ScrollingEnabled = true
			end
			b:Tween(N, {
				Size = UDim2.new(0, r, 0, r)
			}, .15, Enum.EasingStyle["Quint"])
			l:Save(Y, u)
			m(u, true)
		end
		local function t(s)
			if C ~= nil then
				return
			end
			if s.UserInputType == Enum.UserInputType["Touch"] or s.UserInputType == Enum.UserInputType["MouseButton1"] then
				I = true
				C = s
				P = s.UserInputType
				x9 = true
				if w then
					w.ScrollingEnabled = false
				end
				x(s.Position["X"])
				b:Tween(N, {
					Size = UDim2.new(0, h, 0, h)
				}, .12, Enum.EasingStyle["Back"])
			end
		end
		k.InputBegan:Connect(t)
		N.InputBegan:Connect(t)
		local T = N:FindFirstChild("TouchHitbox")
		if T then
			T.InputBegan:Connect(t)
		end
		f.InputBegan:Connect(function(s)
			if s.UserInputType == Enum.UserInputType["Touch"] or s.UserInputType == Enum.UserInputType["MouseButton1"] then
				local b = s.Position["Y"] - f.AbsolutePosition["Y"]
				if b >= ((o and 26 or 24)) then
					t(s)
				end
			end
		end)
		M.InputChanged:Connect(function(s)
			if not I or not C then
				return
			end
			if s == C or (C.UserInputType == Enum.UserInputType["MouseButton1"] and s.UserInputType == Enum.UserInputType["MouseMovement"]) then
				x(s.Position["X"])
			end
		end)
		M.InputEnded:Connect(function(s)
			if s == C then
				d(s)
			end
		end)
		X(p, true)
		return function()
			return u
		end
	end
	function h.MakeKeybindRow(s, b, e, Y)
		local R = E("Frame", {
			BackgroundColor3 = Color3.fromRGB(18, 12, 30),
			BackgroundTransparency = .2,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 34),
			ZIndex = 23,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 8)
				})
			}
		}, s)
		E("UIStroke", {
			Color = Color3.fromRGB(140, 90, 220),
			Transparency = .7,
			Thickness = 1,
			ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
		}, R)
		E("TextLabel", {
			BackgroundTransparency = 1;
			Position = UDim2.new(0, 14, 0, 0),
			Size = UDim2.new(1, - 90, 1, 0),
			Font = Enum.Font["GothamBold"];
			Text = b;
			TextColor3 = Color3.fromRGB(215, 185, 255),
			TextSize = 11;
			TextXAlignment = Enum.TextXAlignment["Left"];
			ZIndex = 24
		}, R)
		k9 = E("TextLabel", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, .5),
			Position = UDim2.new(1, - 10, .5, 0);
			Size = UDim2.new(0, 72, 0, 14);
			Font = Enum.Font["GothamBold"];
			Text = f9.Name,
			TextColor3 = Color3.fromRGB(192, 132, 252);
			TextSize = 10;
			TextTruncate = Enum.TextTruncate["AtEnd"],
			TextXAlignment = Enum.TextXAlignment["Right"];
			ZIndex = 24
		}, R)
		local M = E("TextButton", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0),
			Text = "",
			ZIndex = 25
		}, R)
		M.MouseButton1Click:Connect(function()
			H9 = true
			k9.Text = "..."
		end)
	end
	local sw = h.MakeMiniToggle(J9, "Auto Save changes", "_opt_AutoSave", true)
	local bw = h.MakeMiniToggle(J9, "Auto Translate UI", "_opt_AutoTranslate", false)
	h.MakeMiniSlider(J9, "UI Scale", "_opt_UIScale", O, U, n, s9, function(s, b)
		if b then
			h.ApplyUIScale(s)
		else
			h.SetUIScalePreview(s)
		end
	end, nil, true)
	h.MakeKeybindRow(J9, "UI Keybind", "_opt_UIKeybind", "RightControl")
	local ew = {
		"English";
		"Filipino",
		"Hindi";
		"Turkish",
		"Indonesian";
		"Spanish";
		"French",
		"German";
		"Japanese";
		"Korean";
		"Vietnamese",
		"Thai";
		"Russian";
		"Portuguese",
		"Chinese Simplified",
		"Chinese Traditional";
		"Arabic",
		"Italian";
		"Polish",
		"Dutch",
		"Ukrainian";
		"Malay",
		"Bengali",
		"Urdu";
		"Persian",
		"Romanian",
		"Czech",
		"Greek";
		"Swedish";
		"Hungarian",
		"Danish";
		"Finnish",
		"Norwegian";
		"Hebrew";
		"Slovak";
		"Bulgarian",
		"Croatian",
		"Serbian",
		"Lithuanian";
		"Latvian";
		"Slovenian"
	}
	local Yw = 26
	local Rw = 3
	local Mw = 8
	local Lw = 4
	local pw = 30
	local cw = 6
	local Aw = 10
	local zw = ""
	local gw = false
	local jw = E("Frame", {
		BackgroundColor3 = Color3.fromRGB(14, 10, 24),
		BackgroundTransparency = .2;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 0, 34),
		ZIndex = 23,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 7)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220);
				Transparency = .7;
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}),
			E("TextLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 14, 0, 0);
				Size = UDim2.new(.45, 0, 1, 0),
				Font = Enum.Font["GothamBold"];
				Text = "Language";
				TextColor3 = Color3.fromRGB(155, 130, 195);
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment["Left"];
				ZIndex = 24
			})
		}
	}, J9)
	local rw = l:Get("_opt_Language", "English")
	local hw = E("TextLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, .5),
		Position = UDim2.new(1, - 30, .5, 0);
		Size = UDim2.new(0, 130, 0, 20);
		Font = Enum.Font["GothamBold"],
		Text = rw,
		TextColor3 = Color3.fromRGB(192, 132, 252);
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment["Right"];
		ZIndex = 24
	}, jw)
	E("TextLabel", {
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(1, .5);
		Position = UDim2.new(1, - 10, .5, 0);
		Size = UDim2.new(0, 14, 0, 14),
		Font = Enum.Font["GothamBold"];
		Text = "\226\128\186",
		TextColor3 = Color3.fromRGB(192, 132, 252);
		TextSize = 14,
		ZIndex = 24
	}, jw)
	local lw = E("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0;
		AnchorPoint = Vector2.new(.5, 0),
		Position = UDim2.new(.5, 0, 0, 0);
		Size = UDim2.new(1, - ((Aw * 2)), 0, 0);
		ClipsDescendants = true;
		ZIndex = 24
	}, J9)
	local yw = E("TextBox", {
		BackgroundColor3 = Color3.fromRGB(18, 13, 30);
		BackgroundTransparency = .1;
		BorderSizePixel = 0;
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 0, pw),
		Font = Enum.Font["GothamBold"],
		PlaceholderText = "Search language...";
		Text = "",
		TextColor3 = Color3.fromRGB(230, 230, 230);
		PlaceholderColor3 = Color3.fromRGB(120, 110, 145),
		TextSize = 11;
		ClearTextOnFocus = false;
		Visible = false;
		ZIndex = 30;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 7)
			});
			E("UIPadding", {
				PaddingLeft = UDim.new(0, 10);
				PaddingRight = UDim.new(0, 10)
			})
		}
	}, lw)
	local Zw = E("ScrollingFrame", {
		BackgroundColor3 = Color3.fromRGB(14, 10, 20);
		BackgroundTransparency = .05,
		BorderSizePixel = 0;
		Position = UDim2.new(0, 0, 0, pw + cw);
		Size = UDim2.new(1, 0, 0, 0);
		CanvasSize = UDim2.new(0, 0, 0, 0);
		ScrollBarThickness = 0,
		ScrollBarImageTransparency = 1;
		ScrollingDirection = Enum.ScrollingDirection["Y"];
		AutomaticCanvasSize = Enum.AutomaticSize["None"];
		ClipsDescendants = true,
		ZIndex = 24;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 7)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220);
				Transparency = .55;
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, lw)
	E("UIListLayout", {
		SortOrder = Enum.SortOrder["LayoutOrder"],
		Padding = UDim.new(0, Rw)
	}, Zw)
	E("UIPadding", {
		PaddingTop = UDim.new(0, 4),
		PaddingBottom = UDim.new(0, 4);
		PaddingLeft = UDim.new(0, 4);
		PaddingRight = UDim.new(0, 4)
	}, Zw)
	function h.GetFilteredLanguages()
		if zw == "" then
			return table.clone(ew)
		end
		local s = string.lower(zw)
		local b = {}
		for e, Y in ipairs(ew) do
			if string.find(string.lower(Y), s, 1, true) then
				table.insert(b, Y)
			end
		end
		return b
	end
	function h.CalcListHeight(s)
		local b = math.min(s, Lw)
		if b == 0 then
			return 0
		end
		return (Mw + b * Yw) + ((b - 1)) * Rw
	end
	function h.SetCanvasHeight(s)
		local b = (Mw + s * Yw) + math.max(s - 1, 0) * Rw
		local e = UnscaledLayout(Zw.AbsoluteSize["Y"])
		local Y = b > e + 1
		Zw.CanvasSize = UDim2.new(0, 0, 0, Y and b or 0)
		Zw.ScrollingEnabled = Y
		Zw.ElasticBehavior = Enum.ElasticBehavior["Never"]
		if not Y then
			Zw.CanvasPosition = Vector2.new(0, 0)
		end
	end
	function h.BuildLangItems()
		for s, b in ipairs(Zw:GetChildren()) do
			if b:IsA("TextButton") then
				b:Destroy()
			end
		end
		local s = l:Get("_opt_Language", "English")
		local e = h.GetFilteredLanguages()
		for e, Y in ipairs(e) do
			local R = (Y == s)
			local M = E("TextButton", {
				BackgroundColor3 = R and Color3.fromRGB(30, 18, 52) or Color3.fromRGB(18, 13, 30),
				BackgroundTransparency = R and .2 or .5,
				BorderSizePixel = 0,
				Size = UDim2.new(1, - 2, 0, Yw),
				LayoutOrder = e;
				Text = "";
				AutoButtonColor = false;
				ZIndex = 25;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 5)
					}),
					E("UIStroke", {
						Color = Color3.fromRGB(140, 90, 220);
						Transparency = R and .42 or .82;
						Thickness = 1;
						ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
					});
					E("Frame", {
						BackgroundColor3 = Color3.fromRGB(160, 100, 255),
						BackgroundTransparency = R and 0 or 1;
						BorderSizePixel = 0;
						Position = UDim2.new(0, 0, .5, - 9),
						Size = UDim2.new(0, 3, 0, 18);
						ZIndex = 26;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(1, 0)
							})
						}
					}),
					E("TextLabel", {
						BackgroundTransparency = 1;
						Position = UDim2.new(0, 12, 0, 0);
						Size = UDim2.new(1, - 24, 1, 0);
						Font = Enum.Font["GothamBold"];
						Text = Y;
						TextColor3 = R and Color3.fromRGB(215, 185, 255) or Color3.fromRGB(175, 155, 210);
						TextSize = 11;
						TextXAlignment = Enum.TextXAlignment["Left"];
						ZIndex = 26
					})
				}
			}, Zw)
			M.MouseButton1Click:Connect(function()
				l:Save("_opt_Language", Y)
				hw.Text = Y
				gw = false
				zw = ""
				yw.Text = ""
				yw.Visible = false
				h.BuildLangItems()
				local s = h.CalcListHeight(# h.GetFilteredLanguages())
				Zw.Size = UDim2.new(1, 0, 0, s)
				b:Tween(lw, {
					Size = UDim2.new(1, - ((Aw * 2)), 0, 0)
				}, .22, Enum.EasingStyle["Quint"], Enum.EasingDirection["In"])
				b:Tween(Zw, {
					Size = UDim2.new(1, 0, 0, 0)
				}, .22, Enum.EasingStyle["Quint"], Enum.EasingDirection["In"])
				if bw() then
					local s = W.Languages[Y]
					if s then
						task.spawn(ApplyTranslation, s)
					end
				end
			end)
		end
		h.SetCanvasHeight(# e)
	end;
	(yw:GetPropertyChangedSignal("Text")):Connect(function()
		zw = yw.Text
		h.BuildLangItems()
		if gw then
			local s = h.GetFilteredLanguages()
			local b = h.CalcListHeight(# s)
			Zw.Size = UDim2.new(1, 0, 0, b)
			lw.Size = UDim2.new(1, - ((Aw * 2)), 0, (pw + cw) + b)
		end
	end)
	h.BuildLangItems()
	local ww = E("TextButton", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = "",
		ZIndex = 25
	}, jw)
	ww.MouseButton1Click:Connect(function()
		gw = not gw
		zw = ""
		yw.Text = ""
		yw.Visible = gw
		h.BuildLangItems()
		local s = h.GetFilteredLanguages()
		local e = h.CalcListHeight(# s)
		local Y = gw and ((pw + cw) + e) or 0
		local R = gw and Enum.EasingDirection["Out"] or Enum.EasingDirection["In"]
		b:Tween(lw, {
			Size = UDim2.new(1, - ((Aw * 2)), 0, Y)
		}, .25, Enum.EasingStyle["Quint"], R)
		b:Tween(Zw, {
			Size = UDim2.new(1, 0, 0, e)
		}, .25, Enum.EasingStyle["Quint"], R)
	end)
	local aw = l:Get("_opt_AutoTranslate", false)
	local fw = l:Get("_opt_Language", "English")
	task.spawn(function()
		while true do
			task.wait(.45)
			local s = bw()
			local b = l:Get("_opt_Language", "English")
			if s ~= aw or (s and b ~= fw) then
				aw = s
				fw = b
				local e = W.Languages[b]
				if s and (e and e ~= "en") then
					ApplyTranslation(e)
				elseif not s then
					ApplyTranslation("en")
				end
			end
		end
	end)
	task.defer(function()
		if l:Get("_opt_AutoTranslate", false) then
			local s = l:Get("_opt_Language", "English")
			local b = W.Languages[s]
			if b and b ~= "en" then
				ApplyTranslation(b)
			end
		end
	end)
	E("Frame", {
		BackgroundColor3 = Color3.fromRGB(100, 60, 180);
		BackgroundTransparency = .82;
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 1),
		ZIndex = 23;
		Children = {
			E("UIGradient", {
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1),
					NumberSequenceKeypoint.new(.15, 0),
					NumberSequenceKeypoint.new(.85, 0);
					NumberSequenceKeypoint.new(1, 1)
				})
			})
		}
	}, J9)
	l.IsAutoSave = sw
	local Hw = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(22, 14, 38),
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 36),
		Text = "";
		AutoButtonColor = false,
		ZIndex = 23,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 8)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220),
				Transparency = .55,
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			});
			E("TextLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 12, 0, 0);
				Size = UDim2.new(1, - 40, 1, 0),
				Font = Enum.Font["GothamBold"],
				Text = "Open Save Manager",
				TextColor3 = Color3.fromRGB(210, 180, 255);
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment["Left"],
				ZIndex = 24
			}),
			E("TextLabel", {
				BackgroundTransparency = 1;
				AnchorPoint = Vector2.new(1, .5);
				Position = UDim2.new(1, - 10, .5, 0);
				Size = UDim2.new(0, 16, 0, 16);
				Font = Enum.Font["GothamBold"],
				Text = "\226\128\186";
				TextColor3 = Color3.fromRGB(192, 132, 252),
				TextSize = 14;
				ZIndex = 24
			})
		}
	}, J9)
	Hw.MouseEnter:Connect(function()
		b:Tween(Hw, {
			BackgroundColor3 = Color3.fromRGB(30, 18, 52)
		}, .15, Enum.EasingStyle["Quint"])
	end)
	Hw.MouseLeave:Connect(function()
		b:Tween(Hw, {
			BackgroundColor3 = Color3.fromRGB(22, 14, 38)
		}, .2, Enum.EasingStyle["Quint"])
	end)
	Hw.MouseButton1Click:Connect(function()
		CircleClick(Hw, z.X, z.Y)
		D9()
		O9()
	end)
	E("TextLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 28);
		Font = Enum.Font["Gotham"];
		Text = "Saves are stored per Roblox account";
		TextColor3 = Color3.fromRGB(130, 110, 170),
		TextSize = 9;
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment["Center"],
		ZIndex = 23
	}, J9)
	local kw = l:Get("_saveSlots", {})
	local Ew = {}
	local Bw = nil
	local Nw = false
	local uw = ""
	local Iw = E("Frame", {
		BackgroundColor3 = Color3.fromRGB(18, 12, 30),
		BackgroundTransparency = .2;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 0, 52),
		ZIndex = 23;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 8)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220),
				Transparency = .65;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}),
			E("UIGradient", {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(28, 18, 48)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(14, 10, 24))
				});
				Rotation = 135
			})
		}
	}, K9)
	local Pw = E("TextLabel", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 10, 0, 7),
		Size = UDim2.new(1, - 20, 0, 16),
		Font = Enum.Font["GothamBold"],
		RichText = true,
		TextTruncate = Enum.TextTruncate["AtEnd"],
		Text = string.format("Account: <font color=\"#C084FC\"><b>%s</b></font>", l:GetPlayerName()),
		TextColor3 = Color3.fromRGB(225, 200, 255);
		TextSize = 10;
		TextXAlignment = Enum.TextXAlignment["Left"];
		ZIndex = 24
	}, Iw)
	local mw = E("TextLabel", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 10, 0, 26),
		Size = UDim2.new(1, - 20, 0, 16);
		Font = Enum.Font["Gotham"];
		RichText = true,
		TextTruncate = Enum.TextTruncate["AtEnd"];
		Text = string.format("Profile: <font color=\"#C084FC\"><b>%s</b></font>  \226\128\162  ID: <font color=\"#34D399\">%s</font>", l.ActiveProfile or "[Auto]", l:GetGameId());
		TextColor3 = Color3.fromRGB(165, 140, 205);
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment["Left"];
		ZIndex = 24
	}, Iw)
	local Xw = E("Frame", {
		BackgroundTransparency = 1;
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 28);
		ZIndex = 23;
		Children = {
			E("UIListLayout", {
				FillDirection = Enum.FillDirection["Horizontal"],
				SortOrder = Enum.SortOrder["LayoutOrder"],
				Padding = UDim.new(0, 4)
			})
		}
	}, K9)
	local xw = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(70, 35, 150),
		BackgroundTransparency = .35;
		BorderSizePixel = 0,
		Size = UDim2.new(.32, 0, 1, 0),
		Text = "Quick Save";
		TextColor3 = Color3.fromRGB(215, 185, 255);
		Font = Enum.Font["GothamBold"],
		TextSize = 10;
		AutoButtonColor = false;
		LayoutOrder = 1,
		ZIndex = 24,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(150, 100, 235),
				Transparency = .6;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Xw)
	local Cw = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(80, 50, 25),
		BackgroundTransparency = .4,
		BorderSizePixel = 0,
		Size = UDim2.new(.32, 0, 1, 0);
		Text = "Reset All",
		TextColor3 = Color3.fromRGB(255, 190, 110);
		Font = Enum.Font["GothamBold"];
		TextSize = 10;
		AutoButtonColor = false;
		LayoutOrder = 2,
		ZIndex = 24;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(255, 170, 80),
				Transparency = .65;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Xw)
	local dw = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(110, 18, 36),
		BackgroundTransparency = .4,
		BorderSizePixel = 0,
		Size = UDim2.new(.33, 0, 1, 0);
		Text = "Clear All";
		TextColor3 = Color3.fromRGB(255, 110, 130);
		Font = Enum.Font["GothamBold"];
		TextSize = 10,
		AutoButtonColor = false;
		LayoutOrder = 3,
		ZIndex = 24,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(255, 95, 120),
				Transparency = .65,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Xw)
	xw.MouseEnter:Connect(function()
		b:Tween(xw, {
			BackgroundTransparency = .15
		}, .12)
	end)
	xw.MouseLeave:Connect(function()
		b:Tween(xw, {
			BackgroundTransparency = .35
		}, .18)
	end)
	Cw.MouseEnter:Connect(function()
		b:Tween(Cw, {
			BackgroundTransparency = .2
		}, .12)
	end)
	Cw.MouseLeave:Connect(function()
		b:Tween(Cw, {
			BackgroundTransparency = .4
		}, .18)
	end)
	dw.MouseEnter:Connect(function()
		b:Tween(dw, {
			BackgroundTransparency = .2
		}, .12)
	end)
	dw.MouseLeave:Connect(function()
		b:Tween(dw, {
			BackgroundTransparency = .4
		}, .18)
	end)
	xw.MouseButton1Click:Connect(function()
		CircleClick(xw, z.X, z.Y)
		local b = l:GetSnapshot()
		local e = l:Get("_saveSlots", {})
		local Y = l.ActiveProfile or "[Auto]"
		local R = false
		for s, e in ipairs(e) do
			if e.name == Y then
				e.data = b
				e.updated = os.date("%Y-%m-%d %H:%M")
				R = true
				break
			end
		end
		if not R then
			table.insert(e, {
				name = Y;
				data = b,
				created = os.date("%Y-%m-%d %H:%M");
				updated = os.date("%Y-%m-%d %H:%M")
			})
		end
		l:Save("_saveSlots", e)
		s.Notification:Notify({
			Title = "Save Manager";
			Description = ("Saved state to \"") .. (Y .. "\".")
		}, {
			Time = 2
		})
		RefreshSlots()
	end)
	Cw.MouseButton1Click:Connect(function()
		CircleClick(Cw, z.X, z.Y)
		l:ResetToDefaults(true)
		s.Notification:Notify({
			Title = "Save Manager",
			Description = "All controls have been reset to default values."
		}, {
			Time = 3
		})
	end)
	dw.MouseButton1Click:Connect(function()
		CircleClick(dw, z.X, z.Y)
		l:ClearAll()
		l:Save("_saveSlots", {})
		l:Save("_autoLoadTarget", nil)
		l.ActiveProfile = "[Auto]"
		if mw then
			mw.Text = "Active Profile: <font color=\"#C084FC\"><b>[Auto]</b></font>"
		end
		RefreshSlots()
		s.Notification:Notify({
			Title = "Save Manager",
			Description = "All saved profiles and data have been cleared."
		}, {
			Time = 3
		})
	end)
	local tw = E("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize["Y"];
		ZIndex = 22;
		Children = {
			E("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment["Center"];
				SortOrder = Enum.SortOrder["LayoutOrder"],
				Padding = UDim.new(0, 4)
			});
			E("UIPadding", {
				PaddingTop = UDim.new(0, 2),
				PaddingBottom = UDim.new(0, 4)
			})
		}
	}, K9)
	local Tw = E("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize["Y"];
		Visible = false;
		ZIndex = 22,
		Children = {
			E("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment["Center"],
				SortOrder = Enum.SortOrder["LayoutOrder"],
				Padding = UDim.new(0, 4)
			})
		}
	}, K9)
	local Ww = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(20, 14, 34);
		BackgroundTransparency = 0;
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 26);
		Text = "";
		AutoButtonColor = false;
		LayoutOrder = 1;
		ZIndex = 23;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220);
				Transparency = .6;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}),
			E("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 8, 0, 0);
				Size = UDim2.new(0, 16, 1, 0),
				Font = Enum.Font["GothamBold"];
				Text = "\226\128\185",
				TextColor3 = Color3.fromRGB(192, 132, 252),
				TextSize = 16,
				TextXAlignment = Enum.TextXAlignment["Center"];
				ZIndex = 24
			}),
			E("TextLabel", {
				Name = "BackLabel";
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 28, 0, 0);
				Size = UDim2.new(1, - 34, 1, 0),
				Font = Enum.Font["GothamBold"];
				Text = "Back to Profiles",
				TextColor3 = Color3.fromRGB(210, 180, 255);
				TextSize = 11;
				TextXAlignment = Enum.TextXAlignment["Left"];
				ZIndex = 24
			})
		}
	}, Tw)
	local Gw = E("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize["Y"],
		LayoutOrder = 2,
		ZIndex = 23,
		Children = {
			E("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment["Center"],
				SortOrder = Enum.SortOrder["LayoutOrder"],
				Padding = UDim.new(0, 4)
			});
			E("UIPadding", {
				PaddingTop = UDim.new(0, 4),
				PaddingBottom = UDim.new(0, 4)
			})
		}
	}, Tw)
	function h.SectionLabel(s, b)
		return E("TextLabel", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 13);
			LayoutOrder = b;
			Font = Enum.Font["GothamBold"],
			Text = s;
			TextColor3 = Color3.fromRGB(140, 105, 200);
			TextSize = 9;
			TextXAlignment = Enum.TextXAlignment["Left"],
			ZIndex = 24
		}, Gw)
	end
	h.SectionLabel("PROFILE NAME", 1)
	local vw = E("Frame", {
		BackgroundColor3 = Color3.fromRGB(16, 11, 26),
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 0, 28);
		LayoutOrder = 2;
		ZIndex = 23,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(130, 80, 210),
				Transparency = .68,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Gw)
	local Fw = E("TextBox", {
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 10, 0, 0),
		Size = UDim2.new(1, - 70, 1, 0),
		Font = Enum.Font["GothamBold"],
		Text = "",
		TextColor3 = Color3.fromRGB(220, 200, 255);
		PlaceholderText = "Enter profile name...",
		PlaceholderColor3 = Color3.fromRGB(110, 85, 150),
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment["Left"];
		ClearTextOnFocus = false,
		ZIndex = 24
	}, vw)
	local Sw = E("TextButton", {
		AnchorPoint = Vector2.new(1, .5),
		BackgroundColor3 = Color3.fromRGB(80, 45, 160);
		BackgroundTransparency = .3,
		BorderSizePixel = 0;
		Position = UDim2.new(1, - 4, .5, 0),
		Size = UDim2.new(0, 54, 0, 20);
		Text = "Rename";
		TextColor3 = Color3.fromRGB(220, 190, 255);
		Font = Enum.Font["GothamBold"],
		TextSize = 10;
		AutoButtonColor = false,
		Visible = false,
		ZIndex = 25;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 5)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(150, 100, 230);
				Transparency = .5;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, vw)
	h.SectionLabel("AUTO LOAD SETTING", 3)
	local Jw = E("Frame", {
		BackgroundColor3 = Color3.fromRGB(16, 11, 26);
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 0, 30),
		LayoutOrder = 4;
		ZIndex = 23,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(130, 80, 210),
				Transparency = .68,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}),
			E("TextLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, - 60, 1, 0),
				Font = Enum.Font["GothamBold"],
				Text = "Auto Load this Profile on Game Start";
				TextColor3 = Color3.fromRGB(200, 175, 240),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment["Left"],
				ZIndex = 24
			})
		}
	}, Gw)
	local Qw = E("Frame", {
		AnchorPoint = Vector2.new(1, .5);
		BackgroundColor3 = Color3.fromRGB(14, 9, 26);
		BorderSizePixel = 0,
		Position = UDim2.new(1, - 8, .5, 0);
		Size = UDim2.new(0, 36, 0, 18),
		ZIndex = 24,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(1, 0)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(130, 80, 210),
				Transparency = .7;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Jw)
	local iw = E("Frame", {
		AnchorPoint = Vector2.new(0, .5);
		Position = UDim2.new(0, 3, .5, 0);
		Size = UDim2.new(0, 12, 0, 12);
		BorderSizePixel = 0,
		ZIndex = 25;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(1, 0)
			}),
			E("UIGradient", {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(110, 90, 140));
					ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 45, 85))
				});
				Rotation = 135
			})
		}
	}, Qw)
	local Dw = E("TextButton", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Text = "";
		ZIndex = 26
	}, Jw)
	h.SectionLabel("DATA INSPECTOR & PREVIEW", 5)
	local qw = E("TextBox", {
		BackgroundColor3 = Color3.fromRGB(10, 8, 16),
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 0, 22),
		LayoutOrder = 6,
		Font = Enum.Font["Gotham"],
		PlaceholderText = "Search saved keys...";
		PlaceholderColor3 = Color3.fromRGB(110, 85, 150);
		Text = "",
		TextColor3 = Color3.fromRGB(215, 190, 255);
		TextSize = 10;
		TextXAlignment = Enum.TextXAlignment["Left"];
		ClearTextOnFocus = false;
		ZIndex = 24;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 5)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(120, 75, 200),
				Transparency = .75,
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}),
			E("UIPadding", {
				PaddingLeft = UDim.new(0, 8)
			})
		}
	}, Gw)
	local Vw = E("ScrollingFrame", {
		BackgroundColor3 = Color3.fromRGB(9, 6, 16),
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 0, 74);
		LayoutOrder = 7,
		ScrollBarThickness = 0;
		ScrollBarImageTransparency = 1,
		AutomaticCanvasSize = Enum.AutomaticSize["Y"],
		ElasticBehavior = Enum.ElasticBehavior["WhenScrollable"];
		CanvasSize = UDim2.new(0, 0, 0, 0),
		ZIndex = 23;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(120, 75, 200),
				Transparency = .72,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}),
			E("UIListLayout", {
				SortOrder = Enum.SortOrder["LayoutOrder"];
				Padding = UDim.new(0, 2)
			}),
			E("UIPadding", {
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 6);
				PaddingTop = UDim.new(0, 5);
				PaddingBottom = UDim.new(0, 5)
			})
		}
	}, Gw)
	h.SectionLabel("ACTIONS", 8)
	local Kw = E("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 26),
		LayoutOrder = 9;
		ZIndex = 23,
		Children = {
			E("UIListLayout", {
				FillDirection = Enum.FillDirection["Horizontal"],
				HorizontalAlignment = Enum.HorizontalAlignment["Center"];
				VerticalAlignment = Enum.VerticalAlignment["Center"];
				SortOrder = Enum.SortOrder["LayoutOrder"],
				Padding = UDim.new(0, 4)
			})
		}
	}, Gw)
	local ow = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(80, 40, 170),
		BackgroundTransparency = .25,
		BorderSizePixel = 0;
		Size = UDim2.new(.48, 0, 1, 0);
		LayoutOrder = 1;
		Text = "Load & Apply",
		TextColor3 = Color3.fromRGB(230, 205, 255),
		Font = Enum.Font["GothamBold"];
		TextSize = 10;
		AutoButtonColor = false,
		ZIndex = 24;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(190, 150, 255);
				Transparency = .5,
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Kw)
	local Ow = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(40, 80, 140),
		BackgroundTransparency = .25;
		BorderSizePixel = 0,
		Size = UDim2.new(.48, 0, 1, 0),
		LayoutOrder = 2,
		Text = "Overwrite Current";
		TextColor3 = Color3.fromRGB(180, 220, 255),
		Font = Enum.Font["GothamBold"],
		TextSize = 10;
		AutoButtonColor = false,
		ZIndex = 24;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(140, 190, 255);
				Transparency = .5;
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Kw)
	local Uw = E("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 26);
		LayoutOrder = 10,
		ZIndex = 23;
		Children = {
			E("UIListLayout", {
				FillDirection = Enum.FillDirection["Horizontal"];
				HorizontalAlignment = Enum.HorizontalAlignment["Center"];
				VerticalAlignment = Enum.VerticalAlignment["Center"],
				SortOrder = Enum.SortOrder["LayoutOrder"];
				Padding = UDim.new(0, 4)
			})
		}
	}, Gw)
	local nw = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(24, 18, 40),
		BackgroundTransparency = .2;
		BorderSizePixel = 0,
		Size = UDim2.new(.32, 0, 1, 0),
		LayoutOrder = 1,
		Text = "Clone";
		TextColor3 = Color3.fromRGB(205, 180, 245);
		Font = Enum.Font["GothamBold"],
		TextSize = 10;
		AutoButtonColor = false;
		ZIndex = 24,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(130, 90, 210),
				Transparency = .65,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Uw)
	local sV = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(20, 75, 35),
		BackgroundTransparency = .25;
		BorderSizePixel = 0,
		Size = UDim2.new(.32, 0, 1, 0),
		LayoutOrder = 2;
		Text = "Export Code";
		TextColor3 = Color3.fromRGB(120, 240, 160),
		Font = Enum.Font["GothamBold"],
		TextSize = 10;
		AutoButtonColor = false;
		ZIndex = 24;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(90, 220, 130),
				Transparency = .6,
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Uw)
	local bV = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(110, 18, 36);
		BackgroundTransparency = .25;
		BorderSizePixel = 0;
		Size = UDim2.new(.32, 0, 1, 0),
		LayoutOrder = 3;
		Text = "Delete",
		TextColor3 = Color3.fromRGB(255, 110, 130);
		Font = Enum.Font["GothamBold"],
		TextSize = 10;
		AutoButtonColor = false;
		ZIndex = 24,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(255, 95, 120),
				Transparency = .6;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			})
		}
	}, Uw)
	local eV = E("TextLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 16);
		LayoutOrder = 9,
		Font = Enum.Font["GothamBold"],
		Text = "PROFILES & SLOTS",
		TextColor3 = Color3.fromRGB(150, 115, 215);
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment["Left"],
		ZIndex = 23
	}, tw)
	local YV = E("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize["Y"],
		LayoutOrder = 10;
		ZIndex = 23,
		Children = {
			E("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment["Center"];
				SortOrder = Enum.SortOrder["LayoutOrder"],
				Padding = UDim.new(0, 4)
			})
		}
	}, tw)
	local RV = E("Frame", {
		BackgroundColor3 = Color3.fromRGB(14, 10, 24);
		BackgroundTransparency = .2;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 0, 34);
		LayoutOrder = 11;
		ZIndex = 23;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 7)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220);
				Transparency = .7;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			});
			E("UIGradient", {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 18, 55));
					ColorSequenceKeypoint.new(1, Color3.fromRGB(14, 10, 24))
				}),
				Rotation = 135
			})
		}
	}, tw)
	local MV = E("TextBox", {
		BackgroundColor3 = Color3.fromRGB(8, 6, 14),
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		ClearTextOnFocus = false,
		Position = UDim2.new(0, 8, .5, - 10);
		Size = UDim2.new(1, - 82, 0, 20);
		PlaceholderText = "New profile name...";
		PlaceholderColor3 = Color3.fromRGB(110, 85, 150),
		Text = "",
		TextColor3 = Color3.fromRGB(220, 200, 255);
		Font = Enum.Font["Gotham"];
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment["Left"],
		ZIndex = 24;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 5)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(130, 80, 210),
				Transparency = .72;
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}),
			E("UIPadding", {
				PaddingLeft = UDim.new(0, 6)
			})
		}
	}, RV)
	local LV = E("TextButton", {
		AnchorPoint = Vector2.new(1, .5),
		BackgroundColor3 = Color3.fromRGB(80, 40, 160);
		BackgroundTransparency = .25;
		BorderSizePixel = 0;
		Position = UDim2.new(1, - 6, .5, 0),
		Size = UDim2.new(0, 62, 0, 22);
		Text = "+ Create",
		TextColor3 = Color3.fromRGB(220, 195, 255),
		Font = Enum.Font["GothamBold"],
		TextSize = 10,
		AutoButtonColor = false,
		ZIndex = 24,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			});
			E("UIGradient", {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 80, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 35, 150))
				});
				Rotation = 90
			})
		}
	}, RV)
	local pV = E("Frame", {
		BackgroundColor3 = Color3.fromRGB(12, 9, 22),
		BackgroundTransparency = .2;
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 34);
		LayoutOrder = 12,
		ZIndex = 23,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 7)
			}),
			E("UIStroke", {
				Color = Color3.fromRGB(80, 180, 120),
				Transparency = .7;
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			});
			E("UIGradient", {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 38, 28)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(12, 9, 22))
				});
				Rotation = 135
			})
		}
	}, tw)
	local cV = E("TextBox", {
		BackgroundColor3 = Color3.fromRGB(8, 6, 14);
		BackgroundTransparency = 0,
		BorderSizePixel = 0;
		ClearTextOnFocus = false,
		Position = UDim2.new(0, 8, .5, - 10),
		Size = UDim2.new(1, - 82, 0, 20),
		PlaceholderText = "Paste share code...",
		PlaceholderColor3 = Color3.fromRGB(80, 130, 100),
		Text = "",
		TextColor3 = Color3.fromRGB(160, 240, 200),
		Font = Enum.Font["Gotham"],
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment["Left"];
		ZIndex = 24;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 5)
			});
			E("UIStroke", {
				Color = Color3.fromRGB(80, 180, 120),
				Transparency = .72;
				Thickness = 1;
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			});
			E("UIPadding", {
				PaddingLeft = UDim.new(0, 6)
			})
		}
	}, pV)
	local AV = E("TextButton", {
		AnchorPoint = Vector2.new(1, .5),
		BackgroundColor3 = Color3.fromRGB(30, 120, 70),
		BackgroundTransparency = .3;
		BorderSizePixel = 0,
		Position = UDim2.new(1, - 6, .5, 0),
		Size = UDim2.new(0, 62, 0, 22);
		Text = "Import";
		TextColor3 = Color3.fromRGB(160, 250, 195);
		Font = Enum.Font["GothamBold"],
		TextSize = 10,
		AutoButtonColor = false;
		ZIndex = 24;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			});
			E("UIGradient", {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 200, 120));
					ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 100, 60))
				}),
				Rotation = 90
			})
		}
	}, pV)
	function h.ShowSettingsPage()
		Tw.Visible = false
		tw.Visible = true
		K9.CanvasPosition = Vector2.new(0, 0)
	end
	function h.ShowSlotPage(s)
		tw.Visible = false
		Tw.Visible = true
		K9.CanvasPosition = Vector2.new(0, 0)
		local b = l:Get("_saveSlots", {})
		local e = b[s]
		local Y = Ww:FindFirstChild("BackLabel")
		if Y and e then
			Y.Text = e.name or (("Slot ") .. s)
		end
	end
	function h.EncodeShareCode(s)
		local b, e = pcall(function()
			return JsonEncode(s)
		end)
		if b and e then
			return ("QH-SAVE:") .. e
		end
		return nil
	end
	function h.DecodeShareCode(s)
		if not s then
			return nil
		end
		s = (s:gsub("^%s+", "")):gsub("%s+$", "")
		if s:match("^QH%-SAVE:") then
			s = s:sub(9)
		end
		local b, e = pcall(function()
			return JsonDecode(s)
		end)
		if b and type(e) == "table" then
			return e
		end
		return nil
	end
	function h.UpdatePreview(s, b)
		for s, b in ipairs(Vw:GetChildren()) do
			if b:IsA("TextLabel") or b:IsA("Frame") then
				b:Destroy()
			end
		end
		if not s or not s.data then
			E("TextLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 16),
				Font = Enum.Font["Gotham"],
				Text = "(empty slot)";
				TextColor3 = Color3.fromRGB(110, 85, 140),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment["Left"];
				ZIndex = 24
			}, Vw)
			return
		end
		b = b and string.lower(b) or ""
		local e = 0
		for s, Y in pairs(s.data) do
			if b == "" or string.find(string.lower(tostring(s)), b, 1, true) or string.find(string.lower(tostring(Y)), b, 1, true) then
				e = e + 1
				if e > 40 then
					E("TextLabel", {
						BackgroundTransparency = 1;
						LayoutOrder = e;
						Size = UDim2.new(1, 0, 0, 14);
						Font = Enum.Font["Gotham"];
						Text = "\226\128\166 + more items",
						TextColor3 = Color3.fromRGB(130, 95, 170),
						TextSize = 9,
						ZIndex = 24
					}, Vw)
					break
				end
				local b = tostring(Y)
				if type(Y) == "table" then
					local s, e = pcall(JsonEncode, Y)
					b = s and e or "[table]"
				end
				if # b > 32 then
					b = b:sub(1, 30) .. "\226\128\166"
				end
				local R = "#88bb99"
				if type(Y) == "boolean" then
					R = Y and "#34D399" or "#F87171"
				elseif type(Y) == "number" then
					R = "#60A5FA"
				elseif type(Y) == "table" then
					R = "#FBBF24"
				end
				E("TextLabel", {
					BackgroundTransparency = 1,
					LayoutOrder = e;
					Size = UDim2.new(1, 0, 0, 14),
					Font = Enum.Font["Gotham"],
					RichText = true;
					Text = string.format("<font color=\"#C084FC\">%s</font> <font color=\"#6B7280\">=</font> <font color=\"%s\">%s</font>", tostring(s), R, b);
					TextSize = 10,
					TextXAlignment = Enum.TextXAlignment["Left"];
					ZIndex = 24
				}, Vw)
			end
		end
		if e == 0 then
			E("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 16);
				Font = Enum.Font["Gotham"],
				Text = b ~= "" and "(no matching keys)" or "(no data keys saved)";
				TextColor3 = Color3.fromRGB(110, 85, 140),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment["Left"];
				ZIndex = 24
			}, Vw)
		end
	end;
	(qw:GetPropertyChangedSignal("Text")):Connect(function()
		uw = qw.Text
		if Bw then
			local s = l:Get("_saveSlots", {})
			local b = s[Bw]
			if b then
				h.UpdatePreview(b, uw)
			end
		end
	end)
	function h.OpenSlotPanel(s)
		Bw = s
		Nw = true
		local b = l:Get("_saveSlots", {})
		local e = b[s]
		if not e then
			return
		end
		Fw.Text = e.name or (("Slot ") .. s)
		Sw.Visible = false
		qw.Text = ""
		uw = ""
		local Y = l:Get("_autoLoadTarget", nil)
		local R = (Y == e.name)
		Qw.BackgroundColor3 = R and Color3.fromRGB(90, 45, 170) or Color3.fromRGB(14, 9, 26)
		iw.Position = R and UDim2.new(0, 21, .5, 0) or UDim2.new(0, 3, .5, 0)
		local M = iw:FindFirstChildOfClass("UIGradient")
		if M then
			M.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, R and Color3.fromRGB(235, 205, 255) or Color3.fromRGB(110, 90, 140));
				ColorSequenceKeypoint.new(1, R and Color3.fromRGB(170, 105, 255) or Color3.fromRGB(55, 45, 85))
			})
		end
		h.UpdatePreview(e)
		h.ShowSlotPage(s)
	end
	function h.CloseSlotPanel()
		Nw = false
		Bw = nil
		h.ShowSettingsPage()
		RefreshSlots()
	end
	Ww.MouseButton1Click:Connect(function()
		CircleClick(Ww, z.X, z.Y)
		h.CloseSlotPanel()
	end)
	LV.MouseButton1Click:Connect(function()
		CircleClick(LV, z.X, z.Y)
		local b = l:Get("_saveSlots", {})
		if # b >= 10 then
			s.Notification:Notify({
				Title = "Save Manager",
				Description = "Maximum 10 profiles reached."
			}, {
				Time = 2
			})
			return
		end
		local e = MV.Text ~= "" and MV.Text or (("Profile ") .. (# b + 1))
		local Y = l:GetSnapshot()
		local R = {
			name = e;
			data = Y,
			created = os.date("%Y-%m-%d %H:%M");
			updated = os.date("%Y-%m-%d %H:%M")
		}
		table.insert(b, R)
		l:Save("_saveSlots", b)
		MV.Text = ""
		s.Notification:Notify({
			Title = "Save Manager";
			Description = ("Created profile \"") .. (e .. "\".")
		}, {
			Time = 2
		})
		RefreshSlots()
	end);
	(Fw:GetPropertyChangedSignal("Text")):Connect(function()
		if not Bw then
			return
		end
		local s = l:Get("_saveSlots", {})
		local b = s[Bw]
		if b then
			Sw.Visible = (Fw.Text ~= b.name and Fw.Text ~= "")
		end
	end)
	Sw.MouseButton1Click:Connect(function()
		if not Bw then
			return
		end
		local b = l:Get("_saveSlots", {})
		local e = b[Bw]
		if not e then
			return
		end
		local Y = e.name
		local R = Fw.Text ~= "" and Fw.Text or Y
		b[Bw].name = R
		if l:Get("_autoLoadTarget", nil) == Y then
			l:Save("_autoLoadTarget", R)
		end
		if l.ActiveProfile == Y then
			l.ActiveProfile = R
			if mw then
				mw.Text = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", R)
			end
		end
		l:Save("_saveSlots", b)
		Sw.Visible = false
		local M = Ww:FindFirstChild("BackLabel")
		if M then
			M.Text = R
		end
		s.Notification:Notify({
			Title = "Save Manager";
			Description = ("Renamed to \"") .. (R .. "\".")
		}, {
			Time = 2
		})
		RefreshSlots()
	end)
	Dw.MouseButton1Click:Connect(function()
		if not Bw then
			return
		end
		local e = l:Get("_saveSlots", {})
		local Y = e[Bw]
		if not Y then
			return
		end
		local R = l:Get("_autoLoadTarget", nil)
		local M = not ((R == Y.name))
		l:Save("_autoLoadTarget", M and Y.name or nil)
		b:Tween(iw, {
			Position = M and UDim2.new(0, 21, .5, 0) or UDim2.new(0, 3, .5, 0)
		}, .22, Enum.EasingStyle["Back"])
		b:Tween(Qw, {
			BackgroundColor3 = M and Color3.fromRGB(90, 45, 170) or Color3.fromRGB(14, 9, 26)
		}, .2, Enum.EasingStyle["Quint"])
		local L = iw:FindFirstChildOfClass("UIGradient")
		if L then
			L.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, M and Color3.fromRGB(235, 205, 255) or Color3.fromRGB(110, 90, 140)),
				ColorSequenceKeypoint.new(1, M and Color3.fromRGB(170, 105, 255) or Color3.fromRGB(55, 45, 85))
			})
		end
		s.Notification:Notify({
			Title = "Auto Load",
			Description = M and (("\"") .. (Y.name .. "\" set as default auto-load profile.")) or "Auto Load disabled."
		}, {
			Time = 2
		})
		RefreshSlots()
	end)
	ow.MouseButton1Click:Connect(function()
		if not Bw then
			return
		end
		CircleClick(ow, z.X, z.Y)
		local b = l:Get("_saveSlots", {})
		local e = b[Bw]
		if e and e.data then
			l:ApplySnapshot(e.data, true)
			l.ActiveProfile = e.name or (("Slot ") .. Bw)
			if mw then
				mw.Text = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", l.ActiveProfile)
			end
			s.Notification:Notify({
				Title = "Save Manager",
				Description = ("Applied profile \"") .. (((e.name or "Slot")) .. "\" to all controls.")
			}, {
				Time = 3
			})
			RefreshSlots()
		end
	end)
	Ow.MouseButton1Click:Connect(function()
		if not Bw then
			return
		end
		CircleClick(Ow, z.X, z.Y)
		local b = l:Get("_saveSlots", {})
		local e = b[Bw]
		if e then
			e.data = l:GetSnapshot()
			e.updated = os.date("%Y-%m-%d %H:%M")
			l:Save("_saveSlots", b)
			h.UpdatePreview(e, uw)
			s.Notification:Notify({
				Title = "Save Manager",
				Description = ("Overwrote \"") .. (((e.name or "profile")) .. "\" with current state.")
			}, {
				Time = 2
			})
			RefreshSlots()
		end
	end)
	nw.MouseButton1Click:Connect(function()
		if not Bw then
			return
		end
		CircleClick(nw, z.X, z.Y)
		local b = l:Get("_saveSlots", {})
		if # b >= 10 then
			s.Notification:Notify({
				Title = "Save Manager";
				Description = "Maximum 10 profiles reached."
			}, {
				Time = 2
			})
			return
		end
		local e = b[Bw]
		if e then
			local Y = {}
			for s, b in pairs(e.data or {}) do
				Y[s] = b
			end
			table.insert(b, {
				name = ((e.name or "Profile")) .. " (Copy)";
				data = Y,
				created = os.date("%Y-%m-%d %H:%M"),
				updated = os.date("%Y-%m-%d %H:%M")
			})
			l:Save("_saveSlots", b)
			s.Notification:Notify({
				Title = "Save Manager";
				Description = ("Cloned \"") .. (((e.name or "profile")) .. "\".")
			}, {
				Time = 2
			})
			RefreshSlots()
		end
	end)
	bV.MouseButton1Click:Connect(function()
		if not Bw then
			return
		end
		CircleClick(bV, z.X, z.Y)
		local b = l:Get("_saveSlots", {})
		local e = b[Bw] and b[Bw].name
		table.remove(b, Bw)
		l:Save("_saveSlots", b)
		if e and l:Get("_autoLoadTarget", nil) == e then
			l:Save("_autoLoadTarget", nil)
		end
		if e and l.ActiveProfile == e then
			l.ActiveProfile = "[Auto]"
			if mw then
				mw.Text = "Active Profile: <font color=\"#C084FC\"><b>[Auto]</b></font>"
			end
		end
		s.Notification:Notify({
			Title = "Save Manager";
			Description = "Profile deleted."
		}, {
			Time = 2
		})
		h.CloseSlotPanel()
	end)
	sV.MouseButton1Click:Connect(function()
		if not Bw then
			return
		end
		CircleClick(sV, z.X, z.Y)
		local b = l:Get("_saveSlots", {})
		local e = b[Bw]
		if not e then
			return
		end
		local Y = h.EncodeShareCode({
			name = e.name;
			data = e.data
		})
		if Y then
			local b = setclipboard or toclipboard or (getgenv and (getgenv()).setclipboard)
			if b then
				pcall(b, Y)
			end
			s.Notification:Notify({
				Title = "Share Saved";
				Description = "Share code copied to clipboard!"
			}, {
				Time = 3
			})
		else
			s.Notification:Notify({
				Title = "Share Saved";
				Description = "Failed to encode save."
			}, {
				Time = 2
			})
		end
	end)
	AV.MouseButton1Click:Connect(function()
		CircleClick(AV, z.X, z.Y)
		local b = cV.Text:gsub("`", "")
		if b == "" then
			return
		end
		local e = h.DecodeShareCode(b)
		if not e then
			s.Notification:Notify({
				Title = "Import",
				Description = "Invalid share code format."
			}, {
				Time = 2
			})
			return
		end
		local Y = l:Get("_saveSlots", {})
		if # Y >= 10 then
			s.Notification:Notify({
				Title = "Import";
				Description = "Maximum 10 profiles reached."
			}, {
				Time = 2
			})
			return
		end
		local R = ((e.name or "Imported")) .. " (imported)"
		table.insert(Y, {
			name = R;
			data = e.data or {},
			created = os.date("%Y-%m-%d %H:%M");
			updated = os.date("%Y-%m-%d %H:%M")
		})
		l:Save("_saveSlots", Y)
		cV.Text = ""
		s.Notification:Notify({
			Title = "Import",
			Description = ("Imported profile \"") .. (R .. "\".")
		}, {
			Time = 3
		})
		RefreshSlots()
	end)
	local zV = D9
	D9 = function()
		if Nw then
			Nw = false
			Bw = nil
			h.ShowSettingsPage()
		end
		zV()
	end
	local gV = U9
	U9 = function()
		if Nw then
			Nw = false
			Bw = nil
			h.ShowSettingsPage()
		end
		gV()
	end
	function RefreshSlots()
		for s, b in ipairs(Ew) do
			b:Destroy()
		end
		Ew = {}
		kw = l:Get("_saveSlots", {})
		local e = l:Get("_autoLoadTarget", nil)
		if eV then
			eV.Text = string.format("PROFILES & SLOTS (%d/10)", # kw)
		end
		if # kw == 0 then
			local s = E("TextLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 24);
				Font = Enum.Font["Gotham"];
				Text = "No saved profiles. Create or Quick Save above!";
				TextColor3 = Color3.fromRGB(130, 105, 160),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment["Center"];
				ZIndex = 23
			}, YV)
			table.insert(Ew, s)
		end
		for Y, R in ipairs(kw) do
			local M = (e == R.name)
			local L = (l.ActiveProfile == R.name)
			local p = (Bw == Y and Nw)
			local c = E("Frame", {
				BackgroundColor3 = p and Color3.fromRGB(24, 16, 42) or Color3.fromRGB(15, 10, 26),
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 0, 42),
				LayoutOrder = Y,
				ZIndex = 23;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 7)
					});
					E("UIStroke", {
						Color = p and Color3.fromRGB(190, 130, 255) or (M and Color3.fromRGB(160, 105, 240) or Color3.fromRGB(90, 60, 150));
						Transparency = p and .2 or (M and .4 or .75);
						Thickness = 1,
						ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
					})
				}
			}, YV)
			E("Frame", {
				BackgroundColor3 = M and Color3.fromRGB(190, 140, 255) or Color3.fromRGB(120, 70, 200),
				BorderSizePixel = 0;
				Position = UDim2.new(0, 0, 0, 6),
				Size = UDim2.new(0, 3, 1, - 12),
				ZIndex = 24,
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(1, 0)
					})
				}
			}, c)
			local A = E("Frame", {
				BackgroundColor3 = Color3.fromRGB(38, 22, 70);
				BackgroundTransparency = .2,
				BorderSizePixel = 0;
				Position = UDim2.new(0, 10, .5, - 10);
				Size = UDim2.new(0, 20, 0, 20),
				ZIndex = 24;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 5)
					});
					E("TextLabel", {
						BackgroundTransparency = 1;
						Size = UDim2.new(1, 0, 1, 0);
						Font = Enum.Font["GothamBold"];
						Text = tostring(Y),
						TextColor3 = Color3.fromRGB(200, 160, 255);
						TextSize = 10,
						TextXAlignment = Enum.TextXAlignment["Center"];
						ZIndex = 25
					})
				}
			}, c)
			local g = 0
			if R.data then
				for s in pairs(R.data) do
					g = g + 1
				end
			end
			local j = E("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 36, 0, 6);
				Size = UDim2.new(1, - 105, 0, 15),
				Font = Enum.Font["GothamBold"],
				Text = R.name or (("Profile ") .. Y);
				TextColor3 = p and Color3.fromRGB(240, 220, 255) or (L and Color3.fromRGB(225, 195, 255) or Color3.fromRGB(190, 170, 230)),
				TextSize = 11;
				TextXAlignment = Enum.TextXAlignment["Left"],
				TextTruncate = Enum.TextTruncate["AtEnd"],
				ZIndex = 24
			}, c)
			local r = string.format("%d keys", g)
			if M then
				r = r .. "  \226\128\162  auto load"
			elseif L then
				r = r .. "  \226\128\162  active"
			end
			local y = E("TextLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 36, 0, 22),
				Size = UDim2.new(1, - 105, 0, 13),
				Font = Enum.Font["Gotham"],
				Text = r;
				TextColor3 = M and Color3.fromRGB(180, 130, 255) or (L and Color3.fromRGB(140, 220, 170) or Color3.fromRGB(135, 115, 165)),
				TextSize = 9,
				TextXAlignment = Enum.TextXAlignment["Left"];
				ZIndex = 24
			}, c)
			local Z = E("TextButton", {
				AnchorPoint = Vector2.new(1, .5),
				BackgroundColor3 = Color3.fromRGB(70, 35, 140);
				BackgroundTransparency = .35,
				BorderSizePixel = 0;
				Position = UDim2.new(1, - 8, .5, 0),
				Size = UDim2.new(0, 48, 0, 22);
				Text = "Load",
				TextColor3 = Color3.fromRGB(215, 185, 255),
				Font = Enum.Font["GothamBold"],
				TextSize = 10,
				AutoButtonColor = false,
				ZIndex = 25;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 5)
					}),
					E("UIStroke", {
						Color = Color3.fromRGB(150, 100, 230),
						Transparency = .6;
						Thickness = 1,
						ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
					})
				}
			}, c)
			Z.MouseEnter:Connect(function()
				b:Tween(Z, {
					BackgroundTransparency = .15
				}, .12)
			end)
			Z.MouseLeave:Connect(function()
				b:Tween(Z, {
					BackgroundTransparency = .35
				}, .18)
			end)
			local w = Y
			local a = R
			Z.MouseButton1Click:Connect(function()
				CircleClick(Z, z.X, z.Y)
				if a and a.data then
					l:ApplySnapshot(a.data, true)
					l.ActiveProfile = a.name or (("Slot ") .. w)
					if mw then
						mw.Text = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", l.ActiveProfile)
					end
					s.Notification:Notify({
						Title = "Save Manager";
						Description = ("Loaded profile \"") .. (((a.name or "Slot")) .. "\".")
					}, {
						Time = 2
					})
					RefreshSlots()
				end
			end)
			local f = E("TextButton", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, - 62, 1, 0),
				Position = UDim2.new(0, 0, 0, 0);
				Text = "";
				ZIndex = 24
			}, c)
			f.MouseEnter:Connect(function()
				if not p then
					b:Tween(c, {
						BackgroundColor3 = Color3.fromRGB(22, 14, 38)
					}, .12)
				end
			end)
			f.MouseLeave:Connect(function()
				b:Tween(c, {
					BackgroundColor3 = p and Color3.fromRGB(24, 16, 42) or Color3.fromRGB(15, 10, 26)
				}, .18)
			end)
			f.MouseButton1Click:Connect(function()
				CircleClick(f, z.X, z.Y)
				if Nw and Bw == w then
					h.CloseSlotPanel()
				else
					h.OpenSlotPanel(w)
					RefreshSlots()
				end
			end)
			table.insert(Ew, c)
		end
	end
	RefreshSlots()
	task.defer(function()
		local s = l:Get("_autoLoadTarget", nil)
		if s then
			local b = l:Get("_saveSlots", {})
			for b, e in ipairs(b) do
				if e.name == s and e.data then
					l:ApplySnapshot(e.data, true)
					l.ActiveProfile = e.name
					if mw then
						mw.Text = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", e.name)
					end
					break
				end
			end
		end
	end)
	E("TextLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 16),
		Font = Enum.Font["GothamBold"],
		Text = "Theme Manager",
		TextColor3 = Color3.fromRGB(150, 105, 220),
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment["Center"],
		ZIndex = 23
	}, J9)
	local jV = E("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize["Y"],
		ZIndex = 23;
		Children = {
			E("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment["Center"];
				SortOrder = Enum.SortOrder["LayoutOrder"],
				Padding = UDim.new(0, 5)
			})
		}
	}, J9)
	local rV = {}
	local hV = l:Get("_activeTheme", j)
	if T.Themes[hV] then
		T.Current = T.Themes[hV]
		z9.BackgroundColor3 = T.Current["Body"]
	end
	function h.BuildThemeCards()
		for s, b in ipairs(rV) do
			b:Destroy()
		end
		rV = {}
		local e = {
			"Purple",
			"Crimson";
			"Ocean";
			"Emerald";
			"Sunset"
		}
		for e, Y in ipairs(e) do
			local R = T.Themes[Y]
			local M = (hV == Y)
			local L = R.Accent
			local p = R.AccentDark
			local c = R.PreviewColors
			local A = E("TextButton", {
				BackgroundColor3 = M and Color3.fromRGB(20, 13, 36) or Color3.fromRGB(14, 10, 22),
				BackgroundTransparency = 0;
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 44);
				Text = "",
				AutoButtonColor = false;
				ZIndex = 23;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 9)
					})
				}
			}, jV)
			local g = E("UIStroke", {
				Color = M and L or Color3.fromRGB(90, 60, 140);
				Transparency = M and .3 or .78;
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
			}, A)
			E("Frame", {
				BackgroundColor3 = L,
				BackgroundTransparency = M and 0 or .5,
				BorderSizePixel = 0;
				Position = UDim2.new(0, 0, 0, 7),
				Size = UDim2.new(0, 3, 1, - 14),
				ZIndex = 24;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(1, 0)
					}),
					E("UIGradient", {
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, R.AccentLight),
							ColorSequenceKeypoint.new(1, p)
						});
						Rotation = 90
					})
				}
			}, A)
			local j = 12
			for s, b in ipairs(c) do
				E("Frame", {
					BackgroundColor3 = b;
					BorderSizePixel = 0;
					Position = UDim2.new(0, j, .5, - 10),
					Size = UDim2.new(0, 20, 0, 20);
					ZIndex = 24;
					Children = {
						E("UICorner", {
							CornerRadius = UDim.new(1, 0)
						}),
						E("UIStroke", {
							Color = Color3.fromRGB(255, 255, 255),
							Transparency = .85,
							Thickness = 1,
							ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
						})
					}
				}, A)
				j = j + 16
			end
			E("TextLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 72, 0, 0);
				Size = UDim2.new(1, - 130, 1, 0);
				Font = Enum.Font["GothamBold"];
				Text = R.DisplayName,
				TextColor3 = M and R.AccentLight or Color3.fromRGB(185, 165, 215);
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment["Left"];
				ZIndex = 24
			}, A)
			local r = E("Frame", {
				AnchorPoint = Vector2.new(1, .5),
				BackgroundColor3 = M and Color3.new(p.R * .5, p.G * .5, p.B * .5) or Color3.fromRGB(18, 12, 28),
				BackgroundTransparency = 0,
				BorderSizePixel = 0;
				Position = UDim2.new(1, - 8, .5, 0);
				Size = UDim2.new(0, 62, 0, 22),
				ZIndex = 24,
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 6)
					});
					E("UIStroke", {
						Color = M and L or Color3.fromRGB(90, 65, 130),
						Transparency = M and .35 or .72,
						Thickness = 1,
						ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
					}),
					E("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0);
						Font = Enum.Font["GothamBold"],
						Text = M and "Active" or "Apply",
						TextColor3 = M and R.AccentLight or Color3.fromRGB(160, 130, 200),
						TextSize = 10;
						TextXAlignment = Enum.TextXAlignment["Center"],
						ZIndex = 25
					})
				}
			}, A)
			table.insert(rV, A)
			local l = Y
			A.MouseEnter:Connect(function()
				if hV ~= l then
					b:Tween(A, {
						BackgroundColor3 = Color3.fromRGB(18, 13, 30)
					}, .15, Enum.EasingStyle["Quint"])
					b:Tween(g, {
						Transparency = .55
					}, .15)
				end
			end)
			A.MouseLeave:Connect(function()
				if hV ~= l then
					b:Tween(A, {
						BackgroundColor3 = Color3.fromRGB(14, 10, 22)
					}, .2, Enum.EasingStyle["Quint"])
					b:Tween(g, {
						Transparency = .78
					}, .2)
				end
			end)
			A.MouseButton1Click:Connect(function()
				if hV == l then
					return
				end
				CircleClick(A, z.X, z.Y)
				hV = l
				ApplyTheme(l)
				h.BuildThemeCards()
				s.Notification:Notify({
					Title = "Theme Manager";
					Description = l .. " theme applied."
				}, {
					Time = 2
				})
			end)
		end
	end
	h.BuildThemeCards()
	E("TextLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 16),
		Font = Enum.Font["GothamBold"];
		Text = "Background Media",
		TextColor3 = Color3.fromRGB(150, 105, 220);
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment["Center"],
		ZIndex = 23
	}, J9)
	E("TextLabel", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 28),
		Font = Enum.Font["Gotham"];
		Text = "Drop .png/.jpg/.webm/.mp4 into Quantum Onyx Hub folder";
		TextColor3 = Color3.fromRGB(130, 110, 170);
		TextSize = 9;
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment["Center"];
		ZIndex = 23
	}, J9)
	local lV = E("ScrollingFrame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 72),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		ScrollBarThickness = 0;
		ScrollBarImageTransparency = 1;
		ElasticBehavior = Enum.ElasticBehavior["WhenScrollable"];
		ScrollingEnabled = true;
		ZIndex = 23,
		Children = {
			E("UIListLayout", {
				SortOrder = Enum.SortOrder["LayoutOrder"],
				Padding = UDim.new(0, 4)
			}),
			E("UIPadding", {
				PaddingLeft = UDim.new(0, 4),
				PaddingRight = UDim.new(0, 4)
			})
		}
	}, J9)
	function h.BuildBgImageCards()
		for s, b in ipairs(lV:GetChildren()) do
			if b:IsA("TextButton") then
				b:Destroy()
			end
		end
		local b = C(l.FolderName)
		local e = d(l.FolderName)
		local Y = {}
		for s, b in ipairs(b) do
			table.insert(Y, b)
		end
		for s, b in ipairs(e) do
			table.insert(Y, b)
		end
		local R = l:Get("_opt_BgImage", "")
		local M = E("TextButton", {
			BackgroundColor3 = R == "" and Color3.fromRGB(22, 14, 38) or Color3.fromRGB(14, 10, 22),
			BorderSizePixel = 0;
			Size = UDim2.new(1, - 8, 0, 28),
			Font = Enum.Font["GothamBold"];
			Text = "None (theme default)";
			TextColor3 = Color3.fromRGB(185, 165, 215),
			TextSize = 10;
			ZIndex = 24,
			LayoutOrder = 0,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 7)
				})
			}
		}, lV)
		M.MouseButton1Click:Connect(function()
			ApplyBackgroundImage("")
			l:Save("_opt_BgImage", "")
			h.BuildBgImageCards()
		end)
		for b, e in ipairs(Y) do
			local Y = e:match("([^/\\]+)$") or e
			local M = t(e)
			local L = R == e
			local p = E("TextButton", {
				BackgroundColor3 = L and Color3.fromRGB(22, 14, 38) or Color3.fromRGB(14, 10, 22);
				BorderSizePixel = 0;
				Size = UDim2.new(1, - 8, 0, 28);
				Font = Enum.Font["GothamBold"];
				Text = ((L and "\226\156\147 " or "")) .. (((M and "[VID] " or "")) .. Y),
				TextColor3 = L and Color3.fromRGB(210, 180, 255) or Color3.fromRGB(160, 140, 200);
				TextSize = 10,
				TextTruncate = Enum.TextTruncate["AtEnd"];
				TextXAlignment = Enum.TextXAlignment["Left"],
				ZIndex = 24;
				LayoutOrder = b;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 7)
					});
					E("UIPadding", {
						PaddingLeft = UDim.new(0, 10)
					})
				}
			}, lV)
			local c = e
			p.MouseButton1Click:Connect(function()
				ApplyBackgroundImage(c)
				h.BuildBgImageCards()
				s.Notification:Notify({
					Title = "Background",
					Description = ("Applied ") .. Y
				}, {
					Time = 2
				})
			end)
		end
		local L = lV:FindFirstChildOfClass("UIListLayout")
		if L then
			FitScrollCanvas(lV, L, "Y", 4)
		end
	end
	h.BuildBgImageCards()
	h.MakeMiniSlider(J9, "BG Image Fade", "_opt_BgImageTransparency", .5, 1, l:Get("_opt_BgImageTransparency", .88), .02, function(s, b)
		if g9 then
			g9.ImageTransparency = s
		end
		if b then
			l:Save("_opt_BgImageTransparency", s)
		end
	end, nil, true)
	local yV = {
		{
			Name = "Default",
			Regular = Enum.Font["Gotham"],
			Bold = Enum.Font["GothamBold"];
			Display = Enum.Font["FredokaOne"]
		},
		{
			Name = "Gotham",
			Regular = Enum.Font["Gotham"];
			Bold = Enum.Font["GothamBold"];
			Display = Enum.Font["FredokaOne"]
		},
		{
			Name = "Source Sans";
			Regular = Enum.Font["SourceSans"];
			Bold = Enum.Font["SourceSansBold"];
			Display = Enum.Font["SourceSansBold"]
		},
		{
			Name = "Nunito",
			Regular = Enum.Font["Nunito"];
			Bold = Enum.Font["Nunito"];
			Display = Enum.Font["Nunito"]
		};
		{
			Name = "Oswald",
			Regular = Enum.Font["Oswald"];
			Bold = Enum.Font["Oswald"];
			Display = Enum.Font["Oswald"]
		},
		{
			Name = "Ubuntu";
			Regular = Enum.Font["Ubuntu"],
			Bold = Enum.Font["Ubuntu"];
			Display = Enum.Font["Ubuntu"]
		};
		{
			Name = "Roboto";
			Regular = Enum.Font["Roboto"];
			Bold = Enum.Font["Roboto"];
			Display = Enum.Font["RobotoCondensed"]
		},
		{
			Name = "Arcade",
			Regular = Enum.Font["Arcade"],
			Bold = Enum.Font["Arcade"],
			Display = Enum.Font["Arcade"]
		};
		{
			Name = "Code";
			Regular = Enum.Font["Code"];
			Bold = Enum.Font["Code"];
			Display = Enum.Font["Code"]
		}
	}
	local ZV = {
		[Enum.Font["Gotham"]] = "Regular";
		[Enum.Font["SourceSans"]] = "Regular",
		[Enum.Font["Nunito"]] = "Regular",
		[Enum.Font["Oswald"]] = "Regular";
		[Enum.Font["Ubuntu"]] = "Regular",
		[Enum.Font["Roboto"]] = "Regular";
		[Enum.Font["Arcade"]] = "Regular";
		[Enum.Font["Code"]] = "Regular",
		[Enum.Font["GothamBold"]] = "Bold";
		[Enum.Font["GothamSemibold"]] = "Bold";
		[Enum.Font["SourceSansBold"]] = "Bold",
		[Enum.Font["FredokaOne"]] = "Display",
		[Enum.Font["RobotoCondensed"]] = "Display"
	}
	function h.ResolveFontPreset(s)
		for b, e in ipairs(yV) do
			if e.Name == s then
				return e
			end
		end
		return yV[1]
	end
	function h.ApplyUIFont(s)
		local b = h.ResolveFontPreset(s)
		l:Save("_opt_UIFont", b.Name)
		local e = {
			Regular = b.Regular,
			Bold = b.Bold,
			Display = b.Display
		}
		for s, Y in ipairs(z9:GetDescendants()) do
			if Y:IsA("TextLabel") or Y:IsA("TextButton") or Y:IsA("TextBox") then
				local s = ZV[Y.Font] or "Regular"
				pcall(function()
					Y.Font = e[s] or b.Regular
				end)
			end
		end
	end
	E("TextLabel", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 16);
		Font = Enum.Font["GothamBold"];
		Text = "UI Font";
		TextColor3 = Color3.fromRGB(150, 105, 220),
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment["Center"],
		ZIndex = 23
	}, J9)
	local wV = E("ScrollingFrame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 90),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		ScrollBarThickness = 0,
		ScrollBarImageTransparency = 1;
		ElasticBehavior = Enum.ElasticBehavior["WhenScrollable"];
		ScrollingEnabled = true,
		ZIndex = 23;
		Children = {
			E("UIListLayout", {
				SortOrder = Enum.SortOrder["LayoutOrder"];
				Padding = UDim.new(0, 4)
			}),
			E("UIPadding", {
				PaddingLeft = UDim.new(0, 4),
				PaddingRight = UDim.new(0, 4)
			})
		}
	}, J9)
	function h.BuildFontCards()
		for s, b in ipairs(wV:GetChildren()) do
			if b:IsA("TextButton") then
				b:Destroy()
			end
		end
		local b = l:Get("_opt_UIFont", "Gotham")
		for e, Y in ipairs(yV) do
			local R = b == Y.Name
			local M = E("TextButton", {
				BackgroundColor3 = R and Color3.fromRGB(22, 14, 38) or Color3.fromRGB(14, 10, 22),
				BorderSizePixel = 0;
				Size = UDim2.new(1, - 8, 0, 26);
				Font = Y.Bold;
				Text = ((R and "\226\156\147 " or "")) .. Y.Name,
				TextColor3 = R and Color3.fromRGB(210, 180, 255) or Color3.fromRGB(160, 140, 200);
				TextSize = 11,
				ZIndex = 24;
				LayoutOrder = e,
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 7)
					})
				}
			}, wV)
			local L = Y.Name
			M.MouseButton1Click:Connect(function()
				h.ApplyUIFont(L)
				h.BuildFontCards()
				s.Notification:Notify({
					Title = "Font";
					Description = ("Applied ") .. L
				}, {
					Time = 2
				})
			end)
		end
		local e = wV:FindFirstChildOfClass("UIListLayout")
		if e then
			FitScrollCanvas(wV, e, "Y", 4)
		end
	end
	h.BuildFontCards()
	task.defer(function()
		local s = l:Get("_opt_UIFont", "Default")
		if s and (s ~= "Default" and s ~= "Gotham") then
			h.ApplyUIFont(s)
		end
	end)
	h.MakeMiniSlider(J9, "UI Transparency", "_opt_UITransparency", 0, .55, l:Get("_opt_UITransparency", .05), .01, function(s, b)
		if z9 then
			z9.BackgroundTransparency = s
		end
		if b then
			l:Save("_opt_UITransparency", s)
		end
	end, nil, true)
	m9.MouseButton1Click:Connect(function()
		CircleClick(m9, z.X, z.Y)
		if G9 and G9() then
			W9()
		end
		if n9 and n9() then
			U9()
		end
		if h.BuildBgImageCards then
			h.BuildBgImageCards()
		end
		i9()
	end)
	local aV = E("Frame", {
		BackgroundColor3 = Color3.fromRGB(60, 60, 60),
		BackgroundTransparency = 1;
		BorderSizePixel = 0,
		Position = UDim2.new(.0160791595, 0, .219451368, 0);
		Size = UDim2.new(0, 60, 0, 60);
		Visible = not X,
		Active = true,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(1, 0)
			})
		}
	}, K)
	local fV = E("ImageButton", {
		Name = "ToggleLogo";
		BackgroundTransparency = 1,
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0),
		Image = "rbxassetid://87383580130479";
		Active = true,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(1, 0)
			})
		}
	}, aV)
	local HV = {
		on = false,
		moved = false,
		start = nil;
		origin = nil;
		input = nil
	}
	function h.PinToggleToOffset()
		Z.PinAbsToOffset(aV, K, b9.Scale)
	end
	do
		local s = o and 12 or 5
		local function b(s)
			if HV.on then
				return
			end
			if s.UserInputType ~= Enum.UserInputType["MouseButton1"] and s.UserInputType ~= Enum.UserInputType["Touch"] then
				return
			end
			HV.on = true
			HV.input = s
			HV.moved = false
			HV.start = s.Position
			h.PinToggleToOffset()
			HV.origin = aV.Position
		end
		aV.InputBegan:Connect(b)
		fV.InputBegan:Connect(b)
		M.InputChanged:Connect(function(b)
			if not HV.on or not HV.start or not HV.origin or not HV.input then
				return
			end
			if b == HV.input or (HV.input["UserInputType"] == Enum.UserInputType["MouseButton1"] and b.UserInputType == Enum.UserInputType["MouseMovement"]) then
				local e = ((b9 and b9.Scale > 0)) and b9.Scale or 1
				local Y = ((b.Position - HV.start)) / e
				if Y.Magnitude > s then
					HV.moved = true
					aV.Position = UDim2.fromOffset(HV.origin["X"].Offset + Y.X, HV.origin["Y"].Offset + Y.Y)
				end
			end
		end)
		M.InputEnded:Connect(function(s)
			if not HV.on then
				return
			end
			if s == HV.input then
				HV.on = false
				HV.input = nil
				HV.start = nil
				HV.origin = nil
				task.delay(.08, function()
					HV.moved = false
				end)
			end
		end)
	end
	local kV = false
	local function EV()
		if not kV then
			return
		end
		local s = z9.Position
		z9.Position = UDim2.new(s.X["Scale"], s.X["Offset"] + 150, s.Y["Scale"], s.Y["Offset"] + 149)
		z9.Size = UDim2.new(0, 510, 0, 330)
		Z9.Size = UDim2.new(1, - 255, 0, 16)
		w9.Size = UDim2.new(1, - 255, 0, 12)
		N9.Image = "rbxassetid://92966930061759"
		N9.Position = UDim2.new(1, - 34, 0, 16)
		u9.Position = UDim2.new(1, - 8, 0, 16)
		y9.BackgroundTransparency = 1
		if TabContainer then
			TabContainer.Visible = true
		end
		if MainContainer then
			MainContainer.Visible = true
		end
		if I9 then
			I9.Visible = true
		end
		if m9 then
			m9.Visible = true
		end
		if u9 then
			u9.Visible = true
		end
		if r9 and (j9 and j9.Visible) then
			pcall(function()
				r9.Playing = true
				r9:Play()
			end)
		end
		kV = false
	end
	local function BV()
		if kV then
			return
		end
		if G9 and G9() then
			W9()
		end
		if q9 and q9() then
			D9()
		end
		if n9 and n9() then
			U9()
		end
		if TabContainer then
			TabContainer.Visible = false
		end
		if MainContainer then
			MainContainer.Visible = false
		end
		if I9 then
			I9.Visible = false
		end
		if m9 then
			m9.Visible = false
		end
		N9.Position = UDim2.new(1, - 34, 0, 16)
		u9.Position = UDim2.new(1, - 8, 0, 16)
		N9.Image = "rbxassetid://124967485209478"
		y9.BackgroundTransparency = 0
		Z9.Size = UDim2.new(1, - 65, 0, 16)
		w9.Size = UDim2.new(1, - 65, 0, 12)
		local s = z9.Position
		z9.Position = UDim2.new(s.X["Scale"], s.X["Offset"] - 150, s.Y["Scale"], s.Y["Offset"] - 149)
		z9.Size = UDim2.new(0, 210, 0, 32)
		kV = true
	end
	N9.MouseButton1Click:Connect(function()
		if kV then
			EV()
		else
			BV()
		end
	end)
	local NV = E("Frame", {
		Name = "BlurOverlay";
		BackgroundColor3 = Color3.fromRGB(8, 6, 12);
		BackgroundTransparency = .35,
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0),
		Visible = false;
		Active = true;
		ZIndex = 4000,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 10)
			}),
			E("TextButton", {
				Name = "ClickBlocker";
				BackgroundTransparency = 1,
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0);
				Text = "";
				AutoButtonColor = false,
				Active = true,
				ZIndex = 4000
			})
		}
	}, z9)
	local uV = E("Frame", {
		Name = "ComfirmDialog",
		BackgroundColor3 = Color3.fromRGB(18, 14, 26);
		BackgroundTransparency = .02;
		BorderSizePixel = 0;
		AnchorPoint = Vector2.new(.5, .5);
		Position = UDim2.new(.5, 0, .5, 0);
		Size = UDim2.new(0, 240, 0, 112);
		Visible = false,
		Active = true;
		ZIndex = 4001;
		ClipsDescendants = true;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 10)
			})
		}
	}, NV)
	E("TextLabel", {
		Name = "DialogTitle",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(.5, 0),
		Position = UDim2.new(.5, 0, 0, 16);
		Size = UDim2.new(1, - 24, 0, 18),
		Text = "Are you sure?";
		TextColor3 = Color3.fromRGB(250, 245, 255),
		Font = Enum.Font["GothamBold"],
		TextSize = 13;
		TextXAlignment = Enum.TextXAlignment["Center"],
		ZIndex = 4002
	}, uV)
	E("TextLabel", {
		Name = "DialogSubtitle";
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(.5, 0);
		Position = UDim2.new(.5, 0, 0, 36);
		Size = UDim2.new(1, - 24, 0, 16),
		Text = "Close and destroy interface?";
		TextColor3 = Color3.fromRGB(165, 150, 190);
		Font = Enum.Font["Gotham"],
		TextSize = 10;
		TextXAlignment = Enum.TextXAlignment["Center"];
		ZIndex = 4002
	}, uV)
	local IV = E("TextButton", {
		BackgroundColor3 = Color3.fromRGB(225, 45, 75);
		BackgroundTransparency = .05,
		TextColor3 = Color3.fromRGB(255, 255, 255);
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 16, 1, - 14);
		Size = UDim2.new(0, 96, 0, 28),
		Text = "Yes",
		Font = Enum.Font["GothamBold"];
		TextSize = 11,
		AutoButtonColor = false,
		Active = true,
		ZIndex = 4002;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			})
		}
	}, uV)
	local PV = E("TextButton", {
		Name = "CancelButton";
		BackgroundColor3 = Color3.fromRGB(28, 22, 38);
		BackgroundTransparency = .05;
		TextColor3 = Color3.fromRGB(200, 190, 225);
		AnchorPoint = Vector2.new(1, 1),
		Position = UDim2.new(1, - 16, 1, - 14),
		Size = UDim2.new(0, 96, 0, 28);
		Text = "No";
		Font = Enum.Font["GothamBold"],
		TextSize = 11,
		AutoButtonColor = false;
		Active = true,
		ZIndex = 4002,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			})
		}
	}, uV)
	local mV = false
	u9.MouseButton1Click:Connect(function()
		if kV then
			EV()
		end
		if G9 and G9() then
			W9()
		end
		if q9 and q9() then
			D9()
		end
		if n9 and n9() then
			U9()
		end
		NV.Visible = true
		uV.Visible = true
	end)
	IV.MouseButton1Click:Connect(function()
		NV.Visible = false
		uV.Visible = false
		Y:DestroyGui()
	end)
	PV.MouseButton1Click:Connect(function()
		NV.Visible = false
		uV.Visible = false
		if mV then
			CloseFullLock()
		end
	end)
	M.InputBegan:Connect(function(s)
		if s.UserInputType ~= Enum.UserInputType["Keyboard"] then
			return
		end
		if s.KeyCode == Enum.KeyCode["Unknown"] then
			return
		end
		if H9 then
			f9 = s.KeyCode
			l:Save("_opt_UIKeybind", s.KeyCode["Name"])
			H9 = false
			if k9 then
				k9.Text = s.KeyCode["Name"]
			end
			return
		end
		if M:GetFocusedTextBox() then
			return
		end
		if s.KeyCode == f9 then
			B9()
		end
	end)
	local XV = true
	B9 = function(s)
		local b = s
		if b == nil then
			b = not XV
		end
		if b == XV then
			return
		end
		XV = b
		z9.Visible = b
		aV.Visible = true
		fV.Visible = true
		if b then
			local s = l:Get("_opt_UITransparency", .05)
			z9.BackgroundTransparency = s
			if r9 and (j9 and j9.Visible) then
				pcall(function()
					r9.Playing = true
					r9:Play()
				end)
			end
		end
	end
	local xV = 0
	local function CV()
		if HV.moved then
			return
		end
		local s = tick()
		if s - xV < .2 then
			return
		end
		xV = s
		B9()
	end
	fV.Activated:Connect(CV)
	h.MakeDraggable = Z.MakeDraggable
	Z.MakeDraggable(y9, z9)
	local dV = E("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 40),
		Position = UDim2.new(0, 0, 0, 36),
		ClipsDescendants = false
	}, z9)
	D = E("Frame", {
		Name = "SearchBarFrame",
		BackgroundColor3 = Color3.fromRGB(22, 17, 34),
		BackgroundTransparency = .4,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 8, 0, 1);
		Size = UDim2.new(0, 126, 0, 22);
		ZIndex = 6,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 6)
			})
		}
	}, dV)
	E("ImageLabel", {
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 6, .5, - 6);
		Size = UDim2.new(0, 12, 0, 12);
		Image = "rbxassetid://3926305904",
		ImageRectOffset = Vector2.new(964, 324),
		ImageRectSize = Vector2.new(36, 36);
		ImageColor3 = Color3.fromRGB(175, 140, 230),
		ZIndex = 7
	}, D)
	local tV = E("TextBox", {
		Name = "SearchBox";
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 21, 0, 0),
		Size = UDim2.new(1, - 36, 1, 0),
		Font = Enum.Font["Gotham"];
		PlaceholderText = "Search...",
		PlaceholderColor3 = Color3.fromRGB(135, 120, 165);
		Text = "",
		TextColor3 = Color3.fromRGB(235, 230, 250);
		TextSize = 10;
		TextXAlignment = Enum.TextXAlignment["Left"];
		ClearTextOnFocus = false,
		ZIndex = 7
	}, D)
	local TV = E("TextButton", {
		Name = "SearchClear",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, .5),
		Position = UDim2.new(1, - 3, .5, 0),
		Size = UDim2.new(0, 14, 0, 14),
		Font = Enum.Font["GothamBold"],
		Text = "\195\151",
		TextColor3 = Color3.fromRGB(175, 145, 215),
		TextSize = 12;
		Visible = false;
		ZIndex = 8,
		AutoButtonColor = false
	}, D)
	local WV = E("TextLabel", {
		Name = "SearchCount",
		BackgroundColor3 = Color3.fromRGB(110, 60, 190);
		BackgroundTransparency = .2,
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.new(1, - 2, 0, - 6);
		Size = UDim2.new(0, 22, 0, 13),
		Font = Enum.Font["GothamBold"];
		Text = "0",
		TextColor3 = Color3.fromRGB(240, 225, 255);
		TextSize = 9;
		Visible = false,
		ZIndex = 9;
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(1, 0)
			})
		}
	}, D)
	local GV = E("ScrollingFrame", {
		Active = true;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Position = UDim2.new(0, 140, 0, - 3),
		Size = UDim2.new(1, - 148, 0, 30),
		CanvasPosition = Vector2.new(0, 0);
		CanvasSize = UDim2.new(0, 0, 0, 0);
		ScrollBarThickness = 0,
		ScrollBarImageTransparency = 1;
		ScrollingDirection = Enum.ScrollingDirection["X"],
		ElasticBehavior = Enum.ElasticBehavior["WhenScrollable"],
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 7)
			})
		}
	}, dV)
	local vV = E("UIListLayout", {
		FillDirection = Enum.FillDirection["Horizontal"],
		VerticalAlignment = Enum.VerticalAlignment["Top"];
		SortOrder = Enum.SortOrder["LayoutOrder"];
		Padding = UDim.new(0, 5)
	}, GV)
	function h.RefreshTabScrollCanvas()
		DebouncedFitScrollCanvas(GV, vV, "X", 4)
	end
	RegisterLayoutRefresh(function()
		FitScrollCanvas(GV, vV, "X", 4)
	end);
	(vV:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(h.RefreshTabScrollCanvas);
	(GV:GetPropertyChangedSignal("AbsoluteSize")):Connect(h.RefreshTabScrollCanvas)
	GV.ChildAdded:Connect(h.RefreshTabScrollCanvas)
	local FV = E("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0;
		Size = UDim2.new(0, 590, 0, 400),
		Position = UDim2.new(0, 5, 0, 70)
	}, z9)
	local SV = E("Folder", {
		Name = "Container"
	}, FV)
	q = {}
	i = {}
	local JV = false
	local QV = nil
	local iV = nil
	local DV = false
	local qV = {}
	function h.ActivateScroll(s, e, Y, R)
		if not R and DV then
			return
		end
		if not R and QV == s then
			return
		end
		local M, L = 1, 1
		for b, e in ipairs(i) do
			if e.scrollFrame == QV then
				M = b
			end
			if e.scrollFrame == s then
				L = b
			end
		end
		local p = L > M and 1 or - 1
		for e, Y in ipairs(i) do
			b:Tween(Y.tabButton, {
				TextColor3 = Color3.fromRGB(130, 120, 155)
			}, .2, Enum.EasingStyle["Quint"])
			if Y.tabUnderline["Visible"] then
				b:Tween(Y.tabUnderline, {
					Size = UDim2.new(0, 0, 0, 3)
				}, .15, Enum.EasingStyle["Quint"], Enum.EasingDirection["In"], function()
					Y.tabUnderline["Visible"] = false
					Y.tabUnderline["Size"] = UDim2.new(.5, 0, 0, 3)
				end)
			end
			if Y.scrollFrame["Visible"] and Y.scrollFrame ~= s then
				local s = Y.scrollFrame
				if not R then
					DV = true
					b:Tween(s, {
						Position = UDim2.new(- 0.04 * p, 0, 0, 0)
					}, .2, Enum.EasingStyle["Quint"], Enum.EasingDirection["In"])
					task.delay(.2, function()
						s.Visible = false
						s.Position = UDim2.new(0, 0, 0, 0)
					end)
				else
					s.Visible = false
					s.Position = UDim2.new(0, 0, 0, 0)
				end
			end
		end
		if not R then
			task.delay(.15, function()
				s.Position = UDim2.new(.04 * p, 0, 0, 0)
				s.Visible = true
				b:Tween(s, {
					Position = UDim2.new(0, 0, 0, 0)
				}, .28, Enum.EasingStyle["Back"], Enum.EasingDirection["Out"])
				task.delay(.28, function()
					DV = false
				end)
			end)
		else
			s.Position = UDim2.new(0, 0, 0, 0)
			s.Visible = true
			DV = false
		end
		b:Tween(e, {
			TextColor3 = Color3.fromRGB(255, 255, 255)
		}, .22, Enum.EasingStyle["Quint"])
		Y.Size = UDim2.new(0, 0, 0, 3)
		Y.Visible = true
		b:Tween(Y, {
			Size = UDim2.new(.5, 0, 0, 3)
		}, .3, Enum.EasingStyle["Back"], Enum.EasingDirection["Out"])
		QV = s
	end
	function h.RefreshSectionVisibility()
		local s, b = {}, {}
		for e, Y in ipairs(q) do
			if not b[Y.sectionScroll] then
				b[Y.sectionScroll] = true
				table.insert(s, Y.sectionScroll)
			end
		end
		for s, b in ipairs(s) do
			local e = false
			for s, Y in ipairs(b:GetChildren()) do
				if Y.Name == "Section" then
					local s = false
					for e, R in ipairs(q) do
						if R.sectionScroll == b and (R.sectionFrame == Y and R.elementFrame["Visible"]) then
							s = true
							break
						end
					end
					Y.Visible = s
					if s then
						e = true
					end
				end
			end
			b.Visible = e
		end
		local e, Y = {}, {}
		for s, b in ipairs(q) do
			if not e[b.scrollFrame] then
				e[b.scrollFrame] = true
				Y[b.scrollFrame] = {}
			end
		end
		for s, b in ipairs(q) do
			local e = Y[b.scrollFrame]
			local R = false
			for s, e in ipairs(e) do
				if e == b.sectionScroll then
					R = true
					break
				end
			end
			if not R then
				table.insert(e, b.sectionScroll)
			end
		end
		for s, b in pairs(Y) do
			for s, b in ipairs(b) do
				if b.Visible then
					b.Size = UDim2.new(0, 240, 0, 260)
				end
			end
		end
	end
	local VV = E("Frame", {
		Name = "SearchHistoryFrame",
		BackgroundColor3 = Color3.fromRGB(16, 12, 24),
		BackgroundTransparency = .08,
		Position = UDim2.new(0, 8, 0, 26),
		Size = UDim2.new(0, 220, 0, 0);
		Visible = false;
		ZIndex = 50,
		ClipsDescendants = true,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(0, 8)
			});
			E("UIListLayout", {
				SortOrder = Enum.SortOrder["LayoutOrder"];
				Padding = UDim.new(0, 2)
			});
			E("UIPadding", {
				PaddingTop = UDim.new(0, 6);
				PaddingBottom = UDim.new(0, 6);
				PaddingLeft = UDim.new(0, 6),
				PaddingRight = UDim.new(0, 6)
			})
		}
	}, z9)
	local KV = E("ScrollingFrame", {
		Name = "SearchTreeScroll";
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.new(1, - 8, 0, 0);
		CanvasSize = UDim2.new(0, 0, 0, 0),
		ScrollBarThickness = 0;
		ScrollBarImageTransparency = 1;
		ZIndex = 51;
		Visible = false;
		AutomaticCanvasSize = Enum.AutomaticSize["None"];
		ElasticBehavior = Enum.ElasticBehavior["WhenScrollable"];
		ScrollingEnabled = true,
		Children = {
			E("UIListLayout", {
				SortOrder = Enum.SortOrder["LayoutOrder"];
				Padding = UDim.new(0, 2)
			})
		}
	}, VV)
	local function oV()
		VV.Visible = false
		VV.Size = UDim2.new(0, 220, 0, 0)
		KV.Visible = false
		KV.Size = UDim2.new(1, - 8, 0, 0)
		KV.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
	function h.fuzzyMatch(s, b)
		s = s:lower()
		b = b:lower()
		local e = 1
		local Y = 1
		while e <= # b and Y <= # s do
			if b:sub(e, e) == s:sub(Y, Y) then
				e = e + 1
			end
			Y = Y + 1
		end
		return e > # b
	end
	function h.SplitWords(s)
		local b = {}
		for s in string.gmatch(string.lower(s), "%S+") do
			table.insert(b, s)
		end
		return b
	end
	function h.ScoreSearchEntry(s, b)
		local e = b:lower()
		local Y = ((s.title or "")):lower()
		local R = ((s.menuTitle or "")):lower()
		local M = ((s.tabTitle or "")):lower()
		local L = M .. ((" ") .. (R .. ((" ") .. Y)))
		local p = 0
		if Y == e then
			return 200
		end
		if Y:sub(1, # e) == e then
			p = math.max(p, 160)
		end
		if Y:find(e, 1, true) then
			p = math.max(p, 120)
		end
		if R:find(e, 1, true) then
			p = math.max(p, 90)
		end
		if M:find(e, 1, true) then
			p = math.max(p, 70)
		end
		local c = h.SplitWords(e)
		if # c > 1 then
			local s = true
			local b = 0
			for e, Y in ipairs(c) do
				if L:find(Y, 1, true) then
					b = b + 25
				else
					s = false
				end
			end
			if s then
				p = math.max(p, 100 + b)
			end
		end
		if h.fuzzyMatch(Y, b) then
			p = math.max(p, 45)
		end
		if h.fuzzyMatch(L, b) then
			p = math.max(p, 35)
		end
		return p
	end
	local OV = l:Get("_opt_SearchHistory", {})
	function h.SaveSearchToHistory(s)
		s = (s:gsub("^%s+", "")):gsub("%s+$", "")
		if s == "" or # s < 2 then
			return
		end
		for b = # OV, 1, - 1 do
			if OV[b] == s then
				table.remove(OV, b)
			end
		end
		table.insert(OV, 1, s)
		if # OV > 8 then
			table.remove(OV, 9)
		end
		l:Save("_opt_SearchHistory", OV)
	end
	function h.NavigateToSearchEntry(s)
		if not s then
			return
		end
		for b, e in ipairs(i) do
			if e.scrollFrame == s.scrollFrame then
				h.ActivateScroll(e.scrollFrame, e.tabButton, e.tabUnderline, true)
				break
			end
		end
		s.elementFrame["Visible"] = true
		s.sectionFrame["Visible"] = true
		s.sectionScroll["Visible"] = true
		h.RefreshSectionVisibility()
		task.defer(function()
			local e = s.elementFrame
			local Y = s.sectionScroll
			if not ((e and (e.Parent and (Y and Y.Parent)))) then
				return
			end
			local R = (e.AbsolutePosition["Y"] - Y.AbsolutePosition["Y"]) + Y.CanvasPosition["Y"]
			local M = math.max(0, R - 40)
			b:Tween(Y, {
				CanvasPosition = Vector2.new(0, M)
			}, .28, Enum.EasingStyle["Quint"])
			local L = E("Frame", {
				BackgroundColor3 = ThemeColor("Accent") or Color3.fromRGB(180, 120, 255),
				BackgroundTransparency = .35;
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0);
				ZIndex = 50,
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(0, 6)
					})
				}
			}, e)
			b:Tween(L, {
				BackgroundTransparency = 1
			}, .65, Enum.EasingStyle["Quad"], Enum.EasingDirection["Out"], function()
				if L then
					L:Destroy()
				end
			end)
			local p = e:FindFirstChildOfClass("UIStroke")
			if not p then
				p = E("UIStroke", {
					Color = ThemeColor("Accent") or Color3.fromRGB(180, 120, 255);
					Transparency = .2;
					Thickness = 1.5;
					ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
				}, e)
				task.delay(.8, function()
					if p and p.Parent then
						p:Destroy()
					end
				end)
			else
				local s = p.Transparency
				p.Transparency = .15
				task.delay(.8, function()
					if p and p.Parent then
						p.Transparency = s
					end
				end)
			end
		end)
	end
	function h.UpdateSearchTreeUI(s, b)
		for s, b in ipairs(KV:GetChildren()) do
			if b:IsA("GuiObject") then
				b:Destroy()
			end
		end
		local e = 0
		local Y = 0
		if b == "" or not s or # s == 0 then
			KV.Visible = false
			KV.Size = UDim2.new(1, - 8, 0, 0)
			KV.CanvasSize = UDim2.new(0, 0, 0, 0)
			return 0
		end
		local R = {}
		for s, b in ipairs(s) do
			local e = b.tabTitle or "Tab"
			R[e] = R[e] or {}
			local Y = b.menuTitle or "Section"
			R[e][Y] = R[e][Y] or {}
			table.insert(R[e][Y], b)
		end
		for s, b in pairs(R) do
			e = e + 1
			Y = (Y + 16) + 2
			E("TextLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 16),
				Font = Enum.Font["GothamBold"];
				Text = ("") .. s;
				TextColor3 = Color3.fromRGB(192, 132, 252),
				TextSize = 10;
				TextXAlignment = Enum.TextXAlignment["Left"];
				LayoutOrder = e;
				ZIndex = 10001
			}, KV)
			for s, b in pairs(b) do
				e = e + 1
				Y = (Y + 14) + 2
				E("TextLabel", {
					BackgroundTransparency = 1;
					Size = UDim2.new(1, - 8, 0, 14),
					Font = Enum.Font["GothamSemibold"];
					Text = ("  \226\148\148 ") .. s,
					TextColor3 = Color3.fromRGB(160, 130, 200);
					TextSize = 9;
					TextXAlignment = Enum.TextXAlignment["Left"],
					LayoutOrder = e;
					ZIndex = 10001
				}, KV)
				for s, b in ipairs(b) do
					e = e + 1
					Y = (Y + 20) + 2
					local R = E("TextButton", {
						BackgroundColor3 = Color3.fromRGB(22, 20, 28);
						BackgroundTransparency = .35;
						Size = UDim2.new(1, - 12, 0, 20),
						Font = Enum.Font["Gotham"],
						Text = ("      \226\128\162 ") .. ((b.title or ""));
						TextColor3 = Color3.fromRGB(210, 195, 230);
						TextSize = 9;
						TextXAlignment = Enum.TextXAlignment["Left"],
						TextTruncate = Enum.TextTruncate["AtEnd"];
						LayoutOrder = e,
						ZIndex = 10001,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 4)
							})
						}
					}, KV)
					R.MouseButton1Click:Connect(function()
						h.NavigateToSearchEntry(b)
						oV()
					end)
				end
			end
		end
		if e <= 0 or Y <= 0 then
			KV.Visible = false
			KV.Size = UDim2.new(1, - 8, 0, 0)
			KV.CanvasSize = UDim2.new(0, 0, 0, 0)
			KV.ScrollingEnabled = false
			return 0
		end
		local M = math.max(UnscaledLayout(KV.AbsoluteSize["Y"]), 1)
		local L = Y > M + 1
		KV.CanvasSize = UDim2.new(0, 0, 0, L and Y or 0)
		KV.ScrollingEnabled = L
		KV.ElasticBehavior = Enum.ElasticBehavior["Never"]
		KV.Visible = true
		return Y
	end
	function h.UpdateHistoryUI(s)
		for s, b in ipairs(VV:GetChildren()) do
			if b:IsA("TextButton") or b:IsA("TextLabel") then
				if b.Name ~= "SearchTreeScroll" and b ~= KV then
					b:Destroy()
				end
			end
		end
		local b = 0
		if s then
			local s = 0
			if KV.Visible then
				s = KV.CanvasSize["Y"].Offset
			end
			if s <= 0 then
				oV()
				return
			end
			local e = math.min(s, 180)
			KV.Size = UDim2.new(1, - 8, 0, e)
			b = e + 12
		else
			KV.Visible = false
			KV.Size = UDim2.new(1, - 8, 0, 0)
			if # OV <= 0 then
				oV()
				return
			end
			E("TextLabel", {
				Name = "HistoryHeader";
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 14),
				Font = Enum.Font["GothamBold"];
				Text = "Recent";
				TextColor3 = Color3.fromRGB(140, 110, 190),
				TextSize = 9;
				TextXAlignment = Enum.TextXAlignment["Left"],
				LayoutOrder = 1,
				ZIndex = 10000
			}, VV)
			for s, b in ipairs(OV) do
				local e = E("TextButton", {
					BackgroundColor3 = Color3.fromRGB(22, 20, 28);
					BackgroundTransparency = .5,
					Size = UDim2.new(1, 0, 0, 20),
					Font = Enum.Font["Gotham"];
					Text = ("  ") .. b;
					TextColor3 = Color3.fromRGB(180, 160, 200);
					TextSize = 10,
					TextXAlignment = Enum.TextXAlignment["Left"];
					LayoutOrder = s + 1,
					ZIndex = 10000,
					Children = {
						E("UICorner", {
							CornerRadius = UDim.new(0, 4)
						})
					}
				}, VV)
				e.MouseButton1Click:Connect(function()
					tV.Text = b
					DoSearch(b)
					oV()
				end)
			end
			b = ((# OV + 1)) * 22 + 12
		end
		if b <= 0 then
			oV()
			return
		end
		VV.Size = UDim2.new(0, 220, 0, b)
		VV.Visible = true
	end
	function DoSearch(s)
		s = ((s:lower()):gsub("^%s+", "")):gsub("%s+$", "")
		TV.Visible = s ~= ""
		if s == "" then
			JV = false
			qV = {}
			WV.Visible = false
			h.UpdateSearchTreeUI({}, "")
			oV()
			for s, b in ipairs(q) do
				b.elementFrame["Visible"] = true
				b.sectionFrame["Visible"] = true
				b.sectionScroll["Visible"] = true
				b.sectionScroll["Size"] = UDim2.new(0, 240, 0, 260)
			end
			for s, b in ipairs(i) do
				b.tabButton["Visible"] = true
			end
			if iV then
				for s, b in ipairs(i) do
					if b.scrollFrame == iV then
						h.ActivateScroll(b.scrollFrame, b.tabButton, b.tabUnderline, true)
						break
					end
				end
				iV = nil
			else
				if # i > 0 then
					local s = i[1]
					h.ActivateScroll(s.scrollFrame, s.tabButton, s.tabUnderline)
				end
			end
			return
		end
		if not JV then
			JV = true
			iV = QV
		end
		for s, b in ipairs(q) do
			b.elementFrame["Visible"] = false
		end
		for s, b in ipairs(i) do
			b.tabButton["Visible"] = false
			b.scrollFrame["Visible"] = false
			b.tabButton["TextColor3"] = Color3.fromRGB(200, 200, 200)
			b.tabUnderline["Visible"] = false
		end
		local b, e = {}, {}
		local Y = {}
		for b, e in ipairs(q) do
			local R = h.ScoreSearchEntry(e, s)
			if R > 0 then
				table.insert(Y, {
					entry = e,
					score = R
				})
			end
		end
		table.sort(Y, function(s, b)
			return s.score > b.score
		end)
		qV = {}
		for s, Y in ipairs(Y) do
			local R = Y.entry
			table.insert(qV, R)
			R.elementFrame["Visible"] = true
			if not e[R.scrollFrame] then
				e[R.scrollFrame] = true
				table.insert(b, R.scrollFrame)
			end
			for s, b in ipairs(i) do
				if b.scrollFrame == R.scrollFrame then
					b.tabButton["Visible"] = true
					break
				end
			end
		end
		local R = # qV
		WV.Visible = R > 0
		WV.Text = tostring(R)
		WV.Size = UDim2.new(0, math.max(22, # tostring(R) * 8 + 10), 0, 14)
		local M = h.UpdateSearchTreeUI(qV, s)
		if M <= 0 then
			oV()
		else
			h.UpdateHistoryUI(true)
		end
		if # b == 0 then
			return
		end
		h.RefreshSectionVisibility()
		for s, e in ipairs(i) do
			if e.scrollFrame == b[1] then
				h.ActivateScroll(e.scrollFrame, e.tabButton, e.tabUnderline, true)
				break
			end
		end
	end
	local UV = 0;
	(tV:GetPropertyChangedSignal("Text")):Connect(function()
		local s = tV.Text
		TV.Visible = s ~= ""
		UV = UV + 1
		local b = UV
		task.delay(.08, function()
			if b ~= UV then
				return
			end
			DoSearch(s)
			if s == "" then
				oV()
			end
		end)
	end)
	TV.MouseButton1Click:Connect(function()
		tV.Text = ""
		DoSearch("")
		oV()
		tV:CaptureFocus()
	end)
	tV.Focused:Connect(function()
		b:Tween(D, {
			BackgroundTransparency = .2
		}, .15)
		local s = (tV.Text:gsub("^%s+", "")):gsub("%s+$", "")
		if s ~= "" and # qV > 0 then
			h.UpdateSearchTreeUI(qV, s)
			h.UpdateHistoryUI(true)
		elseif s == "" and # OV > 0 then
			h.UpdateHistoryUI(false)
		else
			oV()
		end
	end)
	tV.FocusLost:Connect(function(s)
		b:Tween(D, {
			BackgroundTransparency = .4
		}, .2)
		if s then
			h.SaveSearchToHistory(tV.Text)
		end
		task.delay(.25, function()
			if not tV:IsFocused() then
				oV()
			end
		end)
	end)
	local nV = {}
	local sc = true
	function nV.AddTab(L, e, Y, R)
		if not checkCondition(R) then
			return J
		end
		local c = {
			["cat-quantum"] = "rbxassetid://82115431450716";
			["home-quantum"] = "rbxassetid://130439434919073",
			["swords-quantum"] = "rbxassetid://88173691221304",
			["rabbit-quantum"] = "rbxassetid://138575837887336";
			["ship-quantum"] = "rbxassetid://115481449706054",
			["visual-quantum"] = "rbxassetid://102173201308116",
			["info-quantum"] = "rbxassetid://88050097561287",
			["misc-quantum"] = "rbxassetid://137985950260873",
			["cart-quantum"] = "rbxassetid://137995400175306",
			["cherry-quantum"] = "rbxassetid://122029349593217",
			["map-quantum"] = "rbxassetid://125480398387209";
			["raid-quantum"] = "rbxassetid://104575804564229";
			["user-quantum"] = "rbxassetid://83474083071373",
			["settings-quantum"] = "rbxassetid://81151604784579";
			["bio-quantum"] = "rbxassetid://132316362727024";
			["craft-quantum"] = "rbxassetid://118197342073112"
		}
		local A, g, j = 16, 6, 12
		local r = 14
		local y = E("TextButton", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			AutoButtonColor = false,
			Font = Enum.Font["FredokaOne"],
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = r,
			TextXAlignment = Enum.TextXAlignment["Right"];
			Text = e,
			ClipsDescendants = false,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(0, 7)
				});
				E("ImageLabel", {
					Name = "TabIcon",
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0, .5),
					Size = UDim2.new(0, A, 0, A),
					Position = UDim2.new(0, 5, .5, 0);
					Image = c[Y] or "",
					ScaleType = Enum.ScaleType["Fit"]
				})
			}
		}, nil)
		local function w()
			local s = (p:GetTextSize(e, r, Enum.Font["FredokaOne"], Vector2.new(4096, 24))).X
			y.Size = UDim2.new(0, ((g + A) + j) + s, 0, 24)
		end
		RegisterLayoutRefresh(w)
		w()
		local a = E("Frame", {
			Name = "Tab_Underline";
			BackgroundColor3 = Color3.fromRGB(110, 55, 190),
			BorderSizePixel = 0,
			AnchorPoint = Vector2.new(.5, 0);
			Size = UDim2.new(.5, 0, 0, 3);
			Position = UDim2.new(.5, 0, 1, 1),
			Visible = false,
			Children = {
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				});
				E("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 100, 255));
						ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 40, 180))
					}),
					Rotation = 0
				})
			}
		}, y)
		y.Parent = GV
		local f = E("ScrollingFrame", {
			Name = "ScrollingFrame";
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Position = UDim2.new(0, 0, 0, 0);
			Size = UDim2.new(1, 0, 1, 0);
			CanvasSize = UDim2.new(0, 0, 0, 0);
			ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
			ScrollBarThickness = 0;
			ScrollBarImageTransparency = 1,
			ScrollingDirection = Enum.ScrollingDirection["X"];
			ElasticBehavior = Enum.ElasticBehavior["Never"];
			ScrollingEnabled = false,
			Visible = false,
			ClipsDescendants = true
		}, SV)
		local H = E("UIListLayout", {
			Name = "Scrolling_Layout",
			FillDirection = Enum.FillDirection["Horizontal"],
			SortOrder = Enum.SortOrder["LayoutOrder"],
			Padding = UDim.new(0, 19)
		}, f)
		local function k()
			DebouncedFitScrollCanvas(f, H, "X", 4)
		end
		RegisterLayoutRefresh(function()
			FitScrollCanvas(f, H, "X", 4)
		end);
		(H:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(k);
		(f:GetPropertyChangedSignal("AbsoluteSize")):Connect(k)
		f.ChildAdded:Connect(k)
		f.ChildRemoved:Connect(k)
		table.insert(i, {
			tabButton = y;
			tabUnderline = a;
			scrollFrame = f
		})
		if sc then
			sc = false
			h.ActivateScroll(f, y, a)
		end
		y.MouseButton1Click:Connect(function()
			if JV then
				h.ActivateScroll(f, y, a)
				h.RefreshSectionVisibility()
			else
				if tV.Text ~= "" then
					tV.Text = ""
				end
				h.ActivateScroll(f, y, a)
			end
		end)
		local B = {}
		function B.addSection(R, Y)
			if not checkCondition(Y) then
				return J
			end
			local L = E("ScrollingFrame", {
				Name = "SectionScroll",
				BackgroundTransparency = 1,
				BorderSizePixel = 0;
				Size = UDim2.new(0, 240, 0, 260);
				ScrollBarThickness = 0;
				ScrollBarImageTransparency = 1;
				CanvasSize = UDim2.new(0, 0, 0, 0);
				Active = true;
				ClipsDescendants = true,
				ScrollingDirection = Enum.ScrollingDirection["Y"],
				AutomaticCanvasSize = Enum.AutomaticSize["Y"],
				ElasticBehavior = Enum.ElasticBehavior["WhenScrollable"];
				ScrollingEnabled = true;
				Children = {
					E("UICorner", {
						CornerRadius = UDim.new(1, 0)
					})
				}
			}, f)
			local p = E("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment["Center"],
				SortOrder = Enum.SortOrder["LayoutOrder"];
				Padding = UDim.new(0, 7)
			}, L)
			local function c()
				DebouncedFitScrollCanvas(L, p, "Y", 4)
			end
			RegisterLayoutRefresh(function()
				FitScrollCanvas(L, p, "Y", 4)
			end);
			(p:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(c);
			(L:GetPropertyChangedSignal("AbsoluteSize")):Connect(c)
			L.ChildAdded:Connect(c)
			L.ChildRemoved:Connect(c)
			local A = {}
			function A.addMenu(p, Y, R)
				if not checkCondition(R) then
					return J
				end
				local c = E("Frame", {
					Name = "Section",
					BackgroundTransparency = 1,
					BorderSizePixel = 0;
					Size = UDim2.new(.48, 0, 0, 20),
					ClipsDescendants = false
				}, L)
				local A = E("Frame", {
					Name = "InnerSection";
					BackgroundColor3 = Color3.fromRGB(25, 25, 25),
					BackgroundTransparency = .3;
					BorderSizePixel = 0;
					Position = UDim2.new(0, 5, 0, 0),
					Size = UDim2.new(1, - 5, 0, 25);
					Children = {
						E("UICorner", {
							CornerRadius = UDim.new(0, 6)
						})
					}
				}, c)
				local g = E("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment["Center"],
					SortOrder = Enum.SortOrder["LayoutOrder"];
					Padding = UDim.new(0, 3)
				}, A)
				local j = E("Frame", {
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 22),
					Children = {
						E("TextLabel", {
							BackgroundTransparency = 1;
							BorderSizePixel = 0;
							Size = UDim2.new(.6, 0, 1, 0),
							Position = UDim2.new(.2, 0, 0, 0);
							Font = Enum.Font["FredokaOne"];
							Text = Y,
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextSize = 15;
							TextTruncate = Enum.TextTruncate["AtEnd"],
							TextXAlignment = Enum.TextXAlignment["Center"],
							ZIndex = 3
						})
					}
				}, A)
				local r = E("UIGradient", {
					Color = ThemeColor("Lit");
					Rotation = 60
				})
				local w = E("UIGradient", {
					Color = ThemeColor("Lit");
					Rotation = 60
				})
				RegisterLitGradient(r)
				RegisterLitGradient(w)
				local a = E("Frame", {
					BackgroundColor3 = ThemeColor("Accent") or Color3.fromRGB(150, 100, 255),
					BorderSizePixel = 0;
					Size = UDim2.new(.2, 0, 0, 10);
					Position = UDim2.new(0, 0, .5, - 1);
					ZIndex = 2,
					Children = {
						E("UICorner", {
							CornerRadius = UDim.new(.5)
						}),
						r
					}
				}, j)
				local H = E("Frame", {
					BackgroundColor3 = ThemeColor("Accent") or Color3.fromRGB(150, 100, 255);
					BorderSizePixel = 0;
					Size = UDim2.new(.2, 0, 0, 10);
					Position = UDim2.new(.8, 0, .5, - 1),
					ZIndex = 2,
					Children = {
						E("UICorner", {
							CornerRadius = UDim.new(.5)
						});
						w
					}
				}, j)
				RegisterThemeElement(a, "BackgroundColor3", "Accent")
				RegisterThemeElement(H, "BackgroundColor3", "Accent")
				local function k()
					local s = math.max(UnscaledLayout(g.AbsoluteContentSize["Y"]) + 4, 22)
					c.Size = UDim2.new(1, 0, 0, s)
					A.Size = UDim2.new(1, - 10, 0, s)
				end
				RegisterLayoutRefresh(k);
				(g:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(k)
				k()
				local function B(R, M)
					R:SetAttribute("STX_SearchElement", true)
					local p = {
						tabButton = y;
						scrollFrame = f,
						sectionScroll = L,
						sectionFrame = c;
						elementFrame = R,
						tabTitle = e,
						menuTitle = Y;
						title = M or "",
						favKey = ((e or "")) .. (("|") .. (((Y or "")) .. (("|") .. ((M or "")))))
					}
					table.insert(q, p)
					V.Entries[p.favKey] = p
					local function A()
						for s, b in ipairs(V.List) do
							if b == p.favKey then
								return true
							end
						end
						return false
					end
					local function z()
						local e = V.List
						local Y
						for s, b in ipairs(e) do
							if b == p.favKey then
								Y = s
								break
							end
						end
						if Y then
							table.remove(e, Y)
							s.Notification:Notify({
								Title = "Favorites",
								Description = ("Removed ") .. ((p.title or ""))
							}, {
								Time = 2
							})
						else
							table.insert(e, p.favKey)
							s.Notification:Notify({
								Title = "Favorites";
								Description = ("Pinned ") .. ((p.title or ""))
							}, {
								Time = 2
							})
						end
						l:Save("_favorites", e)
						if V.Refresh then
							V.Refresh()
						end
						local M = E("Frame", {
							BackgroundColor3 = Color3.fromRGB(255, 200, 80),
							BackgroundTransparency = .4;
							Size = UDim2.new(1, 0, 1, 0),
							ZIndex = 40,
							Children = {
								E("UICorner", {
									CornerRadius = UDim.new(0, 6)
								})
							}
						}, R)
						b:Tween(M, {
							BackgroundTransparency = 1
						}, .4, Enum.EasingStyle["Quad"], nil, function()
							if M then
								M:Destroy()
							end
						end)
					end
					local function g()
						local s = R:FindFirstChild("_FavStar")
						if s then
							s:Destroy()
						end
						local b = A()
						local e = E("TextButton", {
							Name = "_FavStar",
							AnchorPoint = Vector2.new(1, .5),
							BackgroundTransparency = 1;
							BorderSizePixel = 0,
							Position = UDim2.new(1, - 6, .5, 0),
							Size = UDim2.new(0, 22, 0, 22);
							Font = Enum.Font["GothamBold"];
							Text = b and "\226\152\133" or "\226\152\134",
							TextColor3 = b and Color3.fromRGB(255, 210, 90) or Color3.fromRGB(210, 180, 255),
							TextSize = 16,
							ZIndex = 60,
							AutoButtonColor = false
						}, R)
						e.MouseButton1Click:Connect(function()
							z()
							if e and e.Parent then
								e:Destroy()
							end
						end)
						task.delay(3.5, function()
							if e and e.Parent then
								e:Destroy()
							end
						end)
					end
					local j = 0
					local r = Vector2.zero
					R.InputBegan:Connect(function(s)
						if s.UserInputType == Enum.UserInputType["MouseButton2"] then
							g()
							return
						end
						if s.UserInputType == Enum.UserInputType["Touch"] then
							local b = os.clock()
							local e = Vector2.new(s.Position["X"], s.Position["Y"])
							if (b - j <= .35) and (((e - r)).Magnitude < 40) then
								j = 0
								z()
							else
								j = b
								r = e
							end
						end
					end)
				end
				local N = {}
				function N.addButton(L, s, e, Y, R, M)
					if not checkCondition(R) then
						return J
					end
					e = e or function()
					end
					local p = E("TextButton", {
						BackgroundColor3 = ThemeColor("Primary"),
						BackgroundTransparency = .4,
						BorderSizePixel = 0;
						Size = UDim2.new(1, - 25, 0, 32);
						AutoButtonColor = false;
						Text = "";
						ClipsDescendants = true;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 6)
							}),
							E("TextLabel", {
								Name = "ButtonLabel",
								BackgroundTransparency = 1;
								Position = UDim2.new(0, 12, 0, 0);
								Size = UDim2.new(1, - 36, 1, 0);
								Font = Enum.Font["GothamBold"],
								Text = s;
								TextColor3 = Color3.fromRGB(210, 210, 220),
								TextXAlignment = Enum.TextXAlignment["Left"],
								TextWrapped = false;
								TextScaled = true;
								TextTruncate = Enum.TextTruncate["AtEnd"],
								ZIndex = 3,
								Children = {
									MakeTextConstraint(15, 8)
								}
							});
							E("TextLabel", {
								Name = "Arrow";
								BackgroundTransparency = 1,
								AnchorPoint = Vector2.new(1, .5),
								Position = UDim2.new(1, - 12, .5, 0);
								Size = UDim2.new(0, 14, 0, 14),
								Font = Enum.Font["GothamBold"],
								Text = "\226\128\186";
								TextColor3 = Color3.fromRGB(192, 132, 252);
								TextScaled = true,
								ZIndex = 3
							})
						}
					}, A)
					B(p, s)
					local c = p:FindFirstChild("Arrow")
					local g = p:FindFirstChild("ButtonLabel")
					RegisterTranslatable(g, s)
					p.MouseEnter:Connect(function()
						b:Tween(p, {
							BackgroundTransparency = .28
						}, .2, Enum.EasingStyle["Quint"])
						b:Tween(g, {
							TextColor3 = Color3.fromRGB(235, 235, 245)
						}, .2)
						b:Tween(c, {
							Position = UDim2.new(1, - 9, .5, 0),
							TextColor3 = Color3.fromRGB(216, 180, 254)
						}, .2, Enum.EasingStyle["Back"], Enum.EasingDirection["Out"])
					end)
					p.MouseLeave:Connect(function()
						b:Tween(p, {
							BackgroundTransparency = .4
						}, .25, Enum.EasingStyle["Quint"])
						b:Tween(g, {
							TextColor3 = Color3.fromRGB(210, 210, 220)
						}, .25)
						b:Tween(c, {
							Position = UDim2.new(1, - 12, .5, 0),
							TextColor3 = Color3.fromRGB(192, 132, 252)
						}, .25, Enum.EasingStyle["Quint"])
					end)
					p.MouseButton1Click:Connect(function()
						CircleClick(p, z.X, z.Y)
						b:Tween(c, {
							Position = UDim2.new(1, - 6, .5, 0)
						}, .1, Enum.EasingStyle["Quart"])
						task.delay(.1, function()
							b:Tween(c, {
								Position = UDim2.new(1, - 9, .5, 0)
							}, .25, Enum.EasingStyle["Back"], Enum.EasingDirection["Out"])
						end)
						e()
					end)
					RegisterKeyLocked(p, Y)
				end
				function N.addToggle(j, s, e, Y, R, M, L, p, c, g)
					if not checkCondition(p) then
						return J
					end
					Y = Y or function()
					end
					e = e or false
					if L then
						l:RegisterKey(L)
					end
					if L then
						if ((not R or h.HasKeyAccess())) and not IsFullLocked() then
							local s = l:Get(L, nil)
							if s ~= nil then
								e = s
							end
						end
					end
					local r, y = Z.DescMetrics(M, Enum.Font["Gotham"], 11, 150)
					local w = y > 0 and (28 + y) or 32
					local a = E("TextButton", {
						BackgroundColor3 = ThemeColor("Primary");
						BackgroundTransparency = .4,
						Size = UDim2.new(1, - 25, 0, w);
						Position = UDim2.new(0, 0, 0, 0),
						BorderSizePixel = 0,
						AutoButtonColor = false;
						Text = "",
						ClipsDescendants = true,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 6)
							})
						}
					}, A)
					B(a, s)
					local f = E("Frame", {
						BackgroundColor3 = Color3.fromRGB(15, 15, 15);
						Position = UDim2.new(1, - 50, .5, - 9),
						Size = UDim2.new(0, 36, 0, 18),
						BorderSizePixel = 0;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(1, 0)
							}),
							E("UIStroke", {
								Color = Color3.fromRGB(100, 100, 100);
								Transparency = .8;
								Thickness = 2;
								ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
							})
						}
					}, a)
					local H = E("ImageLabel", {
						AnchorPoint = Vector2.new(0, .5),
						Size = UDim2.fromOffset(14, 14);
						Position = e and UDim2.new(0, 19, .5, 0) or UDim2.new(0, 2, .5, 0),
						Image = "http://www.roblox.com/asset/?id=12266946128",
						ImageTransparency = e and 0 or .5,
						BackgroundTransparency = 1;
						ImageColor3 = Color3.fromRGB(255, 255, 255)
					}, f)
					local k = E("UIGradient", {
						Color = ThemeColor("Lit"),
						Rotation = 90
					}, H)
					k.Enabled = e
					RegisterLitGradient(k)
					local N = E("TextLabel", {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 10, 0, 4),
						Size = UDim2.new(1, - 66, 0, 20),
						Font = Enum.Font["GothamBold"],
						Text = s;
						TextColor3 = e and Color3.fromRGB(220, 220, 220) or Color3.fromRGB(180, 180, 180);
						TextXAlignment = Enum.TextXAlignment["Left"],
						TextWrapped = false,
						TextScaled = true;
						TextTruncate = Enum.TextTruncate["AtEnd"],
						Children = {
							MakeTextConstraint(14, 8)
						}
					}, a)
					RegisterTranslatable(N, s)
					if y > 0 then
						local s = E("TextLabel", {
							Name = "DescLabel";
							BackgroundTransparency = 1,
							Position = UDim2.new(0, 10, 0, 22),
							Size = UDim2.new(1, - 60, 0, y),
							Font = Enum.Font["Gotham"];
							Text = r;
							TextColor3 = Color3.fromRGB(130, 130, 145),
							TextXAlignment = Enum.TextXAlignment["Left"];
							TextYAlignment = Enum.TextYAlignment["Top"];
							TextWrapped = true;
							TextSize = 11;
							ZIndex = 2
						}, a)
						RegisterTranslatable(s, M)
					end
					local I = ((R and not h.HasKeyAccess())) and false or e
					local P = {}
					local function m()
						for s, b in ipairs(P) do
							if b.Optional then
								b.Frame["Visible"] = I
							end
							if b.SetInteractable then
								b.SetInteractable(I)
							end
						end
					end
					local function X()
						b:Tween(H, {
							Position = I and UDim2.new(0, 19, .5, 0) or UDim2.new(0, 2, .5, 0),
							ImageTransparency = I and 0 or .5;
							ImageColor3 = Color3.fromRGB(255, 255, 255)
						}, .3, Enum.EasingStyle["Quint"], Enum.EasingDirection["Out"])
						k.Enabled = I
						b:Tween(N, {
							TextColor3 = I and Color3.fromRGB(230, 230, 230) or Color3.fromRGB(120, 120, 120)
						}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
						if L and ((not R or h.HasKeyAccess())) then
							l:ElementSave(L, I)
						end
						Y(I)
						m()
					end
					if L then
						l:RegisterControl(L, {
							Type = "Toggle";
							Default = e;
							Set = function(s, e)
								I = s == true
								b:Tween(H, {
									Position = I and UDim2.new(0, 19, .5, 0) or UDim2.new(0, 2, .5, 0),
									ImageTransparency = I and 0 or .5;
									ImageColor3 = Color3.fromRGB(255, 255, 255)
								}, .3, Enum.EasingStyle["Quint"], Enum.EasingDirection["Out"])
								k.Enabled = I
								b:Tween(N, {
									TextColor3 = I and Color3.fromRGB(230, 230, 230) or Color3.fromRGB(120, 120, 120)
								}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
								m()
								if e ~= false then
									pcall(Y, I)
								end
							end,
							Get = function()
								return I
							end
						})
					end
					X()
					a.Activated:Connect(function()
						CircleClick(a, z.X, z.Y)
						I = not I
						X()
					end)
					if R and L then
						table.insert(u, {
							saveKey = L,
							UpdateFn = function()
								if h.HasKeyAccess() then
									local s = l:Get(L, nil)
									I = s ~= nil and s or e
									X()
								end
							end
						})
					end
					RegisterKeyLocked(a, R)
					if type(c) == "table" then
						local e = L or (s:lower()):gsub("%s+", "")
						for Y, M in ipairs(c) do
							local L = M.Title or M[1] or "Sub Toggle"
							local p = M.Default or M[2] or false
							local c = M.Callback or M[3] or function()
							end
							local g = M.SaveKey or M.savekey or (e .. (("_sub") .. Y))
							local j = M.Optional == true
							l:RegisterKey(g)
							if ((not R or h.HasKeyAccess())) and not IsFullLocked() then
								local s = l:Get(g, nil)
								if s ~= nil then
									p = s
								end
							end
							local r = E("TextButton", {
								BackgroundColor3 = ThemeColor("Primary"),
								BackgroundTransparency = .48,
								Size = UDim2.new(1, - 38, 0, 28),
								BorderSizePixel = 0;
								AutoButtonColor = false,
								Text = "",
								Active = I,
								Visible = not j or I,
								ClipsDescendants = true,
								Children = {
									E("UICorner", {
										CornerRadius = UDim.new(0, 6)
									})
								}
							}, A)
							B(r, L .. ((" (") .. (s .. ")")))
							local y = E("Frame", {
								BackgroundColor3 = Color3.fromRGB(12, 12, 12),
								Position = UDim2.new(1, - 40, .5, - 8),
								Size = UDim2.new(0, 30, 0, 16);
								BorderSizePixel = 0,
								Children = {
									E("UICorner", {
										CornerRadius = UDim.new(1, 0)
									}),
									E("UIStroke", {
										Color = Color3.fromRGB(100, 100, 100),
										Transparency = .8,
										Thickness = 2;
										ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
									})
								}
							}, r)
							local Z = y.UIStroke
							local w = E("ImageLabel", {
								AnchorPoint = Vector2.new(0, .5),
								Size = UDim2.fromOffset(12, 12);
								Position = p and UDim2.new(0, 16, .5, 0) or UDim2.new(0, 2, .5, 0),
								Image = "http://www.roblox.com/asset/?id=12266946128",
								ImageTransparency = p and 0 or .5,
								BackgroundTransparency = 1;
								ImageColor3 = Color3.fromRGB(255, 255, 255)
							}, y)
							local a = E("UIGradient", {
								Color = ThemeColor("Lit");
								Rotation = 90
							}, w)
							a.Enabled = p
							RegisterLitGradient(a)
							local f = E("TextLabel", {
								BackgroundTransparency = 1;
								Position = UDim2.new(0, 12, 0, 0);
								Size = UDim2.new(1, - 54, 1, 0),
								Font = Enum.Font["GothamBold"],
								Text = L;
								TextColor3 = p and Color3.fromRGB(205, 205, 210) or Color3.fromRGB(145, 145, 150),
								TextXAlignment = Enum.TextXAlignment["Left"];
								TextWrapped = false,
								TextScaled = true;
								TextTruncate = Enum.TextTruncate["AtEnd"];
								Children = {
									MakeTextConstraint(13, 8)
								}
							}, r)
							RegisterTranslatable(f, L)
							local H = p
							local function k()
								b:Tween(w, {
									Position = H and UDim2.new(0, 16, .5, 0) or UDim2.new(0, 2, .5, 0),
									ImageTransparency = H and 0 or .5
								}, .3, Enum.EasingStyle["Quint"], Enum.EasingDirection["Out"])
								a.Enabled = H
								b:Tween(f, {
									TextColor3 = H and Color3.fromRGB(205, 205, 210) or Color3.fromRGB(145, 145, 150)
								}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
								b:Tween(r, {
									BackgroundTransparency = H and .35 or .48
								}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
								if (not R or h.HasKeyAccess()) then
									l:ElementSave(g, H)
								end
								c(H)
							end
							if g then
								l:RegisterControl(g, {
									Type = "SubToggle",
									Default = M.Default or M[2] or false;
									Set = function(s, e)
										H = s == true
										b:Tween(w, {
											Position = H and UDim2.new(0, 16, .5, 0) or UDim2.new(0, 2, .5, 0);
											ImageTransparency = H and 0 or .5
										}, .3, Enum.EasingStyle["Quint"], Enum.EasingDirection["Out"])
										a.Enabled = H
										b:Tween(f, {
											TextColor3 = H and Color3.fromRGB(205, 205, 210) or Color3.fromRGB(145, 145, 150)
										}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
										b:Tween(r, {
											BackgroundTransparency = H and .35 or .48
										}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
										if e ~= false then
											pcall(c, H)
										end
									end,
									Get = function()
										return H
									end
								})
							end
							local function N(s)
								r.Active = s
								b:Tween(r, {
									BackgroundTransparency = s and ((H and .35 or .48)) or .75
								}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
								b:Tween(f, {
									TextTransparency = s and 0 or .6;
									TextColor3 = s and ((H and Color3.fromRGB(205, 205, 210) or Color3.fromRGB(145, 145, 150))) or Color3.fromRGB(100, 100, 105)
								}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
								b:Tween(y, {
									BackgroundTransparency = s and 0 or .65
								}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
								b:Tween(w, {
									ImageTransparency = s and ((H and 0 or .5)) or .75
								}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
								b:Tween(Z, {
									Transparency = s and .8 or .9
								}, .3, Enum.EasingStyle["Sine"], Enum.EasingDirection["Out"])
							end
							r.Activated:Connect(function()
								if not I then
									return
								end
								CircleClick(r, z.X, z.Y)
								H = not H
								k()
							end)
							k()
							N(I)
							table.insert(P, {
								Frame = r;
								Optional = j,
								SetInteractable = N
							})
						end
					end
					return {
						Update = function(s)
							I = s
							X()
						end;
						Get = function()
							return I
						end,
						Frame = a
					}
				end
				function N.addSlider(r, s, e, Y, R, L, p, c, z, g, j)
					if not checkCondition(g) then
						return J
					end
					L = L or function()
					end
					e = e or 0
					Y = Y or 100
					c = c or 1
					if z then
						l:RegisterKey(z)
					end
					if z then
						if not p or h.HasKeyAccess() then
							local s = l:Get(z, nil)
							if s ~= nil then
								R = s
							end
						end
					end
					R = math.clamp(R or e, e, Y)
					local y = select(2, (tostring(c)):find("%.")) and # tostring(c) - (tostring(c)):find("%.") or 0
					local Z = ("%.") .. (y .. "f")
					local function w(s)
						return math.floor(s / c + .5) * c
					end
					local a = E("Frame", {
						BackgroundColor3 = ThemeColor("Primary"),
						BackgroundTransparency = .4,
						Size = UDim2.new(1, - 25, 0, 54),
						Position = UDim2.new(0, 0, 0, 0);
						BorderSizePixel = 0,
						ClipsDescendants = true,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 6)
							})
						}
					}, A)
					local f = E("UIStroke", {
						Color = Color3.fromRGB(192, 132, 252);
						Transparency = 1;
						Thickness = 1;
						ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
					}, a)
					local H = E("TextLabel", {
						BackgroundTransparency = 1;
						Size = UDim2.new(1, - 70, 0, 18);
						Position = UDim2.new(0, 12, 0, 8),
						Font = Enum.Font["GothamBold"];
						Text = s,
						TextSize = 13;
						TextColor3 = Color3.fromRGB(220, 220, 230);
						TextXAlignment = Enum.TextXAlignment["Left"],
						TextWrapped = false;
						TextScaled = true,
						TextTruncate = Enum.TextTruncate["AtEnd"],
						ZIndex = 3,
						Children = {
							MakeTextConstraint(15, 8)
						}
					}, a)
					RegisterTranslatable(H, s)
					B(a, s)
					local k = E("TextBox", {
						BackgroundColor3 = Color3.fromRGB(12, 12, 18),
						BackgroundTransparency = .2;
						Position = UDim2.new(1, - 56, 0, 6);
						Size = UDim2.new(0, 46, 0, 20);
						Font = Enum.Font["GothamBold"],
						Text = string.format(Z, R);
						TextSize = 12;
						TextColor3 = Color3.fromRGB(192, 132, 252);
						TextXAlignment = Enum.TextXAlignment["Center"],
						TextTruncate = Enum.TextTruncate["AtEnd"],
						ClipsDescendants = true;
						ClearTextOnFocus = false,
						ZIndex = 3;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 5)
							});
							E("UIStroke", {
								Color = Color3.fromRGB(192, 132, 252),
								Transparency = .72;
								Thickness = 1;
								ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
							})
						}
					}, a)
					local N = E("Frame", {
						BackgroundColor3 = Color3.fromRGB(10, 10, 16),
						BackgroundTransparency = .1,
						Position = UDim2.new(0, 12, 0, 34);
						Size = UDim2.new(1, - 24, 0, 10);
						ZIndex = 2,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(1, 0)
							}),
							E("UIStroke", {
								Color = Color3.fromRGB(192, 132, 252);
								Transparency = .82,
								Thickness = 1;
								ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
							})
						}
					}, a)
					local I = E("UIGradient", {
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color3.fromRGB(139, 92, 246)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(216, 180, 254))
						}),
						Rotation = 0
					})
					RegisterButtonGradient(I)
					local P = E("Frame", {
						BackgroundTransparency = 0;
						Size = UDim2.new(((R - e)) / ((Y - e)), 0, 1, 0);
						ZIndex = 3;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(1, 0)
							}),
							I
						}
					}, N)
					local m = E("Frame", {
						Name = "Thumb",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						AnchorPoint = Vector2.new(.5, .5),
						Position = UDim2.new(((R - e)) / ((Y - e)), 0, .5, 0);
						Size = UDim2.new(0, 13, 0, 13),
						ZIndex = 5,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(1, 0)
							});
							E("UIStroke", {
								Color = Color3.fromRGB(192, 132, 252);
								Transparency = .3,
								Thickness = 1.5;
								ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
							});
							E("Frame", {
								BackgroundColor3 = Color3.fromRGB(192, 132, 252);
								AnchorPoint = Vector2.new(.5, .5),
								Position = UDim2.new(.5, 0, .5, 0),
								Size = UDim2.new(0, 5, 0, 5);
								ZIndex = 6,
								Children = {
									E("UICorner", {
										CornerRadius = UDim.new(1, 0)
									})
								}
							})
						}
					}, N)
					local X = false
					local function x(s)
						local R = ((s - e)) / ((Y - e))
						P:TweenSize(UDim2.new(R, 0, 1, 0), Enum.EasingDirection["Out"], Enum.EasingStyle["Quint"], .15, true)
						b:Tween(m, {
							Position = UDim2.new(R, 0, .5, 0)
						}, .15, Enum.EasingStyle["Quint"], Enum.EasingDirection["Out"])
						k.Text = string.format(Z, s)
						if z and ((not p or h.HasKeyAccess())) then
							l:ElementSave(z, s)
						end
						L(s)
					end
					local function C(s)
						local b = math.clamp(((s - N.AbsolutePosition["X"])) / N.AbsoluteSize["X"], 0, 1)
						x(w(e + ((Y - e)) * b))
					end
					x(R)
					local d = nil
					local function t(s)
						if d ~= nil then
							return
						end
						if s.UserInputType == Enum.UserInputType["Touch"] or s.UserInputType == Enum.UserInputType["MouseButton1"] then
							X = true
							d = s
							C(s.Position["X"])
							b:Tween(f, {
								Transparency = .45
							}, .15)
							b:Tween(m, {
								Size = UDim2.new(0, 15, 0, 15)
							}, .15, Enum.EasingStyle["Back"], Enum.EasingDirection["Out"])
						end
					end
					N.InputBegan:Connect(t)
					m.InputBegan:Connect(t)
					a.InputBegan:Connect(function(s)
						if s.UserInputType == Enum.UserInputType["Touch"] or s.UserInputType == Enum.UserInputType["MouseButton1"] then
							local b = s.Position["Y"] - a.AbsolutePosition["Y"]
							if b >= 28 then
								t(s)
							end
						end
					end)
					M.InputChanged:Connect(function(s)
						if not X or not d then
							return
						end
						if s == d or (d.UserInputType == Enum.UserInputType["MouseButton1"] and s.UserInputType == Enum.UserInputType["MouseMovement"]) then
							C(s.Position["X"])
						end
					end)
					M.InputEnded:Connect(function(s)
						if s == d then
							X = false
							d = nil
							b:Tween(f, {
								Transparency = 1
							}, .3)
							b:Tween(m, {
								Size = UDim2.new(0, 13, 0, 13)
							}, .2, Enum.EasingStyle["Quint"])
						end
					end)
					k.FocusLost:Connect(function()
						local s = tonumber(k.Text)
						if s then
							x(w(math.clamp(s, e, Y)))
						else
							x(R)
						end
					end)
					if z then
						l:RegisterControl(z, {
							Type = "Slider";
							Default = R,
							Set = function(s, M)
								s = tonumber(s) or R
								s = math.clamp(s, e, Y)
								local p = ((s - e)) / ((Y - e))
								P:TweenSize(UDim2.new(p, 0, 1, 0), Enum.EasingDirection["Out"], Enum.EasingStyle["Quint"], .15, true)
								b:Tween(m, {
									Position = UDim2.new(p, 0, .5, 0)
								}, .15, Enum.EasingStyle["Quint"], Enum.EasingDirection["Out"])
								k.Text = string.format(Z, s)
								if M ~= false then
									pcall(L, s)
								end
							end,
							Get = function()
								return tonumber(k.Text) or R
							end
						})
					end
					if p and z then
						table.insert(u, {
							saveKey = z,
							UpdateFn = function()
								if h.HasKeyAccess() then
									local s = l:Get(z, nil)
									x(math.clamp(s ~= nil and s or R, e, Y))
								else
									x(R)
								end
							end
						})
					end
					RegisterKeyLocked(a, p)
				end
				function N.addDropdown(j, s, e, Y, R, M, L, p, c, g)
					if not checkCondition(c) then
						return J
					end
					e = e or 1
					Y = Y or {}
					R = R or function()
					end
					if p then
						l:RegisterKey(p)
					end
					if p then
						if not M or h.HasKeyAccess() then
							local s = l:Get(p, nil)
							if s ~= nil then
								e = s
							end
						end
					end
					local r = {}
					local y = {}
					local function Z(s)
						if not table.find(r, s) then
							table.insert(r, s)
						end
					end
					local function w(s)
						for b, e in ipairs(r) do
							if e == s then
								table.remove(r, b)
								return
							end
						end
					end
					local function a()
						local s = {}
						for b, e in ipairs(r) do
							s[# s + 1] = Y[e]
						end
						return s
					end
					local function f(s, b)
						b = b or 2
						if # s == 0 then
							return "None"
						elseif # s <= b then
							return table.concat(s, ", ")
						else
							local e = {}
							for b = 1, b, 1 do
								e[b] = s[b]
							end
							return table.concat(e, ", ") .. (("  +") .. (# s - b))
						end
					end
					local function H()
						local function s(s)
							if # Y < 1 then
								return
							end
							local b = type(s) == "number" and math.clamp(s, 1, # Y) or type(s) == "string" and table.find(Y, s)
							if b then
								Z(b)
							end
						end
						if L then
							if typeof(e) == "table" then
								for b, e in ipairs(e) do
									s(e)
								end
							else
								s(e)
							end
							if # r == 0 and # Y > 0 then
								Z(1)
							end
						else
							s(e)
							if # r == 0 and # Y > 0 then
								Z(1)
							end
						end
					end
					H()
					local k = E("Frame", {
						BackgroundColor3 = ThemeColor("Primary"),
						BackgroundTransparency = .4;
						BorderSizePixel = 0,
						Size = UDim2.new(1, - 25, 0, 32),
						ClipsDescendants = true;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 6)
							})
						}
					}, A)
					local N = E("UIStroke", {
						Color = Color3.fromRGB(192, 132, 252),
						Transparency = 1;
						Thickness = 1,
						ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
					}, k)
					B(k, s)
					local I = E("TextLabel", {
						BackgroundTransparency = 1;
						Position = UDim2.new(0, 12, 0, 0),
						Size = UDim2.new(1, - 95, 1, 0),
						Font = Enum.Font["GothamBold"],
						TextColor3 = Color3.fromRGB(220, 220, 230),
						TextXAlignment = Enum.TextXAlignment["Left"];
						Text = s;
						TextWrapped = false,
						TextScaled = true,
						TextTruncate = Enum.TextTruncate["AtEnd"],
						ZIndex = 3,
						Children = {
							MakeTextConstraint(15, 8)
						}
					}, k)
					local P = E("Frame", {
						BackgroundColor3 = Color3.fromRGB(12, 12, 18),
						BackgroundTransparency = .15;
						BorderSizePixel = 0,
						Position = UDim2.new(1, - 90, .5, - 11),
						Size = UDim2.new(0, 68, 0, 22);
						ZIndex = 3;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 5)
							});
							E("UIStroke", {
								Color = Color3.fromRGB(192, 132, 252);
								Transparency = .75;
								Thickness = 1;
								ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
							})
						}
					}, k)
					local m = E("TextLabel", {
						BackgroundTransparency = 1;
						Size = UDim2.new(1, - 8, 1, 0);
						Position = UDim2.new(0, 6, 0, 0),
						Font = Enum.Font["GothamBold"];
						TextColor3 = Color3.fromRGB(192, 132, 252);
						TextScaled = true,
						TextTruncate = Enum.TextTruncate["AtEnd"];
						TextXAlignment = Enum.TextXAlignment["Left"],
						Text = L and f(a(), 2) or (Y[r[1]] or "None"),
						ZIndex = 4,
						Children = {
							MakeTextConstraint(13, 10)
						}
					}, P)
					local X = E("ImageButton", {
						BackgroundTransparency = 1;
						AnchorPoint = Vector2.new(1, .5),
						Position = UDim2.new(1, - 8, .5, 0),
						Size = UDim2.new(0, 16, 0, 16),
						Image = "rbxassetid://95968409641902",
						ImageColor3 = Color3.fromRGB(192, 132, 252);
						ZIndex = 3
					}, k)
					local x = E("Frame", {
						Visible = false;
						Active = true;
						BackgroundTransparency = .6,
						BackgroundColor3 = Color3.fromRGB(0, 0, 0);
						Size = UDim2.new(1, 0, 1, 0);
						ZIndex = 9
					}, z9)
					local C = E("Frame", {
						Visible = false,
						AnchorPoint = Vector2.new(.5, .5),
						Position = UDim2.new(.5, 0, .5, 0),
						BackgroundTransparency = .18;
						Size = UDim2.new(0, 250, 0, 0),
						BackgroundColor3 = Color3.fromRGB(14, 14, 20);
						ZIndex = 10;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 10)
							}),
							E("UIStroke", {
								Color = Color3.fromRGB(192, 132, 252);
								Transparency = .72,
								Thickness = 1
							})
						}
					}, z9)
					E("TextLabel", {
						Size = UDim2.new(1, - 40, 0, 20),
						Position = UDim2.new(0, 12, 0, 8);
						BackgroundTransparency = 1,
						Text = s,
						Font = Enum.Font["GothamBold"],
						TextSize = 13;
						TextColor3 = Color3.fromRGB(220, 220, 230);
						TextXAlignment = Enum.TextXAlignment["Left"],
						ZIndex = 11
					}, C)
					local d = E("TextButton", {
						Text = "\195\151";
						TextColor3 = Color3.fromRGB(192, 132, 252),
						TextSize = 18;
						Font = Enum.Font["GothamBold"];
						Size = UDim2.new(0, 22, 0, 22);
						Position = UDim2.new(1, - 28, 0, 5),
						BackgroundColor3 = Color3.fromRGB(192, 132, 252),
						BackgroundTransparency = .88,
						AutoButtonColor = false;
						ZIndex = 12;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 5)
							})
						}
					}, C)
					local t = E("TextBox", {
						Text = "",
						PlaceholderText = "Search options...";
						PlaceholderColor3 = Color3.fromRGB(120, 100, 150),
						Size = UDim2.new(1, - 16, 0, 26);
						Position = UDim2.new(0, 8, 0, 34),
						TextSize = 12,
						Font = Enum.Font["Gotham"],
						TextColor3 = Color3.fromRGB(220, 220, 230),
						TextXAlignment = Enum.TextXAlignment["Left"],
						BackgroundColor3 = Color3.fromRGB(10, 10, 16);
						BackgroundTransparency = .1,
						ClearTextOnFocus = true;
						ZIndex = 11,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 6)
							});
							E("UIStroke", {
								Color = Color3.fromRGB(192, 132, 252),
								Transparency = .78,
								Thickness = 1;
								ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
							}),
							E("UIPadding", {
								PaddingLeft = UDim.new(0, 8)
							})
						}
					}, C)
					local T = E("ScrollingFrame", {
						Size = UDim2.new(1, - 8, 1, - 70),
						Position = UDim2.new(0, 4, 0, 66);
						CanvasSize = UDim2.new(0, 0, 0, 0);
						ScrollBarThickness = 0;
						ScrollBarImageTransparency = 1,
						AutomaticCanvasSize = Enum.AutomaticSize["Y"];
						ElasticBehavior = Enum.ElasticBehavior["WhenScrollable"];
						BackgroundTransparency = 1;
						Active = true,
						ZIndex = 11,
						Children = {
							E("UIListLayout", {
								Padding = UDim.new(0, 4),
								SortOrder = Enum.SortOrder["LayoutOrder"]
							}),
							E("UIPadding", {
								PaddingLeft = UDim.new(0, 2);
								PaddingRight = UDim.new(0, 2),
								PaddingTop = UDim.new(0, 2);
								PaddingBottom = UDim.new(0, 4)
							})
						}
					}, C)
					local W = UDim2.new(0, 250, 0, 230)
					local function F(s, b)
						local e = s.AbsolutePosition
						local Y = b.AbsolutePosition
						return UDim2.new(0, e.X - Y.X, 0, e.Y - Y.Y)
					end
					local function Q()
						local s = F(X, z9)
						local e = X.AbsoluteSize
						b:Tween(C, {
							Position = s,
							Size = UDim2.new(0, e.X, 0, e.Y)
						}, .25, Enum.EasingStyle["Quint"], Enum.EasingDirection["In"])
						b:Tween(X, {
							Rotation = 0
						}, .25, Enum.EasingStyle["Quint"])
						b:Tween(N, {
							Transparency = 1
						}, .3)
						task.delay(.25, function()
							C.Visible = false
							x.Visible = false
						end)
					end
					local function i(s)
						for s, b in ipairs(T:GetChildren()) do
							if b:IsA("Frame") then
								b:Destroy()
							end
						end
						y = {}
						for b, e in ipairs(Y) do
							if not s or s == "" or string.find(string.lower(e), string.lower(s), 1, true) then
								table.insert(y, {
									index = b;
									value = e
								})
							end
						end
						for s, e in ipairs(y) do
							local c, A = e.index, e.value
							local g = table.find(r, c) ~= nil
							local j = E("Frame", {
								Name = ("Item_") .. c,
								BackgroundColor3 = Color3.fromRGB(22, 22, 32);
								BackgroundTransparency = g and .3 or .55;
								BorderSizePixel = 0;
								Size = UDim2.new(1, 0, 0, 30);
								LayoutOrder = s,
								ZIndex = 12,
								Children = {
									E("UICorner", {
										CornerRadius = UDim.new(0, 6)
									}),
									E("UIStroke", {
										Color = Color3.fromRGB(192, 132, 252),
										Transparency = g and .55 or .9,
										Thickness = 1;
										ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
									})
								}
							}, T)
							local y = E("Frame", {
								BackgroundColor3 = Color3.fromRGB(192, 132, 252);
								BackgroundTransparency = g and 0 or 1;
								AnchorPoint = Vector2.new(0, .5);
								Position = UDim2.new(0, 6, .5, 0),
								Size = UDim2.new(0, 3, 0, 14);
								ZIndex = 13,
								Children = {
									E("UICorner", {
										CornerRadius = UDim.new(1, 0)
									}),
									E("UIGradient", {
										Color = ColorSequence.new({
											ColorSequenceKeypoint.new(0, Color3.fromRGB(216, 180, 254));
											ColorSequenceKeypoint.new(1, Color3.fromRGB(139, 92, 246))
										}),
										Rotation = 90
									})
								}
							}, j)
							local H = E("TextLabel", {
								BackgroundTransparency = 1,
								Position = UDim2.new(0, 16, 0, 0);
								Size = UDim2.new(1, - 24, 1, 0),
								Font = Enum.Font["GothamBold"],
								Text = A,
								TextSize = 12,
								TextColor3 = g and Color3.fromRGB(216, 180, 254) or Color3.fromRGB(190, 190, 205),
								TextXAlignment = Enum.TextXAlignment["Left"];
								ZIndex = 13
							}, j)
							local k
							if L then
								k = E("TextLabel", {
									BackgroundTransparency = 1,
									AnchorPoint = Vector2.new(1, .5),
									Position = UDim2.new(1, - 8, .5, 0),
									Size = UDim2.new(0, 14, 0, 14),
									Font = Enum.Font["GothamBold"],
									Text = g and "\226\152\133" or "",
									TextSize = 11;
									TextColor3 = Color3.fromRGB(192, 132, 252),
									ZIndex = 13
								}, j)
							end
							local B = E("TextButton", {
								BackgroundTransparency = 1;
								Size = UDim2.new(1, 0, 1, 0);
								Text = "";
								ZIndex = 14
							}, j)
							B.MouseEnter:Connect(function()
								b:Tween(j, {
									BackgroundTransparency = .35
								}, .15)
								b:Tween(H, {
									TextColor3 = Color3.fromRGB(230, 220, 255)
								}, .15)
							end)
							B.MouseLeave:Connect(function()
								local s = table.find(r, c) ~= nil
								b:Tween(j, {
									BackgroundTransparency = s and .3 or .55
								}, .15)
								b:Tween(H, {
									TextColor3 = s and Color3.fromRGB(216, 180, 254) or Color3.fromRGB(190, 190, 205)
								}, .15)
							end)
							B.MouseButton1Click:Connect(function()
								CircleClick(j, z.X, z.Y)
								if L then
									local s
									if table.find(r, c) then
										w(c)
										s = false
									else
										Z(c)
										s = true
									end
									b:Tween(y, {
										BackgroundTransparency = s and 0 or 1
									}, .2)
									b:Tween(j, {
										BackgroundTransparency = s and .3 or .55
									}, .2)
									b:Tween(H, {
										TextColor3 = s and Color3.fromRGB(216, 180, 254) or Color3.fromRGB(190, 190, 205)
									}, .2)
									if k then
										k.Text = s and "\226\156\147" or ""
									end
									local e = a()
									m.Text = f(e, 2)
									if p and ((not M or h.HasKeyAccess())) then
										l:ElementSave(p, e)
									end
									R(e)
								else
									table.clear(r)
									table.insert(r, c)
									m.Text = Y[c]
									if p and ((not M or h.HasKeyAccess())) then
										l:ElementSave(p, Y[c])
									end
									R(Y[c])
									Q()
								end
							end)
						end
						if L then
							m.Text = f(a(), 2)
						else
							m.Text = Y[r[1]] or "None"
						end
					end
					local function D()
						t.Text = ""
						i()
						local s = F(X, z9)
						local e = X.AbsoluteSize
						C.Position = s
						C.Size = UDim2.new(0, e.X, 0, e.Y)
						C.Visible = true
						x.Visible = true
						b:Tween(C, {
							Position = UDim2.new(.5, 0, .5, 0);
							Size = W
						}, .32, Enum.EasingStyle["Quint"], Enum.EasingDirection["Out"])
						b:Tween(X, {
							Rotation = 180
						}, .25, Enum.EasingStyle["Quint"])
						b:Tween(N, {
							Transparency = .4
						}, .2)
					end;
					(t:GetPropertyChangedSignal("Text")):Connect(function()
						i(t.Text)
					end)
					X.MouseButton1Click:Connect(D)
					d.MouseButton1Click:Connect(Q)
					x.InputBegan:Connect(function(s)
						if s.UserInputType == Enum.UserInputType["MouseButton1"] then
							Q()
						end
					end)
					R(L and a() or Y[r[1]] or "None")
					if M and p then
						table.insert(u, {
							saveKey = p;
							UpdateFn = function()
								table.clear(r)
								local function s(s)
									if # Y < 1 then
										return
									end
									local b = type(s) == "number" and math.clamp(s, 1, # Y) or type(s) == "string" and table.find(Y, s)
									if b then
										Z(b)
									end
								end
								if h.HasKeyAccess() then
									local b = l:Get(p, nil)
									if L then
										if typeof(b) == "table" then
											for b, e in ipairs(b) do
												s(e)
											end
										end
										if # r == 0 and # Y > 0 then
											Z(1)
										end
										m.Text = f(a(), 2)
										R(a())
									else
										local M = b and table.find(Y, b)
										if M then
											Z(M)
										else
											s(e)
										end
										if # r == 0 and # Y > 0 then
											Z(1)
										end
										m.Text = Y[r[1]] or "None"
										R(Y[r[1]] or "None")
									end
								else
									if L then
										if typeof(e) == "table" then
											for b, e in ipairs(e) do
												s(e)
											end
										else
											s(e)
										end
										if # r == 0 and # Y > 0 then
											Z(1)
										end
										m.Text = f(a(), 2)
										R(a())
									else
										s(e)
										if # r == 0 and # Y > 0 then
											Z(1)
										end
										m.Text = Y[r[1]] or "None"
										R(Y[r[1]] or "None")
									end
								end
							end
						})
					end
					if p then
						l:RegisterControl(p, {
							Type = "Dropdown";
							Default = e;
							Set = function(s, b)
								if L then
									table.clear(r)
									if type(s) == "table" then
										for s, b in ipairs(s) do
											local e = table.find(Y, b)
											if e then
												Z(e)
											end
										end
									end
									m.Text = f(a(), 2)
									if b ~= false then
										pcall(R, a())
									end
								else
									table.clear(r)
									local e = (type(s) == "string" and table.find(Y, s)) or (type(s) == "number" and s)
									if e and Y[e] then
										table.insert(r, e)
										m.Text = Y[e]
										if b ~= false then
											pcall(R, Y[e])
										end
									end
								end
							end;
							Get = function()
								return L and a() or (Y[r[1]] or "None")
							end
						})
					end
					RegisterKeyLocked(k, M)
					RegisterTranslatable(I, s)
					return {
						Clear = function()
							for s, b in ipairs(T:GetChildren()) do
								if b:IsA("Frame") then
									b:Destroy()
								end
							end
							r = {}
							y = {}
							m.Text = "None"
							R(L and {} or "None")
						end;
						Refresh = function(s, b)
							b = b or {}
							Y = b
							local e = a()
							table.clear(r)
							local function R(s)
								if s then
									local b = table.find(Y, s)
									if b then
										Z(b)
									end
								end
							end
							if L then
								for s, b in ipairs(e) do
									R(b)
								end
								if # r == 0 and # Y > 0 then
									Z(1)
								end
							else
								R(e[1])
								if # r == 0 and # Y > 0 then
									Z(1)
								end
							end
							m.Text = L and f(a(), 2) or (Y[r[1]] or "None")
							i(t.Text)
						end
					}
				end
				function N.addTextbox(p, s, e, Y, R, M, L)
					if not checkCondition(M) then
						return J
					end
					e = e or function()
					end
					if R then
						l:RegisterKey(R)
					end
					local c = R and l:Get(R, "") or ""
					local g = E("Frame", {
						BackgroundColor3 = ThemeColor("Primary"),
						BackgroundTransparency = .4,
						BorderSizePixel = 0,
						Size = UDim2.new(1, - 25, 0, 96),
						ClipsDescendants = true,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 8)
							})
						}
					}, A)
					B(g, s or "Textbox")
					E("TextLabel", {
						BackgroundTransparency = 1;
						Position = UDim2.new(0, 10, 0, 6),
						Size = UDim2.new(1, - 20, 0, 20);
						Font = Enum.Font["GothamBold"];
						TextColor3 = Color3.fromRGB(220, 220, 230);
						TextXAlignment = Enum.TextXAlignment["Left"],
						Text = s or "Textbox",
						TextWrapped = false,
						TextScaled = true,
						TextTruncate = Enum.TextTruncate["AtEnd"],
						ZIndex = 3;
						Children = {
							MakeTextConstraint(15, 8)
						}
					}, g)
					E("Frame", {
						BackgroundColor3 = Color3.fromRGB(110, 55, 190);
						BackgroundTransparency = .82;
						BorderSizePixel = 0,
						Position = UDim2.new(0, 10, 0, 30),
						Size = UDim2.new(1, - 20, 0, 1);
						ZIndex = 3
					}, g)
					local j = E("Frame", {
						BackgroundColor3 = Color3.fromRGB(10, 10, 16);
						BackgroundTransparency = .1;
						BorderSizePixel = 0;
						Position = UDim2.new(0, 10, 0, 38),
						Size = UDim2.new(1, - 20, 0, 24),
						ClipsDescendants = true,
						ZIndex = 3,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 6)
							})
						}
					}, g)
					local r = E("UIStroke", {
						Color = Color3.fromRGB(110, 55, 190);
						Transparency = .78;
						Thickness = 1;
						ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
					}, j)
					local h = E("TextBox", {
						BackgroundTransparency = 1;
						BorderSizePixel = 0;
						Position = UDim2.new(0, 10, 0, 0);
						Size = UDim2.new(1, - 18, 1, 0);
						Font = Enum.Font["GothamSemibold"];
						TextColor3 = Color3.fromRGB(210, 195, 255);
						PlaceholderColor3 = Color3.fromRGB(110, 85, 150),
						PlaceholderText = s or "Enter here...";
						TextSize = 12,
						TextXAlignment = Enum.TextXAlignment["Left"];
						TextTruncate = Enum.TextTruncate["AtEnd"];
						Text = c,
						ClearTextOnFocus = false,
						ZIndex = 4
					}, j)
					local y = E("Frame", {
						BackgroundTransparency = 1;
						Position = UDim2.new(0, 10, 0, 70);
						Size = UDim2.new(1, - 20, 0, 20),
						ZIndex = 3;
						Children = {
							E("UIListLayout", {
								FillDirection = Enum.FillDirection["Horizontal"],
								Padding = UDim.new(0, 6),
								HorizontalAlignment = Enum.HorizontalAlignment["Right"],
								VerticalAlignment = Enum.VerticalAlignment["Center"];
								SortOrder = Enum.SortOrder["LayoutOrder"]
							})
						}
					}, g)
					local Z = E("TextButton", {
						BackgroundColor3 = Color3.fromRGB(110, 55, 190),
						BackgroundTransparency = .84,
						BorderSizePixel = 0,
						LayoutOrder = 1,
						Size = UDim2.new(0, 54, 0, 20),
						Text = "Clear";
						TextColor3 = Color3.fromRGB(170, 120, 240),
						Font = Enum.Font["GothamBold"];
						TextSize = 11,
						AutoButtonColor = false,
						ZIndex = 3,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 5)
							});
							E("UIStroke", {
								Color = Color3.fromRGB(110, 55, 190);
								Transparency = .72,
								Thickness = 1,
								ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
							})
						}
					}, y)
					local w = E("TextButton", {
						BackgroundColor3 = Color3.fromRGB(110, 55, 190);
						BackgroundTransparency = .45,
						BorderSizePixel = 0,
						LayoutOrder = 2;
						Size = UDim2.new(0, 60, 0, 20);
						Text = Y or "Confirm",
						TextColor3 = Color3.fromRGB(200, 170, 255);
						Font = Enum.Font["GothamBold"],
						TextSize = 11;
						AutoButtonColor = false,
						ZIndex = 3;
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 5)
							}),
							E("UIStroke", {
								Color = Color3.fromRGB(110, 55, 190);
								Transparency = .6;
								Thickness = 1;
								ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
							})
						}
					}, y)
					h.Focused:Connect(function()
						b:Tween(r, {
							Transparency = .42
						}, .2)
						b:Tween(j, {
							BackgroundTransparency = 0
						}, .2)
					end)
					h.FocusLost:Connect(function()
						b:Tween(r, {
							Transparency = .78
						}, .28)
						b:Tween(j, {
							BackgroundTransparency = .1
						}, .28)
					end)
					Z.MouseEnter:Connect(function()
						b:Tween(Z, {
							BackgroundTransparency = .6
						}, .15)
					end)
					Z.MouseLeave:Connect(function()
						b:Tween(Z, {
							BackgroundTransparency = .84
						}, .2)
					end)
					w.MouseEnter:Connect(function()
						b:Tween(w, {
							BackgroundTransparency = .25
						}, .15)
					end)
					w.MouseLeave:Connect(function()
						b:Tween(w, {
							BackgroundTransparency = .45
						}, .2)
					end)
					Z.MouseButton1Click:Connect(function()
						CircleClick(Z, z.X, z.Y)
						h.Text = ""
						if R then
							l:ElementSave(R, "")
						end
						h:CaptureFocus()
					end)
					w.MouseButton1Click:Connect(function()
						CircleClick(w, z.X, z.Y)
						if h.Text ~= "" then
							if R then
								l:ElementSave(R, h.Text)
							end
							e(h.Text)
						end
					end)
					h.FocusLost:Connect(function(s)
						if s and h.Text ~= "" then
							if R then
								l:ElementSave(R, h.Text)
							end
							e(h.Text)
						end
					end)
					if c ~= "" then
						task.defer(function()
							e(c)
						end)
					end
					if R then
						l:RegisterControl(R, {
							Type = "Textbox",
							Default = "",
							Set = function(s, b)
								s = tostring(s or "")
								h.Text = s
								if b ~= false then
									pcall(e, s)
								end
							end,
							Get = function()
								return h.Text
							end
						})
					end
					return {
						TextBox = h;
						Clear = Z;
						Join = w;
						Frame = g;
						SetText = function(s, b)
							h.Text = b or ""
						end;
						GetText = function()
							return h.Text
						end
					}
				end
				function N.addLabel(Y, s, b, e)
					local R = {}
					local M, L = Enum.Font["GothamBold"], Enum.Font["Gotham"]
					local p, c = 13, 11
					local z = E("Frame", {
						BackgroundColor3 = ThemeColor("Primary");
						BackgroundTransparency = .4,
						BorderSizePixel = 0;
						Size = UDim2.new(1, - 24, 0, 0),
						AutomaticSize = Enum.AutomaticSize["Y"],
						ClipsDescendants = false,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 6)
							});
							E("UIStroke", {
								Color = Color3.fromRGB(110, 55, 190),
								Transparency = .88;
								Thickness = 1,
								ApplyStrokeMode = Enum.ApplyStrokeMode["Border"]
							}),
							E("UIPadding", {
								PaddingTop = UDim.new(0, 10),
								PaddingBottom = UDim.new(0, 10);
								PaddingLeft = UDim.new(0, 14),
								PaddingRight = UDim.new(0, 14)
							});
							E("UIListLayout", {
								SortOrder = Enum.SortOrder["LayoutOrder"];
								Padding = UDim.new(0, 6)
							})
						}
					}, A)
					RegisterKeyLocked(z, e)
					local g = E("TextLabel", {
						Name = "TitleLabel";
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 0);
						AutomaticSize = Enum.AutomaticSize["Y"];
						LayoutOrder = 1,
						Font = M;
						TextColor3 = Color3.fromRGB(230, 230, 240);
						TextSize = p;
						TextWrapped = true,
						RichText = true,
						TextXAlignment = Enum.TextXAlignment["Left"],
						TextYAlignment = Enum.TextYAlignment["Top"],
						Text = s or "Default Title",
						ZIndex = 3
					}, z)
					local j = b and b ~= ""
					local r = E("Frame", {
						Name = "Divider";
						BackgroundColor3 = Color3.fromRGB(110, 55, 190),
						BackgroundTransparency = .78,
						BorderSizePixel = 0;
						Size = UDim2.new(1, 0, 0, 1);
						LayoutOrder = 2;
						Visible = j,
						ZIndex = 3;
						Children = {
							E("UIGradient", {
								Transparency = NumberSequence.new({
									NumberSequenceKeypoint.new(0, 0);
									NumberSequenceKeypoint.new(.7, 0);
									NumberSequenceKeypoint.new(1, 1)
								})
							})
						}
					}, z)
					local h = E("TextLabel", {
						Name = "DescLabel";
						BackgroundTransparency = 1;
						Size = UDim2.new(1, 0, 0, 0);
						AutomaticSize = Enum.AutomaticSize["Y"];
						LayoutOrder = 3;
						Font = L,
						TextColor3 = Color3.fromRGB(165, 165, 185),
						TextSize = c;
						TextWrapped = true;
						RichText = true,
						TextXAlignment = Enum.TextXAlignment["Left"];
						TextYAlignment = Enum.TextYAlignment["Top"],
						Text = b or "",
						Visible = j;
						ZIndex = 3
					}, z)
					RegisterTranslatable(g, s)
					RegisterTranslatable(h, b)
					function R.RefreshTitle(e, b)
						s = b
						g.Text = b or ""
					end
					function R.RefreshDesc(e, s)
						b = s
						h.Text = s or ""
						local Y = s and s ~= ""
						r.Visible = Y
						h.Visible = Y
					end
					return R
				end
				function N.addButtonGrid(R, e, Y)
					Y = Y or {}
					local M = math.ceil(# Y / 3)
					local L = ((8 + ((((e and e ~= "")) and 26 or 0))) + ((M * 26 + math.max(M - 1, 0) * 4))) + 8
					local p = E("Frame", {
						BackgroundColor3 = ThemeColor("Primary");
						BackgroundTransparency = .4,
						BorderSizePixel = 0,
						Size = UDim2.new(1, - 25, 0, L),
						ClipsDescendants = true,
						Children = {
							E("UICorner", {
								CornerRadius = UDim.new(0, 6)
							})
						}
					}, A)
					B(p, e or "ButtonGrid")
					if e and e ~= "" then
						E("TextLabel", {
							BackgroundTransparency = 1,
							Position = UDim2.new(0, 12, 0, 8);
							Size = UDim2.new(1, - 20, 0, 20),
							Font = Enum.Font["GothamBold"];
							Text = e;
							TextColor3 = Color3.fromRGB(210, 200, 230),
							TextSize = 12;
							TextXAlignment = Enum.TextXAlignment["Left"],
							ZIndex = 3
						}, p)
					end
					for Y, R in ipairs(Y) do
						local M = ((Y - 1)) % 3
						local L = math.floor(((Y - 1)) / 3)
						local c = R.Locked == true
						local A = E("TextButton", {
							BackgroundColor3 = c and Color3.fromRGB(30, 18, 50) or Color3.fromRGB(55, 28, 100),
							BackgroundTransparency = c and .55 or .3,
							BorderSizePixel = 0;
							Position = UDim2.new(M / 3, M == 0 and 10 or 2, 0, (8 + ((((e and e ~= "")) and 26 or 0))) + L * 30),
							Size = UDim2.new(.33333333333333, M == 0 and - 12 or M == 2 and - 12 or - 4, 0, 26),
							AutoButtonColor = false,
							ClipsDescendants = true,
							Text = "";
							ZIndex = 3,
							Children = {
								E("UICorner", {
									CornerRadius = UDim.new(0, 3)
								}),
								E("TextLabel", {
									Name = "BtnLabel",
									BackgroundTransparency = 1,
									Size = UDim2.new(1, c and - 18 or - 4, 1, 0),
									Position = UDim2.new(0, 2, 0, 0),
									Font = Enum.Font["GothamBold"];
									Text = R.Label or (("Button ") .. Y),
									TextColor3 = c and Color3.fromRGB(130, 110, 160) or Color3.fromRGB(210, 185, 255);
									TextScaled = true,
									TextTruncate = Enum.TextTruncate["AtEnd"],
									ZIndex = 4;
									Children = {
										MakeTextConstraint(12, 8)
									}
								})
							}
						}, p)
						if c then
							E("ImageLabel", {
								BackgroundTransparency = 1,
								AnchorPoint = Vector2.new(1, .5),
								Position = UDim2.new(1, - 4, .5, 0);
								Size = UDim2.new(0, 10, 0, 10),
								Image = "rbxassetid://7733992528",
								ImageColor3 = Color3.fromRGB(140, 110, 190),
								ImageTransparency = .3;
								ZIndex = 5
							}, A)
						end
						local g = A:FindFirstChild("BtnLabel")
						if c then
							A.MouseButton1Click:Connect(function()
								CircleClick(A, z.X, z.Y)
								if typeof(R.LockedCallback) == "function" then
									R.LockedCallback()
								else
									s.Notification:Notify({
										Title = "Locked",
										Description = ((R.Label or "This button")) .. " is currently locked."
									}, {
										Time = 2
									})
								end
							end)
						else
							A.MouseEnter:Connect(function()
								b:Tween(A, {
									BackgroundTransparency = .1
								}, .15, Enum.EasingStyle["Quint"])
								if g then
									b:Tween(g, {
										TextColor3 = Color3.fromRGB(235, 220, 255)
									}, .15)
								end
							end)
							A.MouseLeave:Connect(function()
								b:Tween(A, {
									BackgroundTransparency = .3
								}, .2, Enum.EasingStyle["Quint"])
								if g then
									b:Tween(g, {
										TextColor3 = Color3.fromRGB(210, 185, 255)
									}, .2)
								end
							end)
							A.MouseButton1Click:Connect(function()
								CircleClick(A, z.X, z.Y)
								if typeof(R.Callback) == "function" then
									R.Callback()
								end
							end)
						end
					end
					return p
				end
				N.AddButton = N.addButton
				N.AddToggle = N.addToggle
				N.AddSlider = N.addSlider
				N.AddDropdown = N.addDropdown
				N.AddTextBox = N.addTextbox
				N.AddTextbox = N.addTextbox
				N.AddLabel = N.addLabel
				N.AddKeybind = N.addKeybind
				N.AddLine = N.addLine
				N.AddParagraph = N.addParagraph
				N.AddButtonGrid = N.addButtonGrid
				return N
			end
			A.AddMenu = A.addMenu
			return A
		end
		B.AddSection = B.addSection
		return B
	end
	nV.addTab = nV.AddTab
	do
		local s = "Standard"
		if h.IsDeveloperBuild() then
			s = "Developer"
		elseif h.HasKeyAccess() then
			s = "Premium"
		elseif a then
			s = "Freemium"
		end
		local b = "Not required"
		if a then
			b = h.HasKeyAccess() and "Verified" or "Not verified"
		end
		local e = nV:AddTab("Main", "info-quantum")
		local Y = e:addSection()
		local M = e:addSection()
		local p = Y:addMenu("Information")
		p:addLabel("Script Information", string.format("Hub: %s\nGame: %s\nAccount: %s\nStatus: %s", R, tostring(L), A and A.Name or "Unknown", s))
		p:addLabel("Key Information", string.format("Key Status: %s\nKey Mode: %s\nExpires: \226\128\148\nPlan: \226\128\148\nHWID: \226\128\148\nNote: Key details will appear here later.", b, tostring(f or (a and "Optional" or "None"))))
		local c = M:addMenu("Favorites / Pinned")
		c:addLabel("Tip", "PC: right-click a function, then tap \226\152\133\nMobile: double-tap to pin")
		local z
		task.defer(function()
			for s, b in ipairs(q) do
				if b.tabTitle == "Main" and b.menuTitle == "Favorites / Pinned" then
					z = b.sectionFrame and b.sectionFrame:FindFirstChild("InnerSection")
					if z then
						break
					end
				end
			end
			if not z then
				for s, b in ipairs(i) do
					if b.tabButton and (b.tabButton["Text"] == "Main" and b.scrollFrame) then
						local s = {}
						for b, e in ipairs(b.scrollFrame:GetChildren()) do
							if e.Name == "SectionScroll" then
								table.insert(s, e)
							end
						end
						local e = s[2] or s[1]
						if e then
							z = E("Frame", {
								Name = "FavHost";
								BackgroundTransparency = 1;
								Size = UDim2.new(1, - 10, 0, 0);
								AutomaticSize = Enum.AutomaticSize["Y"];
								Children = {
									E("UIListLayout", {
										SortOrder = Enum.SortOrder["LayoutOrder"],
										Padding = UDim.new(0, 4)
									})
								}
							}, e)
						end
						break
					end
				end
			end
			if V.Refresh then
				V.Refresh()
			end
			task.delay(1.5, function()
				if V.Refresh then
					V.Refresh()
				end
			end)
		end)
		V.Refresh = function()
			if not z or not z.Parent then
				return
			end
			for s, b in ipairs(z:GetChildren()) do
				if b:IsA("TextButton") or (b:IsA("TextLabel") and b.Text == "No favorites yet") then
					b:Destroy()
				end
			end
			local s = V.List
			if # s == 0 then
				E("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, - 8, 0, 18);
					Font = Enum.Font["Gotham"];
					Text = "No favorites yet";
					TextColor3 = Color3.fromRGB(140, 120, 170);
					TextSize = 10,
					TextXAlignment = Enum.TextXAlignment["Left"]
				}, z)
				return
			end
			for s, b in ipairs(s) do
				local e = V.Entries[b]
				local Y = e and e.title or (b:match("([^|]+)$") or b)
				local R = e and (((e.tabTitle or "")) .. ((" \226\128\186 ") .. ((e.menuTitle or "")))) or ""
				local M = E("TextButton", {
					BackgroundColor3 = ThemeColor("Primary");
					BackgroundTransparency = .35;
					Size = UDim2.new(1, - 8, 0, 36);
					Text = "";
					AutoButtonColor = false;
					LayoutOrder = s,
					Children = {
						E("UICorner", {
							CornerRadius = UDim.new(0, 6)
						}),
						E("TextLabel", {
							BackgroundTransparency = 1,
							Position = UDim2.new(0, 10, 0, 2),
							Size = UDim2.new(1, - 20, 0, 16);
							Font = Enum.Font["GothamBold"];
							Text = ("\226\152\133  ") .. Y;
							TextColor3 = Color3.fromRGB(255, 220, 140);
							TextSize = 11,
							TextXAlignment = Enum.TextXAlignment["Left"],
							TextTruncate = Enum.TextTruncate["AtEnd"]
						});
						E("TextLabel", {
							BackgroundTransparency = 1,
							Position = UDim2.new(0, 10, 0, 18),
							Size = UDim2.new(1, - 20, 0, 14),
							Font = Enum.Font["Gotham"];
							Text = R,
							TextColor3 = Color3.fromRGB(160, 140, 190),
							TextSize = 9,
							TextXAlignment = Enum.TextXAlignment["Left"];
							TextTruncate = Enum.TextTruncate["AtEnd"]
						})
					}
				}, z)
				M.MouseButton1Click:Connect(function()
					if e then
						h.NavigateToSearchEntry(e)
					end
				end)
			end
		end
	end
	task.defer(function()
		pcall(h.SyncKeyAccess)
	end)
	ScheduleRefreshAllLayouts()
	z9.Visible = true
	aV.Visible = true
	XV = true
	ScheduleRefreshAllLayouts()
	nV.IsDeveloper = h.IsDeveloperBuild
	nV.IsPremium = h.HasKeyAccess
	nV.ToggleUI = B9
	nV.Favorites = V
	nV.Destroy = function()
		s:DestroyGui()
	end
	return nV
end
s.CreateWindow = s.CreateWindow
s.createWindow = s.CreateWindow
s.DestroyGui = s.DestroyGui
s.destroyGui = s.DestroyGui
return s