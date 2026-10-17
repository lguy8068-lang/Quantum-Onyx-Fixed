--[[
	Visuals.lua - lifted out of a flattened-VM obfuscator into a labelled-block ("goto") listing.
	DONE: all 879 string constants decoded; every dispatcher block became one labelled block; jumps rewritten as goto;
	one-use temporaries inlined (liveness analysis); registers/arguments/upvalues renamed; closures shown as closure(fn_PC, {...}).
	NOT DONE: if/while/for structure is not rebuilt, so this is a readable listing, not runnable source.
	Conventions: argN = function argument N, upN = captured variable N, z[X]/f[X] = local-variable slot, ENV = global environment.
--]]

function fn_29517(arg1, arg2, arg3) -- entry L29517, 3 blocks
::L29517::
	if up1 then goto L13128075 end
::L10567974::
	return
::L13128075::
	up2()
	goto L10567974
end

function fn_51664(arg1, arg2) -- entry L51664, 3 blocks
::L51664::
	up1 = 0
	if up2 then goto L11837449 end
::L8497679::
	return
::L11837449::
	task.cancel(up2)
	up2 = nil
	goto L8497679
end

function fn_123417(arg1, arg2, arg3) -- entry L123417, 1 blocks
::L123417::
	o = up1
	o:Play("Angel B- Enemy Chains", up2.Position, nil, .7, .5)
	return
end

function fn_184449(arg1, arg2, arg3, arg4, arg5) -- entry L184449, 3 blocks
::L184449::
	C = arg1
	if C.Name=="Triple Dark Blade" then goto L8482220 end
::L15145305::
	return
::L8482220::
	Z = closure(fn_12079565, {
		up1,
		up2
	})
	o = C.Activated
	o:Connect(Z)
	o = C.Equipped
	Z = closure(fn_9081373, {
		up1,
		up3,
		up4,
		up5
	})
	o:Connect(Z)
	Z = closure(fn_5923408, {
		up1,
		up3,
		up4
	})
	o = C.Unequipped
	o:Connect(Z)
	goto L15145305
end

function fn_222474(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L222474, 9 blocks
::L222474::
	C = arg1
	if not up1 then goto L10177511 end
::L15059832::
	if C.KeyCode==Enum.KeyCode.Z then goto L13279514 end
::L15707944::
	if C.KeyCode==Enum.KeyCode.X then goto L14586985 end
::L4523737::
	if C.KeyCode==Enum.KeyCode.C then goto L8891576 end
::L13168451::
	return
::L8891576::
	up4()
	goto L13168451
::L14586985::
	up3()
	goto L4523737
::L13279514::
	up2()
	goto L15707944
::L10177511::
	return
end

function fn_533669(arg1, arg2) -- entry L533669, 1 blocks
::L533669::
	up1({
		Root = up2,
		Holding = up3,
		Victims = nil,
		Scale = 1
	})
	return
end

function fn_600869(arg1, arg2) -- entry L600869, 3 blocks
::L600869::
	if up1 then goto L6526712 end
::L952156::
	return
::L6526712::
	up1({
		hrp = up2,
		lastsFor = 3
	})
	goto L952156
end

function fn_667383() -- entry L667383, 1 blocks
::L667383::
	error("You Are Lost!")
	return
end

function fn_720178(arg1, arg2, arg3, arg4, arg5) -- entry L720178, 7 blocks
::L720178::
	Z = arg2
	k = up1()
	C = arg1
	if not k then goto L11575848 end
::L12729681::
	if up2 then goto L3358014 end
::L10492821::
	N = Instance.new("Animation")
	N.AnimationId = "rbxassetid://" .. C
	o = k:LoadAnimation(N)
	up2 = o
	I = up2
	I:Play()
	if Z then goto L8279685 end
::L15741668::
	return up2
::L8279685::
	up2.Looped = true
	goto L15741668
::L3358014::
	o = up2
	o:Stop()
	goto L10492821
::L11575848::
	return nil
end

function fn_753402() -- entry L753402, 1 blocks
::L753402::
	up1 = false
	return
end

function fn_821993(arg1, arg2) -- entry L821993, 10 blocks
::L821993::
::L14026734::
	I = up1
	if C then goto L16284847 end
::L15394835::
	if I then goto L3214815 end
::L900421::
	return
::L3214815::
	C = up3.Character
	if not C then goto L5668439 end
::L2593918::
	Z = C:FindFirstChild("HumanoidRootPart")
	if not Z then goto L9313211 end
::L10026164::
	up4({
		Root = Z,
		Holding = up5
	})
	task.wait()
	goto L14026734
::L9313211::
	goto L900421
::L5668439::
	goto L900421
::L16284847::
	I = up2
	goto L15394835
end

function fn_909028(arg1) -- entry L909028, 11 blocks
::L909028::
	I = not up1
	if C then goto L4419387 end
::L13572235::
	I = up2
::L4419387::
	if I then goto L348644 end
::L3705188::
	o = up3.Character
	C = e()
	z[C] = o
	if not z[C] then goto L5165783 end
::L3704920::
	if not o:FindFirstChild("HumanoidRootPart") then goto L10211392 end
::L910492::
	up2 = true
	up4.Value = true
	up5()
	if up6 then goto L13871789 end
::L8626194::
	up7(up8, true)
	k = task.spawn
	k(closure(fn_16137764, {
		up9,
		C,
		up4
	}))
	c(C)
	return
::L13871789::
	I = up6
	I:Stop()
	up6 = nil
	goto L8626194
::L10211392::
	return
::L5165783::
	return
::L348644::
	return
end

function fn_1065245(arg1, arg2) -- entry L1065245, 10 blocks
::L1065245::
	Z = arg2
	C = arg1
	k = Z:lower()
	l = {
		pairs(up1)
	}
	y = l[3]
	N = l[2]
	W = l[1]
::L3842108::
	y, Y = W(N, y)
	if y then goto L8719784 end
::L2476577::
	return
::L8719784::
	o = e()
	z[o] = Y
	Y = o
	if string.find(k,y,1,true) then goto L5611368 end
::L6746405::
	c(Y)
	goto L3842108
::L5611368::
	o = C:FindFirstChild("ToolIcon")
	a = e()
	z[a] = o
	X = z[a]
	if g then goto L16759756 end
::L16694559::
	if X then goto L682704 end
::L2021881::
	c(a)
	c(Y)
	goto L2476577
::L682704::
	o = pcall
	o(closure(fn_3160280, {
		a,
		Y
	}))
	goto L2021881
::L16759756::
	g = z[a]
	X = g:IsA("ImageLabel")
	goto L16694559
end

function fn_1153783(arg1) -- entry L1153783, 1 blocks
::L1153783::
	up1 = true
	return
end

function fn_1280184(arg1, arg2, arg3) -- entry L1280184, 1 blocks
::L1280184::
	k = e()
	C = e()
	z[C] = arg1
	z[k] = arg3
	up1()
	y = closure(fn_9092697, {
		C,
		k,
		up3
	})
	c(C)
	o = up2
	c(k)
	o(1.2647101806872e+14, y)
	return
end

function fn_1404969(arg1, arg2, arg3, arg4) -- entry L1404969, 1 blocks
::L1404969::
	up1 = false
	up2 = false
	return
end

function fn_1564376(arg1, arg2, arg3) -- entry L1564376, 5 blocks
::L1564376::
	I = up1
	if C then goto L11306759 end
::L4978944::
	if I then goto L1266425 end
::L6377534::
	return
::L1266425::
	o = up1
	o:Destroy()
	goto L6377534
::L11306759::
	I = up1.Parent
	goto L4978944
end

function fn_1725083(arg1, arg2, arg3) -- entry L1725083, 15 blocks
::L1725083::
	C = arg1
	if o:GetFocusedTextBox() then goto L7444696 end
::L6325667::
	if not up2 then goto L13223676 end
::L15924794::
	if C.KeyCode==Enum.KeyCode.Z then goto L1351958 end
::L14302543::
	if C.KeyCode==Enum.KeyCode.X then goto L10683102 end
::L1655528::
	if C.KeyCode==Enum.KeyCode.C then goto L2649973 end
::L6450450::
	I = C.UserInputType == Enum.UserInputType.MouseButton1
	if k then goto L805959 end
::L4666850::
	I = C.UserInputType == Enum.UserInputType.Touch
::L805959::
	if I then goto L13506045 end
::L4390994::
	return
::L13506045::
	up6()
	goto L4390994
::L2649973::
	up5()
	goto L6450450
::L10683102::
	up4()
	goto L1655528
::L1351958::
	up3()
	goto L14302543
::L13223676::
	return
::L7444696::
	return
end

function fn_1725874(arg1) -- entry L1725874, 1 blocks
::L1725874::
	up1(up2)
	return
end

function fn_1738821(arg1, arg2) -- entry L1738821, 1 blocks
::L1738821::
	o = up1
	o:Play("AngelZDisappear2", up2.Position, nil, .6, 1)
	o = up1
	o:Play("Angel A- Body Disappear", up2.Position, nil, .65, 1)
	o = up1
	o:Play("Angel A- Body Disappear_2", up2.Position, nil, .6, 1.1)
	return
end

function fn_1760779() -- entry L1760779, 1 blocks
::L1760779::
	Z = closure(fn_11604779, {
		up1,
		up2,
		up3
	})
	C = e()
	z[C] = {
		isActive = false,
		gui = nil,
		guiImage = nil,
		guiName = "HeavenKamui",
		imageId = "rbxassetid://123270704863428"
	}
	o = z[C]
	N = closure(fn_12188237, {
		up5,
		C
	})
	c(C)
	o.loadModelAndTeleport = Z
	up4("heaven kamui", "kamui3", N)
	return
end

function fn_1772123(arg1) -- entry L1772123, 5 blocks
::L1772123::
	C = up1()
	if not C then goto L16085960 end
::L1544994::
	if up2 then goto L10663899 end
::L10308051::
	o = C:LoadAnimation(up3)
	up2 = o
	I = up2
	I:Play()
	up2.Looped = true
	return
::L10663899::
	o = up2
	o:Stop()
	goto L10308051
::L16085960::
	return
end

function fn_1793715() -- entry L1793715, 3 blocks
::L1793715::
	C = up1.Character
	I = C
	if C then goto L13741959 end
::L15188877::
	return I
::L13741959::
	I = C:FindFirstChild("HumanoidRootPart")
	goto L15188877
end

function fn_2081294(arg1, arg2, arg3, arg4) -- entry L2081294, 26 blocks
::L2081294::
	I = not up1
	if C then goto L13480117 end
::L4099364::
	I = not up2
::L13480117::
	if I then goto L12028459 end
::L11962629::
	C = up3.Character
	if not C then goto L2333370 end
::L11485031::
	Z = C:FindFirstChild("HumanoidRootPart")
	if not Z then goto L33027 end
::L4603789::
	o = up4
	if o then goto L2157291 end
::L7126354::
	I = up5 + 1
	up5 = I
	if up5>4 then goto L6251112 end
::L15368357::
	up6()
	up2 = false
	if up7 then goto L5877337 end
::L12113221::
	W = up8(up9[up5], false)
	up7 = W
	up10({
		hrp = Z,
		index = up5
	})
	if up7 then goto L5638983 end
::L1025536::
	up2 = true
	Y = o
	l = up1
	if a then goto L11536776 end
::L13386609::
	if l then goto L4909473 end
::L8672786::
	up15()
::L11783440::
	return
::L4909473::
	up14()
	goto L8672786
::L11536776::
	a = not up11
	X = o
	if g then goto L5813843 end
::L5157502::
	l = a
	goto L13386609
::L5813843::
	g = not up12
	V = o
	if D then goto L3855641 end
::L6391540::
	a = g
	goto L5157502
::L3855641::
	g = not up13
	goto L6391540
::L5638983::
	y = up7.Stopped
	l = y.Connect
	l(y, closure(fn_11351784, {
		up7,
		up2,
		up1,
		up11,
		up12,
		up13,
		up14,
		up15
	}))
	goto L11783440
::L5877337::
	y = up7
	y:Stop()
	goto L12113221
::L6251112::
	up5 = 1
	goto L15368357
::L2157291::
	task.cancel(up4)
	o = nil
	up4 = nil
	goto L7126354
::L33027::
	return
::L2333370::
	return
::L12028459::
	return
end

function fn_2139882(arg1, arg2, arg3, arg4) -- entry L2139882, 1 blocks
::L2139882::
	C = arg1
	up1(C)
	Z = Instance.new("ColorCorrectionEffect")
	I = up2
	Z.Parent = I
	k = Color3.fromRGB(255, 80, 80)
	Z.TintColor = k
	Z.Brightness = .3
	Z.Contrast = .5
	Z.Saturation = 1
	table.insert(C, Z)
	k = Instance.new("BlurEffect")
	I = up2
	k.Parent = I
	k.Size = 10
	table.insert(C, k)
	N = Instance.new("BloomEffect")
	I = up2
	N.Parent = I
	N.Intensity = 1
	N.Size = 24
	N.Threshold = 0
	table.insert(C, N)
	return
end

function fn_2181190(arg1) -- entry L2181190, 1 blocks
::L2181190::
	C = up2
	up1.Image = C
	return
end

function fn_2213586(arg1, arg2, arg3) -- entry L2213586, 1 blocks
::L2213586::
	up1({
		Root = up2,
		Holding = up3,
		Victims = nil,
		Scale = 1
	})
	return
end

function fn_2297598(arg1, arg2) -- entry L2297598, 9 blocks
::L2297598::
	C = arg1
	if o:GetFocusedTextBox() then goto L10348473 end
::L14457203::
	if not up2 then goto L11335705 end
::L5686269::
	I = C.UserInputType == Enum.UserInputType.Touch
	if k then goto L1829389 end
::L3156537::
	I = C.UserInputType == Enum.UserInputType.MouseButton1
::L1829389::
	if I then goto L7580267 end
::L9035214::
	return
::L7580267::
	up3()
	goto L9035214
::L11335705::
	return
::L10348473::
	return
end

function fn_2344435(arg1, arg2, arg3, arg4, arg5) -- entry L2344435, 1 blocks
::L2344435::
	Z = closure(fn_4800048, {
		up1,
		up2,
		up3
	})
	C = e()
	z[C] = {
		isActive = false,
		gui = nil,
		guiImage = nil,
		guiName = "ArenaKamui",
		imageId = "rbxassetid://123270704863428"
	}
	o = z[C]
	N = closure(fn_1725874, {
		up5,
		C
	})
	o.loadModelAndTeleport = Z
	o = up4
	c(C)
	o("arena kamui", "kamui4", N)
	return
end

function fn_2377519(arg1, arg2, arg3) -- entry L2377519, 3 blocks
::L2377519::
	C = e()
	z[C] = arg1
	o = require
	k = game
	Z = o(k:GetService("ReplicatedStorage").DialogueController)
	k = up1.Character
	I = k
	if k then goto L9782330 end
::L4196410::
	N = e()
	z[N] = I
	y = {
		Title = "Blox Fruit",
		Get = closure(fn_10694052, {
			up2,
			C,
			up3,
			up4,
			up5,
			up6,
			up7,
			up8,
			N,
			up9,
			up10,
			up1
		})
	}
	o = Z.Start
	c(N)
	c(C)
	o(Z, y)
	return
::L9782330::
	I = k:FindFirstChild("Humanoid")
	goto L4196410
end

function fn_2541063(arg1, arg2, arg3) -- entry L2541063, 1 blocks
::L2541063::
	Z = closure(fn_1280184, {
		up1,
		up2,
		up3
	})
	C = e()
	z[C] = {
		isActive = false,
		gui = nil,
		guiImage = nil,
		guiName = "PocketKamui",
		imageId = "rbxassetid://94044166423780"
	}
	N = closure(fn_12744206, {
		up5,
		C
	})
	z[C].loadModelAndTeleport = Z
	c(C)
	up4("kamui", "kamui", N)
	return
end

function fn_2609264(arg1, arg2, arg3) -- entry L2609264, 1 blocks
::L2609264::
	N = Instance.new("Part")
	N.Name = arg1
	N.Size = arg3
	N.CFrame = arg2
	N.Anchored = true
	N.CanCollide = false
	y = closure(fn_12411238, {
		up2,
		up3,
		up4,
		up5
	})
	N.Transparency = 1
	I = up1
	N.Parent = I
	o = N.Touched
	o:Connect(y)
	y = closure(fn_11717197, {
		up2,
		up3,
		up4,
		up6,
		up7
	})
	o = N.TouchEnded
	o:Connect(y)
	return
end

function fn_2722459(arg1, arg2, arg3) -- entry L2722459, 5 blocks
::L2722459::
	task.wait(.5)
	I = up1
	if C then goto L12239682 end
::L15235745::
	if I then goto L12332607 end
::L6385332::
	return
::L12332607::
	up3(up4.Charge, true)
	o = up5
	o:Play("AngelZChains", up6.Position, nil, .7, .5)
	goto L6385332
::L12239682::
	I = up2
	goto L15235745
end

function fn_2787169(arg1) -- entry L2787169, 3 blocks
::L2787169::
	up1 = 0
	if up2 then goto L6887794 end
::L2607744::
	return
::L6887794::
	task.cancel(up2)
	up2 = nil
	goto L2607744
end

function fn_2847001(arg1, arg2, arg3, arg4) -- entry L2847001, 9 blocks
::L2847001::
	up1 = false
	up2()
	if up3 then goto L3548321 end
::L9943388::
	if up4 then goto L11002651 end
::L6651407::
	if up5 then goto L15951580 end
::L14495562::
	up6()
	up7()
	up8 = true
	if up9 then goto L9795762 end
::L13756135::
	up10 = false
	up11.Value = false
	up12 = false
	up13.Value = false
	up14 = false
	up15.Value = false
	return
::L9795762::
	N = up9
	N:Disconnect()
	up9 = nil
	goto L13756135
::L15951580::
	Z = up5
	Z:Stop()
	up5 = nil
	goto L14495562
::L11002651::
	C = up4
	C:Stop()
	up4 = nil
	goto L6651407
::L3548321::
	I = up3
	I:Stop()
	up3 = nil
	goto L9943388
end

function fn_2879891(arg1, arg2) -- entry L2879891, 6 blocks
::L2879891::
	C = arg1
	I = workspace
	C.Parent = I
	Z = C:FindFirstChild("Spawn", true)
	if Z then goto L10100675 end
::L14206787::
	return
::L10100675::
	k = Z.Position
	y = C:GetModelCFrame().Position - k
	Y = Vector3.new(up1.Position.X, up1.Position.Y + 99999, up1.Position.Z) + y
	o = C.PivotTo
	o(C, unpack({
		CFrame.new(Y)
	}))
	Y = 3
	a = 1
	X = 1 < 0
	l = 1 - 1
::L10648057::
	l = l + a
	if (X and (l>=Y)) or ((not X) and (l<=Y)) then goto L12292190 end
::L4519145::
	up2(Z.Position)
	up3(C, "<Pakistan Dimension>", "<Sea>", nil, nil)
	goto L14206787
::L12292190::
	o = up1
	D = CFrame.new(Z.Position)
	o.CFrame = D
	task.wait(.05)
	goto L10648057
end

function fn_3019704(arg1, arg2, arg3) -- entry L3019704, 15 blocks
::L3019704::
	up1(up2, false)
	if up3 then goto L12761595 end
::L10687013::
	task.wait()
	if up4 then goto L2378114 end
::L3328818::
	return {["Text"]={"[Blox Fruit dropped.]"}}
::L2378114::
	o = up4
	C = o:FindFirstChild("HumanoidRootPart")
	if C then goto L9876362 end
::L2480494::
	goto L3328818
::L9876362::
	Z = workspace
	up2.Parent = Z
	I = C.Position
	Z = I + Vector3.new(0, 3, 0)
	if o:IsA("Model") then goto L11979230 end
::L7657874::
	if o:IsA("Tool") then goto L9472575 end
::L8446016::
	up5(up2)
	goto L2480494
::L9472575::
	o = up2
	k = o:FindFirstChild("Handle")
	if k then goto L11906513 end
::L11482363::
	goto L8446016
::L11906513::
	N = CFrame.new(Z)
	k.CFrame = N
	goto L11482363
::L11979230::
	if up2.PrimaryPart then goto L14505769 end
::L7603581::
	goto L8446016
::L14505769::
	o = up2
	I = o.SetPrimaryPartCFrame
	I(o, unpack({
		CFrame.new(Z)
	}))
	goto L7603581
::L12761595::
	o = up3
	o:UnequipTools()
	goto L10687013
end

function fn_3030631(arg1, arg2, arg3, arg4) -- entry L3030631, 9 blocks
::L3030631::
	o = true
	up1 = true
	C = up2.Character
	if C then goto L10605796 end
::L432236::
	up4()
	up5()
	Z = up2
	k = Z:GetMouse()
	if up6 then goto L5815616 end
::L14251323::
	y = closure(fn_5356422, {
		up7
	})
	Z = k.Button1Down
	N = Z:Connect(y)
	up6 = N
	return
::L5815616::
	Z = up6
	Z:Disconnect()
	goto L14251323
::L10605796::
	Z = C:FindFirstChild("Humanoid")
	if Z then goto L10904479 end
::L5256345::
	goto L432236
::L10904479::
	k = o
	I = Z:FindFirstChild("Animator")
	if N then goto L10217832 end
::L7486764::
	I = Instance.new("Animator", Z)
::L10217832::
	up3 = I
	goto L5256345
end

function fn_3114090(arg1, arg2, arg3) -- entry L3114090, 3 blocks
::L3114090::
	if up1[up2] then goto L9653211 end
::L1718128::
	o = up2.Name
	C = e()
	z[C] = o
	Z = e()
	I = up3()
	z[Z] = I
	o = task.spawn
	o(closure(fn_6666863, {
		Z,
		up4,
		up2,
		up5,
		C,
		up6,
		up7
	}))
	return {["Text"]={"[Eating Blox Fruit...]"}}
::L9653211::
	o = up1[up2]
	o:Disconnect()
	up1[up2] = nil
	goto L1718128
end

function fn_3148917(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L3148917, 15 blocks
::L3148917::
	C = e()
	z[C] = arg1
	Z = e()
	z[Z] = nil
	I = getthreadidentity
	if k then goto L1612394 end
::L9662168::
	if I then goto L10929810 end
::L14147827::
	N = closure(fn_11124431, {
		C
	})
	o = pcall
	y = {
		o(N)
	}
	k = y[2]
	N = y[1]
	I = z[Z]
	if y then goto L8256998 end
::L8609855::
	if I then goto L13983190 end
::L3520909::
	I = N
	if N then goto L11246302 end
::L15351032::
	if I then goto L14885132 end
::L10364925::
	return nil, k
::L14885132::
	return k
::L11246302::
	y = k
	W = o
	if k then goto L13440961 end
::L11977351::
	I = y
	goto L15351032
::L13440961::
	y = (# k) > 0
	goto L11977351
::L13983190::
	o = pcall
	o(closure(fn_13515166, {
		Z
	}))
	goto L3520909
::L8256998::
	I = setthreadidentity
	goto L8609855
::L10929810::
	k = closure(fn_5676351, {
		Z
	})
	pcall(k)
	goto L14147827
::L1612394::
	I = setthreadidentity
	goto L9662168
end

function fn_3160280() -- entry L3160280, 1 blocks
::L3160280::
	C = up2.id
	up1.Image = C
	C = up2.offset
	up1.ImageRectOffset = C
	o = up1
	Z = Vector2.new(150, 150)
	o.ImageRectSize = Z
	return
end

function fn_3192623(arg1) -- entry L3192623, 5 blocks
::L3192623::
	C = up1()
	if not C then goto L1987983 end
::L16329219::
	if up2 then goto L15357273 end
::L9019068::
	o = C:LoadAnimation(up3)
	up2 = o
	I = up2
	I:Play()
	up2.Looped = true
	return
::L15357273::
	o = up2
	o:Stop()
	goto L9019068
::L1987983::
	return
end

function fn_3461679(arg1, arg2, arg3, arg4) -- entry L3461679, 9 blocks
::L3461679::
	I = up1
	if C then goto L5821186 end
::L6358250::
	if I then goto L16203015 end
::L12184091::
	return
::L16203015::
	up5()
	goto L12184091
::L5821186::
	Z = o
	C = not up2
	if k then goto L15658635 end
::L4342232::
	I = C
	goto L6358250
::L15658635::
	N = o
	k = not up3
	if y then goto L6533369 end
::L466342::
	C = k
	goto L4342232
::L6533369::
	k = not up4
	goto L466342
end

function fn_3559885(arg1) -- entry L3559885, 1 blocks
::L3559885::
	up1({
		Origin = up2,
		Position = up3
	})
	return
end

function fn_3597013() -- entry L3597013, 18 blocks
::L3597013::
	C = up1.Character
	I = C
	if C then goto L6364016 end
::L12490829::
	Z = I
	if not Z then goto L11853435 end
::L5398181::
	o = ipairs
	y = up2
	y = {
		o(unpack({
			y:GetDescendants()
		}))
	}
	k = y[2]
	N = y[3]
	y = y[1]
::L12520123::
	N, l = y(k, N)
	if N then goto L3597289 end
::L73751::
	return false
::L3597289::
	a = l.Name
	Y = a:find("Hitbox")
	if X then goto L505373 end
::L13348680::
	if Y then goto L8097263 end
::L16204961::
	goto L12520123
::L8097263::
	o = l.CFrame
	Y = o:PointToObjectSpace(Z.Position)
	o = l.Size / 2
	a = o
	D = math.abs(Y.X)
	X = D < a.X
	if g then goto L13276683 end
::L2146777::
	if X then goto L4505394 end
::L10647327::
	goto L16204961
::L4505394::
	return true
::L13276683::
	V = o
	P = math.abs(Y.Y)
	g = P < a.Y
	if D then goto L15964632 end
::L12321434::
	X = g
	goto L2146777
::L15964632::
	P = math.abs(Y.Z)
	g = P < a.Z
	goto L12321434
::L505373::
	Y = l:IsA("BasePart")
	goto L13348680
::L11853435::
	return false
::L6364016::
	I = C:FindFirstChild("HumanoidRootPart")
	goto L12490829
end

function fn_3599399(arg1) -- entry L3599399, 9 blocks
::L3599399::
	I = up1
	if C then goto L374839 end
::L5567558::
	if I then goto L7640363 end
::L2829777::
	return
::L7640363::
	up5(up6.Grab, false)
	goto L2829777
::L374839::
	Z = o
	C = not up2
	if k then goto L5332569 end
::L15104::
	I = C
	goto L5567558
::L5332569::
	N = o
	k = not up3
	if y then goto L5443835 end
::L15077882::
	C = k
	goto L15104
::L5443835::
	k = not up4
	goto L15077882
end

function fn_3807782(arg1, arg2) -- entry L3807782, 20 blocks
::L3807782::
	C = arg1
	o = workspace
	Z = o:FindFirstChild("Enemies")
	if not Z then goto L12268798 end
::L11785784::
	k = nil
	N = math.huge
	o = pairs
	Y = {
		o(unpack({
			Z:GetChildren()
		}))
	}
	W = Y[3]
	l = Y[1]
	y = Y[2]
::L14299492::
	W, a = l(y, W)
	if W then goto L9655634 end
::L5129300::
	return k
::L9655634::
	X = a:IsA("Model")
	if g then goto L5498851 end
::L2084761::
	if X then goto L3403011 end
::L7734167::
	goto L14299492
::L3403011::
	X = a:FindFirstChild("HumanoidRootPart")
	V = X
	o = a:FindFirstChildOfClass("Humanoid")
	g = o
	if X then goto L15800836 end
::L13951903::
	if V then goto L12531518 end
::L12399565::
	goto L7734167
::L12531518::
	V = (X.Position - C.Position).Magnitude
	D = V < N
	if t then goto L13339045 end
::L4610700::
	if D then goto L3697690 end
::L2451651::
	goto L12399565
::L3697690::
	N = V
	k = X
	goto L2451651
::L13339045::
	D = V < 80
	goto L4610700
::L15800836::
	t = o
	D = g
	if g then goto L15649868 end
::L7503427::
	V = D
	goto L13951903
::L15649868::
	D = g.Health > 0
	goto L7503427
::L5498851::
	X = a ~= up1.Character
	goto L2084761
::L12268798::
	return nil
end

function fn_3904939(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L3904939, 1 blocks
::L3904939::
	C = e()
	z[C] = arg1
	k = e()
	z[k] = arg3
	y = closure(fn_2879891, {
		C,
		k,
		up3
	})
	c(k)
	up1()
	up2(87737109817581, y)
	c(C)
	return
end

function fn_4150923(arg1, arg2) -- entry L4150923, 11 blocks
::L4150923::
	C = arg1
	o = ipairs
	y = {
		o(unpack({
			C:GetChildren()
		}))
	}
	Z = y[2]
	k = y[3]
	N = y[1]
::L7660696::
	k, W = N(Z, k)
	if k then goto L1093002 end
::L7686902::
	return
::L1093002::
	if W:IsA("Tool") then goto L10244182 end
::L8793759::
	goto L7660696
::L10244182::
	g = {
		ipairs(up1)
	}
	l = g[1]
	Y = g[2]
	a = g[3]
::L6151608::
	a, g = l(Y, a)
	if a then goto L11476379 end
::L10086353::
	goto L8793759
::L11476379::
	if V:lower()==g then goto L4451840 end
::L14771064::
	goto L6151608
::L4451840::
	W:Destroy()
	goto L10086353
end

function fn_4391649(arg1) -- entry L4391649, 6 blocks
::L4391649::
	N = {
		pairs(up1)
	}
	C = N[2]
	k = N[1]
	Z = N[3]
::L5907269::
	Z, y = k(C, Z)
	if Z then goto L9964937 end
::L6055939::
	up1 = {}
	return
::L9964937::
	if y then goto L6653350 end
::L11457700::
	goto L5907269
::L6653350::
	y:Stop()
	goto L11457700
end

function fn_4448004(arg1, arg2, arg3) -- entry L4448004, 26 blocks
::L4448004::
	I = not up1
	if C then goto L2368394 end
::L10770597::
	I = not up2
::L2368394::
	if I then goto L3424170 end
::L12172162::
	C = up3.Character
	if not C then goto L14911 end
::L14376204::
	Z = C:FindFirstChild("HumanoidRootPart")
	if not Z then goto L15775963 end
::L6533074::
	o = up4
	if o then goto L14905019 end
::L11695730::
	I = up5 + 1
	up5 = I
	if up5>4 then goto L480428 end
::L14654313::
	up6()
	up2 = false
	if up7 then goto L13412365 end
::L15878459::
	W = up8(up9[up5], false)
	up7 = W
	up10({
		hrp = Z,
		index = up5
	})
	if up7 then goto L12937659 end
::L16266641::
	up2 = true
	Y = o
	l = up1
	if a then goto L9287800 end
::L457163::
	if l then goto L6196878 end
::L11453768::
	up15()
::L15402550::
	return
::L6196878::
	up14()
	goto L11453768
::L9287800::
	X = o
	a = not up11
	if g then goto L13800529 end
::L5464828::
	l = a
	goto L457163
::L13800529::
	V = o
	g = not up12
	if D then goto L3228609 end
::L5913060::
	a = g
	goto L5464828
::L3228609::
	g = not up13
	goto L5913060
::L12937659::
	y = up7.Stopped
	Y = closure(fn_4604597, {
		up7,
		up2,
		up1,
		up11,
		up12,
		up13,
		up14,
		up15
	})
	y:Connect(Y)
	goto L15402550
::L13412365::
	y = up7
	y:Stop()
	goto L15878459
::L480428::
	up5 = 1
	goto L14654313
::L14905019::
	task.cancel(up4)
	o = nil
	up4 = nil
	goto L11695730
::L15775963::
	return
::L14911::
	return
::L3424170::
	return
end

function fn_4511625(arg1) -- entry L4511625, 9 blocks
::L4511625::
	I = up1
	if C then goto L10984917 end
::L8310046::
	if I then goto L11228235 end
::L4083076::
	return
::L11228235::
	up5()
	goto L4083076
::L10984917::
	Z = o
	C = not up2
	if k then goto L14223571 end
::L1779981::
	I = C
	goto L8310046
::L14223571::
	N = o
	k = not up3
	if y then goto L16171265 end
::L10725692::
	C = k
	goto L1779981
::L16171265::
	k = not up4
	goto L10725692
end

function fn_4533242(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L4533242, 88 blocks
::L4533242::
	Z = arg2
	C = arg1
	W = {
		pairs({
			"TDB_WEAR",
			"TDB_EQUIP"
		})
	}
	N = W[3]
	y = W[1]
	k = W[2]
::L9381864::
	N, l = y(k, N)
	if N then goto L2627122 end
::L13371989::
	N = up1
	k = N:FindFirstChild("TEST SWORD")
	if y then goto L676882 end
::L15211535::
	k = up2
::L676882::
	o = not k
	if o then goto L6946666 end
::L11789850::
	N = (Z and "TDB_EQUIP") or "TDB_WEAR"
	y = k:FindFirstChild(N)
	if not y then goto L2289191 end
::L7112320::
	W = y:Clone()
	a = C.FindFirstChild
	W.Name = N
	l = a(C, "UpperTorso")
	Y = o
	if a then goto L9720170 end
::L7336477::
	l = C:FindFirstChild("Torso")
::L9720170::
	a = Y
	Y = C:FindFirstChild("RightHand")
	if X then goto L15565833 end
::L3645659::
	Y = C:FindFirstChild("Right Arm")
::L15565833::
	X = a
	a = C:FindFirstChild("LeftHand")
	if g then goto L4231535 end
::L12192271::
	a = C:FindFirstChild("Left Arm")
::L4231535::
	o = X
	X = C:FindFirstChild("Head")
	if Z then goto L13448867 end
::L11332683::
	D = o
	g = W:FindFirstChild("UpperTorso")
	V = g
	if g then goto L6654397 end
::L11787007::
	o = D
	if V then goto L2073838 end
::L15820080::
::L12936501::
	W.Parent = C
	return W
::L2073838::
	m = {
		pairs({
			"DarkBlade1",
			"DarkBlade2",
			"DarkBlade3"
		})
	}
	P = m[3]
	t = m[2]
	D = m[1]
::L8070368::
	P, Q = D(t, P)
	if P then goto L8611471 end
::L6966503::
	g:Destroy()
	goto L15820080
::L8611471::
	R = o
	m = W:FindFirstChild(Q)
	M = m
	if m then goto L11630291 end
::L12795478::
	o = R
	R = m
	n = o
	if m then goto L1506128 end
::L2571427::
	o = n
	if R then goto L3753651 end
::L10328770::
	goto L8070368
::L3753651::
	R = g.CFrame
	n = R:ToObjectSpace(M.CFrame)
	R = l.CFrame * n
	q = M.CFrame
	f = q:Inverse()
	q = {}
	v = R * f
	f = pairs
	b = {
		f(unpack({
			m:GetDescendants()
		}))
	}
	i = b[3]
	H = b[2]
	F = b[1]
::L3877213::
	i, py = F(H, i)
	if i then goto L10075995 end
::L10951759::
	f = pairs
	b = {
		f(unpack({
			m:GetDescendants()
		}))
	}
	F = b[1]
	H = b[2]
	i = b[3]
::L15318185::
	i, py = F(H, i)
	if i then goto L9026034 end
::L10480851::
	py = {
		ipairs(q)
	}
	i = py[3]
	F = py[1]
	H = py[2]
::L8590604::
	i, py = F(H, i)
	if i then goto L11167345 end
::L7233254::
	goto L10328770
::L11167345::
	py.Enabled = true
	goto L8590604
::L9026034::
	if py:IsA("BasePart") then goto L6050102 end
::L808419::
	goto L15318185
::L6050102::
	A = v * py.CFrame
	py.CFrame = A
	goto L808419
::L10075995::
	if py:IsA("WeldConstraint") then goto L4808057 end
::L16060070::
	goto L3877213
::L4808057::
	py.Enabled = false
	table.insert(q, py)
	if py.Parent.Name=="Handle" then goto L2991929 end
::L5109516::
	goto L16060070
::L2991929::
	py.Part0 = l
	goto L5109516
::L1506128::
	R = M
	goto L2571427
::L11630291::
	M = m:FindFirstChild("Handle", true)
	goto L12795478
::L6654397::
	V = l
	goto L11787007
::L13448867::
	V = "DarkBladeR"
	M = o
	m = Y
	P = W:FindFirstChild("RightHand")
	t = "dummy"
	Q = "target"
	if Y then goto L11332021 end
::L2510435::
	m = l
::L11332021::
	R = a
	D = {
		[t] = P,
		[Q] = m
	}
	t = "DarkBladeL"
	Q = "dummy"
	n = M
	m = W:FindFirstChild("LeftHand")
	M = "target"
	if a then goto L1544205 end
::L11034067::
	R = l
::L1544205::
	P = {
		[Q] = m,
		[M] = R
	}
	M = "dummy"
	Q = "DarkBladeH"
	q = n
	v = X
	R = W:FindFirstChild("Head")
	n = "target"
	if X then goto L3955959 end
::L669965::
	v = l
::L3955959::
	o = q
	Q = {
		pairs({
			[V] = D,
			[t] = P,
			[Q] = {
				[M] = R,
				[n] = v
			}
		})
	}
	t = Q[2]
	P = Q[3]
	D = Q[1]
::L7171792::
	P, Q = D(t, P)
	if P then goto L273621 end
::L4155921::
	m = {
		pairs({
			"RightHand",
			"LeftHand",
			"Head",
			"UpperTorso"
		})
	}
	P = m[3]
	t = m[2]
	D = m[1]
::L16518275::
	P, Q = D(t, P)
	if P then goto L16636833 end
::L9026128::
	goto L12936501
::L16636833::
	m = W:FindFirstChild(Q)
	if m then goto L10369004 end
::L3100483::
	goto L16518275
::L10369004::
	m:Destroy()
	goto L3100483
::L273621::
	R = o
	M = e()
	m = W:FindFirstChild(P)
	z[M] = m
	m = z[M]
	if n then goto L4856617 end
::L1887626::
	o = R
	n = o
	R = z[M]
	if v then goto L13039379 end
::L4800009::
	o = n
	if R then goto L7203825 end
::L12774559::
	c(M)
	goto L7171792
::L7203825::
	R = Q.dummy.CFrame
	n = R:ToObjectSpace(m.CFrame)
	R = Q.target.CFrame * n
	q = m.CFrame
	f = q:Inverse()
	q = {}
	v = R * f
	f = pairs
	py = z[M]
	py = {
		f(unpack({
			py:GetDescendants()
		}))
	}
	H = py[2]
	i = py[3]
	F = py[1]
::L3090304::
	i, py = F(H, i)
	if i then goto L2486366 end
::L10798030::
	f = pairs
	py = z[M]
	py = {
		f(unpack({
			py:GetDescendants()
		}))
	}
	i = py[3]
	H = py[2]
	F = py[1]
::L765037::
	i, py = F(H, i)
	if i then goto L6129564 end
::L15592471::
	py = {
		ipairs(q)
	}
	H = py[2]
	i = py[3]
	F = py[1]
::L13319929::
	i, py = F(H, i)
	if i then goto L6266771 end
::L3357770::
	f = pcall
	f(closure(fn_11208725, {
		M
	}))
	goto L12774559
::L6266771::
	py.Enabled = true
	goto L13319929
::L6129564::
	if py:IsA("BasePart") then goto L7406655 end
::L4936528::
	goto L765037
::L7406655::
	A = v * py.CFrame
	py.CFrame = A
	goto L4936528
::L2486366::
	if py:IsA("WeldConstraint") then goto L3302388 end
::L4551589::
	goto L3090304
::L3302388::
	py.Enabled = false
	table.insert(q, py)
	if py.Parent.Name=="Handle" then goto L6707750 end
::L5556294::
	goto L4551589
::L6707750::
	A = Q.target
	py.Part0 = A
	goto L5556294
::L13039379::
	v = m
	q = o
	if m then goto L5036249 end
::L9409343::
	R = v
	goto L4800009
::L5036249::
	F = o
	f = Q.dummy
	if H then goto L2131244 end
::L9597955::
	v = f
	goto L9409343
::L2131244::
	f = Q.target
	goto L9597955
::L4856617::
	n = z[M]
	m = n:FindFirstChild("Handle", true)
	goto L1887626
::L2289191::
	return
::L6946666::
	return
::L2627122::
	Y = C:FindFirstChild(l)
	if Y then goto L3471223 end
::L5882350::
	goto L9381864
::L3471223::
	Y:Destroy()
	goto L5882350
end

function fn_4599621(arg1) -- entry L4599621, 3 blocks
::L4599621::
	if up1 then goto L2850408 end
::L8517285::
	return
::L2850408::
	up2()
	goto L8517285
end

function fn_4604597(arg1) -- entry L4604597, 9 blocks
::L4604597::
	o = nil
	Z = nil
	up1 = nil
	up2 = true
	C = up3
	if k then goto L730881 end
::L9580642::
	if C then goto L2688354 end
::L7516661::
	up8()
	return
::L2688354::
	up7()
	goto L7516661
::L730881::
	N = o
	k = not up4
	if y then goto L10687102 end
::L5430568::
	C = k
	goto L9580642
::L10687102::
	W = o
	y = not up5
	if l then goto L9661412 end
::L2734252::
	k = y
	goto L5430568
::L9661412::
	y = not up6
	goto L2734252
end

function fn_4800048(arg1, arg2, arg3) -- entry L4800048, 1 blocks
::L4800048::
	C = e()
	k = e()
	z[C] = arg1
	z[k] = arg3
	o = up1
	y = closure(fn_11166869, {
		C,
		k,
		up3
	})
	o()
	up2(95297968392131, y)
	c(k)
	c(C)
	return
end

function fn_4838029(arg1, arg2, arg3, arg4) -- entry L4838029, 13 blocks
::L4838029::
::L4324148::
	I = up1
	if C then goto L10941097 end
::L9784201::
	if I then goto L7419343 end
::L15026911::
	return
::L7419343::
	o = ipairs
	k = up2
	k = {
		o(unpack({
			k:GetDescendants()
		}))
	}
	C = k[2]
	Z = k[3]
	k = k[1]
::L7885078::
	Z, y = k(C, Z)
	if Z then goto L11731901 end
::L751376::
	o = task.wait
	o(.1)
	goto L4324148
::L11731901::
	if y:IsA("BasePart") then goto L14443222 end
::L8152462::
	goto L7885078
::L14443222::
	y.CanCollide = false
	goto L8152462
::L10941097::
	C = up2
	Z = o
	if k then goto L12001169 end
::L15482421::
	I = C
	goto L9784201
::L12001169::
	C = up2.Parent
	goto L15482421
end

function fn_4943347(arg1, arg2, arg3, arg4, arg5) -- entry L4943347, 7 blocks
::L4943347::
	C = e()
	z[C] = arg1
	Z = z[C]
	I = Z:FindFirstChild("Handle")
	if k then goto L11695744 end
::L3455093::
	Z = z[C]
	I = Z:FindFirstChildWhichIsA("BasePart")
::L11695744::
	Z = I
	if not Z then goto L468340 end
::L10060316::
	if up1[z[C]] then goto L15096276 end
::L4089702::
	k = e()
	z[k] = false
	W = closure(fn_13938108, {
		k,
		up2,
		C,
		up3,
		up4,
		up5,
		up6
	})
	o = up1
	I = z[C]
	c(k)
	c(C)
	N = Z.Touched
	y = N:Connect(W)
	o[I] = y
	return
::L15096276::
	o = up1[z[C]]
	o:Disconnect()
	up1[z[C]] = nil
	goto L4089702
::L468340::
	return
end

function fn_4958596(arg1, arg2, arg3, arg4) -- entry L4958596, 3 blocks
::L4958596::
	C = arg1
	if up1[C] then goto L5434125 end
::L5539856::
	return
::L5434125::
	o = up1[C]
	o:Disconnect()
	up1[C] = nil
	goto L5539856
end

function fn_4977525(arg1, arg2, arg3, arg4, arg5) -- entry L4977525, 16 blocks
::L4977525::
	I = not up1
	if C then goto L9295218 end
::L5788271::
	I = not up2
::L9295218::
	if I then goto L6791155 end
::L16147067::
	up2 = false
	up3.Value = false
	C = up4.Character
	if not C then goto L5056648 end
::L8251088::
	Z = C:FindFirstChild("HumanoidRootPart")
	if not Z then goto L13026132 end
::L3225925::
	up5()
	if up6 then goto L5614547 end
::L5355963::
	up7()
	N = up8(Z, 120)
	k = e()
	z[k] = N
	if (#z[k])>0 then goto L3411896 end
::L14479419::
	y = up9(up16, false)
	up6 = y
	if up6 then goto L9334893 end
::L1096487::
	up12({
		Root = Z,
		Holding = nil,
		Victims = nil,
		Scale = 1,
		Character = C,
		player = up4,
		HoldDuration = 0
	})
::L5524033::
	c(k)
	return
::L9334893::
	N = up6.Stopped
	l = closure(fn_4511625, {
		up1,
		up13,
		up14,
		up2,
		up15
	})
	N:Connect(l)
	goto L1096487
::L3411896::
	up9(up10.Execute, false)
	y = Instance.new("BoolValue")
	N = e()
	z[N] = y
	z[N].Name = "atLeastOneVictim"
	z[N].Value = true
	z[N].Parent = Z
	W = task
	Y = closure(fn_7309160, {
		N
	})
	W.delay(10, Y)
	y = up11
	y:Play("Angel C-Release", Z.Position, nil, .75, 1)
	y = up11
	y:Play("Angel C- Time Stop", Z.Position, nil, .7, 1.2)
	y = up11
	c(N)
	y:Play("Angel C- Time Ball Break", Z.Position, nil, .65, 1)
	y = task.delay
	y(2.5, closure(fn_15210239, {
		k,
		up11
	}))
	up12({
		Root = Z,
		Holding = nil,
		Victims = z[k],
		Scale = 1.5,
		Character = C,
		player = up4,
		HoldDuration = 3
	})
	y = task.delay
	y(.5, closure(fn_3461679, {
		up1,
		up13,
		up14,
		up2,
		up15
	}))
	goto L5524033
::L5614547::
	I = up6
	I:Stop()
	up6 = nil
	goto L5355963
::L13026132::
	return
::L5056648::
	return
::L6791155::
	return
end

function fn_5073583(arg1) -- entry L5073583, 19 blocks
::L5073583::
	I = up1.equipped
	if C then goto L674077 end
::L14804145::
	if I then goto L4240443 end
::L1922192::
	return
::L4240443::
	I = up2.Character
	if C then goto L1403904 end
::L2073789::
	C = e()
	z[C] = I
	if z[C] then goto L10855724 end
::L11127517::
	c(C)
	goto L1922192
::L10855724::
	I = up1.idleTrack
	if Z then goto L4185644 end
::L5138140::
	if I then goto L10592749 end
::L7856780::
	if up1.currentAnim then goto L1793862 end
::L11588383::
	up1.holdX = true
	up1.holdXFlag.Value = true
	o = up2.Character
	Z = o:FindFirstChildOfClass("Humanoid")
	if Z then goto L1394600 end
::L8908141::
	o = task.spawn
	o(closure(fn_11339547, {
		up4,
		up2,
		C,
		up1
	}))
	goto L11127517
::L1394600::
	I = Z:FindFirstChild("Animator")
	if k then goto L10095924 end
::L14959196::
	I = Instance.new("Animator", Z)
::L10095924::
	k = I
	N = Instance.new("Animation")
	N.AnimationId = "rbxassetid://14468672805"
	y = k:LoadAnimation(N)
	y.Looped = false
	y:Play()
	up1.currentAnim = y
	W = closure(fn_15232284, {
		up1,
		up3
	})
	o = y.Stopped
	o:Connect(W)
	goto L8908141
::L1793862::
	o = up1.currentAnim
	o:Stop()
	goto L11588383
::L10592749::
	o = up1.idleTrack
	o:Stop()
	up1.idleTrack = nil
	goto L7856780
::L4185644::
	I = up1.idleTrack.IsPlaying
	goto L5138140
::L1403904::
	C = up2.Character
	I = C:FindFirstChild("HumanoidRootPart")
	goto L2073789
::L674077::
	I = not up1.holdX
	goto L14804145
end

function fn_5097914(arg1, arg2, arg3) -- entry L5097914, 1 blocks
::L5097914::
	up1 = false
	up2 = false
	up3 = false
	return
end

function fn_5272890(arg1, arg2, arg3, arg4, arg5) -- entry L5272890, 13 blocks
::L5272890::
	I = not up1
	if C then goto L3064338 end
::L12963887::
	I = not up2
::L3064338::
	if I then goto L4227696 end
::L8522985::
	o = false
	up2 = false
	up3.Value = false
	C = up4.Character
	if not C then goto L6258760 end
::L776168::
	I = C:FindFirstChild("HumanoidRootPart")
	Z = e()
	z[Z] = I
	if not z[Z] then goto L6040186 end
::L1550753::
	n = o
	k = up5(z[Z])
	N = e()
	z[N] = k
	up6()
	up7(up8.Execute, false)
	I = up9
	I:Play("Angel A- Angel Release", z[Z].Position, nil, .75, 1)
	I = up9
	I:Play("Angel A- Angel Release_2", z[Z].Position, nil, .7, 1.2)
	Y = "CFrame"
	I = task.delay
	Q = "ExplosionPos"
	I(.3, closure(fn_9408164, {
		up9,
		N,
		Z
	}))
	k = task
	W = closure(fn_1738821, {
		up9,
		Z
	})
	k.delay(.5, W)
	I = up10
	l = z[Z]
	W = "Root"
	X = z[Z].CFrame
	a = X * CFrame.new(0, 0, - 5)
	P = true
	t = "Hakai"
	V = "Holding"
	M = o
	X = "EnemyRoot"
	D = nil
	g = z[N]
	R = z[N]
	if v then goto L8211507 end
::L14095388::
	m = R
	if R then goto L13318427 end
::L12559808::
	m = z[Z].Position + (z[Z].CFrame.LookVector * 10)
::L13318427::
	I({
		[W] = l,
		[Y] = a,
		[X] = g,
		[V] = D,
		[t] = P,
		[Q] = m
	})
	c(N)
	k = task
	W = closure(fn_3599399, {
		up1,
		up2,
		up11,
		up12,
		up7,
		up8
	})
	k.delay(.3, W)
	I = task.delay
	c(Z)
	I(.8, closure(fn_8451571, {
		up1,
		up2,
		up11,
		up12,
		up13
	}))
	return
::L8211507::
	R = z[N].Position
	goto L14095388
::L6040186::
	return
::L6258760::
	return
::L4227696::
	return
end

function fn_5318191(arg1, arg2, arg3) -- entry L5318191, 5 blocks
::L5318191::
	C = arg1
	I = C:IsA("Tool")
	if Z then goto L4398229 end
::L11132711::
	if I then goto L9065599 end
::L195546::
	return
::L9065599::
	up2(C, true)
	goto L195546
::L4398229::
	Z = up1
	I = Z:HasTag(C, "VisualFruit")
	goto L11132711
end

function fn_5356422(arg1, arg2) -- entry L5356422, 1 blocks
::L5356422::
	up1()
	return
end

function fn_5382754() -- entry L5382754, 1 blocks
::L5382754::
	return "TZcCN5iDG8K"/(12789678-("cg8qaFojCDKB"^13677122))
end

function fn_5405770(arg1, arg2, arg3, arg4) -- entry L5405770, 4 blocks
::L5405770::
::L1871212::
	if true then goto L1353680 end
::L7270716::
	return
::L1353680::
	o = l2
	I = l1
	l1 = o
	l2 = I
	up1()
	goto L1871212
end

function fn_5493637(arg1, arg2, arg3, arg4, arg5) -- entry L5493637, 11 blocks
::L5493637::
	I = not up1
	if C then goto L156663 end
::L9548511::
	I = up2
::L156663::
	if I then goto L5364801 end
::L2290790::
	o = up3.Character
	C = e()
	z[C] = o
	if not z[C] then goto L15285929 end
::L1512324::
	if not o:FindFirstChild("HumanoidRootPart") then goto L4319653 end
::L2145309::
	up2 = true
	up4.Value = true
	up5()
	if up6 then goto L14412218 end
::L990650::
	up7(up8, true)
	k = task.spawn
	y = closure(fn_14766355, {
		up9,
		C,
		up4
	})
	c(C)
	k(y)
	return
::L14412218::
	I = up6
	I:Stop()
	up6 = nil
	goto L990650
::L4319653::
	return
::L15285929::
	return
::L5364801::
	return
end

function fn_5676351(arg1, arg2, arg3) -- entry L5676351, 1 blocks
::L5676351::
	I = getthreadidentity()
	up1 = I
	setthreadidentity(8)
	return
end

function fn_5757503(arg1, arg2) -- entry L5757503, 5 blocks
::L5757503::
	C = arg1
	I = C:IsA("Tool")
	if Z then goto L7816538 end
::L17589::
	if I then goto L16332665 end
::L582324::
	return
::L16332665::
	up2(C, true)
	goto L582324
::L7816538::
	Z = up1
	I = Z:HasTag(C, "VisualFruit")
	goto L17589
end

function fn_5828991(arg1, arg2) -- entry L5828991, 1 blocks
::L5828991::
	I = up1.new("<Color=Purple>Quantum Onyx: Rain Fruits<Color=/>")
	I:Display()
	o = task.spawn
	o(closure(fn_11961173, {
		up2,
		up3,
		up1,
		up4
	}))
	return
end

function fn_5829867(arg1, arg2, arg3) -- entry L5829867, 10 blocks
::L5829867::
::L8699030::
	I = up1
	if C then goto L5932262 end
::L6457284::
	if I then goto L11911532 end
::L11216647::
	return
::L11911532::
	C = up3.Character
	if not C then goto L12328538 end
::L9973425::
	Z = C:FindFirstChild("HumanoidRootPart")
	if not Z then goto L4397257 end
::L6229837::
	up4({
		Root = Z,
		Holding = up5
	})
	task.wait()
	goto L8699030
::L4397257::
	goto L11216647
::L12328538::
	goto L11216647
::L5932262::
	I = up2
	goto L6457284
end

function fn_5923408(arg1, arg2, arg3, arg4) -- entry L5923408, 16 blocks
::L5923408::
	o = up1
	o.equipped = false
	I = up1.idleTrack
	if C then goto L2590486 end
::L16147353::
	if I then goto L1429843 end
::L5722280::
	I = up2.Character
	if C then goto L15778837 end
::L6252198::
	C = I
	if C then goto L10836020 end
::L6377126::
	up1.currentAnim = nil
	up1.idleTrack = nil
	Z = up2.Character
	if k then goto L220018 end
::L11622162::
	k = up2.CharacterAdded
	Z = k:Wait()
::L220018::
	up3(Z, false)
	up1.holdZ = false
	up1.holdZFlag.Value = false
	up1.holdX = false
	up1.holdXFlag.Value = false
	return
::L10836020::
	o = pairs
	y = {
		o(unpack({
			C:GetPlayingAnimationTracks()
		}))
	}
	N = y[1]
	Z = y[2]
	k = y[3]
::L12359853::
	k, W = N(Z, k)
	if k then goto L1477084 end
::L16045924::
	goto L6377126
::L1477084::
	W:Stop()
	goto L12359853
::L15778837::
	k = up2.Character
	Z = o
	C = k:FindFirstChildOfClass("Humanoid")
	if N then goto L14928251 end
::L13823429::
	I = C
	goto L6252198
::L14928251::
	k = up2.Character
	N = k:FindFirstChildOfClass("Humanoid")
	C = N:FindFirstChild("Animator")
	goto L13823429
::L1429843::
	o = up1.idleTrack
	o:Stop()
	goto L5722280
::L2590486::
	I = up1.idleTrack.IsPlaying
	goto L16147353
end

function fn_5980848(arg1) -- entry L5980848, 6 blocks
::L5980848::
	C = arg1
	I = workspace
	C.Parent = I
	Z = C:FindFirstChild("Spawnpos", true)
	if Z then goto L4361465 end
::L3751785::
	return
::L4361465::
	k = Z.Position
	y = C:GetModelCFrame().Position - k
	W = Vector3.new(up1.Position.X, up1.Position.Y + 99999, up1.Position.Z)
	o = C.PivotTo
	o(C, unpack({
		CFrame.new(W + y)
	}))
	Y = 3
	a = 1
	X = 1 < 0
	l = 1 - 1
::L1570727::
	l = l + a
	if (X and (l>=Y)) or ((not X) and (l<=Y)) then goto L13310591 end
::L16019185::
	up2(Z.Position)
	up3(C, "<Rip_Family Hideout>", "<Sea>", nil, nil)
	goto L3751785
::L13310591::
	o = up1
	D = CFrame.new(Z.Position)
	o.CFrame = D
	task.wait(.05)
	goto L1570727
end

function fn_6008282() -- entry L6008282, 1 blocks
::L6008282::
	up1({
		player = up2,
		hrp = up3,
		origin = up4,
		fireDir = up5,
		Stage = 2
	})
	up6({
		player = up2,
		hrp = up3,
		origin = up4,
		fireDir = up5,
		targetPos = up4 + (up5 * 800),
		fliesFor = 2.5,
		ClockTime = up7,
		specialActivated = false
	})
	return
end

function fn_6119322(arg1) -- entry L6119322, 1 blocks
::L6119322::
	up1(up2)
	return
end

function fn_6224170(arg1, arg2, arg3, arg4) -- entry L6224170, 1 blocks
::L6224170::
	C = e()
	z[C] = {
		isActive = false,
		gui = nil,
		guiImage = nil,
		guiName = "PakistanKamui",
		imageId = "rbxassetid://123270704863428"
	}
	Z = closure(fn_3904939, {
		up1,
		up2,
		up3
	})
	N = closure(fn_6119322, {
		up5,
		C
	})
	z[C].loadModelAndTeleport = Z
	up4("pakistan kamui", "kamui5", N)
	c(C)
	return
end

function fn_6283375() -- entry L6283375, 1 blocks
::L6283375::
	up1 = false
	return
end

function fn_6368438(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L6368438, 3 blocks
::L6368438::
	C = arg1
	o = up1 + (up2 * C)
	up1 = o
	I = up3 + (up2 * C)
	up3 = I
	if up4.guiImage then goto L13202649 end
::L3649669::
	return
::L13202649::
	N = up3
	up4.guiImage.Rotation = N
	goto L3649669
end

function fn_6503268(arg1, arg2, arg3) -- entry L6503268, 3 blocks
::L6503268::
	tick()
	if (Z-up1.lastAttack)>=1.5 then goto L4599916 end
::L3716075::
	return
::L4599916::
	up1.comboStep = 1
	o = up1.resetTimer
	o:Disconnect()
	up1.resetTimer = nil
	goto L3716075
end

function fn_6513213(arg1, arg2, arg3, arg4, arg5) -- entry L6513213, 1 blocks
::L6513213::
	up1(up2)
	return
end

function fn_6551129(arg1, arg2, arg3, arg4, arg5) -- entry L6551129, 11 blocks
::L6551129::
	I = not up1
	if C then goto L15891998 end
::L8195603::
	I = up2
::L15891998::
	if I then goto L12728923 end
::L12740279::
	C = up3.Character
	if not C then goto L92115 end
::L16125698::
	o = C:FindFirstChild("HumanoidRootPart")
	Z = e()
	z[Z] = o
	if not z[Z] then goto L1660235 end
::L4008432::
	up2 = true
	up4.Value = true
	up5()
	if up6 then goto L9430466 end
::L16575307::
	up7(up8.Z, false)
	k = up9
	k:Play("Angel A- Angel Hold", z[Z].Position, nil, .8, 1)
	k = task.spawn
	k(closure(fn_821993, {
		up2,
		up1,
		up3,
		up10,
		up4
	}))
	k = task.spawn
	k(closure(fn_2722459, {
		up2,
		up1,
		up7,
		up8,
		up9,
		Z
	}))
	c(Z)
	return
::L9430466::
	I = up6
	I:Stop()
	up6 = nil
	goto L16575307
::L1660235::
	return
::L92115::
	return
::L12728923::
	return
end

function fn_6648710(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L6648710, 18 blocks
::L6648710::
	I = up1.new("<Color=Purple>Quantum Onyx: Gifted you Triple Darkblade<Color=/>")
	I:Display()
	I = require(up2.Effect.Container.Yoru2.SphereSlicesV2)
	Z = e()
	z[Z] = I
	I = require(up2.Effect.Container.WeaponReworks.DarkBladeHeld)
	k = e()
	z[k] = I
	I = require(up2.Effect.Container.Yoru2.SlashV2)
	N = e()
	z[N] = I
	I = require(up2.Effect.Container.Yoru2.InitialSlash)
	y = e()
	z[y] = I
	if not I:FindFirstChild("TEST SWORD") then goto L15318646 end
::L4306036::
	W = e()
	z[W] = {
		9897433972,
		9897434364,
		9897435270,
		9897435626
	}
	l = e()
	z[l] = "10432912847"
	o = up2
	I = o:FindFirstChild("TEST SWORD")
	Y = e()
	z[Y] = I
	h = Instance.new("BoolValue")
	o = {
		comboStep = 1,
		lastAttack = 0,
		resetTimer = nil,
		equipped = false,
		canM1 = true,
		m1CD = .5,
		holdZ = false,
		holdX = false,
		currentAnim = nil,
		idleTrack = nil,
		holdZFlag = h,
		holdXFlag = Instance.new("BoolValue")
	}
	D = e()
	X = e()
	a = e()
	V = e()
	z[a] = o
	o = closure(fn_12953164, {
		a,
		up4,
		l
	})
	t = e()
	g = e()
	z[X] = o
	o = closure(fn_6709368, {
		a,
		up4,
		W,
		up5,
		X
	})
	z[g] = o
	o = closure(fn_12607426, {
		a,
		up4,
		X,
		Z
	})
	z[V] = o
	o = closure(fn_10558533, {
		a,
		X
	})
	z[D] = o
	P = e()
	o = closure(fn_5073583, {
		a,
		up4,
		X,
		k
	})
	z[t] = o
	o = closure(fn_13963726, {
		a,
		up4,
		y,
		N,
		X
	})
	z[P] = o
	o = up6.InputBegan
	Q = closure(fn_8892740, {
		up6,
		a,
		V,
		t,
		g
	})
	o:Connect(Q)
	o = up6.InputEnded
	Q = closure(fn_8328013, {
		a,
		D,
		P
	})
	o:Connect(Q)
	o = closure(fn_4533242, {
		up2,
		Y
	})
	Q = e()
	z[Q] = o
	o = closure(fn_184449, {
		a,
		g,
		up4,
		Q,
		X
	})
	M = up4.Backpack
	m = o
	I = M:FindFirstChild("Triple Dark Blade")
	if R then goto L8674891 end
::L11402020::
	R = o
	M = up4.Character
	if n then goto L6366955 end
::L14595478::
	I = M
::L8674891::
	M = I
	if M then goto L16082463 end
::L6498252::
	R = Instance.new("Tool")
	R.Name = "Triple Dark Blade"
	R.RequiresHandle = false
	R:SetAttribute("ItemId", 1190)
	R.ToolTip = "Sword"
	I = up4.Backpack
	R.Parent = I
	m(R)
	I = up4.Character
	if n then goto L617816 end
::L15283177::
	n = up4.CharacterAdded
	I = n:Wait()
::L617816::
	z[Q](I, false)
	o = pairs
	f = up4.Backpack
	f = {
		o(unpack({
			f:GetChildren()
		}))
	}
	v = f[2]
	q = f[3]
	f = f[1]
::L12088784::
	q, H = f(v, q)
	if q then goto L2023252 end
::L11670097::
	q = up4
	c(Z)
	c(Q)
	c(N)
	c(l)
	c(Y)
	c(g)
	c(X)
	v = q.Backpack
	c(W)
	c(y)
	o = v.ChildAdded
	c(k)
	c(D)
	c(a)
	c(V)
	v = o.Connect
	c(P)
	v(o, m)
	c(t)
	return
::L2023252::
	m(H)
	goto L12088784
::L16082463::
	M:Destroy()
	goto L6498252
::L6366955::
	n = up4.Character
	M = n:FindFirstChild("Triple Dark Blade")
	goto L14595478
::L15318646::
	W = up3("rbxassetid://18631972861")
	I = W
	if W then goto L14760510 end
::L12998673::
	l = I
	if l then goto L2747478 end
::L11683063::
	goto L4306036
::L2747478::
	l.Name = "TEST SWORD"
	I = up2
	l.Parent = I
	goto L11683063
::L14760510::
	I = W[1]
	goto L12998673
end

function fn_6666863(arg1, arg2, arg3, arg4, arg5) -- entry L6666863, 4 blocks
::L6666863::
	if up1 then goto L8368993 end
::L4498111::
	up2()
	task.wait(.5)
	o = up3
	o:Destroy()
	Z = "<Color=Green>Blox Fruit " .. (up4(up5) .. " activated. <Color=/>")
	I = up6.new(Z)
	I:Display()
::L16716293::
	return
::L8368993::
	up2()
	o = up3
	o:Destroy()
	Z = "<Color=Green>Blox Fruit " .. (up4(up5) .. " activated.<Color=/>")
	I = up6.new(Z)
	I:Display()
	task.wait(.5)
	up7(up1, up5)
	goto L16716293
end

function fn_6709368() -- entry L6709368, 23 blocks
::L6709368::
	I = up1.equipped
	if C then goto L9535207 end
::L6332238::
	if I then goto L8454527 end
::L3426940::
	return
::L8454527::
	up1.canM1 = false
	o = up1
	Z = tick()
	o.lastAttack = Z
	I = up1.idleTrack
	if C then goto L15347099 end
::L4634155::
	if I then goto L9703542 end
::L16652759::
	I = up1.currentAnim
	if C then goto L4411113 end
::L14323680::
	if I then goto L15282307 end
::L8089525::
	I = up2.Character
	if C then goto L12971072 end
::L7897678::
	C = I
	if C then goto L8687642 end
::L14986178::
	Z = (up1.comboStep % 4) + 1
	up1.comboStep = Z
	if up1.resetTimer then goto L5615752 end
::L7956505::
	o = up1
	Z = up4.Stepped
	N = closure(fn_6503268, {
		up1
	})
	k = Z:Connect(N)
	o.resetTimer = k
	o = task.delay
	Z = up1.m1CD
	o(Z, closure(fn_12278709, {
		up1,
		up5
	}))
	goto L3426940
::L5615752::
	o = up1.resetTimer
	o:Disconnect()
	goto L7956505
::L8687642::
	I = C:FindFirstChild("Animator")
	if Z then goto L1655444 end
::L5423917::
	I = Instance.new("Animator", C)
::L1655444::
	Z = I
	k = Instance.new("Animation")
	I = "rbxassetid://" .. z[up3][up1.comboStep]
	k.AnimationId = I
	N = Z:LoadAnimation(k)
	N.Looped = false
	N:Play()
	up1.currentAnim = N
	goto L14986178
::L12971072::
	C = up2.Character
	I = C:FindFirstChildOfClass("Humanoid")
	goto L7897678
::L15282307::
	o = up1.currentAnim
	o:Stop(0)
	goto L8089525
::L4411113::
	I = up1.currentAnim.IsPlaying
	goto L14323680
::L9703542::
	o = up1.idleTrack
	o:Stop()
	up1.idleTrack = nil
	goto L16652759
::L15347099::
	I = up1.idleTrack.IsPlaying
	goto L4634155
::L9535207::
	Z = o
	C = up1.canM1
	if k then goto L5042598 end
::L7839452::
	I = C
	goto L6332238
::L5042598::
	W = tick()
	C = (W - up1.lastAttack) >= up1.m1CD
	goto L7839452
end

function fn_6889221(arg1, arg2) -- entry L6889221, 1 blocks
::L6889221::
	up1 = true
	return
end

function fn_6894577() -- entry L6894577, 9 blocks
::L6894577::
	I = up1
	if C then goto L601498 end
::L7988369::
	if I then goto L2892687 end
::L7160233::
	return
::L2892687::
	up5()
	goto L7160233
::L601498::
	Z = o
	C = not up2
	if k then goto L7265255 end
::L6088140::
	I = C
	goto L7988369
::L7265255::
	k = not up3
	N = o
	if y then goto L10848484 end
::L5210820::
	C = k
	goto L6088140
::L10848484::
	k = not up4
	goto L5210820
end

function fn_6911457(arg1, arg2, arg3) -- entry L6911457, 20 blocks
::L6911457::
	C = arg1
	o = workspace
	Z = o:FindFirstChild("Enemies")
	if not Z then goto L15846317 end
::L5854769::
	k = nil
	N = math.huge
	o = pairs
	Y = {
		o(unpack({
			Z:GetChildren()
		}))
	}
	y = Y[2]
	W = Y[3]
	l = Y[1]
::L2614865::
	W, a = l(y, W)
	if W then goto L14204680 end
::L4772932::
	return k
::L14204680::
	X = a:IsA("Model")
	if g then goto L6394549 end
::L2635347::
	if X then goto L10613614 end
::L4722861::
	goto L2614865
::L10613614::
	X = a:FindFirstChild("HumanoidRootPart")
	V = X
	o = a:FindFirstChildOfClass("Humanoid")
	g = o
	if X then goto L9937606 end
::L10756048::
	if V then goto L330748 end
::L5390353::
	goto L4722861
::L330748::
	V = (X.Position - C.Position).Magnitude
	D = V < N
	if t then goto L4242286 end
::L9327085::
	if D then goto L6516375 end
::L13707115::
	goto L5390353
::L6516375::
	k = X
	N = V
	goto L13707115
::L4242286::
	D = V < 80
	goto L9327085
::L9937606::
	D = g
	t = o
	if g then goto L538758 end
::L13209860::
	V = D
	goto L10756048
::L538758::
	D = g.Health > 0
	goto L13209860
::L6394549::
	X = a ~= up1.Character
	goto L2635347
::L15846317::
	return nil
end

function fn_6993561(arg1, arg2, arg3, arg4, arg5) -- entry L6993561, 3 blocks
::L6993561::
	if up1 then goto L11024127 end
::L2736396::
	o = task.delay
	I = o(1.5, closure(fn_16048417, {
		up2,
		up1
	}))
	up1 = I
	return
::L11024127::
	task.cancel(up1)
	goto L2736396
end

function fn_7131762() -- entry L7131762, 3 blocks
::L7131762::
	if up1 then goto L9002624 end
::L4263888::
	return
::L9002624::
	up2()
	goto L4263888
end

function fn_7212686() -- entry L7212686, 5 blocks
::L7212686::
	up1(up2, false)
	if up3 then goto L14835226 end
::L1378526::
	task.wait()
	o = up4
	C = o:FindFirstChild("Backpack")
	if C then goto L4179580 end
::L8174942::
	return {["Text"]={"[Blox Fruit stored.]"}}
::L4179580::
	up2.Parent = C
	up1(up2, true)
	goto L8174942
::L14835226::
	o = up3
	o:UnequipTools()
	goto L1378526
end

function fn_7216738(arg1, arg2, arg3, arg4) -- entry L7216738, 1 blocks
::L7216738::
	o = up1
	o:Destroy()
	return
end

function fn_7309160() -- entry L7309160, 3 blocks
::L7309160::
	if up1 then goto L8578855 end
::L15078876::
	return
::L8578855::
	o = up1
	o:Destroy()
	goto L15078876
end

function fn_7408010(arg1) -- entry L7408010, 3 blocks
::L7408010::
	if up1 then goto L5862216 end
::L110134::
	return
::L5862216::
	o = up1
	o:Stop()
	up1 = nil
	goto L110134
end

function fn_7443731(arg1, arg2, arg3) -- entry L7443731, 9 blocks
::L7443731::
	C = arg1
	if o:GetFocusedTextBox() then goto L1718759 end
::L9568905::
	if not up2 then goto L15249235 end
::L15872701::
	I = C.UserInputType == Enum.UserInputType.Touch
	if k then goto L3966693 end
::L7077489::
	I = C.UserInputType == Enum.UserInputType.MouseButton1
::L3966693::
	if I then goto L7102563 end
::L15293320::
	return
::L7102563::
	up3()
	goto L15293320
::L15249235::
	return
::L1718759::
	return
end

function fn_7509338(arg1, arg2, arg3, arg4, arg5) -- entry L7509338, 7 blocks
::L7509338::
	I = up1
	k = e()
	I = I.new("<Color=Purple>Quantum Onyx: Gifted you Rouge Fruit<Color=/>")
	I:Display()
	Z = e()
	z[Z] = false
	z[k] = false
	o = require
	N = up2
	y = N:WaitForChild("Effect")
	N = y:WaitForChild("Container")
	y = N:WaitForChild("Buddy")
	I = o(unpack({
		y:WaitForChild("X")
	}))
	N = e()
	y = e()
	o = closure(fn_12395948, {
		up3
	})
	z[N] = I
	W = e()
	z[y] = o
	o = closure(fn_9787445, {
		k,
		Z,
		y,
		N
	})
	z[W] = o
	o = up4.InputBegan
	l = closure(fn_7443731, {
		up4,
		k,
		W
	})
	o:Connect(l)
	l = up3.Backpack
	I = l:FindFirstChild("Rogue-Rogue")
	if Y then goto L4821949 end
::L13966955::
	Y = o
	l = up3.Character
	if a then goto L13042229 end
::L13653726::
	I = l
::L4821949::
	l = I
	if l then goto L6976169 end
::L16253561::
	Y = Instance.new("Tool")
	Y.Name = "Rogue-Rogue"
	Y.RequiresHandle = false
	Y:SetAttribute("ItemId", 1165)
	Y.ToolTip = "Blox Fruit"
	o = Y.Activated
	I = o.Connect
	I(o, closure(fn_29517, {
		k,
		W
	}))
	a = closure(fn_1153783, {
		k
	})
	o = Y.Equipped
	o:Connect(a)
	o = Y.Unequipped
	a = closure(fn_13908668, {
		k,
		Z
	})
	I = o.Connect
	c(Z)
	I(o, a)
	c(y)
	a = up3
	c(W)
	c(N)
	I = a.Backpack
	Y.Parent = I
	c(k)
	return
::L6976169::
	l:Destroy()
	goto L16253561
::L13042229::
	a = up3.Character
	l = a:FindFirstChild("Rogue-Rogue")
	goto L13653726
end

function fn_7553312(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L7553312, 1 blocks
::L7553312::
	C = e()
	g = e()
	N = e()
	z[C] = arg1
	z[N] = arg4
	y = e()
	a = e()
	z[y] = arg5
	X = e()
	o = z[C]
	W = o:GetExtentsSize()
	o = z[C]
	l = o:GetModelCFrame()
	Y = W / 2
	z[a] = false
	z[X] = false
	o = closure(fn_3597013, {
		up1,
		C
	})
	z[g] = o
	V = closure(fn_2609264, {
		C,
		up1,
		a,
		X,
		N,
		g,
		y
	})
	V("HitboxCenter", l, W)
	D = l * CFrame.new(0, Y.Y, 0)
	P = {
		Vector3.new(W.X, W.Y / 2, W.Z)
	}
	c(X)
	V("HitboxTop", D, unpack(P))
	D = l * CFrame.new(0, - Y.Y, 0)
	V("HitboxBottom", D, unpack({
		Vector3.new(W.X, W.Y / 2, W.Z)
	}))
	D = l * CFrame.new(- Y.X, 0, 0)
	V("HitboxLeft", D, unpack({
		Vector3.new(W.X / 2, W.Y, W.Z)
	}))
	D = l * CFrame.new(Y.X, 0, 0)
	t = Vector3.new
	Q = W.X / 2
	c(y)
	m = W.Y
	c(g)
	V("HitboxRight", D, unpack({
		t(Q, m, W.Z)
	}))
	t = CFrame.new
	R = Y.Z
	c(C)
	D = l * t(0, 0, - R)
	t = Vector3.new
	Q = W.X
	m = W.Y
	R = W.Z
	c(a)
	V("HitboxFront", D, unpack({
		t(Q, m, R / 2)
	}))
	t = CFrame.new
	c(N)
	D = l * t(0, 0, Y.Z)
	V("HitboxBack", D, unpack({
		Vector3.new(W.X, W.Y, W.Z / 2)
	}))
	return
end

function fn_7594827(arg1, arg2, arg3) -- entry L7594827, 18 blocks
::L7594827::
	Z = arg2
	k = {}
	C = arg1
	o = workspace
	N = o:FindFirstChild("Enemies")
	if not N then goto L9738154 end
::L4404389::
	o = pairs
	Y = {
		o(unpack({
			N:GetChildren()
		}))
	}
	y = Y[2]
	W = Y[3]
	l = Y[1]
::L12112628::
	W, a = l(y, W)
	if W then goto L5259740 end
::L9953635::
	return k
::L5259740::
	X = a:IsA("Model")
	if g then goto L8922998 end
::L11846565::
	if X then goto L5596287 end
::L14633786::
	goto L12112628
::L5596287::
	X = a:FindFirstChildOfClass("Humanoid")
	o = a:FindFirstChild("HumanoidRootPart")
	V = X
	g = o
	if X then goto L7854233 end
::L2948979::
	if V then goto L13829438 end
::L8140342::
	goto L14633786
::L13829438::
	if (g.Position-C.Position).Magnitude<Z then goto L16193781 end
::L12584962::
	goto L8140342
::L16193781::
	table.insert(k, {
		a,
		g.Position
	})
	goto L12584962
::L7854233::
	t = o
	D = X.Health > 0
	if P then goto L1304829 end
::L13231153::
	V = D
	goto L2948979
::L1304829::
	D = g
	goto L13231153
::L8922998::
	X = a ~= up1.Character
	goto L11846565
::L9738154::
	return k
end

function fn_7722218(arg1, arg2, arg3, arg4) -- entry L7722218, 7 blocks
::L7722218::
	C = arg1
	Z = arg2
	k = up1()
	if not k then goto L1771676 end
::L12162116::
	if up2 then goto L9846593 end
::L9799630::
	N = Instance.new("Animation")
	N.AnimationId = "rbxassetid://" .. C
	o = k:LoadAnimation(N)
	up2 = o
	I = up2
	I:Play()
	if Z then goto L1658216 end
::L8412406::
	return up2
::L1658216::
	up2.Looped = true
	goto L8412406
::L9846593::
	o = up2
	o:Stop()
	goto L9799630
::L1771676::
	return nil
end

function fn_7749944(arg1, arg2, arg3, arg4) -- entry L7749944, 1 blocks
::L7749944::
	o = up1
	o:Play("Angel B- Explosion", up2.Position, nil, .75, 1)
	return
end

function fn_7772757(arg1, arg2, arg3, arg4) -- entry L7772757, 4 blocks
::L7772757::
	o = Instance.new
	k = e()
	C = o("Animation")
	C.AnimationId = "rbxassetid://10851812420"
	o = up1
	Z = o:LoadAnimation(C)
	Z:AdjustSpeed(2)
	Z:Play()
	z[k] = false
	N = closure(fn_12319794, {
		k
	})
	o = Z.Stopped
	o:Connect(N)
::L14493117::
	if not z[k] then goto L484415 end
::L12062718::
	Z:Destroy()
	c(k)
	C:Destroy()
	return
::L484415::
	task.wait()
	goto L14493117
end

function fn_7804891(arg1, arg2, arg3, arg4) -- entry L7804891, 17 blocks
::L7804891::
	Z = arg2
	C = arg1
	I = not Z
	if k then goto L12176526 end
::L16205844::
	I = type(Z) ~= "string"
::L12176526::
	if I then goto L9148623 end
::L5823820::
	I = up1.new("<Color=Purple>Quantum Onyx: Summon Access<Color=/>")
	I:Display()
	k = 1200
	N = {
		heavendimension = {
			id = "112019130454374",
			name = "Heaven Dimension"
		},
		pakistandimension = {
			id = "114643395007104",
			name = "Pakistan Dimension"
		},
		redlegionhideout = {
			id = "92464509449341",
			name = "Red Legion Hideout"
		},
		ripfamilyarena = {
			id = "126583730809783",
			name = "Rip Family Arena"
		},
		pocketdimension = {
			id = "140099625700765",
			name = "Pocket Dimension"
		},
		ripfamilyhideout = {
			id = "130904141033359",
			name = "Rip Family Hideout"
		}
	}
	if not C.SpawnedIslands then goto L2707070 end
::L1066504::
	I = string.lower(Z)
	W = N[I:gsub("[%s_%-]", "")]
	if not W then goto L7337328 end
::L13622503::
	l = W.name
	I = C.SpawnedIslands[l]
	if Y then goto L9821129 end
::L15815186::
	if I then goto L12918822 end
::L6352224::
	X = {
		up2("rbxassetid://" .. W.id)
	}
	a = X[1]
	Y = X[2]
	I = not a
	if X then goto L16400155 end
::L11691518::
	I = not a[1]
::L16400155::
	if I then goto L8515446 end
::L7152526::
	X = a[1]
	I = workspace
	X.Parent = I
	o = X.PivotTo
	o(X, unpack({
		CFrame.new(0, k, 0)
	}))
	C.SpawnedIslands[l] = X
	return X
::L8515446::
	warn("[Visuals] Failed to load island model for " .. (l .. (" (ID: " .. (W.id .. "):"))), Y)
	return
::L12918822::
	return C.SpawnedIslands[l]
::L9821129::
	I = C.SpawnedIslands[l].Parent
	goto L15815186
::L7337328::
	o = warn
	o("[Visuals] Island not found for: " .. u.tostring(Z))
	return
::L2707070::
	C.SpawnedIslands = {}
	goto L1066504
::L9148623::
	warn("[Visuals] SummonIsland requires a valid island name string.")
	return
end

function fn_7868574(arg1) -- entry L7868574, 1 blocks
::L7868574::
	o = up1
	o:Play("Angel B- Explosion", up2.Position, nil, .75, 1)
	return
end

function fn_7989471() -- entry L7989471, 20 blocks
::L7989471::
	I = not up1
	if C then goto L1556758 end
::L1106468::
	I = not up2
::L1556758::
	if I then goto L9922711 end
::L13158031::
	up2 = false
	up3.Value = false
	C = up4.Character
	if not C then goto L2975379 end
::L11155346::
	I = C:FindFirstChild("HumanoidRootPart")
	Z = e()
	z[Z] = I
	if not z[Z] then goto L15193707 end
::L12379055::
	up5()
	up6(up7, false)
	I = up8
	I:Play("Angel B- Attack", z[Z].Position, nil, .8, 1)
	I = task.delay
	I(.2, closure(fn_7868574, {
		up8,
		Z
	}))
	y = closure(fn_8742599, {
		up8,
		Z
	})
	task.delay(.5, y)
	k = up9(z[Z], 120)
	if (#k)>0 then goto L1486776 end
::L9847392::
	if up10 then goto L9780481 end
::L5300216::
	if up11 then goto L11827104 end
::L14174613::
	c(Z)
	I = task.delay
	I(.5, closure(fn_13407531, {
		up1,
		up12,
		up2,
		up13,
		up14
	}))
	return
::L11827104::
	up11({
		hrp = z[Z],
		lastsFor = 2
	})
	goto L14174613
::L9780481::
	up10({
		hrp = z[Z],
		lastsFor = 2
	})
	goto L5300216
::L1486776::
	l = {
		pairs(k)
	}
	N = l[1]
	W = l[3]
	y = l[2]
::L7863369::
	W, Y = N(y, W)
	if W then goto L1353770 end
::L7986804::
	goto L9847392
::L1353770::
	a = Y[1]
	I = a:FindFirstChild("HumanoidRootPart")
	X = e()
	z[X] = I
	if z[X] then goto L7046223 end
::L13199167::
	c(X)
	goto L7863369
::L7046223::
	I = task.spawn
	I(closure(fn_600869, {
		up10,
		X
	}))
	goto L13199167
::L15193707::
	return
::L2975379::
	return
::L9922711::
	return
end

function fn_8327861(arg1, arg2, arg3, arg4) -- entry L8327861, 3 blocks
::L8327861::
	I = up1
	y = e()
	I = I.new("<Color=Purple>Quantum Onyx: Gifted you All Kamui<Color=/>")
	I:Display()
	o = game
	a = e()
	X = e()
	I = o:GetService("Lighting")
	o = closure(fn_14588281, {})
	N = e()
	k = e()
	Y = e()
	Z = e()
	z[Z] = I
	z[k] = o
	o = closure(fn_12630103, {})
	z[N] = o
	o = closure(fn_13606350, {})
	l = e()
	W = e()
	z[y] = o
	o = closure(fn_8483278, {})
	z[W] = o
	o = closure(fn_12242496, {
		Z
	})
	z[l] = o
	o = closure(fn_2139882, {
		l,
		Z
	})
	z[Y] = o
	o = closure(fn_7553312, {
		up2
	})
	z[a] = o
	o = closure(fn_10318022, {
		up3
	})
	z[X] = o
	V = e()
	g = e()
	D = e()
	z[g] = {
		["rip kamui"] = 1191,
		["arena kamui"] = 1235,
		["heaven kamui"] = 1236,
		["pakistan kamui"] = 1173,
		kamui = 1173
	}
	o = closure(fn_10727573, {
		g,
		up2
	})
	z[V] = o
	o = closure(fn_10882556, {
		up2,
		N,
		up4,
		Y,
		W,
		l,
		y
	})
	z[D] = o
	t = closure(fn_16186008, {
		k,
		X,
		a,
		V,
		D
	})
	P = closure(fn_2344435, {
		k,
		X,
		a,
		V,
		D
	})
	Q = closure(fn_1760779, {
		k,
		X,
		a,
		V,
		D
	})
	m = closure(fn_6224170, {
		k,
		X,
		a,
		V,
		D
	})
	M = closure(fn_2541063, {
		k,
		X,
		a,
		V,
		D
	})
	R = e()
	z[R] = {
		"pakistan kamui",
		"arena kamui",
		"heaven kamui",
		"rip kamui",
		"kamui"
	}
	n = closure(fn_4150923, {
		R
	})
	n(up2.Backpack)
	v = up2.Character
	if v then goto L3570676 end
::L279625::
	t()
	c(g)
	c(N)
	c(V)
	c(X)
	P()
	c(D)
	c(k)
	c(y)
	c(l)
	Q()
	m()
	c(W)
	c(a)
	c(Y)
	M()
	c(Z)
	c(R)
	return
::L3570676::
	n(v)
	goto L279625
end

function fn_8328013(arg1, arg2) -- entry L8328013, 9 blocks
::L8328013::
	C = arg1
	if up1.equipped then goto L5137589 end
::L15117914::
	return
::L5137589::
	if C.KeyCode==Enum.KeyCode.Z then goto L1727119 end
::L2989919::
	I = C.KeyCode == Enum.KeyCode.X
	if k then goto L2827922 end
::L15016010::
	if I then goto L6151936 end
::L10616035::
	goto L15117914
::L6151936::
	up3()
	goto L10616035
::L2827922::
	I = up1.holdX
	goto L15016010
::L1727119::
	up2()
	goto L10616035
end

function fn_8357970(arg1) -- entry L8357970, 1 blocks
::L8357970::
	up1({
		player = up2,
		hrp = up3,
		origin = up4,
		fireDir = up5,
		Stage = 3
	})
	up6({
		player = up2,
		hrp = up3,
		origin = up4,
		fireDir = up5,
		targetPos = up4 + (up5 * 800),
		fliesFor = 3.5,
		ClockTime = up7,
		specialActivated = false
	})
	return
end

function fn_8451571(arg1, arg2, arg3) -- entry L8451571, 9 blocks
::L8451571::
	I = up1
	if C then goto L10019982 end
::L5006771::
	if I then goto L10984650 end
::L3419034::
	return
::L10984650::
	up5()
	goto L3419034
::L10019982::
	Z = o
	C = not up2
	if k then goto L6904918 end
::L7284632::
	I = C
	goto L5006771
::L6904918::
	N = o
	k = not up3
	if y then goto L1699533 end
::L8055400::
	C = k
	goto L7284632
::L1699533::
	k = not up4
	goto L8055400
end

function fn_8483278(arg1, arg2, arg3) -- entry L8483278, 1 blocks
::L8483278::
	I = Instance.new("Sound")
	C = e()
	z[C] = I
	z[C].SoundId = "rbxassetid://95959796644775"
	z[C].Volume = 10
	Z = workspace
	z[C].Parent = Z
	o = z[C]
	o:Play()
	o = z[C].Ended
	Z = closure(fn_7216738, {
		C
	})
	I = o.Connect
	c(C)
	I(o, Z)
	return
end

function fn_8742599(arg1) -- entry L8742599, 1 blocks
::L8742599::
	o = up1
	o:Play("Angel B- Enemy Chains", up2.Position, nil, .7, .5)
	return
end

function fn_8798047(arg1, arg2, arg3, arg4, arg5) -- entry L8798047, 20 blocks
::L8798047::
	C = arg1
	Z = up1 - up2
	o = math.abs(Z) < 1
	if o then goto L1409314 end
::L1473640::
	y = math.sign(Z)
	N = math.min
	l = up11 * C
	k = y * N(l, unpack({
		math.abs(Z)
	}))
	N = up2 + k
	W = o
	up2 = N
	y = up5
	if l then goto L10225584 end
::L12674431::
	o = W
	if y then goto L3278533 end
::L15256356::
::L8676261::
	return
::L3278533::
	y = up5
	a = CFrame.new(up6)
	Y = CFrame.Angles
	l = a * Y(0, 0, unpack({
		math.rad(up2)
	}))
	y.CFrame = l
	W = o
	y = up8
	if l then goto L8506868 end
::L1532475::
	if y then goto L1959586 end
::L578163::
	goto L15256356
::L1959586::
	l = up5.CFrame
	up8.CFrame = l
	goto L578163
::L8506868::
	y = up8.Parent
	goto L1532475
::L10225584::
	y = up5.Parent
	goto L12674431
::L1409314::
	o = up1
	up2 = o
	I = up3
	I:Disconnect()
	if up4 then goto L4965374 end
::L4265822::
	N = o
	k = up5
	if y then goto L2258840 end
::L8789196::
	if k then goto L4587144 end
::L12787016::
	up7(up8)
	if up9 then goto L736805 end
::L2556080::
	up10.isActive = false
	goto L8676261
::L736805::
	up9.WalkSpeed = 16
	up9.JumpPower = 50
	up9.PlatformStand = false
	goto L2556080
::L4587144::
	k = up5
	W = CFrame.new(up6)
	k.CFrame = W
	goto L12787016
::L2258840::
	k = up5.Parent
	goto L8789196
::L4965374::
	I = up4
	I:Disconnect()
	up4 = nil
	goto L4265822
end

function fn_8832294(arg1) -- entry L8832294, 1 blocks
::L8832294::
	up1 = 0
	up2 = nil
	return
end

function fn_8892740(arg1, arg2, arg3, arg4) -- entry L8892740, 13 blocks
::L8892740::
	C = arg1
	if o:GetFocusedTextBox() then goto L1556523 end
::L1894908::
	if up2.equipped then goto L14970287 end
::L9209607::
	return
::L14970287::
	if C.KeyCode==Enum.KeyCode.Z then goto L11486519 end
::L10714522::
	if C.KeyCode==Enum.KeyCode.X then goto L9910766 end
::L10682225::
	I = C.UserInputType == Enum.UserInputType.MouseButton1
	if k then goto L6885120 end
::L3256119::
	I = C.UserInputType == Enum.UserInputType.Touch
::L6885120::
	if I then goto L6432244 end
::L2286953::
	goto L9209607
::L6432244::
	up5()
	goto L2286953
::L9910766::
	up4()
	goto L2286953
::L11486519::
	up3()
	goto L2286953
::L1556523::
	return
end

function fn_9060279(arg1, arg2, arg3, arg4) -- entry L9060279, 4 blocks
::L9060279::
	k = Instance.new("ParticleEmitter")
	k.Name = arg1
	W = {
		pairs(arg2)
	}
	y = W[3]
	N = W[2]
	W = W[1]
::L3051187::
	y, Y = W(N, y)
	if y then goto L5521664 end
::L12954181::
	N = up1
	k.Parent = N
	return
::L5521664::
	k[y] = Y
	goto L3051187
end

function fn_9081373(arg1) -- entry L9081373, 5 blocks
::L9081373::
	up1.equipped = true
	I = up2.Character
	if C then goto L13397962 end
::L9617442::
	C = up2.CharacterAdded
	I = C:Wait()
::L13397962::
	up3(I, true)
	up1.comboStep = 1
	if up1.resetTimer then goto L11371360 end
::L5603215::
	task.wait(.2)
	up4()
	return
::L11371360::
	o = up1.resetTimer
	o:Disconnect()
	up1.resetTimer = nil
	goto L5603215
end

function fn_9092697(arg1, arg2, arg3, arg4) -- entry L9092697, 6 blocks
::L9092697::
	I = workspace
	C = arg1
	C.Parent = I
	Z = C:FindFirstChild("Spawnpos", true)
	if Z then goto L7892927 end
::L8139159::
	return
::L7892927::
	k = Z.Position
	y = C:GetModelCFrame().Position - k
	Y = Vector3.new(up1.Position.X, up1.Position.Y + 99999, up1.Position.Z) + y
	o = C.PivotTo
	o(C, unpack({
		CFrame.new(Y)
	}))
	Y = 3
	a = 1
	X = 1 < 0
	l = 1 - 1
::L6996066::
	l = l + a
	if (X and (l>=Y)) or ((not X) and (l<=Y)) then goto L3711613 end
::L9271523::
	up2(Z.Position)
	up3(C, "<Pocket Dimension>", "<Sea>", nil, nil)
	goto L8139159
::L3711613::
	o = up1
	D = CFrame.new(Z.Position)
	o.CFrame = D
	task.wait(.05)
	goto L6996066
end

function fn_9164832(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L9164832, 11 blocks
::L9164832::
	C = arg1
	I = C:IsA("Tool")
	if Z then goto L5365291 end
::L9921423::
	if I then goto L16513794 end
::L15588665::
	return
::L16513794::
	if C.Parent==workspace then goto L10968553 end
::L7023835::
	if C.Parent~=up4 then goto L6404585 end
::L3610442::
	goto L15588665
::L6404585::
	up2(C, false)
	if C.Parent==workspace then goto L12859143 end
::L10138307::
	goto L3610442
::L12859143::
	up3(C)
	goto L10138307
::L10968553::
	up2(C, false)
	up3(C)
	goto L3610442
::L5365291::
	Z = up1
	I = Z:HasTag(C, "VisualFruit")
	goto L9921423
end

function fn_9184326(arg1, arg2) -- entry L9184326, 13 blocks
::L9184326::
	I = not up1
	if C then goto L12891257 end
::L6034518::
	I = not up2
::L12891257::
	if I then goto L3963983 end
::L5407689::
	o = false
	up2 = false
	up3.Value = false
	C = up4.Character
	if not C then goto L3298000 end
::L13470490::
	I = C:FindFirstChild("HumanoidRootPart")
	Z = e()
	z[Z] = I
	if not z[Z] then goto L14562363 end
::L254539::
	k = up5(z[Z])
	N = e()
	z[N] = k
	up6()
	up7(up8.Execute, false)
	I = up9
	I:Play("Angel A- Angel Release", z[Z].Position, nil, .75, 1)
	I = up9
	n = o
	I:Play("Angel A- Angel Release_2", z[Z].Position, nil, .7, 1.2)
	I = task.delay
	I(.3, closure(fn_11140300, {
		up9,
		N,
		Z
	}))
	M = o
	k = task
	W = closure(fn_14390499, {
		up9,
		Z
	})
	k.delay(.5, W)
	Y = "CFrame"
	W = "Root"
	I = up10
	l = z[Z]
	X = z[Z].CFrame
	Q = "ExplosionPos"
	a = X * CFrame.new(0, 0, - 5)
	X = "EnemyRoot"
	V = "Holding"
	t = "Hakai"
	g = z[N]
	R = z[N]
	P = true
	D = nil
	if v then goto L6778083 end
::L15738842::
	m = R
	if R then goto L543324 end
::L5261219::
	m = z[Z].Position + (z[Z].CFrame.LookVector * 10)
::L543324::
	c(N)
	I({
		[W] = l,
		[Y] = a,
		[X] = g,
		[V] = D,
		[t] = P,
		[Q] = m
	})
	I = task.delay
	I(.3, closure(fn_14568638, {
		up1,
		up2,
		up11,
		up12,
		up7,
		up8
	}))
	k = task
	W = closure(fn_13777705, {
		up1,
		up2,
		up11,
		up12,
		up13
	})
	I = k.delay
	c(Z)
	I(.8, W)
	return
::L6778083::
	R = z[N].Position
	goto L15738842
::L14562363::
	return
::L3298000::
	return
::L3963983::
	return
end

function fn_9408164(arg1, arg2, arg3, arg4, arg5) -- entry L9408164, 9 blocks
::L9408164::
	C = "Angel A- Explosion"
	o = up1
	N = up2
	k = o
	y = o
	if W then goto L14731884 end
::L9441769::
	Z = N
	if N then goto L7311581 end
::L7212767::
	Z = up3.Position
::L7311581::
	o = k
	o:Play(C, Z, nil, .8, 1)
	C = "AngelZExplosion"
	o = up1
	k = o
	y = o
	N = up2
	if W then goto L9014640 end
::L3069128::
	Z = N
	if N then goto L7582383 end
::L3340162::
	Z = up3.Position
::L7582383::
	o = k
	o:Play(C, Z, nil, .75, 1.1)
	return
::L9014640::
	N = up2.Position
	goto L3069128
::L14731884::
	N = up2.Position
	goto L9441769
end

function fn_9416892(arg1, arg2) -- entry L9416892, 9 blocks
::L9416892::
	C = up1.Target
	I = C
	if C then goto L14214682 end
::L14784866::
	if I then goto L15075709 end
::L12248869::
	o = up2
	Z = o:FindFirstChildOfClass("Tool")
	I = Z
	if Z then goto L5802793 end
::L7183744::
	if I then goto L5622671 end
::L2581514::
	return
::L5622671::
	up4(Z)
	goto L2581514
::L5802793::
	k = up3
	I = k:HasTag(Z, "VisualFruit")
	goto L7183744
::L15075709::
	return
::L14214682::
	I = C:IsA("GuiObject")
	goto L14784866
end

function fn_9469173(arg1, arg2) -- entry L9469173, 1 blocks
::L9469173::
	up1()
	return
end

function fn_9558439(arg1, arg2) -- entry L9558439, 1 blocks
::L9558439::
	up1 = false
	return
end

function fn_9605210(arg1) -- entry L9605210, 1 blocks
::L9605210::
	up1 = true
	return
end

function fn_9787445(arg1, arg2, arg3, arg4, arg5) -- entry L9787445, 7 blocks
::L9787445::
	I = not up1
	if C then goto L7872311 end
::L13117::
	I = up2
::L7872311::
	if I then goto L8347129 end
::L7437991::
	C = up3()
	if not C then goto L9879550 end
::L14981111::
	up2 = true
	I = C.Position
	Z = e()
	z[Z] = I
	I = z[Z] + (C.CFrame.LookVector * 600)
	k = e()
	z[k] = I
	I = task.spawn
	I(closure(fn_3559885, {
		up4,
		Z,
		k
	}))
	up2 = false
	c(k)
	c(Z)
	return
::L9879550::
	return
::L8347129::
	return
end

function fn_9888486(arg1, arg2, arg3, arg4) -- entry L9888486, 7 blocks
::L9888486::
	I = up1.new("<Color=Purple>Quantum Onyx: Gifted you Divine Art<Color=/>")
	I:Display()
	I = require
	k = up2
	Z = I(unpack({
		k:WaitForChild("Util")
	}))
	k = e()
	o = Z.Sound
	N = e()
	F = e()
	Z = e()
	z[Z] = o
	o = closure(fn_6911457, {
		up3
	})
	z[k] = o
	o = closure(fn_10365583, {
		up3
	})
	z[N] = o
	o = require
	l = up2.Effect.Container
	i = e()
	I = o(l.Angel.M1)
	y = e()
	z[y] = I
	I = require(up2.Effect.Container.Angel.Z)
	W = e()
	z[W] = I
	o = require
	Y = up2.Effect.Container.Angel
	H = e()
	I = o(Y.XCharge)
	l = e()
	z[l] = I
	I = require(up2.Effect.Container.Angel.XCharChains)
	Y = e()
	z[Y] = I
	I = require(up2.Effect.Container.Angel.XCameraChains)
	a = e()
	z[a] = I
	o = require
	t = up2
	h = e()
	X = t.Effect.Container.Angel.C
	D = e()
	V = e()
	t = e()
	I = o(X)
	X = e()
	z[X] = I
	g = e()
	z[g] = 0
	z[V] = true
	z[D] = nil
	z[t] = false
	P = e()
	z[P] = nil
	Q = e()
	z[Q] = {
		18699539486,
		18699541378,
		18699542775,
		18699545564
	}
	R = e()
	E = e()
	m = e()
	z[m] = {
		Z = 18637207623,
		Charge = 18686496907,
		Execute = 18637209873,
		Grab = 18637217215
	}
	n = e()
	b = e()
	M = e()
	z[M] = 18686500373
	z[R] = 18686502223
	v = e()
	q = e()
	z[n] = 18637214138
	f = e()
	z[v] = 18637218777
	z[q] = nil
	z[f] = nil
	z[F] = nil
	z[H] = nil
	z[i] = false
	I = Instance.new("BoolValue")
	py = e()
	T = e()
	z[py] = I
	z[b] = false
	I = Instance.new("BoolValue")
	A = e()
	z[A] = I
	z[h] = false
	I = Instance.new("BoolValue")
	uy = e()
	z[uy] = I
	z[T] = {}
	z[E] = nil
	I = Instance.new("Animation")
	oy = e()
	z[oy] = I
	o = z[oy]
	o.AnimationId = "rbxassetid://102742789963001"
	sy = up3.Backpack
	I = sy:FindFirstChild("Divine Art")
	if xy then goto L6476768 end
::L5646628::
	xy = o
	sy = up3.Character
	if ry then goto L3771298 end
::L11415223::
	I = sy
::L6476768::
	sy = I
	if sy then goto L1920222 end
::L12700040::
	xy = Instance.new("Tool")
	ey = e()
	xy.Name = "Divine Art"
	Iy = e()
	Oy[1] = e()
	cy = e()
	xy.RequiresHandle = false
	xy:SetAttribute("ItemId", 1262)
	wy = e()
	zy = e()
	xy.ToolTip = "Melee"
	ky = e()
	xy.TextureId = "rbxassetid://78665997727824"
	I = up3.Backpack
	xy.Parent = I
	o = closure(fn_15085195, {
		T
	})
	ry = e()
	Gy = e()
	z[ry] = o
	Zy = e()
	o = closure(fn_51664, {
		g,
		D
	})
	z[Gy] = o
	Ny = e()
	o = closure(fn_6993561, {
		D,
		g
	})
	z[wy] = o
	o = closure(fn_10913597, {
		H,
		up3
	})
	Cy = e()
	z[Iy] = o
	o = closure(fn_720178, {
		Iy,
		q
	})
	z[zy] = o
	o = closure(fn_1772123, {
		Iy,
		E,
		oy
	})
	z[Cy] = o
	c(Iy)
	o = closure(fn_7408010, {
		E
	})
	z[ey] = o
	o = closure(fn_4448004, {
		t,
		V,
		up3,
		D,
		g,
		ey,
		f,
		zy,
		Q,
		y,
		i,
		b,
		h,
		Cy,
		wy
	})
	Oy[2] = closure(fn_7131762, {
		t,
		Zy
	})
	Ly = e()
	z[Zy] = o
	c(y)
	yy = e()
	o = closure(fn_6551129, {
		t,
		i,
		up3,
		py,
		ey,
		f,
		zy,
		m,
		Z,
		W
	})
	z[ky] = o
	o = closure(fn_9184326, {
		t,
		i,
		py,
		up3,
		k,
		ey,
		zy,
		m,
		Z,
		W,
		b,
		h,
		Cy
	})
	z[Ny] = o
	c(D)
	o = closure(fn_909028, {
		t,
		b,
		up3,
		A,
		ey,
		f,
		zy,
		M,
		l
	})
	z[cy] = o
	c(wy)
	c(l)
	o = closure(fn_7989471, {
		t,
		b,
		A,
		up3,
		ey,
		zy,
		R,
		Z,
		N,
		Y,
		a,
		i,
		h,
		Cy
	})
	z[yy] = o
	o = closure(fn_12702450, {
		t,
		h,
		up3,
		ry,
		uy,
		ey,
		f,
		F,
		zy,
		v,
		T,
		Z,
		n,
		X
	})
	z[Ly] = o
	o = closure(fn_15852574, {
		t,
		h,
		uy,
		up3,
		ey,
		F,
		ry,
		N,
		zy,
		m,
		Z,
		X,
		i,
		b,
		Cy,
		v
	})
	z[Oy[1]] = o
	c(n)
	c(R)
	o = xy.Activated
	c(Y)
	I = o.Connect
	c(N)
	I(o, Oy[2])
	Oy[2] = closure(fn_11460671, {
		t,
		up3,
		H,
		Cy,
		Gy,
		P,
		Zy
	})
	o = xy.Equipped
	c(X)
	I = o.Connect
	c(oy)
	c(v)
	I(o, Oy[2])
	c(T)
	c(W)
	Oy[2] = closure(fn_16219111, {
		t,
		ey,
		q,
		f,
		F,
		ry,
		Gy,
		V,
		P,
		i,
		py,
		b,
		A,
		h,
		uy
	})
	c(Gy)
	o = xy.Unequipped
	c(Z)
	I = o.Connect
	c(M)
	I(o, Oy[2])
	I = up4
	Oy[2] = "InputBegan"
	c(A)
	c(k)
	c(ry)
	o = I[Oy[2]]
	c(b)
	c(q)
	c(E)
	I = o.Connect
	Oy[2] = closure(fn_1725083, {
		up4,
		t,
		ky,
		cy,
		Ly,
		Zy
	})
	c(P)
	c(h)
	I(o, Oy[2])
	c(m)
	c(H)
	c(g)
	c(ey)
	c(zy)
	c(Ly)
	I = up4
	c(i)
	c(py)
	Oy[2] = "InputEnded"
	c(F)
	c(V)
	c(uy)
	o = I[Oy[2]]
	Oy[2] = closure(fn_222474, {
		t,
		Ny,
		yy,
		Oy[1]
	})
	c(Ny)
	c(ky)
	c(a)
	c(f)
	c(t)
	Oy[1] = c(Oy[1])
	o:Connect(Oy[2])
	c(Cy)
	c(cy)
	c(Q)
	c(yy)
	c(Zy)
	return
::L1920222::
	sy:Destroy()
	goto L12700040
::L3771298::
	ry = up3.Character
	sy = ry:FindFirstChild("Divine Art")
	goto L11415223
end

function fn_9905013(arg1, arg2, arg3, arg4) -- entry L9905013, 11 blocks
::L9905013::
	I = not up1
	if C then goto L13558364 end
::L16641492::
	I = up2
::L13558364::
	if I then goto L7555887 end
::L12058875::
	C = up3.Character
	if not C then goto L1859689 end
::L7888974::
	o = C.FindFirstChild
	Z = e()
	o = o(C, "HumanoidRootPart")
	z[Z] = o
	if not z[Z] then goto L6358000 end
::L13132038::
	up2 = true
	up4.Value = true
	up5()
	if up6 then goto L5040810 end
::L16654105::
	up7(up8.Z, false)
	k = up9
	k:Play("Angel A- Angel Hold", z[Z].Position, nil, .8, 1)
	k = task.spawn
	k(closure(fn_5829867, {
		up2,
		up1,
		up3,
		up10,
		up4
	}))
	k = task.spawn
	k(closure(fn_13002105, {
		up2,
		up1,
		up7,
		up8,
		up9,
		Z
	}))
	c(Z)
	return
::L5040810::
	I = up6
	I:Stop()
	up6 = nil
	goto L16654105
::L6358000::
	return
::L1859689::
	return
::L7555887::
	return
end

function fn_9931154(arg1) -- entry L9931154, 3 blocks
::L9931154::
	I = up1.new("<Color=Purple>Quantum Onyx: Gifted you Tensei<Color=/>")
	I:Display()
	Z = up2.Effect.Container.tensei.orb.Part
	if not Z:FindFirstChild("sfx") then goto L11808853 end
::L14175829::
	I = require(up2.Effect.Container.tensei)
	k = e()
	z[k] = I
	N = Instance.new("Tool")
	N.Name = "tensei"
	N.RequiresHandle = false
	N.CanBeDropped = false
	N:SetAttribute("ItemId", 1183)
	N.ToolTip = "Tool"
	I = up3.Backpack
	N.Parent = I
	o = up3
	I = o.GetMouse
	y = e()
	I = I(o)
	W = e()
	z[y] = I
	l = closure(fn_16278437, {
		W
	})
	z[W] = false
	o = N.Equipped
	o:Connect(l)
	l = closure(fn_9558439, {
		W
	})
	o = N.Unequipped
	o:Connect(l)
	o = N.Activated
	I = o.Connect
	l = closure(fn_14300506, {
		W,
		up3,
		y,
		k
	})
	c(W)
	I(o, l)
	c(k)
	c(y)
	return
::L11808853::
	k = Instance.new("Sound")
	k.Name = "sfx"
	k.SoundId = "rbxassetid://3848081992"
	k.Parent = Z
	goto L14175829
end

function fn_9935381(arg1, arg2, arg3, arg4) -- entry L9935381, 15 blocks
::L9935381::
	I = not up1
	if C then goto L13463477 end
::L11347836::
	I = up2
::L13463477::
	if I then goto L11210943 end
::L9448481::
	if up3 then goto L8576327 end
::L3996158::
	I = up4
	Z = e()
	C = I()
	z[Z] = C
	if not z[Z] then goto L3644233 end
::L5388169::
	up2 = true
	C = z[Z].Position
	Y = 5
	k = e()
	z[k] = C
	C = z[Z].CFrame.LookVector
	N = workspace
	y = N:GetServerTimeNow()
	N = e()
	z[N] = y
	a = 1
	y = {
		C
	}
	X = 1 < 0
	l = 1 - 1
::L2463715::
	l = l + a
	if (X and (l>=Y)) or ((not X) and (l<=Y)) then goto L11818316 end
::L1968920::
	X = {
		ipairs(y)
	}
	l = X[1]
	Y = X[2]
	a = X[3]
::L12853252::
	a, X = l(Y, a)
	if a then goto L3689956 end
::L11316004::
	l = task
	c(k)
	W = l.wait
	c(Z)
	c(N)
	W(.5)
	up2 = false
	return
::L3689956::
	g = e()
	z[g] = X
	X = g
	g = task.spawn
	D = closure(fn_8357970, {
		up6,
		up7,
		Z,
		k,
		X,
		up8,
		N
	})
	c(X)
	g(D)
	goto L12853252
::L11818316::
	W = l
	g = table.insert
	g(y, unpack({
		up5(C, 10 * W)
	}))
	g = table.insert
	g(y, unpack({
		up5(C, (- 10) * W)
	}))
	goto L2463715
::L3644233::
	return
::L8576327::
	up3 = false
	return
::L11210943::
	return
end

function fn_10045506() -- entry L10045506, 13 blocks
::L10045506::
	I = not up1
	if C then goto L1588701 end
::L13636067::
	I = up2
::L1588701::
	if I then goto L11077233 end
::L10702089::
	C = up3()
	if not C then goto L7154515 end
::L521094::
	up2 = true
	I = C.Position
	Z = e()
	z[Z] = I
	N = 3
	y = 1
	W = 1 < 0
	k = 1 - 1
::L2143981::
	k = k + y
	if (W and (k>=N)) or ((not W) and (k<=N)) then goto L1858175 end
::L16097462::
	N = 7
	y = 1
	W = 1 < 0
	k = 1 - 1
::L15034608::
	k = k + y
	if (W and (k>=N)) or ((not W) and (k<=N)) then goto L928859 end
::L13798450::
	y = closure(fn_12115406, {
		up2
	})
	task.delay(4, y)
	c(Z)
	return
::L928859::
	I = task.spawn
	I(closure(fn_12216091, {
		up5,
		Z
	}))
	goto L15034608
::L1858175::
	I = task.spawn
	I(closure(fn_15107752, {
		up4,
		Z
	}))
	goto L2143981
::L7154515::
	return
::L11077233::
	return
end

function fn_10074015() -- entry L10074015, 3 blocks
::L10074015::
	C = up1.Character
	I = C
	if C then goto L15072882 end
::L9053538::
	return I
::L15072882::
	I = C:FindFirstChild("HumanoidRootPart")
	goto L9053538
end

function fn_10318022(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L10318022, 6 blocks
::L10318022::
	C = arg1
	o = up1
	Z = arg2
	y = {
		o("rbxassetid://" .. u.tostring(C))
	}
	k = y[2]
	N = y[1]
	I = N
	if N then goto L6166727 end
::L4435317::
	if I then goto L12825429 end
::L1966439::
	warn("[Visuals] Failed to load Kamui model asset:", C, k)
::L3808717::
	return
::L12825429::
	Z(N[1])
	goto L3808717
::L6166727::
	I = N[1]
	goto L4435317
end

function fn_10355287(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L10355287, 6 blocks
::L10355287::
	C = arg1
	Z = arg2
	o = ipairs
	W = {
		o(unpack({
			C:GetDescendants()
		}))
	}
	k = W[2]
	N = W[3]
	y = W[1]
::L5544655::
	N, l = y(k, N)
	if N then goto L14220105 end
::L1409824::
	return
::L14220105::
	if l:IsA("BasePart") then goto L14814780 end
::L15641476::
	goto L5544655
::L14814780::
	l.CanCollide = not Z
	goto L15641476
end

function fn_10365583(arg1, arg2, arg3, arg4, arg5) -- entry L10365583, 18 blocks
::L10365583::
	C = arg1
	Z = arg2
	k = {}
	o = workspace
	N = o:FindFirstChild("Enemies")
	if not N then goto L14660365 end
::L8585092::
	o = pairs
	Y = {
		o(unpack({
			N:GetChildren()
		}))
	}
	W = Y[3]
	y = Y[2]
	l = Y[1]
::L4028957::
	W, a = l(y, W)
	if W then goto L745721 end
::L13112137::
	return k
::L745721::
	X = a:IsA("Model")
	if g then goto L12693533 end
::L4656881::
	if X then goto L10327527 end
::L8477026::
	goto L4028957
::L10327527::
	X = a:FindFirstChildOfClass("Humanoid")
	V = X
	o = a:FindFirstChild("HumanoidRootPart")
	g = o
	if X then goto L9751232 end
::L15837471::
	if V then goto L1301566 end
::L4649275::
	goto L8477026
::L1301566::
	if (g.Position-C.Position).Magnitude<Z then goto L9414142 end
::L8446497::
	goto L4649275
::L9414142::
	table.insert(k, {
		a,
		g.Position
	})
	goto L8446497
::L9751232::
	D = X.Health > 0
	t = o
	if P then goto L12360064 end
::L4425927::
	V = D
	goto L15837471
::L12360064::
	D = g
	goto L4425927
::L12693533::
	X = a ~= up1.Character
	goto L4656881
::L14660365::
	return k
end

function fn_10479635(arg1, arg2, arg3, arg4, arg5) -- entry L10479635, 5 blocks
::L10479635::
	if o:GetFocusedTextBox() then goto L16086083 end
::L5931922::
	if not up2 then goto L12225093 end
::L12488094::
	up3()
	return
::L12225093::
	return
::L16086083::
	return
end

function fn_10558533(arg1, arg2, arg3, arg4, arg5) -- entry L10558533, 3 blocks
::L10558533::
	if up1.equipped then goto L8042379 end
::L2800161::
	return
::L8042379::
	up1.holdZ = false
	up1.holdZFlag.Value = false
	up2()
	goto L2800161
end

function fn_10580638(arg1, arg2, arg3, arg4) -- entry L10580638, 1 blocks
::L10580638::
	I = up1.new("<Color=Purple>Quantum Onyx: Gifted you Black Blast<Color=/>")
	I:Display()
	I = require(up2.Effect.Container.Yoru2.SlashV3)
	Z = e()
	z[Z] = I
	o = require
	y = up2.Effect.Container
	l = e()
	N = y.Yoru2
	W = e()
	I = o(N.InitialSlash)
	N = e()
	k = e()
	z[k] = I
	z[N] = false
	y = e()
	z[y] = false
	z[W] = false
	o = closure(fn_1793715, {
		up3
	})
	Y = e()
	a = e()
	z[l] = o
	o = closure(fn_15818332, {})
	z[Y] = o
	o = closure(fn_9935381, {
		y,
		N,
		W,
		l,
		Y,
		k,
		up3,
		Z
	})
	z[a] = o
	o = up4.InputBegan
	X = closure(fn_2297598, {
		up4,
		y,
		a
	})
	c(k)
	o:Connect(X)
	o = up4.TouchTap
	X = closure(fn_10479635, {
		up4,
		y,
		a
	})
	o:Connect(X)
	X = Instance.new("Tool")
	c(Y)
	X.Name = "Black Blast"
	X.RequiresHandle = false
	X:SetAttribute("ItemId", 1166)
	c(l)
	X.ToolTip = "Tool"
	o = X.Activated
	g = closure(fn_12112391, {
		y,
		a
	})
	c(a)
	o:Connect(g)
	g = closure(fn_15429099, {
		y,
		W
	})
	o = X.Equipped
	c(Z)
	o:Connect(g)
	g = closure(fn_5097914, {
		y,
		N,
		W
	})
	c(N)
	c(W)
	o = X.Unequipped
	o:Connect(g)
	I = up3.Backpack
	X.Parent = I
	c(y)
	return
end

function fn_10637317(arg1, arg2, arg3, arg4, arg5) -- entry L10637317, 9 blocks
::L10637317::
	I = up1
	if C then goto L11756040 end
::L9751263::
	if I then goto L15335637 end
::L10943395::
	return
::L15335637::
	up5()
	goto L10943395
::L11756040::
	Z = o
	C = not up2
	if k then goto L9710591 end
::L4658083::
	I = C
	goto L9751263
::L9710591::
	N = o
	k = not up3
	if y then goto L4358880 end
::L9482830::
	C = k
	goto L4658083
::L4358880::
	k = not up4
	goto L9482830
end

function fn_10650910(arg1) -- entry L10650910, 15 blocks
::L10650910::
	o = ipairs
	k = up1
	k = {
		o(unpack({
			k:GetChildren()
		}))
	}
	C = k[2]
	Z = k[3]
	k = k[1]
::L9827727::
	Z, y = k(C, Z)
	if Z then goto L10386192 end
::L2241669::
	o = ipairs
	N = up2
	N = {
		o(unpack({
			N:GetChildren()
		}))
	}
	Z = N[2]
	k = N[3]
	C = N[1]
::L15237716::
	k, y = C(Z, k)
	if k then goto L2460311 end
::L6902637::
	return
::L2460311::
	W = y:IsA("Tool")
	if l then goto L4414824 end
::L2876039::
	if W then goto L5134305 end
::L4641911::
	goto L15237716
::L5134305::
	return y
::L4414824::
	W = y.ToolTip == "Blox Fruit"
	goto L2876039
::L10386192::
	W = y:IsA("Tool")
	if l then goto L14377013 end
::L10328109::
	if W then goto L10308648 end
::L11623445::
	goto L9827727
::L10308648::
	return y
::L14377013::
	W = y.ToolTip == "Blox Fruit"
	goto L10328109
end

function fn_10694052(arg1, arg2, arg3) -- entry L10694052, 1 blocks
::L10694052::
	closure(fn_7212686, {
		up8,
		up2,
		up9,
		up12
	})
	k = {
		Label = "Eat",
		JumpTo = closure(fn_3114090, {
			up1,
			up2,
			up3,
			up4,
			up5,
			up6,
			up7
		})
	}
	return {["Text"]={"What do you wish to do with this Blox Fruit?"};["Option1"]=k;["Option2"]={["Label"]="Drop";["JumpTo"]=closure(fn_3019704, {up8;up2,up9,up10;up11})};["Option3"]={["Label"]="Store",["JumpTo"]=g}}
end

function fn_10727573(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L10727573, 1 blocks
::L10727573::
	Z = e()
	k = e()
	z[Z] = arg2
	C = arg1
	z[k] = arg3
	N = Instance.new("Tool")
	N.Name = C
	l = C.lower
	N.RequiresHandle = false
	W = up1
	y = W[l(C)] or 1173
	N:SetAttribute("ItemId", y)
	N.ToolTip = "Tool"
	W = up2.Backpack
	N.Parent = W
	W = e()
	Y = closure(fn_9605210, {
		W
	})
	z[W] = false
	I = N.Equipped
	I:Connect(Y)
	Y = closure(fn_6283375, {
		W
	})
	I = N.Unequipped
	I:Connect(Y)
	Y = closure(fn_12040362, {
		W,
		k
	})
	I = N.Activated
	I:Connect(Y)
	I = up2.Chatted
	Y = closure(fn_10809066, {
		Z,
		k
	})
	I:Connect(Y)
	return N
end

function fn_10809066(arg1, arg2, arg3, arg4) -- entry L10809066, 3 blocks
::L10809066::
	C = arg1
	C:lower()
	if I==up1 then goto L12556761 end
::L11195294::
	return
::L12556761::
	up2()
	goto L11195294
end

function fn_10882556(arg1) -- entry L10882556, 13 blocks
::L10882556::
	C = e()
	z[C] = arg1
	if z[C].isActive then goto L3942701 end
::L14609582::
	z[C].isActive = true
	I = up1.Character
	if Z then goto L15397495 end
::L256726::
	Z = up1.CharacterAdded
	I = Z:Wait()
::L15397495::
	Z = e()
	z[Z] = I
	o = z[Z]
	I = o:WaitForChild("HumanoidRootPart")
	k = e()
	z[k] = I
	N = z[Z]
	z[C].character = N
	N = z[k]
	z[C].hrp = N
	o = z[Z]
	I = o:FindFirstChild("Humanoid")
	N = e()
	z[N] = I
	if z[N] then goto L8392525 end
::L13939516::
	I = z[k].Position
	y = I + Vector3.new(0, 2, 0)
	o = z[k]
	l = CFrame
	a = e()
	l = l.new(y)
	Y = e()
	o.CFrame = l
	I = up2()
	W = e()
	z[W] = I
	o = z[C]
	l = z[W]
	m = closure(fn_15705515, {
		a
	})
	o.vfxPart = l
	l = e()
	z[l] = y
	X = e()
	z[Y] = 0
	z[a] = 200
	z[X] = nil
	o = up3.Heartbeat
	I = o.Connect
	I = I(o, closure(fn_14475830, {
		k,
		l,
		Y,
		W
	}))
	z[X] = I
	g = e()
	z[g] = true
	o = task.spawn
	o(closure(fn_4838029, {
		g,
		Z
	}))
	V = e()
	z[V] = 0
	o = up3.Heartbeat
	P = closure(fn_6368438, {
		Y,
		a,
		V,
		C
	})
	D = o:Connect(P)
	task.delay(.5, m)
	P = {}
	up4(P)
	up5()
	if z[C].gui then goto L237835 end
::L15607685::
	Q = Instance.new("ScreenGui")
	m = z[C].guiName
	Q.Name = m
	Q.ResetOnSpawn = false
	m = up1
	M = m:WaitForChild("PlayerGui")
	Q.Parent = M
	m = Instance.new("ImageLabel")
	m.BackgroundTransparency = 1
	m.Parent = Q
	R = Vector2.new(.5, .5)
	m.AnchorPoint = R
	R = UDim2.new(.5, 0, .45, 0)
	m.Position = R
	R = UDim2.new(0, 250, 0, 250)
	m.Size = R
	M = z[C].imageId
	m.Image = M
	o = game
	M = o:GetService("TweenService")
	R = {
		Size = UDim2.new(0, 350, 0, 350)
	}
	n = TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	F = closure(fn_12842116, {
		l,
		g,
		Z
	})
	o = M:Create(m, n, R)
	o:Play()
	z[C].gui = Q
	z[C].guiImage = m
	task.wait(1)
	z[C].loadModelAndTeleport(z[k], z[Z], F)
	task.wait(.5)
	if z[C].guiImage then goto L15943623 end
::L4418458::
	up6(P)
	task.wait(1)
	if D then goto L15298257 end
::L9396756::
	c(V)
	q = math.round
	H = z[Y]
	c(Z)
	f = q(H / 360)
	c(g)
	v = f * 360
	f = e()
	q = e()
	z[q] = v
	z[f] = nil
	v = up3.Heartbeat
	H = closure(fn_8798047, {
		q,
		Y,
		f,
		X,
		k,
		l,
		up7,
		W,
		N,
		C,
		a
	})
	c(q)
	c(k)
	c(W)
	F = v.Connect
	c(l)
	c(a)
	c(X)
	c(C)
	c(Y)
	c(N)
	F = F(v, H)
	z[f] = F
	c(f)
	return
::L15298257::
	D:Disconnect()
	goto L9396756
::L15943623::
	v = {
		Size = UDim2.new(0, 250, 0, 250),
		ImageTransparency = 1
	}
	q = TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	o = game
	f = o:GetService("TweenService")
	f = f:Create(z[C].guiImage, q, v)
	f:Play()
	o = f.Completed
	o:Wait()
	goto L4418458
::L237835::
	o = z[C].gui
	o:Destroy()
	goto L15607685
::L8392525::
	z[N].WalkSpeed = 0
	z[N].JumpPower = 0
	z[N].PlatformStand = true
	goto L13939516
::L3942701::
	return
end

function fn_10913597(arg1) -- entry L10913597, 11 blocks
::L10913597::
	I = not up1
	if C then goto L7773285 end
::L10263162::
	I = not up1.Parent
::L7773285::
	if I then goto L1201811 end
::L15384465::
	return up1
::L1201811::
	C = up2.Character
	I = C
	if C then goto L7193092 end
::L2092894::
	Z = I
	if Z then goto L72905 end
::L6152094::
	goto L15384465
::L72905::
	I = Z:FindFirstChild("Animator")
	if k then goto L16252701 end
::L14747357::
	I = Instance.new("Animator", Z)
::L16252701::
	up1 = I
	goto L6152094
::L7193092::
	I = C:FindFirstChildOfClass("Humanoid")
	goto L2092894
end

function fn_10964996(arg1) -- entry L10964996, 3 blocks
::L10964996::
	if up1 then goto L9161563 end
::L10706113::
	return
::L9161563::
	up1({
		hrp = up2,
		lastsFor = 3
	})
	goto L10706113
end

function fn_11102172(arg1, arg2, arg3, arg4) -- entry L11102172, 11 blocks
::L11102172::
	I = not up1
	if C then goto L15663186 end
::L12895097::
	I = not up1.Parent
::L15663186::
	if I then goto L13947596 end
::L13033508::
	return up1
::L13947596::
	C = up2.Character
	I = C
	if C then goto L4333896 end
::L10112786::
	Z = I
	if Z then goto L3463704 end
::L6897612::
	goto L13033508
::L3463704::
	I = Z:FindFirstChild("Animator")
	if k then goto L8849495 end
::L12265338::
	I = Instance.new("Animator", Z)
::L8849495::
	up1 = I
	goto L6897612
::L4333896::
	I = C:FindFirstChildOfClass("Humanoid")
	goto L10112786
end

function fn_11124431(arg1, arg2, arg3, arg4) -- entry L11124431, 1 blocks
::L11124431::
	return unpack({o:GetObjects(up1)})
end

function fn_11140300(arg1) -- entry L11140300, 9 blocks
::L11140300::
	o = up1
	y = o
	k = o
	N = up2
	C = "Angel A- Explosion"
	if W then goto L1632619 end
::L4024025::
	Z = N
	if N then goto L15914899 end
::L13282874::
	Z = up3.Position
::L15914899::
	o = k
	o:Play(C, Z, nil, .8, 1)
	o = up1
	y = o
	k = o
	C = "AngelZExplosion"
	N = up2
	if W then goto L1497938 end
::L14758888::
	Z = N
	if N then goto L9676383 end
::L14080365::
	Z = up3.Position
::L9676383::
	o = k
	o:Play(C, Z, nil, .75, 1.1)
	return
::L1497938::
	N = up2.Position
	goto L14758888
::L1632619::
	N = up2.Position
	goto L4024025
end

function fn_11166869(arg1, arg2, arg3, arg4) -- entry L11166869, 8 blocks
::L11166869::
	C = arg1
	if not C then goto L14170172 end
::L16758769::
	I = workspace
	C.Parent = I
	Z = C:FindFirstChild("Spawn", true)
	if not Z then goto L590688 end
::L393852::
	k = C:GetModelCFrame()
	N = k:ToObjectSpace(Z.CFrame)
	y = CFrame.new(up1.Position.X, up1.Position.Y + 99999, up1.Position.Z)
	o = C.PivotTo
	o(C, y * N:Inverse())
	l = 3
	Y = 1
	a = 1 < 0
	W = 1 - 1
::L6221113::
	W = W + Y
	if (a and (W>=l)) or ((not a) and (W<=l)) then goto L14801138 end
::L12785633::
	up2(Z.Position)
	up3(C, "<Rip_Family x Red_Legion Arena>", "<Sea>", nil, nil)
	return
::L14801138::
	o = up1
	V = CFrame.new(Z.Position)
	o.CFrame = V
	task.wait(.05)
	goto L6221113
::L590688::
	return
::L14170172::
	return
end

function fn_11208725(arg1, arg2) -- entry L11208725, 5 blocks
::L11208725::
	C = up1
	I = C:FindFirstChild("Right")
	if Z then goto L2178064 end
::L10021455::
	if I then goto L2677233 end
::L4686636::
	return
::L2677233::
	o = up1.Right.Hidden
	o:Destroy()
	goto L4686636
::L2178064::
	C = up1.Right
	I = C:FindFirstChild("Hidden")
	goto L10021455
end

function fn_11241093(arg1, arg2, arg3, arg4) -- entry L11241093, 15 blocks
::L11241093::
	C = arg1
	if o:GetFocusedTextBox() then goto L13157705 end
::L6433763::
	if not up2 then goto L6997603 end
::L11926816::
	if C.KeyCode==Enum.KeyCode.Z then goto L10832229 end
::L12590321::
	if C.KeyCode==Enum.KeyCode.X then goto L16622914 end
::L13940619::
	if C.KeyCode==Enum.KeyCode.C then goto L5416933 end
::L4925922::
	I = C.UserInputType == Enum.UserInputType.MouseButton1
	if k then goto L13176767 end
::L10251574::
	I = C.UserInputType == Enum.UserInputType.Touch
::L13176767::
	if I then goto L4523824 end
::L10815690::
	return
::L4523824::
	up6()
	goto L10815690
::L5416933::
	up5()
	goto L4925922
::L16622914::
	up4()
	goto L13940619
::L10832229::
	up3()
	goto L12590321
::L6997603::
	return
::L13157705::
	return
end

function fn_11325595() -- entry L11325595, 20 blocks
::L11325595::
	I = not up1
	if C then goto L6660722 end
::L1696326::
	I = not up2
::L6660722::
	if I then goto L16027772 end
::L12201475::
	up2 = false
	up3.Value = false
	C = up4.Character
	if not C then goto L194765 end
::L16174062::
	I = C:FindFirstChild("HumanoidRootPart")
	Z = e()
	z[Z] = I
	if not z[Z] then goto L6201734 end
::L429835::
	up5()
	up6(up7, false)
	I = up8
	I:Play("Angel B- Attack", z[Z].Position, nil, .8, 1)
	I = task.delay
	I(.2, closure(fn_7749944, {
		up8,
		Z
	}))
	k = task
	y = closure(fn_123417, {
		up8,
		Z
	})
	k.delay(.5, y)
	k = up9(z[Z], 120)
	if (#k)>0 then goto L11709046 end
::L3064051::
	if up10 then goto L8558433 end
::L801157::
	if up11 then goto L4842699 end
::L406984::
	W = closure(fn_13375221, {
		up1,
		up12,
		up2,
		up13,
		up14
	})
	task.delay(.5, W)
	c(Z)
	return
::L4842699::
	up11({
		hrp = z[Z],
		lastsFor = 2
	})
	goto L406984
::L8558433::
	up10({
		hrp = z[Z],
		lastsFor = 2
	})
	goto L801157
::L11709046::
	l = {
		pairs(k)
	}
	N = l[1]
	W = l[3]
	y = l[2]
::L8373558::
	W, Y = N(y, W)
	if W then goto L14423784 end
::L6477249::
	goto L3064051
::L14423784::
	a = Y[1]
	I = a:FindFirstChild("HumanoidRootPart")
	X = e()
	z[X] = I
	if z[X] then goto L6657064 end
::L8252109::
	c(X)
	goto L8373558
::L6657064::
	I = task.spawn
	I(closure(fn_10964996, {
		up10,
		X
	}))
	goto L8252109
::L6201734::
	return
::L194765::
	return
::L16027772::
	return
end

function fn_11339547() -- entry L11339547, 1 blocks
::L11339547::
	up1({
		player = up2,
		hrp = up3,
		chargeTime = 1.5,
		special = false,
		skill1Held = up4.holdXFlag
	})
	return
end

function fn_11351784(arg1, arg2) -- entry L11351784, 9 blocks
::L11351784::
	o = nil
	Z = nil
	up1 = nil
	up2 = true
	C = up3
	if k then goto L2086556 end
::L12129108::
	if C then goto L2899468 end
::L6057518::
	up8()
	return
::L2899468::
	up7()
	goto L6057518
::L2086556::
	N = o
	k = not up4
	if y then goto L16339766 end
::L14262663::
	C = k
	goto L12129108
::L16339766::
	W = o
	y = not up5
	if l then goto L1891401 end
::L840107::
	k = y
	goto L14262663
::L1891401::
	y = not up6
	goto L840107
end

function fn_11460671() -- entry L11460671, 9 blocks
::L11460671::
	o = true
	up1 = true
	C = up2.Character
	if C then goto L8658715 end
::L1615894::
	up4()
	up5()
	Z = up2
	k = Z:GetMouse()
	if up6 then goto L5268617 end
::L11720857::
	y = closure(fn_9469173, {
		up7
	})
	Z = k.Button1Down
	N = Z:Connect(y)
	up6 = N
	return
::L5268617::
	Z = up6
	Z:Disconnect()
	goto L11720857
::L8658715::
	Z = C:FindFirstChild("Humanoid")
	if Z then goto L9223558 end
::L7300726::
	goto L1615894
::L9223558::
	k = o
	I = Z:FindFirstChild("Animator")
	if N then goto L4503471 end
::L15576738::
	I = Instance.new("Animator", Z)
::L4503471::
	up3 = I
	goto L7300726
end

function fn_11604779(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L11604779, 1 blocks
::L11604779::
	k = e()
	C = e()
	z[C] = arg1
	z[k] = arg3
	y = closure(fn_16547607, {
		C,
		k,
		up3
	})
	o = up1
	c(C)
	c(k)
	o()
	up2(83204770964519, y)
	return
end

function fn_11717197(arg1, arg2, arg3) -- entry L11717197, 15 blocks
::L11717197::
	C = arg1
	Z = up1.Character
	if not Z then goto L12040697 end
::L8603357::
	if C~=Z:FindFirstChild("HumanoidRootPart") then goto L3412289 end
::L13654860::
	I = not up2
	if k then goto L13115637 end
::L14719971::
	I = up3
::L13115637::
	if I then goto L8715799 end
::L4382239::
	task.wait(.15)
	I = not up4()
	if k then goto L2819443 end
::L130029::
	if I then goto L2482412 end
::L7854997::
	return
::L2482412::
	up3 = true
	up2 = false
	if up5 then goto L16763380 end
::L3688600::
	k = task.delay
	k(.5, closure(fn_14942740, {
		up3
	}))
	goto L7854997
::L16763380::
	up5()
	goto L3688600
::L2819443::
	I = up2
	goto L130029
::L8715799::
	return
::L3412289::
	return
::L12040697::
	return
end

function fn_11770827(arg1) -- entry L11770827, 1 blocks
::L11770827::
	up1 = true
	return
end

function fn_11961173(arg1, arg2) -- entry L11961173, 19 blocks
::L11961173::
	I = up1.Character
	if C then goto L7314955 end
::L6942703::
	C = up1.CharacterAdded
	I = C:Wait()
::L7314955::
	C = e()
	z[C] = I
	y = e()
	o = z[C]
	I = o:WaitForChild("HumanoidRootPart")
	o = z[C]
	Z = I
	I = o:WaitForChild("Humanoid")
	k = e()
	z[k] = I
	o = up1
	I = o:WaitForChild("Backpack")
	N = e()
	z[N] = I
	o = up1
	I = o:GetMouse()
	z[y] = I
	W = up2("rbxassetid://96375671161494")
	I = not W
	if l then goto L3320111 end
::L292646::
	I = not W[1]
::L3320111::
	if I then goto L4940440 end
::L14841659::
	l = W[1]
	I = l:FindFirstChild("Fruits")
	if Y then goto L10292527 end
::L7197144::
	Y = W[1]
	I = Y:GetChildren()[1]
::L10292527::
	l = I
	if not l then goto L6354312 end
::L13654174::
	Oy[4] = "Vector2"
	Oy[1] = "rbxassetid://110499104628953"
	Oy[5] = 609
	Oy[11] = 761
	Oy[7] = 305
	o = {
		blade = "rbxassetid://108920269089389",
		blizzard = "rbxassetid://139287413349875",
		bomb = "rbxassetid://109936761585759",
		buddha = "rbxassetid://70468445918253",
		control = "rbxassetid://138452891864238",
		creation = "rbxassetid://90979963965915",
		dark = "rbxassetid://105850830226314",
		diamond = "rbxassetid://138621444139835",
		dough = "rbxassetid://137318286758185",
		east = "rbxassetid://82632092516701",
		west = "rbxassetid://90144652761537",
		flame = "rbxassetid://100529802309283",
		falcon = "rbxassetid://72037523265892",
		gas = "rbxassetid://116726287284658",
		ghost = "rbxassetid://103241343046901",
		gravity = "rbxassetid://82911190033272",
		ice = "rbxassetid://138150083610098",
		kitsune = "rbxassetid://123199021007709",
		light = "rbxassetid://98334300171176",
		Lighting = "rbxassetid://75076261351086",
		love = "rbxassetid://121800275906431",
		magma = Oy[1]
	}
	Y = e()
	z[Y] = o
	a = {
		id = "rbxassetid://108944808701688",
		offset = Vector2.new(1, 457)
	}
	P = Vector2.new
	Oy[18] = "Vector2"
	Oy[1] = 457
	g = {
		id = "rbxassetid://108944808701688",
		offset = P(457, 1)
	}
	m = Vector2.new
	Oy[12] = "Vector2"
	D = {
		id = "rbxassetid://108944808701688",
		offset = m(1, 609)
	}
	Oy[13] = 153
	P = {
		id = "rbxassetid://108944808701688",
		offset = Vector2.new(609, 153)
	}
	q = Vector2.new(609, 1)
	Oy[22] = "Vector2"
	R = {
		id = "rbxassetid://108944808701688",
		offset = Vector2.new(153, 305)
	}
	v = {
		id = "rbxassetid://108944808701688",
		offset = Vector2.new(305, 457)
	}
	b = Vector2
	Oy[6] = "Vector2"
	py = b.new
	Oy[2] = "Vector2"
	f = {
		id = "rbxassetid://108944808701688",
		offset = py(609, 305)
	}
	H = {
		id = "rbxassetid://108944808701688",
		offset = Vector2.new(1, 153)
	}
	uy = Vector2.new
	Oy[25] = 153
	py = {
		id = "rbxassetid://108944808701688",
		offset = uy(305, 305)
	}
	E = Vector2.new
	Oy[19] = 1
	A = {
		id = "rbxassetid://108944808701688",
		offset = E(1, 305)
	}
	sy = Vector2.new
	Oy[3] = 457
	uy = {
		id = "rbxassetid://108944808701688",
		offset = sy(457, 457)
	}
	E = {
		id = "rbxassetid://108944808701688",
		offset = Vector2.new(761, 305)
	}
	sy = {
		id = "rbxassetid://114306691107939",
		offset = Vector2.new(457, 457)
	}
	ry = {
		id = "rbxassetid://108944808701688",
		offset = Vector2.new(761, 153)
	}
	wy = {
		id = "rbxassetid://108944808701688",
		offset = Vector2.new(305, 761)
	}
	Ny = Vector2
	Oy[20] = "Vector2"
	Ny = Ny.new(305, 609)
	Oy[23] = 609
	ey = {
		id = "rbxassetid://114306691107939",
		offset = Vector2.new(1, Oy[1])
	}
	Oy[1] = ENV[Oy[2]]
	Oy[2] = "new"
	Ly = Oy[1][Oy[2]]
	Oy[15] = 457
	Oy[2] = 153
	Oy[1] = Ly(Oy[2], Oy[3])
	ky = {
		id = "rbxassetid://108944808701688",
		offset = Oy[1]
	}
	Oy[3] = ENV[Oy[4]]
	Oy[10] = "Vector2"
	Oy[4] = "new"
	Oy[8] = "Vector2"
	Oy[2] = Oy[3][Oy[4]]
	Oy[9] = 761
	Oy[4] = 609
	Oy[3] = Oy[2](Oy[4], Oy[5])
	Oy[1] = "offset"
	Oy[24] = "Vector2"
	cy = {
		id = "rbxassetid://108944808701688",
		[Oy[1]] = Oy[3]
	}
	Oy[21] = 1
	Oy[1] = "id"
	Oy[2] = "rbxassetid://114306691107939"
	Oy[5] = ENV[Oy[6]]
	Oy[6] = "new"
	Oy[4] = Oy[5][Oy[6]]
	Oy[3] = "offset"
	Oy[6] = 609
	Oy[17] = 761
	Oy[5] = Oy[4](Oy[6], Oy[7])
	Ly = {
		[Oy[1]] = Oy[2],
		[Oy[3]] = Oy[5]
	}
	Oy[5] = "offset"
	Oy[1] = "dough"
	Oy[4] = "rbxassetid://108944808701688"
	Oy[7] = ENV[Oy[8]]
	Oy[3] = "id"
	Oy[8] = "new"
	Oy[6] = Oy[7][Oy[8]]
	Oy[8] = 1
	Oy[7] = Oy[6](Oy[8], Oy[9])
	Oy[2] = {
		[Oy[3]] = Oy[4],
		[Oy[5]] = Oy[7]
	}
	Oy[7] = "offset"
	Oy[9] = ENV[Oy[10]]
	Oy[5] = "id"
	Oy[3] = "venom"
	Oy[10] = "new"
	Oy[8] = Oy[9][Oy[10]]
	Oy[14] = "Vector2"
	Oy[6] = "rbxassetid://108944808701688"
	Oy[10] = 609
	Oy[9] = Oy[8](Oy[10], Oy[11])
	Oy[4] = {
		[Oy[5]] = Oy[6],
		[Oy[7]] = Oy[9]
	}
	Oy[9] = "offset"
	Oy[11] = ENV[Oy[12]]
	Oy[5] = "gas"
	Oy[8] = "rbxassetid://108944808701688"
	Oy[7] = "id"
	Oy[12] = "new"
	Oy[10] = Oy[11][Oy[12]]
	Oy[12] = 153
	Oy[11] = Oy[10](Oy[12], Oy[13])
	Oy[6] = {
		[Oy[7]] = Oy[8],
		[Oy[9]] = Oy[11]
	}
	Oy[13] = ENV[Oy[14]]
	Oy[10] = "rbxassetid://108944808701688"
	Oy[7] = "spirit"
	Oy[14] = "new"
	Oy[12] = Oy[13][Oy[14]]
	Oy[9] = "id"
	Oy[14] = 609
	Oy[11] = "offset"
	Oy[13] = Oy[12](Oy[14], Oy[15])
	Oy[8] = {
		[Oy[9]] = Oy[10],
		[Oy[11]] = Oy[13]
	}
	Oy[12] = "rbxassetid://114306691107939"
	Oy[11] = "id"
	Oy[16] = "Vector2"
	Oy[13] = "offset"
	Oy[15] = ENV[Oy[16]]
	Oy[16] = "new"
	Oy[9] = "control"
	Oy[14] = Oy[15][Oy[16]]
	Oy[16] = 1
	Oy[15] = Oy[14](Oy[16], Oy[17])
	Oy[10] = {
		[Oy[11]] = Oy[12],
		[Oy[13]] = Oy[15]
	}
	Oy[11] = "east"
	Oy[13] = "id"
	Oy[15] = "offset"
	Oy[17] = ENV[Oy[18]]
	Oy[18] = "new"
	Oy[14] = "rbxassetid://108944808701688"
	Oy[16] = Oy[17][Oy[18]]
	Oy[18] = 153
	Oy[17] = Oy[16](Oy[18], Oy[19])
	Oy[16] = "rbxassetid://108944808701688"
	Oy[12] = {
		[Oy[13]] = Oy[14],
		[Oy[15]] = Oy[17]
	}
	Oy[15] = "id"
	Oy[17] = "offset"
	Oy[19] = ENV[Oy[20]]
	Oy[13] = "west"
	Oy[20] = "new"
	Oy[18] = Oy[19][Oy[20]]
	Oy[20] = 305
	Oy[19] = Oy[18](Oy[20], Oy[21])
	Oy[14] = {
		[Oy[15]] = Oy[16],
		[Oy[17]] = Oy[19]
	}
	Oy[21] = ENV[Oy[22]]
	Oy[22] = "new"
	Oy[17] = "id"
	Oy[20] = Oy[21][Oy[22]]
	Oy[18] = "rbxassetid://108944808701688"
	Oy[22] = 761
	Oy[15] = "yeti"
	Oy[19] = "offset"
	Oy[21] = Oy[20](Oy[22], Oy[23])
	Oy[23] = ENV[Oy[24]]
	Oy[16] = {
		[Oy[17]] = Oy[18],
		[Oy[19]] = Oy[21]
	}
	Oy[21] = "offset"
	Oy[20] = "rbxassetid://108944808701688"
	Oy[17] = "kitsune"
	Oy[19] = "id"
	Oy[24] = "new"
	Oy[22] = Oy[23][Oy[24]]
	Oy[24] = 305
	Oy[23] = Oy[22](Oy[24], Oy[25])
	Oy[18] = {
		[Oy[19]] = Oy[20],
		[Oy[21]] = Oy[23]
	}
	o = {
		dark = a,
		eagle = g,
		diamond = D,
		light = P,
		rubber = {
			id = "rbxassetid://114306691107939",
			offset = q
		},
		ghost = R,
		magma = v,
		quake = f,
		buddha = H,
		love = py,
		creation = A,
		spider = uy,
		sound = E,
		phoenix = sy,
		lightning = ry,
		pain = wy,
		mammoth = {
			id = "rbxassetid://108944808701688",
			offset = Ny
		},
		blizzard = ey,
		gravity = ky,
		trex = cy,
		shadow = Ly,
		[Oy[1]] = Oy[2],
		[Oy[3]] = Oy[4],
		[Oy[5]] = Oy[6],
		[Oy[7]] = Oy[8],
		[Oy[9]] = Oy[10],
		[Oy[11]] = Oy[12],
		[Oy[13]] = Oy[14],
		[Oy[15]] = Oy[16],
		[Oy[17]] = Oy[18]
	}
	a = e()
	z[a] = o
	P = e()
	V = e()
	X = e()
	g = e()
	Q = e()
	z[X] = {}
	D = e()
	o = closure(fn_10355287, {})
	z[g] = o
	o = closure(fn_4943347, {
		X,
		C,
		Y,
		N,
		g,
		k
	})
	m = e()
	t = e()
	z[V] = o
	o = closure(fn_15517569, {})
	z[D] = o
	o = closure(fn_10650910, {
		N,
		C
	})
	z[t] = o
	o = closure(fn_7772757, {
		k
	})
	z[P] = o
	o = closure(fn_1065245, {
		a
	})
	v = l.GetChildren
	z[Q] = o
	o = closure(fn_2377519, {
		up1,
		X,
		t,
		P,
		D,
		up3,
		Q,
		g,
		C,
		V
	})
	z[m] = o
	o = z[y].Button1Down
	M = closure(fn_9416892, {
		y,
		C,
		up4,
		m
	})
	o:Connect(M)
	o = ipairs
	v = {
		o(unpack({
			v(l)
		}))
	}
	M = v[2]
	n = v[1]
	R = v[3]
::L10392801::
	R, q = n(M, R)
	if R then goto L10699453 end
::L15285547::
	M = game
	c(Q)
	o = M.DescendantRemoving
	R = closure(fn_4958596, {
		X
	})
	c(t)
	o:Connect(R)
	M = z[C]
	c(a)
	o = M.ChildAdded
	c(D)
	c(k)
	c(P)
	M = o.Connect
	M(o, closure(fn_5757503, {
		up4,
		g
	}))
	o = z[C].ChildRemoved
	R = closure(fn_12940717, {
		up4,
		N,
		g,
		V
	})
	M = o.Connect
	c(Y)
	M(o, R)
	M = z[N]
	c(y)
	o = M.ChildAdded
	R = closure(fn_5318191, {
		up4,
		g
	})
	o:Connect(R)
	M = z[N]
	c(X)
	c(N)
	c(m)
	o = M.ChildRemoved
	M = o.Connect
	R = closure(fn_9164832, {
		up4,
		g,
		V,
		C
	})
	c(C)
	M(o, R)
	c(V)
	c(g)
	return
::L10699453::
	o = ipairs
	py = {
		o(unpack({
			q:GetDescendants()
		}))
	}
	H = py[3]
	f = py[1]
	F = py[2]
::L13602586::
	H, py = f(F, H)
	if H then goto L6382506 end
::L10435875::
	o = up4
	o:AddTag(q, "VisualFruit")
	q:SetAttribute("ItemId", 20)
	q.ToolTip = "Blox Fruit"
	f = workspace
	q.Parent = f
	f = CFrame.new
	i = Z.Position
	py = Vector3.new
	h = math.random(- 50, 50)
	F = {
		f(i + py(h, 10, unpack({
			math.random(- 50, 50)
		})))
	}
	o = q.PivotTo
	o(q, unpack(F))
	z[V](q)
	goto L10392801
::L6382506::
	if py:IsA("BasePart") then goto L867691 end
::L3820612::
	goto L13602586
::L867691::
	py.CanCollide = true
	py.CanTouch = true
	goto L3820612
::L6354312::
	return
::L4940440::
	return
end

function fn_12040362(arg1) -- entry L12040362, 3 blocks
::L12040362::
	if up1 then goto L7827363 end
::L14772180::
	return
::L7827363::
	up2()
	goto L14772180
end

function fn_12079565(arg1, arg2, arg3, arg4, arg5) -- entry L12079565, 3 blocks
::L12079565::
	if up1.equipped then goto L2795983 end
::L7385504::
	return
::L2795983::
	up2()
	goto L7385504
end

function fn_12112391() -- entry L12112391, 3 blocks
::L12112391::
	if up1 then goto L982229 end
::L9907230::
	return
::L982229::
	up2()
	goto L9907230
end

function fn_12115406(arg1) -- entry L12115406, 1 blocks
::L12115406::
	up1 = false
	return
end

function fn_12122137(arg1, arg2) -- entry L12122137, 9 blocks
::L12122137::
	C = arg1
	if not up1 then goto L5446591 end
::L8558598::
	if C.KeyCode==Enum.KeyCode.Z then goto L13359352 end
::L7517424::
	if C.KeyCode==Enum.KeyCode.X then goto L12512251 end
::L4699070::
	if C.KeyCode==Enum.KeyCode.C then goto L7206893 end
::L468241::
	return
::L7206893::
	up4()
	goto L468241
::L12512251::
	up3()
	goto L4699070
::L13359352::
	up2()
	goto L7517424
::L5446591::
	return
end

function fn_12188237(arg1, arg2) -- entry L12188237, 1 blocks
::L12188237::
	up1(up2)
	return
end

function fn_12212290(arg1, arg2, arg3, arg4) -- entry L12212290, 3 blocks
::L12212290::
	if up1 then goto L15555631 end
::L9467858::
	Z = closure(fn_8832294, {
		up2,
		up1
	})
	I = task.delay(1.5, Z)
	up1 = I
	return
::L15555631::
	task.cancel(up1)
	goto L9467858
end

function fn_12216091() -- entry L12216091, 1 blocks
::L12216091::
	o = task.wait
	o(math.random() * .2)
	o = up1.new
	N = CFrame.new(up2)
	V = Color3.fromRGB(0, 0, 0)
	D = ColorSequence.new
	Q = Color3.fromRGB(0, 0, 0)
	I = o({
		CFrame = N,
		Duration = 3,
		POW = 2.5,
		Size = 650,
		InnerColor = V,
		OuterColor = D(Q, unpack({
			Color3.fromRGB(80, 80, 80)
		}))
	})
	I:Run()
	return
end

function fn_12242496(arg1, arg2, arg3, arg4) -- entry L12242496, 12 blocks
::L12242496::
	C = arg1
	o = pairs
	N = up1
	N = {
		o(unpack({
			N:GetChildren()
		}))
	}
	k = N[3]
	Z = N[2]
	N = N[1]
::L3616587::
	k, W = N(Z, k)
	if k then goto L1202239 end
::L14339885::
	if C then goto L14642479 end
::L13808565::
	return
::L14642479::
	table.clear(C)
	goto L13808565
::L1202239::
	l = W:IsA("ColorCorrectionEffect")
	if Y then goto L4401379 end
::L13459163::
	a = o
	Y = W:IsA("BlurEffect")
	if X then goto L14648013 end
::L16376456::
	Y = W:IsA("BloomEffect")
::L14648013::
	o = a
	l = Y
::L4401379::
	if l then goto L6938523 end
::L12179136::
	goto L3616587
::L6938523::
	o = W:Destroy()
	goto L12179136
end

function fn_12278709(arg1, arg2, arg3) -- entry L12278709, 7 blocks
::L12278709::
	o = up1
	o.canM1 = true
	I = up1.equipped
	if C then goto L8931412 end
::L14843267::
	if I then goto L11923722 end
::L8052525::
	return
::L11923722::
	up2()
	goto L8052525
::L8931412::
	Z = o
	C = not up1.currentAnim
	if k then goto L7518063 end
::L13499771::
	C = not up1.currentAnim.IsPlaying
::L7518063::
	I = C
	goto L14843267
end

function fn_12319794(arg1, arg2) -- entry L12319794, 1 blocks
::L12319794::
	up1 = true
	return
end

function fn_12381926(arg1, arg2, arg3, arg4, arg5) -- entry L12381926, 9 blocks
::L12381926::
	C = arg1
	if o:GetFocusedTextBox() then goto L10178903 end
::L1855060::
	if not up2 then goto L535881 end
::L14764092::
	I = C.UserInputType == Enum.UserInputType.Touch
	if k then goto L6327781 end
::L10215406::
	I = C.UserInputType == Enum.UserInputType.MouseButton1
::L6327781::
	if I then goto L13203579 end
::L7142786::
	return
::L13203579::
	up3()
	goto L7142786
::L535881::
	return
::L10178903::
	return
end

function fn_12395948(arg1, arg2, arg3) -- entry L12395948, 3 blocks
::L12395948::
	C = up1.Character
	I = C
	if C then goto L8676951 end
::L5744718::
	return I
::L8676951::
	I = C:FindFirstChild("HumanoidRootPart")
	goto L5744718
end

function fn_12411238(arg1) -- entry L12411238, 11 blocks
::L12411238::
	C = arg1
	Z = up1.Character
	if not Z then goto L10001167 end
::L8843186::
	if C~=Z:FindFirstChild("HumanoidRootPart") then goto L8796177 end
::L10653768::
	I = up2
	if k then goto L968693 end
::L3600776::
	I = up3
::L968693::
	if I then goto L7843983 end
::L8119206::
	up3 = true
	up2 = true
	if up4 then goto L4619865 end
::L4445178::
	W = closure(fn_753402, {
		up3
	})
	task.delay(.5, W)
	return
::L4619865::
	up4()
	goto L4445178
::L7843983::
	return
::L8796177::
	return
::L10001167::
	return
end

function fn_12546043(arg1, arg2, arg3, arg4, arg5) -- entry L12546043, 6 blocks
::L12546043::
	N = {
		pairs(up1)
	}
	C = N[2]
	Z = N[3]
	k = N[1]
::L10590436::
	Z, y = k(C, Z)
	if Z then goto L4266893 end
::L3477572::
	return
::L4266893::
	W = y[1]
	l = W:FindFirstChild("HumanoidRootPart")
	if l then goto L8743930 end
::L5559095::
	goto L10590436
::L8743930::
	o = up2
	o:Play("Angel B- Enemy Chains", l.Position, nil, 1.1, 1)
	goto L5559095
end

function fn_12607426(arg1) -- entry L12607426, 19 blocks
::L12607426::
	I = up1.equipped
	if C then goto L10125991 end
::L11156953::
	if I then goto L12039168 end
::L5906573::
	return
::L12039168::
	I = up2.Character
	if C then goto L5296982 end
::L16735398::
	C = I
	if C then goto L12749911 end
::L7666236::
	goto L5906573
::L12749911::
	I = up1.idleTrack
	if Z then goto L10823438 end
::L10386098::
	if I then goto L8583793 end
::L15562782::
	if up1.currentAnim then goto L12334403 end
::L7296560::
	up1.holdZ = true
	up1.holdZFlag.Value = true
	o = up2.Character
	Z = o:FindFirstChildOfClass("Humanoid")
	if Z then goto L14981713 end
::L13950171::
	up4({
		player = up2,
		hrp = C,
		startSlicesPosition = C.Position,
		endSlicesPosition = C.Position + (C.CFrame.LookVector * 60),
		duration = 1
	})
	goto L7666236
::L14981713::
	I = Z:FindFirstChild("Animator")
	if k then goto L4985926 end
::L2942734::
	I = Instance.new("Animator", Z)
::L4985926::
	k = I
	N = Instance.new("Animation")
	N.AnimationId = "rbxassetid://14413040313"
	y = k:LoadAnimation(N)
	y.Looped = false
	y:Play()
	up1.currentAnim = y
	W = closure(fn_15555300, {
		up1,
		up3
	})
	o = y.Stopped
	o:Connect(W)
	goto L13950171
::L12334403::
	o = up1.currentAnim
	o:Stop()
	goto L7296560
::L8583793::
	o = up1.idleTrack
	o:Stop()
	up1.idleTrack = nil
	goto L15562782
::L10823438::
	I = up1.idleTrack.IsPlaying
	goto L10386098
::L5296982::
	C = up2.Character
	I = C:FindFirstChild("HumanoidRootPart")
	goto L16735398
::L10125991::
	I = not up1.holdZ
	goto L11156953
end

function fn_12615410(arg1, arg2, arg3, arg4) -- entry L12615410, 3 blocks
::L12615410::
	if up1 then goto L1525734 end
::L8319667::
	return
::L1525734::
	up2()
	goto L8319667
end

function fn_12630103(arg1, arg2) -- entry L12630103, 1 blocks
::L12630103::
	I = Instance.new("Part")
	C = e()
	z[C] = I
	z[C].Name = "vfxkamui"
	z[C].Transparency = 1
	o = z[C]
	k = Vector3.new(1, 1, 1)
	o.Size = k
	z[C].Anchored = true
	z[C].CanCollide = false
	Z = workspace
	z[C].Parent = Z
	Z = closure(fn_9060279, {
		C
	})
	W = NumberRange.new(0, 0)
	Y = NumberRange.new(- 360, 360)
	a = ColorSequence.new
	X = a(unpack({
		Color3.new(.509804, 0, .564706)
	}))
	D = NumberSequence.new
	m = NumberSequenceKeypoint.new(0, 1)
	M = NumberSequenceKeypoint.new(.5, 0)
	t = D({
		m,
		M,
		unpack({
			NumberSequenceKeypoint.new(1, 1)
		})
	})
	M = NumberSequence.new(4.6875, 0)
	n = NumberRange.new(.4, .4)
	Z("Hole", {
		Speed = W,
		Rotation = Y,
		Color = X,
		Texture = "rbxassetid://1244829143",
		Transparency = t,
		ZOffset = 1,
		Size = M,
		Lifetime = n,
		Rate = 60,
		RotSpeed = NumberRange.new(30, 30)
	})
	W = NumberRange.new(10, 10)
	l = ColorSequence.new
	Y = l(unpack({
		Color3.new(.388235, 0, .584314)
	}))
	t = NumberSequence.new(0, .1875)
	Q = NumberRange.new(.25, 1)
	Z("Particle1", {
		Speed = W,
		Color = Y,
		LightInfluence = 1,
		Texture = "rbxassetid://867619398",
		Size = t,
		Lifetime = Q,
		Rate = 100,
		SpreadAngle = Vector2.new(180, - 180),
		VelocitySpread = 180
	})
	W = NumberRange.new(10, 10)
	l = ColorSequence.new
	Y = l(unpack({
		Color3.new(.266667, 0, .407843)
	}))
	t = NumberSequence.new(0, .3)
	Q = NumberRange.new(.25, 1)
	Z("Particle2", {
		Speed = W,
		Color = Y,
		LightInfluence = 1,
		Texture = "rbxassetid://867619398",
		Size = t,
		Lifetime = Q,
		Rate = 100,
		SpreadAngle = Vector2.new(170, - 170),
		VelocitySpread = 170
	})
	I = Instance.new("PointLight")
	k = z[C]
	I.Parent = k
	return z[C]
end

function fn_12702450(arg1, arg2, arg3, arg4) -- entry L12702450, 17 blocks
::L12702450::
	I = not up1
	if C then goto L1734903 end
::L2421069::
	I = up2
::L1734903::
	if I then goto L11451405 end
::L1277542::
	C = up3.Character
	if not C then goto L625378 end
::L427568::
	Z = e()
	o = C:FindFirstChild("HumanoidRootPart")
	z[Z] = o
	if not z[Z] then goto L16199107 end
::L393415::
	up4()
	o = true
	up2 = true
	up5.Value = true
	up6()
	if up7 then goto L6364779 end
::L15168623::
	if up8 then goto L14932694 end
::L5381746::
	y = up9(up10, false)
	up8 = y
	N = table.insert
	l = up11
	Y = up12
	V = z[Z].Position
	g = V + Vector3.new(0, 160, 0)
	N(l, unpack({
		Y:Play("Angel C- Angel Flames", g, nil, .65, 1.5)
	}))
	N = table.insert
	l = up11
	Y = up12
	N(l, unpack({
		Y:Play("Angel C- Circle Hold", z[Z].Position, nil, .7, 1)
	}))
	task.wait(.5)
	W = o
	N = up2
	if l then goto L12560960 end
::L7970444::
	if N then goto L12208850 end
::L16052739::
	N = task.spawn
	N(closure(fn_533669, {
		up14,
		Z,
		up5
	}))
	c(Z)
	return
::L12208850::
	W = up9(up13, true)
	up8 = W
	N = table.insert
	Y = up11
	a = up12
	N(Y, unpack({
		a:Play("Angel C- Arrow Fire", z[Z].Position, nil, .8, 1)
	}))
	goto L16052739
::L12560960::
	N = up1
	goto L7970444
::L14932694::
	k = up8
	k:Stop()
	up8 = nil
	goto L5381746
::L6364779::
	I = up7
	I:Stop()
	up7 = nil
	goto L15168623
::L16199107::
	return
::L625378::
	return
::L11451405::
	return
end

function fn_12744206(arg1, arg2, arg3, arg4) -- entry L12744206, 1 blocks
::L12744206::
	up1(up2)
	return
end

function fn_12842116(arg1) -- entry L12842116, 10 blocks
::L12842116::
	o = arg1
	up1 = o
	up2 = false
	task.wait(.15)
	k = o
	Z = up3
	if N then goto L4950885 end
::L12525875::
	if Z then goto L16732768 end
::L336783::
	return
::L16732768::
	Z = ipairs
	W = up3
	W = {
		Z(unpack({
			W:GetDescendants()
		}))
	}
	y = W[3]
	N = W[2]
	k = W[1]
::L15692446::
	y, W = k(N, y)
	if y then goto L12578204 end
::L15521383::
	goto L336783
::L12578204::
	if W:IsA("BasePart") then goto L11711761 end
::L8681521::
	goto L15692446
::L11711761::
	W.CanCollide = true
	goto L8681521
::L4950885::
	Z = up3.Parent
	goto L12525875
end

function fn_12861849(arg1) -- entry L12861849, 3 blocks
::L12861849::
	if up1 then goto L6993174 end
::L10695112::
	return
::L6993174::
	o = up1
	o:Stop()
	up1 = nil
	goto L10695112
end

function fn_12940717(arg1, arg2) -- entry L12940717, 10 blocks
::L12940717::
	C = arg1
	I = C:IsA("Tool")
	if Z then goto L1060311 end
::L5204090::
	if I then goto L1699140 end
::L9035532::
	return
::L1699140::
	if C.Parent==up2 then goto L8540796 end
::L11216460::
	up3(C, false)
	if C.Parent==workspace then goto L15739731 end
::L2703492::
::L1011218::
	goto L9035532
::L15739731::
	up4(C)
	goto L2703492
::L8540796::
	up3(C, true)
	goto L1011218
::L1060311::
	Z = up1
	I = Z:HasTag(C, "VisualFruit")
	goto L5204090
end

function fn_12953164(arg1) -- entry L12953164, 17 blocks
::L12953164::
	o = up1.equipped
	if o then goto L5387298 end
::L3805161::
	return
::L5387298::
	I = up2.Character
	if C then goto L14422439 end
::L16643586::
	C = I
	if C then goto L2759719 end
::L10289638::
	goto L3805161
::L2759719::
	I = C:FindFirstChild("Animator")
	if Z then goto L2016341 end
::L11371751::
	I = Instance.new("Animator", C)
::L2016341::
	k = o
	Z = I
	I = up1.idleTrack
	if N then goto L3393860 end
::L12781384::
	if not I then goto L733461 end
::L8207424::
	goto L10289638
::L733461::
	I = up1.currentAnim
	if k then goto L16138737 end
::L14870124::
	if I then goto L9686407 end
::L5533142::
	k = Instance.new("Animation")
	I = "rbxassetid://" .. z[up3]
	k.AnimationId = I
	N = Z:LoadAnimation(k)
	N.Looped = true
	N:Play()
	up1.idleTrack = N
	goto L8207424
::L9686407::
	o = up1.currentAnim
	o:Stop()
	goto L5533142
::L16138737::
	I = up1.currentAnim.IsPlaying
	goto L14870124
::L3393860::
	I = up1.idleTrack.IsPlaying
	goto L12781384
::L14422439::
	C = up2.Character
	I = C:FindFirstChildOfClass("Humanoid")
	goto L16643586
end

function fn_13002105(arg1, arg2, arg3) -- entry L13002105, 5 blocks
::L13002105::
	task.wait(.5)
	I = up1
	if C then goto L2715505 end
::L6416324::
	if I then goto L14084578 end
::L10012848::
	return
::L14084578::
	up3(up4.Charge, true)
	o = up5
	o:Play("AngelZChains", up6.Position, nil, .7, .5)
	goto L10012848
::L2715505::
	I = up2
	goto L6416324
end

function fn_13087922(arg1) -- entry L13087922, 7 blocks
::L13087922::
	k = e()
	I = up1.new("<Color=Purple>Quantum Onyx: Gifted you Black Nuke<Color=/>")
	I:Display()
	Z = e()
	z[Z] = false
	z[k] = false
	o = require
	N = up2
	y = N:WaitForChild("Effect")
	N = y:WaitForChild("Container")
	y = {
		N:WaitForChild("FastLightning2")
	}
	N = e()
	I = o(unpack(y))
	z[N] = I
	o = require
	y = up2
	W = y:WaitForChild("Effect")
	y = W:WaitForChild("Container")
	W = {
		y:WaitForChild("Nuke")
	}
	y = e()
	I = o(unpack(W))
	o = closure(fn_10074015, {
		up3
	})
	z[y] = I
	W = e()
	z[W] = o
	o = closure(fn_10045506, {
		k,
		Z,
		W,
		N,
		y
	})
	l = e()
	z[l] = o
	o = up4.InputBegan
	Y = closure(fn_12381926, {
		up4,
		k,
		l
	})
	o:Connect(Y)
	Y = up3.Backpack
	I = Y:FindFirstChild("Black Nuke")
	if a then goto L787038 end
::L5243408::
	a = o
	Y = up3.Character
	if X then goto L4940492 end
::L5015304::
	I = Y
::L787038::
	Y = I
	if Y then goto L9284220 end
::L11523058::
	a = Instance.new("Tool")
	a.Name = "Black Nuke"
	a.RequiresHandle = false
	c(N)
	c(y)
	a:SetAttribute("ItemId", 1164)
	X = closure(fn_4599621, {
		k,
		l
	})
	a.ToolTip = "Tool"
	o = a.Activated
	o:Connect(X)
	X = closure(fn_6889221, {
		k
	})
	o = a.Equipped
	c(l)
	c(W)
	o:Connect(X)
	X = closure(fn_1404969, {
		k,
		Z
	})
	o = a.Unequipped
	I = o.Connect
	c(k)
	I(o, X)
	X = up3
	c(Z)
	I = X.Backpack
	a.Parent = I
	return
::L9284220::
	Y:Destroy()
	goto L11523058
::L4940492::
	X = up3.Character
	Y = X:FindFirstChild("Black Nuke")
	goto L5015304
end

function fn_13327479(arg1) -- entry L13327479, 7 blocks
::L13327479::
	I = up1.new("<Color=Purple>Quantum Onyx: Gifted you Celestial Art<Color=/>")
	I:Display()
	I = require
	k = up2
	N = {
		k:WaitForChild("Util")
	}
	k = e()
	Z = I(unpack(N))
	N = e()
	o = Z.Sound
	Z = e()
	z[Z] = o
	o = closure(fn_3807782, {
		up3
	})
	z[k] = o
	o = closure(fn_7594827, {
		up3
	})
	z[N] = o
	I = require(up2.Effect.Container.Angel2.M1)
	y = e()
	z[y] = I
	o = require
	a = up2.Effect
	h = e()
	I = o(a.Container.Angel2.Z)
	W = e()
	z[W] = I
	I = require(up2.Effect.Container.Angel2.XCharge)
	l = e()
	b = e()
	z[l] = I
	I = require(up2.Effect.Container.Angel2.XCharChains)
	Y = e()
	H = e()
	z[Y] = I
	E = e()
	I = require(up2.Effect.Container.Angel2.XCameraChains)
	a = e()
	z[a] = I
	o = require
	V = up2.Effect.Container
	t = e()
	I = o(V.Angel2.C)
	D = e()
	X = e()
	g = e()
	z[X] = I
	V = e()
	z[g] = 0
	z[V] = true
	z[D] = nil
	z[t] = false
	P = e()
	z[P] = nil
	Q = e()
	z[Q] = {
		18699539486,
		18699541378,
		18699542775,
		18699545564
	}
	m = e()
	M = e()
	R = e()
	z[m] = {
		Z = 18637207623,
		Charge = 18686496907,
		Execute = 18637209873,
		Grab = 18637217215
	}
	z[M] = 18686500373
	v = e()
	z[R] = 18686502223
	f = e()
	i = e()
	n = e()
	z[n] = 18637214138
	z[v] = 18637218777
	F = e()
	q = e()
	z[q] = nil
	z[f] = nil
	z[F] = nil
	z[H] = nil
	z[i] = false
	I = Instance.new("BoolValue")
	T = e()
	py = e()
	z[py] = I
	z[b] = false
	I = Instance.new("BoolValue")
	A = e()
	z[A] = I
	z[h] = false
	I = Instance.new("BoolValue")
	uy = e()
	z[uy] = I
	z[T] = {}
	z[E] = nil
	I = Instance.new("Animation")
	oy = e()
	z[oy] = I
	o = z[oy]
	o.AnimationId = "rbxassetid://102742789963001"
	sy = up3.Backpack
	I = sy:FindFirstChild("Celestial Art")
	if xy then goto L173055 end
::L10072627::
	xy = o
	sy = up3.Character
	if ry then goto L14841628 end
::L9848862::
	I = sy
::L173055::
	sy = I
	if sy then goto L7000464 end
::L497659::
	yy = e()
	Oy[1] = e()
	o = Instance.new
	Ly = e()
	I = o("Tool")
	Zy = e()
	xy = I
	xy.Name = "Celestial Art"
	xy.RequiresHandle = false
	xy:SetAttribute("ItemId", 603)
	xy.ToolTip = "Melee"
	Cy = e()
	Iy = e()
	xy.TextureId = "rbxassetid://138845532669661"
	cy = e()
	I = up3.Backpack
	ry = e()
	wy = e()
	xy.Parent = I
	o = closure(fn_4391649, {
		T
	})
	ey = e()
	Gy = e()
	zy = e()
	z[ry] = o
	o = closure(fn_2787169, {
		g,
		D
	})
	z[Gy] = o
	o = closure(fn_12212290, {
		D,
		g
	})
	z[wy] = o
	o = closure(fn_11102172, {
		H,
		up3
	})
	z[Iy] = o
	o = closure(fn_7722218, {
		Iy,
		q
	})
	ky = e()
	z[zy] = o
	o = closure(fn_3192623, {
		Iy,
		E,
		oy
	})
	z[Cy] = o
	Ny = e()
	o = closure(fn_12861849, {
		E
	})
	z[ey] = o
	Oy[2] = closure(fn_12615410, {
		t,
		Zy
	})
	o = closure(fn_2081294, {
		t,
		V,
		up3,
		D,
		g,
		ey,
		f,
		zy,
		Q,
		y,
		i,
		b,
		h,
		Cy,
		wy
	})
	z[Zy] = o
	o = closure(fn_9905013, {
		t,
		i,
		up3,
		py,
		ey,
		f,
		zy,
		m,
		Z,
		W
	})
	z[ky] = o
	o = closure(fn_5272890, {
		t,
		i,
		py,
		up3,
		k,
		ey,
		zy,
		m,
		Z,
		W,
		b,
		h,
		Cy
	})
	z[Ny] = o
	o = closure(fn_5493637, {
		t,
		b,
		up3,
		A,
		ey,
		f,
		zy,
		M,
		l
	})
	z[cy] = o
	o = closure(fn_11325595, {
		t,
		b,
		A,
		up3,
		ey,
		zy,
		R,
		Z,
		N,
		Y,
		a,
		i,
		h,
		Cy
	})
	z[yy] = o
	o = closure(fn_16103789, {
		t,
		h,
		up3,
		ry,
		uy,
		ey,
		f,
		F,
		zy,
		v,
		T,
		Z,
		n,
		X
	})
	z[Ly] = o
	o = closure(fn_4977525, {
		t,
		h,
		uy,
		up3,
		ey,
		F,
		ry,
		N,
		zy,
		m,
		Z,
		X,
		i,
		b,
		Cy,
		v
	})
	z[Oy[1]] = o
	c(zy)
	o = xy.Activated
	c(W)
	c(E)
	c(R)
	o:Connect(Oy[2])
	Oy[2] = closure(fn_3030631, {
		t,
		up3,
		H,
		Cy,
		Gy,
		P,
		Zy
	})
	o = xy.Equipped
	I = o.Connect
	c(Iy)
	I(o, Oy[2])
	c(n)
	c(X)
	o = xy.Unequipped
	Oy[2] = closure(fn_2847001, {
		t,
		ey,
		q,
		f,
		F,
		ry,
		Gy,
		V,
		P,
		i,
		py,
		b,
		A,
		h,
		uy
	})
	c(q)
	o:Connect(Oy[2])
	c(Q)
	c(i)
	I = up4
	c(N)
	Oy[2] = "InputBegan"
	c(Cy)
	c(Gy)
	c(Y)
	c(T)
	c(l)
	c(a)
	c(wy)
	c(f)
	c(A)
	o = I[Oy[2]]
	c(Z)
	c(V)
	c(m)
	c(uy)
	I = o.Connect
	c(M)
	c(b)
	Oy[2] = closure(fn_11241093, {
		up4,
		t,
		ky,
		cy,
		Ly,
		Zy
	})
	I(o, Oy[2])
	c(ky)
	I = up4
	c(Zy)
	c(v)
	Oy[2] = "InputEnded"
	o = I[Oy[2]]
	c(ey)
	c(P)
	c(oy)
	Oy[2] = closure(fn_12122137, {
		t,
		Ny,
		yy,
		Oy[1]
	})
	c(py)
	c(h)
	c(D)
	c(t)
	c(cy)
	c(F)
	c(yy)
	c(ry)
	c(Ly)
	c(Ny)
	c(H)
	Oy[1] = c(Oy[1])
	I = o.Connect
	c(y)
	I(o, Oy[2])
	c(g)
	c(k)
	return
::L7000464::
	sy:Destroy()
	goto L497659
::L14841628::
	ry = up3.Character
	sy = ry:FindFirstChild("Celestial Art")
	goto L9848862
end

function fn_13375221() -- entry L13375221, 9 blocks
::L13375221::
	I = up1
	if C then goto L2272486 end
::L10258046::
	if I then goto L257226 end
::L4360275::
	return
::L257226::
	up5()
	goto L4360275
::L2272486::
	Z = o
	C = not up2
	if k then goto L4383785 end
::L901666::
	I = C
	goto L10258046
::L4383785::
	N = o
	k = not up3
	if y then goto L758493 end
::L10046512::
	C = k
	goto L901666
::L758493::
	k = not up4
	goto L10046512
end

function fn_13407531(arg1, arg2, arg3) -- entry L13407531, 9 blocks
::L13407531::
	I = up1
	if C then goto L5903779 end
::L4687556::
	if I then goto L687426 end
::L2178564::
	return
::L687426::
	up5()
	goto L2178564
::L5903779::
	Z = o
	C = not up2
	if k then goto L1362053 end
::L3188629::
	I = C
	goto L4687556
::L1362053::
	N = o
	k = not up3
	if y then goto L6264272 end
::L11971155::
	C = k
	goto L3188629
::L6264272::
	k = not up4
	goto L11971155
end

function fn_13515166() -- entry L13515166, 1 blocks
::L13515166::
	setthreadidentity(up1)
	return
end

function fn_13606350(arg1, arg2, arg3, arg4) -- entry L13606350, 8 blocks
::L13606350::
	C = e()
	z[C] = arg1
	if z[C] then goto L11199402 end
::L11640006::
	c(C)
	return
::L11199402::
	o = ipairs
	N = z[C]
	N = {
		o(unpack({
			N:GetChildren()
		}))
	}
	k = N[3]
	Z = N[2]
	N = N[1]
::L13976442::
	k, W = N(Z, k)
	if k then goto L13646164 end
::L6372566::
	Z = task
	N = closure(fn_1564376, {
		C
	})
	Z.delay(1.5, N)
	goto L11640006
::L13646164::
	if W:IsA("ParticleEmitter") then goto L1163778 end
::L9893355::
	goto L13976442
::L1163778::
	W.Enabled = false
	goto L9893355
end

function fn_13777705(arg1) -- entry L13777705, 9 blocks
::L13777705::
	I = up1
	if C then goto L6974479 end
::L5522507::
	if I then goto L9288617 end
::L347588::
	return
::L9288617::
	up5()
	goto L347588
::L6974479::
	Z = o
	C = not up2
	if k then goto L4177650 end
::L9078436::
	I = C
	goto L5522507
::L4177650::
	k = not up3
	N = o
	if y then goto L8922960 end
::L5743483::
	C = k
	goto L9078436
::L8922960::
	k = not up4
	goto L5743483
end

function fn_13908668(arg1, arg2, arg3) -- entry L13908668, 1 blocks
::L13908668::
	up1 = false
	up2 = false
	return
end

function fn_13938108(arg1, arg2, arg3, arg4) -- entry L13938108, 14 blocks
::L13938108::
	C = arg1
	if up1 then goto L14844262 end
::L14685537::
	if not C:IsDescendantOf(up2) then goto L11139008 end
::L5288413::
	o = true
	up1 = true
	I = up3.Name
	Z = I:lower()
	l = {
		pairs(up4)
	}
	y = l[3]
	k = l[1]
	N = l[2]
::L11330117::
	y, l = k(N, y)
	if y then goto L12269229 end
::L8402758::
	N = up5
	up3.Parent = N
	up6(up3, true)
	task.wait()
	I = up7
	I:EquipTool(up3)
	task.wait(1)
	up1 = false
	return
::L12269229::
	I = e()
	z[I] = l
	l = I
	if string.find(Z,y) then goto L3008455 end
::L10019807::
	c(l)
	goto L11330117
::L3008455::
	I = up3
	Y = I:FindFirstChild("ToolIcon")
	a = e()
	z[a] = Y
	I = z[a]
	Y = o
	if X then goto L10814182 end
::L16069870::
	if I then goto L16372636 end
::L7465918::
	c(a)
	c(l)
	goto L8402758
::L16372636::
	X = closure(fn_2181190, {
		a,
		l
	})
	pcall(X)
	goto L7465918
::L10814182::
	X = z[a]
	I = X:IsA("ImageLabel")
	goto L16069870
::L11139008::
	return
::L14844262::
	return
end

function fn_13963726(arg1, arg2, arg3, arg4, arg5) -- entry L13963726, 14 blocks
::L13963726::
	I = up1.equipped
	if C then goto L6447518 end
::L15623557::
	if I then goto L12529521 end
::L9549860::
	return
::L12529521::
	up1.holdX = false
	up1.holdXFlag.Value = false
	I = up2.Character
	if C then goto L5094957 end
::L16766561::
	C = e()
	z[C] = I
	if z[C] then goto L106381 end
::L9263650::
	c(C)
	goto L9549860
::L106381::
	o = z[C].Position
	Z = e()
	z[Z] = o
	o = z[C].CFrame.LookVector
	N = e()
	k = o
	o = workspace
	I = o:GetServerTimeNow()
	z[N] = I
	l = CFrame.new(Vector3.zero, k)
	W = CFrame.Angles
	I = (l * W(0, math.rad(- 35), 0)).LookVector
	Y = CFrame.new(Vector3.zero, k)
	l = CFrame.Angles
	y = {
		k,
		I,
		(Y * l(0, math.rad(35), 0)).LookVector
	}
	Y = {
		ipairs(y)
	}
	W = Y[2]
	l = Y[3]
	Y = Y[1]
::L3521123::
	l, X = Y(W, l)
	if l then goto L3892342 end
::L12971964::
	task.wait(.2)
	if up1.equipped then goto L3882579 end
::L11267730::
	c(N)
	c(Z)
	goto L9263650
::L3882579::
	up5()
	goto L11267730
::L3892342::
	o = e()
	z[o] = X
	X = o
	o = task.spawn
	o(closure(fn_6008282, {
		up3,
		up2,
		C,
		Z,
		X,
		up4,
		N
	}))
	c(X)
	goto L3521123
::L5094957::
	C = up2.Character
	I = C:FindFirstChild("HumanoidRootPart")
	goto L16766561
::L6447518::
	I = up1.holdX
	goto L15623557
end

function fn_13983923(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L13983923, 1 blocks
::L13983923::
	k = e()
	C = e()
	z[C] = arg1
	y = closure(fn_5980848, {
		C,
		k,
		up3
	})
	z[k] = arg3
	c(C)
	c(k)
	up1()
	up2(1.2577049825842e+14, y)
	return
end

function fn_14300506(arg1, arg2, arg3, arg4) -- entry L14300506, 13 blocks
::L14300506::
	if not up1 then goto L2717192 end
::L886443::
	I = up2.Character
	if C then goto L16153468 end
::L16114086::
	C = up2.CharacterAdded
	I = C:Wait()
::L16153468::
	C = I
	o = C:WaitForChild("HumanoidRootPart")
	N = o
	Z = o
	k = up3.Hit
	if y then goto L10396687 end
::L4718382::
	I = k
	if k then goto L9904938 end
::L451563::
	I = Z.Position + (Z.CFrame.LookVector * 50)
::L9904938::
	k = I
	if (k-Z.Position).Magnitude>450 then goto L12650093 end
::L5180926::
	N = k + Vector3.new(0, 115, 0)
	y = CFrame.new(N)
	I = CFrame.Angles
	Y = "target"
	l = "char"
	y = y * I(math.rad(- 90), 0, 0)
	X = up4
	a = up3.Target
	if g then goto L8172360 end
::L10142699::
	a = workspace.Terrain
::L8172360::
	X({
		[l] = C,
		[Y] = a,
		max = 20,
		targetCF = y
	})
	return
::L12650093::
	return
::L10396687::
	k = up3.Hit.Position
	goto L4718382
::L2717192::
	return
end

function fn_14390499(arg1, arg2, arg3, arg4) -- entry L14390499, 1 blocks
::L14390499::
	o = up1
	o:Play("AngelZDisappear2", up2.Position, nil, .6, 1)
	o = up1
	o:Play("Angel A- Body Disappear", up2.Position, nil, .65, 1)
	o = up1
	o:Play("Angel A- Body Disappear_2", up2.Position, nil, .6, 1.1)
	return
end

function fn_14475830(arg1, arg2, arg3, arg4, arg5) -- entry L14475830, 11 blocks
::L14475830::
	I = up1
	if C then goto L10832105 end
::L9301455::
	if I then goto L15716703 end
::L907842::
	return
::L15716703::
	o = up1
	k = CFrame.new(up2)
	Z = CFrame.Angles
	C = k * Z(0, 0, unpack({
		math.rad(up3)
	}))
	o.CFrame = C
	I = up4
	if C then goto L16405528 end
::L15540597::
	if I then goto L10661289 end
::L4150827::
	goto L907842
::L10661289::
	C = up1.CFrame
	up4.CFrame = C
	goto L4150827
::L16405528::
	I = up4.Parent
	goto L15540597
::L10832105::
	Z = o
	C = up1.Parent
	if k then goto L8449704 end
::L2196080::
	I = C
	goto L9301455
::L8449704::
	C = up2
	goto L2196080
end

function fn_14493219(arg1) -- entry L14493219, 12 blocks
::L14493219::
	I = up1(1, 2) == 1
	if C then goto L15504397 end
::L10918140::
	I = up2 == up3
::L15504397::
	if I then goto L5446007 end
::L13587473::
	if up7 then goto L14722651 end
::L9747162::
	C = {}
	N = up9
	y = 1
	W = 1 < 0
	k = 1 - 1
::L9848705::
	k = k + y
	if (W and (k>=N)) or ((not W) and (k<=N)) then goto L12385572 end
::L3029476::
	Z = up11
	C[up10] = Z
	return unpack({up12(C)})
::L12385572::
	l = up1(0, 255)
	C[k] = l
	goto L9848705
::L14722651::
	error(up8, 0)
	goto L9747162
::L5446007::
	o = tonumber
	C = up4
	k = tostring
	l = pcall
	C = o(unpack({
		C(k(({
			unpack({
				l(closure(fn_5382754, {}))
			})
		})[2]), ":(%d*):")()
	}))
	I = up5
	if Z then goto L10219258 end
::L15520058::
	up5 = I
	goto L13587473
::L10219258::
	I = up6 == C
	goto L15520058
end

function fn_14568638(arg1, arg2, arg3) -- entry L14568638, 9 blocks
::L14568638::
	I = up1
	if C then goto L14883107 end
::L2537710::
	if I then goto L2496999 end
::L8859931::
	return
::L2496999::
	up5(up6.Grab, false)
	goto L8859931
::L14883107::
	Z = o
	C = not up2
	if k then goto L10801762 end
::L2892823::
	I = C
	goto L2537710
::L10801762::
	N = o
	k = not up3
	if y then goto L11741602 end
::L14509572::
	C = k
	goto L2892823
::L11741602::
	k = not up4
	goto L14509572
end

function fn_14579412() -- entry L14579412, 1 blocks
::L14579412::
	return "sgH"/(13391740-("OAk3Fnk0"^5556669))
end

function fn_14588281(arg1, arg2, arg3) -- entry L14588281, 6 blocks
::L14588281::
	N = {
		ipairs({
			"RipFamilyHideout",
			"Dimension",
			"Arena",
			"Pakistan Dimension",
			"RedLegionHideout"
		})
	}
	k = N[3]
	Z = N[2]
	N = N[1]
::L13682357::
	k, W = N(Z, k)
	if k then goto L16163039 end
::L8789274::
	return
::L16163039::
	o = workspace
	l = o:FindFirstChild(W)
	if l then goto L11065565 end
::L10718255::
	goto L13682357
::L11065565::
	l:Destroy()
	goto L10718255
end

function fn_14766355() -- entry L14766355, 3 blocks
::L14766355::
	if up1 then goto L9668727 end
::L10841915::
	return
::L9668727::
	up1({
		Character = up2,
		Holding = up3
	})
	goto L10841915
end

function fn_14942740(arg1) -- entry L14942740, 1 blocks
::L14942740::
	up1 = false
	return
end

function fn_15085195() -- entry L15085195, 6 blocks
::L15085195::
	N = {
		pairs(up1)
	}
	k = N[1]
	Z = N[3]
	C = N[2]
::L9930241::
	Z, y = k(C, Z)
	if Z then goto L7134538 end
::L8194826::
	up1 = {}
	return
::L7134538::
	if y then goto L4615663 end
::L921818::
	goto L9930241
::L4615663::
	y:Stop()
	goto L921818
end

function fn_15107752(arg1, arg2) -- entry L15107752, 1 blocks
::L15107752::
	o = up1
	k = up2
	y = up2
	o({
		Position0 = k,
		Position1 = y,
		Length = 60,
		Offset = 80,
		Thickness = 16,
		Lifetime = .3,
		Color = Color3.fromRGB(255, 255, 255)
	})
	return
end

function fn_15210239(arg1, arg2, arg3) -- entry L15210239, 6 blocks
::L15210239::
	N = {
		pairs(up1)
	}
	C = N[2]
	Z = N[3]
	k = N[1]
::L14058253::
	Z, y = k(C, Z)
	if Z then goto L16569335 end
::L4933140::
	return
::L16569335::
	W = y[1]
	l = W:FindFirstChild("HumanoidRootPart")
	if l then goto L12402094 end
::L6894372::
	goto L14058253
::L12402094::
	o = up2
	o:Play("Angel B- Enemy Chains", l.Position, nil, 1.1, 1)
	goto L6894372
end

function fn_15232284(arg1, arg2, arg3, arg4) -- entry L15232284, 5 blocks
::L15232284::
	I = up1.equipped
	if C then goto L10023058 end
::L7449725::
	if I then goto L16630213 end
::L1873297::
	return
::L16630213::
	up2()
	goto L1873297
::L10023058::
	I = not up1.holdX
	goto L7449725
end

function fn_15429099(arg1, arg2, arg3, arg4) -- entry L15429099, 1 blocks
::L15429099::
	up1 = true
	up2 = true
	return
end

function fn_15517569(arg1, arg2, arg3) -- entry L15517569, 1 blocks
::L15517569::
	C = arg1
	C:gsub("%s*[Ff]ruit%s*$", "")
	return "<"..(k:match("^%s*(.-)%s*$")..">")
end

function fn_15555300(arg1) -- entry L15555300, 5 blocks
::L15555300::
	I = up1.equipped
	if C then goto L5872031 end
::L1529440::
	if I then goto L8359173 end
::L10883424::
	return
::L8359173::
	up2()
	goto L10883424
::L5872031::
	I = not up1.holdZ
	goto L1529440
end

function fn_15705515(arg1, arg2, arg3, arg4) -- entry L15705515, 1 blocks
::L15705515::
	up1 = 400
	return
end

function fn_15818332(arg1, arg2) -- entry L15818332, 1 blocks
::L15818332::
	CFrame.new(Vector3.zero, arg1)
	return (N*k(0,math.rad(arg2),0)).LookVector
end

function fn_15848207(arg1) -- entry L15848207, 3 blocks
::L15848207::
	if up1 then goto L72831 end
::L9802922::
	return
::L72831::
	o = up1
	o:Destroy()
	goto L9802922
end

function fn_15852574(arg1, arg2, arg3, arg4, arg5) -- entry L15852574, 16 blocks
::L15852574::
	I = not up1
	if C then goto L5729569 end
::L12461109::
	I = not up2
::L5729569::
	if I then goto L8057392 end
::L4548215::
	up2 = false
	up3.Value = false
	C = up4.Character
	if not C then goto L15793582 end
::L16217915::
	Z = C:FindFirstChild("HumanoidRootPart")
	if not Z then goto L12008566 end
::L13865511::
	up5()
	if up6 then goto L13756404 end
::L4587956::
	up7()
	N = up8(Z, 120)
	k = e()
	z[k] = N
	if (#z[k])>0 then goto L11615801 end
::L5547437::
	y = up9(up16, false)
	up6 = y
	if up6 then goto L7339432 end
::L16348443::
	up12({
		Root = Z,
		Holding = nil,
		Victims = nil,
		Scale = 1,
		Character = C,
		player = up4,
		HoldDuration = 0
	})
::L3906897::
	c(k)
	return
::L7339432::
	N = up6.Stopped
	l = closure(fn_10637317, {
		up1,
		up13,
		up14,
		up2,
		up15
	})
	N:Connect(l)
	goto L16348443
::L11615801::
	up9(up10.Execute, false)
	y = Instance.new("BoolValue")
	N = e()
	z[N] = y
	z[N].Name = "atLeastOneVictim"
	Y = closure(fn_15848207, {
		N
	})
	z[N].Value = true
	z[N].Parent = Z
	task.delay(10, Y)
	y = up11
	y:Play("Angel C-Release", Z.Position, nil, .75, 1)
	y = up11
	y:Play("Angel C- Time Stop", Z.Position, nil, .7, 1.2)
	y = up11
	y:Play("Angel C- Time Ball Break", Z.Position, nil, .65, 1)
	y = task.delay
	y(2.5, closure(fn_12546043, {
		k,
		up11
	}))
	y = up12
	c(N)
	l = {
		Root = Z,
		Holding = nil,
		Victims = z[k],
		Scale = 1.5,
		Character = C,
		player = up4,
		HoldDuration = 3
	}
	Y = closure(fn_6894577, {
		up1,
		up13,
		up14,
		up2,
		up15
	})
	y(l)
	task.delay(.5, Y)
	goto L3906897
::L13756404::
	I = up6
	I:Stop()
	up6 = nil
	goto L4587956
::L12008566::
	return
::L15793582::
	return
::L8057392::
	return
end

function fn_16048417(arg1, arg2, arg3, arg4) -- entry L16048417, 1 blocks
::L16048417::
	up1 = 0
	up2 = nil
	return
end

function fn_16103789() -- entry L16103789, 17 blocks
::L16103789::
	I = not up1
	if C then goto L12465175 end
::L3364854::
	I = up2
::L12465175::
	if I then goto L2786895 end
::L2065117::
	C = up3.Character
	if not C then goto L691757 end
::L9959251::
	Z = e()
	o = C:FindFirstChild("HumanoidRootPart")
	z[Z] = o
	if not z[Z] then goto L2809975 end
::L5706341::
	up4()
	o = true
	up2 = true
	up5.Value = true
	up6()
	if up7 then goto L6179541 end
::L5439313::
	if up8 then goto L918379 end
::L8863246::
	y = up9(up10, false)
	up8 = y
	N = table.insert
	l = up11
	Y = up12
	V = z[Z].Position
	g = V + Vector3.new(0, 160, 0)
	N(l, unpack({
		Y:Play("Angel C- Angel Flames", g, nil, .65, 1.5)
	}))
	N = table.insert
	l = up11
	Y = up12
	N(l, unpack({
		Y:Play("Angel C- Circle Hold", z[Z].Position, nil, .7, 1)
	}))
	task.wait(.5)
	N = up2
	W = o
	if l then goto L14931986 end
::L2415955::
	if N then goto L204187 end
::L13267786::
	N = task.spawn
	Y = closure(fn_2213586, {
		up14,
		Z,
		up5
	})
	c(Z)
	N(Y)
	return
::L204187::
	W = up9(up13, true)
	up8 = W
	N = table.insert
	Y = up11
	a = up12
	N(Y, unpack({
		a:Play("Angel C- Arrow Fire", z[Z].Position, nil, .8, 1)
	}))
	goto L13267786
::L14931986::
	N = up1
	goto L2415955
::L918379::
	k = up8
	k:Stop()
	up8 = nil
	goto L8863246
::L6179541::
	I = up7
	I:Stop()
	up7 = nil
	goto L5439313
::L2809975::
	return
::L691757::
	return
::L2786895::
	return
end

function fn_16137764(arg1, arg2, arg3) -- entry L16137764, 3 blocks
::L16137764::
	if up1 then goto L10157313 end
::L16463870::
	return
::L10157313::
	up1({
		Character = up2,
		Holding = up3
	})
	goto L16463870
end

function fn_16186008(arg1, arg2) -- entry L16186008, 1 blocks
::L16186008::
	C = e()
	z[C] = {
		isActive = false,
		gui = nil,
		guiImage = nil,
		guiName = "RipKamui",
		imageId = "rbxassetid://123270704863428"
	}
	Z = closure(fn_13983923, {
		up1,
		up2,
		up3
	})
	z[C].loadModelAndTeleport = Z
	N = closure(fn_6513213, {
		up5,
		C
	})
	o = up4
	c(C)
	o("rip kamui", "kamui2", N)
	return
end

function fn_16219111() -- entry L16219111, 9 blocks
::L16219111::
	up1 = false
	up2()
	if up3 then goto L15229822 end
::L12287834::
	if up4 then goto L3030469 end
::L7258045::
	if up5 then goto L1354891 end
::L5730661::
	up6()
	up7()
	up8 = true
	if up9 then goto L7470711 end
::L1461147::
	up10 = false
	up11.Value = false
	up12 = false
	up13.Value = false
	up14 = false
	up15.Value = false
	return
::L7470711::
	N = up9
	N:Disconnect()
	up9 = nil
	goto L1461147
::L1354891::
	Z = up5
	Z:Stop()
	up5 = nil
	goto L5730661
::L3030469::
	C = up4
	C:Stop()
	up4 = nil
	goto L7258045
::L15229822::
	I = up3
	I:Stop()
	up3 = nil
	goto L12287834
end

function fn_16278437(arg1, arg2, arg3, arg4) -- entry L16278437, 1 blocks
::L16278437::
	up1 = true
	return
end

function fn_16547607(arg1) -- entry L16547607, 6 blocks
::L16547607::
	C = arg1
	I = workspace
	C.Parent = I
	Z = C:FindFirstChild("Spawn", true)
	if Z then goto L9792160 end
::L10452875::
	return
::L9792160::
	k = C:GetModelCFrame()
	N = k:ToObjectSpace(Z.CFrame)
	y = CFrame.new(up1.Position.X, up1.Position.Y + 99999, up1.Position.Z)
	I = y * N:Inverse()
	C:PivotTo(I)
	l = 3
	Y = 1
	a = 1 < 0
	W = 1 - 1
::L6484622::
	W = W + Y
	if (a and (W>=l)) or ((not a) and (W<=l)) then goto L13368730 end
::L5433760::
	up2(Z.Position)
	up3(C, "<Red_Legion Hideout>", "<Sea>", nil, nil)
	goto L10452875
::L13368730::
	o = up1
	V = CFrame.new(Z.Position)
	o.CFrame = V
	task.wait(.05)
	goto L6484622
end

function fn_16577149(...) -- MAIN CHUNK, 53 blocks
::L16577149::
	y = e()
	Y = closure(fn_11770827, {
		y
	})
	Z = e()
	N = e()
	z[Z] = true
	o = string.gmatch
	k = e()
	z[k] = o
	o = closure(fn_667383, {})
	z[N] = o
	z[y] = false
	I = pcall(Y)
	if l then goto L11018049 end
::L8273476::
	o = math.random
	l = e()
	z[l] = o
	a = table
	X = table.concat
	if g then goto L5759234 end
::L11095337::
	I = a
	if a then goto L10820724 end
::L15963149::
	I = unpack
::L10820724::
	a = e()
	z[a] = I
	t = closure(fn_14579412, {})
	I = z[l](3, 65)
	X = e()
	g = 0
	z[X] = I
	V = 0
	t = ({
		unpack({
			pcall(t)
		})
	})[2]
	o = tonumber
	P = z[k]
	I = o(unpack({
		P(tostring(t), ":(%d*):")()
	}))
	P = e()
	z[P] = I
	m = z[X]
	M = 1
	R = 1 < 0
	Q = 1 - 1
::L1906874::
	Q = Q + M
	if (R and (Q>=m)) or ((not R) and (Q<=m)) then goto L14385176 end
::L1887489::
	Q = z[Z]
	if m then goto L190801 end
::L6718182::
	z[Z] = Q
	o = z[Z]
	if o then goto L9718529 end
::L2767388::
::L14647186::
	return unpack({closure(fn_5405770, {N})()})
::L9718529::
::L3061995::
	c(k)
	c(P)
	c(X)
	k = o
	c(a)
	c(Z)
	c(N)
	c(y)
	y = o
	c(l)
	N = not game
	if W then goto L7963762 end
::L15820569::
	Z = N
	o = y
	if N then goto L8919117 end
::L4141289::
	y = o
	N = game.ClassName ~= "DataModel"
	if W then goto L13407808 end
::L36734::
	a = o
	Y = typeof
	l = o
	if X then goto L2115447 end
::L16656001::
	o = a
	W = Y
	if Y then goto L2111409 end
::L11351964::
	X = o
	a = getmetatable
	if g then goto L15899941 end
::L5415928::
	W = not a
::L2111409::
	N = W
::L13407808::
	Z = N
::L8919117::
	if Z then goto L9819307 end
::L13607845::
	g = closure(fn_3148917, {})
	Z = {}
	k = require
	W = game
	N = k(W:GetService("ReplicatedStorage").Notification)
	k = e()
	z[k] = N
	N = game
	y = N:GetService("Players")
	N = game
	W = N:GetService("RunService")
	N = e()
	z[N] = W
	W = game
	l = W:GetService("UserInputService")
	W = e()
	z[W] = l
	l = game
	Y = l:GetService("ReplicatedStorage")
	l = e()
	z[l] = Y
	Y = game
	a = Y:GetService("CollectionService")
	Y = e()
	z[Y] = a
	a = y.LocalPlayer
	X = e()
	z[X] = a
	a = e()
	z[a] = g
	g = closure(fn_6648710, {
		k,
		l,
		a,
		X,
		N,
		W
	})
	Z.GiveDarkBlade = g
	g = closure(fn_9888486, {
		k,
		l,
		X,
		W
	})
	Z.GiveDivineArt = g
	g = closure(fn_13327479, {
		k,
		l,
		X,
		W
	})
	Z.GiveCelestialArt = g
	g = closure(fn_5828991, {
		k,
		X,
		a,
		Y
	})
	Z.GiveFruitRain = g
	g = closure(fn_8327861, {
		k,
		X,
		a,
		N
	})
	Z.GiveAllKamuis = g
	g = closure(fn_9931154, {
		k,
		l,
		X
	})
	Z.GiveTensei = g
	g = closure(fn_10580638, {
		k,
		l,
		X,
		W
	})
	Z.GiveBlackBlast = g
	g = closure(fn_13087922, {
		k,
		l,
		X,
		W
	})
	Z.GiveBlackNuke = g
	g = closure(fn_7509338, {
		k,
		l,
		X,
		W
	})
	Z.GiveRougeFruit = g
	g = closure(fn_7804891, {
		k,
		a
	})
	Z.SummonIsland = g
	if getgenv then goto L16202725 end
::L7493438::
	c(a)
	c(N)
	c(W)
	c(l)
	c(k)
	_G.VisualsM = Z
	c(X)
	c(Y)
	return Z
::L16202725::
	getgenv().VisualsM = Z
	goto L7493438
::L9819307::
::L9619230::
	task.wait()
	warn("stop skidding - flazhy")
	if not (false) then goto L9619230 end
::L1993181::
	goto L13607845
::L15899941::
	V = o
	g = setmetatable
	if D then goto L13583300 end
::L7675736::
	a = g
	goto L5415928
::L13583300::
	t = o
	D = type
	if P then goto L13310654 end
::L14098905::
	g = D
	goto L7675736
::L13310654::
	R = o
	P = pcall
	if n then goto L11400361 end
::L13400056::
	D = P
	goto L14098905
::L11400361::
	v = o
	n = rawget
	if q then goto L16643111 end
::L9541837::
	P = n
	goto L13400056
::L16643111::
	n = rawset
	goto L9541837
::L2115447::
	Y = typeof(game.Players) ~= "Instance"
	goto L16656001
::L7963762::
	l = o
	W = game.GetService
	if Y then goto L11306566 end
::L15069327::
	N = W
	goto L15820569
::L11306566::
	Y = game
	W = Y:GetService("RunService")
	goto L15069327
::L190801::
	Q = g == V
	goto L6718182
::L14385176::
	n = e()
	z[n] = Q
	I = math.random(1, 100)
	v = e()
	z[v] = I
	I = z[l](0, 255)
	q = e()
	z[q] = I
	I = z[l](1, z[v])
	f = e()
	z[f] = I
	o = z[l](1, 2) == 1
	F = e()
	z[F] = o
	b = tostring
	H = ":" .. (b(unpack({
		z[l](0, 10000)
	})) .. ":")
	o = t:gsub(":(%d*):", H)
	H = e()
	z[H] = o
	I = pcall
	i = {
		unpack({
			I(closure(fn_14493219, {
				l,
				n,
				X,
				k,
				Z,
				P,
				F,
				H,
				v,
				f,
				q,
				a
			}))
		})
	}
	o = z[F]
	if o then goto L8034687 end
::L5219455::
	py = z[Z]
	if b then goto L5759099 end
::L5411756::
	z[Z] = py
	g = (g + i[z[f] + 1]) % 256
	V = (V + z[q]) % 256
::L8006201::
	c(f)
	c(F)
	c(n)
	c(H)
	c(v)
	c(q)
	goto L1906874
::L5759099::
	py = i[1]
	goto L5411756
::L8034687::
	I = z[Z]
	if py then goto L7196173 end
::L5574877::
	z[Z] = I
	goto L8006201
::L7196173::
	b = o
	py = i[1] == false
	if A then goto L8091475 end
::L4685592::
	I = py
	goto L5574877
::L8091475::
	py = i[2] == z[H]
	goto L4685592
::L5759234::
	a = table.unpack
	goto L11095337
::L11018049::
	I = z[y]
	goto L8273476
end