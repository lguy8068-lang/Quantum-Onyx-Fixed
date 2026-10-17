--[[
	testers.lua - lifted out of a flattened-VM obfuscator into a labelled-block ("goto") listing.
	DONE: all 1624 string constants decoded; every dispatcher block became one labelled block; jumps rewritten as goto;
	one-use temporaries inlined (liveness analysis); registers/arguments/upvalues renamed; closures shown as closure(fn_PC, {...}).
	NOT DONE: if/while/for structure is not rebuilt, so this is a readable listing, not runnable source.
	Conventions: argN = function argument N, upN = captured variable N, z[X]/f[X] = local-variable slot, ENV = global environment.
	ne[k] = scratch register array used by this build of the VM.
--]]

function fn_22186() -- entry L22186, 3 blocks
::L22186::
	if not up1 then goto L6327778 end
::L675306::
	up1 = false
	d = up2
	i = up3
	W = {
		Size = UDim2.new(0, up4 * .5, 0, up5 * .5),
		BackgroundTransparency = .6
	}
	R = d.Tween
	o = Enum.EasingStyle.Quint
	j = Enum.EasingDirection.In
	R(d, i, W, .22, o, j, closure(fn_8262362, {
		up3,
		up6,
		up4,
		up5,
		up7
	}))
	return
::L6327778::
	return
end

function fn_31869(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L31869, 1 blocks
::L31869::
	return unpack({UDim2.new(0,W.X-N.X,0,W.Y-N.Y)})
end

function fn_38848(arg1, arg2, arg3) -- entry L38848, 1 blocks
::L38848::
	up1.Playing = true
	c = up1
	c:Play()
	return
end

function fn_64016(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) -- entry L64016, 5 blocks
::L64016::
	W = O()
	i = arg2
	f[W] = arg3
	N = arg4
	if not checkCondition(arg5) then goto L10765562 end
::L13836868::
	d = f[W]
	if K then goto L7281913 end
::L16376956::
	d = closure(fn_2766523, {})
::L7281913::
	f[W] = d
	c = up2
	x = ThemeColor("Primary")
	ne[5] = "Enum"
	ne[8] = "MakeTextConstraint"
	b = UDim2.new(1, - 25, 0, 32)
	H = up2
	Fe = H("UICorner", {
		CornerRadius = UDim.new(0, 6)
	})
	H = up2
	fe = UDim2.new(0, 12, 0, 0)
	Oe = UDim2.new(1, - 36, 1, 0)
	ne[1] = "TextTruncate"
	ie = Enum.Font.GothamBold
	oe = Color3
	ne[10] = 8
	ne[9] = 15
	oe = oe.fromRGB(210, 210, 220)
	se = Enum.TextXAlignment.Left
	ne[4] = ENV[ne[5]]
	ne[5] = "TextTruncate"
	ne[3] = ne[4][ne[5]]
	ne[5] = "Children"
	ne[4] = "AtEnd"
	ne[2] = ne[3][ne[4]]
	ne[3] = "ZIndex"
	ne[7] = ENV[ne[8]]
	ne[4] = 3
	ne[8] = {
		ne[7](ne[9], ne[10])
	}
	ne[6] = {
		unpack(ne[8])
	}
	Je = H("TextLabel", {
		Name = "ButtonLabel",
		BackgroundTransparency = 1,
		Position = fe,
		Size = Oe,
		Font = ie,
		Text = i,
		TextColor3 = oe,
		TextXAlignment = se,
		TextWrapped = false,
		TextScaled = true,
		[ne[1]] = ne[2],
		[ne[3]] = ne[4],
		[ne[5]] = ne[6]
	})
	ne[1] = 132
	H = up2
	Re = Vector2.new(1, .5)
	ie = UDim2.new(1, - 12, .5, 0)
	Ne = UDim2.new(0, 14, 0, 14)
	he = Enum.Font.GothamBold
	ne[2] = 252
	qe = Color3.fromRGB(192, ne[1], ne[2])
	ne[2] = 3
	ne[1] = "ZIndex"
	T = {
		BackgroundColor3 = x,
		BackgroundTransparency = .4,
		BorderSizePixel = 0,
		Size = b,
		AutoButtonColor = false,
		Text = "",
		ClipsDescendants = true,
		Children = {
			Fe,
			Je,
			unpack({
				H("TextLabel", {
					Name = "Arrow",
					BackgroundTransparency = 1,
					AnchorPoint = Re,
					Position = ie,
					Size = Ne,
					Font = he,
					Text = "\226\128\186",
					TextColor3 = qe,
					TextScaled = true,
					[ne[1]] = ne[2]
				})
			})
		}
	}
	K = c("TextButton", T, up3)
	l = O()
	f[l] = K
	up4(f[l], i)
	c = f[l]
	K = c:FindFirstChild("Arrow")
	T = O()
	f[T] = K
	c = f[l]
	K = c:FindFirstChild("ButtonLabel")
	t = O()
	f[t] = K
	RegisterTranslatable(f[t], i)
	c = f[l].MouseEnter
	e = closure(fn_16349111, {
		up5,
		l,
		t,
		T
	})
	c:Connect(e)
	c = f[l].MouseLeave
	e = closure(fn_6283193, {
		up5,
		l,
		t,
		T
	})
	c:Connect(e)
	c = f[l].MouseButton1Click
	e = closure(fn_15187645, {
		l,
		up6,
		up5,
		T,
		W
	})
	c:Connect(e)
	c = RegisterKeyLocked
	h(t)
	h(W)
	e = f[l]
	h(T)
	h(l)
	c(e, N)
	return
::L10765562::
	return up1
end

function fn_86680(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L86680, 13 blocks
::L86680::
	R = arg1
	if R.UserInputType~=Enum.UserInputType.Keyboard then goto L2259418 end
::L3323665::
	if R.KeyCode==Enum.KeyCode.Unknown then goto L16025651 end
::L14121574::
	if up1 then goto L4169745 end
::L5411181::
	if i:GetFocusedTextBox() then goto L9620979 end
::L9835304::
	if R.KeyCode==up2 then goto L11415695 end
::L570149::
	return
::L11415695::
	up6()
	goto L570149
::L9620979::
	return
::L4169745::
	c = R.KeyCode
	up2 = c
	d = up3
	d:Save("_opt_UIKeybind", R.KeyCode.Name)
	up1 = false
	if up4 then goto L11426750 end
::L5712833::
	return
::L11426750::
	N = R.KeyCode.Name
	up4.Text = N
	goto L5712833
::L16025651::
	return
::L2259418::
	return
end

function fn_146614(arg1, arg2) -- entry L146614, 1 blocks
::L146614::
	c = up1
	d = c.Tween
	R = up2
	i = {
		BackgroundColor3 = Color3.new(up3 * .12, up4 * .12, up5 * .12)
	}
	d(c, R, i, .18, Enum.EasingStyle.Quint)
	c = up1
	c:Tween(up6, {
		Transparency = .5
	}, .18)
	return
end

function fn_161449(arg1, arg2, arg3, arg4, arg5) -- entry L161449, 7 blocks
::L161449::
	R = arg1
	i = arg2
	d = not R
	if W then goto L4889936 end
::L14547379::
	N = c
	W = not i
	if o then goto L15465974 end
::L461036::
	W = i == ""
::L15465974::
	d = W
::L4889936::
	if d then goto L15328548 end
::L11268198::
	up1.RegisteredElements[R] = {
		original = i
	}
	return
::L15328548::
	return
end

function fn_186586(arg1, arg2, arg3, arg4, arg5) -- entry L186586, 3 blocks
::L186586::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .1
	}, .15, Enum.EasingStyle.Quint)
	if up3 then goto L9615651 end
::L14607662::
	return
::L9615651::
	c = up1
	R = up3
	d = c.Tween
	d(c, R, {
		TextColor3 = Color3.fromRGB(235, 220, 255)
	}, .15)
	goto L14607662
end

function fn_221993(arg1, arg2, arg3, arg4, arg5) -- entry L221993, 5 blocks
::L221993::
	R = O()
	W = closure(fn_11352211, {
		R
	})
	f[R] = arg1
	N = {
		pcall(W)
	}
	i = N[2]
	d = N[1]
	if W then goto L13804840 end
::L2124558::
	if d then goto L9980888 end
::L9190197::
	return nil
::L9980888::
	return "QH-SAVE:"..i
::L13804840::
	d = i
	goto L2124558
end

function fn_235078(arg1, arg2) -- entry L235078, 11 blocks
::L235078::
	if not up1 then goto L2452503 end
::L9252254::
	CircleClick(up2, up3.X, up3.Y)
	c = up4
	R = c:Get("_saveSlots", {})
	i = R[up1]
	d = i
	if i then goto L1445536 end
::L5827344::
	if d then goto L9948423 end
::L16076728::
	return
::L9948423::
	c = up4
	c:ApplySnapshot(i.data, true)
	d = "ActiveProfile"
	N = up4
	W = i.name
	if o then goto L1304084 end
::L3677247::
	W = "Slot " .. f[up1]
::L1304084::
	N[d] = W
	if up5 then goto L4315627 end
::L12595347::
	c = up6.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "Applied profile \"" .. ((i.name or "Slot") .. "\" to all controls.")
	}, {
		Time = 3
	})
	RefreshSlots()
	goto L16076728
::L4315627::
	c = up5
	N = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", up4.ActiveProfile)
	c.Text = N
	goto L12595347
::L1445536::
	d = i.data
	goto L5827344
::L2452503::
	return
end

function fn_242027(arg1, arg2) -- entry L242027, 1 blocks
::L242027::
	c = up1
	c:Tween(up2, {
		Transparency = .42
	}, .2)
	c = up1
	c:Tween(up3, {
		BackgroundTransparency = 0
	}, .2)
	return
end

function fn_264781(arg1) -- entry L264781, 10 blocks
::L264781::
	i = up1
	o = up2
	R = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=" .. (i .. ("&dt=t&q=" .. o:UrlEncode(up3)))
	c = game
	i = c:HttpGet(R)
	c = up2
	W = c:JSONDecode(i)
	d = W
	N = ""
	if W then goto L4628755 end
::L1825996::
	if d then goto L493268 end
::L7609849::
	return N
::L493268::
	l = {
		ipairs(W[1])
	}
	o = l[2]
	j = l[3]
	K = l[1]
::L8525438::
	j, T = K(o, j)
	if j then goto L8747785 end
::L13513499::
	goto L7609849
::L8747785::
	if T[1] then goto L12567913 end
::L16652986::
	goto L8525438
::L12567913::
	N = N .. T[1]
	goto L16652986
::L4628755::
	d = W[1]
	goto L1825996
end

function fn_269883(arg1, arg2, arg3) -- entry L269883, 1 blocks
::L269883::
	up1.Visible = false
	up2.Visible = false
	c = up3
	c:DestroyGui()
	return
end

function fn_362657(arg1, arg2, arg3, arg4, arg5) -- entry L362657, 1 blocks
::L362657::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .2
	}, .12)
	return
end

function fn_391553(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L391553, 5 blocks
::L391553::
	R = arg1
	d = type(R) ~= "string"
	if o then goto L11166761 end
::L9323368::
	d = R == ""
::L11166761::
	if d then goto L7867191 end
::L3840937::
	return R
::L7867191::
	return ""
end

function fn_424491(arg1, arg2) -- entry L424491, 3 blocks
::L424491::
	if up1 then goto L8416286 end
::L9445970::
	up1 = true
	d = task.defer
	d(closure(fn_4351594, {
		up1
	}))
	return
::L8416286::
	return
end

function fn_494216(arg1, arg2, arg3, arg4) -- entry L494216, 1 blocks
::L494216::
	i = arg2
	R = O()
	f[R] = arg1
	c = f[R]
	c:SetAttribute("STX_SearchElement", true)
	c = {
		tabButton = up1,
		scrollFrame = up2,
		sectionScroll = up3,
		sectionFrame = up4,
		elementFrame = f[R],
		tabTitle = up5,
		menuTitle = up6,
		title = i or "",
		favKey = (up5 or "") .. ("|" .. ((up6 or "") .. ("|" .. (i or ""))))
	}
	W = O()
	f[W] = c
	table.insert(up7, f[W])
	N = up8
	K = O()
	o = f[W]
	N.Entries[f[W].favKey] = o
	N = O()
	o = O()
	d = closure(fn_4211525, {
		up8,
		W
	})
	j = O()
	f[N] = d
	d = closure(fn_16748999, {
		up8,
		W,
		up9,
		up10,
		up11,
		R,
		up12
	})
	f[o] = d
	d = closure(fn_2277973, {
		R,
		N,
		up11,
		o
	})
	f[j] = d
	f[K] = 0
	d = Vector2.zero
	l = O()
	f[l] = d
	d = f[R].InputBegan
	T = d.Connect
	h(W)
	h(N)
	t = closure(fn_3665984, {
		j,
		K,
		l,
		o
	})
	h(j)
	h(l)
	h(R)
	T(d, t)
	h(K)
	h(o)
	return
end

function fn_539697(arg1, arg2, arg3, arg4, arg5) -- entry L539697, 4 blocks
::L539697::
	R = arg1
	if arg2 then goto L455648 end
::L114974::
	up1.SetUIScalePreview(R)
::L2433814::
	return
::L455648::
	up1.ApplyUIScale(R)
	goto L2433814
end

function fn_586595(arg1, arg2, arg3, arg4, arg5) -- entry L586595, 1 blocks
::L586595::
	up1 = arg1
	up2()
	return
end

function fn_637794() -- entry L637794, 1 blocks
::L637794::
	up1.NavigateToSearchEntry(up2)
	up3()
	return
end

function fn_714964(arg1, arg2) -- entry L714964, 3 blocks
::L714964::
	if up1.Refresh then goto L13050694 end
::L9003345::
	return
::L13050694::
	up1.Refresh()
	goto L9003345
end

function fn_775728(arg1, arg2, arg3) -- entry L775728, 1 blocks
::L775728::
	return unpack({c(unpack({readfile(up1)}))})
end

function fn_875084(arg1, arg2, arg3) -- entry L875084, 3 blocks
::L875084::
	if up1 then goto L15540299 end
::L4363749::
	d = Instance.new("VideoFrame")
	up1 = d
	up1.Name = "BodyVideo"
	up1.BackgroundTransparency = 1
	up1.BorderSizePixel = 0
	c = up1
	W = UDim2.new(1, 0, 1, 0)
	c.Size = W
	up1.Visible = true
	up1.Looped = true
	up1.Volume = 0
	up1.ZIndex = 0
	i = up2
	up1.Parent = i
	return
::L15540299::
	c = up1
	c:Destroy()
	goto L4363749
end

function fn_910904(arg1, arg2, arg3, arg4) -- entry L910904, 3 blocks
::L910904::
	if not d:IsFocused() then goto L13861059 end
::L6377712::
	return
::L13861059::
	up2()
	goto L6377712
end

function fn_928131(arg1, arg2) -- entry L928131, 7 blocks
::L928131::
	c = not up1
	up1 = c
	up2 = ""
	up3.Text = ""
	W = up1
	up3.Visible = W
	up4.BuildLangItems()
	j = c
	N = # up4.GetFilteredLanguages()
	W = up4.CalcListHeight(N)
	o = up1
	if K then goto L14974463 end
::L7451321::
	c = j
	R = o or 0
	K = c
	j = up1
	o = c
	if l then goto L5659608 end
::L11892217::
	N = j
	if j then goto L16269261 end
::L430279::
	N = Enum.EasingDirection.In
::L16269261::
	o = up7
	K = up8
	l = {
		Size = UDim2.new(1, - (up9 * 2), 0, R)
	}
	o:Tween(K, l, .25, Enum.EasingStyle.Quint, N)
	o = up7
	K = up10
	l = {
		Size = UDim2.new(1, 0, 0, W)
	}
	o:Tween(K, l, .25, Enum.EasingStyle.Quint, N)
	return
::L5659608::
	j = Enum.EasingDirection.Out
	goto L11892217
::L14974463::
	o = (up5 + up6) + W
	goto L7451321
end

function fn_952040(arg1, arg2, arg3, arg4, arg5) -- entry L952040, 4 blocks
::L952040::
	up1 = false
	o = {
		pairs(up2)
	}
	W = o[3]
	i = o[2]
	R = o[1]
::L1174777::
	W, o = R(i, W)
	if W then goto L1691208 end
::L10491041::
	return
::L1691208::
	N = W
	up2[N] = nil
	FitScrollCanvas(N, o.layout, o.axis, o.pad)
	goto L1174777
end

function fn_975388(arg1, arg2, arg3) -- entry L975388, 1 blocks
::L975388::
	up1.ApplyUIFont(up2)
	up1.BuildFontCards()
	c = up3.Notification
	c:Notify({
		Title = "Font",
		Description = "Applied " .. f[up2]
	}, {
		Time = 2
	})
	return
end

function fn_980865() -- entry L980865, 5 blocks
::L980865::
	up1.Play(up2, up3, .2, Enum.EasingStyle.Quint)
	d = up4
	if R then goto L5649449 end
::L10185134::
	if d then goto L15992691 end
::L3550436::
	return
::L15992691::
	up1.Play(up4, up5, .2)
	goto L3550436
::L5649449::
	d = up5
	goto L10185134
end

function fn_1009404() -- entry L1009404, 6 blocks
::L1009404::
	task.wait(.08)
	R = closure(fn_5541782, {
		up1
	})
	pcall(R)
	R = tick()
::L7003809::
	if (tick()-R)<5 then goto L6853187 end
::L5361745::
	return
::L6853187::
	i = O()
	f[i] = false
	c = pcall
	c(closure(fn_6715438, {
		up1,
		i
	}))
	if f[i] then goto L15057833 end
::L7853584::
	task.wait(.2)
	h(i)
	goto L7003809
::L15057833::
	W = closure(fn_5640063, {
		up1
	})
	h(i)
	pcall(W)
	goto L5361745
end

function fn_1049849(arg1, arg2, arg3) -- entry L1049849, 1 blocks
::L1049849::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .35
	}, .15)
	c = up1
	R = up3
	d = c.Tween
	d(c, R, {
		TextColor3 = Color3.fromRGB(230, 220, 255)
	}, .15)
	return
end

function fn_1128392(arg1, arg2) -- entry L1128392, 1 blocks
::L1128392::
	return up1
end

function fn_1245475(arg1) -- entry L1245475, 5 blocks
::L1245475::
	up1()
	d = up2
	if R then goto L5242133 end
::L6475945::
	if d then goto L7474739 end
::L9749971::
	return
::L7474739::
	c = up2
	c:Destroy()
	goto L9749971
::L5242133::
	d = up2.Parent
	goto L6475945
end

function fn_1323226(arg1, arg2) -- entry L1323226, 1 blocks
::L1323226::
	c = up1
	R = up2
	d = c.Tween
	i = {
		Position = UDim2.new(1, - 9, .5, 0)
	}
	d(c, R, i, .25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	return
end

function fn_1325887(arg1, arg2) -- entry L1325887, 34 blocks
::L1325887::
	i = arg2
	R = arg1
	c = ipairs
	o = up1
	o = {
		c(unpack({
			o:GetChildren()
		}))
	}
	N = o[3]
	W = o[2]
	o = o[1]
::L4066969::
	N, K = o(W, N)
	if N then goto L6936863 end
::L11123281::
	W = 0
	c = 0
	N = 0
	o = i == ""
	if j then goto L4718144 end
::L7854276::
	K = c
	j = not R
	if l then goto L9036503 end
::L11210265::
	j = (# R) == 0
::L9036503::
	o = j
::L4718144::
	if o then goto L15423018 end
::L12926213::
	o = {}
	c = ipairs
	T = {
		c(R)
	}
	l = T[3]
	j = T[1]
	K = T[2]
::L8081733::
	l, t = j(K, l)
	if l then goto L7473365 end
::L335387::
	t = {
		pairs(o)
	}
	l = t[2]
	K = t[1]
	T = t[3]
::L15354464::
	T, t = K(l, T)
	if T then goto L1261835 end
::L10600596::
	K = c
	j = W <= 0
	if l then goto L14881178 end
::L7305495::
	j = N <= 0
::L14881178::
	c = K
	if j then goto L5853863 end
::L12180440::
	j = math.max
	v = 0
	A = 0
	j = N > (j(UnscaledLayout(up1.AbsoluteSize.Y), 1) + 1)
	P = c
	l = up1
	S = j
	T = "CanvasSize"
	t = UDim2.new
	u = 0
	if j then goto L4553006 end
::L266408::
	B = t(u, A, v, S or 0)
	l[T] = B
	up1.ScrollingEnabled = j
	t = Enum.ElasticBehavior.Never
	up1.ElasticBehavior = t
	up1.Visible = true
	return N
::L4553006::
	S = N
	goto L266408
::L5853863::
	up1.Visible = false
	j = up1
	T = UDim2.new(1, - 8, 0, 0)
	j.Size = T
	j = up1
	T = UDim2.new(0, 0, 0, 0)
	j.CanvasSize = T
	up1.ScrollingEnabled = false
	return 0
::L1261835::
	W = W + 1
	N = (N + 16) + 2
	B = up2
	S = UDim2.new(1, 0, 0, 16)
	P = Enum.Font.GothamBold
	Fe = Color3.fromRGB(192, 132, 252)
	B("TextLabel", {
		BackgroundTransparency = 1,
		Size = S,
		Font = P,
		Text = "" .. T,
		TextColor3 = Fe,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = W,
		ZIndex = 10001
	}, up1)
	L = {
		pairs(t)
	}
	A = L[2]
	v = L[3]
	u = L[1]
::L10337283::
	v, L = u(A, v)
	if v then goto L10124704 end
::L7872931::
	goto L15354464
::L10124704::
	W = W + 1
	N = (N + 14) + 2
	z = up2
	Je = UDim2.new(1, - 8, 0, 14)
	k = Enum.Font.GothamSemibold
	Ge = Color3.fromRGB(160, 130, 200)
	z("TextLabel", {
		BackgroundTransparency = 1,
		Size = Je,
		Font = k,
		Text = "  \226\148\148 " .. v,
		TextColor3 = Ge,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = W,
		ZIndex = 10001
	}, up1)
	E = {
		ipairs(L)
	}
	S = E[1]
	P = E[2]
	y = E[3]
::L9863525::
	y, E = S(P, y)
	if y then goto L9444846 end
::L5529679::
	goto L10337283
::L9444846::
	ne[2] = "Enum"
	Y = O()
	f[Y] = E
	E = Y
	ne[12] = "UDim"
	W = W + 1
	N = (N + 20) + 2
	Fe = up2
	Ze = Color3.fromRGB(22, 20, 28)
	fe = UDim2.new(1, - 12, 0, 20)
	Re = Enum.Font.Gotham
	ne[3] = "Children"
	ne[9] = "CornerRadius"
	Ne = f[E].title or ""
	ne[7] = "UICorner"
	he = Color3.fromRGB(210, 195, 230)
	ne[13] = 4
	Ce = Enum.TextXAlignment.Left
	ne[1] = ENV[ne[2]]
	ne[2] = "TextTruncate"
	ge = ne[1][ne[2]]
	ne[1] = "AtEnd"
	qe = ge[ne[1]]
	ne[2] = 10001
	ne[5] = up2
	ne[1] = "ZIndex"
	ne[11] = ENV[ne[12]]
	ne[12] = "new"
	ne[10] = ne[11][ne[12]]
	ne[12] = 0
	ne[11] = ne[10](ne[12], ne[13])
	ne[8] = {
		[ne[9]] = ne[11]
	}
	ne[6] = {
		ne[5](ne[7], ne[8])
	}
	ne[4] = {
		unpack(ne[6])
	}
	Fe = Fe("TextButton", {
		BackgroundColor3 = Ze,
		BackgroundTransparency = .35,
		Size = fe,
		Font = Re,
		Text = "      \226\128\162 " .. Ne,
		TextColor3 = he,
		TextSize = 9,
		TextXAlignment = Ce,
		TextTruncate = qe,
		LayoutOrder = W,
		[ne[1]] = ne[2],
		[ne[3]] = ne[4]
	}, up1).MouseButton1Click
	Qe = closure(fn_637794, {
		up3,
		E,
		up4
	})
	h(E)
	Fe:Connect(Qe)
	goto L9863525
::L7473365::
	e = t.tabTitle or "Tab"
	B = c
	x = o[e]
	if u then goto L8312661 end
::L8909344::
	x = {}
::L8312661::
	c = B
	o[e] = x
	x = t.menuTitle or "Section"
	B = o[e]
	A = c
	u = o[e][x]
	if v then goto L12609151 end
::L11183021::
	u = {}
::L12609151::
	B[x] = u
	c = A
	table.insert(o[e][x], t)
	goto L8081733
::L15423018::
	up1.Visible = false
	c = up1
	K = UDim2.new(1, - 8, 0, 0)
	c.Size = K
	c = up1
	K = UDim2.new(0, 0, 0, 0)
	c.CanvasSize = K
	return 0
::L6936863::
	if K:IsA("GuiObject") then goto L1972152 end
::L8841100::
	goto L4066969
::L1972152::
	K:Destroy()
	goto L8841100
end

function fn_1396406(arg1, arg2, arg3, arg4) -- entry L1396406, 1 blocks
::L1396406::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .4
	}, .18)
	return
end

function fn_1471334() -- entry L1471334, 5 blocks
::L1471334::
	i = c
	R = up1
	if W then goto L4280181 end
::L2238995::
	c = i
	d = R
	if R then goto L1737439 end
::L16649164::
	d = up3[up4[1]] or "None"
::L1737439::
	return d
::L4280181::
	R = up2()
	goto L2238995
end

function fn_1482138(arg1) -- entry L1482138, 8 blocks
::L1482138::
	CircleClick(up1, up2.X, up2.Y)
	c = up3
	R = c:GetSnapshot()
	c = up3
	i = c:Get("_saveSlots", {})
	W = up3.ActiveProfile or "[Auto]"
	N = false
	l = {
		ipairs(i)
	}
	K = l[3]
	o = l[1]
	j = l[2]
::L14279262::
	K, T = o(j, K)
	if K then goto L7197737 end
::L13294917::
	if not N then goto L16179729 end
::L1854058::
	o = up3
	o:Save("_saveSlots", i)
	o = up4.Notification
	o:Notify({
		Title = "Save Manager",
		Description = "Saved state to \"" .. (W .. "\".")
	}, {
		Time = 2
	})
	RefreshSlots()
	return
::L16179729::
	o = table.insert
	x = os.date("%Y-%m-%d %H:%M")
	o(i, {
		name = W,
		data = R,
		created = x,
		updated = os.date("%Y-%m-%d %H:%M")
	})
	goto L1854058
::L7197737::
	if T.name==W then goto L5591847 end
::L8016046::
	goto L14279262
::L5591847::
	T.data = R
	e = os.date("%Y-%m-%d %H:%M")
	T.updated = e
	N = true
	goto L13294917
end

function fn_1484990() -- entry L1484990, 8 blocks
::L1484990::
	if up1.HasKeyAccess() then goto L2848323 end
::L4963782::
	up4(up5)
::L12328472::
	return
::L2848323::
	c = up2
	d = c:Get(up3, nil)
	c = up4
	K = c
	i = math.clamp
	R = d
	o = c
	j = R ~= nil
	if l then goto L12004921 end
::L3976001::
	N = j
	if j then goto L15712394 end
::L9482810::
	N = up5
::L15712394::
	o(unpack({
		i(N, up6, up7)
	}))
	goto L12328472
::L12004921::
	j = R
	goto L3976001
end

function fn_1519377(arg1, arg2, arg3, arg4, arg5) -- entry L1519377, 13 blocks
::L1519377::
	R = O()
	i = O()
	f[R] = arg1
	f[i] = arg2
	d = not f[i]
	if W then goto L7107472 end
::L6377299::
	d = f[i] == ""
::L7107472::
	if d then goto L107732 end
::L11747909::
	W = f[R] .. (":" .. f[i])
	if up1.Cache[W] then goto L14430011 end
::L11226934::
	j = closure(fn_264781, {
		R,
		up2,
		i
	})
	K = {
		pcall(j)
	}
	j = c
	o = K[2]
	d = K[1]
	if N then goto L7083641 end
::L14349885::
	if d then goto L1730779 end
::L2139716::
	return f[i]
::L1730779::
	up1.Cache[W] = o
	return o
::L7083641::
	K = o
	l = c
	if o then goto L8501089 end
::L4637198::
	d = K
	goto L14349885
::L8501089::
	K = o ~= ""
	goto L4637198
::L14430011::
	return up1.Cache[W]
::L107732::
	return f[i] or ""
end

function fn_1569863(arg1, arg2) -- entry L1569863, 15 blocks
::L1569863::
	R = arg1
	i = arg2
	W = R:GetPlayerName()
	c = R:GetGameId()
	N = c
	d = i
	if i then goto L2199966 end
::L8337118::
	if d then goto L11769567 end
::L5103952::
	if not up1 then goto L12962183 end
::L5764963::
	return up1
::L12962183::
	j = closure(fn_11210831, {})
	c = pcall
	K = {
		c(j)
	}
	t = c
	l = c
	T = K[1]
	o = K[2]
	if j then goto L950564 end
::L10891564::
	K = T
	if T then goto L6748483 end
::L9295597::
	d = K
	if K then goto L9241132 end
::L3518175::
	d = N
::L9241132::
	up1 = W .. ("-" .. (d .. ("-" .. (N .. ".json"))))
	goto L5764963
::L6748483::
	T = o:gsub("[^%w%s]", "")
	K = T:gsub("%s+", "_")
	goto L9295597
::L950564::
	T = o
	goto L10891564
::L11769567::
	i:gsub("[^%w%s]", "")
	return W..("-"..(c:gsub("%s+","_")..("-"..(N..".json"))))
::L2199966::
	j = c
	o = type(i) == "string"
	if K then goto L14869055 end
::L7701574::
	d = o
	goto L8337118
::L14869055::
	o = i ~= ""
	goto L7701574
end

function fn_1710810(arg1, arg2) -- entry L1710810, 16 blocks
::L1710810::
	if not up1 then goto L9062035 end
::L8683280::
	CircleClick(up2, up3.X, up3.Y)
	c = up4
	R = c:Get("_saveSlots", {})
	i = R[up1]
	if not i then goto L2274938 end
::L6117395::
	c = up5.EncodeShareCode
	W = c({
		name = i.name,
		data = i.data
	})
	if W then goto L11852766 end
::L1998393::
	c = up6.Notification
	c:Notify({
		Title = "Share Saved",
		Description = "Failed to encode save."
	}, {
		Time = 2
	})
::L11297083::
	return
::L11852766::
	d = setclipboard
	if N then goto L1436796 end
::L9834956::
	o = c
	N = toclipboard
	if j then goto L11914678 end
::L6859702::
	j = getgenv
	K = c
	if l then goto L1410830 end
::L12208303::
	N = j
::L11914678::
	d = N
::L1436796::
	N = d
	if N then goto L10353126 end
::L16009298::
	c = up6.Notification
	c:Notify({
		Title = "Share Saved",
		Description = "Share code copied to clipboard!"
	}, {
		Time = 3
	})
	goto L11297083
::L10353126::
	pcall(N, W)
	goto L16009298
::L1410830::
	j = getgenv().setclipboard
	goto L12208303
::L2274938::
	return
::L9062035::
	return
end

function fn_1730543(arg1, arg2, arg3, arg4) -- entry L1730543, 6 blocks
::L1730543::
	R = arg1
	o = {
		ipairs(up1)
	}
	W = o[3]
	i = o[2]
	N = o[1]
::L2968206::
	W, j = N(i, W)
	if W then goto L4771613 end
::L16092428::
	return
::L4771613::
	o = W
	if j==R then goto L5856462 end
::L14595038::
	goto L2968206
::L5856462::
	table.remove(up1, o)
	return
end

function fn_1742269(arg1, arg2, arg3, arg4, arg5) -- entry L1742269, 3 blocks
::L1742269::
	R = tostring(arg1 or "")
	up1.Text = R
	if arg2~=false then goto L8733521 end
::L15864830::
	return
::L8733521::
	pcall(up2, R)
	goto L15864830
end

function fn_1753810(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L1753810, 57 blocks
::L1753810::
	R = arg1
	d = type(R) ~= "string"
	if i then goto L1934861 end
::L1558144::
	d = R == ""
::L1934861::
	if d then goto L3993566 end
::L8442136::
	c = R:gsub("^%s+", "")
	d = c:gsub("%s+$", "")
	i = O()
	f[i] = d
	if f[i]=="" then goto L8755622 end
::L5227535::
	c = f[i]
	if c:match("^%d+$") then goto L558596 end
::L13891355::
	W = f[i]
	d = W:find("^rbxassetid://")
	if N then goto L5123122 end
::L2391185::
	N = c
	o = f[i]
	W = o:find("^rbxasset://")
	if j then goto L16489754 end
::L13849034::
	K = f[i]
	j = c
	o = K:find("^http://")
	if l then goto L4266315 end
::L15224888::
	K = f[i]
	o = K:find("^https://")
::L4266315::
	W = o
::L16489754::
	c = N
	d = W
::L5123122::
	if d then goto L6284582 end
::L6653087::
	d = getcustomasset
	if W then goto L6596987 end
::L15581426::
	N = c
	j = c
	o = getgenv
	if K then goto L14870277 end
::L3210886::
	W = o
	c = j
	if o then goto L4231514 end
::L622552::
	o = getsynasset
	j = c
	if K then goto L6882596 end
::L6319654::
	l = c
	K = getgenv
	if T then goto L5589145 end
::L5630863::
	o = K
::L6882596::
	W = o
::L4231514::
	d = W
::L6596987::
	W = O()
	f[W] = d
	if f[W] then goto L10080594 end
::L4188726::
	return f[i]
::L10080594::
	c = pcall
	K = {
		c(f[W], f[i])
	}
	N = K[2]
	d = K[1]
	if o then goto L15416163 end
::L7514994::
	if d then goto L16415961 end
::L11817642::
	d = up1
	if j then goto L10254388 end
::L2087505::
	if d then goto L15729185 end
::L6347039::
	e = closure(fn_5358000, {
		W,
		i
	})
	c = pcall
	x = {
		c(e)
	}
	N = x[2]
	e = x[1]
	if o then goto L1967582 end
::L13363302::
	if e then goto L11354293 end
::L6432343::
	goto L4188726
::L11354293::
	return N
::L1967582::
	B = c
	x = type(N) == "string"
	if u then goto L9326575 end
::L11993450::
	e = x
	goto L13363302
::L9326575::
	x = N ~= ""
	goto L11993450
::L15729185::
	c = pcall
	T = {
		c(f[W], up1.FolderName .. ("/" .. f[i]))
	}
	N = T[2]
	l = T[1]
	if o then goto L11817729 end
::L1407621::
	if l then goto L11335167 end
::L8943760::
	c = pcall
	x = {
		c(f[W], up1.FolderName .. ("\\" .. f[i]))
	}
	e = x[1]
	N = x[2]
	if o then goto L7738502 end
::L10527731::
	if e then goto L10491134 end
::L12101157::
	goto L6347039
::L10491134::
	return N
::L7738502::
	B = c
	x = type(N) == "string"
	if u then goto L9416357 end
::L12904273::
	e = x
	goto L10527731
::L9416357::
	x = N ~= ""
	goto L12904273
::L11335167::
	return N
::L11817729::
	t = c
	T = type(N) == "string"
	if e then goto L9516118 end
::L12938753::
	l = T
	goto L1407621
::L9516118::
	T = N ~= ""
	goto L12938753
::L10254388::
	d = up1.FolderName
	goto L2087505
::L16415961::
	return N
::L15416163::
	K = c
	j = type(N) == "string"
	if l then goto L5054217 end
::L14819523::
	d = j
	goto L7514994
::L5054217::
	j = N ~= ""
	goto L14819523
::L5589145::
	K = getgenv().getsynasset
	goto L5630863
::L14870277::
	o = getgenv().getcustomasset
	goto L3210886
::L6284582::
	return f[i]
::L558596::
	return "rbxassetid://"..f[i]
::L8755622::
	return nil
::L3993566::
	return nil
end

function fn_1830175(arg1, arg2, arg3, arg4, arg5) -- entry L1830175, 7 blocks
::L1830175::
	if up1.saveKey then goto L10966489 end
::L16039337::
	if up1.UpdateFn then goto L3270531 end
::L5407435::
	return
::L3270531::
	up1.UpdateFn()
	goto L5407435
::L10966489::
	c = up2
	R = c:Get(up1.saveKey, nil)
	if R~=nil then goto L5847441 end
::L9267506::
	goto L16039337
::L5847441::
	up2.Settings[up1.saveKey] = R
	goto L9267506
end

function fn_1879672() -- entry L1879672, 12 blocks
::L1879672::
	d = up1(1, 2) == 1
	if R then goto L11880887 end
::L7559114::
	d = up2 == up3
::L11880887::
	if d then goto L1463952 end
::L1119794::
	if up7 then goto L10804881 end
::L719017::
	N = up9
	o = 1
	R = {}
	j = 1 < 0
	W = 1 - 1
::L5237605::
	W = W + o
	if (j and (W>=N)) or ((not j) and (W<=N)) then goto L5980157 end
::L15398480::
	i = up11
	R[up10] = i
	return unpack({up12(R)})
::L5980157::
	K = up1(0, 255)
	R[W] = K
	goto L5237605
::L10804881::
	error(up8, 0)
	goto L719017
::L1463952::
	T = closure(fn_11011879, {})
	c = tonumber
	R = up4
	W = tostring
	R = c(unpack({
		R(W(({
			unpack({
				pcall(T)
			})
		})[2]), ":(%d*):")()
	}))
	d = up5
	if i then goto L380838 end
::L15180373::
	up5 = d
	goto L1119794
::L380838::
	d = up6 == R
	goto L15180373
end

function fn_1882883(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L1882883, 1 blocks
::L1882883::
	return unpack({up1.Play(arg2,arg3,arg4,arg5,arg6,arg7)})
end

function fn_1885413(arg1, arg2) -- entry L1885413, 18 blocks
::L1885413::
	R = closure(fn_14454601, {
		up1,
		up2
	})
	if up3 then goto L514600 end
::L2318939::
	R(up4)
	i = (# up5) == 0
	if W then goto L12159527 end
::L9513573::
	if i then goto L6710731 end
::L5582884::
::L11604388::
	return
::L6710731::
	up2(1)
	goto L5582884
::L12159527::
	i = (# up1) > 0
	goto L9513573
::L514600::
	if typeof(up4)=="table" then goto L6876129 end
::L15079135::
	R(up4)
::L5018816::
	i = (# up5) == 0
	if W then goto L12545512 end
::L7951443::
	if i then goto L6548820 end
::L3626409::
	goto L11604388
::L6548820::
	up2(1)
	goto L3626409
::L12545512::
	i = (# up1) > 0
	goto L7951443
::L6876129::
	o = {
		ipairs(up4)
	}
	W = o[3]
	N = o[1]
	i = o[2]
::L6004965::
	W, j = N(i, W)
	if W then goto L15105615 end
::L2352438::
	goto L5018816
::L15105615::
	R(j)
	goto L6004965
end

function fn_1928515(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) -- entry L1928515, 13 blocks
::L1928515::
	W = O()
	i = arg2
	N = arg4
	f[W] = arg3
	o = O()
	f[o] = arg5
	if not checkCondition(arg6) then goto L1743328 end
::L14240685::
	d = f[W]
	if l then goto L5107153 end
::L13873518::
	d = closure(fn_12183170, {})
::L5107153::
	f[W] = d
	c = f[o]
	if c then goto L10532949 end
::L6135200::
	t = c
	T = f[o]
	if e then goto L14006609 end
::L7753919::
	l = T or ""
	T = O()
	f[T] = l
	l = up3
	A = ThemeColor("Primary")
	S = UDim2.new(1, - 25, 0, 96)
	Y = up3
	x = {
		BackgroundColor3 = A,
		BackgroundTransparency = .4,
		BorderSizePixel = 0,
		Size = S,
		ClipsDescendants = true,
		Children = {
			unpack({
				Y("UICorner", {
					CornerRadius = UDim.new(0, 8)
				})
			})
		}
	}
	t = l("Frame", x, up4)
	l = up5
	ne[8] = "Enum"
	l(t, i or "Textbox")
	l = up3
	b = UDim2.new(0, 10, 0, 6)
	M = UDim2.new
	ne[1] = 5
	z = M(1, - 20, 0, 20)
	S = Enum.Font.GothamBold
	E = Color3.fromRGB(220, 220, 230)
	Y = Enum.TextXAlignment.Left
	Ze = Enum.TextTruncate.AtEnd
	l("TextLabel", {
		BackgroundTransparency = 1,
		Position = b,
		Size = z,
		Font = S,
		TextColor3 = E,
		TextXAlignment = Y,
		Text = i or "Textbox",
		TextWrapped = false,
		TextScaled = true,
		TextTruncate = Ze,
		ZIndex = 3,
		Children = {
			unpack({
				MakeTextConstraint(15, 8)
			})
		}
	}, t)
	l = up3
	v = Color3.fromRGB(110, 55, 190)
	P = UDim2
	ne[3] = 190
	P = P.new(0, 10, 0, 30)
	l("Frame", {
		BackgroundColor3 = v,
		BackgroundTransparency = .82,
		BorderSizePixel = 0,
		Position = P,
		Size = UDim2.new(1, - 20, 0, 1),
		ZIndex = 3
	}, t)
	l = up3
	v = Color3.fromRGB(10, 10, 16)
	P = UDim2.new(0, 10, 0, 38)
	E = UDim2.new(1, - 20, 0, 24)
	Qe = up3
	e = l("Frame", {
		BackgroundColor3 = v,
		BackgroundTransparency = .1,
		BorderSizePixel = 0,
		Position = P,
		Size = E,
		ClipsDescendants = true,
		ZIndex = 3,
		Children = {
			unpack({
				Qe("UICorner", {
					CornerRadius = UDim.new(0, 6)
				})
			})
		}
	}, t)
	l = O()
	f[l] = e
	e = up3
	L = Color3.fromRGB(110, 55, 190)
	x = e("UIStroke", {
		Color = L,
		Transparency = .78,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}, f[l])
	e = O()
	f[e] = x
	x = up3
	P = UDim2.new(0, 10, 0, 0)
	E = UDim2
	ne[9] = "Enum"
	E = E.new(1, - 18, 1, 0)
	Y = Enum.Font.GothamSemibold
	Je = Color3.fromRGB(210, 195, 255)
	Qe = Color3.fromRGB(110, 85, 150)
	B = x("TextBox", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = P,
		Size = E,
		Font = Y,
		TextColor3 = Je,
		PlaceholderColor3 = Qe,
		PlaceholderText = i or "Enter here...",
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		Text = f[T],
		ClearTextOnFocus = false,
		ZIndex = 4
	}, f[l])
	x = O()
	f[x] = B
	B = up3
	S = UDim2.new(0, 10, 0, 70)
	y = UDim2.new(1, - 20, 0, 20)
	Fe = up3
	ce = Enum.FillDirection.Horizontal
	ne[4] = "ApplyStrokeMode"
	Xe = UDim.new(0, 6)
	u = B("Frame", {
		BackgroundTransparency = 1,
		Position = S,
		Size = y,
		ZIndex = 3,
		Children = {
			unpack({
				Fe("UIListLayout", {
					FillDirection = ce,
					Padding = Xe,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			})
		}
	}, t)
	B = up3
	z = Color3.fromRGB(110, 55, 190)
	Je = UDim2.new(0, 54, 0, 20)
	ce = Color3.fromRGB(170, 120, 240)
	Ze = Enum.Font.GothamBold
	Ne = up3
	qe = UDim
	ne[2] = 55
	he = Ne("UICorner", {
		CornerRadius = qe.new(0, ne[1])
	})
	ne[1] = "Color3"
	Ne = up3
	ge = ENV[ne[1]]
	ne[1] = "fromRGB"
	qe = ge[ne[1]]
	ne[1] = 110
	ge = qe(ne[1], ne[2], ne[3])
	ne[3] = 1
	ne[7] = ENV[ne[8]]
	ne[2] = "Thickness"
	ne[8] = "ApplyStrokeMode"
	ne[6] = ne[7][ne[8]]
	ne[7] = "Border"
	ne[5] = ne[6][ne[7]]
	ne[1] = .72
	A = B("TextButton", {
		BackgroundColor3 = z,
		BackgroundTransparency = .84,
		BorderSizePixel = 0,
		LayoutOrder = 1,
		Size = Je,
		Text = "Clear",
		TextColor3 = ce,
		Font = Ze,
		TextSize = 11,
		AutoButtonColor = false,
		ZIndex = 3,
		Children = {
			he,
			unpack({
				Ne("UIStroke", {
					Color = ge,
					Transparency = ne[1],
					[ne[2]] = ne[3],
					[ne[4]] = ne[5]
				})
			})
		}
	}, u)
	B = O()
	f[B] = A
	A = up3
	ne[1] = "UDim"
	S = Color3
	ne[2] = 5
	ne[5] = "ApplyStrokeMode"
	S = S.fromRGB(110, 55, 190)
	k = UDim2.new(0, 60, 0, 20)
	ne[4] = 190
	Ze = Color3.fromRGB(200, 170, 255)
	Ge = Enum.Font.GothamBold
	he = up3
	ne[3] = 55
	ge = ENV[ne[1]]
	ne[1] = "new"
	qe = ge[ne[1]]
	ne[1] = 0
	oe = he("UICorner", {
		CornerRadius = qe(ne[1], ne[2])
	})
	he = up3
	ne[2] = "Color3"
	ne[1] = ENV[ne[2]]
	ne[2] = "fromRGB"
	ge = ne[1][ne[2]]
	ne[2] = 110
	ne[1] = ge(ne[2], ne[3], ne[4])
	ne[3] = "Thickness"
	ne[8] = ENV[ne[9]]
	ne[4] = 1
	ne[9] = "ApplyStrokeMode"
	ne[7] = ne[8][ne[9]]
	ne[2] = .6
	ne[8] = "Border"
	ne[6] = ne[7][ne[8]]
	v = A("TextButton", {
		BackgroundColor3 = S,
		BackgroundTransparency = .45,
		BorderSizePixel = 0,
		LayoutOrder = 2,
		Size = k,
		Text = N or "Confirm",
		TextColor3 = Ze,
		Font = Ge,
		TextSize = 11,
		AutoButtonColor = false,
		ZIndex = 3,
		Children = {
			oe,
			unpack({
				he("UIStroke", {
					Color = ne[1],
					Transparency = ne[2],
					[ne[3]] = ne[4],
					[ne[5]] = ne[6]
				})
			})
		}
	}, u)
	A = O()
	f[A] = v
	v = f[x].Focused
	b = closure(fn_242027, {
		up6,
		e,
		l
	})
	v:Connect(b)
	v = f[x].FocusLost
	b = closure(fn_3876600, {
		up6,
		e,
		l
	})
	v:Connect(b)
	v = f[B].MouseEnter
	b = closure(fn_6734372, {
		up6,
		B
	})
	v:Connect(b)
	v = f[B].MouseLeave
	b = closure(fn_9884679, {
		up6,
		B
	})
	v:Connect(b)
	v = f[A].MouseEnter
	b = closure(fn_7371832, {
		up6,
		A
	})
	v:Connect(b)
	v = f[A].MouseLeave
	L = v.Connect
	L(v, closure(fn_4961997, {
		up6,
		A
	}))
	v = f[B].MouseButton1Click
	b = closure(fn_10751902, {
		B,
		up7,
		x,
		o,
		up2
	})
	v:Connect(b)
	v = f[A].MouseButton1Click
	b = closure(fn_14367592, {
		A,
		up7,
		x,
		o,
		up2,
		W
	})
	v:Connect(b)
	v = f[x].FocusLost
	b = closure(fn_6246386, {
		x,
		o,
		up2,
		W
	})
	v:Connect(b)
	if f[T]~="" then goto L16748101 end
::L1648977::
	if f[o] then goto L11242541 end
::L7935598::
	closure(fn_10668172, {
		x
	})
	closure(fn_2235415, {
		x
	})
	return {["TextBox"]=b,["Clear"]=f[B],["Join"]=f[A],["Frame"]=t;["SetText"]=Y,["GetText"]=Fe}
::L11242541::
	Fe = closure(fn_4884474, {
		x
	})
	v = up2
	M = {
		Type = "Textbox",
		Default = "",
		Set = closure(fn_1742269, {
			x,
			W
		}),
		Get = Fe
	}
	v:RegisterControl(f[o], M)
	goto L7935598
::L16748101::
	v = task.defer
	v(closure(fn_9189721, {
		W,
		T
	}))
	goto L1648977
::L14006609::
	e = up2
	T = e:Get(f[o], "")
	goto L7753919
::L10532949::
	c = up2
	c:RegisterKey(f[o])
	goto L6135200
::L1743328::
	return up1
end

function fn_1941357(arg1, arg2) -- entry L1941357, 1 blocks
::L1941357::
	up1.Text = ""
	up2()
	W = up3(up4, up5)
	i = up4.AbsoluteSize
	up6.Position = W
	c = up6
	N = UDim2.new(0, i.X, 0, i.Y)
	c.Size = N
	up6.Visible = true
	up7.Visible = true
	c = up8
	W = up6
	K = UDim2.new(.5, 0, .5, 0)
	c:Tween(W, {
		Position = K,
		Size = up9
	}, .32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	c = up8
	c:Tween(up4, {
		Rotation = 180
	}, .25, Enum.EasingStyle.Quint)
	c = up8
	c:Tween(up10, {
		Transparency = .4
	}, .2)
	return
end

function fn_2176483(arg1, arg2) -- entry L2176483, 19 blocks
::L2176483::
	if not up1 then goto L181781 end
::L56543::
	R = up2.Position
	c = up2
	W = UDim2.new(R.X.Scale, R.X.Offset + 150, R.Y.Scale, R.Y.Offset + 149)
	c.Position = W
	c = up2
	W = UDim2.new(0, 510, 0, 330)
	c.Size = W
	c = up3
	W = UDim2.new(1, - 255, 0, 16)
	c.Size = W
	c = up4
	W = UDim2.new(1, - 255, 0, 12)
	c.Size = W
	up5.Image = "rbxassetid://92966930061759"
	c = up5
	W = UDim2.new(1, - 34, 0, 16)
	c.Position = W
	c = up6
	W = UDim2.new(1, - 8, 0, 16)
	c.Position = W
	up7.BackgroundTransparency = 1
	if TabContainer then goto L16151764 end
::L14831739::
	if MainContainer then goto L2211818 end
::L1677695::
	if up8 then goto L3626632 end
::L13300955::
	if up9 then goto L866299 end
::L14360201::
	c = up6
	if c then goto L7989432 end
::L13401923::
	d = up10
	if i then goto L5798868 end
::L11770729::
	if d then goto L1487566 end
::L7280564::
	up1 = false
	return
::L1487566::
	c = pcall
	c(closure(fn_15531816, {
		up10
	}))
	goto L7280564
::L5798868::
	i = up11
	W = c
	if N then goto L14974650 end
::L831206::
	d = i
	goto L11770729
::L14974650::
	i = up11.Visible
	goto L831206
::L7989432::
	c = up6
	c.Visible = true
	goto L13401923
::L866299::
	up9.Visible = true
	goto L14360201
::L3626632::
	up8.Visible = true
	goto L13300955
::L2211818::
	MainContainer.Visible = true
	goto L1677695
::L16151764::
	TabContainer.Visible = true
	goto L14831739
::L181781::
	return
end

function fn_2177973(arg1, arg2, arg3, arg4) -- entry L2177973, 15 blocks
::L2177973::
	d = up1
	if i then goto L8153982 end
::L12541953::
	W = c
	i = up2
	if N then goto L11940432 end
::L559524::
	d = i
::L8153982::
	i = O()
	f[i] = d
	c = not f[i]
	if c then goto L3762991 end
::L15633851::
	d = f[i]
	if W then goto L3476615 end
::L14870859::
	W = d
	d = not W
	if N then goto L2682508 end
::L16343845::
	d = W == ""
::L2682508::
	if d then goto L8457694 end
::L13523876::
	return unpack({W:gsub("[^%w]","")})
::L8457694::
	d = "User_"
	N = tostring
	l = f[i]
	T = c
	if t then goto L8888372 end
::L982269::
	W = d .. N(l or "0")
	goto L13523876
::L8888372::
	l = f[i].UserId
	goto L982269
::L3476615::
	d = f[i].Name
	goto L14870859
::L3762991::
	W = closure(fn_13741953, {
		i
	})
	c = pcall
	c(W)
	goto L15633851
::L11940432::
	i = up2.LocalPlayer
	goto L559524
end

function fn_2232417(arg1, arg2) -- entry L2232417, 57 blocks
::L2232417::
	R = O()
	f[R] = arg1
	i = arg2
	W = "Quantum Onyx Project"
	c = type(i) == "table"
	if c then goto L9895334 end
::L9379381::
	d = i.SaveFile
	if N then goto L6663479 end
::L4046044::
	if d then goto L16336715 end
::L12296331::
	c = not up2
	if c then goto L8384446 end
::L4210618::
::L12401920::
	o = i.Subtitle or "Untitled"
	j = O()
	f[j] = o
	l = i.Version
	K = O()
	f[K] = l or "v1.0"
	o = i.Theme or "Purple"
	T = c
	l = i.Credits
	if t then goto L14601115 end
::L16039306::
	l = {}
::L14601115::
	t = O()
	c = T
	f[t] = {}
	e = f[t]
	T = closure(fn_4223968, {
		K
	})
	e.IsDeveloperBuild = T
	e = c
	T = up3.Themes[o]
	if x then goto L15957252 end
::L11572332::
	T = up3.Themes.Purple
::L15957252::
	c = e
	e = up3
	L = O()
	e.Current = T
	e = closure(fn_16259897, {})
	ParseKeySetting = e
	e = ParseKeySetting
	u = i.Key
	v = O()
	A = {
		e(u)
	}
	e = O()
	x = A[1]
	f[e] = x
	B = A[2]
	A = O()
	b = O()
	u = O()
	f[u] = B == "Full"
	M = O()
	y = c
	f[A] = {}
	f[v] = {}
	f[L] = nil
	f[b] = false
	f[M] = false
	x = i.Intro ~= false
	z = closure(fn_13529559, {
		up1
	})
	LoadKeyValid = z
	P = f[e]
	if E then goto L8082377 end
::L12117417::
	c = y
	S = O()
	f[S] = P or false
	z = closure(fn_3445462, {
		e,
		S
	})
	f[t].HasKeyAccess = z
	P = O()
	f[P] = nil
	y = f[t]
	z = closure(fn_6856384, {})
	y.CreateDummy = z
	y = f[t].CreateDummy()
	f[P] = y
	z = closure(fn_2421049, {})
	checkCondition = z
	z = closure(fn_12035202, {
		e,
		u,
		S,
		M
	})
	IsFullLocked = z
	z = closure(fn_14973287, {
		S,
		b,
		u,
		L,
		A,
		v,
		up1
	})
	RefreshKeyLock = z
	z = closure(fn_9139112, {
		e,
		t,
		up4,
		up5,
		A
	})
	RegisterKeyLocked = z
	E = O()
	Je = O()
	f[E] = {
		body = nil,
		accentElements = {},
		litGradients = {},
		buttonGradients = {}
	}
	f[Je] = nil
	z = O()
	f[z] = nil
	Y = O()
	f[Y] = nil
	H = O()
	f[H] = nil
	Qe = up1
	Fe = {
		List = Qe:Get("_favorites", {}),
		Entries = {},
		Refresh = nil
	}
	k = closure(fn_4741043, {
		up3,
		up1,
		E,
		up6,
		z,
		Je
	})
	f[H] = Fe
	ApplyTheme = k
	k = closure(fn_16169894, {
		E
	})
	RegisterThemeElement = k
	k = closure(fn_14113382, {
		E
	})
	RegisterLitGradient = k
	k = closure(fn_9078291, {
		E
	})
	RegisterButtonGradient = k
	k = closure(fn_4413930, {
		up4
	})
	CreateAccentBar = k
	k = up4
	Xe = up7()
	Qe = k("ScreenGui", {
		Name = Xe,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	}, up8)
	k = O()
	f[k] = Qe
	Qe = up9.TouchEnabled
	me = c
	if ce then goto L8177911 end
::L6731689::
	c = me
	me = O()
	ce = O()
	f[me] = Qe
	Qe = (f[me] and .45) or .5
	f[ce] = Qe
	Ze = O()
	f[Ze] = 1.8
	Ge = .05
	Qe = (f[me] and .7) or 1
	de = up4("UIScale", {
		Name = "LibraryUIScale",
		Scale = Qe
	}, f[k])
	Xe = O()
	f[Xe] = de
	fe = O()
	f[fe] = {}
	Oe = O()
	de = closure(fn_5323669, {
		Xe
	})
	UnscaledLayout = de
	de = closure(fn_3884146, {})
	FitScrollCanvas = de
	Re = O()
	f[Re] = {}
	f[Oe] = false
	de = closure(fn_5905940, {
		Re,
		Oe
	})
	DebouncedFitScrollCanvas = de
	de = closure(fn_11693169, {
		fe
	})
	RegisterLayoutRefresh = de
	de = closure(fn_9359241, {
		Xe
	})
	ScaledFontSize = de
	de = closure(fn_6666543, {
		up4
	})
	MakeTextConstraint = de
	de = closure(fn_4986440, {})
	BindScaledText = de
	ie = O()
	f[ie] = false
	de = closure(fn_9813407, {
		fe
	})
	RefreshAllLayouts = de
	de = closure(fn_424491, {
		ie
	})
	ScheduleRefreshAllLayouts = de
	We = f[t]
	de = closure(fn_12031680, {
		ce,
		Ze,
		Xe,
		up5,
		up4
	})
	We.SetUIScalePreview = de
	de = closure(fn_12986342, {
		t
	})
	f[t].ApplyUIScale = de
	We = O()
	f[We] = true
	de = O()
	f[de] = Qe
	Ne = closure(fn_7480784, {
		We,
		me,
		de,
		ce,
		Ze,
		t
	})
	he = workspace.CurrentCamera
	if he then goto L7104800 end
::L15847228::
	he = f[t].ApplyUIScale
	ne[1] = "ThemeColor"
	oe = O()
	ne[4] = 0
	ne[12] = .5
	f[oe] = he
	ne[2] = "Body"
	ne[3] = "BorderSizePixel"
	he = closure(fn_4214084, {
		de,
		oe
	})
	f[t].ApplyUIScale = he
	ne[9] = .5
	he = up4
	ge = ENV[ne[1]]
	ne[1] = ge(ne[2])
	ne[2] = .05
	ne[8] = "Vector2"
	ne[10] = "UDim2"
	ne[15] = 330
	ne[13] = 0
	ne[5] = "AnchorPoint"
	ne[7] = ENV[ne[8]]
	ne[11] = 0
	ne[8] = "new"
	ne[6] = ne[7][ne[8]]
	ne[8] = .5
	ne[7] = ne[6](ne[8], ne[9])
	ne[17] = "Children"
	ne[21] = "UICorner"
	ne[9] = ENV[ne[10]]
	ne[6] = "Position"
	ne[10] = "new"
	ne[8] = ne[9][ne[10]]
	ne[10] = .5
	ne[9] = ne[8](ne[10], ne[11], ne[12], ne[13])
	ne[23] = "CornerRadius"
	ne[8] = "Size"
	ne[12] = "UDim2"
	ne[13] = 510
	ne[11] = ENV[ne[12]]
	ne[16] = true
	ne[12] = "new"
	ne[10] = ne[11][ne[12]]
	ne[14] = 0
	ne[12] = 0
	ne[11] = ne[10](ne[12], ne[13], ne[14], ne[15])
	ne[14] = true
	ne[10] = "Visible"
	ne[27] = 10
	ne[12] = not x
	ne[19] = up4
	ne[26] = "UDim"
	ne[13] = "Active"
	ne[15] = "ClipsDescendants"
	ne[25] = ENV[ne[26]]
	ne[26] = "new"
	ne[24] = ne[25][ne[26]]
	ne[26] = 0
	ne[25] = ne[24](ne[26], ne[27])
	ne[22] = {
		[ne[23]] = ne[25]
	}
	ne[20] = {
		ne[19](ne[21], ne[22])
	}
	ne[22] = "CornerRadius"
	ne[18] = {
		unpack(ne[20])
	}
	ae = {
		BackgroundColor3 = ne[1],
		BackgroundTransparency = ne[2],
		[ne[3]] = ne[4],
		[ne[5]] = ne[7],
		[ne[6]] = ne[9],
		[ne[8]] = ne[11],
		[ne[10]] = ne[12],
		[ne[13]] = ne[14],
		[ne[15]] = ne[16],
		[ne[17]] = ne[18]
	}
	qe = f[k]
	ne[6] = "Size"
	ne[5] = 0
	ne[16] = "Enum"
	ne[3] = 1
	se = he("Frame", ae, qe)
	ne[4] = "BorderSizePixel"
	he = O()
	f[he] = se
	ne[12] = 0
	ne[9] = "UDim2"
	se = up4
	ne[8] = ENV[ne[9]]
	ne[2] = "BackgroundTransparency"
	ne[20] = "UICorner"
	ne[1] = "BodyBackground"
	ne[9] = "new"
	ne[7] = ne[8][ne[9]]
	ne[26] = 10
	ne[11] = 1
	ne[9] = 1
	ne[10] = 0
	ne[8] = ne[7](ne[9], ne[10], ne[11], ne[12])
	ne[10] = "ImageTransparency"
	ne[7] = "Image"
	ne[12] = "ScaleType"
	ne[11] = .88
	ne[15] = ENV[ne[16]]
	ne[9] = ""
	ne[25] = "UDim"
	ne[16] = "ScaleType"
	ne[14] = ne[15][ne[16]]
	ne[15] = "Crop"
	ne[13] = ne[14][ne[15]]
	ne[15] = 0
	ne[14] = "ZIndex"
	ne[16] = "Children"
	ne[18] = up4
	ne[24] = ENV[ne[25]]
	ne[25] = "new"
	ne[23] = ne[24][ne[25]]
	ne[25] = 0
	ne[24] = ne[23](ne[25], ne[26])
	ne[21] = {
		[ne[22]] = ne[24]
	}
	ne[19] = {
		ne[18](ne[20], ne[21])
	}
	ne[17] = {
		unpack(ne[19])
	}
	qe = {
		Name = ne[1],
		[ne[2]] = ne[3],
		[ne[4]] = ne[5],
		[ne[6]] = ne[8],
		[ne[7]] = ne[9],
		[ne[10]] = ne[11],
		[ne[12]] = ne[13],
		[ne[14]] = ne[15],
		[ne[16]] = ne[17]
	}
	ne[16] = 0
	Ce = se("ImageLabel", qe, f[he])
	ne[2] = "BodyVideoHolder"
	se = O()
	ne[8] = 0
	ne[3] = "BackgroundColor3"
	ne[6] = "Color3"
	ne[1] = "Name"
	ne[13] = 0
	ne[21] = "UICorner"
	ne[9] = "Size"
	f[se] = Ce
	ne[14] = 1
	ne[26] = "UDim"
	Ce = up4
	ne[27] = 10
	ne[5] = ENV[ne[6]]
	ne[7] = 0
	ne[12] = "UDim2"
	ne[6] = "fromRGB"
	ne[4] = ne[5][ne[6]]
	ne[15] = 0
	ne[6] = 0
	ne[5] = ne[4](ne[6], ne[7], ne[8])
	ne[11] = ENV[ne[12]]
	ne[7] = "BorderSizePixel"
	ne[4] = "BackgroundTransparency"
	ne[12] = "new"
	ne[8] = 0
	ne[10] = ne[11][ne[12]]
	ne[23] = "CornerRadius"
	ne[6] = 1
	ne[12] = 1
	ne[11] = ne[10](ne[12], ne[13], ne[14], ne[15])
	ne[19] = up4
	ne[10] = "Visible"
	ne[12] = false
	ne[17] = "Children"
	ne[13] = "ClipsDescendants"
	ne[14] = true
	ne[15] = "ZIndex"
	ne[25] = ENV[ne[26]]
	ne[26] = "new"
	ne[24] = ne[25][ne[26]]
	ne[26] = 0
	ne[25] = ne[24](ne[26], ne[27])
	ne[22] = {
		[ne[23]] = ne[25]
	}
	ne[20] = {
		ne[19](ne[21], ne[22])
	}
	ne[18] = {
		unpack(ne[20])
	}
	ge = {
		[ne[1]] = ne[2],
		[ne[3]] = ne[5],
		[ne[4]] = ne[6],
		[ne[7]] = ne[8],
		[ne[9]] = ne[11],
		[ne[10]] = ne[12],
		[ne[13]] = ne[14],
		[ne[15]] = ne[16],
		[ne[17]] = ne[18]
	}
	ne[1] = f[he]
	ae = Ce("Frame", ge, ne[1])
	Ce = O()
	f[Ce] = ae
	qe = O()
	ne[1] = closure(fn_4237553, {
		qe,
		Ce
	})
	f[qe] = nil
	pcall(ne[1])
	ae = closure(fn_7977154, {
		se,
		Ce,
		qe
	})
	ne[1] = "ApplyBackgroundImage"
	ClearBackgroundMedia = ae
	ge = O()
	ne[3] = ""
	f[ge] = nil
	ne[2] = "_opt_BgImage"
	ae = closure(fn_3535664, {
		up1,
		up10,
		se,
		up11,
		up5,
		qe,
		Ce,
		ge
	})
	ENV[ne[1]] = ae
	ne[1] = "Get"
	ae = up1
	ne[1] = ae[ne[1]]
	ne[1] = ne[1](ae, ne[2], ne[3])
	ae = O()
	ne[3] = ""
	f[ae] = ne[1]
	ne[2] = f[ae]
	ne[1] = ne[2] ~= ne[3]
	if ne[1] then goto L8121407 end
::L1668409::
	ne[36] = "UDim2"
	ne[1] = f[se]
	ne[47] = 240
	ne[5] = "_opt_BgImageTransparency"
	ne[6] = .88
	ne[19] = 0
	ne[3] = up1
	ne[4] = "Get"
	ne[4] = ne[3][ne[4]]
	ne[37] = 0
	ne[4] = ne[4](ne[3], ne[5], ne[6])
	ne[3] = "_opt_UITransparency"
	ne[31] = "BackgroundTransparency"
	ne[2] = "ImageTransparency"
	ne[1][ne[2]] = ne[4]
	ne[2] = "Get"
	ne[33] = "Size"
	ne[1] = up1
	ne[2] = ne[1][ne[2]]
	ne[4] = .05
	ne[2] = ne[2](ne[1], ne[3], ne[4])
	ne[3] = "BackgroundTransparency"
	ne[1] = f[he]
	ne[4] = ne[2]
	ne[1][ne[3]] = ne[4]
	ne[20] = 0
	ne[1] = f[E]
	ne[2] = nil
	ne[21] = 0
	ne[2] = "body"
	ne[3] = f[he]
	ne[1][ne[2]] = ne[3]
	ne[1] = up12
	ne[3] = f[k]
	ne[18] = 1
	ne[2] = ne[1](ne[3])
	ne[43] = "Active"
	ne[22] = true
	ne[2] = "DestroyGui"
	ne[1] = f[R]
	ne[12] = 12
	ne[2] = ne[1][ne[2]]
	ne[2] = ne[2](ne[1])
	ne[5] = "Name"
	ne[17] = 0
	ne[1] = f[R]
	ne[2] = "_CurrentGui"
	ne[7] = "BackgroundColor3"
	ne[3] = f[k]
	ne[6] = "FullLockOverlay"
	ne[1][ne[2]] = ne[3]
	ne[2] = up5
	ne[3] = "Notification"
	ne[13] = "Size"
	ne[1] = ne[2][ne[3]]
	ne[29] = "Name"
	ne[3] = f[he]
	ne[10] = "Color3"
	ne[2] = "Init"
	ne[27] = "TextButton"
	ne[46] = 100
	ne[2] = ne[1][ne[2]]
	ne[2] = ne[2](ne[1], ne[3])
	ne[71] = 140
	ne[1] = up4
	ne[3] = "Frame"
	ne[9] = ENV[ne[10]]
	ne[38] = 1
	ne[42] = 1004
	ne[23] = "Children"
	ne[16] = "UDim2"
	ne[10] = "fromRGB"
	ne[11] = 4
	ne[39] = 0
	ne[8] = ne[9][ne[10]]
	ne[70] = 200
	ne[10] = 6
	ne[9] = ne[8](ne[10], ne[11], ne[12])
	ne[40] = 0
	ne[12] = 0
	ne[50] = "Color3"
	ne[10] = .08
	ne[11] = "BorderSizePixel"
	ne[15] = ENV[ne[16]]
	ne[16] = "new"
	ne[14] = ne[15][ne[16]]
	ne[16] = 1
	ne[15] = ne[14](ne[16], ne[17], ne[18], ne[19])
	ne[18] = "UDim2"
	ne[30] = "ClickBlocker"
	ne[17] = ENV[ne[18]]
	ne[8] = "BackgroundTransparency"
	ne[14] = "Position"
	ne[18] = "new"
	ne[19] = 0
	ne[16] = ne[17][ne[18]]
	ne[32] = 1
	ne[18] = 0
	ne[44] = true
	ne[17] = ne[16](ne[18], ne[19], ne[20], ne[21])
	ne[25] = up4
	ne[20] = 1003
	ne[35] = ENV[ne[36]]
	ne[21] = "Active"
	ne[18] = false
	ne[16] = "Visible"
	ne[36] = "new"
	ne[56] = "TextXAlignment"
	ne[45] = "Color3"
	ne[34] = ne[35][ne[36]]
	ne[36] = 1
	ne[35] = ne[34](ne[36], ne[37], ne[38], ne[39])
	ne[39] = 0
	ne[38] = "UDim2"
	ne[51] = 160
	ne[19] = "ZIndex"
	ne[37] = ENV[ne[38]]
	ne[34] = "Position"
	ne[38] = "new"
	ne[41] = 0
	ne[36] = ne[37][ne[38]]
	ne[38] = 0
	ne[37] = ne[36](ne[38], ne[39], ne[40], ne[41])
	ne[41] = "ZIndex"
	ne[40] = false
	ne[38] = ""
	ne[39] = "AutoButtonColor"
	ne[36] = "Text"
	ne[28] = {
		[ne[29]] = ne[30],
		[ne[31]] = ne[32],
		[ne[33]] = ne[35],
		[ne[34]] = ne[37],
		[ne[36]] = ne[38],
		[ne[39]] = ne[40],
		[ne[41]] = ne[42],
		[ne[43]] = ne[44]
	}
	ne[30] = "CornerRadius"
	ne[33] = "UDim"
	ne[26] = ne[25](ne[27], ne[28])
	ne[34] = 10
	ne[25] = up4
	ne[41] = "Enum"
	ne[32] = ENV[ne[33]]
	ne[33] = "new"
	ne[31] = ne[32][ne[33]]
	ne[28] = "UICorner"
	ne[33] = 0
	ne[32] = ne[31](ne[33], ne[34])
	ne[29] = {
		[ne[30]] = ne[32]
	}
	ne[27] = ne[25](ne[28], ne[29])
	ne[34] = "Color3"
	ne[31] = "Color"
	ne[36] = 220
	ne[37] = "ApplyStrokeMode"
	ne[29] = "UIStroke"
	ne[25] = up4
	ne[33] = ENV[ne[34]]
	ne[34] = "fromRGB"
	ne[55] = "Enum"
	ne[65] = "CornerRadius"
	ne[32] = ne[33][ne[34]]
	ne[35] = 80
	ne[34] = 140
	ne[33] = ne[32](ne[34], ne[35], ne[36])
	ne[36] = 1
	ne[32] = "Transparency"
	ne[34] = .55
	ne[40] = ENV[ne[41]]
	ne[41] = "ApplyStrokeMode"
	ne[39] = ne[40][ne[41]]
	ne[35] = "Thickness"
	ne[40] = "Border"
	ne[38] = ne[39][ne[40]]
	ne[30] = {
		[ne[31]] = ne[33],
		[ne[32]] = ne[34],
		[ne[35]] = ne[36],
		[ne[37]] = ne[38]
	}
	ne[28] = ne[25](ne[29], ne[30])
	ne[33] = 1
	ne[37] = "Vector2"
	ne[25] = up4
	ne[30] = "ImageLabel"
	ne[34] = "AnchorPoint"
	ne[38] = .5
	ne[42] = 0
	ne[32] = "BackgroundTransparency"
	ne[36] = ENV[ne[37]]
	ne[37] = "new"
	ne[35] = ne[36][ne[37]]
	ne[37] = .5
	ne[41] = .38
	ne[39] = "UDim2"
	ne[36] = ne[35](ne[37], ne[38])
	ne[35] = "Position"
	ne[38] = ENV[ne[39]]
	ne[39] = "new"
	ne[43] = 0
	ne[37] = ne[38][ne[39]]
	ne[39] = .5
	ne[40] = 0
	ne[38] = ne[37](ne[39], ne[40], ne[41], ne[42])
	ne[37] = "Size"
	ne[41] = "UDim2"
	ne[40] = ENV[ne[41]]
	ne[41] = "new"
	ne[39] = ne[40][ne[41]]
	ne[44] = 28
	ne[41] = 0
	ne[42] = 28
	ne[40] = ne[39](ne[41], ne[42], ne[43], ne[44])
	ne[41] = "rbxassetid://7733992528"
	ne[42] = "ImageColor3"
	ne[44] = ENV[ne[45]]
	ne[45] = "fromRGB"
	ne[39] = "Image"
	ne[43] = ne[44][ne[45]]
	ne[45] = 160
	ne[44] = ne[43](ne[45], ne[46], ne[47])
	ne[45] = .1
	ne[47] = 1004
	ne[43] = "ImageTransparency"
	ne[46] = "ZIndex"
	ne[31] = {
		[ne[32]] = ne[33],
		[ne[34]] = ne[36],
		[ne[35]] = ne[38],
		[ne[37]] = ne[40],
		[ne[39]] = ne[41],
		[ne[42]] = ne[44],
		[ne[43]] = ne[45],
		[ne[46]] = ne[47]
	}
	ne[36] = 1
	ne[42] = "UDim2"
	ne[35] = "BackgroundTransparency"
	ne[37] = "AnchorPoint"
	ne[60] = "Enum"
	ne[34] = "LockTitle"
	ne[33] = "Name"
	ne[41] = .5
	ne[29] = ne[25](ne[30], ne[31])
	ne[40] = "Vector2"
	ne[31] = "TextLabel"
	ne[45] = 0
	ne[25] = up4
	ne[39] = ENV[ne[40]]
	ne[40] = "new"
	ne[43] = 0
	ne[38] = ne[39][ne[40]]
	ne[40] = .5
	ne[39] = ne[38](ne[40], ne[41])
	ne[38] = "Position"
	ne[41] = ENV[ne[42]]
	ne[52] = 255
	ne[42] = "new"
	ne[40] = ne[41][ne[42]]
	ne[46] = 0
	ne[42] = .5
	ne[47] = 22
	ne[44] = .52
	ne[41] = ne[40](ne[42], ne[43], ne[44], ne[45])
	ne[44] = "UDim2"
	ne[40] = "Size"
	ne[43] = ENV[ne[44]]
	ne[45] = 0
	ne[44] = "new"
	ne[42] = ne[43][ne[44]]
	ne[44] = .85
	ne[43] = ne[42](ne[44], ne[45], ne[46], ne[47])
	ne[47] = "Enum"
	ne[42] = "Font"
	ne[46] = ENV[ne[47]]
	ne[47] = "Font"
	ne[45] = ne[46][ne[47]]
	ne[46] = "FredokaOne"
	ne[44] = ne[45][ne[46]]
	ne[45] = "Text"
	ne[47] = "TextColor3"
	ne[46] = "Premium Privilege Only"
	ne[49] = ENV[ne[50]]
	ne[50] = "fromRGB"
	ne[63] = "UICorner"
	ne[48] = ne[49][ne[50]]
	ne[50] = 210
	ne[49] = ne[48](ne[50], ne[51], ne[52])
	ne[48] = "TextSize"
	ne[51] = "TextXAlignment"
	ne[54] = ENV[ne[55]]
	ne[55] = "TextXAlignment"
	ne[50] = 14
	ne[53] = ne[54][ne[55]]
	ne[54] = "Center"
	ne[52] = ne[53][ne[54]]
	ne[53] = "ZIndex"
	ne[54] = 1004
	ne[55] = 210
	ne[32] = {
		[ne[33]] = ne[34],
		[ne[35]] = ne[36],
		[ne[37]] = ne[39],
		[ne[38]] = ne[41],
		[ne[40]] = ne[43],
		[ne[42]] = ne[44],
		[ne[45]] = ne[46],
		[ne[47]] = ne[49],
		[ne[48]] = ne[50],
		[ne[51]] = ne[52],
		[ne[53]] = ne[54]
	}
	ne[30] = ne[25](ne[31], ne[32])
	ne[43] = "UDim2"
	ne[53] = "Color3"
	ne[32] = "TextLabel"
	ne[36] = "BackgroundTransparency"
	ne[25] = up4
	ne[34] = "Name"
	ne[35] = "LockDesc"
	ne[50] = "TextColor3"
	ne[42] = .5
	ne[41] = "Vector2"
	ne[38] = "AnchorPoint"
	ne[37] = 1
	ne[40] = ENV[ne[41]]
	ne[41] = "new"
	ne[39] = ne[40][ne[41]]
	ne[48] = 36
	ne[41] = .5
	ne[40] = ne[39](ne[41], ne[42])
	ne[42] = ENV[ne[43]]
	ne[43] = "new"
	ne[39] = "Position"
	ne[49] = "Premium features require a valid key.\n<font color=\"#34D399\">Freemium</font> is still available below."
	ne[41] = ne[42][ne[43]]
	ne[47] = 0
	ne[44] = 0
	ne[43] = .5
	ne[54] = 160
	ne[46] = 0
	ne[45] = .66
	ne[42] = ne[41](ne[43], ne[44], ne[45], ne[46])
	ne[45] = "UDim2"
	ne[41] = "Size"
	ne[44] = ENV[ne[45]]
	ne[45] = "new"
	ne[43] = ne[44][ne[45]]
	ne[45] = .88
	ne[46] = 0
	ne[69] = 6
	ne[44] = ne[43](ne[45], ne[46], ne[47], ne[48])
	ne[48] = "Enum"
	ne[47] = ENV[ne[48]]
	ne[48] = "Font"
	ne[46] = ne[47][ne[48]]
	ne[47] = "Gotham"
	ne[48] = "Text"
	ne[43] = "Font"
	ne[45] = ne[46][ne[47]]
	ne[47] = true
	ne[46] = "RichText"
	ne[52] = ENV[ne[53]]
	ne[53] = "fromRGB"
	ne[51] = ne[52][ne[53]]
	ne[53] = 180
	ne[52] = ne[51](ne[53], ne[54], ne[55])
	ne[51] = "TextSize"
	ne[59] = ENV[ne[60]]
	ne[55] = true
	ne[54] = "TextWrapped"
	ne[60] = "TextXAlignment"
	ne[58] = ne[59][ne[60]]
	ne[59] = "Center"
	ne[57] = ne[58][ne[59]]
	ne[58] = "ZIndex"
	ne[59] = 1004
	ne[53] = 10
	ne[33] = {
		[ne[34]] = ne[35],
		[ne[36]] = ne[37],
		[ne[38]] = ne[40],
		[ne[39]] = ne[42],
		[ne[41]] = ne[44],
		[ne[43]] = ne[45],
		[ne[46]] = ne[47],
		[ne[48]] = ne[49],
		[ne[50]] = ne[52],
		[ne[51]] = ne[53],
		[ne[54]] = ne[55],
		[ne[56]] = ne[57],
		[ne[58]] = ne[59]
	}
	ne[42] = 52
	ne[36] = "FreemiumBtn"
	ne[31] = ne[25](ne[32], ne[33])
	ne[40] = "Color3"
	ne[54] = "Color3"
	ne[25] = up4
	ne[68] = "UDim"
	ne[41] = 18
	ne[45] = .5
	ne[39] = ENV[ne[40]]
	ne[40] = "fromRGB"
	ne[35] = "Name"
	ne[51] = 26
	ne[33] = "TextButton"
	ne[37] = "BackgroundColor3"
	ne[44] = "Vector2"
	ne[38] = ne[39][ne[40]]
	ne[40] = 30
	ne[39] = ne[38](ne[40], ne[41], ne[42])
	ne[41] = "AnchorPoint"
	ne[40] = .15
	ne[43] = ENV[ne[44]]
	ne[38] = "BackgroundTransparency"
	ne[76] = "Enum"
	ne[55] = 230
	ne[57] = "ZIndex"
	ne[46] = "UDim2"
	ne[44] = "new"
	ne[42] = ne[43][ne[44]]
	ne[44] = .5
	ne[43] = ne[42](ne[44], ne[45])
	ne[45] = ENV[ne[46]]
	ne[42] = "Position"
	ne[48] = .82
	ne[46] = "new"
	ne[49] = 0
	ne[58] = 1005
	ne[44] = ne[45][ne[46]]
	ne[46] = .5
	ne[47] = 0
	ne[45] = ne[44](ne[46], ne[47], ne[48], ne[49])
	ne[44] = "Size"
	ne[48] = "UDim2"
	ne[47] = ENV[ne[48]]
	ne[48] = "new"
	ne[46] = ne[47][ne[48]]
	ne[48] = .62
	ne[50] = 0
	ne[56] = 180
	ne[49] = 0
	ne[47] = ne[46](ne[48], ne[49], ne[50], ne[51])
	ne[46] = "Font"
	ne[51] = "Enum"
	ne[50] = ENV[ne[51]]
	ne[51] = "Font"
	ne[49] = ne[50][ne[51]]
	ne[72] = "ApplyStrokeMode"
	ne[50] = "GothamBold"
	ne[48] = ne[49][ne[50]]
	ne[51] = "TextColor3"
	ne[49] = "Text"
	ne[53] = ENV[ne[54]]
	ne[50] = "Continue Freemium"
	ne[54] = "fromRGB"
	ne[52] = ne[53][ne[54]]
	ne[54] = 130
	ne[53] = ne[52](ne[54], ne[55], ne[56])
	ne[54] = 11
	ne[59] = "Children"
	ne[55] = "AutoButtonColor"
	ne[56] = false
	ne[61] = up4
	ne[67] = ENV[ne[68]]
	ne[68] = "new"
	ne[52] = "TextSize"
	ne[66] = ne[67][ne[68]]
	ne[68] = 0
	ne[67] = ne[66](ne[68], ne[69])
	ne[69] = "Color3"
	ne[64] = {
		[ne[65]] = ne[67]
	}
	ne[62] = ne[61](ne[63], ne[64])
	ne[64] = "UIStroke"
	ne[66] = "Color"
	ne[61] = up4
	ne[68] = ENV[ne[69]]
	ne[69] = "fromRGB"
	ne[67] = ne[68][ne[69]]
	ne[69] = 80
	ne[68] = ne[67](ne[69], ne[70], ne[71])
	ne[69] = .45
	ne[75] = ENV[ne[76]]
	ne[70] = "Thickness"
	ne[76] = "ApplyStrokeMode"
	ne[71] = 1
	ne[67] = "Transparency"
	ne[74] = ne[75][ne[76]]
	ne[75] = "Border"
	ne[73] = ne[74][ne[75]]
	ne[65] = {
		[ne[66]] = ne[68],
		[ne[67]] = ne[69],
		[ne[70]] = ne[71],
		[ne[72]] = ne[73]
	}
	ne[63] = {
		ne[61](ne[64], ne[65])
	}
	ne[60] = {
		ne[62],
		unpack(ne[63])
	}
	ne[66] = 1
	ne[34] = {
		[ne[35]] = ne[36],
		[ne[37]] = ne[39],
		[ne[38]] = ne[40],
		[ne[41]] = ne[43],
		[ne[42]] = ne[45],
		[ne[44]] = ne[47],
		[ne[46]] = ne[48],
		[ne[49]] = ne[50],
		[ne[51]] = ne[53],
		[ne[52]] = ne[54],
		[ne[55]] = ne[56],
		[ne[57]] = ne[58],
		[ne[59]] = ne[60]
	}
	ne[41] = 220
	ne[52] = 1
	ne[32] = ne[25](ne[33], ne[34])
	ne[36] = "BackgroundColor3"
	ne[45] = "Vector2"
	ne[34] = "Frame"
	ne[39] = "Color3"
	ne[25] = up4
	ne[38] = ENV[ne[39]]
	ne[40] = 80
	ne[42] = "AnchorPoint"
	ne[49] = .44
	ne[63] = 1
	ne[39] = "fromRGB"
	ne[37] = ne[38][ne[39]]
	ne[48] = 0
	ne[39] = 140
	ne[38] = ne[37](ne[39], ne[40], ne[41])
	ne[56] = "Transparency"
	ne[37] = "BackgroundTransparency"
	ne[51] = 0
	ne[40] = "BorderSizePixel"
	ne[44] = ENV[ne[45]]
	ne[46] = .5
	ne[50] = 0
	ne[45] = "new"
	ne[39] = .7
	ne[41] = 0
	ne[43] = ne[44][ne[45]]
	ne[45] = .5
	ne[44] = ne[43](ne[45], ne[46])
	ne[43] = "Position"
	ne[47] = "UDim2"
	ne[46] = ENV[ne[47]]
	ne[64] = 0
	ne[59] = "NumberSequence"
	ne[47] = "new"
	ne[62] = "NumberSequenceKeypoint"
	ne[45] = ne[46][ne[47]]
	ne[47] = .5
	ne[46] = ne[45](ne[47], ne[48], ne[49], ne[50])
	ne[49] = "UDim2"
	ne[45] = "Size"
	ne[48] = ENV[ne[49]]
	ne[49] = "new"
	ne[47] = ne[48][ne[49]]
	ne[50] = 0
	ne[49] = .55
	ne[54] = "UIGradient"
	ne[48] = ne[47](ne[49], ne[50], ne[51], ne[52])
	ne[50] = "Children"
	ne[49] = 1004
	ne[52] = up4
	ne[47] = "ZIndex"
	ne[58] = ENV[ne[59]]
	ne[59] = "new"
	ne[57] = ne[58][ne[59]]
	ne[61] = ENV[ne[62]]
	ne[62] = "new"
	ne[60] = ne[61][ne[62]]
	ne[62] = 0
	ne[61] = ne[60](ne[62], ne[63])
	ne[63] = "NumberSequenceKeypoint"
	ne[62] = ENV[ne[63]]
	ne[65] = 0
	ne[63] = "new"
	ne[60] = ne[62][ne[63]]
	ne[63] = .2
	ne[62] = ne[60](ne[63], ne[64])
	ne[64] = "NumberSequenceKeypoint"
	ne[63] = ENV[ne[64]]
	ne[64] = "new"
	ne[60] = ne[63][ne[64]]
	ne[64] = .8
	ne[63] = ne[60](ne[64], ne[65])
	ne[65] = "NumberSequenceKeypoint"
	ne[64] = ENV[ne[65]]
	ne[65] = "new"
	ne[60] = ne[64][ne[65]]
	ne[65] = 1
	ne[64] = {
		ne[60](ne[65], ne[66])
	}
	ne[59] = {
		ne[61],
		ne[62],
		ne[63],
		unpack(ne[64])
	}
	ne[58] = ne[57](ne[59])
	ne[55] = {
		[ne[56]] = ne[58]
	}
	ne[53] = {
		ne[52](ne[54], ne[55])
	}
	ne[51] = {
		unpack(ne[53])
	}
	ne[35] = {
		[ne[36]] = ne[38],
		[ne[37]] = ne[39],
		[ne[40]] = ne[41],
		[ne[42]] = ne[44],
		[ne[43]] = ne[46],
		[ne[45]] = ne[48],
		[ne[47]] = ne[49],
		[ne[50]] = ne[51]
	}
	ne[33] = {
		ne[25](ne[34], ne[35])
	}
	ne[24] = {
		ne[26],
		ne[27],
		ne[28],
		ne[29],
		ne[30],
		ne[31],
		ne[32],
		unpack(ne[33])
	}
	ne[4] = {
		[ne[5]] = ne[6],
		[ne[7]] = ne[9],
		[ne[8]] = ne[10],
		[ne[11]] = ne[12],
		[ne[13]] = ne[15],
		[ne[14]] = ne[17],
		[ne[16]] = ne[18],
		[ne[19]] = ne[20],
		[ne[21]] = ne[22],
		[ne[23]] = ne[24]
	}
	ne[5] = f[he]
	ne[2] = ne[1](ne[3], ne[4], ne[5])
	ne[3] = "IsFullLocked"
	f[L] = ne[2]
	ne[1] = ENV[ne[3]]
	ne[3] = ne[1]()
	if ne[3] then goto L12283446 end
::L13114087::
	ne[32] = 0
	ne[26] = "UICorner"
	ne[11] = 0
	ne[6] = "BackgroundColor3"
	ne[1] = up4
	ne[4] = "Frame"
	ne[8] = "ThemeColor"
	ne[31] = "UDim"
	ne[7] = ENV[ne[8]]
	ne[9] = "Body"
	ne[8] = ne[7](ne[9])
	ne[12] = "Position"
	ne[20] = 32
	ne[9] = 1
	ne[17] = 0
	ne[22] = "Children"
	ne[10] = "BorderSizePixel"
	ne[16] = 0
	ne[7] = "BackgroundTransparency"
	ne[15] = "UDim2"
	ne[18] = 0
	ne[14] = ENV[ne[15]]
	ne[19] = 0
	ne[15] = "new"
	ne[13] = ne[14][ne[15]]
	ne[15] = 0
	ne[14] = ne[13](ne[15], ne[16], ne[17], ne[18])
	ne[17] = "UDim2"
	ne[16] = ENV[ne[17]]
	ne[13] = "Size"
	ne[17] = "new"
	ne[18] = 0
	ne[15] = ne[16][ne[17]]
	ne[21] = true
	ne[17] = 1
	ne[16] = ne[15](ne[17], ne[18], ne[19], ne[20])
	ne[20] = "ClipsDescendants"
	ne[15] = "ZIndex"
	ne[24] = up4
	ne[28] = "CornerRadius"
	ne[19] = true
	ne[17] = 1005
	ne[30] = ENV[ne[31]]
	ne[31] = "new"
	ne[29] = ne[30][ne[31]]
	ne[31] = 1
	ne[30] = ne[29](ne[31], ne[32])
	ne[18] = "Active"
	ne[27] = {
		[ne[28]] = ne[30]
	}
	ne[25] = {
		ne[24](ne[26], ne[27])
	}
	ne[23] = {
		unpack(ne[25])
	}
	ne[5] = {
		[ne[6]] = ne[8],
		[ne[7]] = ne[9],
		[ne[10]] = ne[11],
		[ne[12]] = ne[14],
		[ne[13]] = ne[16],
		[ne[15]] = ne[17],
		[ne[18]] = ne[19],
		[ne[20]] = ne[21],
		[ne[22]] = ne[23]
	}
	ne[6] = f[he]
	ne[10] = 1
	ne[3] = ne[1](ne[4], ne[5], ne[6])
	ne[26] = "Enum"
	ne[1] = O()
	ne[15] = 12
	ne[17] = 2
	f[ne[1]] = ne[3]
	ne[9] = "BackgroundTransparency"
	ne[5] = "TextLabel"
	ne[11] = "Position"
	ne[8] = "TitleHub"
	ne[28] = "Enum"
	ne[14] = "UDim2"
	ne[3] = up4
	ne[16] = 0
	ne[7] = "Name"
	ne[13] = ENV[ne[14]]
	ne[14] = "new"
	ne[12] = ne[13][ne[14]]
	ne[14] = 0
	ne[13] = ne[12](ne[14], ne[15], ne[16], ne[17])
	ne[12] = "Size"
	ne[16] = "UDim2"
	ne[15] = ENV[ne[16]]
	ne[16] = "new"
	ne[19] = 16
	ne[14] = ne[15][ne[16]]
	ne[18] = 0
	ne[17] = - 255
	ne[16] = 1
	ne[15] = ne[14](ne[16], ne[17], ne[18], ne[19])
	ne[14] = "Font"
	ne[19] = "Enum"
	ne[23] = 255
	ne[18] = ENV[ne[19]]
	ne[19] = "Font"
	ne[21] = "Color3"
	ne[17] = ne[18][ne[19]]
	ne[32] = "Enum"
	ne[18] = "FredokaOne"
	ne[22] = 255
	ne[16] = ne[17][ne[18]]
	ne[17] = "Text"
	ne[18] = "TextColor3"
	ne[20] = ENV[ne[21]]
	ne[21] = "fromRGB"
	ne[19] = ne[20][ne[21]]
	ne[21] = 255
	ne[20] = ne[19](ne[21], ne[22], ne[23])
	ne[19] = "TextSize"
	ne[22] = "TextTruncate"
	ne[21] = 13
	ne[30] = "Enum"
	ne[25] = ENV[ne[26]]
	ne[26] = "TextTruncate"
	ne[24] = ne[25][ne[26]]
	ne[25] = "AtEnd"
	ne[23] = ne[24][ne[25]]
	ne[24] = "TextXAlignment"
	ne[27] = ENV[ne[28]]
	ne[28] = "TextXAlignment"
	ne[26] = ne[27][ne[28]]
	ne[27] = "Left"
	ne[25] = ne[26][ne[27]]
	ne[6] = {
		[ne[7]] = ne[8],
		[ne[9]] = ne[10],
		[ne[11]] = ne[13],
		[ne[12]] = ne[15],
		[ne[14]] = ne[16],
		[ne[17]] = W,
		[ne[18]] = ne[20],
		[ne[19]] = ne[21],
		[ne[22]] = ne[23],
		[ne[24]] = ne[25]
	}
	ne[17] = 0
	ne[7] = f[ne[1]]
	ne[15] = "UDim2"
	ne[12] = "Position"
	ne[27] = "os"
	ne[4] = ne[3](ne[5], ne[6], ne[7])
	ne[10] = "BackgroundTransparency"
	ne[3] = O()
	ne[9] = "SubtitleHub"
	ne[11] = 1
	ne[23] = "string"
	f[ne[3]] = ne[4]
	ne[19] = 0
	ne[16] = 12
	ne[8] = "Name"
	ne[6] = "TextLabel"
	ne[4] = up4
	ne[14] = ENV[ne[15]]
	ne[15] = "new"
	ne[18] = 18
	ne[13] = ne[14][ne[15]]
	ne[15] = 0
	ne[14] = ne[13](ne[15], ne[16], ne[17], ne[18])
	ne[13] = "Size"
	ne[17] = "UDim2"
	ne[18] = - 255
	ne[16] = ENV[ne[17]]
	ne[17] = "new"
	ne[20] = 12
	ne[15] = ne[16][ne[17]]
	ne[17] = 1
	ne[16] = ne[15](ne[17], ne[18], ne[19], ne[20])
	ne[15] = "Font"
	ne[20] = "Enum"
	ne[19] = ENV[ne[20]]
	ne[20] = "Font"
	ne[18] = ne[19][ne[20]]
	ne[20] = "Text"
	ne[19] = "Gotham"
	ne[17] = ne[18][ne[19]]
	ne[19] = true
	ne[22] = ENV[ne[23]]
	ne[23] = "format"
	ne[18] = "RichText"
	ne[21] = ne[22][ne[23]]
	ne[23] = "<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>"
	ne[24] = f[j]
	ne[26] = ENV[ne[27]]
	ne[27] = "date"
	ne[25] = ne[26][ne[27]]
	ne[27] = "%A"
	ne[26] = {
		ne[25](ne[27])
	}
	ne[25] = "Color3"
	ne[22] = ne[21](ne[23], ne[24], unpack(ne[26]))
	ne[27] = 200
	ne[24] = ENV[ne[25]]
	ne[21] = "TextColor3"
	ne[25] = "fromRGB"
	ne[23] = ne[24][ne[25]]
	ne[25] = 200
	ne[26] = 200
	ne[24] = ne[23](ne[25], ne[26], ne[27])
	ne[26] = "TextTruncate"
	ne[23] = "TextSize"
	ne[25] = 10
	ne[29] = ENV[ne[30]]
	ne[30] = "TextTruncate"
	ne[28] = ne[29][ne[30]]
	ne[29] = "AtEnd"
	ne[27] = ne[28][ne[29]]
	ne[28] = "TextXAlignment"
	ne[31] = ENV[ne[32]]
	ne[32] = "TextXAlignment"
	ne[30] = ne[31][ne[32]]
	ne[31] = "Left"
	ne[29] = ne[30][ne[31]]
	ne[7] = {
		[ne[8]] = ne[9],
		[ne[10]] = ne[11],
		[ne[12]] = ne[14],
		[ne[13]] = ne[16],
		[ne[15]] = ne[17],
		[ne[18]] = ne[19],
		[ne[20]] = ne[22],
		[ne[21]] = ne[24],
		[ne[23]] = ne[25],
		[ne[26]] = ne[27],
		[ne[28]] = ne[29]
	}
	ne[8] = f[ne[1]]
	ne[5] = ne[4](ne[6], ne[7], ne[8])
	ne[4] = O()
	f[ne[4]] = ne[5]
	ne[7] = "SetSubtitleTier"
	ne[6] = f[t]
	ne[5] = closure(fn_9201187, {
		t,
		ne[4],
		j,
		e,
		K
	})
	ne[6][ne[7]] = ne[5]
	ne[6] = "SetSubtitlePremium"
	ne[7] = "SetSubtitleTier"
	ne[5] = closure(fn_12206888, {
		t
	})
	ENV[ne[6]] = ne[5]
	ne[6] = f[t]
	ne[5] = ne[6][ne[7]]
	ne[6] = ne[5]()
	ne[6] = c
	ne[7] = f[L]
	ne[5] = ne[7]
	if ne[7] then goto L2527266 end
::L9436869::
	c = ne[6]
	if ne[5] then goto L6383883 end
::L12358811::
	ne[10] = O()
	ne[9] = "Enum"
	ne[8] = "SyncKeyAccess"
	ne[6] = closure(fn_11270311, {
		e,
		S,
		t
	})
	ne[7] = f[t]
	ne[11] = "RegisterKey"
	ne[7][ne[8]] = ne[6]
	ne[14] = "Enum"
	ne[8] = ENV[ne[9]]
	ne[9] = "KeyCode"
	ne[7] = ne[8][ne[9]]
	ne[13] = "RightControl"
	ne[9] = O()
	ne[12] = "_opt_UIKeybind"
	ne[8] = "RightControl"
	ne[6] = ne[7][ne[8]]
	ne[8] = O()
	ne[7] = O()
	f[ne[7]] = ne[6]
	ne[6] = false
	f[ne[8]] = ne[6]
	ne[6] = nil
	f[ne[9]] = ne[6]
	ne[6] = true
	f[ne[10]] = ne[6]
	ne[6] = up1
	ne[11] = ne[6][ne[11]]
	ne[11] = ne[11](ne[6], ne[12])
	ne[6] = up1
	ne[11] = "Get"
	ne[11] = ne[6][ne[11]]
	ne[12] = "_opt_UIKeybind"
	ne[11] = ne[11](ne[6], ne[12], ne[13])
	ne[13] = ENV[ne[14]]
	ne[14] = "KeyCode"
	ne[12] = ne[13][ne[14]]
	ne[6] = ne[12][ne[11]]
	if ne[6] then goto L7730882 end
::L13624054::
	ne[15] = "ImageButton"
	ne[57] = - 7
	ne[11] = nil
	ne[35] = 23
	ne[6] = nil
	ne[18] = 1
	ne[28] = 0
	ne[11] = O()
	ne[23] = .5
	ne[6] = nil
	f[ne[11]] = ne[6]
	ne[29] = 20
	ne[24] = "UDim2"
	ne[6] = closure(fn_7929027, {
		ne[10],
		he
	})
	ne[31] = - 62
	ne[19] = "AnchorPoint"
	f[ne[11]] = ne[6]
	ne[22] = "Vector2"
	ne[61] = "UICorner"
	ne[17] = "BackgroundTransparency"
	ne[27] = 16
	ne[25] = - 34
	ne[13] = up4
	ne[21] = ENV[ne[22]]
	ne[22] = "new"
	ne[20] = ne[21][ne[22]]
	ne[26] = 0
	ne[22] = 1
	ne[21] = ne[20](ne[22], ne[23])
	ne[23] = ENV[ne[24]]
	ne[20] = "Position"
	ne[24] = "new"
	ne[22] = ne[23][ne[24]]
	ne[24] = 1
	ne[73] = "Color3"
	ne[23] = ne[22](ne[24], ne[25], ne[26], ne[27])
	ne[22] = "Size"
	ne[26] = "UDim2"
	ne[25] = ENV[ne[26]]
	ne[26] = "new"
	ne[24] = ne[25][ne[26]]
	ne[26] = 0
	ne[27] = 20
	ne[25] = ne[24](ne[26], ne[27], ne[28], ne[29])
	ne[48] = 100
	ne[58] = 0
	ne[28] = "rbxassetid://92966930061759"
	ne[24] = "ZIndex"
	ne[27] = "Image"
	ne[46] = "UDim"
	ne[43] = "CornerRadius"
	ne[26] = 1005
	ne[16] = {
		[ne[17]] = ne[18],
		[ne[19]] = ne[21],
		[ne[20]] = ne[23],
		[ne[22]] = ne[25],
		[ne[24]] = ne[26],
		[ne[27]] = ne[28]
	}
	ne[30] = 20
	ne[17] = f[he]
	ne[14] = ne[13](ne[15], ne[16], ne[17])
	ne[23] = "Vector2"
	ne[27] = 0
	ne[13] = O()
	ne[24] = .5
	ne[19] = 1
	ne[29] = 0
	ne[18] = "BackgroundTransparency"
	ne[20] = "AnchorPoint"
	f[ne[13]] = ne[14]
	ne[14] = up4
	ne[16] = "ImageButton"
	ne[22] = ENV[ne[23]]
	ne[23] = "new"
	ne[50] = "ApplyStrokeMode"
	ne[25] = "UDim2"
	ne[21] = ne[22][ne[23]]
	ne[26] = - 8
	ne[23] = 1
	ne[22] = ne[21](ne[23], ne[24])
	ne[24] = ENV[ne[25]]
	ne[59] = 14
	ne[28] = 16
	ne[21] = "Position"
	ne[25] = "new"
	ne[23] = ne[24][ne[25]]
	ne[25] = 1
	ne[24] = ne[23](ne[25], ne[26], ne[27], ne[28])
	ne[23] = "Size"
	ne[66] = "UDim"
	ne[75] = 255
	ne[27] = "UDim2"
	ne[26] = ENV[ne[27]]
	ne[63] = "CornerRadius"
	ne[27] = "new"
	ne[28] = 20
	ne[25] = ne[26][ne[27]]
	ne[37] = "Children"
	ne[27] = 0
	ne[34] = 0
	ne[26] = ne[25](ne[27], ne[28], ne[29], ne[30])
	ne[47] = 6
	ne[28] = "Image"
	ne[49] = 240
	ne[25] = "ZIndex"
	ne[29] = "rbxassetid://79324227570635"
	ne[70] = "ColorSequenceKeypoint"
	ne[27] = 1005
	ne[33] = 16
	ne[17] = {
		[ne[18]] = ne[19],
		[ne[20]] = ne[22],
		[ne[21]] = ne[24],
		[ne[23]] = ne[26],
		[ne[25]] = ne[27],
		[ne[28]] = ne[29]
	}
	ne[18] = f[he]
	ne[29] = .5
	ne[15] = ne[14](ne[16], ne[17], ne[18])
	ne[54] = "Enum"
	ne[24] = "Color3"
	ne[28] = "Vector2"
	ne[19] = "Name"
	ne[30] = "UDim2"
	ne[14] = O()
	ne[21] = "BackgroundColor3"
	f[ne[14]] = ne[15]
	ne[17] = "TextButton"
	ne[15] = up4
	ne[20] = "CreditsBtn"
	ne[25] = 10
	ne[23] = ENV[ne[24]]
	ne[24] = "fromRGB"
	ne[26] = 22
	ne[22] = ne[23][ne[24]]
	ne[24] = 14
	ne[32] = 0
	ne[23] = ne[22](ne[24], ne[25], ne[26])
	ne[22] = "BackgroundTransparency"
	ne[24] = 0
	ne[25] = "AnchorPoint"
	ne[74] = 160
	ne[27] = ENV[ne[28]]
	ne[28] = "new"
	ne[26] = ne[27][ne[28]]
	ne[28] = 1
	ne[27] = ne[26](ne[28], ne[29])
	ne[29] = ENV[ne[30]]
	ne[26] = "Position"
	ne[30] = "new"
	ne[28] = ne[29][ne[30]]
	ne[30] = 1
	ne[29] = ne[28](ne[30], ne[31], ne[32], ne[33])
	ne[32] = "UDim2"
	ne[28] = "Size"
	ne[31] = ENV[ne[32]]
	ne[32] = "new"
	ne[30] = ne[31][ne[32]]
	ne[55] = 0
	ne[33] = 83
	ne[32] = 0
	ne[31] = ne[30](ne[32], ne[33], ne[34], ne[35])
	ne[36] = 1005
	ne[33] = "AutoButtonColor"
	ne[35] = "ZIndex"
	ne[34] = false
	ne[41] = "UICorner"
	ne[39] = up4
	ne[32] = ""
	ne[67] = 0
	ne[30] = "Text"
	ne[45] = ENV[ne[46]]
	ne[46] = "new"
	ne[44] = ne[45][ne[46]]
	ne[46] = 0
	ne[45] = ne[44](ne[46], ne[47])
	ne[47] = "Color3"
	ne[42] = {
		[ne[43]] = ne[45]
	}
	ne[40] = ne[39](ne[41], ne[42])
	ne[44] = "Color"
	ne[42] = "UIStroke"
	ne[39] = up4
	ne[46] = ENV[ne[47]]
	ne[47] = "fromRGB"
	ne[45] = ne[46][ne[47]]
	ne[47] = 160
	ne[46] = ne[45](ne[47], ne[48], ne[49])
	ne[53] = ENV[ne[54]]
	ne[47] = .72
	ne[45] = "Transparency"
	ne[54] = "ApplyStrokeMode"
	ne[49] = 1
	ne[52] = ne[53][ne[54]]
	ne[54] = "UDim2"
	ne[48] = "Thickness"
	ne[53] = "Border"
	ne[51] = ne[52][ne[53]]
	ne[43] = {
		[ne[44]] = ne[46],
		[ne[45]] = ne[47],
		[ne[48]] = ne[49],
		[ne[50]] = ne[51]
	}
	ne[41] = ne[39](ne[42], ne[43])
	ne[45] = "BackgroundColor3"
	ne[48] = "Color3"
	ne[56] = .5
	ne[43] = "Frame"
	ne[50] = 240
	ne[39] = up4
	ne[47] = ENV[ne[48]]
	ne[49] = 100
	ne[48] = "fromRGB"
	ne[46] = ne[47][ne[48]]
	ne[48] = 160
	ne[47] = ne[46](ne[48], ne[49], ne[50])
	ne[50] = 0
	ne[53] = ENV[ne[54]]
	ne[48] = 0
	ne[49] = "BorderSizePixel"
	ne[46] = "BackgroundTransparency"
	ne[51] = "Position"
	ne[54] = "new"
	ne[52] = ne[53][ne[54]]
	ne[54] = 0
	ne[53] = ne[52](ne[54], ne[55], ne[56], ne[57])
	ne[52] = "Size"
	ne[56] = "UDim2"
	ne[55] = ENV[ne[56]]
	ne[56] = "new"
	ne[54] = ne[55][ne[56]]
	ne[57] = 2
	ne[56] = 0
	ne[55] = ne[54](ne[56], ne[57], ne[58], ne[59])
	ne[56] = 1006
	ne[57] = "Children"
	ne[59] = up4
	ne[65] = ENV[ne[66]]
	ne[66] = "new"
	ne[64] = ne[65][ne[66]]
	ne[54] = "ZIndex"
	ne[66] = 1
	ne[65] = ne[64](ne[66], ne[67])
	ne[62] = {
		[ne[63]] = ne[65]
	}
	ne[64] = "Color"
	ne[67] = "ColorSequence"
	ne[60] = ne[59](ne[61], ne[62])
	ne[62] = "UIGradient"
	ne[59] = up4
	ne[66] = ENV[ne[67]]
	ne[67] = "new"
	ne[65] = ne[66][ne[67]]
	ne[76] = 220
	ne[69] = ENV[ne[70]]
	ne[70] = "new"
	ne[68] = ne[69][ne[70]]
	ne[72] = ENV[ne[73]]
	ne[70] = 0
	ne[73] = "fromRGB"
	ne[71] = ne[72][ne[73]]
	ne[73] = 210
	ne[72] = {
		ne[71](ne[73], ne[74], ne[75])
	}
	ne[75] = 60
	ne[74] = "Color3"
	ne[71] = "ColorSequenceKeypoint"
	ne[69] = ne[68](ne[70], unpack(ne[72]))
	ne[70] = ENV[ne[71]]
	ne[71] = "new"
	ne[68] = ne[70][ne[71]]
	ne[71] = 1
	ne[73] = ENV[ne[74]]
	ne[74] = "fromRGB"
	ne[72] = ne[73][ne[74]]
	ne[74] = 120
	ne[73] = {
		ne[72](ne[74], ne[75], ne[76])
	}
	ne[70] = {
		ne[68](ne[71], unpack(ne[73]))
	}
	ne[67] = {
		ne[69],
		unpack(ne[70])
	}
	ne[66] = ne[65](ne[67])
	ne[67] = 90
	ne[65] = "Rotation"
	ne[63] = {
		[ne[64]] = ne[66],
		[ne[65]] = ne[67]
	}
	ne[61] = {
		ne[59](ne[62], ne[63])
	}
	ne[58] = {
		ne[60],
		unpack(ne[61])
	}
	ne[44] = {
		[ne[45]] = ne[47],
		[ne[46]] = ne[48],
		[ne[49]] = ne[50],
		[ne[51]] = ne[53],
		[ne[52]] = ne[55],
		[ne[54]] = ne[56],
		[ne[57]] = ne[58]
	}
	ne[48] = "Position"
	ne[47] = 1
	ne[53] = .5
	ne[46] = "BackgroundTransparency"
	ne[51] = "UDim2"
	ne[52] = 8
	ne[42] = ne[39](ne[43], ne[44])
	ne[60] = "Color3"
	ne[55] = 0
	ne[44] = "ImageLabel"
	ne[39] = up4
	ne[50] = ENV[ne[51]]
	ne[59] = 255
	ne[51] = "new"
	ne[49] = ne[50][ne[51]]
	ne[51] = 0
	ne[54] = - 7
	ne[50] = ne[49](ne[51], ne[52], ne[53], ne[54])
	ne[49] = "Size"
	ne[53] = "UDim2"
	ne[52] = ENV[ne[53]]
	ne[56] = 14
	ne[54] = 14
	ne[53] = "new"
	ne[51] = ne[52][ne[53]]
	ne[53] = 0
	ne[52] = ne[51](ne[53], ne[54], ne[55], ne[56])
	ne[51] = "Image"
	ne[57] = "Color3"
	ne[53] = "rbxassetid://83474083071373"
	ne[56] = ENV[ne[57]]
	ne[54] = "ImageColor3"
	ne[57] = "fromRGB"
	ne[55] = ne[56][ne[57]]
	ne[76] = 160
	ne[57] = 185
	ne[61] = 155
	ne[58] = 140
	ne[56] = ne[55](ne[57], ne[58], ne[59])
	ne[55] = "ZIndex"
	ne[57] = 1006
	ne[45] = {
		[ne[46]] = ne[47],
		[ne[48]] = ne[50],
		[ne[49]] = ne[52],
		[ne[51]] = ne[53],
		[ne[54]] = ne[56],
		[ne[55]] = ne[57]
	}
	ne[47] = "BackgroundTransparency"
	ne[49] = "Position"
	ne[43] = ne[39](ne[44], ne[45])
	ne[39] = up4
	ne[48] = 1
	ne[56] = 1
	ne[45] = "TextLabel"
	ne[57] = 0
	ne[52] = "UDim2"
	ne[55] = 0
	ne[54] = 0
	ne[51] = ENV[ne[52]]
	ne[52] = "new"
	ne[50] = ne[51][ne[52]]
	ne[53] = 27
	ne[52] = 0
	ne[51] = ne[50](ne[52], ne[53], ne[54], ne[55])
	ne[50] = "Size"
	ne[54] = "UDim2"
	ne[55] = - 30
	ne[53] = ENV[ne[54]]
	ne[54] = "new"
	ne[52] = ne[53][ne[54]]
	ne[54] = 1
	ne[53] = ne[52](ne[54], ne[55], ne[56], ne[57])
	ne[62] = 255
	ne[52] = "Font"
	ne[57] = "Enum"
	ne[65] = "Enum"
	ne[56] = ENV[ne[57]]
	ne[57] = "Font"
	ne[55] = ne[56][ne[57]]
	ne[56] = "GothamBold"
	ne[54] = ne[55][ne[56]]
	ne[57] = "TextColor3"
	ne[56] = "Credits"
	ne[55] = "Text"
	ne[59] = ENV[ne[60]]
	ne[60] = "fromRGB"
	ne[58] = ne[59][ne[60]]
	ne[60] = 195
	ne[59] = ne[58](ne[60], ne[61], ne[62])
	ne[61] = "TextXAlignment"
	ne[58] = "TextSize"
	ne[64] = ENV[ne[65]]
	ne[60] = 11
	ne[65] = "TextXAlignment"
	ne[63] = ne[64][ne[65]]
	ne[64] = "Left"
	ne[62] = ne[63][ne[64]]
	ne[63] = "ZIndex"
	ne[64] = 1006
	ne[46] = {
		[ne[47]] = ne[48],
		[ne[49]] = ne[51],
		[ne[50]] = ne[53],
		[ne[52]] = ne[54],
		[ne[55]] = ne[56],
		[ne[57]] = ne[59],
		[ne[58]] = ne[60],
		[ne[61]] = ne[62],
		[ne[63]] = ne[64]
	}
	ne[61] = 14
	ne[44] = {
		ne[39](ne[45], ne[46])
	}
	ne[38] = {
		ne[40],
		ne[41],
		ne[42],
		ne[43],
		unpack(ne[44])
	}
	ne[18] = {
		[ne[19]] = ne[20],
		[ne[21]] = ne[23],
		[ne[22]] = ne[24],
		[ne[25]] = ne[27],
		[ne[26]] = ne[29],
		[ne[28]] = ne[31],
		[ne[30]] = ne[32],
		[ne[33]] = ne[34],
		[ne[35]] = ne[36],
		[ne[37]] = ne[38]
	}
	ne[19] = f[he]
	ne[16] = ne[15](ne[17], ne[18], ne[19])
	ne[17] = "FindFirstChildOfClass"
	ne[15] = O()
	ne[38] = 1005
	ne[56] = "Enum"
	ne[59] = - 7
	ne[24] = "Color3"
	ne[21] = "BackgroundColor3"
	ne[26] = 38
	ne[33] = - 153
	f[ne[15]] = ne[16]
	ne[25] = 14
	ne[50] = 100
	ne[18] = "UIStroke"
	ne[16] = f[ne[15]]
	ne[17] = ne[16][ne[17]]
	ne[17] = ne[17](ne[16], ne[18])
	ne[18] = up13
	ne[19] = "BindHover"
	ne[27] = 22
	ne[16] = ne[18][ne[19]]
	ne[19] = f[ne[15]]
	ne[23] = ENV[ne[24]]
	ne[60] = 0
	ne[69] = 0
	ne[35] = 16
	ne[24] = "fromRGB"
	ne[22] = ne[23][ne[24]]
	ne[24] = 22
	ne[28] = 22
	ne[23] = ne[22](ne[24], ne[25], ne[26])
	ne[22] = "BackgroundColor3"
	ne[25] = "Color3"
	ne[32] = "UDim2"
	ne[58] = .5
	ne[24] = ENV[ne[25]]
	ne[63] = "UICorner"
	ne[26] = 10
	ne[25] = "fromRGB"
	ne[72] = "ColorSequenceKeypoint"
	ne[52] = "ApplyStrokeMode"
	ne[20] = {
		[ne[21]] = ne[23]
	}
	ne[45] = "CornerRadius"
	ne[23] = ne[24][ne[25]]
	ne[25] = 14
	ne[24] = ne[23](ne[25], ne[26], ne[27])
	ne[48] = "UDim"
	ne[23] = "Transparency"
	ne[25] = .72
	ne[21] = {
		[ne[22]] = ne[24]
	}
	ne[26] = "Color3"
	ne[24] = .38
	ne[22] = {
		[ne[23]] = ne[24]
	}
	ne[24] = "Transparency"
	ne[23] = {
		[ne[24]] = ne[25]
	}
	ne[39] = "Children"
	ne[18] = ne[16](ne[19], ne[20], ne[21], ne[22], ne[23], ne[17])
	ne[19] = "TextButton"
	ne[27] = 10
	ne[23] = "BackgroundColor3"
	ne[22] = "SettingsBtn"
	ne[30] = "Vector2"
	ne[21] = "Name"
	ne[51] = 240
	ne[16] = up4
	ne[25] = ENV[ne[26]]
	ne[26] = "fromRGB"
	ne[24] = ne[25][ne[26]]
	ne[26] = 14
	ne[25] = ne[24](ne[26], ne[27], ne[28])
	ne[26] = 0
	ne[24] = "BackgroundTransparency"
	ne[27] = "AnchorPoint"
	ne[29] = ENV[ne[30]]
	ne[75] = "Color3"
	ne[30] = "new"
	ne[28] = ne[29][ne[30]]
	ne[77] = 255
	ne[37] = 23
	ne[30] = 1
	ne[31] = .5
	ne[29] = ne[28](ne[30], ne[31])
	ne[34] = 0
	ne[28] = "Position"
	ne[65] = "CornerRadius"
	ne[31] = ENV[ne[32]]
	ne[36] = 0
	ne[32] = "new"
	ne[30] = ne[31][ne[32]]
	ne[32] = 1
	ne[43] = "UICorner"
	ne[31] = ne[30](ne[32], ne[33], ne[34], ne[35])
	ne[30] = "Size"
	ne[34] = "UDim2"
	ne[33] = ENV[ne[34]]
	ne[34] = "new"
	ne[35] = 83
	ne[32] = ne[33][ne[34]]
	ne[34] = 0
	ne[33] = ne[32](ne[34], ne[35], ne[36], ne[37])
	ne[36] = false
	ne[41] = up4
	ne[37] = "ZIndex"
	ne[35] = "AutoButtonColor"
	ne[34] = ""
	ne[57] = 0
	ne[47] = ENV[ne[48]]
	ne[49] = 6
	ne[48] = "new"
	ne[46] = ne[47][ne[48]]
	ne[32] = "Text"
	ne[48] = 0
	ne[47] = ne[46](ne[48], ne[49])
	ne[49] = "Color3"
	ne[44] = {
		[ne[45]] = ne[47]
	}
	ne[46] = "Color"
	ne[42] = ne[41](ne[43], ne[44])
	ne[41] = up4
	ne[68] = "UDim"
	ne[48] = ENV[ne[49]]
	ne[44] = "UIStroke"
	ne[49] = "fromRGB"
	ne[47] = ne[48][ne[49]]
	ne[49] = 160
	ne[48] = ne[47](ne[49], ne[50], ne[51])
	ne[47] = "Transparency"
	ne[55] = ENV[ne[56]]
	ne[56] = "ApplyStrokeMode"
	ne[49] = .72
	ne[51] = 1
	ne[50] = "Thickness"
	ne[54] = ne[55][ne[56]]
	ne[55] = "Border"
	ne[53] = ne[54][ne[55]]
	ne[45] = {
		[ne[46]] = ne[48],
		[ne[47]] = ne[49],
		[ne[50]] = ne[51],
		[ne[52]] = ne[53]
	}
	ne[52] = 240
	ne[51] = 100
	ne[43] = ne[41](ne[44], ne[45])
	ne[50] = "Color3"
	ne[47] = "BackgroundColor3"
	ne[45] = "Frame"
	ne[41] = up4
	ne[49] = ENV[ne[50]]
	ne[50] = "fromRGB"
	ne[48] = ne[49][ne[50]]
	ne[50] = 160
	ne[49] = ne[48](ne[50], ne[51], ne[52])
	ne[50] = 0
	ne[53] = "Position"
	ne[56] = "UDim2"
	ne[51] = "BorderSizePixel"
	ne[55] = ENV[ne[56]]
	ne[56] = "new"
	ne[48] = "BackgroundTransparency"
	ne[78] = 220
	ne[52] = 0
	ne[54] = ne[55][ne[56]]
	ne[56] = 0
	ne[55] = ne[54](ne[56], ne[57], ne[58], ne[59])
	ne[59] = 2
	ne[58] = "UDim2"
	ne[54] = "Size"
	ne[57] = ENV[ne[58]]
	ne[58] = "new"
	ne[56] = ne[57][ne[58]]
	ne[58] = 0
	ne[57] = ne[56](ne[58], ne[59], ne[60], ne[61])
	ne[58] = 1006
	ne[56] = "ZIndex"
	ne[59] = "Children"
	ne[61] = up4
	ne[67] = ENV[ne[68]]
	ne[68] = "new"
	ne[66] = ne[67][ne[68]]
	ne[68] = 1
	ne[67] = ne[66](ne[68], ne[69])
	ne[64] = {
		[ne[65]] = ne[67]
	}
	ne[69] = "ColorSequence"
	ne[62] = ne[61](ne[63], ne[64])
	ne[66] = "Color"
	ne[64] = "UIGradient"
	ne[61] = up4
	ne[68] = ENV[ne[69]]
	ne[69] = "new"
	ne[67] = ne[68][ne[69]]
	ne[71] = ENV[ne[72]]
	ne[72] = "new"
	ne[70] = ne[71][ne[72]]
	ne[72] = 0
	ne[74] = ENV[ne[75]]
	ne[75] = "fromRGB"
	ne[73] = ne[74][ne[75]]
	ne[75] = 210
	ne[74] = {
		ne[73](ne[75], ne[76], ne[77])
	}
	ne[71] = ne[70](ne[72], unpack(ne[74]))
	ne[73] = "ColorSequenceKeypoint"
	ne[72] = ENV[ne[73]]
	ne[73] = "new"
	ne[76] = "Color3"
	ne[70] = ne[72][ne[73]]
	ne[73] = 1
	ne[75] = ENV[ne[76]]
	ne[76] = "fromRGB"
	ne[74] = ne[75][ne[76]]
	ne[77] = 60
	ne[76] = 120
	ne[75] = {
		ne[74](ne[76], ne[77], ne[78])
	}
	ne[72] = {
		ne[70](ne[73], unpack(ne[75]))
	}
	ne[69] = {
		ne[71],
		unpack(ne[72])
	}
	ne[68] = ne[67](ne[69])
	ne[69] = 90
	ne[67] = "Rotation"
	ne[65] = {
		[ne[66]] = ne[68],
		[ne[67]] = ne[69]
	}
	ne[63] = {
		ne[61](ne[64], ne[65])
	}
	ne[60] = {
		ne[62],
		unpack(ne[63])
	}
	ne[46] = {
		[ne[47]] = ne[49],
		[ne[48]] = ne[50],
		[ne[51]] = ne[52],
		[ne[53]] = ne[55],
		[ne[54]] = ne[57],
		[ne[56]] = ne[58],
		[ne[59]] = ne[60]
	}
	ne[44] = ne[41](ne[45], ne[46])
	ne[54] = 8
	ne[57] = 0
	ne[49] = 1
	ne[41] = up4
	ne[58] = 14
	ne[61] = 255
	ne[53] = "UDim2"
	ne[50] = "Position"
	ne[52] = ENV[ne[53]]
	ne[56] = - 7
	ne[48] = "BackgroundTransparency"
	ne[46] = "ImageLabel"
	ne[53] = "new"
	ne[51] = ne[52][ne[53]]
	ne[55] = .5
	ne[53] = 0
	ne[52] = ne[51](ne[53], ne[54], ne[55], ne[56])
	ne[51] = "Size"
	ne[56] = 14
	ne[55] = "UDim2"
	ne[54] = ENV[ne[55]]
	ne[55] = "new"
	ne[53] = ne[54][ne[55]]
	ne[55] = 0
	ne[60] = 140
	ne[67] = "Enum"
	ne[54] = ne[53](ne[55], ne[56], ne[57], ne[58])
	ne[53] = "Image"
	ne[56] = "ImageColor3"
	ne[59] = "Color3"
	ne[58] = ENV[ne[59]]
	ne[55] = "rbxassetid://81151604784579"
	ne[59] = "fromRGB"
	ne[57] = ne[58][ne[59]]
	ne[59] = 185
	ne[58] = ne[57](ne[59], ne[60], ne[61])
	ne[57] = "ZIndex"
	ne[59] = 1006
	ne[47] = {
		[ne[48]] = ne[49],
		[ne[50]] = ne[52],
		[ne[51]] = ne[54],
		[ne[53]] = ne[55],
		[ne[56]] = ne[58],
		[ne[57]] = ne[59]
	}
	ne[54] = "UDim2"
	ne[49] = "BackgroundTransparency"
	ne[58] = 1
	ne[55] = 27
	ne[45] = ne[41](ne[46], ne[47])
	ne[47] = "TextLabel"
	ne[57] = 0
	ne[50] = 1
	ne[51] = "Position"
	ne[41] = up4
	ne[62] = "Color3"
	ne[56] = 0
	ne[53] = ENV[ne[54]]
	ne[54] = "new"
	ne[52] = ne[53][ne[54]]
	ne[54] = 0
	ne[53] = ne[52](ne[54], ne[55], ne[56], ne[57])
	ne[57] = - 30
	ne[52] = "Size"
	ne[56] = "UDim2"
	ne[55] = ENV[ne[56]]
	ne[59] = 0
	ne[56] = "new"
	ne[54] = ne[55][ne[56]]
	ne[56] = 1
	ne[55] = ne[54](ne[56], ne[57], ne[58], ne[59])
	ne[54] = "Font"
	ne[59] = "Enum"
	ne[58] = ENV[ne[59]]
	ne[59] = "Font"
	ne[57] = ne[58][ne[59]]
	ne[58] = "GothamBold"
	ne[63] = 155
	ne[64] = 255
	ne[59] = "TextColor3"
	ne[56] = ne[57][ne[58]]
	ne[58] = "Settings"
	ne[61] = ENV[ne[62]]
	ne[57] = "Text"
	ne[62] = "fromRGB"
	ne[60] = ne[61][ne[62]]
	ne[62] = 195
	ne[61] = ne[60](ne[62], ne[63], ne[64])
	ne[60] = "TextSize"
	ne[62] = 11
	ne[66] = ENV[ne[67]]
	ne[63] = "TextXAlignment"
	ne[67] = "TextXAlignment"
	ne[65] = ne[66][ne[67]]
	ne[66] = "Left"
	ne[64] = ne[65][ne[66]]
	ne[66] = 1006
	ne[65] = "ZIndex"
	ne[48] = {
		[ne[49]] = ne[50],
		[ne[51]] = ne[53],
		[ne[52]] = ne[55],
		[ne[54]] = ne[56],
		[ne[57]] = ne[58],
		[ne[59]] = ne[61],
		[ne[60]] = ne[62],
		[ne[63]] = ne[64],
		[ne[65]] = ne[66]
	}
	ne[46] = {
		ne[41](ne[47], ne[48])
	}
	ne[40] = {
		ne[42],
		ne[43],
		ne[44],
		ne[45],
		unpack(ne[46])
	}
	ne[20] = {
		[ne[21]] = ne[22],
		[ne[23]] = ne[25],
		[ne[24]] = ne[26],
		[ne[27]] = ne[29],
		[ne[28]] = ne[31],
		[ne[30]] = ne[33],
		[ne[32]] = ne[34],
		[ne[35]] = ne[36],
		[ne[37]] = ne[38],
		[ne[39]] = ne[40]
	}
	ne[21] = f[he]
	ne[18] = ne[16](ne[19], ne[20], ne[21])
	ne[20] = "UIStroke"
	ne[23] = "BackgroundColor3"
	ne[26] = "Color3"
	ne[16] = O()
	ne[21] = "BindHover"
	ne[19] = "FindFirstChildOfClass"
	f[ne[16]] = ne[18]
	ne[18] = f[ne[16]]
	ne[27] = 14
	ne[19] = ne[18][ne[19]]
	ne[19] = ne[19](ne[18], ne[20])
	ne[34] = 255
	ne[30] = 270
	ne[20] = up13
	ne[28] = 38
	ne[18] = ne[20][ne[21]]
	ne[21] = f[ne[16]]
	ne[25] = ENV[ne[26]]
	ne[35] = 200
	ne[26] = "fromRGB"
	ne[24] = ne[25][ne[26]]
	ne[26] = 22
	ne[25] = ne[24](ne[26], ne[27], ne[28])
	ne[27] = "Color3"
	ne[36] = 255
	ne[29] = 22
	ne[26] = ENV[ne[27]]
	ne[27] = "fromRGB"
	ne[28] = 10
	ne[24] = "BackgroundColor3"
	ne[22] = {
		[ne[23]] = ne[25]
	}
	ne[25] = ne[26][ne[27]]
	ne[27] = 14
	ne[26] = ne[25](ne[27], ne[28], ne[29])
	ne[27] = .72
	ne[23] = {
		[ne[24]] = ne[26]
	}
	ne[26] = .38
	ne[25] = "Transparency"
	ne[24] = {
		[ne[25]] = ne[26]
	}
	ne[26] = "Transparency"
	ne[25] = {
		[ne[26]] = ne[27]
	}
	ne[28] = "rbxassetid://83474083071373"
	ne[20] = ne[18](ne[21], ne[22], ne[23], ne[24], ne[25], ne[19])
	ne[18] = false
	ne[29] = 270
	ne[27] = "Credits"
	ne[20] = O()
	f[ne[20]] = ne[18]
	ne[18] = closure(fn_4315777, {
		up4,
		he,
		up6,
		ne[20]
	})
	ne[21] = f[t]
	ne[22] = "MakeOverlay"
	ne[21][ne[22]] = ne[18]
	ne[22] = "MakeOverlay"
	ne[31] = nil
	ne[21] = f[t]
	ne[18] = ne[21][ne[22]]
	ne[32] = {
		ne[18](ne[27], ne[28], ne[29], ne[30], ne[31])
	}
	ne[22] = ne[32][2]
	ne[23] = ne[32][3]
	ne[21] = ne[32][1]
	ne[30] = "Color3"
	ne[24] = ne[32][4]
	ne[26] = ne[32][6]
	ne[31] = 200
	ne[27] = "ServerOwner"
	ne[25] = ne[32][5]
	ne[18] = O()
	f[ne[18]] = ne[24]
	ne[24] = O()
	f[ne[24]] = ne[25]
	ne[25] = O()
	f[ne[25]] = ne[26]
	ne[32] = 80
	ne[29] = ENV[ne[30]]
	ne[30] = "fromRGB"
	ne[38] = 160
	ne[37] = 225
	ne[28] = ne[29][ne[30]]
	ne[30] = 255
	ne[29] = ne[28](ne[30], ne[31], ne[32])
	ne[28] = "MainDeveloper"
	ne[32] = "Color3"
	ne[33] = 115
	ne[31] = ENV[ne[32]]
	ne[32] = "fromRGB"
	ne[30] = ne[31][ne[32]]
	ne[32] = 175
	ne[31] = ne[30](ne[32], ne[33], ne[34])
	ne[34] = "Color3"
	ne[33] = ENV[ne[34]]
	ne[30] = "WebDesigner"
	ne[34] = "fromRGB"
	ne[32] = ne[33][ne[34]]
	ne[34] = 100
	ne[33] = ne[32](ne[34], ne[35], ne[36])
	ne[32] = "Tester"
	ne[36] = "Color3"
	ne[35] = ENV[ne[36]]
	ne[36] = "fromRGB"
	ne[34] = ne[35][ne[36]]
	ne[36] = 80
	ne[35] = ne[34](ne[36], ne[37], ne[38])
	ne[26] = {
		[ne[27]] = ne[29],
		[ne[28]] = ne[31],
		[ne[30]] = ne[33],
		[ne[32]] = ne[35]
	}
	ne[29] = 0
	ne[28] = # l
	ne[27] = ne[28] > ne[29]
	if ne[27] then goto L5966221 end
::L10514592::
	ne[28] = "ipairs"
	ne[27] = ENV[ne[28]]
	ne[31] = {
		ne[27](l)
	}
	ne[28] = ne[31][1]
	ne[30] = ne[31][3]
	ne[29] = ne[31][2]
::L13382118::
	ne[30], ne[31] = ne[28](ne[29], ne[30])
	if ne[30] then goto L10081538 end
::L382633::
	ne[29] = "Frame"
	ne[128] = "ApplyStrokeMode"
	ne[64] = "Malay"
	ne[35] = 90
	ne[53] = "NumberSequenceKeypoint"
	ne[34] = "Color3"
	ne[27] = up4
	ne[31] = "BackgroundColor3"
	ne[42] = 0
	ne[36] = 220
	ne[50] = "NumberSequence"
	ne[33] = ENV[ne[34]]
	ne[34] = "fromRGB"
	ne[84] = 0
	ne[47] = "Transparency"
	ne[32] = ne[33][ne[34]]
	ne[34] = 140
	ne[41] = 0
	ne[56] = 0
	ne[37] = "Size"
	ne[33] = ne[32](ne[34], ne[35], ne[36])
	ne[40] = "UDim2"
	ne[58] = "Chinese Traditional"
	ne[83] = "Slovenian"
	ne[35] = "BorderSizePixel"
	ne[43] = 1
	ne[36] = 0
	ne[34] = .78
	ne[32] = "BackgroundTransparency"
	ne[39] = ENV[ne[40]]
	ne[54] = 1
	ne[40] = "new"
	ne[38] = ne[39][ne[40]]
	ne[40] = 1
	ne[39] = ne[38](ne[40], ne[41], ne[42], ne[43])
	ne[55] = 0
	ne[43] = up4
	ne[40] = 23
	ne[125] = "Enum"
	ne[38] = "ZIndex"
	ne[49] = ENV[ne[50]]
	ne[41] = "Children"
	ne[45] = "UIGradient"
	ne[50] = "new"
	ne[48] = ne[49][ne[50]]
	ne[52] = ENV[ne[53]]
	ne[53] = "new"
	ne[51] = ne[52][ne[53]]
	ne[53] = 0
	ne[52] = ne[51](ne[53], ne[54])
	ne[54] = "NumberSequenceKeypoint"
	ne[53] = ENV[ne[54]]
	ne[54] = "new"
	ne[51] = ne[53][ne[54]]
	ne[54] = .12
	ne[88] = 130
	ne[53] = ne[51](ne[54], ne[55])
	ne[55] = "NumberSequenceKeypoint"
	ne[54] = ENV[ne[55]]
	ne[55] = "new"
	ne[51] = ne[54][ne[55]]
	ne[55] = .88
	ne[54] = ne[51](ne[55], ne[56])
	ne[57] = 1
	ne[56] = "NumberSequenceKeypoint"
	ne[55] = ENV[ne[56]]
	ne[56] = "new"
	ne[51] = ne[55][ne[56]]
	ne[56] = 1
	ne[55] = {
		ne[51](ne[56], ne[57])
	}
	ne[50] = {
		ne[52],
		ne[53],
		ne[54],
		unpack(ne[55])
	}
	ne[49] = ne[48](ne[50])
	ne[46] = {
		[ne[47]] = ne[49]
	}
	ne[44] = {
		ne[43](ne[45], ne[46])
	}
	ne[42] = {
		unpack(ne[44])
	}
	ne[65] = "Bengali"
	ne[30] = {
		[ne[31]] = ne[33],
		[ne[32]] = ne[34],
		[ne[35]] = ne[36],
		[ne[37]] = ne[39],
		[ne[38]] = ne[40],
		[ne[41]] = ne[42]
	}
	ne[78] = "Bulgarian"
	ne[36] = "UDim2"
	ne[32] = 1
	ne[76] = "Hebrew"
	ne[50] = "Enum"
	ne[28] = ne[27](ne[29], ne[30], ne[22])
	ne[39] = 22
	ne[74] = "Finnish"
	ne[29] = "Frame"
	ne[37] = 0
	ne[47] = 200
	ne[33] = "Size"
	ne[40] = 4
	ne[31] = "BackgroundTransparency"
	ne[38] = 0
	ne[69] = "Czech"
	ne[27] = up4
	ne[35] = ENV[ne[36]]
	ne[36] = "new"
	ne[34] = ne[35][ne[36]]
	ne[36] = 1
	ne[41] = 0
	ne[35] = ne[34](ne[36], ne[37], ne[38], ne[39])
	ne[34] = "ZIndex"
	ne[36] = 23
	ne[30] = {
		[ne[31]] = ne[32],
		[ne[33]] = ne[35],
		[ne[34]] = ne[36]
	}
	ne[28] = ne[27](ne[29], ne[30], ne[22])
	ne[37] = "UDim2"
	ne[32] = "BackgroundTransparency"
	ne[53] = "Vietnamese"
	ne[39] = 0
	ne[33] = 1
	ne[38] = 0
	ne[27] = up4
	ne[101] = 10
	ne[34] = "Position"
	ne[36] = ENV[ne[37]]
	ne[30] = "TextLabel"
	ne[37] = "new"
	ne[63] = "Ukrainian"
	ne[35] = ne[36][ne[37]]
	ne[75] = "Norwegian"
	ne[37] = 0
	ne[42] = 14
	ne[36] = ne[35](ne[37], ne[38], ne[39], ne[40])
	ne[39] = "UDim2"
	ne[35] = "Size"
	ne[38] = ENV[ne[39]]
	ne[39] = "new"
	ne[79] = "Croatian"
	ne[40] = 0
	ne[37] = ne[38][ne[39]]
	ne[54] = "Thai"
	ne[39] = 1
	ne[38] = ne[37](ne[39], ne[40], ne[41], ne[42])
	ne[42] = "Enum"
	ne[41] = ENV[ne[42]]
	ne[89] = 195
	ne[42] = "Font"
	ne[37] = "Font"
	ne[56] = "Portuguese"
	ne[92] = "Enum"
	ne[40] = ne[41][ne[42]]
	ne[41] = "GothamBold"
	ne[42] = "TextColor3"
	ne[39] = ne[40][ne[41]]
	ne[41] = "COMMUNITY"
	ne[46] = 90
	ne[40] = "Text"
	ne[45] = "Color3"
	ne[44] = ENV[ne[45]]
	ne[45] = "fromRGB"
	ne[43] = ne[44][ne[45]]
	ne[45] = 130
	ne[44] = ne[43](ne[45], ne[46], ne[47])
	ne[62] = "Dutch"
	ne[49] = ENV[ne[50]]
	ne[50] = "TextXAlignment"
	ne[45] = 9
	ne[43] = "TextSize"
	ne[48] = ne[49][ne[50]]
	ne[46] = "TextXAlignment"
	ne[49] = "Center"
	ne[100] = "UDim"
	ne[50] = true
	ne[47] = ne[48][ne[49]]
	ne[48] = "ZIndex"
	ne[142] = "ApplyStrokeMode"
	ne[66] = "Urdu"
	ne[77] = "Slovak"
	ne[49] = 24
	ne[102] = "Enum"
	ne[31] = {
		[ne[32]] = ne[33],
		[ne[34]] = ne[36],
		[ne[35]] = ne[38],
		[ne[37]] = ne[39],
		[ne[40]] = ne[41],
		[ne[42]] = ne[44],
		[ne[43]] = ne[45],
		[ne[46]] = ne[47],
		[ne[48]] = ne[49]
	}
	ne[29] = ne[27](ne[30], ne[31], ne[28])
	ne[42] = 255
	ne[41] = 145
	ne[34] = "@trustmenotcondom"
	ne[33] = "SubLabel"
	ne[49] = nil
	ne[43] = "OnClick"
	ne[40] = "Color3"
	ne[30] = "MakePremiumSocialCard"
	ne[27] = closure(fn_15084644, {
		up4,
		up6,
		up14
	})
	ne[37] = "AccentColor"
	ne[29] = f[t]
	ne[29][ne[30]] = ne[27]
	ne[127] = "Enum"
	ne[36] = "http://www.roblox.com/asset/?id=14620084334"
	ne[31] = "Label"
	ne[30] = "MakePremiumSocialCard"
	ne[29] = f[t]
	ne[32] = "TikTok"
	ne[27] = ne[29][ne[30]]
	ne[35] = "IconImg"
	ne[39] = ENV[ne[40]]
	ne[40] = "fromRGB"
	ne[38] = ne[39][ne[40]]
	ne[44] = closure(fn_4526782, {
		up5
	})
	ne[81] = "Lithuanian"
	ne[40] = 210
	ne[39] = ne[38](ne[40], ne[41], ne[42])
	ne[38] = "BadgeText"
	ne[45] = nil
	ne[40] = "COPY"
	ne[42] = "https://www.tiktok.com/@trustmenotcondom?_t=ZS-8syewdU3Bxq&_r=1"
	ne[41] = "CopyText"
	ne[30] = {
		[ne[31]] = ne[32],
		[ne[33]] = ne[34],
		[ne[35]] = ne[36],
		[ne[37]] = ne[39],
		[ne[38]] = ne[40],
		[ne[41]] = ne[42],
		[ne[43]] = ne[44]
	}
	ne[37] = "AccentColor"
	ne[36] = "rbxassetid://129297846250682"
	ne[31] = "Label"
	ne[29] = ne[27](ne[22], ne[30])
	ne[29] = f[t]
	ne[115] = "Enum"
	ne[32] = "Discord"
	ne[35] = "IconImg"
	ne[99] = 10
	ne[43] = "OnClick"
	ne[30] = "MakePremiumSocialCard"
	ne[40] = "Color3"
	ne[27] = ne[29][ne[30]]
	ne[41] = 137
	ne[33] = "SubLabel"
	ne[34] = "discord.gg/YEvpu5St2Z"
	ne[39] = ENV[ne[40]]
	ne[40] = "fromRGB"
	ne[42] = 255
	ne[38] = ne[39][ne[40]]
	ne[40] = 114
	ne[39] = ne[38](ne[40], ne[41], ne[42])
	ne[42] = "https://discord.gg/YEvpu5St2Z"
	ne[41] = "CopyText"
	ne[44] = closure(fn_5310197, {
		up5
	})
	ne[38] = "BadgeText"
	ne[40] = "COPY"
	ne[30] = {
		[ne[31]] = ne[32],
		[ne[33]] = ne[34],
		[ne[35]] = ne[36],
		[ne[37]] = ne[39],
		[ne[38]] = ne[40],
		[ne[41]] = ne[42],
		[ne[43]] = ne[44]
	}
	ne[35] = "Settings"
	ne[38] = 270
	ne[29] = ne[27](ne[22], ne[30])
	ne[37] = 270
	ne[29] = f[t]
	ne[39] = nil
	ne[30] = "MakeOverlay"
	ne[27] = ne[29][ne[30]]
	ne[36] = "rbxassetid://81151604784579"
	ne[40] = {
		ne[27](ne[35], ne[36], ne[37], ne[38], ne[39])
	}
	ne[30] = ne[40][2]
	ne[31] = ne[40][3]
	ne[118] = 132
	ne[34] = ne[40][6]
	ne[32] = ne[40][4]
	ne[29] = ne[40][1]
	ne[59] = "Arabic"
	ne[33] = ne[40][5]
	ne[27] = O()
	ne[43] = 270
	f[ne[27]] = ne[32]
	ne[32] = O()
	ne[36] = "MakeOverlay"
	ne[57] = "Chinese Simplified"
	f[ne[32]] = ne[33]
	ne[44] = 270
	ne[33] = O()
	f[ne[33]] = ne[34]
	ne[35] = f[t]
	ne[42] = "rbxassetid://7733715400"
	ne[34] = ne[35][ne[36]]
	ne[41] = "Save Manager"
	ne[46] = {
		ne[34](ne[41], ne[42], ne[43], ne[44], ne[45])
	}
	ne[39] = ne[46][5]
	ne[52] = "Korean"
	ne[36] = ne[46][2]
	ne[38] = ne[46][4]
	ne[73] = "Danish"
	ne[48] = closure(fn_539697, {
		t
	})
	ne[42] = "MouseButton1Click"
	ne[61] = "Polish"
	ne[44] = true
	ne[37] = ne[46][3]
	ne[35] = ne[46][1]
	ne[34] = O()
	ne[40] = ne[46][6]
	f[ne[34]] = ne[36]
	ne[43] = "_opt_AutoSave"
	ne[36] = O()
	ne[55] = "Russian"
	f[ne[36]] = ne[38]
	ne[38] = O()
	f[ne[38]] = ne[39]
	ne[39] = O()
	f[ne[39]] = ne[40]
	ne[98] = 7
	ne[41] = f[ne[15]]
	ne[40] = ne[41][ne[42]]
	ne[87] = "Color3"
	ne[41] = "Connect"
	ne[42] = closure(fn_6963692, {
		ne[15],
		up14,
		ne[33],
		ne[32],
		ne[39],
		ne[38],
		ne[18]
	})
	ne[41] = ne[40][ne[41]]
	ne[82] = "Latvian"
	ne[41] = ne[41](ne[40], ne[42])
	ne[67] = "Persian"
	ne[41] = "CloseFullLock"
	ne[42] = "MakeMiniToggle"
	ne[40] = closure(fn_4033376, {
		L
	})
	ENV[ne[41]] = ne[40]
	ne[80] = "Serbian"
	ne[40] = closure(fn_11999476, {
		t,
		up1,
		up4,
		up5,
		up6
	})
	ne[41] = f[t]
	ne[41][ne[42]] = ne[40]
	ne[41] = f[t]
	ne[40] = closure(fn_6688507, {
		up1,
		me,
		up4,
		up6,
		ne[20],
		up9
	})
	ne[42] = "MakeMiniSlider"
	ne[41][ne[42]] = ne[40]
	ne[70] = "Greek"
	ne[41] = f[t]
	ne[40] = closure(fn_12092912, {
		up4,
		ne[7],
		ne[9],
		ne[8]
	})
	ne[45] = false
	ne[42] = "MakeKeybindRow"
	ne[41][ne[42]] = ne[40]
	ne[42] = "MakeMiniToggle"
	ne[41] = f[t]
	ne[40] = ne[41][ne[42]]
	ne[42] = "Auto Save changes"
	ne[41] = ne[40](ne[30], ne[42], ne[43], ne[44])
	ne[42] = f[t]
	ne[44] = "_opt_AutoTranslate"
	ne[43] = "MakeMiniToggle"
	ne[40] = ne[42][ne[43]]
	ne[68] = "Romanian"
	ne[43] = "Auto Translate UI"
	ne[42] = ne[40](ne[30], ne[43], ne[44], ne[45])
	ne[45] = "_opt_UIScale"
	ne[44] = "MakeMiniSlider"
	ne[40] = O()
	ne[51] = "Japanese"
	f[ne[40]] = ne[42]
	ne[43] = f[t]
	ne[42] = ne[43][ne[44]]
	ne[46] = f[ce]
	ne[71] = "Swedish"
	ne[47] = f[Ze]
	ne[44] = "UI Scale"
	ne[43] = ne[42](ne[30], ne[44], ne[45], ne[46], ne[47], Qe, Ge, ne[48], ne[49], ne[50])
	ne[48] = "Spanish"
	ne[43] = f[t]
	ne[50] = "German"
	ne[49] = "French"
	ne[44] = "MakeKeybindRow"
	ne[46] = "RightControl"
	ne[45] = "_opt_UIKeybind"
	ne[72] = "Hungarian"
	ne[42] = ne[43][ne[44]]
	ne[44] = "UI Keybind"
	ne[43] = ne[42](ne[30], ne[44], ne[45], ne[46])
	ne[60] = "Italian"
	ne[47] = "Indonesian"
	ne[46] = "Turkish"
	ne[44] = "Filipino"
	ne[45] = "Hindi"
	ne[43] = "English"
	ne[42] = {
		ne[43],
		ne[44],
		ne[45],
		ne[46],
		ne[47],
		ne[48],
		ne[49],
		ne[50],
		ne[51],
		ne[52],
		ne[53],
		ne[54],
		ne[55],
		ne[56],
		ne[57],
		ne[58],
		ne[59],
		ne[60],
		ne[61],
		ne[62],
		ne[63],
		ne[64],
		ne[65],
		ne[66],
		ne[67],
		ne[68],
		ne[69],
		ne[70],
		ne[71],
		ne[72],
		ne[73],
		ne[74],
		ne[75],
		ne[76],
		ne[77],
		ne[78],
		ne[79],
		ne[80],
		ne[81],
		ne[82],
		ne[83]
	}
	ne[45] = O()
	ne[75] = "UDim"
	ne[67] = 0
	ne[46] = O()
	ne[51] = O()
	ne[43] = O()
	ne[50] = O()
	ne[59] = "Color3"
	ne[48] = O()
	ne[68] = 34
	f[ne[43]] = ne[42]
	ne[42] = 26
	ne[44] = O()
	ne[54] = "Frame"
	f[ne[44]] = ne[42]
	ne[42] = 3
	f[ne[45]] = ne[42]
	ne[42] = 8
	f[ne[46]] = ne[42]
	ne[49] = O()
	ne[83] = "Enum"
	ne[42] = 4
	ne[47] = O()
	ne[70] = "UICorner"
	f[ne[47]] = ne[42]
	ne[65] = "UDim2"
	ne[61] = 24
	ne[62] = "Size"
	ne[42] = 30
	ne[76] = 7
	f[ne[48]] = ne[42]
	ne[42] = 6
	f[ne[49]] = ne[42]
	ne[79] = "ApplyStrokeMode"
	ne[42] = 10
	f[ne[50]] = ne[42]
	ne[66] = 0
	ne[42] = ""
	f[ne[51]] = ne[42]
	ne[42] = false
	ne[52] = O()
	ne[56] = "BackgroundColor3"
	f[ne[52]] = ne[42]
	ne[42] = up4
	ne[116] = "Enum"
	ne[58] = ENV[ne[59]]
	ne[59] = "fromRGB"
	ne[57] = ne[58][ne[59]]
	ne[59] = 14
	ne[60] = 10
	ne[58] = ne[57](ne[59], ne[60], ne[61])
	ne[59] = .2
	ne[146] = "Enum"
	ne[61] = 0
	ne[60] = "BorderSizePixel"
	ne[64] = ENV[ne[65]]
	ne[57] = "BackgroundTransparency"
	ne[65] = "new"
	ne[63] = ne[64][ne[65]]
	ne[65] = 1
	ne[72] = "CornerRadius"
	ne[64] = ne[63](ne[65], ne[66], ne[67], ne[68])
	ne[63] = "ZIndex"
	ne[65] = 23
	ne[66] = "Children"
	ne[77] = 90
	ne[68] = up4
	ne[74] = ENV[ne[75]]
	ne[75] = "new"
	ne[78] = 220
	ne[73] = ne[74][ne[75]]
	ne[75] = 0
	ne[74] = ne[73](ne[75], ne[76])
	ne[71] = {
		[ne[72]] = ne[74]
	}
	ne[76] = "Color3"
	ne[69] = ne[68](ne[70], ne[71])
	ne[73] = "Color"
	ne[117] = "Color3"
	ne[71] = "UIStroke"
	ne[68] = up4
	ne[75] = ENV[ne[76]]
	ne[76] = "fromRGB"
	ne[97] = "UDim"
	ne[74] = ne[75][ne[76]]
	ne[76] = 140
	ne[75] = ne[74](ne[76], ne[77], ne[78])
	ne[74] = "Transparency"
	ne[78] = 1
	ne[82] = ENV[ne[83]]
	ne[77] = "Thickness"
	ne[76] = .7
	ne[83] = "ApplyStrokeMode"
	ne[149] = "Enum"
	ne[81] = ne[82][ne[83]]
	ne[82] = "Border"
	ne[80] = ne[81][ne[82]]
	ne[72] = {
		[ne[73]] = ne[75],
		[ne[74]] = ne[76],
		[ne[77]] = ne[78],
		[ne[79]] = ne[80]
	}
	ne[76] = "Position"
	ne[74] = "BackgroundTransparency"
	ne[79] = "UDim2"
	ne[70] = ne[68](ne[71], ne[72])
	ne[75] = 1
	ne[68] = up4
	ne[81] = 0
	ne[72] = "TextLabel"
	ne[83] = 1
	ne[80] = 14
	ne[82] = 0
	ne[78] = ENV[ne[79]]
	ne[79] = "new"
	ne[77] = ne[78][ne[79]]
	ne[79] = 0
	ne[78] = ne[77](ne[79], ne[80], ne[81], ne[82])
	ne[81] = "UDim2"
	ne[94] = "CornerRadius"
	ne[80] = ENV[ne[81]]
	ne[77] = "Size"
	ne[81] = "new"
	ne[82] = 0
	ne[79] = ne[80][ne[81]]
	ne[81] = .45
	ne[105] = "Enum"
	ne[80] = ne[79](ne[81], ne[82], ne[83], ne[84])
	ne[79] = "Font"
	ne[84] = "Enum"
	ne[83] = ENV[ne[84]]
	ne[84] = "Font"
	ne[82] = ne[83][ne[84]]
	ne[83] = "GothamBold"
	ne[84] = "TextColor3"
	ne[81] = ne[82][ne[83]]
	ne[86] = ENV[ne[87]]
	ne[82] = "Text"
	ne[87] = "fromRGB"
	ne[83] = "Language"
	ne[85] = ne[86][ne[87]]
	ne[87] = 155
	ne[86] = ne[85](ne[87], ne[88], ne[89])
	ne[88] = "TextXAlignment"
	ne[85] = "TextSize"
	ne[91] = ENV[ne[92]]
	ne[87] = 11
	ne[92] = "TextXAlignment"
	ne[90] = ne[91][ne[92]]
	ne[91] = "Left"
	ne[89] = ne[90][ne[91]]
	ne[90] = "ZIndex"
	ne[91] = 24
	ne[73] = {
		[ne[74]] = ne[75],
		[ne[76]] = ne[78],
		[ne[77]] = ne[80],
		[ne[79]] = ne[81],
		[ne[82]] = ne[83],
		[ne[84]] = ne[86],
		[ne[85]] = ne[87],
		[ne[88]] = ne[89],
		[ne[90]] = ne[91]
	}
	ne[86] = "ZIndex"
	ne[71] = {
		ne[68](ne[72], ne[73])
	}
	ne[67] = {
		ne[69],
		ne[70],
		unpack(ne[71])
	}
	ne[55] = {
		[ne[56]] = ne[58],
		[ne[57]] = ne[59],
		[ne[60]] = ne[61],
		[ne[62]] = ne[64],
		[ne[63]] = ne[65],
		[ne[66]] = ne[67]
	}
	ne[53] = ne[42](ne[54], ne[55], ne[30])
	ne[59] = 1
	ne[67] = .5
	ne[70] = 20
	ne[69] = 0
	ne[42] = up1
	ne[136] = "Enum"
	ne[56] = "English"
	ne[55] = "_opt_Language"
	ne[54] = "Get"
	ne[54] = ne[42][ne[54]]
	ne[54] = ne[54](ne[42], ne[55], ne[56])
	ne[60] = "AnchorPoint"
	ne[42] = up4
	ne[63] = "Vector2"
	ne[58] = "BackgroundTransparency"
	ne[62] = ENV[ne[63]]
	ne[63] = "new"
	ne[56] = "TextLabel"
	ne[72] = "Color3"
	ne[83] = 145
	ne[64] = .5
	ne[61] = ne[62][ne[63]]
	ne[77] = "Enum"
	ne[63] = 1
	ne[65] = "UDim2"
	ne[62] = ne[61](ne[63], ne[64])
	ne[68] = 0
	ne[61] = "Position"
	ne[64] = ENV[ne[65]]
	ne[65] = "new"
	ne[63] = ne[64][ne[65]]
	ne[66] = - 30
	ne[65] = 1
	ne[64] = ne[63](ne[65], ne[66], ne[67], ne[68])
	ne[107] = 6
	ne[63] = "Size"
	ne[67] = "UDim2"
	ne[66] = ENV[ne[67]]
	ne[68] = 130
	ne[67] = "new"
	ne[74] = 252
	ne[65] = ne[66][ne[67]]
	ne[87] = 30
	ne[67] = 0
	ne[66] = ne[65](ne[67], ne[68], ne[69], ne[70])
	ne[73] = 132
	ne[65] = "Font"
	ne[70] = "Enum"
	ne[69] = ENV[ne[70]]
	ne[70] = "Font"
	ne[68] = ne[69][ne[70]]
	ne[88] = "Children"
	ne[69] = "GothamBold"
	ne[67] = ne[68][ne[69]]
	ne[85] = false
	ne[68] = "Text"
	ne[69] = "TextColor3"
	ne[71] = ENV[ne[72]]
	ne[72] = "fromRGB"
	ne[70] = ne[71][ne[72]]
	ne[72] = 192
	ne[71] = ne[70](ne[72], ne[73], ne[74])
	ne[73] = "TextXAlignment"
	ne[72] = 11
	ne[76] = ENV[ne[77]]
	ne[70] = "TextSize"
	ne[77] = "TextXAlignment"
	ne[75] = ne[76][ne[77]]
	ne[76] = "Right"
	ne[74] = ne[75][ne[76]]
	ne[75] = "ZIndex"
	ne[76] = 24
	ne[57] = {
		[ne[58]] = ne[59],
		[ne[60]] = ne[62],
		[ne[61]] = ne[64],
		[ne[63]] = ne[66],
		[ne[65]] = ne[67],
		[ne[68]] = ne[54],
		[ne[69]] = ne[71],
		[ne[70]] = ne[72],
		[ne[73]] = ne[74],
		[ne[75]] = ne[76]
	}
	ne[68] = .5
	ne[60] = 1
	ne[55] = ne[42](ne[56], ne[57], ne[53])
	ne[65] = .5
	ne[61] = "AnchorPoint"
	ne[75] = 132
	ne[76] = 252
	ne[42] = O()
	ne[57] = "TextLabel"
	f[ne[42]] = ne[55]
	ne[59] = "BackgroundTransparency"
	ne[55] = up4
	ne[64] = "Vector2"
	ne[69] = 0
	ne[70] = 0
	ne[63] = ENV[ne[64]]
	ne[64] = "new"
	ne[82] = 110
	ne[62] = ne[63][ne[64]]
	ne[64] = 1
	ne[66] = "UDim2"
	ne[63] = ne[62](ne[64], ne[65])
	ne[62] = "Position"
	ne[65] = ENV[ne[66]]
	ne[67] = - 10
	ne[66] = "new"
	ne[64] = ne[65][ne[66]]
	ne[66] = 1
	ne[65] = ne[64](ne[66], ne[67], ne[68], ne[69])
	ne[69] = 14
	ne[71] = 14
	ne[68] = "UDim2"
	ne[67] = ENV[ne[68]]
	ne[64] = "Size"
	ne[68] = "new"
	ne[66] = ne[67][ne[68]]
	ne[68] = 0
	ne[67] = ne[66](ne[68], ne[69], ne[70], ne[71])
	ne[71] = "Enum"
	ne[70] = ENV[ne[71]]
	ne[66] = "Font"
	ne[71] = "Font"
	ne[69] = ne[70][ne[71]]
	ne[70] = "GothamBold"
	ne[71] = "TextColor3"
	ne[68] = ne[69][ne[70]]
	ne[69] = "Text"
	ne[70] = "\226\128\186"
	ne[74] = "Color3"
	ne[73] = ENV[ne[74]]
	ne[74] = "fromRGB"
	ne[72] = ne[73][ne[74]]
	ne[74] = 192
	ne[73] = ne[72](ne[74], ne[75], ne[76])
	ne[72] = "TextSize"
	ne[76] = 24
	ne[84] = "Visible"
	ne[74] = 14
	ne[75] = "ZIndex"
	ne[58] = {
		[ne[59]] = ne[60],
		[ne[61]] = ne[63],
		[ne[62]] = ne[65],
		[ne[64]] = ne[67],
		[ne[66]] = ne[68],
		[ne[69]] = ne[70],
		[ne[71]] = ne[73],
		[ne[72]] = ne[74],
		[ne[75]] = ne[76]
	}
	ne[74] = 2
	ne[70] = 0
	ne[66] = "Vector2"
	ne[60] = 1
	ne[63] = "AnchorPoint"
	ne[56] = ne[55](ne[57], ne[58], ne[53])
	ne[57] = "Frame"
	ne[62] = 0
	ne[68] = "UDim2"
	ne[61] = "BorderSizePixel"
	ne[55] = up4
	ne[71] = 0
	ne[92] = "UICorner"
	ne[59] = "BackgroundTransparency"
	ne[65] = ENV[ne[66]]
	ne[66] = "new"
	ne[64] = ne[65][ne[66]]
	ne[69] = 0
	ne[66] = .5
	ne[67] = 0
	ne[65] = ne[64](ne[66], ne[67])
	ne[80] = 230
	ne[64] = "Position"
	ne[67] = ENV[ne[68]]
	ne[79] = "Color3"
	ne[68] = "new"
	ne[66] = ne[67][ne[68]]
	ne[68] = .5
	ne[67] = ne[66](ne[68], ne[69], ne[70], ne[71])
	ne[70] = "UDim2"
	ne[69] = ENV[ne[70]]
	ne[70] = "new"
	ne[75] = ""
	ne[68] = ne[69][ne[70]]
	ne[70] = 1
	ne[66] = "Size"
	ne[73] = f[ne[50]]
	ne[72] = ne[73] * ne[74]
	ne[71] = - ne[72]
	ne[72] = 0
	ne[73] = 0
	ne[69] = ne[68](ne[70], ne[71], ne[72], ne[73])
	ne[71] = "ZIndex"
	ne[70] = true
	ne[68] = "ClipsDescendants"
	ne[72] = 24
	ne[76] = "TextColor3"
	ne[58] = {
		[ne[59]] = ne[60],
		[ne[61]] = ne[62],
		[ne[63]] = ne[65],
		[ne[64]] = ne[67],
		[ne[66]] = ne[69],
		[ne[68]] = ne[70],
		[ne[71]] = ne[72]
	}
	ne[60] = "BackgroundColor3"
	ne[63] = "Color3"
	ne[56] = ne[55](ne[57], ne[58], ne[30])
	ne[58] = "TextBox"
	ne[64] = 13
	ne[55] = O()
	ne[109] = 235
	ne[65] = 30
	f[ne[55]] = ne[56]
	ne[56] = up4
	ne[62] = ENV[ne[63]]
	ne[63] = "fromRGB"
	ne[66] = "Position"
	ne[61] = ne[62][ne[63]]
	ne[72] = 0
	ne[63] = 18
	ne[73] = 0
	ne[81] = 230
	ne[62] = ne[61](ne[63], ne[64], ne[65])
	ne[61] = "BackgroundTransparency"
	ne[65] = 0
	ne[122] = "Enum"
	ne[63] = .1
	ne[64] = "BorderSizePixel"
	ne[69] = "UDim2"
	ne[70] = 0
	ne[68] = ENV[ne[69]]
	ne[69] = "new"
	ne[71] = 0
	ne[67] = ne[68][ne[69]]
	ne[69] = 0
	ne[68] = ne[67](ne[69], ne[70], ne[71], ne[72])
	ne[71] = "UDim2"
	ne[72] = 0
	ne[67] = "Size"
	ne[70] = ENV[ne[71]]
	ne[71] = "new"
	ne[69] = ne[70][ne[71]]
	ne[108] = 100
	ne[74] = f[ne[48]]
	ne[71] = 1
	ne[70] = ne[69](ne[71], ne[72], ne[73], ne[74])
	ne[74] = "Enum"
	ne[73] = ENV[ne[74]]
	ne[69] = "Font"
	ne[74] = "Font"
	ne[72] = ne[73][ne[74]]
	ne[74] = "Text"
	ne[73] = "GothamBold"
	ne[71] = ne[72][ne[73]]
	ne[78] = ENV[ne[79]]
	ne[72] = "PlaceholderText"
	ne[79] = "fromRGB"
	ne[77] = ne[78][ne[79]]
	ne[79] = 230
	ne[78] = ne[77](ne[79], ne[80], ne[81])
	ne[81] = "Color3"
	ne[73] = "Search language..."
	ne[80] = ENV[ne[81]]
	ne[77] = "PlaceholderColor3"
	ne[81] = "fromRGB"
	ne[79] = ne[80][ne[81]]
	ne[81] = 120
	ne[80] = ne[79](ne[81], ne[82], ne[83])
	ne[83] = false
	ne[79] = "TextSize"
	ne[81] = 11
	ne[90] = up4
	ne[96] = ENV[ne[97]]
	ne[82] = "ClearTextOnFocus"
	ne[97] = "new"
	ne[95] = ne[96][ne[97]]
	ne[97] = 0
	ne[96] = ne[95](ne[97], ne[98])
	ne[93] = {
		[ne[94]] = ne[96]
	}
	ne[91] = ne[90](ne[92], ne[93])
	ne[95] = "PaddingLeft"
	ne[93] = "UIPadding"
	ne[98] = "UDim"
	ne[90] = up4
	ne[97] = ENV[ne[98]]
	ne[98] = "new"
	ne[96] = ne[97][ne[98]]
	ne[98] = 0
	ne[97] = ne[96](ne[98], ne[99])
	ne[96] = "PaddingRight"
	ne[99] = ENV[ne[100]]
	ne[100] = "new"
	ne[98] = ne[99][ne[100]]
	ne[100] = 0
	ne[99] = ne[98](ne[100], ne[101])
	ne[94] = {
		[ne[95]] = ne[97],
		[ne[96]] = ne[99]
	}
	ne[92] = {
		ne[90](ne[93], ne[94])
	}
	ne[89] = {
		ne[91],
		unpack(ne[92])
	}
	ne[59] = {
		[ne[60]] = ne[62],
		[ne[61]] = ne[63],
		[ne[64]] = ne[65],
		[ne[66]] = ne[68],
		[ne[67]] = ne[70],
		[ne[69]] = ne[71],
		[ne[72]] = ne[73],
		[ne[74]] = ne[75],
		[ne[76]] = ne[78],
		[ne[77]] = ne[80],
		[ne[79]] = ne[81],
		[ne[82]] = ne[83],
		[ne[84]] = ne[85],
		[ne[86]] = ne[87],
		[ne[88]] = ne[89]
	}
	ne[61] = "BackgroundColor3"
	ne[71] = 0
	ne[64] = "Color3"
	ne[60] = f[ne[55]]
	ne[72] = 0
	ne[57] = ne[56](ne[58], ne[59], ne[60])
	ne[65] = 10
	ne[56] = O()
	ne[67] = "Position"
	ne[59] = "ScrollingFrame"
	f[ne[56]] = ne[57]
	ne[57] = up4
	ne[63] = ENV[ne[64]]
	ne[64] = "fromRGB"
	ne[66] = 20
	ne[62] = ne[63][ne[64]]
	ne[84] = 24
	ne[64] = 14
	ne[63] = ne[62](ne[64], ne[65], ne[66])
	ne[83] = "Enum"
	ne[70] = "UDim2"
	ne[69] = ENV[ne[70]]
	ne[70] = "new"
	ne[64] = .05
	ne[66] = 0
	ne[76] = 0
	ne[68] = ne[69][ne[70]]
	ne[62] = "BackgroundTransparency"
	ne[74] = f[ne[48]]
	ne[65] = "BorderSizePixel"
	ne[75] = f[ne[49]]
	ne[70] = 0
	ne[73] = ne[74] + ne[75]
	ne[69] = ne[68](ne[70], ne[71], ne[72], ne[73])
	ne[72] = "UDim2"
	ne[71] = ENV[ne[72]]
	ne[73] = 0
	ne[72] = "new"
	ne[70] = ne[71][ne[72]]
	ne[77] = 0
	ne[72] = 1
	ne[75] = 0
	ne[68] = "Size"
	ne[74] = 0
	ne[96] = 90
	ne[71] = ne[70](ne[72], ne[73], ne[74], ne[75])
	ne[81] = "Enum"
	ne[70] = "CanvasSize"
	ne[94] = "UDim"
	ne[74] = "UDim2"
	ne[73] = ENV[ne[74]]
	ne[74] = "new"
	ne[72] = ne[73][ne[74]]
	ne[75] = 0
	ne[74] = 0
	ne[85] = "Children"
	ne[73] = ne[72](ne[74], ne[75], ne[76], ne[77])
	ne[72] = "ScrollBarThickness"
	ne[74] = 0
	ne[75] = "ScrollBarImageTransparency"
	ne[77] = "ScrollingDirection"
	ne[98] = "ApplyStrokeMode"
	ne[80] = ENV[ne[81]]
	ne[81] = "ScrollingDirection"
	ne[79] = ne[80][ne[81]]
	ne[76] = 1
	ne[89] = "UICorner"
	ne[80] = "Y"
	ne[78] = ne[79][ne[80]]
	ne[79] = "AutomaticCanvasSize"
	ne[95] = 7
	ne[97] = 220
	ne[82] = ENV[ne[83]]
	ne[83] = "AutomaticSize"
	ne[81] = ne[82][ne[83]]
	ne[91] = "CornerRadius"
	ne[82] = "None"
	ne[80] = ne[81][ne[82]]
	ne[82] = true
	ne[81] = "ClipsDescendants"
	ne[83] = "ZIndex"
	ne[87] = up4
	ne[93] = ENV[ne[94]]
	ne[94] = "new"
	ne[92] = ne[93][ne[94]]
	ne[94] = 0
	ne[93] = ne[92](ne[94], ne[95])
	ne[90] = {
		[ne[91]] = ne[93]
	}
	ne[88] = ne[87](ne[89], ne[90])
	ne[90] = "UIStroke"
	ne[87] = up4
	ne[92] = "Color"
	ne[95] = "Color3"
	ne[94] = ENV[ne[95]]
	ne[95] = "fromRGB"
	ne[93] = ne[94][ne[95]]
	ne[95] = 140
	ne[94] = ne[93](ne[95], ne[96], ne[97])
	ne[95] = .55
	ne[101] = ENV[ne[102]]
	ne[97] = 1
	ne[102] = "ApplyStrokeMode"
	ne[93] = "Transparency"
	ne[135] = "Enum"
	ne[100] = ne[101][ne[102]]
	ne[96] = "Thickness"
	ne[101] = "Border"
	ne[99] = ne[100][ne[101]]
	ne[91] = {
		[ne[92]] = ne[94],
		[ne[93]] = ne[95],
		[ne[96]] = ne[97],
		[ne[98]] = ne[99]
	}
	ne[89] = {
		ne[87](ne[90], ne[91])
	}
	ne[86] = {
		ne[88],
		unpack(ne[89])
	}
	ne[60] = {
		[ne[61]] = ne[63],
		[ne[62]] = ne[64],
		[ne[65]] = ne[66],
		[ne[67]] = ne[69],
		[ne[68]] = ne[71],
		[ne[70]] = ne[73],
		[ne[72]] = ne[74],
		[ne[75]] = ne[76],
		[ne[77]] = ne[78],
		[ne[79]] = ne[80],
		[ne[81]] = ne[82],
		[ne[83]] = ne[84],
		[ne[85]] = ne[86]
	}
	ne[66] = "Enum"
	ne[61] = f[ne[55]]
	ne[58] = ne[57](ne[59], ne[60], ne[61])
	ne[70] = 4
	ne[57] = O()
	ne[60] = "UIListLayout"
	ne[62] = "SortOrder"
	f[ne[57]] = ne[58]
	ne[58] = up4
	ne[65] = ENV[ne[66]]
	ne[67] = "UDim"
	ne[66] = "SortOrder"
	ne[64] = ne[65][ne[66]]
	ne[89] = 0
	ne[65] = "LayoutOrder"
	ne[63] = ne[64][ne[65]]
	ne[64] = "Padding"
	ne[72] = 4
	ne[66] = ENV[ne[67]]
	ne[67] = "new"
	ne[65] = ne[66][ne[67]]
	ne[96] = "Enum"
	ne[67] = 0
	ne[68] = f[ne[45]]
	ne[66] = ne[65](ne[67], ne[68])
	ne[61] = {
		[ne[62]] = ne[63],
		[ne[64]] = ne[66]
	}
	ne[67] = "UDim"
	ne[62] = f[ne[57]]
	ne[59] = ne[58](ne[60], ne[61], ne[62])
	ne[68] = 4
	ne[62] = "PaddingTop"
	ne[58] = up4
	ne[65] = "UDim"
	ne[60] = "UIPadding"
	ne[64] = ENV[ne[65]]
	ne[66] = 4
	ne[92] = "ApplyStrokeMode"
	ne[65] = "new"
	ne[63] = ne[64][ne[65]]
	ne[79] = "UIGradient"
	ne[81] = "Transparency"
	ne[65] = 0
	ne[64] = ne[63](ne[65], ne[66])
	ne[63] = "PaddingBottom"
	ne[66] = ENV[ne[67]]
	ne[67] = "new"
	ne[65] = ne[66][ne[67]]
	ne[91] = 1
	ne[67] = 0
	ne[66] = ne[65](ne[67], ne[68])
	ne[69] = "UDim"
	ne[88] = 1
	ne[65] = "PaddingLeft"
	ne[75] = 0
	ne[68] = ENV[ne[69]]
	ne[69] = "new"
	ne[67] = ne[68][ne[69]]
	ne[71] = "UDim"
	ne[69] = 0
	ne[68] = ne[67](ne[69], ne[70])
	ne[67] = "PaddingRight"
	ne[70] = ENV[ne[71]]
	ne[71] = "new"
	ne[69] = ne[70][ne[71]]
	ne[71] = 0
	ne[70] = ne[69](ne[71], ne[72])
	ne[61] = {
		[ne[62]] = ne[64],
		[ne[63]] = ne[66],
		[ne[65]] = ne[68],
		[ne[67]] = ne[70]
	}
	ne[62] = f[ne[57]]
	ne[63] = 1
	ne[77] = 1
	ne[59] = ne[58](ne[60], ne[61], ne[62])
	ne[58] = closure(fn_6880433, {
		ne[51],
		ne[43]
	})
	ne[60] = "GetFilteredLanguages"
	ne[59] = f[t]
	ne[59][ne[60]] = ne[58]
	ne[59] = f[t]
	ne[58] = closure(fn_9849170, {
		ne[47],
		ne[46],
		ne[44],
		ne[45]
	})
	ne[60] = "CalcListHeight"
	ne[59][ne[60]] = ne[58]
	ne[59] = f[t]
	ne[60] = "SetCanvasHeight"
	ne[58] = closure(fn_13181416, {
		ne[46],
		ne[44],
		ne[45],
		ne[57]
	})
	ne[59][ne[60]] = ne[58]
	ne[58] = closure(fn_6525482, {
		ne[57],
		up1,
		t,
		up4,
		ne[44],
		ne[42],
		ne[52],
		ne[51],
		ne[56],
		up6,
		ne[55],
		ne[50],
		ne[40],
		up15
	})
	ne[60] = "BuildLangItems"
	ne[69] = 1
	ne[59] = f[t]
	ne[59][ne[60]] = ne[58]
	ne[58] = f[ne[56]]
	ne[60] = "Text"
	ne[59] = "GetPropertyChangedSignal"
	ne[59] = ne[58][ne[59]]
	ne[74] = "UDim2"
	ne[59] = ne[59](ne[58], ne[60])
	ne[62] = "BackgroundTransparency"
	ne[60] = closure(fn_12833697, {
		ne[56],
		ne[51],
		t,
		ne[52],
		ne[57],
		ne[55],
		ne[50],
		ne[48],
		ne[49]
	})
	ne[58] = "Connect"
	ne[58] = ne[59][ne[58]]
	ne[67] = "UDim2"
	ne[58] = ne[58](ne[59], ne[60])
	ne[59] = f[t]
	ne[64] = "Size"
	ne[68] = 0
	ne[60] = "BuildLangItems"
	ne[58] = ne[59][ne[60]]
	ne[59] = ne[58]()
	ne[60] = "TextButton"
	ne[58] = up4
	ne[66] = ENV[ne[67]]
	ne[67] = "new"
	ne[65] = ne[66][ne[67]]
	ne[76] = 0
	ne[70] = 0
	ne[67] = 1
	ne[66] = ne[65](ne[67], ne[68], ne[69], ne[70])
	ne[68] = "ZIndex"
	ne[67] = ""
	ne[65] = "Text"
	ne[69] = 25
	ne[61] = {
		[ne[62]] = ne[63],
		[ne[64]] = ne[66],
		[ne[65]] = ne[67],
		[ne[68]] = ne[69]
	}
	ne[59] = ne[58](ne[60], ne[61], ne[53])
	ne[62] = false
	ne[61] = closure(fn_928131, {
		ne[52],
		ne[51],
		ne[56],
		t,
		ne[48],
		ne[49],
		up6,
		ne[55],
		ne[50],
		ne[57]
	})
	ne[63] = "English"
	ne[84] = "NumberSequence"
	ne[60] = "MouseButton1Click"
	ne[58] = ne[59][ne[60]]
	ne[60] = "Connect"
	ne[60] = ne[58][ne[60]]
	ne[60] = ne[60](ne[58], ne[61])
	ne[60] = "Get"
	ne[61] = "_opt_AutoTranslate"
	ne[58] = up1
	ne[60] = ne[58][ne[60]]
	ne[60] = ne[60](ne[58], ne[61], ne[62])
	ne[58] = O()
	ne[61] = "Get"
	ne[114] = "Enum"
	f[ne[58]] = ne[60]
	ne[68] = "Color3"
	ne[62] = "_opt_Language"
	ne[60] = up1
	ne[70] = 180
	ne[61] = ne[60][ne[61]]
	ne[61] = ne[61](ne[60], ne[62], ne[63])
	ne[87] = "NumberSequenceKeypoint"
	ne[60] = O()
	ne[63] = "task"
	f[ne[60]] = ne[61]
	ne[65] = "BackgroundColor3"
	ne[62] = ENV[ne[63]]
	ne[63] = "spawn"
	ne[61] = ne[62][ne[63]]
	ne[63] = closure(fn_9100128, {
		ne[40],
		up1,
		ne[58],
		ne[60],
		up15
	})
	ne[62] = ne[61](ne[63])
	ne[63] = "task"
	ne[62] = ENV[ne[63]]
	ne[63] = "defer"
	ne[61] = ne[62][ne[63]]
	ne[63] = closure(fn_14330360, {
		up1,
		up15
	})
	ne[62] = ne[61](ne[63])
	ne[61] = up4
	ne[69] = 60
	ne[67] = ENV[ne[68]]
	ne[63] = "Frame"
	ne[68] = "fromRGB"
	ne[66] = ne[67][ne[68]]
	ne[68] = 100
	ne[67] = ne[66](ne[68], ne[69], ne[70])
	ne[102] = 255
	ne[110] = "ApplyStrokeMode"
	ne[90] = 0
	ne[73] = ENV[ne[74]]
	ne[70] = 0
	ne[66] = "BackgroundTransparency"
	ne[71] = "Size"
	ne[68] = .82
	ne[74] = "new"
	ne[69] = "BorderSizePixel"
	ne[72] = ne[73][ne[74]]
	ne[74] = 1
	ne[73] = ne[72](ne[74], ne[75], ne[76], ne[77])
	ne[77] = up4
	ne[75] = "Children"
	ne[72] = "ZIndex"
	ne[83] = ENV[ne[84]]
	ne[97] = 0
	ne[74] = 23
	ne[84] = "new"
	ne[82] = ne[83][ne[84]]
	ne[86] = ENV[ne[87]]
	ne[87] = "new"
	ne[85] = ne[86][ne[87]]
	ne[87] = 0
	ne[86] = ne[85](ne[87], ne[88])
	ne[88] = "NumberSequenceKeypoint"
	ne[87] = ENV[ne[88]]
	ne[88] = "new"
	ne[85] = ne[87][ne[88]]
	ne[88] = .15
	ne[87] = ne[85](ne[88], ne[89])
	ne[89] = "NumberSequenceKeypoint"
	ne[88] = ENV[ne[89]]
	ne[89] = "new"
	ne[85] = ne[88][ne[89]]
	ne[89] = .85
	ne[88] = ne[85](ne[89], ne[90])
	ne[90] = "NumberSequenceKeypoint"
	ne[89] = ENV[ne[90]]
	ne[90] = "new"
	ne[85] = ne[89][ne[90]]
	ne[90] = 1
	ne[89] = {
		ne[85](ne[90], ne[91])
	}
	ne[84] = {
		ne[86],
		ne[87],
		ne[88],
		unpack(ne[89])
	}
	ne[83] = ne[82](ne[84])
	ne[80] = {
		[ne[81]] = ne[83]
	}
	ne[78] = {
		ne[77](ne[79], ne[80])
	}
	ne[76] = {
		unpack(ne[78])
	}
	ne[64] = {
		[ne[65]] = ne[67],
		[ne[66]] = ne[68],
		[ne[69]] = ne[70],
		[ne[71]] = ne[73],
		[ne[72]] = ne[74],
		[ne[75]] = ne[76]
	}
	ne[79] = "Children"
	ne[62] = ne[61](ne[63], ne[64], ne[30])
	ne[62] = "IsAutoSave"
	ne[68] = "Color3"
	ne[63] = ne[41]
	ne[75] = 0
	ne[85] = "CornerRadius"
	ne[61] = up1
	ne[61][ne[62]] = ne[63]
	ne[65] = "BackgroundColor3"
	ne[77] = 36
	ne[88] = "UDim"
	ne[70] = 38
	ne[63] = "TextButton"
	ne[76] = 0
	ne[74] = "UDim2"
	ne[69] = 14
	ne[61] = up4
	ne[67] = ENV[ne[68]]
	ne[68] = "fromRGB"
	ne[66] = ne[67][ne[68]]
	ne[68] = 22
	ne[67] = ne[66](ne[68], ne[69], ne[70])
	ne[66] = "BackgroundTransparency"
	ne[68] = 0
	ne[69] = "BorderSizePixel"
	ne[71] = "Size"
	ne[70] = 0
	ne[73] = ENV[ne[74]]
	ne[74] = "new"
	ne[72] = ne[73][ne[74]]
	ne[74] = 1
	ne[73] = ne[72](ne[74], ne[75], ne[76], ne[77])
	ne[74] = ""
	ne[72] = "Text"
	ne[75] = "AutoButtonColor"
	ne[81] = up4
	ne[78] = 23
	ne[87] = ENV[ne[88]]
	ne[77] = "ZIndex"
	ne[76] = false
	ne[83] = "UICorner"
	ne[90] = 90
	ne[89] = 8
	ne[88] = "new"
	ne[86] = ne[87][ne[88]]
	ne[88] = 0
	ne[134] = "Enum"
	ne[87] = ne[86](ne[88], ne[89])
	ne[84] = {
		[ne[85]] = ne[87]
	}
	ne[86] = "Color"
	ne[82] = ne[81](ne[83], ne[84])
	ne[89] = "Color3"
	ne[81] = up4
	ne[88] = ENV[ne[89]]
	ne[89] = "fromRGB"
	ne[84] = "UIStroke"
	ne[87] = ne[88][ne[89]]
	ne[89] = 140
	ne[91] = 220
	ne[88] = ne[87](ne[89], ne[90], ne[91])
	ne[95] = ENV[ne[96]]
	ne[90] = "Thickness"
	ne[89] = .55
	ne[91] = 1
	ne[96] = "ApplyStrokeMode"
	ne[87] = "Transparency"
	ne[94] = ne[95][ne[96]]
	ne[95] = "Border"
	ne[93] = ne[94][ne[95]]
	ne[96] = 1
	ne[85] = {
		[ne[86]] = ne[88],
		[ne[87]] = ne[89],
		[ne[90]] = ne[91],
		[ne[92]] = ne[93]
	}
	ne[92] = "UDim2"
	ne[87] = "BackgroundTransparency"
	ne[83] = ne[81](ne[84], ne[85])
	ne[85] = "TextLabel"
	ne[88] = 1
	ne[94] = 0
	ne[93] = 12
	ne[81] = up4
	ne[91] = ENV[ne[92]]
	ne[95] = 0
	ne[92] = "new"
	ne[89] = "Position"
	ne[90] = ne[91][ne[92]]
	ne[92] = 0
	ne[91] = ne[90](ne[92], ne[93], ne[94], ne[95])
	ne[94] = "UDim2"
	ne[90] = "Size"
	ne[95] = - 40
	ne[93] = ENV[ne[94]]
	ne[94] = "new"
	ne[92] = ne[93][ne[94]]
	ne[94] = 1
	ne[101] = 180
	ne[93] = ne[92](ne[94], ne[95], ne[96], ne[97])
	ne[92] = "Font"
	ne[97] = "Enum"
	ne[96] = ENV[ne[97]]
	ne[97] = "Font"
	ne[95] = ne[96][ne[97]]
	ne[96] = "GothamBold"
	ne[94] = ne[95][ne[96]]
	ne[95] = "Text"
	ne[96] = "Open Save Manager"
	ne[97] = "TextColor3"
	ne[100] = "Color3"
	ne[99] = ENV[ne[100]]
	ne[100] = "fromRGB"
	ne[98] = ne[99][ne[100]]
	ne[100] = 210
	ne[99] = ne[98](ne[100], ne[101], ne[102])
	ne[98] = "TextSize"
	ne[100] = 11
	ne[104] = ENV[ne[105]]
	ne[101] = "TextXAlignment"
	ne[105] = "TextXAlignment"
	ne[103] = ne[104][ne[105]]
	ne[104] = "Left"
	ne[102] = ne[103][ne[104]]
	ne[104] = 24
	ne[103] = "ZIndex"
	ne[86] = {
		[ne[87]] = ne[88],
		[ne[89]] = ne[91],
		[ne[90]] = ne[93],
		[ne[92]] = ne[94],
		[ne[95]] = ne[96],
		[ne[97]] = ne[99],
		[ne[98]] = ne[100],
		[ne[101]] = ne[102],
		[ne[103]] = ne[104]
	}
	ne[84] = ne[81](ne[85], ne[86])
	ne[86] = "TextLabel"
	ne[93] = "Vector2"
	ne[99] = 0
	ne[88] = "BackgroundTransparency"
	ne[100] = 16
	ne[95] = "UDim2"
	ne[89] = 1
	ne[90] = "AnchorPoint"
	ne[81] = up4
	ne[94] = .5
	ne[92] = ENV[ne[93]]
	ne[93] = "new"
	ne[91] = ne[92][ne[93]]
	ne[96] = - 10
	ne[93] = 1
	ne[92] = ne[91](ne[93], ne[94])
	ne[94] = ENV[ne[95]]
	ne[97] = .5
	ne[91] = "Position"
	ne[95] = "new"
	ne[93] = ne[94][ne[95]]
	ne[103] = "Color3"
	ne[98] = 0
	ne[95] = 1
	ne[94] = ne[93](ne[95], ne[96], ne[97], ne[98])
	ne[97] = "UDim2"
	ne[96] = ENV[ne[97]]
	ne[93] = "Size"
	ne[97] = "new"
	ne[95] = ne[96][ne[97]]
	ne[97] = 0
	ne[98] = 16
	ne[96] = ne[95](ne[97], ne[98], ne[99], ne[100])
	ne[95] = "Font"
	ne[100] = "Enum"
	ne[99] = ENV[ne[100]]
	ne[100] = "Font"
	ne[104] = 132
	ne[98] = ne[99][ne[100]]
	ne[105] = 252
	ne[99] = "GothamBold"
	ne[97] = ne[98][ne[99]]
	ne[98] = "Text"
	ne[102] = ENV[ne[103]]
	ne[99] = "\226\128\186"
	ne[103] = "fromRGB"
	ne[100] = "TextColor3"
	ne[101] = ne[102][ne[103]]
	ne[103] = 192
	ne[102] = ne[101](ne[103], ne[104], ne[105])
	ne[101] = "TextSize"
	ne[104] = "ZIndex"
	ne[105] = 24
	ne[103] = 14
	ne[87] = {
		[ne[88]] = ne[89],
		[ne[90]] = ne[92],
		[ne[91]] = ne[94],
		[ne[93]] = ne[96],
		[ne[95]] = ne[97],
		[ne[98]] = ne[99],
		[ne[100]] = ne[102],
		[ne[101]] = ne[103],
		[ne[104]] = ne[105]
	}
	ne[85] = {
		ne[81](ne[86], ne[87])
	}
	ne[80] = {
		ne[82],
		ne[83],
		ne[84],
		unpack(ne[85])
	}
	ne[64] = {
		[ne[65]] = ne[67],
		[ne[66]] = ne[68],
		[ne[69]] = ne[70],
		[ne[71]] = ne[73],
		[ne[72]] = ne[74],
		[ne[75]] = ne[76],
		[ne[77]] = ne[78],
		[ne[79]] = ne[80]
	}
	ne[62] = ne[61](ne[63], ne[64], ne[30])
	ne[74] = 28
	ne[61] = O()
	ne[93] = 220
	ne[73] = 0
	f[ne[61]] = ne[62]
	ne[77] = "Color3"
	ne[64] = "MouseEnter"
	ne[63] = f[ne[61]]
	ne[62] = ne[63][ne[64]]
	ne[64] = closure(fn_10745841, {
		up6,
		ne[61]
	})
	ne[63] = "Connect"
	ne[63] = ne[62][ne[63]]
	ne[63] = ne[63](ne[62], ne[64])
	ne[64] = "MouseLeave"
	ne[99] = 18
	ne[92] = 90
	ne[63] = f[ne[61]]
	ne[71] = "UDim2"
	ne[62] = ne[63][ne[64]]
	ne[68] = "Size"
	ne[72] = 0
	ne[100] = 48
	ne[63] = "Connect"
	ne[64] = closure(fn_2732006, {
		up6,
		ne[61]
	})
	ne[63] = ne[62][ne[63]]
	ne[63] = ne[63](ne[62], ne[64])
	ne[64] = "MouseButton1Click"
	ne[63] = f[ne[61]]
	ne[85] = "UICorner"
	ne[66] = "BackgroundTransparency"
	ne[62] = ne[63][ne[64]]
	ne[84] = "Enum"
	ne[67] = 1
	ne[63] = "Connect"
	ne[63] = ne[62][ne[63]]
	ne[64] = closure(fn_7189438, {
		ne[61],
		up14,
		ne[32],
		ne[36]
	})
	ne[63] = ne[63](ne[62], ne[64])
	ne[62] = up4
	ne[64] = "TextLabel"
	ne[70] = ENV[ne[71]]
	ne[71] = "new"
	ne[69] = ne[70][ne[71]]
	ne[71] = 1
	ne[70] = ne[69](ne[71], ne[72], ne[73], ne[74])
	ne[79] = 170
	ne[74] = "Enum"
	ne[69] = "Font"
	ne[73] = ENV[ne[74]]
	ne[74] = "Font"
	ne[72] = ne[73][ne[74]]
	ne[80] = "TextXAlignment"
	ne[73] = "Gotham"
	ne[74] = "TextColor3"
	ne[71] = ne[72][ne[73]]
	ne[72] = "Text"
	ne[73] = "Saves are stored per Roblox account"
	ne[76] = ENV[ne[77]]
	ne[78] = 110
	ne[77] = "fromRGB"
	ne[75] = ne[76][ne[77]]
	ne[77] = 130
	ne[76] = ne[75](ne[77], ne[78], ne[79])
	ne[77] = 9
	ne[83] = ENV[ne[84]]
	ne[75] = "TextSize"
	ne[79] = true
	ne[84] = "TextXAlignment"
	ne[78] = "TextWrapped"
	ne[82] = ne[83][ne[84]]
	ne[83] = "Center"
	ne[81] = ne[82][ne[83]]
	ne[83] = 23
	ne[82] = "ZIndex"
	ne[65] = {
		[ne[66]] = ne[67],
		[ne[68]] = ne[70],
		[ne[69]] = ne[71],
		[ne[72]] = ne[73],
		[ne[74]] = ne[76],
		[ne[75]] = ne[77],
		[ne[78]] = ne[79],
		[ne[80]] = ne[81],
		[ne[82]] = ne[83]
	}
	ne[63] = ne[62](ne[64], ne[65], ne[30])
	ne[65] = {}
	ne[63] = "Get"
	ne[87] = "CornerRadius"
	ne[62] = up1
	ne[64] = "_saveSlots"
	ne[75] = 12
	ne[63] = ne[62][ne[63]]
	ne[63] = ne[63](ne[62], ne[64], ne[65])
	ne[66] = O()
	ne[62] = O()
	ne[64] = O()
	ne[65] = O()
	f[ne[62]] = ne[63]
	ne[63] = {}
	f[ne[64]] = ne[63]
	ne[67] = O()
	ne[91] = 8
	ne[63] = nil
	ne[71] = "BackgroundColor3"
	ne[77] = "Size"
	f[ne[65]] = ne[63]
	ne[63] = false
	f[ne[66]] = ne[63]
	ne[98] = "Enum"
	ne[74] = "Color3"
	ne[76] = 30
	ne[63] = ""
	ne[90] = "UDim"
	f[ne[67]] = ne[63]
	ne[69] = "Frame"
	ne[63] = up4
	ne[73] = ENV[ne[74]]
	ne[83] = 52
	ne[74] = "fromRGB"
	ne[81] = 0
	ne[72] = ne[73][ne[74]]
	ne[74] = 18
	ne[73] = ne[72](ne[74], ne[75], ne[76])
	ne[74] = .2
	ne[80] = "UDim2"
	ne[79] = ENV[ne[80]]
	ne[80] = "new"
	ne[72] = "BackgroundTransparency"
	ne[75] = "BorderSizePixel"
	ne[82] = 0
	ne[76] = 0
	ne[78] = ne[79][ne[80]]
	ne[80] = 1
	ne[79] = ne[78](ne[80], ne[81], ne[82], ne[83])
	ne[80] = 23
	ne[94] = "ApplyStrokeMode"
	ne[83] = up4
	ne[89] = ENV[ne[90]]
	ne[78] = "ZIndex"
	ne[81] = "Children"
	ne[90] = "new"
	ne[88] = ne[89][ne[90]]
	ne[90] = 0
	ne[89] = ne[88](ne[90], ne[91])
	ne[86] = {
		[ne[87]] = ne[89]
	}
	ne[84] = ne[83](ne[85], ne[86])
	ne[86] = "UIStroke"
	ne[88] = "Color"
	ne[83] = up4
	ne[91] = "Color3"
	ne[90] = ENV[ne[91]]
	ne[91] = "fromRGB"
	ne[89] = ne[90][ne[91]]
	ne[91] = 140
	ne[90] = ne[89](ne[91], ne[92], ne[93])
	ne[91] = .65
	ne[97] = ENV[ne[98]]
	ne[92] = "Thickness"
	ne[89] = "Transparency"
	ne[98] = "ApplyStrokeMode"
	ne[93] = 1
	ne[96] = ne[97][ne[98]]
	ne[97] = "Border"
	ne[95] = ne[96][ne[97]]
	ne[87] = {
		[ne[88]] = ne[90],
		[ne[89]] = ne[91],
		[ne[92]] = ne[93],
		[ne[94]] = ne[95]
	}
	ne[85] = ne[83](ne[86], ne[87])
	ne[98] = "Color3"
	ne[83] = up4
	ne[87] = "UIGradient"
	ne[89] = "Color"
	ne[95] = "ColorSequenceKeypoint"
	ne[92] = "ColorSequence"
	ne[91] = ENV[ne[92]]
	ne[92] = "new"
	ne[90] = ne[91][ne[92]]
	ne[94] = ENV[ne[95]]
	ne[95] = "new"
	ne[101] = 24
	ne[93] = ne[94][ne[95]]
	ne[97] = ENV[ne[98]]
	ne[98] = "fromRGB"
	ne[95] = 0
	ne[96] = ne[97][ne[98]]
	ne[98] = 28
	ne[97] = {
		ne[96](ne[98], ne[99], ne[100])
	}
	ne[96] = "ColorSequenceKeypoint"
	ne[100] = 10
	ne[94] = ne[93](ne[95], unpack(ne[97]))
	ne[95] = ENV[ne[96]]
	ne[96] = "new"
	ne[93] = ne[95][ne[96]]
	ne[99] = "Color3"
	ne[96] = 1
	ne[98] = ENV[ne[99]]
	ne[99] = "fromRGB"
	ne[97] = ne[98][ne[99]]
	ne[99] = 14
	ne[98] = {
		ne[97](ne[99], ne[100], ne[101])
	}
	ne[95] = {
		ne[93](ne[96], unpack(ne[98]))
	}
	ne[92] = {
		ne[94],
		unpack(ne[95])
	}
	ne[91] = ne[90](ne[92])
	ne[92] = 135
	ne[90] = "Rotation"
	ne[88] = {
		[ne[89]] = ne[91],
		[ne[90]] = ne[92]
	}
	ne[86] = {
		ne[83](ne[87], ne[88])
	}
	ne[82] = {
		ne[84],
		ne[85],
		unpack(ne[86])
	}
	ne[90] = "GetPlayerName"
	ne[70] = {
		[ne[71]] = ne[73],
		[ne[72]] = ne[74],
		[ne[75]] = ne[76],
		[ne[77]] = ne[79],
		[ne[78]] = ne[80],
		[ne[81]] = ne[82]
	}
	ne[79] = 0
	ne[72] = "BackgroundTransparency"
	ne[94] = "Enum"
	ne[86] = "Enum"
	ne[71] = f[ne[34]]
	ne[68] = ne[63](ne[69], ne[70], ne[71])
	ne[81] = 0
	ne[63] = up4
	ne[74] = "Position"
	ne[77] = "UDim2"
	ne[76] = ENV[ne[77]]
	ne[70] = "TextLabel"
	ne[73] = 1
	ne[77] = "new"
	ne[82] = 16
	ne[75] = ne[76][ne[77]]
	ne[87] = "string"
	ne[77] = 0
	ne[78] = 10
	ne[80] = 7
	ne[76] = ne[75](ne[77], ne[78], ne[79], ne[80])
	ne[79] = "UDim2"
	ne[78] = ENV[ne[79]]
	ne[75] = "Size"
	ne[79] = "new"
	ne[103] = "CornerRadius"
	ne[77] = ne[78][ne[79]]
	ne[79] = 1
	ne[80] = - 20
	ne[78] = ne[77](ne[79], ne[80], ne[81], ne[82])
	ne[82] = "Enum"
	ne[77] = "Font"
	ne[81] = ENV[ne[82]]
	ne[82] = "Font"
	ne[106] = "UDim"
	ne[80] = ne[81][ne[82]]
	ne[82] = "TextTruncate"
	ne[81] = "GothamBold"
	ne[79] = ne[80][ne[81]]
	ne[80] = "RichText"
	ne[85] = ENV[ne[86]]
	ne[86] = "TextTruncate"
	ne[81] = true
	ne[84] = ne[85][ne[86]]
	ne[85] = "AtEnd"
	ne[83] = ne[84][ne[85]]
	ne[84] = "Text"
	ne[86] = ENV[ne[87]]
	ne[87] = "format"
	ne[85] = ne[86][ne[87]]
	ne[88] = up1
	ne[91] = 255
	ne[90] = ne[88][ne[90]]
	ne[89] = {
		ne[90](ne[88])
	}
	ne[87] = "Account: <font color=\"#C084FC\"><b>%s</b></font>"
	ne[86] = ne[85](ne[87], unpack(ne[89]))
	ne[89] = "Color3"
	ne[85] = "TextColor3"
	ne[90] = 200
	ne[88] = ENV[ne[89]]
	ne[89] = "fromRGB"
	ne[87] = ne[88][ne[89]]
	ne[89] = 225
	ne[88] = ne[87](ne[89], ne[90], ne[91])
	ne[89] = 10
	ne[87] = "TextSize"
	ne[93] = ENV[ne[94]]
	ne[90] = "TextXAlignment"
	ne[94] = "TextXAlignment"
	ne[92] = ne[93][ne[94]]
	ne[93] = "Left"
	ne[91] = ne[92][ne[93]]
	ne[93] = 24
	ne[92] = "ZIndex"
	ne[71] = {
		[ne[72]] = ne[73],
		[ne[74]] = ne[76],
		[ne[75]] = ne[78],
		[ne[77]] = ne[79],
		[ne[80]] = ne[81],
		[ne[82]] = ne[83],
		[ne[84]] = ne[86],
		[ne[85]] = ne[88],
		[ne[87]] = ne[89],
		[ne[90]] = ne[91],
		[ne[92]] = ne[93]
	}
	ne[79] = 10
	ne[69] = ne[63](ne[70], ne[71], ne[68])
	ne[101] = "UICorner"
	ne[83] = 16
	ne[75] = "Position"
	ne[74] = 1
	ne[82] = 0
	ne[63] = up4
	ne[71] = "TextLabel"
	ne[78] = "UDim2"
	ne[80] = 0
	ne[77] = ENV[ne[78]]
	ne[78] = "new"
	ne[96] = 4
	ne[76] = ne[77][ne[78]]
	ne[81] = 26
	ne[78] = 0
	ne[77] = ne[76](ne[78], ne[79], ne[80], ne[81])
	ne[76] = "Size"
	ne[73] = "BackgroundTransparency"
	ne[80] = "UDim2"
	ne[81] = - 20
	ne[79] = ENV[ne[80]]
	ne[80] = "new"
	ne[97] = "Children"
	ne[87] = "Enum"
	ne[78] = ne[79][ne[80]]
	ne[80] = 1
	ne[88] = "string"
	ne[79] = ne[78](ne[80], ne[81], ne[82], ne[83])
	ne[78] = "Font"
	ne[83] = "Enum"
	ne[82] = ENV[ne[83]]
	ne[83] = "Font"
	ne[81] = ne[82][ne[83]]
	ne[82] = "Gotham"
	ne[80] = ne[81][ne[82]]
	ne[82] = true
	ne[83] = "TextTruncate"
	ne[81] = "RichText"
	ne[86] = ENV[ne[87]]
	ne[87] = "TextTruncate"
	ne[85] = ne[86][ne[87]]
	ne[86] = "AtEnd"
	ne[90] = c
	ne[84] = ne[85][ne[86]]
	ne[87] = ENV[ne[88]]
	ne[88] = "format"
	ne[85] = "Text"
	ne[93] = "ActiveProfile"
	ne[86] = ne[87][ne[88]]
	ne[92] = up1
	ne[88] = "Profile: <font color=\"#C084FC\"><b>%s</b></font>  \226\128\162  ID: <font color=\"#34D399\">%s</font>"
	ne[91] = ne[92][ne[93]]
	ne[92] = "[Auto]"
	ne[90] = up1
	ne[89] = ne[91] or ne[92]
	ne[92] = "GetGameId"
	ne[92] = ne[90][ne[92]]
	ne[91] = {
		ne[92](ne[90])
	}
	ne[95] = "Enum"
	ne[87] = ne[86](ne[88], ne[89], unpack(ne[91]))
	ne[90] = "Color3"
	ne[86] = "TextColor3"
	ne[89] = ENV[ne[90]]
	ne[90] = "fromRGB"
	ne[92] = 205
	ne[88] = ne[89][ne[90]]
	ne[90] = 165
	ne[91] = 140
	ne[89] = ne[88](ne[90], ne[91], ne[92])
	ne[88] = "TextSize"
	ne[90] = 10
	ne[94] = ENV[ne[95]]
	ne[95] = "TextXAlignment"
	ne[91] = "TextXAlignment"
	ne[93] = ne[94][ne[95]]
	ne[94] = "Left"
	ne[92] = ne[93][ne[94]]
	ne[94] = 24
	ne[93] = "ZIndex"
	ne[72] = {
		[ne[73]] = ne[74],
		[ne[75]] = ne[77],
		[ne[76]] = ne[79],
		[ne[78]] = ne[80],
		[ne[81]] = ne[82],
		[ne[83]] = ne[84],
		[ne[85]] = ne[87],
		[ne[86]] = ne[89],
		[ne[88]] = ne[90],
		[ne[91]] = ne[92],
		[ne[93]] = ne[94]
	}
	ne[94] = "Enum"
	ne[75] = 1
	ne[76] = "BorderSizePixel"
	ne[70] = ne[63](ne[71], ne[72], ne[68])
	ne[77] = 0
	ne[63] = O()
	ne[84] = 28
	ne[81] = "UDim2"
	ne[72] = "Frame"
	ne[78] = "Size"
	ne[86] = "UIListLayout"
	ne[82] = 0
	f[ne[63]] = ne[70]
	ne[83] = 0
	ne[70] = up4
	ne[95] = "UDim"
	ne[74] = "BackgroundTransparency"
	ne[80] = ENV[ne[81]]
	ne[81] = "new"
	ne[79] = ne[80][ne[81]]
	ne[81] = 1
	ne[92] = "Enum"
	ne[80] = ne[79](ne[81], ne[82], ne[83], ne[84])
	ne[82] = "Children"
	ne[88] = "FillDirection"
	ne[84] = up4
	ne[91] = ENV[ne[92]]
	ne[79] = "ZIndex"
	ne[81] = 23
	ne[92] = "FillDirection"
	ne[90] = ne[91][ne[92]]
	ne[91] = "Horizontal"
	ne[89] = ne[90][ne[91]]
	ne[90] = "SortOrder"
	ne[93] = ENV[ne[94]]
	ne[94] = "SortOrder"
	ne[92] = ne[93][ne[94]]
	ne[93] = "LayoutOrder"
	ne[91] = ne[92][ne[93]]
	ne[94] = ENV[ne[95]]
	ne[95] = "new"
	ne[92] = "Padding"
	ne[93] = ne[94][ne[95]]
	ne[95] = 0
	ne[94] = ne[93](ne[95], ne[96])
	ne[87] = {
		[ne[88]] = ne[89],
		[ne[90]] = ne[91],
		[ne[92]] = ne[94]
	}
	ne[85] = {
		ne[84](ne[86], ne[87])
	}
	ne[83] = {
		unpack(ne[85])
	}
	ne[88] = "Color3"
	ne[94] = 1
	ne[73] = {
		[ne[74]] = ne[75],
		[ne[76]] = ne[77],
		[ne[78]] = ne[80],
		[ne[79]] = ne[81],
		[ne[82]] = ne[83]
	}
	ne[74] = f[ne[34]]
	ne[75] = "BackgroundColor3"
	ne[71] = ne[70](ne[72], ne[73], ne[74])
	ne[78] = "Color3"
	ne[79] = 35
	ne[90] = 255
	ne[73] = "TextButton"
	ne[92] = false
	ne[70] = up4
	ne[86] = 1
	ne[77] = ENV[ne[78]]
	ne[96] = 24
	ne[87] = 0
	ne[78] = "fromRGB"
	ne[76] = ne[77][ne[78]]
	ne[91] = "Enum"
	ne[78] = 70
	ne[89] = 185
	ne[80] = 150
	ne[84] = "UDim2"
	ne[77] = ne[76](ne[78], ne[79], ne[80])
	ne[80] = 0
	ne[85] = 0
	ne[76] = "BackgroundTransparency"
	ne[93] = "LayoutOrder"
	ne[95] = "ZIndex"
	ne[79] = "BorderSizePixel"
	ne[81] = "Size"
	ne[83] = ENV[ne[84]]
	ne[84] = "new"
	ne[78] = .35
	ne[82] = ne[83][ne[84]]
	ne[84] = .32
	ne[83] = ne[82](ne[84], ne[85], ne[86], ne[87])
	ne[84] = "Quick Save"
	ne[82] = "Text"
	ne[87] = ENV[ne[88]]
	ne[88] = "fromRGB"
	ne[85] = "TextColor3"
	ne[86] = ne[87][ne[88]]
	ne[88] = 215
	ne[87] = ne[86](ne[88], ne[89], ne[90])
	ne[90] = ENV[ne[91]]
	ne[86] = "Font"
	ne[91] = "Font"
	ne[89] = ne[90][ne[91]]
	ne[90] = "GothamBold"
	ne[88] = ne[89][ne[90]]
	ne[90] = 10
	ne[99] = up4
	ne[91] = "AutoButtonColor"
	ne[105] = ENV[ne[106]]
	ne[106] = "new"
	ne[89] = "TextSize"
	ne[104] = ne[105][ne[106]]
	ne[106] = 0
	ne[105] = ne[104](ne[106], ne[107])
	ne[102] = {
		[ne[103]] = ne[105]
	}
	ne[100] = ne[99](ne[101], ne[102])
	ne[99] = up4
	ne[107] = "Color3"
	ne[106] = ENV[ne[107]]
	ne[104] = "Color"
	ne[107] = "fromRGB"
	ne[105] = ne[106][ne[107]]
	ne[107] = 150
	ne[102] = "UIStroke"
	ne[106] = ne[105](ne[107], ne[108], ne[109])
	ne[109] = 1
	ne[108] = "Thickness"
	ne[113] = ENV[ne[114]]
	ne[105] = "Transparency"
	ne[107] = .6
	ne[114] = "ApplyStrokeMode"
	ne[112] = ne[113][ne[114]]
	ne[113] = "Border"
	ne[111] = ne[112][ne[113]]
	ne[103] = {
		[ne[104]] = ne[106],
		[ne[105]] = ne[107],
		[ne[108]] = ne[109],
		[ne[110]] = ne[111]
	}
	ne[104] = "CornerRadius"
	ne[101] = {
		ne[99](ne[102], ne[103])
	}
	ne[98] = {
		ne[100],
		unpack(ne[101])
	}
	ne[74] = {
		[ne[75]] = ne[77],
		[ne[76]] = ne[78],
		[ne[79]] = ne[80],
		[ne[81]] = ne[83],
		[ne[82]] = ne[84],
		[ne[85]] = ne[87],
		[ne[86]] = ne[88],
		[ne[89]] = ne[90],
		[ne[91]] = ne[92],
		[ne[93]] = ne[94],
		[ne[95]] = ne[96],
		[ne[97]] = ne[98]
	}
	ne[85] = "UDim2"
	ne[93] = false
	ne[72] = ne[70](ne[73], ne[74], ne[71])
	ne[82] = "Size"
	ne[102] = "UICorner"
	ne[80] = 50
	ne[79] = "Color3"
	ne[76] = "BackgroundColor3"
	ne[107] = "UDim"
	ne[70] = O()
	f[ne[70]] = ne[72]
	ne[74] = "TextButton"
	ne[110] = 80
	ne[87] = 1
	ne[72] = up4
	ne[88] = 0
	ne[78] = ENV[ne[79]]
	ne[92] = "Enum"
	ne[81] = 25
	ne[79] = "fromRGB"
	ne[77] = ne[78][ne[79]]
	ne[79] = 80
	ne[78] = ne[77](ne[79], ne[80], ne[81])
	ne[80] = "BorderSizePixel"
	ne[79] = .4
	ne[77] = "BackgroundTransparency"
	ne[91] = 110
	ne[84] = ENV[ne[85]]
	ne[89] = "Color3"
	ne[85] = "new"
	ne[83] = ne[84][ne[85]]
	ne[81] = 0
	ne[86] = 0
	ne[95] = 2
	ne[85] = .32
	ne[84] = ne[83](ne[85], ne[86], ne[87], ne[88])
	ne[85] = "Reset All"
	ne[111] = "ApplyStrokeMode"
	ne[86] = "TextColor3"
	ne[83] = "Text"
	ne[88] = ENV[ne[89]]
	ne[96] = "ZIndex"
	ne[89] = "fromRGB"
	ne[87] = ne[88][ne[89]]
	ne[89] = 255
	ne[90] = 190
	ne[88] = ne[87](ne[89], ne[90], ne[91])
	ne[87] = "Font"
	ne[98] = "Children"
	ne[91] = ENV[ne[92]]
	ne[94] = "LayoutOrder"
	ne[92] = "Font"
	ne[90] = ne[91][ne[92]]
	ne[91] = "GothamBold"
	ne[89] = ne[90][ne[91]]
	ne[108] = 6
	ne[92] = "AutoButtonColor"
	ne[97] = 24
	ne[91] = 10
	ne[100] = up4
	ne[106] = ENV[ne[107]]
	ne[107] = "new"
	ne[105] = ne[106][ne[107]]
	ne[90] = "TextSize"
	ne[109] = 170
	ne[107] = 0
	ne[106] = ne[105](ne[107], ne[108])
	ne[103] = {
		[ne[104]] = ne[106]
	}
	ne[101] = ne[100](ne[102], ne[103])
	ne[103] = "UIStroke"
	ne[108] = "Color3"
	ne[100] = up4
	ne[107] = ENV[ne[108]]
	ne[108] = "fromRGB"
	ne[105] = "Color"
	ne[106] = ne[107][ne[108]]
	ne[108] = 255
	ne[107] = ne[106](ne[108], ne[109], ne[110])
	ne[110] = 1
	ne[106] = "Transparency"
	ne[108] = .65
	ne[109] = "Thickness"
	ne[114] = ENV[ne[115]]
	ne[115] = "ApplyStrokeMode"
	ne[113] = ne[114][ne[115]]
	ne[114] = "Border"
	ne[112] = ne[113][ne[114]]
	ne[104] = {
		[ne[105]] = ne[107],
		[ne[106]] = ne[108],
		[ne[109]] = ne[110],
		[ne[111]] = ne[112]
	}
	ne[102] = {
		ne[100](ne[103], ne[104])
	}
	ne[99] = {
		ne[101],
		unpack(ne[102])
	}
	ne[75] = {
		[ne[76]] = ne[78],
		[ne[77]] = ne[79],
		[ne[80]] = ne[81],
		[ne[82]] = ne[84],
		[ne[83]] = ne[85],
		[ne[86]] = ne[88],
		[ne[87]] = ne[89],
		[ne[90]] = ne[91],
		[ne[92]] = ne[93],
		[ne[94]] = ne[95],
		[ne[96]] = ne[97],
		[ne[98]] = ne[99]
	}
	ne[94] = false
	ne[77] = "BackgroundColor3"
	ne[95] = "LayoutOrder"
	ne[92] = 130
	ne[108] = "UDim"
	ne[83] = "Size"
	ne[80] = "Color3"
	ne[82] = 36
	ne[110] = 95
	ne[73] = ne[72](ne[74], ne[75], ne[71])
	ne[72] = O()
	ne[97] = "ZIndex"
	ne[90] = "Color3"
	f[ne[72]] = ne[73]
	ne[93] = "Enum"
	ne[75] = "TextButton"
	ne[81] = 18
	ne[99] = "Children"
	ne[87] = 0
	ne[98] = 24
	ne[73] = up4
	ne[79] = ENV[ne[80]]
	ne[88] = 1
	ne[89] = 0
	ne[80] = "fromRGB"
	ne[78] = ne[79][ne[80]]
	ne[80] = 110
	ne[79] = ne[78](ne[80], ne[81], ne[82])
	ne[78] = "BackgroundTransparency"
	ne[82] = 0
	ne[86] = "UDim2"
	ne[112] = "ApplyStrokeMode"
	ne[85] = ENV[ne[86]]
	ne[81] = "BorderSizePixel"
	ne[86] = "new"
	ne[80] = .4
	ne[84] = ne[85][ne[86]]
	ne[86] = .33
	ne[85] = ne[84](ne[86], ne[87], ne[88], ne[89])
	ne[87] = "TextColor3"
	ne[86] = "Clear All"
	ne[84] = "Text"
	ne[89] = ENV[ne[90]]
	ne[90] = "fromRGB"
	ne[109] = 6
	ne[91] = 110
	ne[105] = "CornerRadius"
	ne[103] = "UICorner"
	ne[88] = ne[89][ne[90]]
	ne[90] = 255
	ne[96] = 3
	ne[89] = ne[88](ne[90], ne[91], ne[92])
	ne[88] = "Font"
	ne[92] = ENV[ne[93]]
	ne[93] = "Font"
	ne[91] = ne[92][ne[93]]
	ne[92] = "GothamBold"
	ne[90] = ne[91][ne[92]]
	ne[92] = 10
	ne[91] = "TextSize"
	ne[101] = up4
	ne[93] = "AutoButtonColor"
	ne[107] = ENV[ne[108]]
	ne[108] = "new"
	ne[111] = 120
	ne[106] = ne[107][ne[108]]
	ne[108] = 0
	ne[107] = ne[106](ne[108], ne[109])
	ne[106] = "Color"
	ne[104] = {
		[ne[105]] = ne[107]
	}
	ne[102] = ne[101](ne[103], ne[104])
	ne[109] = "Color3"
	ne[101] = up4
	ne[104] = "UIStroke"
	ne[108] = ENV[ne[109]]
	ne[109] = "fromRGB"
	ne[107] = ne[108][ne[109]]
	ne[109] = 255
	ne[108] = ne[107](ne[109], ne[110], ne[111])
	ne[110] = "Thickness"
	ne[115] = ENV[ne[116]]
	ne[107] = "Transparency"
	ne[111] = 1
	ne[116] = "ApplyStrokeMode"
	ne[109] = .65
	ne[114] = ne[115][ne[116]]
	ne[115] = "Border"
	ne[113] = ne[114][ne[115]]
	ne[105] = {
		[ne[106]] = ne[108],
		[ne[107]] = ne[109],
		[ne[110]] = ne[111],
		[ne[112]] = ne[113]
	}
	ne[103] = {
		ne[101](ne[104], ne[105])
	}
	ne[100] = {
		ne[102],
		unpack(ne[103])
	}
	ne[76] = {
		[ne[77]] = ne[79],
		[ne[78]] = ne[80],
		[ne[81]] = ne[82],
		[ne[83]] = ne[85],
		[ne[84]] = ne[86],
		[ne[87]] = ne[89],
		[ne[88]] = ne[90],
		[ne[91]] = ne[92],
		[ne[93]] = ne[94],
		[ne[95]] = ne[96],
		[ne[97]] = ne[98],
		[ne[99]] = ne[100]
	}
	ne[74] = ne[73](ne[75], ne[76], ne[71])
	ne[76] = "MouseEnter"
	ne[73] = O()
	f[ne[73]] = ne[74]
	ne[75] = f[ne[70]]
	ne[74] = ne[75][ne[76]]
	ne[76] = closure(fn_9609093, {
		up6,
		ne[70]
	})
	ne[75] = "Connect"
	ne[75] = ne[74][ne[75]]
	ne[75] = ne[75](ne[74], ne[76])
	ne[75] = f[ne[70]]
	ne[76] = "MouseLeave"
	ne[74] = ne[75][ne[76]]
	ne[109] = "ApplyStrokeMode"
	ne[75] = "Connect"
	ne[75] = ne[74][ne[75]]
	ne[76] = closure(fn_15139377, {
		up6,
		ne[70]
	})
	ne[75] = ne[75](ne[74], ne[76])
	ne[76] = "MouseEnter"
	ne[75] = f[ne[72]]
	ne[74] = ne[75][ne[76]]
	ne[76] = closure(fn_362657, {
		up6,
		ne[72]
	})
	ne[75] = "Connect"
	ne[75] = ne[74][ne[75]]
	ne[79] = 1
	ne[78] = "BackgroundTransparency"
	ne[75] = ne[75](ne[74], ne[76])
	ne[98] = "Enum"
	ne[85] = 0
	ne[75] = f[ne[72]]
	ne[92] = "HorizontalAlignment"
	ne[106] = 6
	ne[114] = 0
	ne[76] = "MouseLeave"
	ne[74] = ne[75][ne[76]]
	ne[75] = "Connect"
	ne[76] = closure(fn_2973951, {
		up6,
		ne[72]
	})
	ne[75] = ne[74][ne[75]]
	ne[105] = "UDim"
	ne[75] = ne[75](ne[74], ne[76])
	ne[75] = f[ne[73]]
	ne[76] = "MouseEnter"
	ne[74] = ne[75][ne[76]]
	ne[76] = closure(fn_5106797, {
		up6,
		ne[73]
	})
	ne[75] = "Connect"
	ne[75] = ne[74][ne[75]]
	ne[75] = ne[75](ne[74], ne[76])
	ne[83] = "UDim2"
	ne[86] = 0
	ne[108] = 220
	ne[100] = 4
	ne[76] = "MouseLeave"
	ne[75] = f[ne[73]]
	ne[74] = ne[75][ne[76]]
	ne[75] = "Connect"
	ne[76] = closure(fn_1396406, {
		up6,
		ne[73]
	})
	ne[75] = ne[74][ne[75]]
	ne[75] = ne[75](ne[74], ne[76])
	ne[75] = f[ne[70]]
	ne[76] = "MouseButton1Click"
	ne[74] = ne[75][ne[76]]
	ne[96] = "Enum"
	ne[90] = "UIListLayout"
	ne[75] = "Connect"
	ne[76] = closure(fn_1482138, {
		ne[70],
		up14,
		up1,
		up5
	})
	ne[75] = ne[74][ne[75]]
	ne[75] = ne[75](ne[74], ne[76])
	ne[84] = 0
	ne[75] = f[ne[72]]
	ne[76] = "MouseButton1Click"
	ne[74] = ne[75][ne[76]]
	ne[75] = "Connect"
	ne[80] = "Size"
	ne[76] = closure(fn_11680866, {
		ne[72],
		up14,
		up1,
		up5
	})
	ne[75] = ne[74][ne[75]]
	ne[113] = "Enum"
	ne[75] = ne[75](ne[74], ne[76])
	ne[76] = "MouseButton1Click"
	ne[75] = f[ne[73]]
	ne[74] = ne[75][ne[76]]
	ne[75] = "Connect"
	ne[76] = closure(fn_6342477, {
		ne[73],
		up14,
		up1,
		ne[63],
		up5
	})
	ne[75] = ne[74][ne[75]]
	ne[75] = ne[75](ne[74], ne[76])
	ne[101] = "Enum"
	ne[74] = up4
	ne[99] = "UDim"
	ne[76] = "Frame"
	ne[82] = ENV[ne[83]]
	ne[83] = "new"
	ne[81] = ne[82][ne[83]]
	ne[83] = 1
	ne[82] = ne[81](ne[83], ne[84], ne[85], ne[86])
	ne[86] = "Enum"
	ne[85] = ENV[ne[86]]
	ne[81] = "AutomaticSize"
	ne[86] = "AutomaticSize"
	ne[84] = ne[85][ne[86]]
	ne[85] = "Y"
	ne[86] = "Children"
	ne[83] = ne[84][ne[85]]
	ne[84] = "ZIndex"
	ne[85] = 22
	ne[88] = up4
	ne[95] = ENV[ne[96]]
	ne[96] = "HorizontalAlignment"
	ne[94] = ne[95][ne[96]]
	ne[95] = "Center"
	ne[93] = ne[94][ne[95]]
	ne[94] = "SortOrder"
	ne[97] = ENV[ne[98]]
	ne[102] = "UDim"
	ne[98] = "SortOrder"
	ne[96] = ne[97][ne[98]]
	ne[103] = 4
	ne[97] = "LayoutOrder"
	ne[95] = ne[96][ne[97]]
	ne[98] = ENV[ne[99]]
	ne[99] = "new"
	ne[96] = "Padding"
	ne[97] = ne[98][ne[99]]
	ne[99] = 0
	ne[98] = ne[97](ne[99], ne[100])
	ne[91] = {
		[ne[92]] = ne[93],
		[ne[94]] = ne[95],
		[ne[96]] = ne[98]
	}
	ne[89] = ne[88](ne[90], ne[91])
	ne[91] = "UIPadding"
	ne[99] = 4
	ne[93] = "PaddingTop"
	ne[96] = "UDim"
	ne[97] = 2
	ne[88] = up4
	ne[95] = ENV[ne[96]]
	ne[96] = "new"
	ne[94] = ne[95][ne[96]]
	ne[96] = 0
	ne[95] = ne[94](ne[96], ne[97])
	ne[94] = "PaddingBottom"
	ne[98] = "UDim"
	ne[97] = ENV[ne[98]]
	ne[98] = "new"
	ne[96] = ne[97][ne[98]]
	ne[98] = 0
	ne[97] = ne[96](ne[98], ne[99])
	ne[92] = {
		[ne[93]] = ne[95],
		[ne[94]] = ne[97]
	}
	ne[90] = {
		ne[88](ne[91], ne[92])
	}
	ne[93] = "UIListLayout"
	ne[87] = {
		ne[89],
		unpack(ne[90])
	}
	ne[77] = {
		[ne[78]] = ne[79],
		[ne[80]] = ne[82],
		[ne[81]] = ne[83],
		[ne[84]] = ne[85],
		[ne[86]] = ne[87]
	}
	ne[81] = "Size"
	ne[78] = f[ne[34]]
	ne[75] = ne[74](ne[76], ne[77], ne[78])
	ne[77] = "Frame"
	ne[99] = "Enum"
	ne[74] = O()
	ne[84] = "UDim2"
	f[ne[74]] = ne[75]
	ne[80] = 1
	ne[75] = up4
	ne[79] = "BackgroundTransparency"
	ne[89] = "Children"
	ne[88] = 22
	ne[83] = ENV[ne[84]]
	ne[84] = "new"
	ne[85] = 0
	ne[87] = 0
	ne[86] = 0
	ne[82] = ne[83][ne[84]]
	ne[84] = 1
	ne[83] = ne[82](ne[84], ne[85], ne[86], ne[87])
	ne[87] = "Enum"
	ne[86] = ENV[ne[87]]
	ne[82] = "AutomaticSize"
	ne[95] = "HorizontalAlignment"
	ne[87] = "AutomaticSize"
	ne[85] = ne[86][ne[87]]
	ne[86] = "Y"
	ne[84] = ne[85][ne[86]]
	ne[86] = false
	ne[91] = up4
	ne[98] = ENV[ne[99]]
	ne[87] = "ZIndex"
	ne[85] = "Visible"
	ne[99] = "HorizontalAlignment"
	ne[97] = ne[98][ne[99]]
	ne[98] = "Center"
	ne[96] = ne[97][ne[98]]
	ne[100] = ENV[ne[101]]
	ne[97] = "SortOrder"
	ne[101] = "SortOrder"
	ne[99] = ne[100][ne[101]]
	ne[100] = "LayoutOrder"
	ne[98] = ne[99][ne[100]]
	ne[101] = ENV[ne[102]]
	ne[102] = "new"
	ne[100] = ne[101][ne[102]]
	ne[102] = 0
	ne[99] = "Padding"
	ne[101] = ne[100](ne[102], ne[103])
	ne[102] = "CornerRadius"
	ne[94] = {
		[ne[95]] = ne[96],
		[ne[97]] = ne[98],
		[ne[99]] = ne[101]
	}
	ne[92] = {
		ne[91](ne[93], ne[94])
	}
	ne[90] = {
		unpack(ne[92])
	}
	ne[107] = 90
	ne[78] = {
		[ne[79]] = ne[80],
		[ne[81]] = ne[83],
		[ne[82]] = ne[84],
		[ne[85]] = ne[86],
		[ne[87]] = ne[88],
		[ne[89]] = ne[90]
	}
	ne[90] = 0
	ne[89] = "UDim2"
	ne[80] = "BackgroundColor3"
	ne[92] = 26
	ne[79] = f[ne[34]]
	ne[76] = ne[75](ne[77], ne[78], ne[79])
	ne[84] = 14
	ne[78] = "TextButton"
	ne[91] = 0
	ne[100] = "UICorner"
	ne[94] = "ZIndex"
	ne[85] = 34
	ne[75] = O()
	ne[83] = "Color3"
	f[ne[75]] = ne[76]
	ne[76] = up4
	ne[82] = ENV[ne[83]]
	ne[83] = "fromRGB"
	ne[81] = ne[82][ne[83]]
	ne[83] = 20
	ne[82] = ne[81](ne[83], ne[84], ne[85])
	ne[96] = "Children"
	ne[84] = "BorderSizePixel"
	ne[138] = "UDim"
	ne[85] = 0
	ne[83] = 0
	ne[81] = "BackgroundTransparency"
	ne[86] = "Size"
	ne[95] = 23
	ne[88] = ENV[ne[89]]
	ne[89] = "new"
	ne[87] = ne[88][ne[89]]
	ne[89] = 1
	ne[88] = ne[87](ne[89], ne[90], ne[91], ne[92])
	ne[98] = up4
	ne[89] = ""
	ne[91] = false
	ne[87] = "Text"
	ne[104] = ENV[ne[105]]
	ne[93] = 1
	ne[90] = "AutoButtonColor"
	ne[105] = "new"
	ne[103] = ne[104][ne[105]]
	ne[105] = 0
	ne[92] = "LayoutOrder"
	ne[104] = ne[103](ne[105], ne[106])
	ne[103] = "Color"
	ne[101] = {
		[ne[102]] = ne[104]
	}
	ne[106] = "Color3"
	ne[99] = ne[98](ne[100], ne[101])
	ne[98] = up4
	ne[101] = "UIStroke"
	ne[105] = ENV[ne[106]]
	ne[106] = "fromRGB"
	ne[104] = ne[105][ne[106]]
	ne[106] = 140
	ne[105] = ne[104](ne[106], ne[107], ne[108])
	ne[108] = 1
	ne[104] = "Transparency"
	ne[106] = .6
	ne[112] = ENV[ne[113]]
	ne[107] = "Thickness"
	ne[113] = "ApplyStrokeMode"
	ne[111] = ne[112][ne[113]]
	ne[112] = "Border"
	ne[110] = ne[111][ne[112]]
	ne[102] = {
		[ne[103]] = ne[105],
		[ne[104]] = ne[106],
		[ne[107]] = ne[108],
		[ne[109]] = ne[110]
	}
	ne[119] = 252
	ne[100] = ne[98](ne[101], ne[102])
	ne[112] = 0
	ne[109] = "UDim2"
	ne[98] = up4
	ne[102] = "TextLabel"
	ne[111] = 0
	ne[110] = 8
	ne[104] = "BackgroundTransparency"
	ne[108] = ENV[ne[109]]
	ne[105] = 1
	ne[109] = "new"
	ne[113] = 1
	ne[107] = ne[108][ne[109]]
	ne[106] = "Position"
	ne[109] = 0
	ne[108] = ne[107](ne[109], ne[110], ne[111], ne[112])
	ne[111] = "UDim2"
	ne[110] = ENV[ne[111]]
	ne[107] = "Size"
	ne[111] = "new"
	ne[109] = ne[110][ne[111]]
	ne[112] = 16
	ne[111] = 0
	ne[110] = ne[109](ne[111], ne[112], ne[113], ne[114])
	ne[114] = "Enum"
	ne[109] = "Font"
	ne[113] = ENV[ne[114]]
	ne[114] = "Font"
	ne[112] = ne[113][ne[114]]
	ne[139] = 5
	ne[114] = "TextColor3"
	ne[113] = "GothamBold"
	ne[111] = ne[112][ne[113]]
	ne[116] = ENV[ne[117]]
	ne[112] = "Text"
	ne[117] = "fromRGB"
	ne[115] = ne[116][ne[117]]
	ne[113] = "\226\128\185"
	ne[117] = 192
	ne[116] = ne[115](ne[117], ne[118], ne[119])
	ne[115] = "TextSize"
	ne[121] = ENV[ne[122]]
	ne[122] = "TextXAlignment"
	ne[117] = 16
	ne[120] = ne[121][ne[122]]
	ne[121] = "Center"
	ne[119] = ne[120][ne[121]]
	ne[120] = "ZIndex"
	ne[121] = 24
	ne[118] = "TextXAlignment"
	ne[103] = {
		[ne[104]] = ne[105],
		[ne[106]] = ne[108],
		[ne[107]] = ne[110],
		[ne[109]] = ne[111],
		[ne[112]] = ne[113],
		[ne[114]] = ne[116],
		[ne[115]] = ne[117],
		[ne[118]] = ne[119],
		[ne[120]] = ne[121]
	}
	ne[115] = 0
	ne[101] = ne[98](ne[102], ne[103])
	ne[109] = "Position"
	ne[117] = 0
	ne[108] = 1
	ne[116] = 1
	ne[107] = "BackgroundTransparency"
	ne[121] = 180
	ne[113] = 28
	ne[103] = "TextLabel"
	ne[105] = "Name"
	ne[120] = "Color3"
	ne[122] = 255
	ne[106] = "BackLabel"
	ne[98] = up4
	ne[112] = "UDim2"
	ne[111] = ENV[ne[112]]
	ne[114] = 0
	ne[112] = "new"
	ne[110] = ne[111][ne[112]]
	ne[112] = 0
	ne[111] = ne[110](ne[112], ne[113], ne[114], ne[115])
	ne[114] = "UDim2"
	ne[110] = "Size"
	ne[113] = ENV[ne[114]]
	ne[114] = "new"
	ne[112] = ne[113][ne[114]]
	ne[114] = 1
	ne[115] = - 34
	ne[113] = ne[112](ne[114], ne[115], ne[116], ne[117])
	ne[112] = "Font"
	ne[117] = "Enum"
	ne[116] = ENV[ne[117]]
	ne[117] = "Font"
	ne[115] = ne[116][ne[117]]
	ne[116] = "GothamBold"
	ne[114] = ne[115][ne[116]]
	ne[115] = "Text"
	ne[117] = "TextColor3"
	ne[119] = ENV[ne[120]]
	ne[120] = "fromRGB"
	ne[118] = ne[119][ne[120]]
	ne[116] = "Back to Profiles"
	ne[120] = 210
	ne[119] = ne[118](ne[120], ne[121], ne[122])
	ne[124] = ENV[ne[125]]
	ne[121] = "TextXAlignment"
	ne[120] = 11
	ne[125] = "TextXAlignment"
	ne[118] = "TextSize"
	ne[123] = ne[124][ne[125]]
	ne[124] = "Left"
	ne[122] = ne[123][ne[124]]
	ne[124] = 24
	ne[123] = "ZIndex"
	ne[104] = {
		[ne[105]] = ne[106],
		[ne[107]] = ne[108],
		[ne[109]] = ne[111],
		[ne[110]] = ne[113],
		[ne[112]] = ne[114],
		[ne[115]] = ne[116],
		[ne[117]] = ne[119],
		[ne[118]] = ne[120],
		[ne[121]] = ne[122],
		[ne[123]] = ne[124]
	}
	ne[102] = {
		ne[98](ne[103], ne[104])
	}
	ne[97] = {
		ne[99],
		ne[100],
		ne[101],
		unpack(ne[102])
	}
	ne[79] = {
		[ne[80]] = ne[82],
		[ne[81]] = ne[83],
		[ne[84]] = ne[85],
		[ne[86]] = ne[88],
		[ne[87]] = ne[89],
		[ne[90]] = ne[91],
		[ne[92]] = ne[93],
		[ne[94]] = ne[95],
		[ne[96]] = ne[97]
	}
	ne[89] = 0
	ne[103] = "Enum"
	ne[80] = f[ne[75]]
	ne[95] = "UIListLayout"
	ne[77] = ne[76](ne[78], ne[79], ne[80])
	ne[86] = "UDim2"
	ne[79] = "Frame"
	ne[88] = 0
	ne[105] = 4
	ne[83] = "Size"
	ne[76] = O()
	ne[91] = "Children"
	f[ne[76]] = ne[77]
	ne[87] = 0
	ne[81] = "BackgroundTransparency"
	ne[97] = "HorizontalAlignment"
	ne[77] = up4
	ne[85] = ENV[ne[86]]
	ne[86] = "new"
	ne[82] = 1
	ne[84] = ne[85][ne[86]]
	ne[90] = 23
	ne[86] = 1
	ne[85] = ne[84](ne[86], ne[87], ne[88], ne[89])
	ne[104] = "UDim"
	ne[84] = "AutomaticSize"
	ne[101] = "Enum"
	ne[89] = "Enum"
	ne[88] = ENV[ne[89]]
	ne[89] = "AutomaticSize"
	ne[87] = ne[88][ne[89]]
	ne[88] = "Y"
	ne[89] = "ZIndex"
	ne[86] = ne[87][ne[88]]
	ne[93] = up4
	ne[88] = 2
	ne[100] = ENV[ne[101]]
	ne[87] = "LayoutOrder"
	ne[101] = "HorizontalAlignment"
	ne[99] = ne[100][ne[101]]
	ne[100] = "Center"
	ne[98] = ne[99][ne[100]]
	ne[99] = "SortOrder"
	ne[102] = ENV[ne[103]]
	ne[103] = "SortOrder"
	ne[109] = "Enum"
	ne[101] = ne[102][ne[103]]
	ne[102] = "LayoutOrder"
	ne[100] = ne[101][ne[102]]
	ne[101] = "Padding"
	ne[103] = ENV[ne[104]]
	ne[104] = "new"
	ne[102] = ne[103][ne[104]]
	ne[104] = 0
	ne[103] = ne[102](ne[104], ne[105])
	ne[96] = {
		[ne[97]] = ne[98],
		[ne[99]] = ne[100],
		[ne[101]] = ne[103]
	}
	ne[94] = ne[93](ne[95], ne[96])
	ne[96] = "UIPadding"
	ne[98] = "PaddingTop"
	ne[101] = "UDim"
	ne[103] = "UDim"
	ne[93] = up4
	ne[122] = 230
	ne[102] = 4
	ne[100] = ENV[ne[101]]
	ne[101] = "new"
	ne[99] = ne[100][ne[101]]
	ne[101] = 0
	ne[100] = ne[99](ne[101], ne[102])
	ne[104] = 4
	ne[102] = ENV[ne[103]]
	ne[103] = "new"
	ne[101] = ne[102][ne[103]]
	ne[103] = 0
	ne[99] = "PaddingBottom"
	ne[102] = ne[101](ne[103], ne[104])
	ne[97] = {
		[ne[98]] = ne[100],
		[ne[99]] = ne[102]
	}
	ne[95] = {
		ne[93](ne[96], ne[97])
	}
	ne[92] = {
		ne[94],
		unpack(ne[95])
	}
	ne[80] = {
		[ne[81]] = ne[82],
		[ne[83]] = ne[85],
		[ne[84]] = ne[86],
		[ne[87]] = ne[88],
		[ne[89]] = ne[90],
		[ne[91]] = ne[92]
	}
	ne[87] = 26
	ne[81] = f[ne[75]]
	ne[78] = ne[77](ne[79], ne[80], ne[81])
	ne[80] = "SectionLabel"
	ne[77] = O()
	f[ne[77]] = ne[78]
	ne[78] = closure(fn_9994705, {
		up4,
		ne[77]
	})
	ne[91] = 0
	ne[103] = 80
	ne[79] = f[t]
	ne[79][ne[80]] = ne[78]
	ne[80] = "SectionLabel"
	ne[81] = 1
	ne[90] = 0
	ne[79] = f[t]
	ne[78] = ne[79][ne[80]]
	ne[85] = "Color3"
	ne[92] = 28
	ne[80] = "PROFILE NAME"
	ne[79] = ne[78](ne[80], ne[81])
	ne[82] = "BackgroundColor3"
	ne[80] = "Frame"
	ne[78] = up4
	ne[84] = ENV[ne[85]]
	ne[102] = 6
	ne[85] = "fromRGB"
	ne[89] = "UDim2"
	ne[83] = ne[84][ne[85]]
	ne[85] = 16
	ne[116] = "CornerRadius"
	ne[86] = 11
	ne[84] = ne[83](ne[85], ne[86], ne[87])
	ne[83] = "BorderSizePixel"
	ne[101] = "UDim"
	ne[88] = ENV[ne[89]]
	ne[85] = 0
	ne[89] = "new"
	ne[86] = "Size"
	ne[98] = "CornerRadius"
	ne[87] = ne[88][ne[89]]
	ne[110] = "Children"
	ne[89] = 1
	ne[88] = ne[87](ne[89], ne[90], ne[91], ne[92])
	ne[91] = 23
	ne[90] = "ZIndex"
	ne[92] = "Children"
	ne[87] = "LayoutOrder"
	ne[94] = up4
	ne[89] = 2
	ne[96] = "UICorner"
	ne[100] = ENV[ne[101]]
	ne[101] = "new"
	ne[99] = ne[100][ne[101]]
	ne[101] = 0
	ne[100] = ne[99](ne[101], ne[102])
	ne[97] = {
		[ne[98]] = ne[100]
	}
	ne[99] = "Color"
	ne[95] = ne[94](ne[96], ne[97])
	ne[102] = "Color3"
	ne[94] = up4
	ne[97] = "UIStroke"
	ne[101] = ENV[ne[102]]
	ne[104] = 210
	ne[102] = "fromRGB"
	ne[100] = ne[101][ne[102]]
	ne[102] = 130
	ne[101] = ne[100](ne[102], ne[103], ne[104])
	ne[105] = "ApplyStrokeMode"
	ne[104] = 1
	ne[103] = "Thickness"
	ne[102] = .68
	ne[100] = "Transparency"
	ne[108] = ENV[ne[109]]
	ne[109] = "ApplyStrokeMode"
	ne[107] = ne[108][ne[109]]
	ne[108] = "Border"
	ne[106] = ne[107][ne[108]]
	ne[98] = {
		[ne[99]] = ne[101],
		[ne[100]] = ne[102],
		[ne[103]] = ne[104],
		[ne[105]] = ne[106]
	}
	ne[96] = {
		ne[94](ne[97], ne[98])
	}
	ne[93] = {
		ne[95],
		unpack(ne[96])
	}
	ne[81] = {
		[ne[82]] = ne[84],
		[ne[83]] = ne[85],
		[ne[86]] = ne[88],
		[ne[87]] = ne[89],
		[ne[90]] = ne[91],
		[ne[92]] = ne[93]
	}
	ne[96] = "Color3"
	ne[82] = f[ne[77]]
	ne[79] = ne[78](ne[80], ne[81], ne[82])
	ne[91] = 0
	ne[78] = up4
	ne[89] = 10
	ne[88] = "UDim2"
	ne[87] = ENV[ne[88]]
	ne[90] = 0
	ne[93] = 0
	ne[85] = "Position"
	ne[84] = 1
	ne[88] = "new"
	ne[105] = "Enum"
	ne[83] = "BackgroundTransparency"
	ne[86] = ne[87][ne[88]]
	ne[81] = "TextBox"
	ne[88] = 0
	ne[87] = ne[86](ne[88], ne[89], ne[90], ne[91])
	ne[90] = "UDim2"
	ne[86] = "Size"
	ne[114] = "UICorner"
	ne[89] = ENV[ne[90]]
	ne[90] = "new"
	ne[88] = ne[89][ne[90]]
	ne[92] = 1
	ne[91] = - 70
	ne[90] = 1
	ne[89] = ne[88](ne[90], ne[91], ne[92], ne[93])
	ne[88] = "Font"
	ne[106] = 24
	ne[93] = "Enum"
	ne[100] = "Color3"
	ne[92] = ENV[ne[93]]
	ne[93] = "Font"
	ne[101] = 85
	ne[91] = ne[92][ne[93]]
	ne[123] = "ApplyStrokeMode"
	ne[92] = "GothamBold"
	ne[93] = "TextColor3"
	ne[90] = ne[91][ne[92]]
	ne[91] = "Text"
	ne[92] = ""
	ne[98] = 255
	ne[95] = ENV[ne[96]]
	ne[96] = "fromRGB"
	ne[94] = ne[95][ne[96]]
	ne[96] = 220
	ne[97] = 200
	ne[95] = ne[94](ne[96], ne[97], ne[98])
	ne[96] = "Enter profile name..."
	ne[94] = "PlaceholderText"
	ne[97] = "PlaceholderColor3"
	ne[99] = ENV[ne[100]]
	ne[102] = 150
	ne[100] = "fromRGB"
	ne[98] = ne[99][ne[100]]
	ne[100] = 110
	ne[99] = ne[98](ne[100], ne[101], ne[102])
	ne[100] = 11
	ne[101] = "TextXAlignment"
	ne[104] = ENV[ne[105]]
	ne[105] = "TextXAlignment"
	ne[103] = ne[104][ne[105]]
	ne[104] = "Left"
	ne[98] = "TextSize"
	ne[102] = ne[103][ne[104]]
	ne[105] = "ZIndex"
	ne[104] = false
	ne[103] = "ClearTextOnFocus"
	ne[82] = {
		[ne[83]] = ne[84],
		[ne[85]] = ne[87],
		[ne[86]] = ne[89],
		[ne[88]] = ne[90],
		[ne[91]] = ne[92],
		[ne[93]] = ne[95],
		[ne[94]] = ne[96],
		[ne[97]] = ne[99],
		[ne[98]] = ne[100],
		[ne[101]] = ne[102],
		[ne[103]] = ne[104],
		[ne[105]] = ne[106]
	}
	ne[80] = ne[78](ne[81], ne[82], ne[79])
	ne[82] = "TextButton"
	ne[78] = O()
	f[ne[78]] = ne[80]
	ne[87] = "Vector2"
	ne[92] = "Position"
	ne[80] = up4
	ne[88] = .5
	ne[84] = "AnchorPoint"
	ne[86] = ENV[ne[87]]
	ne[89] = "Color3"
	ne[87] = "new"
	ne[99] = 0
	ne[85] = ne[86][ne[87]]
	ne[87] = 1
	ne[90] = 45
	ne[86] = ne[85](ne[87], ne[88])
	ne[88] = ENV[ne[89]]
	ne[85] = "BackgroundColor3"
	ne[108] = "ZIndex"
	ne[89] = "fromRGB"
	ne[87] = ne[88][ne[89]]
	ne[89] = 80
	ne[91] = 160
	ne[88] = ne[87](ne[89], ne[90], ne[91])
	ne[97] = .5
	ne[89] = .3
	ne[91] = 0
	ne[90] = "BorderSizePixel"
	ne[100] = 20
	ne[95] = "UDim2"
	ne[94] = ENV[ne[95]]
	ne[120] = 5
	ne[102] = 190
	ne[95] = "new"
	ne[93] = ne[94][ne[95]]
	ne[95] = 1
	ne[103] = 255
	ne[87] = "BackgroundTransparency"
	ne[98] = 0
	ne[96] = - 4
	ne[106] = "Visible"
	ne[94] = ne[93](ne[95], ne[96], ne[97], ne[98])
	ne[93] = "Size"
	ne[97] = "UDim2"
	ne[109] = 25
	ne[104] = "Enum"
	ne[96] = ENV[ne[97]]
	ne[97] = "new"
	ne[95] = ne[96][ne[97]]
	ne[121] = 100
	ne[98] = 54
	ne[97] = 0
	ne[119] = "UDim"
	ne[96] = ne[95](ne[97], ne[98], ne[99], ne[100])
	ne[101] = "Color3"
	ne[98] = "TextColor3"
	ne[132] = "Enum"
	ne[100] = ENV[ne[101]]
	ne[95] = "Text"
	ne[97] = "Rename"
	ne[105] = false
	ne[101] = "fromRGB"
	ne[99] = ne[100][ne[101]]
	ne[101] = 220
	ne[100] = ne[99](ne[101], ne[102], ne[103])
	ne[99] = "Font"
	ne[103] = ENV[ne[104]]
	ne[104] = "Font"
	ne[102] = ne[103][ne[104]]
	ne[103] = "GothamBold"
	ne[101] = ne[102][ne[103]]
	ne[103] = 10
	ne[104] = "AutoButtonColor"
	ne[107] = false
	ne[102] = "TextSize"
	ne[112] = up4
	ne[118] = ENV[ne[119]]
	ne[119] = "new"
	ne[117] = ne[118][ne[119]]
	ne[119] = 0
	ne[118] = ne[117](ne[119], ne[120])
	ne[115] = {
		[ne[116]] = ne[118]
	}
	ne[113] = ne[112](ne[114], ne[115])
	ne[117] = "Color"
	ne[115] = "UIStroke"
	ne[112] = up4
	ne[120] = "Color3"
	ne[119] = ENV[ne[120]]
	ne[120] = "fromRGB"
	ne[118] = ne[119][ne[120]]
	ne[120] = 150
	ne[119] = ne[118](ne[120], ne[121], ne[122])
	ne[121] = "Thickness"
	ne[122] = 1
	ne[120] = .5
	ne[126] = ENV[ne[127]]
	ne[118] = "Transparency"
	ne[127] = "ApplyStrokeMode"
	ne[125] = ne[126][ne[127]]
	ne[126] = "Border"
	ne[124] = ne[125][ne[126]]
	ne[116] = {
		[ne[117]] = ne[119],
		[ne[118]] = ne[120],
		[ne[121]] = ne[122],
		[ne[123]] = ne[124]
	}
	ne[114] = {
		ne[112](ne[115], ne[116])
	}
	ne[111] = {
		ne[113],
		unpack(ne[114])
	}
	ne[83] = {
		[ne[84]] = ne[86],
		[ne[85]] = ne[88],
		[ne[87]] = ne[89],
		[ne[90]] = ne[91],
		[ne[92]] = ne[94],
		[ne[93]] = ne[96],
		[ne[95]] = ne[97],
		[ne[98]] = ne[100],
		[ne[99]] = ne[101],
		[ne[102]] = ne[103],
		[ne[104]] = ne[105],
		[ne[106]] = ne[107],
		[ne[108]] = ne[109],
		[ne[110]] = ne[111]
	}
	ne[81] = ne[80](ne[82], ne[83], ne[79])
	ne[116] = "Color3"
	ne[90] = 26
	ne[80] = O()
	ne[99] = "UICorner"
	ne[83] = "SectionLabel"
	f[ne[80]] = ne[81]
	ne[82] = f[t]
	ne[95] = 30
	ne[81] = ne[82][ne[83]]
	ne[94] = 0
	ne[106] = 80
	ne[93] = 0
	ne[84] = 3
	ne[83] = "AUTO LOAD SETTING"
	ne[82] = ne[81](ne[83], ne[84])
	ne[88] = "Color3"
	ne[127] = 200
	ne[85] = "BackgroundColor3"
	ne[81] = up4
	ne[83] = "Frame"
	ne[92] = "UDim2"
	ne[107] = 210
	ne[87] = ENV[ne[88]]
	ne[88] = "fromRGB"
	ne[89] = 11
	ne[104] = "UDim"
	ne[86] = ne[87][ne[88]]
	ne[88] = 16
	ne[87] = ne[86](ne[88], ne[89], ne[90])
	ne[113] = 0
	ne[89] = "Size"
	ne[86] = "BorderSizePixel"
	ne[91] = ENV[ne[92]]
	ne[88] = 0
	ne[92] = "new"
	ne[121] = "Enum"
	ne[90] = ne[91][ne[92]]
	ne[92] = 1
	ne[91] = ne[90](ne[92], ne[93], ne[94], ne[95])
	ne[97] = up4
	ne[93] = "ZIndex"
	ne[105] = 6
	ne[95] = "Children"
	ne[108] = "ApplyStrokeMode"
	ne[103] = ENV[ne[104]]
	ne[94] = 23
	ne[104] = "new"
	ne[101] = "CornerRadius"
	ne[92] = 4
	ne[102] = ne[103][ne[104]]
	ne[104] = 0
	ne[117] = 175
	ne[90] = "LayoutOrder"
	ne[103] = ne[102](ne[104], ne[105])
	ne[100] = {
		[ne[101]] = ne[103]
	}
	ne[124] = "UDim"
	ne[98] = ne[97](ne[99], ne[100])
	ne[102] = "Color"
	ne[105] = "Color3"
	ne[100] = "UIStroke"
	ne[97] = up4
	ne[104] = ENV[ne[105]]
	ne[105] = "fromRGB"
	ne[103] = ne[104][ne[105]]
	ne[105] = 130
	ne[104] = ne[103](ne[105], ne[106], ne[107])
	ne[107] = 1
	ne[106] = "Thickness"
	ne[103] = "Transparency"
	ne[105] = .68
	ne[112] = "Enum"
	ne[111] = ENV[ne[112]]
	ne[112] = "ApplyStrokeMode"
	ne[118] = 240
	ne[110] = ne[111][ne[112]]
	ne[111] = "Border"
	ne[109] = ne[110][ne[111]]
	ne[101] = {
		[ne[102]] = ne[104],
		[ne[103]] = ne[105],
		[ne[106]] = ne[107],
		[ne[108]] = ne[109]
	}
	ne[105] = "Position"
	ne[99] = ne[97](ne[100], ne[101])
	ne[108] = "UDim2"
	ne[110] = 0
	ne[103] = "BackgroundTransparency"
	ne[101] = "TextLabel"
	ne[104] = 1
	ne[109] = 10
	ne[97] = up4
	ne[111] = 0
	ne[107] = ENV[ne[108]]
	ne[112] = 1
	ne[108] = "new"
	ne[106] = ne[107][ne[108]]
	ne[108] = 0
	ne[107] = ne[106](ne[108], ne[109], ne[110], ne[111])
	ne[106] = "Size"
	ne[110] = "UDim2"
	ne[109] = ENV[ne[110]]
	ne[111] = - 60
	ne[110] = "new"
	ne[108] = ne[109][ne[110]]
	ne[110] = 1
	ne[109] = ne[108](ne[110], ne[111], ne[112], ne[113])
	ne[113] = "Enum"
	ne[108] = "Font"
	ne[112] = ENV[ne[113]]
	ne[113] = "Font"
	ne[111] = ne[112][ne[113]]
	ne[112] = "GothamBold"
	ne[110] = ne[111][ne[112]]
	ne[113] = "TextColor3"
	ne[112] = "Auto Load this Profile on Game Start"
	ne[111] = "Text"
	ne[115] = ENV[ne[116]]
	ne[116] = "fromRGB"
	ne[114] = ne[115][ne[116]]
	ne[116] = 200
	ne[115] = ne[114](ne[116], ne[117], ne[118])
	ne[116] = 10
	ne[117] = "TextXAlignment"
	ne[120] = ENV[ne[121]]
	ne[121] = "TextXAlignment"
	ne[114] = "TextSize"
	ne[119] = ne[120][ne[121]]
	ne[120] = "Left"
	ne[118] = ne[119][ne[120]]
	ne[120] = 24
	ne[119] = "ZIndex"
	ne[102] = {
		[ne[103]] = ne[104],
		[ne[105]] = ne[107],
		[ne[106]] = ne[109],
		[ne[108]] = ne[110],
		[ne[111]] = ne[112],
		[ne[113]] = ne[115],
		[ne[114]] = ne[116],
		[ne[117]] = ne[118],
		[ne[119]] = ne[120]
	}
	ne[100] = {
		ne[97](ne[101], ne[102])
	}
	ne[96] = {
		ne[98],
		ne[99],
		unpack(ne[100])
	}
	ne[104] = "CornerRadius"
	ne[84] = {
		[ne[85]] = ne[87],
		[ne[86]] = ne[88],
		[ne[89]] = ne[91],
		[ne[90]] = ne[92],
		[ne[93]] = ne[94],
		[ne[95]] = ne[96]
	}
	ne[93] = 26
	ne[110] = 210
	ne[85] = f[ne[77]]
	ne[99] = 0
	ne[82] = ne[81](ne[83], ne[84], ne[85])
	ne[89] = "Vector2"
	ne[90] = .5
	ne[84] = "Frame"
	ne[81] = up4
	ne[88] = ENV[ne[89]]
	ne[86] = "AnchorPoint"
	ne[96] = - 8
	ne[91] = "Color3"
	ne[92] = 9
	ne[98] = 0
	ne[119] = "UICorner"
	ne[89] = "new"
	ne[87] = ne[88][ne[89]]
	ne[126] = 75
	ne[89] = 1
	ne[88] = ne[87](ne[89], ne[90])
	ne[90] = ENV[ne[91]]
	ne[95] = "UDim2"
	ne[87] = "BackgroundColor3"
	ne[97] = .5
	ne[102] = "UICorner"
	ne[91] = "fromRGB"
	ne[89] = ne[90][ne[91]]
	ne[91] = 14
	ne[90] = ne[89](ne[91], ne[92], ne[93])
	ne[92] = "Position"
	ne[94] = ENV[ne[95]]
	ne[95] = "new"
	ne[91] = 0
	ne[89] = "BorderSizePixel"
	ne[93] = ne[94][ne[95]]
	ne[140] = 80
	ne[95] = 1
	ne[108] = 0
	ne[100] = 18
	ne[94] = ne[93](ne[95], ne[96], ne[97], ne[98])
	ne[97] = "UDim2"
	ne[98] = 36
	ne[93] = "Size"
	ne[96] = ENV[ne[97]]
	ne[111] = "ApplyStrokeMode"
	ne[97] = "new"
	ne[95] = ne[96][ne[97]]
	ne[97] = 0
	ne[96] = ne[95](ne[97], ne[98], ne[99], ne[100])
	ne[100] = up4
	ne[107] = "UDim"
	ne[106] = ENV[ne[107]]
	ne[95] = "ZIndex"
	ne[97] = 24
	ne[98] = "Children"
	ne[107] = "new"
	ne[105] = ne[106][ne[107]]
	ne[107] = 1
	ne[106] = ne[105](ne[107], ne[108])
	ne[108] = "Color3"
	ne[115] = "Enum"
	ne[103] = {
		[ne[104]] = ne[106]
	}
	ne[101] = ne[100](ne[102], ne[103])
	ne[116] = 85
	ne[103] = "UIStroke"
	ne[100] = up4
	ne[107] = ENV[ne[108]]
	ne[109] = 80
	ne[108] = "fromRGB"
	ne[106] = ne[107][ne[108]]
	ne[105] = "Color"
	ne[108] = 130
	ne[107] = ne[106](ne[108], ne[109], ne[110])
	ne[106] = "Transparency"
	ne[110] = 1
	ne[108] = .7
	ne[114] = ENV[ne[115]]
	ne[115] = "ApplyStrokeMode"
	ne[113] = ne[114][ne[115]]
	ne[109] = "Thickness"
	ne[114] = "Border"
	ne[112] = ne[113][ne[114]]
	ne[104] = {
		[ne[105]] = ne[107],
		[ne[106]] = ne[108],
		[ne[109]] = ne[110],
		[ne[111]] = ne[112]
	}
	ne[102] = {
		ne[100](ne[103], ne[104])
	}
	ne[99] = {
		ne[101],
		unpack(ne[102])
	}
	ne[85] = {
		[ne[86]] = ne[88],
		[ne[87]] = ne[90],
		[ne[89]] = ne[91],
		[ne[92]] = ne[94],
		[ne[93]] = ne[96],
		[ne[95]] = ne[97],
		[ne[98]] = ne[99]
	}
	ne[83] = ne[81](ne[84], ne[85], ne[82])
	ne[87] = "AnchorPoint"
	ne[81] = O()
	ne[90] = "Vector2"
	ne[85] = "Frame"
	ne[91] = .5
	f[ne[81]] = ne[83]
	ne[83] = up4
	ne[97] = 12
	ne[95] = 0
	ne[89] = ENV[ne[90]]
	ne[113] = "Color3"
	ne[90] = "new"
	ne[92] = "UDim2"
	ne[88] = ne[89][ne[90]]
	ne[90] = 0
	ne[110] = "ColorSequenceKeypoint"
	ne[89] = ne[88](ne[90], ne[91])
	ne[88] = "Position"
	ne[91] = ENV[ne[92]]
	ne[92] = "new"
	ne[93] = 3
	ne[115] = 140
	ne[94] = .5
	ne[90] = ne[91][ne[92]]
	ne[92] = 0
	ne[96] = 0
	ne[91] = ne[90](ne[92], ne[93], ne[94], ne[95])
	ne[95] = 12
	ne[90] = "Size"
	ne[94] = "UDim2"
	ne[93] = ENV[ne[94]]
	ne[103] = "CornerRadius"
	ne[94] = "new"
	ne[92] = ne[93][ne[94]]
	ne[94] = 0
	ne[93] = ne[92](ne[94], ne[95], ne[96], ne[97])
	ne[114] = 90
	ne[96] = 25
	ne[107] = 0
	ne[92] = "BorderSizePixel"
	ne[101] = "UICorner"
	ne[97] = "Children"
	ne[95] = "ZIndex"
	ne[94] = 0
	ne[106] = "UDim"
	ne[99] = up4
	ne[105] = ENV[ne[106]]
	ne[106] = "new"
	ne[104] = ne[105][ne[106]]
	ne[106] = 1
	ne[105] = ne[104](ne[106], ne[107])
	ne[125] = 5
	ne[102] = {
		[ne[103]] = ne[105]
	}
	ne[100] = ne[99](ne[101], ne[102])
	ne[102] = "UIGradient"
	ne[99] = up4
	ne[107] = "ColorSequence"
	ne[106] = ENV[ne[107]]
	ne[104] = "Color"
	ne[107] = "new"
	ne[105] = ne[106][ne[107]]
	ne[109] = ENV[ne[110]]
	ne[110] = "new"
	ne[108] = ne[109][ne[110]]
	ne[110] = 0
	ne[112] = ENV[ne[113]]
	ne[113] = "fromRGB"
	ne[111] = ne[112][ne[113]]
	ne[113] = 110
	ne[112] = {
		ne[111](ne[113], ne[114], ne[115])
	}
	ne[114] = "Color3"
	ne[111] = "ColorSequenceKeypoint"
	ne[109] = ne[108](ne[110], unpack(ne[112]))
	ne[110] = ENV[ne[111]]
	ne[115] = 45
	ne[111] = "new"
	ne[108] = ne[110][ne[111]]
	ne[113] = ENV[ne[114]]
	ne[111] = 1
	ne[114] = "fromRGB"
	ne[112] = ne[113][ne[114]]
	ne[114] = 55
	ne[113] = {
		ne[112](ne[114], ne[115], ne[116])
	}
	ne[110] = {
		ne[108](ne[111], unpack(ne[113]))
	}
	ne[107] = {
		ne[109],
		unpack(ne[110])
	}
	ne[106] = ne[105](ne[107])
	ne[107] = 135
	ne[105] = "Rotation"
	ne[103] = {
		[ne[104]] = ne[106],
		[ne[105]] = ne[107]
	}
	ne[101] = {
		ne[99](ne[102], ne[103])
	}
	ne[98] = {
		ne[100],
		unpack(ne[101])
	}
	ne[86] = {
		[ne[87]] = ne[89],
		[ne[88]] = ne[91],
		[ne[90]] = ne[93],
		[ne[92]] = ne[94],
		[ne[95]] = ne[96],
		[ne[97]] = ne[98]
	}
	ne[87] = f[ne[81]]
	ne[104] = "Color3"
	ne[89] = 1
	ne[84] = ne[83](ne[85], ne[86], ne[87])
	ne[99] = 22
	ne[96] = 0
	ne[93] = "UDim2"
	ne[95] = 1
	ne[113] = "Enum"
	ne[86] = "TextButton"
	ne[114] = 24
	ne[94] = 0
	ne[83] = O()
	f[ne[83]] = ne[84]
	ne[105] = 85
	ne[90] = "Size"
	ne[88] = "BackgroundTransparency"
	ne[84] = up4
	ne[115] = "Children"
	ne[92] = ENV[ne[93]]
	ne[93] = "new"
	ne[91] = ne[92][ne[93]]
	ne[93] = 1
	ne[92] = ne[91](ne[93], ne[94], ne[95], ne[96])
	ne[95] = 26
	ne[94] = "ZIndex"
	ne[91] = "Text"
	ne[93] = ""
	ne[87] = {
		[ne[88]] = ne[89],
		[ne[90]] = ne[92],
		[ne[91]] = ne[93],
		[ne[94]] = ne[95]
	}
	ne[94] = 16
	ne[93] = 8
	ne[85] = ne[84](ne[86], ne[87], ne[82])
	ne[108] = "Color3"
	ne[89] = "BackgroundColor3"
	ne[87] = "SectionLabel"
	ne[86] = f[t]
	ne[98] = 0
	ne[88] = 5
	ne[101] = "Enum"
	ne[96] = "UDim2"
	ne[84] = ne[86][ne[87]]
	ne[87] = "DATA INSPECTOR & PREVIEW"
	ne[92] = "Color3"
	ne[86] = ne[84](ne[87], ne[88])
	ne[87] = "TextBox"
	ne[84] = up4
	ne[91] = ENV[ne[92]]
	ne[110] = 255
	ne[92] = "fromRGB"
	ne[90] = ne[91][ne[92]]
	ne[92] = 10
	ne[91] = ne[90](ne[92], ne[93], ne[94])
	ne[95] = ENV[ne[96]]
	ne[93] = "Size"
	ne[90] = "BorderSizePixel"
	ne[96] = "new"
	ne[92] = 0
	ne[97] = 0
	ne[106] = 150
	ne[94] = ne[95][ne[96]]
	ne[96] = 1
	ne[95] = ne[94](ne[96], ne[97], ne[98], ne[99])
	ne[121] = "CornerRadius"
	ne[94] = "LayoutOrder"
	ne[100] = ENV[ne[101]]
	ne[96] = 6
	ne[101] = "Font"
	ne[99] = ne[100][ne[101]]
	ne[101] = "PlaceholderColor3"
	ne[97] = "Font"
	ne[100] = "Gotham"
	ne[109] = 190
	ne[98] = ne[99][ne[100]]
	ne[99] = "PlaceholderText"
	ne[103] = ENV[ne[104]]
	ne[100] = "Search saved keys..."
	ne[104] = "fromRGB"
	ne[102] = ne[103][ne[104]]
	ne[104] = 110
	ne[141] = 210
	ne[103] = ne[102](ne[104], ne[105], ne[106])
	ne[105] = "TextColor3"
	ne[104] = ""
	ne[102] = "Text"
	ne[107] = ENV[ne[108]]
	ne[108] = "fromRGB"
	ne[106] = ne[107][ne[108]]
	ne[108] = 215
	ne[107] = ne[106](ne[108], ne[109], ne[110])
	ne[112] = ENV[ne[113]]
	ne[108] = 10
	ne[106] = "TextSize"
	ne[113] = "TextXAlignment"
	ne[109] = "TextXAlignment"
	ne[111] = ne[112][ne[113]]
	ne[112] = "Left"
	ne[110] = ne[111][ne[112]]
	ne[111] = "ClearTextOnFocus"
	ne[112] = false
	ne[117] = up4
	ne[113] = "ZIndex"
	ne[123] = ENV[ne[124]]
	ne[124] = "new"
	ne[122] = ne[123][ne[124]]
	ne[124] = 0
	ne[123] = ne[122](ne[124], ne[125])
	ne[120] = {
		[ne[121]] = ne[123]
	}
	ne[125] = "Color3"
	ne[118] = ne[117](ne[119], ne[120])
	ne[117] = up4
	ne[124] = ENV[ne[125]]
	ne[125] = "fromRGB"
	ne[122] = "Color"
	ne[120] = "UIStroke"
	ne[123] = ne[124][ne[125]]
	ne[125] = 120
	ne[124] = ne[123](ne[125], ne[126], ne[127])
	ne[127] = 1
	ne[123] = "Transparency"
	ne[126] = "Thickness"
	ne[131] = ENV[ne[132]]
	ne[132] = "ApplyStrokeMode"
	ne[125] = .75
	ne[130] = ne[131][ne[132]]
	ne[131] = "Border"
	ne[129] = ne[130][ne[131]]
	ne[121] = {
		[ne[122]] = ne[124],
		[ne[123]] = ne[125],
		[ne[126]] = ne[127],
		[ne[128]] = ne[129]
	}
	ne[126] = "UDim"
	ne[119] = ne[117](ne[120], ne[121])
	ne[129] = 5
	ne[123] = "PaddingLeft"
	ne[117] = up4
	ne[121] = "UIPadding"
	ne[125] = ENV[ne[126]]
	ne[126] = "new"
	ne[124] = ne[125][ne[126]]
	ne[126] = 0
	ne[127] = 8
	ne[125] = ne[124](ne[126], ne[127])
	ne[127] = "Enum"
	ne[122] = {
		[ne[123]] = ne[125]
	}
	ne[120] = {
		ne[117](ne[121], ne[122])
	}
	ne[123] = "ApplyStrokeMode"
	ne[116] = {
		ne[118],
		ne[119],
		unpack(ne[120])
	}
	ne[88] = {
		[ne[89]] = ne[91],
		[ne[90]] = ne[92],
		[ne[93]] = ne[95],
		[ne[94]] = ne[96],
		[ne[97]] = ne[98],
		[ne[99]] = ne[100],
		[ne[101]] = ne[103],
		[ne[102]] = ne[104],
		[ne[105]] = ne[107],
		[ne[106]] = ne[108],
		[ne[109]] = ne[110],
		[ne[111]] = ne[112],
		[ne[113]] = ne[114],
		[ne[115]] = ne[116]
	}
	ne[93] = "Color3"
	ne[89] = f[ne[77]]
	ne[86] = ne[84](ne[87], ne[88], ne[89])
	ne[100] = 74
	ne[84] = O()
	ne[99] = 0
	ne[106] = "Enum"
	ne[90] = "BackgroundColor3"
	f[ne[84]] = ne[86]
	ne[102] = "AutomaticCanvasSize"
	ne[112] = 0
	ne[88] = "ScrollingFrame"
	ne[97] = "UDim2"
	ne[120] = 6
	ne[110] = 0
	ne[86] = up4
	ne[92] = ENV[ne[93]]
	ne[121] = 75
	ne[94] = 6
	ne[93] = "fromRGB"
	ne[91] = ne[92][ne[93]]
	ne[98] = 0
	ne[95] = 16
	ne[93] = 9
	ne[92] = ne[91](ne[93], ne[94], ne[95])
	ne[93] = 0
	ne[119] = "UDim"
	ne[101] = 1
	ne[91] = "BorderSizePixel"
	ne[122] = 200
	ne[94] = "Size"
	ne[111] = 0
	ne[96] = ENV[ne[97]]
	ne[97] = "new"
	ne[95] = ne[96][ne[97]]
	ne[97] = 1
	ne[96] = ne[95](ne[97], ne[98], ne[99], ne[100])
	ne[105] = ENV[ne[106]]
	ne[106] = "AutomaticSize"
	ne[98] = "ScrollBarThickness"
	ne[104] = ne[105][ne[106]]
	ne[97] = 7
	ne[95] = "LayoutOrder"
	ne[108] = "Enum"
	ne[99] = 0
	ne[109] = "UDim2"
	ne[100] = "ScrollBarImageTransparency"
	ne[105] = "Y"
	ne[103] = ne[104][ne[105]]
	ne[107] = ENV[ne[108]]
	ne[108] = "ElasticBehavior"
	ne[116] = "CornerRadius"
	ne[106] = ne[107][ne[108]]
	ne[104] = "ElasticBehavior"
	ne[107] = "WhenScrollable"
	ne[105] = ne[106][ne[107]]
	ne[106] = "CanvasSize"
	ne[108] = ENV[ne[109]]
	ne[114] = "UICorner"
	ne[109] = "new"
	ne[107] = ne[108][ne[109]]
	ne[109] = 0
	ne[108] = ne[107](ne[109], ne[110], ne[111], ne[112])
	ne[112] = up4
	ne[107] = "ZIndex"
	ne[109] = 23
	ne[118] = ENV[ne[119]]
	ne[119] = "new"
	ne[117] = ne[118][ne[119]]
	ne[119] = 0
	ne[118] = ne[117](ne[119], ne[120])
	ne[115] = {
		[ne[116]] = ne[118]
	}
	ne[131] = "Enum"
	ne[113] = ne[112](ne[114], ne[115])
	ne[117] = "Color"
	ne[110] = "Children"
	ne[120] = "Color3"
	ne[112] = up4
	ne[119] = ENV[ne[120]]
	ne[120] = "fromRGB"
	ne[118] = ne[119][ne[120]]
	ne[120] = 120
	ne[115] = "UIStroke"
	ne[119] = ne[118](ne[120], ne[121], ne[122])
	ne[121] = "Thickness"
	ne[126] = ENV[ne[127]]
	ne[127] = "ApplyStrokeMode"
	ne[125] = ne[126][ne[127]]
	ne[120] = .72
	ne[118] = "Transparency"
	ne[126] = "Border"
	ne[122] = 1
	ne[128] = "UDim"
	ne[124] = ne[125][ne[126]]
	ne[116] = {
		[ne[117]] = ne[119],
		[ne[118]] = ne[120],
		[ne[121]] = ne[122],
		[ne[123]] = ne[124]
	}
	ne[122] = "Enum"
	ne[118] = "SortOrder"
	ne[114] = ne[112](ne[115], ne[116])
	ne[116] = "UIListLayout"
	ne[112] = up4
	ne[121] = ENV[ne[122]]
	ne[122] = "SortOrder"
	ne[123] = "UDim"
	ne[120] = ne[121][ne[122]]
	ne[126] = "UDim"
	ne[121] = "LayoutOrder"
	ne[119] = ne[120][ne[121]]
	ne[124] = 2
	ne[122] = ENV[ne[123]]
	ne[120] = "Padding"
	ne[123] = "new"
	ne[121] = ne[122][ne[123]]
	ne[127] = 5
	ne[123] = 0
	ne[122] = ne[121](ne[123], ne[124])
	ne[124] = "UDim"
	ne[117] = {
		[ne[118]] = ne[119],
		[ne[120]] = ne[122]
	}
	ne[115] = ne[112](ne[116], ne[117])
	ne[122] = "UDim"
	ne[117] = "UIPadding"
	ne[119] = "PaddingLeft"
	ne[112] = up4
	ne[121] = ENV[ne[122]]
	ne[122] = "new"
	ne[123] = 8
	ne[120] = ne[121][ne[122]]
	ne[122] = 0
	ne[121] = ne[120](ne[122], ne[123])
	ne[120] = "PaddingRight"
	ne[123] = ENV[ne[124]]
	ne[125] = 6
	ne[124] = "new"
	ne[122] = ne[123][ne[124]]
	ne[124] = 0
	ne[123] = ne[122](ne[124], ne[125])
	ne[122] = "PaddingTop"
	ne[125] = ENV[ne[126]]
	ne[126] = "new"
	ne[124] = ne[125][ne[126]]
	ne[126] = 0
	ne[125] = ne[124](ne[126], ne[127])
	ne[127] = ENV[ne[128]]
	ne[128] = "new"
	ne[124] = "PaddingBottom"
	ne[126] = ne[127][ne[128]]
	ne[128] = 0
	ne[127] = ne[126](ne[128], ne[129])
	ne[118] = {
		[ne[119]] = ne[121],
		[ne[120]] = ne[123],
		[ne[122]] = ne[125],
		[ne[124]] = ne[127]
	}
	ne[116] = {
		ne[112](ne[117], ne[118])
	}
	ne[111] = {
		ne[113],
		ne[114],
		ne[115],
		unpack(ne[116])
	}
	ne[89] = {
		[ne[90]] = ne[92],
		[ne[91]] = ne[93],
		[ne[94]] = ne[96],
		[ne[95]] = ne[97],
		[ne[98]] = ne[99],
		[ne[100]] = ne[101],
		[ne[102]] = ne[103],
		[ne[104]] = ne[105],
		[ne[106]] = ne[108],
		[ne[107]] = ne[109],
		[ne[110]] = ne[111]
	}
	ne[90] = f[ne[77]]
	ne[87] = ne[86](ne[88], ne[89], ne[90])
	ne[90] = 8
	ne[96] = "UDim2"
	ne[93] = "Size"
	ne[115] = "Enum"
	ne[98] = 0
	ne[86] = O()
	f[ne[86]] = ne[87]
	ne[88] = f[t]
	ne[92] = 1
	ne[89] = "SectionLabel"
	ne[87] = ne[88][ne[89]]
	ne[91] = "BackgroundTransparency"
	ne[105] = "FillDirection"
	ne[103] = "UIListLayout"
	ne[89] = "ACTIONS"
	ne[88] = ne[87](ne[89], ne[90])
	ne[99] = 26
	ne[89] = "Frame"
	ne[127] = "ApplyStrokeMode"
	ne[97] = 0
	ne[87] = up4
	ne[95] = ENV[ne[96]]
	ne[96] = "new"
	ne[94] = ne[95][ne[96]]
	ne[96] = 1
	ne[95] = ne[94](ne[96], ne[97], ne[98], ne[99])
	ne[94] = "LayoutOrder"
	ne[99] = "Children"
	ne[97] = "ZIndex"
	ne[116] = "UDim"
	ne[109] = "Enum"
	ne[101] = up4
	ne[108] = ENV[ne[109]]
	ne[98] = 23
	ne[96] = 9
	ne[113] = "Enum"
	ne[109] = "FillDirection"
	ne[107] = ne[108][ne[109]]
	ne[108] = "Horizontal"
	ne[106] = ne[107][ne[108]]
	ne[111] = "Enum"
	ne[107] = "HorizontalAlignment"
	ne[110] = ENV[ne[111]]
	ne[117] = 4
	ne[111] = "HorizontalAlignment"
	ne[109] = ne[110][ne[111]]
	ne[110] = "Center"
	ne[108] = ne[109][ne[110]]
	ne[112] = ENV[ne[113]]
	ne[109] = "VerticalAlignment"
	ne[113] = "VerticalAlignment"
	ne[123] = "UDim"
	ne[111] = ne[112][ne[113]]
	ne[112] = "Center"
	ne[110] = ne[111][ne[112]]
	ne[114] = ENV[ne[115]]
	ne[111] = "SortOrder"
	ne[115] = "SortOrder"
	ne[113] = ne[114][ne[115]]
	ne[114] = "LayoutOrder"
	ne[112] = ne[113][ne[114]]
	ne[115] = ENV[ne[116]]
	ne[113] = "Padding"
	ne[116] = "new"
	ne[114] = ne[115][ne[116]]
	ne[116] = 0
	ne[115] = ne[114](ne[116], ne[117])
	ne[104] = {
		[ne[105]] = ne[106],
		[ne[107]] = ne[108],
		[ne[109]] = ne[110],
		[ne[111]] = ne[112],
		[ne[113]] = ne[115]
	}
	ne[102] = {
		ne[101](ne[103], ne[104])
	}
	ne[100] = {
		unpack(ne[102])
	}
	ne[90] = {
		[ne[91]] = ne[92],
		[ne[93]] = ne[95],
		[ne[94]] = ne[96],
		[ne[97]] = ne[98],
		[ne[99]] = ne[100]
	}
	ne[92] = "BackgroundColor3"
	ne[108] = 205
	ne[118] = "UICorner"
	ne[91] = f[ne[77]]
	ne[88] = ne[87](ne[89], ne[90], ne[91])
	ne[110] = "Enum"
	ne[101] = "UDim2"
	ne[98] = "Size"
	ne[90] = "TextButton"
	ne[87] = up4
	ne[107] = "Color3"
	ne[102] = 0
	ne[97] = 170
	ne[95] = "Color3"
	ne[96] = 40
	ne[94] = ENV[ne[95]]
	ne[95] = "fromRGB"
	ne[112] = "ZIndex"
	ne[113] = 24
	ne[93] = ne[94][ne[95]]
	ne[95] = 80
	ne[94] = ne[93](ne[95], ne[96], ne[97])
	ne[96] = "BorderSizePixel"
	ne[132] = "Enum"
	ne[125] = 150
	ne[100] = ENV[ne[101]]
	ne[109] = 255
	ne[93] = "BackgroundTransparency"
	ne[126] = 255
	ne[95] = .25
	ne[103] = 1
	ne[97] = 0
	ne[101] = "new"
	ne[99] = ne[100][ne[101]]
	ne[104] = 0
	ne[101] = .48
	ne[100] = ne[99](ne[101], ne[102], ne[103], ne[104])
	ne[102] = "Text"
	ne[120] = "CornerRadius"
	ne[99] = "LayoutOrder"
	ne[103] = "Load & Apply"
	ne[106] = ENV[ne[107]]
	ne[107] = "fromRGB"
	ne[105] = ne[106][ne[107]]
	ne[107] = 230
	ne[104] = "TextColor3"
	ne[101] = 1
	ne[114] = "Children"
	ne[106] = ne[105](ne[107], ne[108], ne[109])
	ne[105] = "Font"
	ne[124] = 6
	ne[109] = ENV[ne[110]]
	ne[110] = "Font"
	ne[108] = ne[109][ne[110]]
	ne[109] = "GothamBold"
	ne[107] = ne[108][ne[109]]
	ne[116] = up4
	ne[111] = false
	ne[110] = "AutoButtonColor"
	ne[108] = "TextSize"
	ne[109] = 10
	ne[122] = ENV[ne[123]]
	ne[123] = "new"
	ne[121] = ne[122][ne[123]]
	ne[123] = 0
	ne[122] = ne[121](ne[123], ne[124])
	ne[119] = {
		[ne[120]] = ne[122]
	}
	ne[121] = "Color"
	ne[117] = ne[116](ne[118], ne[119])
	ne[119] = "UIStroke"
	ne[116] = up4
	ne[124] = "Color3"
	ne[123] = ENV[ne[124]]
	ne[124] = "fromRGB"
	ne[122] = ne[123][ne[124]]
	ne[124] = 190
	ne[123] = ne[122](ne[124], ne[125], ne[126])
	ne[130] = ENV[ne[131]]
	ne[131] = "ApplyStrokeMode"
	ne[126] = 1
	ne[125] = "Thickness"
	ne[129] = ne[130][ne[131]]
	ne[122] = "Transparency"
	ne[124] = .5
	ne[130] = "Border"
	ne[128] = ne[129][ne[130]]
	ne[120] = {
		[ne[121]] = ne[123],
		[ne[122]] = ne[124],
		[ne[125]] = ne[126],
		[ne[127]] = ne[128]
	}
	ne[118] = {
		ne[116](ne[119], ne[120])
	}
	ne[115] = {
		ne[117],
		unpack(ne[118])
	}
	ne[91] = {
		[ne[92]] = ne[94],
		[ne[93]] = ne[95],
		[ne[96]] = ne[97],
		[ne[98]] = ne[100],
		[ne[99]] = ne[101],
		[ne[102]] = ne[103],
		[ne[104]] = ne[106],
		[ne[105]] = ne[107],
		[ne[108]] = ne[109],
		[ne[110]] = ne[111],
		[ne[112]] = ne[113],
		[ne[114]] = ne[115]
	}
	ne[89] = ne[87](ne[90], ne[91], ne[88])
	ne[93] = "BackgroundColor3"
	ne[126] = 190
	ne[87] = O()
	ne[96] = "Color3"
	f[ne[87]] = ne[89]
	ne[109] = 220
	ne[97] = 80
	ne[91] = "TextButton"
	ne[89] = up4
	ne[121] = "CornerRadius"
	ne[98] = 140
	ne[108] = "Color3"
	ne[95] = ENV[ne[96]]
	ne[96] = "fromRGB"
	ne[110] = 255
	ne[94] = ne[95][ne[96]]
	ne[96] = 40
	ne[95] = ne[94](ne[96], ne[97], ne[98])
	ne[102] = "UDim2"
	ne[98] = 0
	ne[104] = 1
	ne[97] = "BorderSizePixel"
	ne[94] = "BackgroundTransparency"
	ne[96] = .25
	ne[99] = "Size"
	ne[103] = 0
	ne[101] = ENV[ne[102]]
	ne[102] = "new"
	ne[115] = "Children"
	ne[114] = 24
	ne[100] = ne[101][ne[102]]
	ne[105] = 0
	ne[102] = .48
	ne[101] = ne[100](ne[102], ne[103], ne[104], ne[105])
	ne[124] = "UDim"
	ne[102] = 2
	ne[103] = "Text"
	ne[111] = "Enum"
	ne[119] = "UICorner"
	ne[100] = "LayoutOrder"
	ne[104] = "Overwrite Current"
	ne[105] = "TextColor3"
	ne[113] = "ZIndex"
	ne[107] = ENV[ne[108]]
	ne[108] = "fromRGB"
	ne[127] = 255
	ne[106] = ne[107][ne[108]]
	ne[128] = "ApplyStrokeMode"
	ne[108] = 180
	ne[107] = ne[106](ne[108], ne[109], ne[110])
	ne[110] = ENV[ne[111]]
	ne[125] = 6
	ne[106] = "Font"
	ne[111] = "Font"
	ne[109] = ne[110][ne[111]]
	ne[111] = "AutoButtonColor"
	ne[110] = "GothamBold"
	ne[108] = ne[109][ne[110]]
	ne[112] = false
	ne[109] = "TextSize"
	ne[117] = up4
	ne[110] = 10
	ne[123] = ENV[ne[124]]
	ne[124] = "new"
	ne[122] = ne[123][ne[124]]
	ne[124] = 0
	ne[123] = ne[122](ne[124], ne[125])
	ne[120] = {
		[ne[121]] = ne[123]
	}
	ne[118] = ne[117](ne[119], ne[120])
	ne[117] = up4
	ne[122] = "Color"
	ne[125] = "Color3"
	ne[120] = "UIStroke"
	ne[124] = ENV[ne[125]]
	ne[125] = "fromRGB"
	ne[123] = ne[124][ne[125]]
	ne[125] = 140
	ne[124] = ne[123](ne[125], ne[126], ne[127])
	ne[123] = "Transparency"
	ne[125] = .5
	ne[127] = 1
	ne[131] = ENV[ne[132]]
	ne[126] = "Thickness"
	ne[132] = "ApplyStrokeMode"
	ne[130] = ne[131][ne[132]]
	ne[131] = "Border"
	ne[129] = ne[130][ne[131]]
	ne[121] = {
		[ne[122]] = ne[124],
		[ne[123]] = ne[125],
		[ne[126]] = ne[127],
		[ne[128]] = ne[129]
	}
	ne[119] = {
		ne[117](ne[120], ne[121])
	}
	ne[116] = {
		ne[118],
		unpack(ne[119])
	}
	ne[92] = {
		[ne[93]] = ne[95],
		[ne[94]] = ne[96],
		[ne[97]] = ne[98],
		[ne[99]] = ne[101],
		[ne[100]] = ne[102],
		[ne[103]] = ne[104],
		[ne[105]] = ne[107],
		[ne[106]] = ne[108],
		[ne[109]] = ne[110],
		[ne[111]] = ne[112],
		[ne[113]] = ne[114],
		[ne[115]] = ne[116]
	}
	ne[90] = ne[89](ne[91], ne[92], ne[88])
	ne[118] = "Enum"
	ne[108] = "FillDirection"
	ne[95] = 1
	ne[89] = O()
	ne[96] = "Size"
	ne[92] = "Frame"
	ne[119] = "UDim"
	ne[99] = "UDim2"
	ne[102] = 26
	ne[114] = "Enum"
	ne[116] = "Enum"
	f[ne[89]] = ne[90]
	ne[112] = "Enum"
	ne[94] = "BackgroundTransparency"
	ne[90] = up4
	ne[98] = ENV[ne[99]]
	ne[101] = 0
	ne[106] = "UIListLayout"
	ne[100] = 0
	ne[99] = "new"
	ne[97] = ne[98][ne[99]]
	ne[99] = 1
	ne[98] = ne[97](ne[99], ne[100], ne[101], ne[102])
	ne[97] = "LayoutOrder"
	ne[102] = "Children"
	ne[123] = "CornerRadius"
	ne[100] = "ZIndex"
	ne[104] = up4
	ne[101] = 23
	ne[111] = ENV[ne[112]]
	ne[99] = 10
	ne[112] = "FillDirection"
	ne[110] = ne[111][ne[112]]
	ne[111] = "Horizontal"
	ne[109] = ne[110][ne[111]]
	ne[113] = ENV[ne[114]]
	ne[114] = "HorizontalAlignment"
	ne[112] = ne[113][ne[114]]
	ne[110] = "HorizontalAlignment"
	ne[113] = "Center"
	ne[111] = ne[112][ne[113]]
	ne[115] = ENV[ne[116]]
	ne[116] = "VerticalAlignment"
	ne[121] = "UICorner"
	ne[114] = ne[115][ne[116]]
	ne[126] = "UDim"
	ne[127] = 6
	ne[115] = "Center"
	ne[113] = ne[114][ne[115]]
	ne[112] = "VerticalAlignment"
	ne[120] = 4
	ne[117] = ENV[ne[118]]
	ne[118] = "SortOrder"
	ne[116] = ne[117][ne[118]]
	ne[114] = "SortOrder"
	ne[117] = "LayoutOrder"
	ne[115] = ne[116][ne[117]]
	ne[118] = ENV[ne[119]]
	ne[116] = "Padding"
	ne[119] = "new"
	ne[117] = ne[118][ne[119]]
	ne[119] = 0
	ne[118] = ne[117](ne[119], ne[120])
	ne[129] = 210
	ne[107] = {
		[ne[108]] = ne[109],
		[ne[110]] = ne[111],
		[ne[112]] = ne[113],
		[ne[114]] = ne[115],
		[ne[116]] = ne[118]
	}
	ne[105] = {
		ne[104](ne[106], ne[107])
	}
	ne[115] = "ZIndex"
	ne[103] = {
		unpack(ne[105])
	}
	ne[93] = {
		[ne[94]] = ne[95],
		[ne[96]] = ne[98],
		[ne[97]] = ne[99],
		[ne[100]] = ne[101],
		[ne[102]] = ne[103]
	}
	ne[94] = f[ne[77]]
	ne[91] = ne[90](ne[92], ne[93], ne[94])
	ne[93] = "TextButton"
	ne[99] = 18
	ne[105] = 0
	ne[95] = "BackgroundColor3"
	ne[98] = "Color3"
	ne[107] = 0
	ne[110] = "Color3"
	ne[90] = up4
	ne[100] = 40
	ne[97] = ENV[ne[98]]
	ne[98] = "fromRGB"
	ne[96] = ne[97][ne[98]]
	ne[112] = 245
	ne[98] = 24
	ne[97] = ne[96](ne[98], ne[99], ne[100])
	ne[104] = "UDim2"
	ne[101] = "Size"
	ne[106] = 1
	ne[100] = 0
	ne[103] = ENV[ne[104]]
	ne[96] = "BackgroundTransparency"
	ne[98] = .2
	ne[99] = "BorderSizePixel"
	ne[104] = "new"
	ne[102] = ne[103][ne[104]]
	ne[104] = .32
	ne[103] = ne[102](ne[104], ne[105], ne[106], ne[107])
	ne[107] = "TextColor3"
	ne[102] = "LayoutOrder"
	ne[105] = "Text"
	ne[117] = "Children"
	ne[104] = 1
	ne[116] = 24
	ne[109] = ENV[ne[110]]
	ne[130] = "ApplyStrokeMode"
	ne[111] = 180
	ne[110] = "fromRGB"
	ne[106] = "Clone"
	ne[108] = ne[109][ne[110]]
	ne[110] = 205
	ne[109] = ne[108](ne[110], ne[111], ne[112])
	ne[113] = "Enum"
	ne[108] = "Font"
	ne[128] = 90
	ne[112] = ENV[ne[113]]
	ne[113] = "Font"
	ne[111] = ne[112][ne[113]]
	ne[113] = "AutoButtonColor"
	ne[112] = "GothamBold"
	ne[110] = ne[111][ne[112]]
	ne[111] = "TextSize"
	ne[119] = up4
	ne[114] = false
	ne[125] = ENV[ne[126]]
	ne[126] = "new"
	ne[112] = 10
	ne[124] = ne[125][ne[126]]
	ne[126] = 0
	ne[125] = ne[124](ne[126], ne[127])
	ne[122] = {
		[ne[123]] = ne[125]
	}
	ne[120] = ne[119](ne[121], ne[122])
	ne[122] = "UIStroke"
	ne[119] = up4
	ne[127] = "Color3"
	ne[126] = ENV[ne[127]]
	ne[127] = "fromRGB"
	ne[124] = "Color"
	ne[125] = ne[126][ne[127]]
	ne[127] = 130
	ne[126] = ne[125](ne[127], ne[128], ne[129])
	ne[133] = ENV[ne[134]]
	ne[129] = 1
	ne[128] = "Thickness"
	ne[125] = "Transparency"
	ne[134] = "ApplyStrokeMode"
	ne[132] = ne[133][ne[134]]
	ne[133] = "Border"
	ne[131] = ne[132][ne[133]]
	ne[127] = .65
	ne[123] = {
		[ne[124]] = ne[126],
		[ne[125]] = ne[127],
		[ne[128]] = ne[129],
		[ne[130]] = ne[131]
	}
	ne[121] = {
		ne[119](ne[122], ne[123])
	}
	ne[124] = "CornerRadius"
	ne[118] = {
		ne[120],
		unpack(ne[121])
	}
	ne[94] = {
		[ne[95]] = ne[97],
		[ne[96]] = ne[98],
		[ne[99]] = ne[100],
		[ne[101]] = ne[103],
		[ne[102]] = ne[104],
		[ne[105]] = ne[106],
		[ne[107]] = ne[109],
		[ne[108]] = ne[110],
		[ne[111]] = ne[112],
		[ne[113]] = ne[114],
		[ne[115]] = ne[116],
		[ne[117]] = ne[118]
	}
	ne[100] = 75
	ne[99] = "Color3"
	ne[92] = ne[90](ne[93], ne[94], ne[91])
	ne[90] = O()
	ne[108] = 0
	f[ne[90]] = ne[92]
	ne[94] = "TextButton"
	ne[101] = 35
	ne[96] = "BackgroundColor3"
	ne[105] = "UDim2"
	ne[92] = up4
	ne[98] = ENV[ne[99]]
	ne[129] = 220
	ne[115] = false
	ne[99] = "fromRGB"
	ne[97] = ne[98][ne[99]]
	ne[99] = 20
	ne[102] = "Size"
	ne[98] = ne[97](ne[99], ne[100], ne[101])
	ne[131] = "ApplyStrokeMode"
	ne[100] = "BorderSizePixel"
	ne[97] = "BackgroundTransparency"
	ne[106] = 0
	ne[101] = 0
	ne[104] = ENV[ne[105]]
	ne[99] = .25
	ne[105] = "new"
	ne[114] = "Enum"
	ne[103] = ne[104][ne[105]]
	ne[107] = 1
	ne[105] = .32
	ne[104] = ne[103](ne[105], ne[106], ne[107], ne[108])
	ne[105] = 2
	ne[108] = "TextColor3"
	ne[116] = "ZIndex"
	ne[111] = "Color3"
	ne[106] = "Text"
	ne[110] = ENV[ne[111]]
	ne[107] = "Export Code"
	ne[128] = 6
	ne[111] = "fromRGB"
	ne[127] = "UDim"
	ne[113] = 160
	ne[118] = "Children"
	ne[109] = ne[110][ne[111]]
	ne[112] = 240
	ne[111] = 120
	ne[103] = "LayoutOrder"
	ne[122] = "UICorner"
	ne[110] = ne[109](ne[111], ne[112], ne[113])
	ne[113] = ENV[ne[114]]
	ne[109] = "Font"
	ne[114] = "Font"
	ne[112] = ne[113][ne[114]]
	ne[113] = "GothamBold"
	ne[114] = "AutoButtonColor"
	ne[111] = ne[112][ne[113]]
	ne[113] = 10
	ne[117] = 24
	ne[112] = "TextSize"
	ne[120] = up4
	ne[126] = ENV[ne[127]]
	ne[127] = "new"
	ne[125] = ne[126][ne[127]]
	ne[127] = 0
	ne[126] = ne[125](ne[127], ne[128])
	ne[128] = "Color3"
	ne[123] = {
		[ne[124]] = ne[126]
	}
	ne[125] = "Color"
	ne[121] = ne[120](ne[122], ne[123])
	ne[130] = 130
	ne[120] = up4
	ne[127] = ENV[ne[128]]
	ne[128] = "fromRGB"
	ne[123] = "UIStroke"
	ne[126] = ne[127][ne[128]]
	ne[128] = 90
	ne[127] = ne[126](ne[128], ne[129], ne[130])
	ne[130] = 1
	ne[129] = "Thickness"
	ne[128] = .6
	ne[126] = "Transparency"
	ne[134] = ENV[ne[135]]
	ne[135] = "ApplyStrokeMode"
	ne[133] = ne[134][ne[135]]
	ne[134] = "Border"
	ne[132] = ne[133][ne[134]]
	ne[124] = {
		[ne[125]] = ne[127],
		[ne[126]] = ne[128],
		[ne[129]] = ne[130],
		[ne[131]] = ne[132]
	}
	ne[122] = {
		ne[120](ne[123], ne[124])
	}
	ne[119] = {
		ne[121],
		unpack(ne[122])
	}
	ne[95] = {
		[ne[96]] = ne[98],
		[ne[97]] = ne[99],
		[ne[100]] = ne[101],
		[ne[102]] = ne[104],
		[ne[103]] = ne[105],
		[ne[106]] = ne[107],
		[ne[108]] = ne[110],
		[ne[109]] = ne[111],
		[ne[112]] = ne[113],
		[ne[114]] = ne[115],
		[ne[116]] = ne[117],
		[ne[118]] = ne[119]
	}
	ne[109] = 0
	ne[93] = ne[92](ne[94], ne[95], ne[91])
	ne[102] = 36
	ne[113] = 110
	ne[95] = "TextButton"
	ne[92] = O()
	ne[97] = "BackgroundColor3"
	ne[100] = "Color3"
	f[ne[92]] = ne[93]
	ne[93] = up4
	ne[114] = 130
	ne[101] = 18
	ne[119] = "Children"
	ne[99] = ENV[ne[100]]
	ne[117] = "ZIndex"
	ne[100] = "fromRGB"
	ne[98] = ne[99][ne[100]]
	ne[100] = 110
	ne[106] = "UDim2"
	ne[99] = ne[98](ne[100], ne[101], ne[102])
	ne[100] = .25
	ne[103] = "Size"
	ne[115] = "Enum"
	ne[108] = 1
	ne[101] = "BorderSizePixel"
	ne[98] = "BackgroundTransparency"
	ne[102] = 0
	ne[112] = "Color3"
	ne[105] = ENV[ne[106]]
	ne[106] = "new"
	ne[104] = ne[105][ne[106]]
	ne[125] = "CornerRadius"
	ne[107] = 0
	ne[106] = .32
	ne[118] = 24
	ne[105] = ne[104](ne[106], ne[107], ne[108], ne[109])
	ne[132] = "ApplyStrokeMode"
	ne[116] = false
	ne[131] = 120
	ne[108] = "Delete"
	ne[104] = "LayoutOrder"
	ne[106] = 3
	ne[130] = 95
	ne[111] = ENV[ne[112]]
	ne[107] = "Text"
	ne[109] = "TextColor3"
	ne[112] = "fromRGB"
	ne[110] = ne[111][ne[112]]
	ne[112] = 255
	ne[111] = ne[110](ne[112], ne[113], ne[114])
	ne[114] = ENV[ne[115]]
	ne[110] = "Font"
	ne[115] = "Font"
	ne[123] = "UICorner"
	ne[113] = ne[114][ne[115]]
	ne[114] = "GothamBold"
	ne[115] = "AutoButtonColor"
	ne[112] = ne[113][ne[114]]
	ne[113] = "TextSize"
	ne[121] = up4
	ne[129] = 6
	ne[114] = 10
	ne[128] = "UDim"
	ne[127] = ENV[ne[128]]
	ne[128] = "new"
	ne[126] = ne[127][ne[128]]
	ne[128] = 0
	ne[127] = ne[126](ne[128], ne[129])
	ne[126] = "Color"
	ne[124] = {
		[ne[125]] = ne[127]
	}
	ne[122] = ne[121](ne[123], ne[124])
	ne[124] = "UIStroke"
	ne[121] = up4
	ne[129] = "Color3"
	ne[128] = ENV[ne[129]]
	ne[129] = "fromRGB"
	ne[127] = ne[128][ne[129]]
	ne[129] = 255
	ne[128] = ne[127](ne[129], ne[130], ne[131])
	ne[127] = "Transparency"
	ne[135] = ENV[ne[136]]
	ne[131] = 1
	ne[136] = "ApplyStrokeMode"
	ne[129] = .6
	ne[134] = ne[135][ne[136]]
	ne[135] = "Border"
	ne[130] = "Thickness"
	ne[133] = ne[134][ne[135]]
	ne[125] = {
		[ne[126]] = ne[128],
		[ne[127]] = ne[129],
		[ne[130]] = ne[131],
		[ne[132]] = ne[133]
	}
	ne[123] = {
		ne[121](ne[124], ne[125])
	}
	ne[120] = {
		ne[122],
		unpack(ne[123])
	}
	ne[96] = {
		[ne[97]] = ne[99],
		[ne[98]] = ne[100],
		[ne[101]] = ne[102],
		[ne[103]] = ne[105],
		[ne[104]] = ne[106],
		[ne[107]] = ne[108],
		[ne[109]] = ne[111],
		[ne[110]] = ne[112],
		[ne[113]] = ne[114],
		[ne[115]] = ne[116],
		[ne[117]] = ne[118],
		[ne[119]] = ne[120]
	}
	ne[94] = ne[93](ne[95], ne[96], ne[91])
	ne[105] = 0
	ne[106] = 16
	ne[100] = "Size"
	ne[98] = "BackgroundTransparency"
	ne[96] = "TextLabel"
	ne[116] = "Enum"
	ne[93] = O()
	ne[119] = "Enum"
	ne[113] = 215
	ne[104] = 0
	f[ne[93]] = ne[94]
	ne[133] = "UICorner"
	ne[99] = 1
	ne[94] = up4
	ne[108] = "Enum"
	ne[103] = "UDim2"
	ne[102] = ENV[ne[103]]
	ne[103] = "new"
	ne[101] = ne[102][ne[103]]
	ne[103] = 1
	ne[102] = ne[101](ne[103], ne[104], ne[105], ne[106])
	ne[101] = "LayoutOrder"
	ne[107] = ENV[ne[108]]
	ne[104] = "Font"
	ne[125] = "ApplyStrokeMode"
	ne[130] = 18
	ne[111] = "Color3"
	ne[103] = 9
	ne[108] = "Font"
	ne[112] = 115
	ne[106] = ne[107][ne[108]]
	ne[107] = "GothamBold"
	ne[105] = ne[106][ne[107]]
	ne[110] = ENV[ne[111]]
	ne[108] = "TextColor3"
	ne[111] = "fromRGB"
	ne[109] = ne[110][ne[111]]
	ne[107] = "PROFILES & SLOTS"
	ne[111] = 150
	ne[106] = "Text"
	ne[122] = "UDim"
	ne[110] = ne[109](ne[111], ne[112], ne[113])
	ne[109] = "TextSize"
	ne[111] = 10
	ne[112] = "TextXAlignment"
	ne[115] = ENV[ne[116]]
	ne[116] = "TextXAlignment"
	ne[114] = ne[115][ne[116]]
	ne[115] = "Left"
	ne[113] = ne[114][ne[115]]
	ne[114] = "ZIndex"
	ne[115] = 23
	ne[97] = {
		[ne[98]] = ne[99],
		[ne[100]] = ne[102],
		[ne[101]] = ne[103],
		[ne[104]] = ne[105],
		[ne[106]] = ne[107],
		[ne[108]] = ne[110],
		[ne[109]] = ne[111],
		[ne[112]] = ne[113],
		[ne[114]] = ne[115]
	}
	ne[98] = f[ne[74]]
	ne[95] = ne[94](ne[96], ne[97], ne[98])
	ne[100] = 1
	ne[115] = "HorizontalAlignment"
	ne[97] = "Frame"
	ne[94] = O()
	ne[107] = 0
	ne[104] = "UDim2"
	f[ne[94]] = ne[95]
	ne[99] = "BackgroundTransparency"
	ne[106] = 0
	ne[95] = up4
	ne[101] = "Size"
	ne[103] = ENV[ne[104]]
	ne[104] = "new"
	ne[102] = ne[103][ne[104]]
	ne[105] = 0
	ne[104] = 1
	ne[121] = "Enum"
	ne[109] = "Children"
	ne[103] = ne[102](ne[104], ne[105], ne[106], ne[107])
	ne[123] = 4
	ne[107] = "Enum"
	ne[102] = "AutomaticSize"
	ne[106] = ENV[ne[107]]
	ne[107] = "AutomaticSize"
	ne[105] = ne[106][ne[107]]
	ne[106] = "Y"
	ne[113] = "UIListLayout"
	ne[104] = ne[105][ne[106]]
	ne[108] = 23
	ne[105] = "LayoutOrder"
	ne[106] = 10
	ne[107] = "ZIndex"
	ne[111] = up4
	ne[118] = ENV[ne[119]]
	ne[119] = "HorizontalAlignment"
	ne[117] = ne[118][ne[119]]
	ne[118] = "Center"
	ne[116] = ne[117][ne[118]]
	ne[117] = "SortOrder"
	ne[120] = ENV[ne[121]]
	ne[121] = "SortOrder"
	ne[124] = 220
	ne[119] = ne[120][ne[121]]
	ne[120] = "LayoutOrder"
	ne[118] = ne[119][ne[120]]
	ne[119] = "Padding"
	ne[121] = ENV[ne[122]]
	ne[122] = "new"
	ne[120] = ne[121][ne[122]]
	ne[131] = 55
	ne[122] = 0
	ne[121] = ne[120](ne[122], ne[123])
	ne[114] = {
		[ne[115]] = ne[116],
		[ne[117]] = ne[118],
		[ne[119]] = ne[121]
	}
	ne[112] = {
		ne[111](ne[113], ne[114])
	}
	ne[110] = {
		unpack(ne[112])
	}
	ne[121] = "UDim"
	ne[116] = "UICorner"
	ne[98] = {
		[ne[99]] = ne[100],
		[ne[101]] = ne[103],
		[ne[102]] = ne[104],
		[ne[105]] = ne[106],
		[ne[107]] = ne[108],
		[ne[109]] = ne[110]
	}
	ne[104] = 10
	ne[123] = 90
	ne[118] = "CornerRadius"
	ne[99] = f[ne[74]]
	ne[96] = ne[95](ne[97], ne[98], ne[99])
	ne[95] = O()
	f[ne[95]] = ne[96]
	ne[103] = "Color3"
	ne[109] = "UDim2"
	ne[111] = 0
	ne[96] = up4
	ne[98] = "Frame"
	ne[100] = "BackgroundColor3"
	ne[102] = ENV[ne[103]]
	ne[129] = "Enum"
	ne[103] = "fromRGB"
	ne[112] = 34
	ne[101] = ne[102][ne[103]]
	ne[122] = 7
	ne[106] = "Size"
	ne[105] = 24
	ne[103] = 14
	ne[102] = ne[101](ne[103], ne[104], ne[105])
	ne[103] = .2
	ne[105] = 0
	ne[104] = "BorderSizePixel"
	ne[101] = "BackgroundTransparency"
	ne[108] = ENV[ne[109]]
	ne[132] = 24
	ne[109] = "new"
	ne[110] = 0
	ne[107] = ne[108][ne[109]]
	ne[109] = 1
	ne[108] = ne[107](ne[109], ne[110], ne[111], ne[112])
	ne[114] = up4
	ne[110] = "ZIndex"
	ne[109] = 11
	ne[120] = ENV[ne[121]]
	ne[121] = "new"
	ne[119] = ne[120][ne[121]]
	ne[107] = "LayoutOrder"
	ne[112] = "Children"
	ne[111] = 23
	ne[121] = 0
	ne[120] = ne[119](ne[121], ne[122])
	ne[117] = {
		[ne[118]] = ne[120]
	}
	ne[119] = "Color"
	ne[115] = ne[114](ne[116], ne[117])
	ne[122] = "Color3"
	ne[117] = "UIStroke"
	ne[114] = up4
	ne[121] = ENV[ne[122]]
	ne[122] = "fromRGB"
	ne[120] = ne[121][ne[122]]
	ne[122] = 140
	ne[121] = ne[120](ne[122], ne[123], ne[124])
	ne[122] = .7
	ne[120] = "Transparency"
	ne[123] = "Thickness"
	ne[124] = 1
	ne[128] = ENV[ne[129]]
	ne[129] = "ApplyStrokeMode"
	ne[127] = ne[128][ne[129]]
	ne[128] = "Border"
	ne[126] = ne[127][ne[128]]
	ne[118] = {
		[ne[119]] = ne[121],
		[ne[120]] = ne[122],
		[ne[123]] = ne[124],
		[ne[125]] = ne[126]
	}
	ne[123] = "ColorSequence"
	ne[116] = ne[114](ne[117], ne[118])
	ne[114] = up4
	ne[120] = "Color"
	ne[122] = ENV[ne[123]]
	ne[126] = "ColorSequenceKeypoint"
	ne[118] = "UIGradient"
	ne[123] = "new"
	ne[121] = ne[122][ne[123]]
	ne[125] = ENV[ne[126]]
	ne[126] = "new"
	ne[124] = ne[125][ne[126]]
	ne[126] = 0
	ne[129] = "Color3"
	ne[128] = ENV[ne[129]]
	ne[129] = "fromRGB"
	ne[127] = ne[128][ne[129]]
	ne[129] = 30
	ne[128] = {
		ne[127](ne[129], ne[130], ne[131])
	}
	ne[131] = 10
	ne[130] = "Color3"
	ne[125] = ne[124](ne[126], unpack(ne[128]))
	ne[127] = "ColorSequenceKeypoint"
	ne[126] = ENV[ne[127]]
	ne[127] = "new"
	ne[124] = ne[126][ne[127]]
	ne[129] = ENV[ne[130]]
	ne[127] = 1
	ne[130] = "fromRGB"
	ne[128] = ne[129][ne[130]]
	ne[130] = 14
	ne[129] = {
		ne[128](ne[130], ne[131], ne[132])
	}
	ne[126] = {
		ne[124](ne[127], unpack(ne[129]))
	}
	ne[123] = {
		ne[125],
		unpack(ne[126])
	}
	ne[122] = ne[121](ne[123])
	ne[123] = 135
	ne[121] = "Rotation"
	ne[119] = {
		[ne[120]] = ne[122],
		[ne[121]] = ne[123]
	}
	ne[117] = {
		ne[114](ne[118], ne[119])
	}
	ne[119] = 85
	ne[113] = {
		ne[115],
		ne[116],
		unpack(ne[117])
	}
	ne[99] = {
		[ne[100]] = ne[102],
		[ne[101]] = ne[103],
		[ne[104]] = ne[105],
		[ne[106]] = ne[108],
		[ne[107]] = ne[109],
		[ne[110]] = ne[111],
		[ne[112]] = ne[113]
	}
	ne[100] = f[ne[74]]
	ne[97] = ne[96](ne[98], ne[99], ne[100])
	ne[104] = "Color3"
	ne[117] = 20
	ne[113] = 8
	ne[108] = false
	ne[105] = 6
	ne[109] = "Position"
	ne[114] = .5
	ne[123] = 200
	ne[99] = "TextBox"
	ne[96] = up4
	ne[103] = ENV[ne[104]]
	ne[101] = "BackgroundColor3"
	ne[104] = "fromRGB"
	ne[115] = - 10
	ne[102] = ne[103][ne[104]]
	ne[106] = 14
	ne[104] = 8
	ne[118] = "Color3"
	ne[112] = "UDim2"
	ne[103] = ne[102](ne[104], ne[105], ne[106])
	ne[105] = "BorderSizePixel"
	ne[111] = ENV[ne[112]]
	ne[102] = "BackgroundTransparency"
	ne[106] = 0
	ne[104] = 0
	ne[116] = 0
	ne[107] = "ClearTextOnFocus"
	ne[112] = "new"
	ne[120] = 150
	ne[110] = ne[111][ne[112]]
	ne[112] = 0
	ne[122] = "Color3"
	ne[124] = 255
	ne[111] = ne[110](ne[112], ne[113], ne[114], ne[115])
	ne[110] = "Size"
	ne[114] = "UDim2"
	ne[113] = ENV[ne[114]]
	ne[114] = "new"
	ne[115] = - 82
	ne[112] = ne[113][ne[114]]
	ne[114] = 1
	ne[113] = ne[112](ne[114], ne[115], ne[116], ne[117])
	ne[117] = ENV[ne[118]]
	ne[115] = "PlaceholderColor3"
	ne[118] = "fromRGB"
	ne[129] = "Enum"
	ne[114] = "New profile name..."
	ne[112] = "PlaceholderText"
	ne[116] = ne[117][ne[118]]
	ne[118] = 110
	ne[117] = ne[116](ne[118], ne[119], ne[120])
	ne[125] = "Enum"
	ne[118] = ""
	ne[121] = ENV[ne[122]]
	ne[116] = "Text"
	ne[122] = "fromRGB"
	ne[119] = "TextColor3"
	ne[120] = ne[121][ne[122]]
	ne[122] = 220
	ne[121] = ne[120](ne[122], ne[123], ne[124])
	ne[120] = "Font"
	ne[124] = ENV[ne[125]]
	ne[125] = "Font"
	ne[123] = ne[124][ne[125]]
	ne[124] = "Gotham"
	ne[122] = ne[123][ne[124]]
	ne[124] = 11
	ne[123] = "TextSize"
	ne[135] = "CornerRadius"
	ne[128] = ENV[ne[129]]
	ne[125] = "TextXAlignment"
	ne[129] = "TextXAlignment"
	ne[127] = ne[128][ne[129]]
	ne[128] = "Left"
	ne[126] = ne[127][ne[128]]
	ne[127] = "ZIndex"
	ne[131] = up4
	ne[128] = 24
	ne[129] = "Children"
	ne[137] = ENV[ne[138]]
	ne[138] = "new"
	ne[136] = ne[137][ne[138]]
	ne[138] = 0
	ne[137] = ne[136](ne[138], ne[139])
	ne[139] = "Color3"
	ne[134] = {
		[ne[135]] = ne[137]
	}
	ne[136] = "Color"
	ne[132] = ne[131](ne[133], ne[134])
	ne[131] = up4
	ne[134] = "UIStroke"
	ne[138] = ENV[ne[139]]
	ne[139] = "fromRGB"
	ne[137] = ne[138][ne[139]]
	ne[139] = 130
	ne[138] = ne[137](ne[139], ne[140], ne[141])
	ne[139] = .72
	ne[137] = "Transparency"
	ne[141] = 1
	ne[140] = "Thickness"
	ne[145] = ENV[ne[146]]
	ne[146] = "ApplyStrokeMode"
	ne[144] = ne[145][ne[146]]
	ne[145] = "Border"
	ne[143] = ne[144][ne[145]]
	ne[135] = {
		[ne[136]] = ne[138],
		[ne[137]] = ne[139],
		[ne[140]] = ne[141],
		[ne[142]] = ne[143]
	}
	ne[137] = "PaddingLeft"
	ne[133] = ne[131](ne[134], ne[135])
	ne[140] = "UDim"
	ne[131] = up4
	ne[141] = 6
	ne[135] = "UIPadding"
	ne[139] = ENV[ne[140]]
	ne[140] = "new"
	ne[138] = ne[139][ne[140]]
	ne[142] = "Color3"
	ne[140] = 0
	ne[139] = ne[138](ne[140], ne[141])
	ne[136] = {
		[ne[137]] = ne[139]
	}
	ne[134] = {
		ne[131](ne[135], ne[136])
	}
	ne[130] = {
		ne[132],
		ne[133],
		unpack(ne[134])
	}
	ne[143] = 80
	ne[100] = {
		[ne[101]] = ne[103],
		[ne[102]] = ne[104],
		[ne[105]] = ne[106],
		[ne[107]] = ne[108],
		[ne[109]] = ne[111],
		[ne[110]] = ne[113],
		[ne[112]] = ne[114],
		[ne[115]] = ne[117],
		[ne[116]] = ne[118],
		[ne[119]] = ne[121],
		[ne[120]] = ne[122],
		[ne[123]] = ne[124],
		[ne[125]] = ne[126],
		[ne[127]] = ne[128],
		[ne[129]] = ne[130]
	}
	ne[107] = "Color3"
	ne[98] = ne[96](ne[99], ne[100], ne[97])
	ne[96] = O()
	ne[102] = "AnchorPoint"
	f[ne[96]] = ne[98]
	ne[98] = up4
	ne[119] = "Color3"
	ne[100] = "TextButton"
	ne[123] = false
	ne[105] = "Vector2"
	ne[113] = "UDim2"
	ne[118] = 22
	ne[139] = "ColorSequenceKeypoint"
	ne[104] = ENV[ne[105]]
	ne[105] = "new"
	ne[106] = .5
	ne[103] = ne[104][ne[105]]
	ne[136] = 6
	ne[105] = 1
	ne[104] = ne[103](ne[105], ne[106])
	ne[106] = ENV[ne[107]]
	ne[103] = "BackgroundColor3"
	ne[108] = 40
	ne[114] = - 6
	ne[121] = 255
	ne[107] = "fromRGB"
	ne[116] = 0
	ne[105] = ne[106][ne[107]]
	ne[145] = 150
	ne[107] = 80
	ne[109] = 160
	ne[132] = "CornerRadius"
	ne[106] = ne[105](ne[107], ne[108], ne[109])
	ne[109] = 0
	ne[108] = "BorderSizePixel"
	ne[110] = "Position"
	ne[105] = "BackgroundTransparency"
	ne[124] = "ZIndex"
	ne[107] = .25
	ne[117] = 0
	ne[112] = ENV[ne[113]]
	ne[113] = "new"
	ne[111] = ne[112][ne[113]]
	ne[113] = 1
	ne[115] = .5
	ne[112] = ne[111](ne[113], ne[114], ne[115], ne[116])
	ne[115] = "UDim2"
	ne[114] = ENV[ne[115]]
	ne[116] = 62
	ne[111] = "Size"
	ne[130] = "UICorner"
	ne[115] = "new"
	ne[113] = ne[114][ne[115]]
	ne[115] = 0
	ne[114] = ne[113](ne[115], ne[116], ne[117], ne[118])
	ne[120] = 195
	ne[113] = "Text"
	ne[122] = "Enum"
	ne[116] = "TextColor3"
	ne[118] = ENV[ne[119]]
	ne[115] = "+ Create"
	ne[119] = "fromRGB"
	ne[144] = 255
	ne[117] = ne[118][ne[119]]
	ne[135] = "UDim"
	ne[119] = 220
	ne[118] = ne[117](ne[119], ne[120], ne[121])
	ne[117] = "Font"
	ne[121] = ENV[ne[122]]
	ne[122] = "Font"
	ne[120] = ne[121][ne[122]]
	ne[121] = "GothamBold"
	ne[122] = "AutoButtonColor"
	ne[119] = ne[120][ne[121]]
	ne[121] = 10
	ne[125] = 24
	ne[128] = up4
	ne[126] = "Children"
	ne[120] = "TextSize"
	ne[134] = ENV[ne[135]]
	ne[135] = "new"
	ne[133] = ne[134][ne[135]]
	ne[135] = 0
	ne[134] = ne[133](ne[135], ne[136])
	ne[131] = {
		[ne[132]] = ne[134]
	}
	ne[129] = ne[128](ne[130], ne[131])
	ne[128] = up4
	ne[131] = "UIGradient"
	ne[133] = "Color"
	ne[136] = "ColorSequence"
	ne[135] = ENV[ne[136]]
	ne[136] = "new"
	ne[134] = ne[135][ne[136]]
	ne[138] = ENV[ne[139]]
	ne[139] = "new"
	ne[137] = ne[138][ne[139]]
	ne[141] = ENV[ne[142]]
	ne[142] = "fromRGB"
	ne[139] = 0
	ne[140] = ne[141][ne[142]]
	ne[142] = 140
	ne[141] = {
		ne[140](ne[142], ne[143], ne[144])
	}
	ne[140] = "ColorSequenceKeypoint"
	ne[138] = ne[137](ne[139], unpack(ne[141]))
	ne[139] = ENV[ne[140]]
	ne[140] = "new"
	ne[137] = ne[139][ne[140]]
	ne[143] = "Color3"
	ne[140] = 1
	ne[142] = ENV[ne[143]]
	ne[143] = "fromRGB"
	ne[141] = ne[142][ne[143]]
	ne[144] = 35
	ne[143] = 70
	ne[142] = {
		ne[141](ne[143], ne[144], ne[145])
	}
	ne[139] = {
		ne[137](ne[140], unpack(ne[142]))
	}
	ne[136] = {
		ne[138],
		unpack(ne[139])
	}
	ne[135] = ne[134](ne[136])
	ne[136] = 90
	ne[134] = "Rotation"
	ne[132] = {
		[ne[133]] = ne[135],
		[ne[134]] = ne[136]
	}
	ne[130] = {
		ne[128](ne[131], ne[132])
	}
	ne[127] = {
		ne[129],
		unpack(ne[130])
	}
	ne[101] = {
		[ne[102]] = ne[104],
		[ne[103]] = ne[106],
		[ne[105]] = ne[107],
		[ne[108]] = ne[109],
		[ne[110]] = ne[112],
		[ne[111]] = ne[114],
		[ne[113]] = ne[115],
		[ne[116]] = ne[118],
		[ne[117]] = ne[119],
		[ne[120]] = ne[121],
		[ne[122]] = ne[123],
		[ne[124]] = ne[125],
		[ne[126]] = ne[127]
	}
	ne[106] = "Color3"
	ne[128] = "ApplyStrokeMode"
	ne[99] = ne[98](ne[100], ne[101], ne[97])
	ne[107] = 9
	ne[124] = "UDim"
	ne[108] = 22
	ne[98] = O()
	f[ne[98]] = ne[99]
	ne[103] = "BackgroundColor3"
	ne[101] = "Frame"
	ne[113] = 0
	ne[99] = up4
	ne[121] = "CornerRadius"
	ne[109] = "Size"
	ne[105] = ENV[ne[106]]
	ne[135] = 22
	ne[106] = "fromRGB"
	ne[104] = ne[105][ne[106]]
	ne[114] = 0
	ne[106] = 12
	ne[143] = 180
	ne[136] = "UICorner"
	ne[132] = "Enum"
	ne[119] = "UICorner"
	ne[105] = ne[104](ne[106], ne[107], ne[108])
	ne[141] = "UDim"
	ne[106] = .2
	ne[112] = "UDim2"
	ne[125] = 7
	ne[107] = "BorderSizePixel"
	ne[111] = ENV[ne[112]]
	ne[112] = "new"
	ne[115] = 34
	ne[104] = "BackgroundTransparency"
	ne[108] = 0
	ne[110] = ne[111][ne[112]]
	ne[112] = 1
	ne[111] = ne[110](ne[112], ne[113], ne[114], ne[115])
	ne[112] = 12
	ne[144] = 120
	ne[114] = 23
	ne[113] = "ZIndex"
	ne[115] = "Children"
	ne[110] = "LayoutOrder"
	ne[117] = up4
	ne[123] = ENV[ne[124]]
	ne[124] = "new"
	ne[122] = ne[123][ne[124]]
	ne[124] = 0
	ne[123] = ne[122](ne[124], ne[125])
	ne[125] = "Color3"
	ne[122] = "Color"
	ne[120] = {
		[ne[121]] = ne[123]
	}
	ne[118] = ne[117](ne[119], ne[120])
	ne[117] = up4
	ne[124] = ENV[ne[125]]
	ne[126] = 180
	ne[120] = "UIStroke"
	ne[125] = "fromRGB"
	ne[123] = ne[124][ne[125]]
	ne[127] = 120
	ne[125] = 80
	ne[124] = ne[123](ne[125], ne[126], ne[127])
	ne[131] = ENV[ne[132]]
	ne[123] = "Transparency"
	ne[127] = 1
	ne[132] = "ApplyStrokeMode"
	ne[130] = ne[131][ne[132]]
	ne[126] = "Thickness"
	ne[125] = .7
	ne[131] = "Border"
	ne[129] = ne[130][ne[131]]
	ne[121] = {
		[ne[122]] = ne[124],
		[ne[123]] = ne[125],
		[ne[126]] = ne[127],
		[ne[128]] = ne[129]
	}
	ne[126] = "ColorSequence"
	ne[142] = 5
	ne[134] = 28
	ne[119] = ne[117](ne[120], ne[121])
	ne[117] = up4
	ne[129] = "ColorSequenceKeypoint"
	ne[121] = "UIGradient"
	ne[123] = "Color"
	ne[132] = "Color3"
	ne[125] = ENV[ne[126]]
	ne[126] = "new"
	ne[124] = ne[125][ne[126]]
	ne[133] = 38
	ne[128] = ENV[ne[129]]
	ne[129] = "new"
	ne[127] = ne[128][ne[129]]
	ne[129] = 0
	ne[131] = ENV[ne[132]]
	ne[132] = "fromRGB"
	ne[130] = ne[131][ne[132]]
	ne[132] = 20
	ne[131] = {
		ne[130](ne[132], ne[133], ne[134])
	}
	ne[133] = "Color3"
	ne[130] = "ColorSequenceKeypoint"
	ne[128] = ne[127](ne[129], unpack(ne[131]))
	ne[129] = ENV[ne[130]]
	ne[130] = "new"
	ne[127] = ne[129][ne[130]]
	ne[130] = 1
	ne[132] = ENV[ne[133]]
	ne[134] = 9
	ne[133] = "fromRGB"
	ne[131] = ne[132][ne[133]]
	ne[133] = 12
	ne[132] = {
		ne[131](ne[133], ne[134], ne[135])
	}
	ne[129] = {
		ne[127](ne[130], unpack(ne[132]))
	}
	ne[126] = {
		ne[128],
		unpack(ne[129])
	}
	ne[125] = ne[124](ne[126])
	ne[124] = "Rotation"
	ne[126] = 135
	ne[122] = {
		[ne[123]] = ne[125],
		[ne[124]] = ne[126]
	}
	ne[120] = {
		ne[117](ne[121], ne[122])
	}
	ne[116] = {
		ne[118],
		ne[119],
		unpack(ne[120])
	}
	ne[145] = "ApplyStrokeMode"
	ne[121] = "Color3"
	ne[102] = {
		[ne[103]] = ne[105],
		[ne[104]] = ne[106],
		[ne[107]] = ne[108],
		[ne[109]] = ne[111],
		[ne[110]] = ne[112],
		[ne[113]] = ne[114],
		[ne[115]] = ne[116]
	}
	ne[119] = 0
	ne[107] = "Color3"
	ne[104] = "BackgroundColor3"
	ne[103] = f[ne[74]]
	ne[100] = ne[99](ne[101], ne[102], ne[103])
	ne[138] = "CornerRadius"
	ne[99] = up4
	ne[109] = 14
	ne[108] = 6
	ne[102] = "TextBox"
	ne[112] = "Position"
	ne[120] = 20
	ne[110] = "ClearTextOnFocus"
	ne[106] = ENV[ne[107]]
	ne[107] = "fromRGB"
	ne[105] = ne[106][ne[107]]
	ne[115] = "UDim2"
	ne[116] = 8
	ne[117] = .5
	ne[125] = "Color3"
	ne[118] = - 10
	ne[107] = 8
	ne[106] = ne[105](ne[107], ne[108], ne[109])
	ne[108] = "BorderSizePixel"
	ne[107] = 0
	ne[128] = "Enum"
	ne[105] = "BackgroundTransparency"
	ne[114] = ENV[ne[115]]
	ne[111] = false
	ne[115] = "new"
	ne[123] = 100
	ne[109] = 0
	ne[132] = "Enum"
	ne[113] = ne[114][ne[115]]
	ne[115] = 0
	ne[114] = ne[113](ne[115], ne[116], ne[117], ne[118])
	ne[113] = "Size"
	ne[117] = "UDim2"
	ne[118] = - 82
	ne[116] = ENV[ne[117]]
	ne[117] = "new"
	ne[115] = ne[116][ne[117]]
	ne[117] = 1
	ne[116] = ne[115](ne[117], ne[118], ne[119], ne[120])
	ne[115] = "PlaceholderText"
	ne[118] = "PlaceholderColor3"
	ne[120] = ENV[ne[121]]
	ne[121] = "fromRGB"
	ne[119] = ne[120][ne[121]]
	ne[117] = "Paste share code..."
	ne[122] = 130
	ne[121] = 80
	ne[120] = ne[119](ne[121], ne[122], ne[123])
	ne[121] = ""
	ne[122] = "TextColor3"
	ne[119] = "Text"
	ne[127] = 200
	ne[124] = ENV[ne[125]]
	ne[125] = "fromRGB"
	ne[123] = ne[124][ne[125]]
	ne[125] = 160
	ne[126] = 240
	ne[124] = ne[123](ne[125], ne[126], ne[127])
	ne[123] = "Font"
	ne[127] = ENV[ne[128]]
	ne[128] = "Font"
	ne[126] = ne[127][ne[128]]
	ne[127] = "Gotham"
	ne[125] = ne[126][ne[127]]
	ne[126] = "TextSize"
	ne[131] = ENV[ne[132]]
	ne[132] = "TextXAlignment"
	ne[127] = 11
	ne[128] = "TextXAlignment"
	ne[130] = ne[131][ne[132]]
	ne[132] = "Children"
	ne[131] = "Left"
	ne[129] = ne[130][ne[131]]
	ne[134] = up4
	ne[131] = 24
	ne[130] = "ZIndex"
	ne[140] = ENV[ne[141]]
	ne[141] = "new"
	ne[139] = ne[140][ne[141]]
	ne[141] = 0
	ne[140] = ne[139](ne[141], ne[142])
	ne[139] = "Color"
	ne[137] = {
		[ne[138]] = ne[140]
	}
	ne[135] = ne[134](ne[136], ne[137])
	ne[142] = "Color3"
	ne[137] = "UIStroke"
	ne[134] = up4
	ne[141] = ENV[ne[142]]
	ne[142] = "fromRGB"
	ne[140] = ne[141][ne[142]]
	ne[142] = 80
	ne[141] = ne[140](ne[142], ne[143], ne[144])
	ne[140] = "Transparency"
	ne[148] = ENV[ne[149]]
	ne[144] = 1
	ne[149] = "ApplyStrokeMode"
	ne[142] = .72
	ne[147] = ne[148][ne[149]]
	ne[143] = "Thickness"
	ne[148] = "Border"
	ne[146] = ne[147][ne[148]]
	ne[138] = {
		[ne[139]] = ne[141],
		[ne[140]] = ne[142],
		[ne[143]] = ne[144],
		[ne[145]] = ne[146]
	}
	ne[143] = "UDim"
	ne[140] = "PaddingLeft"
	ne[136] = ne[134](ne[137], ne[138])
	ne[134] = up4
	ne[144] = 6
	ne[142] = ENV[ne[143]]
	ne[138] = "UIPadding"
	ne[143] = "new"
	ne[141] = ne[142][ne[143]]
	ne[143] = 0
	ne[142] = ne[141](ne[143], ne[144])
	ne[139] = {
		[ne[140]] = ne[142]
	}
	ne[137] = {
		ne[134](ne[138], ne[139])
	}
	ne[133] = {
		ne[135],
		ne[136],
		unpack(ne[137])
	}
	ne[103] = {
		[ne[104]] = ne[106],
		[ne[105]] = ne[107],
		[ne[108]] = ne[109],
		[ne[110]] = ne[111],
		[ne[112]] = ne[114],
		[ne[113]] = ne[116],
		[ne[115]] = ne[117],
		[ne[118]] = ne[120],
		[ne[119]] = ne[121],
		[ne[122]] = ne[124],
		[ne[123]] = ne[125],
		[ne[126]] = ne[127],
		[ne[128]] = ne[129],
		[ne[130]] = ne[131],
		[ne[132]] = ne[133]
	}
	ne[101] = ne[99](ne[102], ne[103], ne[100])
	ne[125] = "Enum"
	ne[108] = "Vector2"
	ne[103] = "TextButton"
	ne[99] = O()
	ne[111] = 120
	ne[116] = "UDim2"
	ne[112] = 70
	ne[109] = .5
	f[ne[99]] = ne[101]
	ne[138] = "UDim"
	ne[118] = .5
	ne[122] = "Color3"
	ne[120] = 0
	ne[105] = "AnchorPoint"
	ne[110] = "Color3"
	ne[117] = - 6
	ne[147] = 120
	ne[126] = false
	ne[101] = up4
	ne[133] = "UICorner"
	ne[119] = 0
	ne[107] = ENV[ne[108]]
	ne[108] = "new"
	ne[106] = ne[107][ne[108]]
	ne[108] = 1
	ne[107] = ne[106](ne[108], ne[109])
	ne[106] = "BackgroundColor3"
	ne[109] = ENV[ne[110]]
	ne[146] = 200
	ne[121] = 22
	ne[145] = "Color3"
	ne[110] = "fromRGB"
	ne[113] = "Position"
	ne[108] = ne[109][ne[110]]
	ne[110] = 30
	ne[109] = ne[108](ne[110], ne[111], ne[112])
	ne[115] = ENV[ne[116]]
	ne[108] = "BackgroundTransparency"
	ne[124] = 195
	ne[112] = 0
	ne[116] = "new"
	ne[114] = ne[115][ne[116]]
	ne[110] = .3
	ne[111] = "BorderSizePixel"
	ne[116] = 1
	ne[115] = ne[114](ne[116], ne[117], ne[118], ne[119])
	ne[118] = "UDim2"
	ne[114] = "Size"
	ne[117] = ENV[ne[118]]
	ne[118] = "new"
	ne[116] = ne[117][ne[118]]
	ne[119] = 62
	ne[118] = 0
	ne[117] = ne[116](ne[118], ne[119], ne[120], ne[121])
	ne[118] = "Import"
	ne[119] = "TextColor3"
	ne[116] = "Text"
	ne[121] = ENV[ne[122]]
	ne[135] = "CornerRadius"
	ne[122] = "fromRGB"
	ne[127] = "ZIndex"
	ne[120] = ne[121][ne[122]]
	ne[123] = 250
	ne[122] = 160
	ne[121] = ne[120](ne[122], ne[123], ne[124])
	ne[124] = ENV[ne[125]]
	ne[125] = "Font"
	ne[123] = ne[124][ne[125]]
	ne[120] = "Font"
	ne[128] = 24
	ne[124] = "GothamBold"
	ne[122] = ne[123][ne[124]]
	ne[131] = up4
	ne[139] = 6
	ne[124] = 10
	ne[137] = ENV[ne[138]]
	ne[129] = "Children"
	ne[138] = "new"
	ne[123] = "TextSize"
	ne[125] = "AutoButtonColor"
	ne[136] = ne[137][ne[138]]
	ne[138] = 0
	ne[137] = ne[136](ne[138], ne[139])
	ne[134] = {
		[ne[135]] = ne[137]
	}
	ne[142] = "ColorSequenceKeypoint"
	ne[132] = ne[131](ne[133], ne[134])
	ne[136] = "Color"
	ne[131] = up4
	ne[134] = "UIGradient"
	ne[139] = "ColorSequence"
	ne[138] = ENV[ne[139]]
	ne[139] = "new"
	ne[137] = ne[138][ne[139]]
	ne[148] = 60
	ne[141] = ENV[ne[142]]
	ne[142] = "new"
	ne[140] = ne[141][ne[142]]
	ne[144] = ENV[ne[145]]
	ne[142] = 0
	ne[145] = "fromRGB"
	ne[143] = ne[144][ne[145]]
	ne[145] = 60
	ne[144] = {
		ne[143](ne[145], ne[146], ne[147])
	}
	ne[141] = ne[140](ne[142], unpack(ne[144]))
	ne[143] = "ColorSequenceKeypoint"
	ne[142] = ENV[ne[143]]
	ne[146] = "Color3"
	ne[143] = "new"
	ne[140] = ne[142][ne[143]]
	ne[147] = 100
	ne[145] = ENV[ne[146]]
	ne[146] = "fromRGB"
	ne[143] = 1
	ne[144] = ne[145][ne[146]]
	ne[146] = 20
	ne[145] = {
		ne[144](ne[146], ne[147], ne[148])
	}
	ne[142] = {
		ne[140](ne[143], unpack(ne[145]))
	}
	ne[139] = {
		ne[141],
		unpack(ne[142])
	}
	ne[138] = ne[137](ne[139])
	ne[137] = "Rotation"
	ne[139] = 90
	ne[135] = {
		[ne[136]] = ne[138],
		[ne[137]] = ne[139]
	}
	ne[133] = {
		ne[131](ne[134], ne[135])
	}
	ne[130] = {
		ne[132],
		unpack(ne[133])
	}
	ne[104] = {
		[ne[105]] = ne[107],
		[ne[106]] = ne[109],
		[ne[108]] = ne[110],
		[ne[111]] = ne[112],
		[ne[113]] = ne[115],
		[ne[114]] = ne[117],
		[ne[116]] = ne[118],
		[ne[119]] = ne[121],
		[ne[120]] = ne[122],
		[ne[123]] = ne[124],
		[ne[125]] = ne[126],
		[ne[127]] = ne[128],
		[ne[129]] = ne[130]
	}
	ne[102] = ne[101](ne[103], ne[104], ne[100])
	ne[101] = O()
	ne[105] = O()
	f[ne[101]] = ne[102]
	ne[103] = f[t]
	ne[104] = "ShowSettingsPage"
	ne[102] = closure(fn_13905168, {
		ne[75],
		ne[74],
		ne[34]
	})
	ne[103][ne[104]] = ne[102]
	ne[104] = "ShowSlotPage"
	ne[102] = closure(fn_9263160, {
		ne[74],
		ne[75],
		ne[34],
		up1,
		ne[76]
	})
	ne[103] = f[t]
	ne[103][ne[104]] = ne[102]
	ne[102] = closure(fn_221993, {})
	ne[104] = "EncodeShareCode"
	ne[103] = f[t]
	ne[110] = "BackgroundTransparency"
	ne[103][ne[104]] = ne[102]
	ne[102] = closure(fn_4798365, {})
	ne[104] = "DecodeShareCode"
	ne[103] = f[t]
	ne[103][ne[104]] = ne[102]
	ne[104] = "UpdatePreview"
	ne[102] = closure(fn_14608164, {
		ne[86],
		up4
	})
	ne[103] = f[t]
	ne[103][ne[104]] = ne[102]
	ne[104] = "Text"
	ne[102] = f[ne[84]]
	ne[103] = "GetPropertyChangedSignal"
	ne[103] = ne[102][ne[103]]
	ne[103] = ne[103](ne[102], ne[104])
	ne[102] = "Connect"
	ne[102] = ne[103][ne[102]]
	ne[104] = closure(fn_5324422, {
		ne[84],
		ne[67],
		ne[65],
		up1,
		t
	})
	ne[102] = ne[102](ne[103], ne[104])
	ne[102] = closure(fn_8397256, {
		ne[65],
		ne[66],
		up1,
		ne[78],
		ne[80],
		ne[84],
		ne[67],
		ne[81],
		ne[83],
		t
	})
	ne[107] = "RefreshSlots"
	ne[104] = "OpenSlotPanel"
	ne[103] = f[t]
	ne[103][ne[104]] = ne[102]
	ne[104] = "CloseSlotPanel"
	ne[126] = "Enum"
	ne[102] = closure(fn_5841648, {
		ne[66],
		ne[65],
		t
	})
	ne[103] = f[t]
	ne[103][ne[104]] = ne[102]
	ne[103] = f[ne[76]]
	ne[104] = "MouseButton1Click"
	ne[102] = ne[103][ne[104]]
	ne[106] = closure(fn_6718007, {
		ne[64],
		up1,
		ne[62],
		ne[94],
		up4,
		ne[95],
		ne[65],
		ne[66],
		up6,
		up14,
		ne[63],
		up5,
		t
	})
	ne[104] = closure(fn_2282089, {
		ne[76],
		up14,
		t
	})
	ne[103] = "Connect"
	ne[103] = ne[102][ne[103]]
	ne[103] = ne[103](ne[102], ne[104])
	ne[103] = f[ne[98]]
	ne[104] = "MouseButton1Click"
	ne[116] = 0
	ne[102] = ne[103][ne[104]]
	ne[103] = "Connect"
	ne[103] = ne[102][ne[103]]
	ne[104] = closure(fn_6970714, {
		ne[98],
		up14,
		up1,
		up5,
		ne[96]
	})
	ne[103] = ne[103](ne[102], ne[104])
	ne[104] = "Text"
	ne[103] = "GetPropertyChangedSignal"
	ne[102] = f[ne[78]]
	ne[103] = ne[102][ne[103]]
	ne[103] = ne[103](ne[102], ne[104])
	ne[102] = "Connect"
	ne[102] = ne[103][ne[102]]
	ne[104] = closure(fn_11639074, {
		ne[65],
		up1,
		ne[80],
		ne[78]
	})
	ne[102] = ne[102](ne[103], ne[104])
	ne[104] = "MouseButton1Click"
	ne[103] = f[ne[80]]
	ne[102] = ne[103][ne[104]]
	ne[103] = "Connect"
	ne[103] = ne[102][ne[103]]
	ne[104] = closure(fn_11676521, {
		ne[65],
		up1,
		ne[78],
		ne[63],
		ne[80],
		ne[76],
		up5
	})
	ne[103] = ne[103](ne[102], ne[104])
	ne[108] = "task"
	ne[104] = closure(fn_5453020, {
		ne[65],
		up1,
		up6,
		ne[83],
		ne[81],
		up5
	})
	ne[131] = "UDim"
	ne[103] = "MouseButton1Click"
	ne[102] = ne[85][ne[103]]
	ne[103] = "Connect"
	ne[103] = ne[102][ne[103]]
	ne[103] = ne[103](ne[102], ne[104])
	ne[104] = "MouseButton1Click"
	ne[103] = f[ne[87]]
	ne[115] = "UDim2"
	ne[102] = ne[103][ne[104]]
	ne[104] = closure(fn_235078, {
		ne[65],
		ne[87],
		up14,
		up1,
		ne[63],
		up5
	})
	ne[103] = "Connect"
	ne[130] = "Enum"
	ne[103] = ne[102][ne[103]]
	ne[103] = ne[103](ne[102], ne[104])
	ne[104] = "MouseButton1Click"
	ne[103] = f[ne[89]]
	ne[102] = ne[103][ne[104]]
	ne[104] = closure(fn_12084308, {
		ne[65],
		ne[89],
		up14,
		up1,
		t,
		ne[67],
		up5
	})
	ne[103] = "Connect"
	ne[103] = ne[102][ne[103]]
	ne[103] = ne[103](ne[102], ne[104])
	ne[103] = f[ne[90]]
	ne[104] = "MouseButton1Click"
	ne[102] = ne[103][ne[104]]
	ne[103] = "Connect"
	ne[104] = closure(fn_16560094, {
		ne[65],
		ne[90],
		up14,
		up1,
		up5
	})
	ne[103] = ne[102][ne[103]]
	ne[103] = ne[103](ne[102], ne[104])
	ne[104] = "MouseButton1Click"
	ne[103] = f[ne[93]]
	ne[102] = ne[103][ne[104]]
	ne[104] = closure(fn_5462641, {
		ne[65],
		ne[93],
		up14,
		up1,
		ne[63],
		up5,
		t
	})
	ne[103] = "Connect"
	ne[103] = ne[102][ne[103]]
	ne[118] = 16
	ne[103] = ne[103](ne[102], ne[104])
	ne[122] = 105
	ne[103] = f[ne[92]]
	ne[104] = "MouseButton1Click"
	ne[102] = ne[103][ne[104]]
	ne[104] = closure(fn_1710810, {
		ne[65],
		ne[92],
		up14,
		up1,
		t,
		up5
	})
	ne[103] = "Connect"
	ne[103] = ne[102][ne[103]]
	ne[132] = 5
	ne[103] = ne[103](ne[102], ne[104])
	ne[103] = f[ne[101]]
	ne[104] = "MouseButton1Click"
	ne[102] = ne[103][ne[104]]
	ne[104] = closure(fn_6240124, {
		ne[101],
		up14,
		ne[99],
		t,
		up5,
		up1
	})
	ne[103] = "Connect"
	ne[103] = ne[102][ne[103]]
	ne[103] = ne[103](ne[102], ne[104])
	ne[103] = O()
	ne[102] = f[ne[32]]
	ne[111] = 1
	ne[117] = 0
	ne[112] = "Size"
	f[ne[103]] = ne[102]
	ne[102] = closure(fn_2506201, {
		ne[66],
		ne[65],
		t,
		ne[103]
	})
	f[ne[32]] = ne[102]
	ne[104] = f[ne[38]]
	f[ne[105]] = ne[104]
	ne[104] = closure(fn_15622150, {
		ne[66],
		ne[65],
		t,
		ne[105]
	})
	f[ne[38]] = ne[104]
	ne[121] = "Color3"
	ENV[ne[107]] = ne[106]
	ne[107] = "RefreshSlots"
	ne[106] = ENV[ne[107]]
	ne[107] = ne[106]()
	ne[107] = ENV[ne[108]]
	ne[108] = "defer"
	ne[106] = ne[107][ne[108]]
	ne[108] = closure(fn_8247531, {
		up1,
		ne[63]
	})
	ne[107] = ne[106](ne[108])
	ne[108] = "TextLabel"
	ne[106] = up4
	ne[114] = ENV[ne[115]]
	ne[115] = "new"
	ne[113] = ne[114][ne[115]]
	ne[115] = 1
	ne[114] = ne[113](ne[115], ne[116], ne[117], ne[118])
	ne[113] = "Font"
	ne[118] = "Enum"
	ne[117] = ENV[ne[118]]
	ne[123] = 220
	ne[118] = "Font"
	ne[116] = ne[117][ne[118]]
	ne[117] = "GothamBold"
	ne[115] = ne[116][ne[117]]
	ne[117] = "Theme Manager"
	ne[118] = "TextColor3"
	ne[116] = "Text"
	ne[120] = ENV[ne[121]]
	ne[121] = "fromRGB"
	ne[119] = ne[120][ne[121]]
	ne[121] = 150
	ne[120] = ne[119](ne[121], ne[122], ne[123])
	ne[125] = ENV[ne[126]]
	ne[126] = "TextXAlignment"
	ne[122] = "TextXAlignment"
	ne[119] = "TextSize"
	ne[121] = 10
	ne[124] = ne[125][ne[126]]
	ne[125] = "Center"
	ne[123] = ne[124][ne[125]]
	ne[124] = "ZIndex"
	ne[125] = 23
	ne[109] = {
		[ne[110]] = ne[111],
		[ne[112]] = ne[114],
		[ne[113]] = ne[115],
		[ne[116]] = ne[117],
		[ne[118]] = ne[120],
		[ne[119]] = ne[121],
		[ne[122]] = ne[123],
		[ne[124]] = ne[125]
	}
	ne[122] = "UIListLayout"
	ne[111] = 1
	ne[115] = "UDim2"
	ne[110] = "BackgroundTransparency"
	ne[107] = ne[106](ne[108], ne[109], ne[30])
	ne[116] = 0
	ne[106] = up4
	ne[117] = 0
	ne[112] = "Size"
	ne[108] = "Frame"
	ne[114] = ENV[ne[115]]
	ne[115] = "new"
	ne[113] = ne[114][ne[115]]
	ne[124] = "HorizontalAlignment"
	ne[118] = 0
	ne[115] = 1
	ne[128] = "Enum"
	ne[114] = ne[113](ne[115], ne[116], ne[117], ne[118])
	ne[113] = "AutomaticSize"
	ne[118] = "Enum"
	ne[117] = ENV[ne[118]]
	ne[118] = "AutomaticSize"
	ne[116] = ne[117][ne[118]]
	ne[117] = "Y"
	ne[115] = ne[116][ne[117]]
	ne[116] = "ZIndex"
	ne[120] = up4
	ne[118] = "Children"
	ne[117] = 23
	ne[127] = ENV[ne[128]]
	ne[128] = "HorizontalAlignment"
	ne[126] = ne[127][ne[128]]
	ne[127] = "Center"
	ne[125] = ne[126][ne[127]]
	ne[126] = "SortOrder"
	ne[129] = ENV[ne[130]]
	ne[130] = "SortOrder"
	ne[128] = ne[129][ne[130]]
	ne[129] = "LayoutOrder"
	ne[127] = ne[128][ne[129]]
	ne[130] = ENV[ne[131]]
	ne[128] = "Padding"
	ne[131] = "new"
	ne[129] = ne[130][ne[131]]
	ne[131] = 0
	ne[130] = ne[129](ne[131], ne[132])
	ne[123] = {
		[ne[124]] = ne[125],
		[ne[126]] = ne[127],
		[ne[128]] = ne[130]
	}
	ne[121] = {
		ne[120](ne[122], ne[123])
	}
	ne[119] = {
		unpack(ne[121])
	}
	ne[109] = {
		[ne[110]] = ne[111],
		[ne[112]] = ne[114],
		[ne[113]] = ne[115],
		[ne[116]] = ne[117],
		[ne[118]] = ne[119]
	}
	ne[107] = ne[106](ne[108], ne[109], ne[30])
	ne[106] = O()
	f[ne[106]] = ne[107]
	ne[107] = {}
	ne[112] = "Themes"
	ne[110] = "_activeTheme"
	ne[109] = "Get"
	ne[108] = O()
	f[ne[108]] = ne[107]
	ne[107] = up1
	ne[109] = ne[107][ne[109]]
	ne[109] = ne[109](ne[107], ne[110], o)
	ne[107] = O()
	f[ne[107]] = ne[109]
	ne[111] = up3
	ne[110] = ne[111][ne[112]]
	ne[111] = f[ne[107]]
	ne[109] = ne[110][ne[111]]
	if ne[109] then goto L6001395 end
::L6203518::
	ne[124] = "Color3"
	ne[141] = "Enum"
	ne[118] = "UDim2"
	ne[109] = closure(fn_13138047, {
		ne[108],
		up3,
		ne[107],
		up4,
		ne[106],
		up6,
		up14,
		t,
		up5
	})
	ne[110] = f[t]
	ne[125] = 105
	ne[111] = "BuildThemeCards"
	ne[110][ne[111]] = ne[109]
	ne[114] = 1
	ne[111] = "BuildThemeCards"
	ne[115] = "Size"
	ne[119] = 0
	ne[110] = f[t]
	ne[109] = ne[110][ne[111]]
	ne[110] = ne[109]()
	ne[113] = "BackgroundTransparency"
	ne[121] = 16
	ne[129] = "Enum"
	ne[111] = "TextLabel"
	ne[120] = 0
	ne[109] = up4
	ne[117] = ENV[ne[118]]
	ne[118] = "new"
	ne[126] = 220
	ne[116] = ne[117][ne[118]]
	ne[118] = 1
	ne[117] = ne[116](ne[118], ne[119], ne[120], ne[121])
	ne[121] = "Enum"
	ne[120] = ENV[ne[121]]
	ne[116] = "Font"
	ne[121] = "Font"
	ne[119] = ne[120][ne[121]]
	ne[121] = "TextColor3"
	ne[120] = "GothamBold"
	ne[118] = ne[119][ne[120]]
	ne[123] = ENV[ne[124]]
	ne[124] = "fromRGB"
	ne[122] = ne[123][ne[124]]
	ne[119] = "Text"
	ne[124] = 150
	ne[120] = "Background Media"
	ne[123] = ne[122](ne[124], ne[125], ne[126])
	ne[128] = ENV[ne[129]]
	ne[124] = 10
	ne[122] = "TextSize"
	ne[125] = "TextXAlignment"
	ne[129] = "TextXAlignment"
	ne[127] = ne[128][ne[129]]
	ne[128] = "Center"
	ne[126] = ne[127][ne[128]]
	ne[127] = "ZIndex"
	ne[128] = 23
	ne[112] = {
		[ne[113]] = ne[114],
		[ne[115]] = ne[117],
		[ne[116]] = ne[118],
		[ne[119]] = ne[120],
		[ne[121]] = ne[123],
		[ne[122]] = ne[124],
		[ne[125]] = ne[126],
		[ne[127]] = ne[128]
	}
	ne[121] = 28
	ne[119] = 0
	ne[110] = ne[109](ne[111], ne[112], ne[30])
	ne[131] = "Enum"
	ne[118] = "UDim2"
	ne[113] = "BackgroundTransparency"
	ne[111] = "TextLabel"
	ne[114] = 1
	ne[120] = 0
	ne[109] = up4
	ne[117] = ENV[ne[118]]
	ne[118] = "new"
	ne[144] = 4
	ne[116] = ne[117][ne[118]]
	ne[115] = "Size"
	ne[118] = 1
	ne[117] = ne[116](ne[118], ne[119], ne[120], ne[121])
	ne[121] = "Enum"
	ne[120] = ENV[ne[121]]
	ne[116] = "Font"
	ne[121] = "Font"
	ne[119] = ne[120][ne[121]]
	ne[120] = "Gotham"
	ne[125] = 110
	ne[118] = ne[119][ne[120]]
	ne[127] = "TextXAlignment"
	ne[119] = "Text"
	ne[120] = "Drop .png/.jpg/.webm/.mp4 into Quantum Onyx Hub folder"
	ne[121] = "TextColor3"
	ne[126] = 170
	ne[124] = "Color3"
	ne[123] = ENV[ne[124]]
	ne[124] = "fromRGB"
	ne[160] = 0
	ne[137] = "SortOrder"
	ne[122] = ne[123][ne[124]]
	ne[124] = 130
	ne[123] = ne[122](ne[124], ne[125], ne[126])
	ne[124] = 9
	ne[125] = "TextWrapped"
	ne[122] = "TextSize"
	ne[130] = ENV[ne[131]]
	ne[126] = true
	ne[131] = "TextXAlignment"
	ne[129] = ne[130][ne[131]]
	ne[130] = "Center"
	ne[128] = ne[129][ne[130]]
	ne[129] = "ZIndex"
	ne[130] = 23
	ne[112] = {
		[ne[113]] = ne[114],
		[ne[115]] = ne[117],
		[ne[116]] = ne[118],
		[ne[119]] = ne[120],
		[ne[121]] = ne[123],
		[ne[122]] = ne[124],
		[ne[125]] = ne[126],
		[ne[127]] = ne[128],
		[ne[129]] = ne[130]
	}
	ne[120] = "UDim2"
	ne[113] = "BackgroundTransparency"
	ne[151] = 10
	ne[116] = 0
	ne[110] = ne[109](ne[111], ne[112], ne[30])
	ne[121] = 0
	ne[135] = "UIListLayout"
	ne[117] = "Size"
	ne[109] = up4
	ne[123] = 72
	ne[115] = "BorderSizePixel"
	ne[131] = "Children"
	ne[111] = "ScrollingFrame"
	ne[114] = 1
	ne[119] = ENV[ne[120]]
	ne[122] = 0
	ne[125] = 0
	ne[120] = "new"
	ne[118] = ne[119][ne[120]]
	ne[120] = 1
	ne[119] = ne[118](ne[120], ne[121], ne[122], ne[123])
	ne[118] = "CanvasSize"
	ne[122] = "UDim2"
	ne[121] = ENV[ne[122]]
	ne[124] = 0
	ne[123] = 0
	ne[129] = "Enum"
	ne[122] = "new"
	ne[143] = 4
	ne[120] = ne[121][ne[122]]
	ne[122] = 0
	ne[121] = ne[120](ne[122], ne[123], ne[124], ne[125])
	ne[120] = "ScrollBarThickness"
	ne[122] = 0
	ne[125] = "ElasticBehavior"
	ne[124] = 1
	ne[128] = ENV[ne[129]]
	ne[142] = "UDim"
	ne[129] = "ElasticBehavior"
	ne[127] = ne[128][ne[129]]
	ne[123] = "ScrollBarImageTransparency"
	ne[130] = 23
	ne[128] = "WhenScrollable"
	ne[126] = ne[127][ne[128]]
	ne[133] = up4
	ne[128] = true
	ne[146] = 4
	ne[140] = ENV[ne[141]]
	ne[141] = "SortOrder"
	ne[129] = "ZIndex"
	ne[127] = "ScrollingEnabled"
	ne[139] = ne[140][ne[141]]
	ne[140] = "LayoutOrder"
	ne[138] = ne[139][ne[140]]
	ne[141] = ENV[ne[142]]
	ne[142] = "new"
	ne[139] = "Padding"
	ne[140] = ne[141][ne[142]]
	ne[142] = 0
	ne[141] = ne[140](ne[142], ne[143])
	ne[136] = {
		[ne[137]] = ne[138],
		[ne[139]] = ne[141]
	}
	ne[134] = ne[133](ne[135], ne[136])
	ne[143] = "UDim"
	ne[136] = "UIPadding"
	ne[138] = "PaddingLeft"
	ne[133] = up4
	ne[141] = "UDim"
	ne[140] = ENV[ne[141]]
	ne[141] = "new"
	ne[142] = 4
	ne[139] = ne[140][ne[141]]
	ne[141] = 0
	ne[140] = ne[139](ne[141], ne[142])
	ne[139] = "PaddingRight"
	ne[142] = ENV[ne[143]]
	ne[143] = "new"
	ne[141] = ne[142][ne[143]]
	ne[143] = 0
	ne[142] = ne[141](ne[143], ne[144])
	ne[137] = {
		[ne[138]] = ne[140],
		[ne[139]] = ne[142]
	}
	ne[135] = {
		ne[133](ne[136], ne[137])
	}
	ne[132] = {
		ne[134],
		unpack(ne[135])
	}
	ne[139] = "Enum"
	ne[112] = {
		[ne[113]] = ne[114],
		[ne[115]] = ne[116],
		[ne[117]] = ne[119],
		[ne[118]] = ne[121],
		[ne[120]] = ne[122],
		[ne[123]] = ne[124],
		[ne[125]] = ne[126],
		[ne[127]] = ne[128],
		[ne[129]] = ne[130],
		[ne[131]] = ne[132]
	}
	ne[110] = ne[109](ne[111], ne[112], ne[30])
	ne[130] = "Enum"
	ne[119] = .88
	ne[124] = "Enum"
	ne[113] = "_opt_BgImageTransparency"
	ne[112] = "BuildBgImageCards"
	ne[109] = O()
	f[ne[109]] = ne[110]
	ne[110] = closure(fn_15521294, {
		ne[109],
		up16,
		up1,
		up17,
		up4,
		t,
		up10,
		up5
	})
	ne[117] = "Get"
	ne[133] = "Enum"
	ne[111] = f[t]
	ne[114] = .5
	ne[115] = 1
	ne[111][ne[112]] = ne[110]
	ne[111] = f[t]
	ne[112] = "BuildBgImageCards"
	ne[110] = ne[111][ne[112]]
	ne[112] = "MakeMiniSlider"
	ne[111] = ne[110]()
	ne[118] = "_opt_BgImageTransparency"
	ne[111] = f[t]
	ne[110] = ne[111][ne[112]]
	ne[112] = "BG Image Fade"
	ne[116] = up1
	ne[117] = ne[116][ne[117]]
	ne[117] = ne[117](ne[116], ne[118], ne[119])
	ne[120] = true
	ne[140] = "SortOrder"
	ne[116] = .02
	ne[119] = nil
	ne[118] = closure(fn_2645053, {
		se,
		up1
	})
	ne[127] = "Enum"
	ne[111] = ne[110](ne[30], ne[112], ne[113], ne[114], ne[115], ne[117], ne[116], ne[118], ne[119], ne[120])
	ne[112] = "Name"
	ne[118] = "Enum"
	ne[129] = "Enum"
	ne[122] = "Enum"
	ne[117] = ENV[ne[118]]
	ne[113] = "Default"
	ne[144] = "Enum"
	ne[118] = "Font"
	ne[116] = ne[117][ne[118]]
	ne[114] = "Regular"
	ne[120] = "Enum"
	ne[117] = "Gotham"
	ne[115] = ne[116][ne[117]]
	ne[116] = "Bold"
	ne[119] = ENV[ne[120]]
	ne[120] = "Font"
	ne[118] = ne[119][ne[120]]
	ne[123] = "Enum"
	ne[119] = "GothamBold"
	ne[150] = "UDim"
	ne[117] = ne[118][ne[119]]
	ne[121] = ENV[ne[122]]
	ne[122] = "Font"
	ne[120] = ne[121][ne[122]]
	ne[147] = 4
	ne[165] = 4000
	ne[118] = "Display"
	ne[121] = "FredokaOne"
	ne[119] = ne[120][ne[121]]
	ne[111] = {
		[ne[112]] = ne[113],
		[ne[114]] = ne[115],
		[ne[116]] = ne[117],
		[ne[118]] = ne[119]
	}
	ne[114] = "Gotham"
	ne[119] = "Enum"
	ne[115] = "Regular"
	ne[118] = ENV[ne[119]]
	ne[113] = "Name"
	ne[119] = "Font"
	ne[117] = ne[118][ne[119]]
	ne[121] = "Enum"
	ne[118] = "Gotham"
	ne[116] = ne[117][ne[118]]
	ne[117] = "Bold"
	ne[120] = ENV[ne[121]]
	ne[121] = "Font"
	ne[125] = "Enum"
	ne[119] = ne[120][ne[121]]
	ne[137] = "Enum"
	ne[120] = "GothamBold"
	ne[118] = ne[119][ne[120]]
	ne[119] = "Display"
	ne[122] = ENV[ne[123]]
	ne[123] = "Font"
	ne[121] = ne[122][ne[123]]
	ne[122] = "FredokaOne"
	ne[120] = ne[121][ne[122]]
	ne[112] = {
		[ne[113]] = ne[114],
		[ne[115]] = ne[116],
		[ne[117]] = ne[118],
		[ne[119]] = ne[120]
	}
	ne[120] = "Enum"
	ne[119] = ENV[ne[120]]
	ne[126] = "Enum"
	ne[114] = "Name"
	ne[116] = "Regular"
	ne[120] = "Font"
	ne[118] = ne[119][ne[120]]
	ne[119] = "SourceSans"
	ne[115] = "Source Sans"
	ne[117] = ne[118][ne[119]]
	ne[118] = "Bold"
	ne[122] = "Enum"
	ne[121] = ENV[ne[122]]
	ne[122] = "Font"
	ne[120] = ne[121][ne[122]]
	ne[135] = "Enum"
	ne[121] = "SourceSansBold"
	ne[119] = ne[120][ne[121]]
	ne[120] = "Display"
	ne[123] = ENV[ne[124]]
	ne[124] = "Font"
	ne[122] = ne[123][ne[124]]
	ne[123] = "SourceSansBold"
	ne[121] = ne[122][ne[123]]
	ne[113] = {
		[ne[114]] = ne[115],
		[ne[116]] = ne[117],
		[ne[118]] = ne[119],
		[ne[120]] = ne[121]
	}
	ne[115] = "Name"
	ne[121] = "Enum"
	ne[123] = "Enum"
	ne[117] = "Regular"
	ne[116] = "Nunito"
	ne[120] = ENV[ne[121]]
	ne[121] = "Font"
	ne[119] = ne[120][ne[121]]
	ne[120] = "Nunito"
	ne[118] = ne[119][ne[120]]
	ne[122] = ENV[ne[123]]
	ne[119] = "Bold"
	ne[123] = "Font"
	ne[121] = ne[122][ne[123]]
	ne[122] = "Nunito"
	ne[120] = ne[121][ne[122]]
	ne[124] = ENV[ne[125]]
	ne[121] = "Display"
	ne[125] = "Font"
	ne[123] = ne[124][ne[125]]
	ne[124] = "Nunito"
	ne[122] = ne[123][ne[124]]
	ne[114] = {
		[ne[115]] = ne[116],
		[ne[117]] = ne[118],
		[ne[119]] = ne[120],
		[ne[121]] = ne[122]
	}
	ne[117] = "Oswald"
	ne[116] = "Name"
	ne[122] = "Enum"
	ne[121] = ENV[ne[122]]
	ne[122] = "Font"
	ne[118] = "Regular"
	ne[120] = ne[121][ne[122]]
	ne[124] = "Enum"
	ne[121] = "Oswald"
	ne[119] = ne[120][ne[121]]
	ne[120] = "Bold"
	ne[123] = ENV[ne[124]]
	ne[124] = "Font"
	ne[122] = ne[123][ne[124]]
	ne[123] = "Oswald"
	ne[154] = "Size"
	ne[121] = ne[122][ne[123]]
	ne[122] = "Display"
	ne[125] = ENV[ne[126]]
	ne[126] = "Font"
	ne[124] = ne[125][ne[126]]
	ne[125] = "Oswald"
	ne[159] = 1
	ne[123] = ne[124][ne[125]]
	ne[125] = "Enum"
	ne[115] = {
		[ne[116]] = ne[117],
		[ne[118]] = ne[119],
		[ne[120]] = ne[121],
		[ne[122]] = ne[123]
	}
	ne[119] = "Regular"
	ne[117] = "Name"
	ne[118] = "Ubuntu"
	ne[123] = "Enum"
	ne[122] = ENV[ne[123]]
	ne[123] = "Font"
	ne[121] = ne[122][ne[123]]
	ne[122] = "Ubuntu"
	ne[120] = ne[121][ne[122]]
	ne[158] = 0
	ne[124] = ENV[ne[125]]
	ne[125] = "Font"
	ne[123] = ne[124][ne[125]]
	ne[124] = "Ubuntu"
	ne[122] = ne[123][ne[124]]
	ne[123] = "Display"
	ne[126] = ENV[ne[127]]
	ne[127] = "Font"
	ne[125] = ne[126][ne[127]]
	ne[126] = "Ubuntu"
	ne[124] = ne[125][ne[126]]
	ne[121] = "Bold"
	ne[116] = {
		[ne[117]] = ne[118],
		[ne[119]] = ne[120],
		[ne[121]] = ne[122],
		[ne[123]] = ne[124]
	}
	ne[118] = "Name"
	ne[124] = "Enum"
	ne[123] = ENV[ne[124]]
	ne[126] = "Enum"
	ne[119] = "Roboto"
	ne[120] = "Regular"
	ne[124] = "Font"
	ne[122] = ne[123][ne[124]]
	ne[123] = "Roboto"
	ne[121] = ne[122][ne[123]]
	ne[128] = "Enum"
	ne[125] = ENV[ne[126]]
	ne[126] = "Font"
	ne[122] = "Bold"
	ne[124] = ne[125][ne[126]]
	ne[125] = "Roboto"
	ne[123] = ne[124][ne[125]]
	ne[124] = "Display"
	ne[127] = ENV[ne[128]]
	ne[128] = "Font"
	ne[126] = ne[127][ne[128]]
	ne[127] = "RobotoCondensed"
	ne[131] = "Enum"
	ne[125] = ne[126][ne[127]]
	ne[117] = {
		[ne[118]] = ne[119],
		[ne[120]] = ne[121],
		[ne[122]] = ne[123],
		[ne[124]] = ne[125]
	}
	ne[119] = "Name"
	ne[125] = "Enum"
	ne[121] = "Regular"
	ne[124] = ENV[ne[125]]
	ne[120] = "Arcade"
	ne[125] = "Font"
	ne[123] = ne[124][ne[125]]
	ne[124] = "Arcade"
	ne[122] = ne[123][ne[124]]
	ne[127] = "Enum"
	ne[126] = ENV[ne[127]]
	ne[123] = "Bold"
	ne[127] = "Font"
	ne[125] = ne[126][ne[127]]
	ne[126] = "Arcade"
	ne[124] = ne[125][ne[126]]
	ne[128] = ENV[ne[129]]
	ne[129] = "Font"
	ne[125] = "Display"
	ne[127] = ne[128][ne[129]]
	ne[128] = "Arcade"
	ne[126] = ne[127][ne[128]]
	ne[118] = {
		[ne[119]] = ne[120],
		[ne[121]] = ne[122],
		[ne[123]] = ne[124],
		[ne[125]] = ne[126]
	}
	ne[126] = "Enum"
	ne[122] = "Regular"
	ne[128] = "Enum"
	ne[121] = "Code"
	ne[180] = 6
	ne[125] = ENV[ne[126]]
	ne[120] = "Name"
	ne[126] = "Font"
	ne[124] = ne[125][ne[126]]
	ne[125] = "Code"
	ne[123] = ne[124][ne[125]]
	ne[145] = "UDim"
	ne[124] = "Bold"
	ne[127] = ENV[ne[128]]
	ne[128] = "Font"
	ne[126] = ne[127][ne[128]]
	ne[127] = "Code"
	ne[125] = ne[126][ne[127]]
	ne[126] = "Display"
	ne[129] = ENV[ne[130]]
	ne[130] = "Font"
	ne[128] = ne[129][ne[130]]
	ne[129] = "Code"
	ne[127] = ne[128][ne[129]]
	ne[119] = {
		[ne[120]] = ne[121],
		[ne[122]] = ne[123],
		[ne[124]] = ne[125],
		[ne[126]] = ne[127]
	}
	ne[110] = {
		ne[111],
		ne[112],
		ne[113],
		ne[114],
		ne[115],
		ne[116],
		ne[117],
		ne[118],
		ne[119]
	}
	ne[115] = "Enum"
	ne[123] = "Enum"
	ne[111] = O()
	f[ne[111]] = ne[110]
	ne[114] = ENV[ne[115]]
	ne[115] = "Font"
	ne[113] = ne[114][ne[115]]
	ne[114] = "Gotham"
	ne[129] = "Enum"
	ne[112] = ne[113][ne[114]]
	ne[117] = "Enum"
	ne[113] = "Regular"
	ne[116] = ENV[ne[117]]
	ne[117] = "Font"
	ne[115] = ne[116][ne[117]]
	ne[121] = "Enum"
	ne[127] = "Enum"
	ne[116] = "SourceSans"
	ne[114] = ne[115][ne[116]]
	ne[119] = "Enum"
	ne[118] = ENV[ne[119]]
	ne[115] = "Regular"
	ne[119] = "Font"
	ne[117] = ne[118][ne[119]]
	ne[118] = "Nunito"
	ne[116] = ne[117][ne[118]]
	ne[117] = "Regular"
	ne[125] = "Enum"
	ne[120] = ENV[ne[121]]
	ne[121] = "Font"
	ne[119] = ne[120][ne[121]]
	ne[120] = "Oswald"
	ne[118] = ne[119][ne[120]]
	ne[122] = ENV[ne[123]]
	ne[119] = "Regular"
	ne[123] = "Font"
	ne[121] = ne[122][ne[123]]
	ne[122] = "Ubuntu"
	ne[120] = ne[121][ne[122]]
	ne[121] = "Regular"
	ne[124] = ENV[ne[125]]
	ne[125] = "Font"
	ne[123] = ne[124][ne[125]]
	ne[124] = "Roboto"
	ne[122] = ne[123][ne[124]]
	ne[123] = "Regular"
	ne[126] = ENV[ne[127]]
	ne[127] = "Font"
	ne[125] = ne[126][ne[127]]
	ne[126] = "Arcade"
	ne[124] = ne[125][ne[126]]
	ne[125] = "Regular"
	ne[128] = ENV[ne[129]]
	ne[129] = "Font"
	ne[127] = ne[128][ne[129]]
	ne[128] = "Code"
	ne[126] = ne[127][ne[128]]
	ne[127] = "Regular"
	ne[130] = ENV[ne[131]]
	ne[131] = "Font"
	ne[129] = ne[130][ne[131]]
	ne[130] = "GothamBold"
	ne[128] = ne[129][ne[130]]
	ne[129] = "Bold"
	ne[132] = ENV[ne[133]]
	ne[133] = "Font"
	ne[131] = ne[132][ne[133]]
	ne[132] = "GothamSemibold"
	ne[130] = ne[131][ne[132]]
	ne[131] = "Bold"
	ne[134] = ENV[ne[135]]
	ne[135] = "Font"
	ne[133] = ne[134][ne[135]]
	ne[134] = "SourceSansBold"
	ne[132] = ne[133][ne[134]]
	ne[133] = "Bold"
	ne[136] = ENV[ne[137]]
	ne[137] = "Font"
	ne[135] = ne[136][ne[137]]
	ne[136] = "FredokaOne"
	ne[134] = ne[135][ne[136]]
	ne[135] = "Display"
	ne[138] = ENV[ne[139]]
	ne[139] = "Font"
	ne[137] = ne[138][ne[139]]
	ne[138] = "RobotoCondensed"
	ne[136] = ne[137][ne[138]]
	ne[137] = "Display"
	ne[110] = {
		[ne[112]] = ne[113],
		[ne[114]] = ne[115],
		[ne[116]] = ne[117],
		[ne[118]] = ne[119],
		[ne[120]] = ne[121],
		[ne[122]] = ne[123],
		[ne[124]] = ne[125],
		[ne[126]] = ne[127],
		[ne[128]] = ne[129],
		[ne[130]] = ne[131],
		[ne[132]] = ne[133],
		[ne[134]] = ne[135],
		[ne[136]] = ne[137]
	}
	ne[128] = 105
	ne[114] = "ResolveFontPreset"
	ne[112] = O()
	ne[118] = "Size"
	ne[127] = "Color3"
	ne[129] = 220
	f[ne[112]] = ne[110]
	ne[117] = 1
	ne[122] = 0
	ne[113] = f[t]
	ne[138] = "UIListLayout"
	ne[132] = "Enum"
	ne[110] = closure(fn_10675444, {
		ne[111]
	})
	ne[162] = 0
	ne[134] = "Children"
	ne[124] = 16
	ne[121] = "UDim2"
	ne[113][ne[114]] = ne[110]
	ne[113] = f[t]
	ne[114] = "ApplyUIFont"
	ne[110] = closure(fn_4407748, {
		t,
		up1,
		he,
		ne[112]
	})
	ne[133] = 23
	ne[157] = "UDim2"
	ne[116] = "BackgroundTransparency"
	ne[113][ne[114]] = ne[110]
	ne[110] = up4
	ne[114] = "TextLabel"
	ne[120] = ENV[ne[121]]
	ne[121] = "new"
	ne[119] = ne[120][ne[121]]
	ne[121] = 1
	ne[123] = 0
	ne[120] = ne[119](ne[121], ne[122], ne[123], ne[124])
	ne[124] = "Enum"
	ne[119] = "Font"
	ne[123] = ENV[ne[124]]
	ne[124] = "Font"
	ne[122] = ne[123][ne[124]]
	ne[123] = "GothamBold"
	ne[124] = "TextColor3"
	ne[121] = ne[122][ne[123]]
	ne[122] = "Text"
	ne[123] = "UI Font"
	ne[126] = ENV[ne[127]]
	ne[127] = "fromRGB"
	ne[125] = ne[126][ne[127]]
	ne[127] = 150
	ne[126] = ne[125](ne[127], ne[128], ne[129])
	ne[128] = "TextXAlignment"
	ne[127] = 10
	ne[125] = "TextSize"
	ne[131] = ENV[ne[132]]
	ne[132] = "TextXAlignment"
	ne[130] = ne[131][ne[132]]
	ne[131] = "Center"
	ne[129] = ne[130][ne[131]]
	ne[130] = "ZIndex"
	ne[131] = 23
	ne[169] = "UDim"
	ne[115] = {
		[ne[116]] = ne[117],
		[ne[118]] = ne[120],
		[ne[119]] = ne[121],
		[ne[122]] = ne[123],
		[ne[124]] = ne[126],
		[ne[125]] = ne[127],
		[ne[128]] = ne[129],
		[ne[130]] = ne[131]
	}
	ne[113] = ne[110](ne[114], ne[115], ne[30])
	ne[119] = 0
	ne[114] = "ScrollingFrame"
	ne[110] = up4
	ne[127] = 0
	ne[177] = 2
	ne[117] = 1
	ne[120] = "Size"
	ne[116] = "BackgroundTransparency"
	ne[123] = "UDim2"
	ne[132] = "Enum"
	ne[122] = ENV[ne[123]]
	ne[118] = "BorderSizePixel"
	ne[124] = 0
	ne[128] = 0
	ne[123] = "new"
	ne[125] = 0
	ne[121] = ne[122][ne[123]]
	ne[123] = 1
	ne[126] = 90
	ne[122] = ne[121](ne[123], ne[124], ne[125], ne[126])
	ne[125] = "UDim2"
	ne[126] = 0
	ne[121] = "CanvasSize"
	ne[124] = ENV[ne[125]]
	ne[125] = "new"
	ne[123] = ne[124][ne[125]]
	ne[125] = 0
	ne[124] = ne[123](ne[125], ne[126], ne[127], ne[128])
	ne[131] = ENV[ne[132]]
	ne[125] = 0
	ne[128] = "ElasticBehavior"
	ne[126] = "ScrollBarImageTransparency"
	ne[123] = "ScrollBarThickness"
	ne[132] = "ElasticBehavior"
	ne[130] = ne[131][ne[132]]
	ne[131] = "WhenScrollable"
	ne[129] = ne[130][ne[131]]
	ne[132] = "ZIndex"
	ne[136] = up4
	ne[127] = 1
	ne[131] = true
	ne[143] = ENV[ne[144]]
	ne[144] = "SortOrder"
	ne[130] = "ScrollingEnabled"
	ne[142] = ne[143][ne[144]]
	ne[143] = "LayoutOrder"
	ne[141] = ne[142][ne[143]]
	ne[142] = "Padding"
	ne[144] = ENV[ne[145]]
	ne[145] = "new"
	ne[143] = ne[144][ne[145]]
	ne[145] = 0
	ne[144] = ne[143](ne[145], ne[146])
	ne[139] = {
		[ne[140]] = ne[141],
		[ne[142]] = ne[144]
	}
	ne[137] = ne[136](ne[138], ne[139])
	ne[141] = "PaddingLeft"
	ne[145] = 4
	ne[164] = "ZIndex"
	ne[136] = up4
	ne[139] = "UIPadding"
	ne[144] = "UDim"
	ne[143] = ENV[ne[144]]
	ne[144] = "new"
	ne[142] = ne[143][ne[144]]
	ne[144] = 0
	ne[143] = ne[142](ne[144], ne[145])
	ne[142] = "PaddingRight"
	ne[146] = "UDim"
	ne[145] = ENV[ne[146]]
	ne[146] = "new"
	ne[144] = ne[145][ne[146]]
	ne[146] = 0
	ne[145] = ne[144](ne[146], ne[147])
	ne[140] = {
		[ne[141]] = ne[143],
		[ne[142]] = ne[145]
	}
	ne[138] = {
		ne[136](ne[139], ne[140])
	}
	ne[135] = {
		ne[137],
		unpack(ne[138])
	}
	ne[115] = {
		[ne[116]] = ne[117],
		[ne[118]] = ne[119],
		[ne[120]] = ne[122],
		[ne[121]] = ne[124],
		[ne[123]] = ne[125],
		[ne[126]] = ne[127],
		[ne[128]] = ne[129],
		[ne[130]] = ne[131],
		[ne[132]] = ne[133],
		[ne[134]] = ne[135]
	}
	ne[163] = true
	ne[153] = 0
	ne[113] = ne[110](ne[114], ne[115], ne[30])
	ne[110] = O()
	f[ne[110]] = ne[113]
	ne[114] = f[t]
	ne[113] = closure(fn_15609190, {
		ne[110],
		up1,
		ne[111],
		up4,
		t,
		up5
	})
	ne[121] = "_opt_UITransparency"
	ne[115] = "BuildFontCards"
	ne[114][ne[115]] = ne[113]
	ne[114] = f[t]
	ne[130] = 0
	ne[115] = "BuildFontCards"
	ne[113] = ne[114][ne[115]]
	ne[114] = ne[113]()
	ne[123] = true
	ne[116] = "_opt_UITransparency"
	ne[115] = "task"
	ne[114] = ENV[ne[115]]
	ne[115] = "defer"
	ne[118] = .55
	ne[113] = ne[114][ne[115]]
	ne[129] = 0
	ne[117] = 0
	ne[122] = .05
	ne[120] = "Get"
	ne[115] = closure(fn_11295075, {
		up1,
		t
	})
	ne[114] = ne[113](ne[115])
	ne[114] = f[t]
	ne[115] = "MakeMiniSlider"
	ne[113] = ne[114][ne[115]]
	ne[115] = "UI Transparency"
	ne[119] = up1
	ne[120] = ne[119][ne[120]]
	ne[120] = ne[120](ne[119], ne[121], ne[122])
	ne[119] = .01
	ne[121] = closure(fn_8305683, {
		he,
		up1
	})
	ne[122] = nil
	ne[114] = ne[113](ne[30], ne[115], ne[116], ne[117], ne[118], ne[120], ne[119], ne[121], ne[122], ne[123])
	ne[122] = 60
	ne[115] = "MouseButton1Click"
	ne[137] = "CornerRadius"
	ne[114] = f[ne[16]]
	ne[113] = ne[114][ne[115]]
	ne[117] = "BackgroundColor3"
	ne[115] = closure(fn_6210320, {
		ne[16],
		up14,
		ne[25],
		ne[24],
		ne[39],
		ne[38],
		t,
		ne[27]
	})
	ne[120] = "Color3"
	ne[114] = "Connect"
	ne[114] = ne[113][ne[114]]
	ne[114] = ne[114](ne[113], ne[115])
	ne[115] = "Frame"
	ne[121] = 60
	ne[113] = up4
	ne[126] = "UDim2"
	ne[141] = 0
	ne[128] = .219451368
	ne[119] = ENV[ne[120]]
	ne[120] = "fromRGB"
	ne[118] = ne[119][ne[120]]
	ne[123] = "Position"
	ne[127] = 0
	ne[120] = 60
	ne[119] = ne[118](ne[120], ne[121], ne[122])
	ne[120] = 1
	ne[131] = 60
	ne[121] = "BorderSizePixel"
	ne[118] = "BackgroundTransparency"
	ne[122] = 0
	ne[125] = ENV[ne[126]]
	ne[126] = "new"
	ne[124] = ne[125][ne[126]]
	ne[140] = "UDim"
	ne[126] = .0160791595
	ne[125] = ne[124](ne[126], ne[127], ne[128], ne[129])
	ne[128] = "UDim2"
	ne[129] = 60
	ne[127] = ENV[ne[128]]
	ne[128] = "new"
	ne[126] = ne[127][ne[128]]
	ne[128] = 0
	ne[176] = "UDim"
	ne[127] = ne[126](ne[128], ne[129], ne[130], ne[131])
	ne[126] = "Visible"
	ne[130] = true
	ne[129] = "Active"
	ne[128] = not x
	ne[133] = up4
	ne[131] = "Children"
	ne[135] = "UICorner"
	ne[124] = "Size"
	ne[139] = ENV[ne[140]]
	ne[140] = "new"
	ne[138] = ne[139][ne[140]]
	ne[140] = 1
	ne[139] = ne[138](ne[140], ne[141])
	ne[136] = {
		[ne[137]] = ne[139]
	}
	ne[134] = {
		ne[133](ne[135], ne[136])
	}
	ne[132] = {
		unpack(ne[134])
	}
	ne[134] = "UICorner"
	ne[116] = {
		[ne[117]] = ne[119],
		[ne[118]] = ne[120],
		[ne[121]] = ne[122],
		[ne[123]] = ne[125],
		[ne[124]] = ne[127],
		[ne[126]] = ne[128],
		[ne[129]] = ne[130],
		[ne[131]] = ne[132]
	}
	ne[130] = 0
	ne[127] = "UDim2"
	ne[117] = f[k]
	ne[136] = "CornerRadius"
	ne[114] = ne[113](ne[115], ne[116], ne[117])
	ne[120] = "BackgroundTransparency"
	ne[128] = 0
	ne[116] = "ImageButton"
	ne[113] = O()
	f[ne[113]] = ne[114]
	ne[124] = "Size"
	ne[122] = "BorderSizePixel"
	ne[118] = "Name"
	ne[121] = 1
	ne[123] = 0
	ne[119] = "ToggleLogo"
	ne[129] = 1
	ne[114] = up4
	ne[147] = "CornerRadius"
	ne[126] = ENV[ne[127]]
	ne[127] = "new"
	ne[139] = "UDim"
	ne[125] = ne[126][ne[127]]
	ne[127] = 1
	ne[126] = ne[125](ne[127], ne[128], ne[129], ne[130])
	ne[130] = "Children"
	ne[125] = "Image"
	ne[140] = 0
	ne[132] = up4
	ne[138] = ENV[ne[139]]
	ne[139] = "new"
	ne[137] = ne[138][ne[139]]
	ne[139] = 1
	ne[127] = "rbxassetid://87383580130479"
	ne[138] = ne[137](ne[139], ne[140])
	ne[145] = "UICorner"
	ne[129] = true
	ne[139] = 0
	ne[141] = "Children"
	ne[135] = {
		[ne[136]] = ne[138]
	}
	ne[128] = "Active"
	ne[133] = {
		ne[132](ne[134], ne[135])
	}
	ne[131] = {
		unpack(ne[133])
	}
	ne[117] = {
		[ne[118]] = ne[119],
		[ne[120]] = ne[121],
		[ne[122]] = ne[123],
		[ne[124]] = ne[126],
		[ne[125]] = ne[127],
		[ne[128]] = ne[129],
		[ne[130]] = ne[131]
	}
	ne[120] = "start"
	ne[118] = f[ne[113]]
	ne[115] = ne[114](ne[116], ne[117], ne[118])
	ne[114] = O()
	ne[121] = nil
	ne[125] = nil
	ne[117] = false
	f[ne[114]] = ne[115]
	ne[122] = "origin"
	ne[118] = "moved"
	ne[119] = false
	ne[129] = 6
	ne[124] = "input"
	ne[123] = nil
	ne[116] = "on"
	ne[115] = {
		[ne[116]] = ne[117],
		[ne[118]] = ne[119],
		[ne[120]] = ne[121],
		[ne[122]] = ne[123],
		[ne[124]] = ne[125]
	}
	ne[152] = "BorderSizePixel"
	ne[124] = "BlurOverlay"
	ne[116] = O()
	ne[119] = c
	f[ne[116]] = ne[115]
	ne[118] = "PinToggleToOffset"
	ne[115] = closure(fn_4276762, {
		up13,
		ne[113],
		k,
		Xe
	})
	ne[121] = 12
	ne[117] = f[t]
	ne[119] = 5
	ne[161] = 0
	ne[117][ne[118]] = ne[115]
	ne[117] = c
	ne[120] = f[me]
	ne[128] = "Color3"
	ne[118] = ne[120] and ne[121]
	ne[115] = ne[118] or ne[119]
	ne[117] = O()
	ne[137] = 0
	f[ne[117]] = ne[115]
	ne[115] = closure(fn_9644370, {
		ne[116],
		t,
		ne[113]
	})
	ne[120] = "InputBegan"
	ne[119] = f[ne[113]]
	ne[118] = ne[119][ne[120]]
	ne[119] = "Connect"
	ne[120] = "InputBegan"
	ne[119] = ne[118][ne[119]]
	ne[119] = ne[119](ne[118], ne[115])
	ne[119] = f[ne[114]]
	ne[118] = ne[119][ne[120]]
	ne[120] = "InputChanged"
	ne[119] = "Connect"
	ne[119] = ne[118][ne[119]]
	ne[119] = ne[119](ne[118], ne[115])
	ne[115] = nil
	ne[119] = up9
	ne[118] = ne[119][ne[120]]
	ne[120] = closure(fn_7681772, {
		ne[116],
		Xe,
		ne[117],
		ne[113]
	})
	ne[130] = 12
	ne[117] = h(ne[117])
	ne[119] = "Connect"
	ne[178] = 6
	ne[125] = "BackgroundColor3"
	ne[117] = O()
	ne[138] = 0
	ne[119] = ne[118][ne[119]]
	ne[119] = ne[119](ne[118], ne[120])
	ne[134] = "UDim2"
	ne[120] = "InputEnded"
	ne[115] = false
	ne[119] = up9
	ne[121] = "MouseButton1Click"
	ne[118] = ne[119][ne[120]]
	ne[136] = 1
	ne[120] = closure(fn_13187044, {
		ne[116]
	})
	ne[119] = "Connect"
	ne[119] = ne[118][ne[119]]
	ne[119] = ne[119](ne[118], ne[120])
	f[ne[117]] = ne[115]
	ne[118] = closure(fn_2176483, {
		ne[117],
		he,
		ne[3],
		ne[4],
		ne[13],
		ne[14],
		ne[1],
		ne[15],
		ne[16],
		qe,
		Ce
	})
	ne[115] = O()
	ne[119] = closure(fn_15057397, {
		ne[117],
		ne[25],
		ne[24],
		ne[33],
		ne[32],
		ne[39],
		ne[38],
		ne[15],
		ne[16],
		ne[13],
		ne[14],
		ne[1],
		ne[3],
		ne[4],
		he
	})
	ne[123] = "Name"
	f[ne[115]] = ne[118]
	ne[118] = O()
	f[ne[118]] = ne[119]
	ne[120] = f[ne[13]]
	ne[140] = 4000
	ne[119] = ne[120][ne[121]]
	ne[135] = 0
	ne[121] = closure(fn_12686058, {
		ne[117],
		ne[115],
		ne[118]
	})
	ne[131] = "Size"
	ne[120] = "Connect"
	ne[120] = ne[119][ne[120]]
	ne[120] = ne[120](ne[119], ne[121])
	ne[119] = up4
	ne[183] = "Enum"
	ne[127] = ENV[ne[128]]
	ne[128] = "fromRGB"
	ne[121] = "Frame"
	ne[126] = ne[127][ne[128]]
	ne[128] = 8
	ne[127] = ne[126](ne[128], ne[129], ne[130])
	ne[126] = "BackgroundTransparency"
	ne[128] = .35
	ne[130] = 0
	ne[129] = "BorderSizePixel"
	ne[133] = ENV[ne[134]]
	ne[134] = "new"
	ne[132] = ne[133][ne[134]]
	ne[134] = 1
	ne[133] = ne[132](ne[134], ne[135], ne[136], ne[137])
	ne[132] = "Position"
	ne[136] = "UDim2"
	ne[137] = 0
	ne[135] = ENV[ne[136]]
	ne[136] = "new"
	ne[134] = ne[135][ne[136]]
	ne[136] = 0
	ne[135] = ne[134](ne[136], ne[137], ne[138], ne[139])
	ne[134] = "Visible"
	ne[138] = true
	ne[139] = "ZIndex"
	ne[137] = "Active"
	ne[136] = false
	ne[143] = up4
	ne[149] = ENV[ne[150]]
	ne[150] = "new"
	ne[148] = ne[149][ne[150]]
	ne[150] = 0
	ne[149] = ne[148](ne[150], ne[151])
	ne[146] = {
		[ne[147]] = ne[149]
	}
	ne[148] = "Name"
	ne[150] = "BackgroundTransparency"
	ne[144] = ne[143](ne[145], ne[146])
	ne[151] = 1
	ne[149] = "ClickBlocker"
	ne[143] = up4
	ne[156] = ENV[ne[157]]
	ne[146] = "TextButton"
	ne[157] = "new"
	ne[155] = ne[156][ne[157]]
	ne[157] = 1
	ne[156] = ne[155](ne[157], ne[158], ne[159], ne[160])
	ne[155] = "Position"
	ne[159] = "UDim2"
	ne[158] = ENV[ne[159]]
	ne[159] = "new"
	ne[157] = ne[158][ne[159]]
	ne[160] = 0
	ne[159] = 0
	ne[158] = ne[157](ne[159], ne[160], ne[161], ne[162])
	ne[159] = ""
	ne[160] = "AutoButtonColor"
	ne[157] = "Text"
	ne[162] = "Active"
	ne[161] = false
	ne[147] = {
		[ne[148]] = ne[149],
		[ne[150]] = ne[151],
		[ne[152]] = ne[153],
		[ne[154]] = ne[156],
		[ne[155]] = ne[158],
		[ne[157]] = ne[159],
		[ne[160]] = ne[161],
		[ne[162]] = ne[163],
		[ne[164]] = ne[165]
	}
	ne[145] = {
		ne[143](ne[146], ne[147])
	}
	ne[142] = {
		ne[144],
		unpack(ne[145])
	}
	ne[122] = {
		[ne[123]] = ne[124],
		[ne[125]] = ne[127],
		[ne[126]] = ne[128],
		[ne[129]] = ne[130],
		[ne[131]] = ne[133],
		[ne[132]] = ne[135],
		[ne[134]] = ne[136],
		[ne[137]] = ne[138],
		[ne[139]] = ne[140],
		[ne[141]] = ne[142]
	}
	ne[123] = f[he]
	ne[120] = ne[119](ne[121], ne[122], ne[123])
	ne[119] = O()
	ne[141] = 0
	f[ne[119]] = ne[120]
	ne[135] = "Vector2"
	ne[122] = "Frame"
	ne[146] = "Children"
	ne[131] = 26
	ne[142] = 112
	ne[136] = .5
	ne[125] = "ComfirmDialog"
	ne[120] = up4
	ne[155] = "UDim"
	ne[129] = "Color3"
	ne[126] = "BackgroundColor3"
	ne[124] = "Name"
	ne[137] = "UDim2"
	ne[128] = ENV[ne[129]]
	ne[129] = "fromRGB"
	ne[127] = ne[128][ne[129]]
	ne[130] = 14
	ne[150] = "UICorner"
	ne[129] = 18
	ne[128] = ne[127](ne[129], ne[130], ne[131])
	ne[127] = "BackgroundTransparency"
	ne[134] = ENV[ne[135]]
	ne[129] = .02
	ne[135] = "new"
	ne[132] = "AnchorPoint"
	ne[130] = "BorderSizePixel"
	ne[131] = 0
	ne[133] = ne[134][ne[135]]
	ne[145] = true
	ne[143] = 4001
	ne[135] = .5
	ne[139] = .5
	ne[134] = ne[133](ne[135], ne[136])
	ne[133] = "Position"
	ne[136] = ENV[ne[137]]
	ne[137] = "new"
	ne[135] = ne[136][ne[137]]
	ne[138] = 0
	ne[137] = .5
	ne[152] = "CornerRadius"
	ne[140] = 0
	ne[136] = ne[135](ne[137], ne[138], ne[139], ne[140])
	ne[135] = "Size"
	ne[139] = "UDim2"
	ne[140] = 240
	ne[138] = ENV[ne[139]]
	ne[139] = "new"
	ne[144] = "ClipsDescendants"
	ne[137] = ne[138][ne[139]]
	ne[139] = 0
	ne[138] = ne[137](ne[139], ne[140], ne[141], ne[142])
	ne[148] = up4
	ne[154] = ENV[ne[155]]
	ne[140] = "Active"
	ne[156] = 10
	ne[155] = "new"
	ne[141] = true
	ne[139] = false
	ne[142] = "ZIndex"
	ne[153] = ne[154][ne[155]]
	ne[155] = 0
	ne[154] = ne[153](ne[155], ne[156])
	ne[137] = "Visible"
	ne[151] = {
		[ne[152]] = ne[154]
	}
	ne[149] = {
		ne[148](ne[150], ne[151])
	}
	ne[147] = {
		unpack(ne[149])
	}
	ne[123] = {
		[ne[124]] = ne[125],
		[ne[126]] = ne[128],
		[ne[127]] = ne[129],
		[ne[130]] = ne[131],
		[ne[132]] = ne[134],
		[ne[133]] = ne[136],
		[ne[135]] = ne[138],
		[ne[137]] = ne[139],
		[ne[140]] = ne[141],
		[ne[142]] = ne[143],
		[ne[144]] = ne[145],
		[ne[146]] = ne[147]
	}
	ne[141] = 245
	ne[126] = "DialogTitle"
	ne[124] = f[ne[119]]
	ne[127] = "BackgroundTransparency"
	ne[121] = ne[120](ne[122], ne[123], ne[124])
	ne[143] = "Enum"
	ne[134] = "UDim2"
	ne[137] = 16
	ne[125] = "Name"
	ne[133] = 0
	ne[161] = "UDim"
	ne[123] = "TextLabel"
	ne[139] = 18
	ne[128] = 1
	ne[120] = O()
	ne[129] = "AnchorPoint"
	ne[132] = "Vector2"
	f[ne[120]] = ne[121]
	ne[121] = up4
	ne[131] = ENV[ne[132]]
	ne[132] = "new"
	ne[136] = 0
	ne[138] = 0
	ne[130] = ne[131][ne[132]]
	ne[132] = .5
	ne[131] = ne[130](ne[132], ne[133])
	ne[130] = "Position"
	ne[133] = ENV[ne[134]]
	ne[134] = "new"
	ne[132] = ne[133][ne[134]]
	ne[135] = 0
	ne[134] = .5
	ne[133] = ne[132](ne[134], ne[135], ne[136], ne[137])
	ne[132] = "Size"
	ne[136] = "UDim2"
	ne[135] = ENV[ne[136]]
	ne[140] = "Color3"
	ne[136] = "new"
	ne[142] = 255
	ne[134] = ne[135][ne[136]]
	ne[137] = - 24
	ne[147] = "Enum"
	ne[136] = 1
	ne[135] = ne[134](ne[136], ne[137], ne[138], ne[139])
	ne[134] = "Text"
	ne[137] = "TextColor3"
	ne[136] = "Are you sure?"
	ne[139] = ENV[ne[140]]
	ne[140] = "fromRGB"
	ne[138] = ne[139][ne[140]]
	ne[140] = 250
	ne[139] = ne[138](ne[140], ne[141], ne[142])
	ne[138] = "Font"
	ne[142] = ENV[ne[143]]
	ne[143] = "Font"
	ne[141] = ne[142][ne[143]]
	ne[142] = "GothamBold"
	ne[140] = ne[141][ne[142]]
	ne[143] = "TextXAlignment"
	ne[182] = 6
	ne[141] = "TextSize"
	ne[146] = ENV[ne[147]]
	ne[142] = 13
	ne[147] = "TextXAlignment"
	ne[145] = ne[146][ne[147]]
	ne[146] = "Center"
	ne[144] = ne[145][ne[146]]
	ne[146] = 4002
	ne[158] = "UDim"
	ne[145] = "ZIndex"
	ne[124] = {
		[ne[125]] = ne[126],
		[ne[127]] = ne[128],
		[ne[129]] = ne[131],
		[ne[130]] = ne[133],
		[ne[132]] = ne[135],
		[ne[134]] = ne[136],
		[ne[137]] = ne[139],
		[ne[138]] = ne[140],
		[ne[141]] = ne[142],
		[ne[143]] = ne[144],
		[ne[145]] = ne[146]
	}
	ne[125] = f[ne[120]]
	ne[129] = "AnchorPoint"
	ne[122] = ne[121](ne[123], ne[124], ne[125])
	ne[121] = up4
	ne[134] = "UDim2"
	ne[123] = "TextLabel"
	ne[138] = 0
	ne[141] = 150
	ne[133] = 0
	ne[126] = "DialogSubtitle"
	ne[128] = 1
	ne[132] = "Vector2"
	ne[131] = ENV[ne[132]]
	ne[132] = "new"
	ne[127] = "BackgroundTransparency"
	ne[125] = "Name"
	ne[130] = ne[131][ne[132]]
	ne[132] = .5
	ne[131] = ne[130](ne[132], ne[133])
	ne[136] = 0
	ne[137] = 36
	ne[130] = "Position"
	ne[139] = 16
	ne[135] = 0
	ne[147] = "Enum"
	ne[133] = ENV[ne[134]]
	ne[134] = "new"
	ne[132] = ne[133][ne[134]]
	ne[140] = "Color3"
	ne[134] = .5
	ne[133] = ne[132](ne[134], ne[135], ne[136], ne[137])
	ne[132] = "Size"
	ne[136] = "UDim2"
	ne[135] = ENV[ne[136]]
	ne[136] = "new"
	ne[134] = ne[135][ne[136]]
	ne[143] = "Enum"
	ne[137] = - 24
	ne[142] = 190
	ne[136] = 1
	ne[135] = ne[134](ne[136], ne[137], ne[138], ne[139])
	ne[136] = "Close and destroy interface?"
	ne[139] = ENV[ne[140]]
	ne[134] = "Text"
	ne[140] = "fromRGB"
	ne[138] = ne[139][ne[140]]
	ne[159] = 6
	ne[137] = "TextColor3"
	ne[140] = 165
	ne[139] = ne[138](ne[140], ne[141], ne[142])
	ne[138] = "Font"
	ne[142] = ENV[ne[143]]
	ne[143] = "Font"
	ne[141] = ne[142][ne[143]]
	ne[142] = "Gotham"
	ne[143] = "TextXAlignment"
	ne[140] = ne[141][ne[142]]
	ne[142] = 10
	ne[146] = ENV[ne[147]]
	ne[147] = "TextXAlignment"
	ne[141] = "TextSize"
	ne[145] = ne[146][ne[147]]
	ne[146] = "Center"
	ne[144] = ne[145][ne[146]]
	ne[146] = 4002
	ne[145] = "ZIndex"
	ne[124] = {
		[ne[125]] = ne[126],
		[ne[127]] = ne[128],
		[ne[129]] = ne[131],
		[ne[130]] = ne[133],
		[ne[132]] = ne[135],
		[ne[134]] = ne[136],
		[ne[137]] = ne[139],
		[ne[138]] = ne[140],
		[ne[141]] = ne[142],
		[ne[143]] = ne[144],
		[ne[145]] = ne[146]
	}
	ne[125] = f[ne[120]]
	ne[122] = ne[121](ne[123], ne[124], ne[125])
	ne[130] = 75
	ne[125] = "BackgroundColor3"
	ne[123] = "TextButton"
	ne[121] = up4
	ne[128] = "Color3"
	ne[127] = ENV[ne[128]]
	ne[132] = "Color3"
	ne[128] = "fromRGB"
	ne[126] = ne[127][ne[128]]
	ne[153] = "UICorner"
	ne[133] = 255
	ne[128] = 225
	ne[135] = 1
	ne[129] = 45
	ne[127] = ne[126](ne[128], ne[129], ne[130])
	ne[129] = "TextColor3"
	ne[126] = "BackgroundTransparency"
	ne[131] = ENV[ne[132]]
	ne[132] = "fromRGB"
	ne[136] = "UDim2"
	ne[155] = "CornerRadius"
	ne[134] = 255
	ne[128] = .05
	ne[130] = ne[131][ne[132]]
	ne[132] = 255
	ne[131] = ne[130](ne[132], ne[133], ne[134])
	ne[141] = 28
	ne[134] = "Vector2"
	ne[133] = ENV[ne[134]]
	ne[130] = "AnchorPoint"
	ne[143] = "Enum"
	ne[134] = "new"
	ne[137] = 16
	ne[139] = - 14
	ne[138] = 1
	ne[132] = ne[133][ne[134]]
	ne[134] = 0
	ne[149] = "Children"
	ne[133] = ne[132](ne[134], ne[135])
	ne[135] = ENV[ne[136]]
	ne[140] = 0
	ne[132] = "Position"
	ne[147] = "ZIndex"
	ne[136] = "new"
	ne[134] = ne[135][ne[136]]
	ne[136] = 0
	ne[145] = "Active"
	ne[135] = ne[134](ne[136], ne[137], ne[138], ne[139])
	ne[164] = "UICorner"
	ne[138] = "UDim2"
	ne[139] = 96
	ne[134] = "Size"
	ne[137] = ENV[ne[138]]
	ne[138] = "new"
	ne[136] = ne[137][ne[138]]
	ne[138] = 0
	ne[148] = 4002
	ne[137] = ne[136](ne[138], ne[139], ne[140], ne[141])
	ne[139] = "Font"
	ne[138] = "Yes"
	ne[136] = "Text"
	ne[142] = ENV[ne[143]]
	ne[143] = "Font"
	ne[141] = ne[142][ne[143]]
	ne[142] = "GothamBold"
	ne[140] = ne[141][ne[142]]
	ne[151] = up4
	ne[144] = false
	ne[143] = "AutoButtonColor"
	ne[141] = "TextSize"
	ne[142] = 11
	ne[146] = true
	ne[157] = ENV[ne[158]]
	ne[158] = "new"
	ne[156] = ne[157][ne[158]]
	ne[158] = 0
	ne[157] = ne[156](ne[158], ne[159])
	ne[154] = {
		[ne[155]] = ne[157]
	}
	ne[152] = {
		ne[151](ne[153], ne[154])
	}
	ne[150] = {
		unpack(ne[152])
	}
	ne[124] = {
		[ne[125]] = ne[127],
		[ne[126]] = ne[128],
		[ne[129]] = ne[131],
		[ne[130]] = ne[133],
		[ne[132]] = ne[135],
		[ne[134]] = ne[137],
		[ne[136]] = ne[138],
		[ne[139]] = ne[140],
		[ne[141]] = ne[142],
		[ne[143]] = ne[144],
		[ne[145]] = ne[146],
		[ne[147]] = ne[148],
		[ne[149]] = ne[150]
	}
	ne[139] = "UDim2"
	ne[125] = f[ne[120]]
	ne[131] = "Color3"
	ne[135] = "Color3"
	ne[136] = 190
	ne[122] = ne[121](ne[123], ne[124], ne[125])
	ne[127] = "CancelButton"
	ne[121] = up4
	ne[141] = 1
	ne[130] = ENV[ne[131]]
	ne[131] = "fromRGB"
	ne[126] = "Name"
	ne[124] = "TextButton"
	ne[129] = ne[130][ne[131]]
	ne[146] = "Enum"
	ne[156] = "UICorner"
	ne[131] = 28
	ne[142] = - 14
	ne[132] = 22
	ne[133] = 38
	ne[128] = "BackgroundColor3"
	ne[130] = ne[129](ne[131], ne[132], ne[133])
	ne[148] = "Active"
	ne[134] = ENV[ne[135]]
	ne[143] = 0
	ne[129] = "BackgroundTransparency"
	ne[131] = .05
	ne[132] = "TextColor3"
	ne[135] = "fromRGB"
	ne[133] = ne[134][ne[135]]
	ne[138] = 1
	ne[135] = 200
	ne[137] = 225
	ne[134] = ne[133](ne[135], ne[136], ne[137])
	ne[137] = "Vector2"
	ne[133] = "AnchorPoint"
	ne[136] = ENV[ne[137]]
	ne[137] = "new"
	ne[135] = ne[136][ne[137]]
	ne[137] = 1
	ne[136] = ne[135](ne[137], ne[138])
	ne[140] = - 16
	ne[151] = 4002
	ne[147] = false
	ne[138] = ENV[ne[139]]
	ne[139] = "new"
	ne[137] = ne[138][ne[139]]
	ne[135] = "Position"
	ne[139] = 1
	ne[138] = ne[137](ne[139], ne[140], ne[141], ne[142])
	ne[149] = true
	ne[141] = "UDim2"
	ne[142] = 96
	ne[137] = "Size"
	ne[140] = ENV[ne[141]]
	ne[144] = 28
	ne[170] = 0
	ne[141] = "new"
	ne[139] = ne[140][ne[141]]
	ne[141] = 0
	ne[140] = ne[139](ne[141], ne[142], ne[143], ne[144])
	ne[141] = "No"
	ne[145] = ENV[ne[146]]
	ne[146] = "Font"
	ne[139] = "Text"
	ne[142] = "Font"
	ne[144] = ne[145][ne[146]]
	ne[146] = "AutoButtonColor"
	ne[150] = "ZIndex"
	ne[145] = "GothamBold"
	ne[143] = ne[144][ne[145]]
	ne[145] = 11
	ne[162] = 6
	ne[154] = up4
	ne[152] = "Children"
	ne[144] = "TextSize"
	ne[160] = ENV[ne[161]]
	ne[158] = "CornerRadius"
	ne[161] = "new"
	ne[159] = ne[160][ne[161]]
	ne[161] = 0
	ne[160] = ne[159](ne[161], ne[162])
	ne[157] = {
		[ne[158]] = ne[160]
	}
	ne[155] = {
		ne[154](ne[156], ne[157])
	}
	ne[153] = {
		unpack(ne[155])
	}
	ne[125] = {
		[ne[126]] = ne[127],
		[ne[128]] = ne[130],
		[ne[129]] = ne[131],
		[ne[132]] = ne[134],
		[ne[133]] = ne[136],
		[ne[135]] = ne[138],
		[ne[137]] = ne[140],
		[ne[139]] = ne[141],
		[ne[142]] = ne[143],
		[ne[144]] = ne[145],
		[ne[146]] = ne[147],
		[ne[148]] = ne[149],
		[ne[150]] = ne[151],
		[ne[152]] = ne[153]
	}
	ne[132] = "MakeDraggable"
	ne[126] = f[ne[120]]
	ne[159] = 7
	ne[175] = "Enum"
	ne[123] = ne[121](ne[124], ne[125], ne[126])
	ne[124] = O()
	ne[121] = false
	f[ne[124]] = ne[121]
	ne[125] = f[ne[14]]
	ne[126] = "MouseButton1Click"
	ne[121] = ne[125][ne[126]]
	ne[127] = O()
	ne[133] = 1
	ne[136] = "Size"
	ne[140] = 0
	ne[126] = closure(fn_15905598, {
		ne[117],
		ne[115],
		ne[25],
		ne[24],
		ne[33],
		ne[32],
		ne[39],
		ne[38],
		ne[119],
		ne[120]
	})
	ne[125] = "Connect"
	ne[146] = 0
	ne[145] = 8
	ne[153] = "CornerRadius"
	ne[125] = ne[121][ne[125]]
	ne[125] = ne[125](ne[121], ne[126])
	ne[125] = "MouseButton1Click"
	ne[121] = ne[122][ne[125]]
	ne[125] = "Connect"
	ne[126] = closure(fn_269883, {
		ne[119],
		ne[120],
		R
	})
	ne[125] = ne[121][ne[125]]
	ne[139] = "UDim2"
	ne[149] = 22
	ne[130] = "Activated"
	ne[125] = ne[125](ne[121], ne[126])
	ne[125] = "MouseButton1Click"
	ne[126] = closure(fn_14664067, {
		ne[119],
		ne[120],
		ne[124]
	})
	ne[121] = ne[123][ne[125]]
	ne[125] = "Connect"
	ne[125] = ne[121][ne[125]]
	ne[125] = ne[125](ne[121], ne[126])
	ne[125] = up9
	ne[126] = "InputBegan"
	ne[121] = ne[125][ne[126]]
	ne[134] = "BorderSizePixel"
	ne[126] = closure(fn_86680, {
		ne[8],
		ne[7],
		up1,
		ne[9],
		up9,
		ne[11]
	})
	ne[135] = 0
	ne[125] = "Connect"
	ne[125] = ne[121][ne[125]]
	ne[125] = ne[125](ne[121], ne[126])
	ne[125] = O()
	ne[121] = true
	f[ne[125]] = ne[121]
	ne[121] = closure(fn_5296204, {
		ne[125],
		he,
		ne[113],
		ne[114],
		up1,
		qe,
		Ce
	})
	ne[126] = 0
	f[ne[11]] = ne[121]
	ne[142] = 40
	f[ne[127]] = ne[126]
	ne[129] = f[ne[114]]
	ne[128] = ne[129][ne[130]]
	ne[126] = closure(fn_13484127, {
		ne[116],
		ne[127],
		ne[11]
	})
	ne[141] = 0
	ne[144] = 36
	ne[129] = "Connect"
	ne[157] = 6
	ne[129] = ne[128][ne[129]]
	ne[129] = ne[129](ne[128], ne[126])
	ne[129] = "MakeDraggable"
	ne[128] = f[t]
	ne[131] = up13
	ne[130] = ne[131][ne[132]]
	ne[128][ne[129]] = ne[130]
	ne[132] = "BackgroundTransparency"
	ne[130] = "MakeDraggable"
	ne[129] = up13
	ne[128] = ne[129][ne[130]]
	ne[130] = f[ne[1]]
	ne[131] = f[he]
	ne[129] = ne[128](ne[130], ne[131])
	ne[130] = "Frame"
	ne[128] = up4
	ne[138] = ENV[ne[139]]
	ne[139] = "new"
	ne[137] = ne[138][ne[139]]
	ne[139] = 1
	ne[138] = ne[137](ne[139], ne[140], ne[141], ne[142])
	ne[141] = "UDim2"
	ne[143] = 0
	ne[137] = "Position"
	ne[140] = ENV[ne[141]]
	ne[141] = "new"
	ne[139] = ne[140][ne[141]]
	ne[141] = 0
	ne[142] = 0
	ne[140] = ne[139](ne[141], ne[142], ne[143], ne[144])
	ne[139] = "ClipsDescendants"
	ne[141] = false
	ne[131] = {
		[ne[132]] = ne[133],
		[ne[134]] = ne[135],
		[ne[136]] = ne[138],
		[ne[137]] = ne[140],
		[ne[139]] = ne[141]
	}
	ne[135] = "BackgroundColor3"
	ne[132] = f[he]
	ne[129] = ne[128](ne[130], ne[131], ne[132])
	ne[140] = 34
	ne[133] = "Name"
	ne[128] = up4
	ne[134] = "SearchBarFrame"
	ne[138] = "Color3"
	ne[137] = ENV[ne[138]]
	ne[138] = "fromRGB"
	ne[136] = ne[137][ne[138]]
	ne[144] = "UDim2"
	ne[138] = 22
	ne[131] = "Frame"
	ne[148] = 0
	ne[141] = "Position"
	ne[139] = 17
	ne[137] = ne[136](ne[138], ne[139], ne[140])
	ne[139] = "BorderSizePixel"
	ne[138] = .4
	ne[143] = ENV[ne[144]]
	ne[140] = 0
	ne[147] = 1
	ne[151] = "UICorner"
	ne[136] = "BackgroundTransparency"
	ne[144] = "new"
	ne[142] = ne[143][ne[144]]
	ne[156] = "UDim"
	ne[144] = 0
	ne[143] = ne[142](ne[144], ne[145], ne[146], ne[147])
	ne[147] = 126
	ne[142] = "Size"
	ne[146] = "UDim2"
	ne[145] = ENV[ne[146]]
	ne[146] = "new"
	ne[144] = ne[145][ne[146]]
	ne[146] = 0
	ne[145] = ne[144](ne[146], ne[147], ne[148], ne[149])
	ne[147] = "Children"
	ne[144] = "ZIndex"
	ne[146] = 6
	ne[149] = up4
	ne[155] = ENV[ne[156]]
	ne[156] = "new"
	ne[154] = ne[155][ne[156]]
	ne[156] = 0
	ne[155] = ne[154](ne[156], ne[157])
	ne[152] = {
		[ne[153]] = ne[155]
	}
	ne[150] = {
		ne[149](ne[151], ne[152])
	}
	ne[148] = {
		unpack(ne[150])
	}
	ne[132] = {
		[ne[133]] = ne[134],
		[ne[135]] = ne[137],
		[ne[136]] = ne[138],
		[ne[139]] = ne[140],
		[ne[141]] = ne[143],
		[ne[142]] = ne[145],
		[ne[144]] = ne[146],
		[ne[147]] = ne[148]
	}
	ne[136] = "Position"
	ne[130] = ne[128](ne[131], ne[132], ne[129])
	ne[158] = "Enum"
	ne[141] = .5
	ne[132] = "ImageLabel"
	ne[134] = "BackgroundTransparency"
	ne[146] = 324
	ne[139] = "UDim2"
	ne[135] = 1
	f[z] = ne[130]
	ne[128] = up4
	ne[138] = ENV[ne[139]]
	ne[143] = 0
	ne[149] = "Color3"
	ne[142] = - 6
	ne[139] = "new"
	ne[137] = ne[138][ne[139]]
	ne[139] = 0
	ne[144] = 12
	ne[140] = 6
	ne[138] = ne[137](ne[139], ne[140], ne[141], ne[142])
	ne[137] = "Size"
	ne[145] = "Vector2"
	ne[141] = "UDim2"
	ne[140] = ENV[ne[141]]
	ne[141] = "new"
	ne[142] = 12
	ne[139] = ne[140][ne[141]]
	ne[173] = "UDim"
	ne[148] = 36
	ne[141] = 0
	ne[153] = "Color3"
	ne[140] = ne[139](ne[141], ne[142], ne[143], ne[144])
	ne[160] = "Children"
	ne[141] = "rbxassetid://3926305904"
	ne[139] = "Image"
	ne[150] = 140
	ne[147] = "Vector2"
	ne[144] = ENV[ne[145]]
	ne[145] = "new"
	ne[151] = 230
	ne[142] = "ImageRectOffset"
	ne[143] = ne[144][ne[145]]
	ne[145] = 964
	ne[144] = ne[143](ne[145], ne[146])
	ne[143] = "ImageRectSize"
	ne[146] = ENV[ne[147]]
	ne[147] = "new"
	ne[145] = ne[146][ne[147]]
	ne[147] = 36
	ne[146] = ne[145](ne[147], ne[148])
	ne[148] = ENV[ne[149]]
	ne[145] = "ImageColor3"
	ne[149] = "fromRGB"
	ne[147] = ne[148][ne[149]]
	ne[149] = 175
	ne[148] = ne[147](ne[149], ne[150], ne[151])
	ne[149] = 7
	ne[147] = "ZIndex"
	ne[133] = {
		[ne[134]] = ne[135],
		[ne[136]] = ne[138],
		[ne[137]] = ne[140],
		[ne[139]] = ne[141],
		[ne[142]] = ne[144],
		[ne[143]] = ne[146],
		[ne[145]] = ne[148],
		[ne[147]] = ne[149]
	}
	ne[150] = 120
	ne[134] = f[z]
	ne[142] = 21
	ne[131] = ne[128](ne[132], ne[133], ne[134])
	ne[136] = "BackgroundTransparency"
	ne[138] = "Position"
	ne[137] = 1
	ne[143] = 0
	ne[134] = "Name"
	ne[132] = "TextBox"
	ne[141] = "UDim2"
	ne[149] = "Color3"
	ne[135] = "SearchBox"
	ne[144] = 0
	ne[128] = up4
	ne[140] = ENV[ne[141]]
	ne[141] = "new"
	ne[154] = 230
	ne[139] = ne[140][ne[141]]
	ne[141] = 0
	ne[145] = 1
	ne[140] = ne[139](ne[141], ne[142], ne[143], ne[144])
	ne[143] = "UDim2"
	ne[155] = 250
	ne[174] = 8
	ne[142] = ENV[ne[143]]
	ne[139] = "Size"
	ne[143] = "new"
	ne[146] = 0
	ne[141] = ne[142][ne[143]]
	ne[143] = 1
	ne[144] = - 36
	ne[142] = ne[141](ne[143], ne[144], ne[145], ne[146])
	ne[146] = "Enum"
	ne[141] = "Font"
	ne[145] = ENV[ne[146]]
	ne[146] = "Font"
	ne[144] = ne[145][ne[146]]
	ne[145] = "Gotham"
	ne[146] = "PlaceholderColor3"
	ne[143] = ne[144][ne[145]]
	ne[148] = ENV[ne[149]]
	ne[145] = "Search..."
	ne[144] = "PlaceholderText"
	ne[149] = "fromRGB"
	ne[147] = ne[148][ne[149]]
	ne[166] = "CornerRadius"
	ne[151] = 165
	ne[149] = 135
	ne[148] = ne[147](ne[149], ne[150], ne[151])
	ne[152] = ENV[ne[153]]
	ne[149] = ""
	ne[153] = "fromRGB"
	ne[150] = "TextColor3"
	ne[147] = "Text"
	ne[151] = ne[152][ne[153]]
	ne[153] = 235
	ne[152] = ne[151](ne[153], ne[154], ne[155])
	ne[151] = "TextSize"
	ne[157] = ENV[ne[158]]
	ne[154] = "TextXAlignment"
	ne[158] = "TextXAlignment"
	ne[153] = 10
	ne[156] = ne[157][ne[158]]
	ne[157] = "Left"
	ne[155] = ne[156][ne[157]]
	ne[156] = "ClearTextOnFocus"
	ne[157] = false
	ne[158] = "ZIndex"
	ne[133] = {
		[ne[134]] = ne[135],
		[ne[136]] = ne[137],
		[ne[138]] = ne[140],
		[ne[139]] = ne[142],
		[ne[141]] = ne[143],
		[ne[144]] = ne[145],
		[ne[146]] = ne[148],
		[ne[147]] = ne[149],
		[ne[150]] = ne[152],
		[ne[151]] = ne[153],
		[ne[154]] = ne[155],
		[ne[156]] = ne[157],
		[ne[158]] = ne[159]
	}
	ne[147] = 0
	ne[134] = f[z]
	ne[138] = 1
	ne[131] = ne[128](ne[132], ne[133], ne[134])
	ne[143] = .5
	ne[146] = .5
	ne[144] = "UDim2"
	ne[128] = O()
	ne[145] = - 3
	ne[135] = "Name"
	ne[139] = "AnchorPoint"
	ne[136] = "SearchClear"
	ne[137] = "BackgroundTransparency"
	f[ne[128]] = ne[131]
	ne[131] = up4
	ne[133] = "TextButton"
	ne[142] = "Vector2"
	ne[141] = ENV[ne[142]]
	ne[142] = "new"
	ne[155] = "ZIndex"
	ne[152] = "Color3"
	ne[140] = ne[141][ne[142]]
	ne[142] = 1
	ne[141] = ne[140](ne[142], ne[143])
	ne[143] = ENV[ne[144]]
	ne[144] = "new"
	ne[140] = "Position"
	ne[142] = ne[143][ne[144]]
	ne[153] = 145
	ne[149] = 14
	ne[144] = 1
	ne[143] = ne[142](ne[144], ne[145], ne[146], ne[147])
	ne[146] = "UDim2"
	ne[142] = "Size"
	ne[145] = ENV[ne[146]]
	ne[147] = 14
	ne[146] = "new"
	ne[144] = ne[145][ne[146]]
	ne[146] = 0
	ne[148] = 0
	ne[145] = ne[144](ne[146], ne[147], ne[148], ne[149])
	ne[149] = "Enum"
	ne[157] = "AutoButtonColor"
	ne[148] = ENV[ne[149]]
	ne[144] = "Font"
	ne[149] = "Font"
	ne[147] = ne[148][ne[149]]
	ne[156] = 8
	ne[149] = "TextColor3"
	ne[148] = "GothamBold"
	ne[146] = ne[147][ne[148]]
	ne[147] = "Text"
	ne[151] = ENV[ne[152]]
	ne[152] = "fromRGB"
	ne[148] = "\195\151"
	ne[150] = ne[151][ne[152]]
	ne[154] = 215
	ne[152] = 175
	ne[151] = ne[150](ne[152], ne[153], ne[154])
	ne[153] = "Visible"
	ne[150] = "TextSize"
	ne[158] = false
	ne[154] = false
	ne[152] = 12
	ne[134] = {
		[ne[135]] = ne[136],
		[ne[137]] = ne[138],
		[ne[139]] = ne[141],
		[ne[140]] = ne[143],
		[ne[142]] = ne[145],
		[ne[144]] = ne[146],
		[ne[147]] = ne[148],
		[ne[149]] = ne[151],
		[ne[150]] = ne[152],
		[ne[153]] = ne[154],
		[ne[155]] = ne[156],
		[ne[157]] = ne[158]
	}
	ne[143] = 190
	ne[149] = 0
	ne[136] = "Name"
	ne[146] = 0
	ne[135] = f[z]
	ne[137] = "SearchCount"
	ne[138] = "BackgroundColor3"
	ne[132] = ne[131](ne[133], ne[134], ne[135])
	ne[131] = O()
	ne[145] = "Vector2"
	ne[150] = - 6
	f[ne[131]] = ne[132]
	ne[142] = 60
	ne[132] = up4
	ne[134] = "TextLabel"
	ne[141] = "Color3"
	ne[140] = ENV[ne[141]]
	ne[141] = "fromRGB"
	ne[139] = ne[140][ne[141]]
	ne[141] = 110
	ne[140] = ne[139](ne[141], ne[142], ne[143])
	ne[147] = "UDim2"
	ne[139] = "BackgroundTransparency"
	ne[141] = .2
	ne[142] = "AnchorPoint"
	ne[144] = ENV[ne[145]]
	ne[145] = "new"
	ne[143] = ne[144][ne[145]]
	ne[145] = 1
	ne[144] = ne[143](ne[145], ne[146])
	ne[143] = "Position"
	ne[146] = ENV[ne[147]]
	ne[148] = - 2
	ne[147] = "new"
	ne[145] = ne[146][ne[147]]
	ne[147] = 1
	ne[151] = 0
	ne[146] = ne[145](ne[147], ne[148], ne[149], ne[150])
	ne[145] = "Size"
	ne[149] = "UDim2"
	ne[150] = 22
	ne[148] = ENV[ne[149]]
	ne[149] = "new"
	ne[152] = 13
	ne[158] = "ZIndex"
	ne[159] = 9
	ne[147] = ne[148][ne[149]]
	ne[149] = 0
	ne[148] = ne[147](ne[149], ne[150], ne[151], ne[152])
	ne[147] = "Font"
	ne[156] = 225
	ne[152] = "Enum"
	ne[151] = ENV[ne[152]]
	ne[152] = "Font"
	ne[150] = ne[151][ne[152]]
	ne[151] = "GothamBold"
	ne[149] = ne[150][ne[151]]
	ne[151] = "0"
	ne[157] = 255
	ne[152] = "TextColor3"
	ne[150] = "Text"
	ne[155] = "Color3"
	ne[154] = ENV[ne[155]]
	ne[155] = "fromRGB"
	ne[153] = ne[154][ne[155]]
	ne[155] = 240
	ne[154] = ne[153](ne[155], ne[156], ne[157])
	ne[153] = "TextSize"
	ne[155] = 9
	ne[156] = "Visible"
	ne[162] = up4
	ne[168] = ENV[ne[169]]
	ne[157] = false
	ne[169] = "new"
	ne[167] = ne[168][ne[169]]
	ne[169] = 1
	ne[168] = ne[167](ne[169], ne[170])
	ne[165] = {
		[ne[166]] = ne[168]
	}
	ne[163] = {
		ne[162](ne[164], ne[165])
	}
	ne[161] = {
		unpack(ne[163])
	}
	ne[135] = {
		[ne[136]] = ne[137],
		[ne[138]] = ne[140],
		[ne[139]] = ne[141],
		[ne[142]] = ne[144],
		[ne[143]] = ne[146],
		[ne[145]] = ne[148],
		[ne[147]] = ne[149],
		[ne[150]] = ne[151],
		[ne[152]] = ne[154],
		[ne[153]] = ne[155],
		[ne[156]] = ne[157],
		[ne[158]] = ne[159],
		[ne[160]] = ne[161]
	}
	ne[136] = f[z]
	ne[140] = 1
	ne[143] = "Position"
	ne[149] = - 3
	ne[133] = ne[132](ne[134], ne[135], ne[136])
	ne[137] = "Active"
	ne[138] = true
	ne[132] = O()
	ne[148] = 0
	ne[152] = "UDim2"
	ne[142] = 0
	ne[139] = "BackgroundTransparency"
	ne[150] = 0
	ne[141] = "BorderSizePixel"
	ne[135] = "ScrollingFrame"
	f[ne[132]] = ne[133]
	ne[133] = up4
	ne[146] = "UDim2"
	ne[147] = 140
	ne[161] = "Enum"
	ne[154] = 0
	ne[145] = ENV[ne[146]]
	ne[146] = "new"
	ne[144] = ne[145][ne[146]]
	ne[159] = "Enum"
	ne[168] = "UDim"
	ne[146] = 0
	ne[151] = 30
	ne[145] = ne[144](ne[146], ne[147], ne[148], ne[149])
	ne[169] = 7
	ne[148] = "UDim2"
	ne[144] = "Size"
	ne[147] = ENV[ne[148]]
	ne[148] = "new"
	ne[153] = 0
	ne[149] = - 148
	ne[146] = ne[147][ne[148]]
	ne[148] = 1
	ne[147] = ne[146](ne[148], ne[149], ne[150], ne[151])
	ne[155] = 0
	ne[146] = "CanvasPosition"
	ne[150] = "Vector2"
	ne[149] = ENV[ne[150]]
	ne[150] = "new"
	ne[148] = ne[149][ne[150]]
	ne[150] = 0
	ne[151] = 0
	ne[149] = ne[148](ne[150], ne[151])
	ne[148] = "CanvasSize"
	ne[151] = ENV[ne[152]]
	ne[152] = "new"
	ne[150] = ne[151][ne[152]]
	ne[152] = 0
	ne[151] = ne[150](ne[152], ne[153], ne[154], ne[155])
	ne[155] = "ScrollingDirection"
	ne[150] = "ScrollBarThickness"
	ne[154] = 1
	ne[165] = "CornerRadius"
	ne[163] = "UICorner"
	ne[152] = 0
	ne[158] = ENV[ne[159]]
	ne[159] = "ScrollingDirection"
	ne[153] = "ScrollBarImageTransparency"
	ne[157] = ne[158][ne[159]]
	ne[158] = "X"
	ne[156] = ne[157][ne[158]]
	ne[157] = "ElasticBehavior"
	ne[160] = ENV[ne[161]]
	ne[161] = "ElasticBehavior"
	ne[159] = ne[160][ne[161]]
	ne[160] = "WhenScrollable"
	ne[158] = ne[159][ne[160]]
	ne[159] = "Children"
	ne[161] = up4
	ne[167] = ENV[ne[168]]
	ne[168] = "new"
	ne[166] = ne[167][ne[168]]
	ne[168] = 0
	ne[167] = ne[166](ne[168], ne[169])
	ne[164] = {
		[ne[165]] = ne[167]
	}
	ne[162] = {
		ne[161](ne[163], ne[164])
	}
	ne[160] = {
		unpack(ne[162])
	}
	ne[136] = {
		[ne[137]] = ne[138],
		[ne[139]] = ne[140],
		[ne[141]] = ne[142],
		[ne[143]] = ne[145],
		[ne[144]] = ne[147],
		[ne[146]] = ne[149],
		[ne[148]] = ne[151],
		[ne[150]] = ne[152],
		[ne[153]] = ne[154],
		[ne[155]] = ne[156],
		[ne[157]] = ne[158],
		[ne[159]] = ne[160]
	}
	ne[142] = "Enum"
	ne[134] = ne[133](ne[135], ne[136], ne[129])
	ne[133] = O()
	ne[138] = "FillDirection"
	f[ne[133]] = ne[134]
	ne[134] = up4
	ne[136] = "UIListLayout"
	ne[146] = "Enum"
	ne[141] = ENV[ne[142]]
	ne[142] = "FillDirection"
	ne[140] = ne[141][ne[142]]
	ne[141] = "Horizontal"
	ne[144] = "Enum"
	ne[139] = ne[140][ne[141]]
	ne[143] = ENV[ne[144]]
	ne[168] = "UICorner"
	ne[140] = "VerticalAlignment"
	ne[147] = "UDim"
	ne[144] = "VerticalAlignment"
	ne[148] = 5
	ne[142] = ne[143][ne[144]]
	ne[143] = "Top"
	ne[141] = ne[142][ne[143]]
	ne[142] = "SortOrder"
	ne[145] = ENV[ne[146]]
	ne[146] = "SortOrder"
	ne[144] = ne[145][ne[146]]
	ne[145] = "LayoutOrder"
	ne[143] = ne[144][ne[145]]
	ne[146] = ENV[ne[147]]
	ne[144] = "Padding"
	ne[155] = 24
	ne[147] = "new"
	ne[145] = ne[146][ne[147]]
	ne[147] = 0
	ne[146] = ne[145](ne[147], ne[148])
	ne[149] = 400
	ne[137] = {
		[ne[138]] = ne[139],
		[ne[140]] = ne[141],
		[ne[142]] = ne[143],
		[ne[144]] = ne[146]
	}
	ne[138] = f[ne[133]]
	ne[135] = ne[134](ne[136], ne[137], ne[138])
	ne[134] = O()
	f[ne[134]] = ne[135]
	ne[137] = "RefreshTabScrollCanvas"
	ne[135] = closure(fn_10068962, {
		ne[133],
		ne[134]
	})
	ne[140] = 1
	ne[136] = f[t]
	ne[136][ne[137]] = ne[135]
	ne[136] = "RegisterLayoutRefresh"
	ne[135] = ENV[ne[136]]
	ne[150] = 0
	ne[137] = closure(fn_13410338, {
		ne[133],
		ne[134]
	})
	ne[148] = 0
	ne[136] = ne[135](ne[137])
	ne[146] = "UDim2"
	ne[135] = f[ne[134]]
	ne[137] = "AbsoluteContentSize"
	ne[136] = "GetPropertyChangedSignal"
	ne[136] = ne[135][ne[136]]
	ne[136] = ne[136](ne[135], ne[137])
	ne[143] = "Size"
	ne[135] = "Connect"
	ne[184] = "UDim"
	ne[135] = ne[136][ne[135]]
	ne[138] = f[t]
	ne[141] = "BorderSizePixel"
	ne[139] = "RefreshTabScrollCanvas"
	ne[137] = ne[138][ne[139]]
	ne[135] = ne[135](ne[136], ne[137])
	ne[136] = "GetPropertyChangedSignal"
	ne[153] = "Color3"
	ne[137] = "AbsoluteSize"
	ne[135] = f[ne[133]]
	ne[136] = ne[135][ne[136]]
	ne[142] = 0
	ne[136] = ne[136](ne[135], ne[137])
	ne[138] = f[t]
	ne[147] = 590
	ne[135] = "Connect"
	ne[139] = "RefreshTabScrollCanvas"
	ne[137] = ne[138][ne[139]]
	ne[139] = "RefreshTabScrollCanvas"
	ne[135] = ne[136][ne[135]]
	ne[135] = ne[135](ne[136], ne[137])
	ne[137] = "ChildAdded"
	ne[136] = f[ne[133]]
	ne[151] = 70
	ne[135] = ne[136][ne[137]]
	ne[138] = f[t]
	ne[137] = ne[138][ne[139]]
	ne[157] = "UDim2"
	ne[136] = "Connect"
	ne[136] = ne[135][ne[136]]
	ne[136] = ne[136](ne[135], ne[137])
	ne[139] = "BackgroundTransparency"
	ne[135] = up4
	ne[137] = "Frame"
	ne[145] = ENV[ne[146]]
	ne[146] = "new"
	ne[144] = ne[145][ne[146]]
	ne[146] = 0
	ne[164] = "Children"
	ne[145] = ne[144](ne[146], ne[147], ne[148], ne[149])
	ne[148] = "UDim2"
	ne[147] = ENV[ne[148]]
	ne[144] = "Position"
	ne[162] = 0
	ne[148] = "new"
	ne[149] = 5
	ne[146] = ne[147][ne[148]]
	ne[148] = 0
	ne[147] = ne[146](ne[148], ne[149], ne[150], ne[151])
	ne[138] = {
		[ne[139]] = ne[140],
		[ne[141]] = ne[142],
		[ne[143]] = ne[145],
		[ne[144]] = ne[147]
	}
	ne[140] = "Name"
	ne[139] = f[he]
	ne[148] = "Name"
	ne[136] = ne[135](ne[137], ne[138], ne[139])
	ne[141] = "Container"
	ne[139] = {
		[ne[140]] = ne[141]
	}
	ne[170] = "CornerRadius"
	ne[140] = O()
	ne[135] = up4
	ne[163] = true
	ne[138] = "Folder"
	ne[137] = ne[135](ne[138], ne[139], ne[136])
	ne[138] = {}
	ne[139] = false
	ne[135] = O()
	ne[154] = 12
	ne[161] = 0
	ne[181] = "UDim"
	f[ne[135]] = ne[137]
	ne[137] = {}
	f[Y] = ne[137]
	ne[142] = O()
	f[Je] = ne[138]
	ne[158] = 8
	ne[160] = 26
	ne[143] = O()
	f[ne[140]] = ne[139]
	ne[159] = 0
	ne[144] = O()
	ne[139] = nil
	ne[150] = "BackgroundColor3"
	ne[141] = O()
	f[ne[141]] = ne[139]
	ne[139] = nil
	ne[146] = "ActivateScroll"
	f[ne[142]] = ne[139]
	ne[139] = false
	f[ne[143]] = ne[139]
	ne[139] = {}
	f[ne[144]] = ne[139]
	ne[145] = f[t]
	ne[139] = closure(fn_3909995, {
		ne[143],
		ne[141],
		Je,
		up6
	})
	ne[149] = "SearchHistoryFrame"
	ne[145][ne[146]] = ne[139]
	ne[145] = f[t]
	ne[146] = "RefreshSectionVisibility"
	ne[139] = closure(fn_12610468, {
		Y
	})
	ne[145][ne[146]] = ne[139]
	ne[146] = "Frame"
	ne[139] = up4
	ne[152] = ENV[ne[153]]
	ne[153] = "fromRGB"
	ne[151] = ne[152][ne[153]]
	ne[153] = 16
	ne[152] = ne[151](ne[153], ne[154], ne[155])
	ne[154] = "Position"
	ne[156] = ENV[ne[157]]
	ne[157] = "new"
	ne[155] = ne[156][ne[157]]
	ne[157] = 0
	ne[151] = "BackgroundTransparency"
	ne[153] = .08
	ne[156] = ne[155](ne[157], ne[158], ne[159], ne[160])
	ne[155] = "Size"
	ne[159] = "UDim2"
	ne[158] = ENV[ne[159]]
	ne[159] = "new"
	ne[160] = 220
	ne[157] = ne[158][ne[159]]
	ne[159] = 0
	ne[179] = "UDim"
	ne[158] = ne[157](ne[159], ne[160], ne[161], ne[162])
	ne[157] = "Visible"
	ne[162] = "ClipsDescendants"
	ne[166] = up4
	ne[172] = ENV[ne[173]]
	ne[159] = false
	ne[161] = 50
	ne[160] = "ZIndex"
	ne[173] = "new"
	ne[171] = ne[172][ne[173]]
	ne[173] = 0
	ne[172] = ne[171](ne[173], ne[174])
	ne[169] = {
		[ne[170]] = ne[172]
	}
	ne[167] = ne[166](ne[168], ne[169])
	ne[171] = "SortOrder"
	ne[169] = "UIListLayout"
	ne[166] = up4
	ne[174] = ENV[ne[175]]
	ne[175] = "SortOrder"
	ne[173] = ne[174][ne[175]]
	ne[174] = "LayoutOrder"
	ne[172] = ne[173][ne[174]]
	ne[175] = ENV[ne[176]]
	ne[176] = "new"
	ne[174] = ne[175][ne[176]]
	ne[173] = "Padding"
	ne[176] = 0
	ne[175] = ne[174](ne[176], ne[177])
	ne[170] = {
		[ne[171]] = ne[172],
		[ne[173]] = ne[175]
	}
	ne[175] = "UDim"
	ne[168] = ne[166](ne[169], ne[170])
	ne[166] = up4
	ne[177] = "UDim"
	ne[170] = "UIPadding"
	ne[174] = ENV[ne[175]]
	ne[172] = "PaddingTop"
	ne[175] = "new"
	ne[176] = 6
	ne[173] = ne[174][ne[175]]
	ne[175] = 0
	ne[174] = ne[173](ne[175], ne[176])
	ne[173] = "PaddingBottom"
	ne[176] = ENV[ne[177]]
	ne[177] = "new"
	ne[175] = ne[176][ne[177]]
	ne[177] = 0
	ne[176] = ne[175](ne[177], ne[178])
	ne[175] = "PaddingLeft"
	ne[178] = ENV[ne[179]]
	ne[179] = "new"
	ne[177] = ne[178][ne[179]]
	ne[179] = 0
	ne[178] = ne[177](ne[179], ne[180])
	ne[180] = ENV[ne[181]]
	ne[177] = "PaddingRight"
	ne[181] = "new"
	ne[179] = ne[180][ne[181]]
	ne[181] = 0
	ne[180] = ne[179](ne[181], ne[182])
	ne[171] = {
		[ne[172]] = ne[174],
		[ne[173]] = ne[176],
		[ne[175]] = ne[178],
		[ne[177]] = ne[180]
	}
	ne[169] = {
		ne[166](ne[170], ne[171])
	}
	ne[165] = {
		ne[167],
		ne[168],
		unpack(ne[169])
	}
	ne[147] = {
		[ne[148]] = ne[149],
		[ne[150]] = ne[152],
		[ne[151]] = ne[153],
		[ne[154]] = ne[156],
		[ne[155]] = ne[158],
		[ne[157]] = ne[159],
		[ne[160]] = ne[161],
		[ne[162]] = ne[163],
		[ne[164]] = ne[165]
	}
	ne[148] = f[he]
	ne[152] = 1
	ne[149] = "Name"
	ne[145] = ne[139](ne[146], ne[147], ne[148])
	ne[163] = 0
	ne[158] = "UDim2"
	ne[177] = "UIListLayout"
	ne[151] = "BackgroundTransparency"
	ne[166] = false
	ne[160] = 0
	ne[139] = O()
	ne[153] = "BorderSizePixel"
	ne[147] = "ScrollingFrame"
	ne[155] = "Size"
	ne[167] = "AutomaticCanvasSize"
	ne[154] = 0
	ne[162] = 0
	ne[150] = "SearchTreeScroll"
	ne[179] = "SortOrder"
	f[ne[139]] = ne[145]
	ne[161] = 0
	ne[145] = up4
	ne[159] = - 8
	ne[157] = ENV[ne[158]]
	ne[158] = "new"
	ne[165] = "Visible"
	ne[156] = ne[157][ne[158]]
	ne[164] = 51
	ne[158] = 1
	ne[157] = ne[156](ne[158], ne[159], ne[160], ne[161])
	ne[161] = 0
	ne[156] = "CanvasSize"
	ne[160] = "UDim2"
	ne[173] = "Enum"
	ne[159] = ENV[ne[160]]
	ne[160] = "new"
	ne[158] = ne[159][ne[160]]
	ne[160] = 0
	ne[159] = ne[158](ne[160], ne[161], ne[162], ne[163])
	ne[171] = "Enum"
	ne[161] = "ScrollBarImageTransparency"
	ne[163] = "ZIndex"
	ne[158] = "ScrollBarThickness"
	ne[170] = ENV[ne[171]]
	ne[160] = 0
	ne[171] = "AutomaticSize"
	ne[162] = 1
	ne[169] = ne[170][ne[171]]
	ne[185] = 2
	ne[170] = "None"
	ne[168] = ne[169][ne[170]]
	ne[169] = "ElasticBehavior"
	ne[172] = ENV[ne[173]]
	ne[173] = "ElasticBehavior"
	ne[171] = ne[172][ne[173]]
	ne[172] = "WhenScrollable"
	ne[173] = "Children"
	ne[170] = ne[171][ne[172]]
	ne[175] = up4
	ne[171] = "ScrollingEnabled"
	ne[172] = true
	ne[182] = ENV[ne[183]]
	ne[183] = "SortOrder"
	ne[181] = ne[182][ne[183]]
	ne[182] = "LayoutOrder"
	ne[180] = ne[181][ne[182]]
	ne[183] = ENV[ne[184]]
	ne[184] = "new"
	ne[182] = ne[183][ne[184]]
	ne[184] = 0
	ne[181] = "Padding"
	ne[183] = ne[182](ne[184], ne[185])
	ne[178] = {
		[ne[179]] = ne[180],
		[ne[181]] = ne[183]
	}
	ne[176] = {
		ne[175](ne[177], ne[178])
	}
	ne[174] = {
		unpack(ne[176])
	}
	ne[148] = {
		[ne[149]] = ne[150],
		[ne[151]] = ne[152],
		[ne[153]] = ne[154],
		[ne[155]] = ne[157],
		[ne[156]] = ne[159],
		[ne[158]] = ne[160],
		[ne[161]] = ne[162],
		[ne[163]] = ne[164],
		[ne[165]] = ne[166],
		[ne[167]] = ne[168],
		[ne[169]] = ne[170],
		[ne[171]] = ne[172],
		[ne[173]] = ne[174]
	}
	ne[152] = "AddTab"
	ne[149] = f[ne[139]]
	ne[146] = ne[145](ne[147], ne[148], ne[149])
	ne[145] = O()
	f[ne[145]] = ne[146]
	ne[146] = O()
	ne[147] = closure(fn_3174427, {
		ne[139],
		ne[145]
	})
	f[ne[146]] = ne[147]
	ne[147] = closure(fn_15875446, {})
	ne[149] = "fuzzyMatch"
	ne[148] = f[t]
	ne[148][ne[149]] = ne[147]
	ne[149] = "SplitWords"
	ne[148] = f[t]
	ne[147] = closure(fn_13257363, {})
	ne[150] = {}
	ne[148][ne[149]] = ne[147]
	ne[147] = closure(fn_9422263, {
		t
	})
	ne[148] = f[t]
	ne[149] = "ScoreSearchEntry"
	ne[148][ne[149]] = ne[147]
	ne[148] = "Get"
	ne[147] = up1
	ne[149] = "_opt_SearchHistory"
	ne[148] = ne[147][ne[148]]
	ne[148] = ne[148](ne[147], ne[149], ne[150])
	ne[150] = "SaveSearchToHistory"
	ne[147] = O()
	ne[154] = "IsDeveloperBuild"
	f[ne[147]] = ne[148]
	ne[148] = closure(fn_7110918, {
		ne[147],
		up1
	})
	ne[149] = f[t]
	ne[149][ne[150]] = ne[148]
	ne[149] = f[t]
	ne[150] = "NavigateToSearchEntry"
	ne[148] = closure(fn_5745404, {
		Je,
		t,
		up6,
		up4
	})
	ne[149][ne[150]] = ne[148]
	ne[150] = "UpdateSearchTreeUI"
	ne[148] = closure(fn_1325887, {
		ne[145],
		up4,
		t,
		ne[146]
	})
	ne[149] = f[t]
	ne[149][ne[150]] = ne[148]
	ne[150] = "UpdateHistoryUI"
	ne[148] = closure(fn_4125396, {
		ne[139],
		ne[145],
		ne[146],
		ne[147],
		up4,
		ne[128]
	})
	ne[149] = f[t]
	ne[149][ne[150]] = ne[148]
	ne[148] = closure(fn_14632542, {
		ne[131],
		ne[140],
		ne[144],
		ne[132],
		t,
		ne[146],
		Y,
		Je,
		ne[142],
		ne[141]
	})
	ne[149] = "DoSearch"
	ne[151] = "Text"
	ENV[ne[149]] = ne[148]
	ne[149] = O()
	ne[148] = 0
	f[ne[149]] = ne[148]
	ne[150] = "GetPropertyChangedSignal"
	ne[148] = f[ne[128]]
	ne[150] = ne[148][ne[150]]
	ne[150] = ne[150](ne[148], ne[151])
	ne[148] = "Connect"
	ne[151] = closure(fn_8232843, {
		ne[128],
		ne[131],
		ne[149],
		ne[146]
	})
	ne[148] = ne[150][ne[148]]
	ne[148] = ne[148](ne[150], ne[151])
	ne[150] = f[ne[131]]
	ne[151] = "MouseButton1Click"
	ne[148] = ne[150][ne[151]]
	ne[151] = closure(fn_14119228, {
		ne[128],
		ne[146]
	})
	ne[150] = "Connect"
	ne[150] = ne[148][ne[150]]
	ne[150] = ne[150](ne[148], ne[151])
	ne[151] = "Focused"
	ne[150] = f[ne[128]]
	ne[148] = ne[150][ne[151]]
	ne[150] = "Connect"
	ne[150] = ne[148][ne[150]]
	ne[151] = closure(fn_9328518, {
		up6,
		z,
		ne[128],
		ne[144],
		t,
		ne[147],
		ne[146]
	})
	ne[150] = ne[150](ne[148], ne[151])
	ne[150] = f[ne[128]]
	ne[151] = "FocusLost"
	ne[148] = ne[150][ne[151]]
	ne[150] = "Connect"
	ne[150] = ne[148][ne[150]]
	ne[151] = closure(fn_10372935, {
		up6,
		z,
		t,
		ne[128],
		ne[146]
	})
	ne[150] = ne[150](ne[148], ne[151])
	ne[151] = O()
	ne[148] = {}
	ne[153] = "AddTab"
	ne[150] = true
	f[ne[151]] = ne[150]
	ne[150] = closure(fn_7155701, {
		P,
		up4,
		up18,
		ne[133],
		ne[135],
		Je,
		ne[151],
		t,
		ne[140],
		ne[128],
		Y,
		H,
		up5,
		up1,
		up6,
		up14,
		up13,
		v,
		up9,
		he
	})
	ne[148][ne[152]] = ne[150]
	ne[150] = "addTab"
	ne[152] = ne[148][ne[153]]
	ne[148][ne[150]] = ne[152]
	ne[150] = "Standard"
	ne[153] = f[t]
	ne[152] = ne[153][ne[154]]
	ne[153] = ne[152]()
	if ne[153] then goto L6129516 end
::L8237795::
	ne[154] = f[t]
	ne[155] = "HasKeyAccess"
	ne[153] = ne[154][ne[155]]
	ne[154] = ne[153]()
	if ne[154] then goto L14236301 end
::L519695::
	ne[154] = f[e]
	if ne[154] then goto L4576574 end
::L10810882::
	ne[155] = "Not required"
	ne[156] = f[e]
	if ne[156] then goto L9416115 end
::L3868294::
	ne[159] = "info-quantum"
	ne[157] = "AddTab"
	ne[158] = "Main"
	ne[157] = ne[148][ne[157]]
	ne[161] = "Information"
	ne[165] = "string"
	ne[157] = ne[157](ne[148], ne[158], ne[159])
	ne[158] = "addSection"
	ne[158] = ne[157][ne[158]]
	ne[167] = "tostring"
	ne[158] = ne[158](ne[157])
	ne[159] = "addSection"
	ne[159] = ne[157][ne[159]]
	ne[170] = c
	ne[160] = "addMenu"
	ne[159] = ne[159](ne[157])
	ne[160] = ne[158][ne[160]]
	ne[160] = ne[160](ne[158], ne[161])
	ne[162] = "Script Information"
	ne[164] = ENV[ne[165]]
	ne[165] = "format"
	ne[163] = ne[164][ne[165]]
	ne[166] = ENV[ne[167]]
	ne[165] = "Hub: %s\nGame: %s\nAccount: %s\nStatus: %s"
	ne[168] = f[j]
	ne[167] = ne[166](ne[168])
	ne[171] = up19
	ne[169] = ne[171]
	ne[168] = c
	if ne[171] then goto L7517100 end
::L3321760::
	c = ne[170]
	ne[161] = "addLabel"
	ne[170] = "Unknown"
	ne[161] = ne[160][ne[161]]
	ne[166] = ne[169] or ne[170]
	ne[164] = {
		ne[163](ne[165], W, ne[167], ne[166], ne[150])
	}
	ne[161] = ne[161](ne[160], ne[162], unpack(ne[164]))
	ne[165] = "string"
	ne[162] = "Key Information"
	ne[164] = ENV[ne[165]]
	ne[165] = "format"
	ne[168] = B
	ne[167] = "tostring"
	ne[163] = ne[164][ne[165]]
	ne[169] = c
	ne[166] = ENV[ne[167]]
	ne[165] = "Key Status: %s\nKey Mode: %s\nExpires: \226\128\148\nPlan: \226\128\148\nHWID: \226\128\148\nNote: Key details will appear here later."
	if B then goto L1773079 end
::L12740124::
	ne[174] = f[e]
	ne[171] = c
	ne[173] = c
	ne[173] = "None"
	ne[175] = "Optional"
	ne[172] = ne[174] and ne[175]
	ne[170] = ne[172] or ne[173]
	ne[168] = ne[170]
::L1773079::
	ne[167] = {
		ne[166](ne[168])
	}
	ne[161] = "addLabel"
	ne[161] = ne[160][ne[161]]
	ne[164] = {
		ne[163](ne[165], ne[155], unpack(ne[167]))
	}
	ne[165] = "task"
	ne[161] = ne[161](ne[160], ne[162], unpack(ne[164]))
	ne[162] = "Favorites / Pinned"
	ne[164] = "PC: right-click a function, then tap \226\152\133\nMobile: double-tap to pin"
	ne[158] = nil
	ne[163] = "Tip"
	ne[161] = "addMenu"
	ne[161] = ne[159][ne[161]]
	ne[161] = ne[161](ne[159], ne[162])
	ne[162] = "addLabel"
	ne[162] = ne[161][ne[162]]
	ne[162] = ne[162](ne[161], ne[163], ne[164])
	ne[159] = nil
	ne[163] = O()
	ne[162] = nil
	f[ne[163]] = ne[162]
	ne[164] = ENV[ne[165]]
	ne[165] = "defer"
	ne[157] = nil
	ne[162] = ne[164][ne[165]]
	ne[160] = nil
	ne[157] = "task"
	ne[155] = nil
	ne[165] = closure(fn_10502918, {
		Y,
		ne[163],
		Je,
		up4,
		H
	})
	ne[164] = ne[162](ne[165])
	ne[162] = f[H]
	ne[159] = "IsDeveloperBuild"
	ne[150] = nil
	ne[164] = "Refresh"
	ne[165] = closure(fn_9260478, {
		ne[163],
		H,
		up4,
		t
	})
	ne[161] = nil
	ne[162][ne[164]] = ne[165]
	ne[155] = ENV[ne[157]]
	ne[157] = "defer"
	ne[163] = h(ne[163])
	ne[150] = ne[155][ne[157]]
	ne[157] = closure(fn_15655868, {
		t
	})
	ne[155] = ne[150](ne[157])
	ne[155] = "ScheduleRefreshAllLayouts"
	ne[150] = ENV[ne[155]]
	ne[157] = true
	ne[155] = ne[150]()
	ne[150] = f[he]
	ne[155] = "Visible"
	ne[150][ne[155]] = ne[157]
	ne[155] = "Visible"
	ne[150] = f[ne[113]]
	ne[157] = true
	ne[150][ne[155]] = ne[157]
	ne[150] = true
	f[ne[125]] = ne[150]
	ne[157] = "ScheduleRefreshAllLayouts"
	ne[155] = ENV[ne[157]]
	ne[157] = ne[155]()
	ne[155] = "IsDeveloper"
	ne[158] = f[t]
	d = {
		ne[148]
	}
	ne[157] = ne[158][ne[159]]
	ne[148][ne[155]] = ne[157]
	ne[158] = f[t]
	ne[155] = "IsPremium"
	ne[159] = "HasKeyAccess"
	ne[157] = ne[158][ne[159]]
	ne[148][ne[155]] = ne[157]
	ne[157] = f[ne[11]]
	ne[155] = "ToggleUI"
	ne[148][ne[155]] = ne[157]
	ne[155] = "Favorites"
	ne[157] = f[H]
	ne[148][ne[155]] = ne[157]
	ne[157] = closure(fn_10884445, {
		up5
	})
	ne[155] = "Destroy"
	ne[148][ne[155]] = ne[157]
	return unpack(d)
::L7517100::
	ne[173] = "Name"
	ne[172] = up19
	ne[171] = ne[172][ne[173]]
	ne[169] = ne[171]
	goto L3321760
::L9416115::
	ne[159] = c
	ne[162] = "HasKeyAccess"
	ne[157] = c
	ne[159] = "Not verified"
	ne[161] = f[t]
	ne[160] = ne[161][ne[162]]
	ne[161] = ne[160]()
	ne[160] = "Verified"
	ne[158] = ne[161] and ne[160]
	ne[156] = ne[158] or ne[159]
	ne[155] = ne[156]
	goto L3868294
::L4576574::
	ne[154] = "Freemium"
	ne[150] = ne[154]
	goto L10810882
::L14236301::
	ne[153] = "Premium"
	ne[150] = ne[153]
	goto L10810882
::L6129516::
	ne[152] = "Developer"
	ne[150] = ne[152]
	goto L10810882
::L6001395::
	ne[114] = "Themes"
	ne[109] = up3
	ne[113] = up3
	ne[110] = "Current"
	ne[112] = ne[113][ne[114]]
	ne[113] = f[ne[107]]
	ne[111] = ne[112][ne[113]]
	ne[109][ne[110]] = ne[111]
	ne[110] = "BackgroundColor3"
	ne[114] = "Current"
	ne[109] = f[he]
	ne[113] = up3
	ne[112] = ne[113][ne[114]]
	ne[113] = "Body"
	ne[111] = ne[112][ne[113]]
	ne[109][ne[110]] = ne[111]
	goto L6203518
::L10081538::
	ne[37] = "Url"
	ne[38] = "UrlIcon"
	ne[35] = "Role"
	ne[34] = ne[31][ne[35]]
	ne[36] = "Name"
	ne[33] = c
	ne[27] = ne[30]
	ne[35] = "Developer"
	ne[32] = ne[34] or ne[35]
	ne[35] = ne[31][ne[36]]
	ne[36] = "Unknown"
	ne[39] = "UrlTag"
	ne[33] = ne[35] or ne[36]
	ne[35] = c
	ne[34] = c
	ne[36] = ne[31][ne[37]]
	ne[37] = ""
	ne[34] = ne[36] or ne[37]
	ne[36] = c
	ne[37] = ne[31][ne[38]]
	ne[38] = "rbxassetid://83474083071373"
	ne[35] = ne[37] or ne[38]
	ne[38] = ne[31][ne[39]]
	ne[37] = c
	ne[39] = "View Profile"
	ne[36] = ne[38] or ne[39]
	ne[39] = ne[26][ne[32]]
	ne[37] = ne[39]
	ne[38] = c
	if ne[39] then goto L9864282 end
::L15612823::
	ne[43] = 255
	ne[41] = "Color3"
	ne[42] = 115
	ne[40] = ENV[ne[41]]
	ne[41] = "fromRGB"
	ne[39] = ne[40][ne[41]]
	ne[41] = 175
	ne[40] = ne[39](ne[41], ne[42], ne[43])
	ne[37] = ne[40]
::L9864282::
	c = ne[38]
	ne[42] = "B"
	ne[68] = 12
	ne[44] = c
	ne[51] = 18
	ne[44] = 60
	ne[40] = "R"
	ne[38] = O()
	f[ne[38]] = ne[37]
	ne[62] = "UICorner"
	ne[46] = ""
	ne[56] = 0
	ne[67] = "UDim"
	ne[39] = f[ne[38]]
	ne[37] = ne[39][ne[40]]
	ne[41] = "G"
	ne[40] = f[ne[38]]
	ne[39] = ne[40][ne[41]]
	ne[41] = f[ne[38]]
	ne[49] = "Color3"
	ne[40] = ne[41][ne[42]]
	ne[41] = O()
	f[ne[41]] = ne[37]
	ne[37] = O()
	ne[52] = "Size"
	f[ne[37]] = ne[39]
	ne[39] = O()
	f[ne[39]] = ne[40]
	ne[42] = c
	ne[58] = "Children"
	ne[45] = ne[34] ~= ne[46]
	ne[46] = 80
	ne[42] = up4
	ne[43] = ne[45] and ne[46]
	ne[40] = ne[43] or ne[44]
	ne[55] = "UDim2"
	ne[44] = "Frame"
	ne[48] = ENV[ne[49]]
	ne[50] = 7
	ne[49] = "fromRGB"
	ne[46] = "BackgroundColor3"
	ne[47] = ne[48][ne[49]]
	ne[49] = 10
	ne[57] = 0
	ne[48] = ne[47](ne[49], ne[50], ne[51])
	ne[54] = ENV[ne[55]]
	ne[55] = "new"
	ne[51] = 0
	ne[47] = "BackgroundTransparency"
	ne[75] = .5
	ne[53] = ne[54][ne[55]]
	ne[76] = .5
	ne[55] = 1
	ne[49] = 0
	ne[50] = "BorderSizePixel"
	ne[54] = ne[53](ne[55], ne[56], ne[57], ne[40])
	ne[55] = 23
	ne[60] = up4
	ne[66] = ENV[ne[67]]
	ne[83] = .08
	ne[56] = "ClipsDescendants"
	ne[67] = "new"
	ne[53] = "ZIndex"
	ne[65] = ne[66][ne[67]]
	ne[64] = "CornerRadius"
	ne[67] = 0
	ne[66] = ne[65](ne[67], ne[68])
	ne[63] = {
		[ne[64]] = ne[66]
	}
	ne[61] = {
		ne[60](ne[62], ne[63])
	}
	ne[57] = true
	ne[59] = {
		unpack(ne[61])
	}
	ne[45] = {
		[ne[46]] = ne[48],
		[ne[47]] = ne[49],
		[ne[50]] = ne[51],
		[ne[52]] = ne[54],
		[ne[53]] = ne[55],
		[ne[56]] = ne[57],
		[ne[58]] = ne[59]
	}
	ne[43] = ne[42](ne[44], ne[45], ne[22])
	ne[45] = "Frame"
	ne[66] = "UDim"
	ne[42] = O()
	ne[59] = 0
	ne[51] = "BorderSizePixel"
	ne[50] = .86
	ne[77] = .5
	ne[47] = "BackgroundColor3"
	ne[61] = "UICorner"
	ne[52] = 0
	ne[53] = "Size"
	ne[49] = "BackgroundTransparency"
	ne[67] = 12
	ne[56] = "UDim2"
	f[ne[42]] = ne[43]
	ne[58] = 1
	ne[43] = up4
	ne[48] = f[ne[38]]
	ne[57] = 0
	ne[55] = ENV[ne[56]]
	ne[56] = "new"
	ne[54] = ne[55][ne[56]]
	ne[56] = 1
	ne[55] = ne[54](ne[56], ne[57], ne[58], ne[59])
	ne[63] = "CornerRadius"
	ne[56] = 23
	ne[54] = "ZIndex"
	ne[57] = "Children"
	ne[59] = up4
	ne[73] = "Color3"
	ne[65] = ENV[ne[66]]
	ne[66] = "new"
	ne[64] = ne[65][ne[66]]
	ne[66] = 0
	ne[65] = ne[64](ne[66], ne[67])
	ne[64] = "Color"
	ne[62] = {
		[ne[63]] = ne[65]
	}
	ne[67] = "ColorSequence"
	ne[60] = ne[59](ne[61], ne[62])
	ne[70] = "ColorSequenceKeypoint"
	ne[59] = up4
	ne[62] = "UIGradient"
	ne[66] = ENV[ne[67]]
	ne[67] = "new"
	ne[65] = ne[66][ne[67]]
	ne[69] = ENV[ne[70]]
	ne[70] = "new"
	ne[68] = ne[69][ne[70]]
	ne[72] = ENV[ne[73]]
	ne[73] = "new"
	ne[71] = ne[72][ne[73]]
	ne[74] = f[ne[41]]
	ne[73] = ne[74] * ne[75]
	ne[70] = 0
	ne[75] = f[ne[37]]
	ne[74] = ne[75] * ne[76]
	ne[76] = f[ne[39]]
	ne[75] = ne[76] * ne[77]
	ne[72] = {
		ne[71](ne[73], ne[74], ne[75])
	}
	ne[69] = ne[68](ne[70], unpack(ne[72]))
	ne[71] = "ColorSequenceKeypoint"
	ne[70] = ENV[ne[71]]
	ne[71] = "new"
	ne[75] = 4
	ne[68] = ne[70][ne[71]]
	ne[71] = 1
	ne[74] = "Color3"
	ne[73] = ENV[ne[74]]
	ne[76] = 12
	ne[74] = "fromRGB"
	ne[72] = ne[73][ne[74]]
	ne[74] = 6
	ne[73] = {
		ne[72](ne[74], ne[75], ne[76])
	}
	ne[70] = {
		ne[68](ne[71], unpack(ne[73]))
	}
	ne[67] = {
		ne[69],
		unpack(ne[70])
	}
	ne[66] = ne[65](ne[67])
	ne[67] = 135
	ne[65] = "Rotation"
	ne[63] = {
		[ne[64]] = ne[66],
		[ne[65]] = ne[67]
	}
	ne[61] = {
		ne[59](ne[62], ne[63])
	}
	ne[58] = {
		ne[60],
		unpack(ne[61])
	}
	ne[46] = {
		[ne[47]] = ne[48],
		[ne[49]] = ne[50],
		[ne[51]] = ne[52],
		[ne[53]] = ne[55],
		[ne[54]] = ne[56],
		[ne[57]] = ne[58]
	}
	ne[50] = .65
	ne[47] = f[ne[42]]
	ne[49] = "Transparency"
	ne[44] = ne[43](ne[45], ne[46], ne[47])
	ne[59] = 1
	ne[85] = "Enum"
	ne[62] = "UICorner"
	ne[45] = "UIStroke"
	ne[51] = "Thickness"
	ne[52] = 1
	ne[67] = "UDim"
	ne[47] = "Color"
	ne[57] = "Enum"
	ne[60] = - 16
	ne[43] = up4
	ne[48] = f[ne[38]]
	ne[53] = "ApplyStrokeMode"
	ne[76] = 255
	ne[56] = ENV[ne[57]]
	ne[57] = "ApplyStrokeMode"
	ne[55] = ne[56][ne[57]]
	ne[78] = 1
	ne[56] = "Border"
	ne[54] = ne[55][ne[56]]
	ne[55] = "UDim2"
	ne[46] = {
		[ne[47]] = ne[48],
		[ne[49]] = ne[50],
		[ne[51]] = ne[52],
		[ne[53]] = ne[54]
	}
	ne[48] = "BackgroundColor3"
	ne[57] = 0
	ne[47] = f[ne[42]]
	ne[56] = 0
	ne[82] = "Enum"
	ne[51] = 0
	ne[44] = ne[43](ne[45], ne[46], ne[47])
	ne[52] = "Position"
	ne[50] = "BorderSizePixel"
	ne[43] = O()
	f[ne[43]] = ne[44]
	ne[64] = "CornerRadius"
	ne[58] = 8
	ne[44] = up4
	ne[49] = f[ne[38]]
	ne[46] = "Frame"
	ne[54] = ENV[ne[55]]
	ne[55] = "new"
	ne[53] = ne[54][ne[55]]
	ne[55] = 0
	ne[54] = ne[53](ne[55], ne[56], ne[57], ne[58])
	ne[57] = "UDim2"
	ne[68] = 0
	ne[53] = "Size"
	ne[56] = ENV[ne[57]]
	ne[57] = "new"
	ne[55] = ne[56][ne[57]]
	ne[57] = 0
	ne[58] = 3
	ne[56] = ne[55](ne[57], ne[58], ne[59], ne[60])
	ne[75] = 255
	ne[55] = "ZIndex"
	ne[58] = "Children"
	ne[60] = up4
	ne[57] = 25
	ne[66] = ENV[ne[67]]
	ne[67] = "new"
	ne[65] = ne[66][ne[67]]
	ne[67] = 1
	ne[66] = ne[65](ne[67], ne[68])
	ne[63] = {
		[ne[64]] = ne[66]
	}
	ne[61] = ne[60](ne[62], ne[63])
	ne[77] = "string"
	ne[68] = "ColorSequence"
	ne[71] = "ColorSequenceKeypoint"
	ne[63] = "UIGradient"
	ne[60] = up4
	ne[74] = "Color3"
	ne[67] = ENV[ne[68]]
	ne[65] = "Color"
	ne[68] = "new"
	ne[66] = ne[67][ne[68]]
	ne[70] = ENV[ne[71]]
	ne[71] = "new"
	ne[69] = ne[70][ne[71]]
	ne[73] = ENV[ne[74]]
	ne[71] = 0
	ne[74] = "fromRGB"
	ne[72] = ne[73][ne[74]]
	ne[74] = 255
	ne[73] = {
		ne[72](ne[74], ne[75], ne[76])
	}
	ne[70] = ne[69](ne[71], unpack(ne[73]))
	ne[72] = "ColorSequenceKeypoint"
	ne[71] = ENV[ne[72]]
	ne[72] = "new"
	ne[69] = ne[71][ne[72]]
	ne[73] = f[ne[38]]
	ne[72] = 1
	ne[71] = {
		ne[69](ne[72], ne[73])
	}
	ne[68] = {
		ne[70],
		unpack(ne[71])
	}
	ne[67] = ne[66](ne[68])
	ne[66] = "Rotation"
	ne[68] = 90
	ne[64] = {
		[ne[65]] = ne[67],
		[ne[66]] = ne[68]
	}
	ne[62] = {
		ne[60](ne[63], ne[64])
	}
	ne[59] = {
		ne[61],
		unpack(ne[62])
	}
	ne[47] = {
		[ne[48]] = ne[49],
		[ne[50]] = ne[51],
		[ne[52]] = ne[54],
		[ne[53]] = ne[56],
		[ne[55]] = ne[57],
		[ne[58]] = ne[59]
	}
	ne[48] = f[ne[42]]
	ne[51] = "Color3"
	ne[45] = ne[44](ne[46], ne[47], ne[48])
	ne[70] = 1.5
	ne[53] = .18
	ne[46] = "Frame"
	ne[48] = "BackgroundColor3"
	ne[60] = 36
	ne[44] = up4
	ne[71] = "ApplyStrokeMode"
	ne[68] = 0
	ne[54] = .18
	ne[50] = ENV[ne[51]]
	ne[51] = "new"
	ne[64] = "CornerRadius"
	ne[49] = ne[50][ne[51]]
	ne[52] = f[ne[41]]
	ne[51] = ne[52] * ne[53]
	ne[53] = f[ne[37]]
	ne[55] = .18
	ne[67] = "UDim"
	ne[58] = 10
	ne[57] = 0
	ne[52] = ne[53] * ne[54]
	ne[54] = f[ne[39]]
	ne[53] = ne[54] * ne[55]
	ne[56] = 12
	ne[59] = 0
	ne[62] = "UICorner"
	ne[55] = "UDim2"
	ne[50] = ne[49](ne[51], ne[52], ne[53])
	ne[52] = "Position"
	ne[54] = ENV[ne[55]]
	ne[55] = "new"
	ne[49] = "BorderSizePixel"
	ne[53] = ne[54][ne[55]]
	ne[55] = 0
	ne[51] = 0
	ne[54] = ne[53](ne[55], ne[56], ne[57], ne[58])
	ne[57] = "UDim2"
	ne[58] = 36
	ne[56] = ENV[ne[57]]
	ne[57] = "new"
	ne[53] = "Size"
	ne[55] = ne[56][ne[57]]
	ne[57] = 0
	ne[56] = ne[55](ne[57], ne[58], ne[59], ne[60])
	ne[58] = "Children"
	ne[57] = 25
	ne[60] = up4
	ne[66] = ENV[ne[67]]
	ne[69] = "Thickness"
	ne[55] = "ZIndex"
	ne[67] = "new"
	ne[65] = ne[66][ne[67]]
	ne[67] = 1
	ne[66] = ne[65](ne[67], ne[68])
	ne[67] = "Transparency"
	ne[63] = {
		[ne[64]] = ne[66]
	}
	ne[61] = ne[60](ne[62], ne[63])
	ne[63] = "UIStroke"
	ne[68] = .4
	ne[60] = up4
	ne[75] = "Enum"
	ne[65] = "Color"
	ne[66] = f[ne[38]]
	ne[74] = ENV[ne[75]]
	ne[75] = "ApplyStrokeMode"
	ne[73] = ne[74][ne[75]]
	ne[74] = "Border"
	ne[75] = "string"
	ne[72] = ne[73][ne[74]]
	ne[64] = {
		[ne[65]] = ne[66],
		[ne[67]] = ne[68],
		[ne[69]] = ne[70],
		[ne[71]] = ne[72]
	}
	ne[67] = 1
	ne[62] = ne[60](ne[63], ne[64])
	ne[68] = "Size"
	ne[72] = 0
	ne[73] = 1
	ne[66] = "BackgroundTransparency"
	ne[64] = "TextLabel"
	ne[71] = "UDim2"
	ne[60] = up4
	ne[70] = ENV[ne[71]]
	ne[71] = "new"
	ne[74] = 0
	ne[69] = ne[70][ne[71]]
	ne[71] = 1
	ne[70] = ne[69](ne[71], ne[72], ne[73], ne[74])
	ne[69] = "Font"
	ne[74] = "Enum"
	ne[73] = ENV[ne[74]]
	ne[74] = "Font"
	ne[72] = ne[73][ne[74]]
	ne[73] = "FredokaOne"
	ne[71] = ne[72][ne[73]]
	ne[72] = "Text"
	ne[74] = ENV[ne[75]]
	ne[75] = "upper"
	ne[73] = ne[74][ne[75]]
	ne[76] = ENV[ne[77]]
	ne[77] = "sub"
	ne[75] = ne[76][ne[77]]
	ne[77] = 1
	ne[76] = {
		ne[75](ne[33], ne[77], ne[78])
	}
	ne[74] = ne[73](unpack(ne[76]))
	ne[75] = f[ne[38]]
	ne[77] = 18
	ne[81] = ENV[ne[82]]
	ne[82] = "TextXAlignment"
	ne[78] = "TextXAlignment"
	ne[80] = ne[81][ne[82]]
	ne[73] = "TextColor3"
	ne[81] = "Center"
	ne[76] = "TextSize"
	ne[79] = ne[80][ne[81]]
	ne[81] = 26
	ne[80] = "ZIndex"
	ne[65] = {
		[ne[66]] = ne[67],
		[ne[68]] = ne[70],
		[ne[69]] = ne[71],
		[ne[72]] = ne[74],
		[ne[73]] = ne[75],
		[ne[76]] = ne[77],
		[ne[78]] = ne[79],
		[ne[80]] = ne[81]
	}
	ne[63] = {
		ne[60](ne[64], ne[65])
	}
	ne[59] = {
		ne[61],
		ne[62],
		unpack(ne[63])
	}
	ne[47] = {
		[ne[48]] = ne[50],
		[ne[49]] = ne[51],
		[ne[52]] = ne[54],
		[ne[53]] = ne[56],
		[ne[55]] = ne[57],
		[ne[58]] = ne[59]
	}
	ne[48] = f[ne[42]]
	ne[51] = "Position"
	ne[45] = ne[44](ne[46], ne[47], ne[48])
	ne[56] = 0
	ne[54] = "UDim2"
	ne[58] = 0
	ne[73] = 1
	ne[50] = 1
	ne[44] = O()
	ne[47] = "TextLabel"
	ne[55] = 58
	ne[71] = 6
	ne[49] = "BackgroundTransparency"
	ne[61] = "Color3"
	ne[57] = 10
	f[ne[44]] = ne[45]
	ne[45] = up4
	ne[81] = .24
	ne[53] = ENV[ne[54]]
	ne[54] = "new"
	ne[52] = ne[53][ne[54]]
	ne[54] = 0
	ne[53] = ne[52](ne[54], ne[55], ne[56], ne[57])
	ne[57] = - 148
	ne[74] = "ApplyStrokeMode"
	ne[56] = "UDim2"
	ne[55] = ENV[ne[56]]
	ne[52] = "Size"
	ne[56] = "new"
	ne[59] = 16
	ne[66] = "Enum"
	ne[54] = ne[55][ne[56]]
	ne[56] = 1
	ne[55] = ne[54](ne[56], ne[57], ne[58], ne[59])
	ne[54] = "Font"
	ne[59] = "Enum"
	ne[58] = ENV[ne[59]]
	ne[59] = "Font"
	ne[57] = ne[58][ne[59]]
	ne[58] = "FredokaOne"
	ne[56] = ne[57][ne[58]]
	ne[63] = 255
	ne[57] = "Text"
	ne[58] = "TextColor3"
	ne[60] = ENV[ne[61]]
	ne[62] = 235
	ne[61] = "fromRGB"
	ne[72] = "Thickness"
	ne[59] = ne[60][ne[61]]
	ne[61] = 242
	ne[60] = ne[59](ne[61], ne[62], ne[63])
	ne[62] = "TextXAlignment"
	ne[65] = ENV[ne[66]]
	ne[59] = "TextSize"
	ne[61] = 14
	ne[66] = "TextXAlignment"
	ne[64] = ne[65][ne[66]]
	ne[65] = "Left"
	ne[63] = ne[64][ne[65]]
	ne[64] = "ZIndex"
	ne[65] = 25
	ne[48] = {
		[ne[49]] = ne[50],
		[ne[51]] = ne[53],
		[ne[52]] = ne[55],
		[ne[54]] = ne[56],
		[ne[57]] = ne[33],
		[ne[58]] = ne[60],
		[ne[59]] = ne[61],
		[ne[62]] = ne[63],
		[ne[64]] = ne[65]
	}
	ne[52] = "Vector2"
	ne[49] = f[ne[42]]
	ne[46] = ne[45](ne[47], ne[48], ne[49])
	ne[65] = "UICorner"
	ne[54] = "Color3"
	ne[45] = up4
	ne[51] = ENV[ne[52]]
	ne[56] = .12
	ne[52] = "new"
	ne[53] = 0
	ne[58] = .12
	ne[60] = 0
	ne[67] = "CornerRadius"
	ne[47] = "Frame"
	ne[50] = ne[51][ne[52]]
	ne[52] = 1
	ne[59] = - 8
	ne[57] = .12
	ne[51] = ne[50](ne[52], ne[53])
	ne[53] = ENV[ne[54]]
	ne[50] = "BackgroundColor3"
	ne[54] = "new"
	ne[49] = "AnchorPoint"
	ne[52] = ne[53][ne[54]]
	ne[70] = "UDim"
	ne[55] = f[ne[41]]
	ne[54] = ne[55] * ne[56]
	ne[56] = f[ne[37]]
	ne[55] = ne[56] * ne[57]
	ne[57] = f[ne[39]]
	ne[63] = 20
	ne[56] = ne[57] * ne[58]
	ne[53] = ne[52](ne[54], ne[55], ne[56])
	ne[55] = "Position"
	ne[58] = "UDim2"
	ne[78] = "Enum"
	ne[52] = "BorderSizePixel"
	ne[54] = 0
	ne[57] = ENV[ne[58]]
	ne[62] = 0
	ne[58] = "new"
	ne[61] = 10
	ne[56] = ne[57][ne[58]]
	ne[58] = 1
	ne[57] = ne[56](ne[58], ne[59], ne[60], ne[61])
	ne[56] = "Size"
	ne[60] = "UDim2"
	ne[59] = ENV[ne[60]]
	ne[80] = .24
	ne[60] = "new"
	ne[58] = ne[59][ne[60]]
	ne[60] = 0
	ne[61] = 76
	ne[59] = ne[58](ne[60], ne[61], ne[62], ne[63])
	ne[63] = up4
	ne[58] = "ZIndex"
	ne[61] = "Children"
	ne[69] = ENV[ne[70]]
	ne[70] = "new"
	ne[68] = ne[69][ne[70]]
	ne[60] = 25
	ne[70] = 0
	ne[69] = ne[68](ne[70], ne[71])
	ne[70] = "Transparency"
	ne[66] = {
		[ne[67]] = ne[69]
	}
	ne[71] = .5
	ne[64] = ne[63](ne[65], ne[66])
	ne[68] = "Color"
	ne[82] = .24
	ne[66] = "UIStroke"
	ne[63] = up4
	ne[69] = f[ne[38]]
	ne[77] = ENV[ne[78]]
	ne[78] = "ApplyStrokeMode"
	ne[76] = ne[77][ne[78]]
	ne[77] = "Border"
	ne[75] = ne[76][ne[77]]
	ne[67] = {
		[ne[68]] = ne[69],
		[ne[70]] = ne[71],
		[ne[72]] = ne[73],
		[ne[74]] = ne[75]
	}
	ne[78] = "Color3"
	ne[65] = ne[63](ne[66], ne[67])
	ne[72] = "ColorSequence"
	ne[69] = "Color"
	ne[63] = up4
	ne[67] = "UIGradient"
	ne[71] = ENV[ne[72]]
	ne[75] = "ColorSequenceKeypoint"
	ne[72] = "new"
	ne[70] = ne[71][ne[72]]
	ne[74] = ENV[ne[75]]
	ne[75] = "new"
	ne[73] = ne[74][ne[75]]
	ne[77] = ENV[ne[78]]
	ne[78] = "new"
	ne[75] = 0
	ne[76] = ne[77][ne[78]]
	ne[79] = f[ne[41]]
	ne[78] = ne[79] * ne[80]
	ne[80] = f[ne[37]]
	ne[79] = ne[80] * ne[81]
	ne[81] = f[ne[39]]
	ne[80] = ne[81] * ne[82]
	ne[77] = {
		ne[76](ne[78], ne[79], ne[80])
	}
	ne[74] = ne[73](ne[75], unpack(ne[77]))
	ne[76] = "ColorSequenceKeypoint"
	ne[75] = ENV[ne[76]]
	ne[79] = "Color3"
	ne[76] = "new"
	ne[81] = .08
	ne[73] = ne[75][ne[76]]
	ne[78] = ENV[ne[79]]
	ne[76] = 1
	ne[79] = "new"
	ne[82] = .08
	ne[77] = ne[78][ne[79]]
	ne[80] = f[ne[41]]
	ne[79] = ne[80] * ne[81]
	ne[81] = f[ne[37]]
	ne[80] = ne[81] * ne[82]
	ne[82] = f[ne[39]]
	ne[81] = ne[82] * ne[83]
	ne[78] = {
		ne[77](ne[79], ne[80], ne[81])
	}
	ne[75] = {
		ne[73](ne[76], unpack(ne[78]))
	}
	ne[72] = {
		ne[74],
		unpack(ne[75])
	}
	ne[78] = 0
	ne[71] = ne[70](ne[72])
	ne[70] = "Rotation"
	ne[75] = "UDim2"
	ne[72] = 90
	ne[68] = {
		[ne[69]] = ne[71],
		[ne[70]] = ne[72]
	}
	ne[70] = "BackgroundTransparency"
	ne[81] = "TextXAlignment"
	ne[76] = 0
	ne[71] = 1
	ne[66] = ne[63](ne[67], ne[68])
	ne[80] = 9
	ne[63] = up4
	ne[68] = "TextLabel"
	ne[74] = ENV[ne[75]]
	ne[75] = "new"
	ne[72] = "Size"
	ne[77] = 1
	ne[73] = ne[74][ne[75]]
	ne[75] = 1
	ne[74] = ne[73](ne[75], ne[76], ne[77], ne[78])
	ne[73] = "Font"
	ne[78] = "Enum"
	ne[77] = ENV[ne[78]]
	ne[78] = "Font"
	ne[76] = ne[77][ne[78]]
	ne[79] = "TextSize"
	ne[77] = "GothamBold"
	ne[75] = ne[76][ne[77]]
	ne[78] = f[ne[38]]
	ne[77] = "TextColor3"
	ne[84] = ENV[ne[85]]
	ne[85] = "TextXAlignment"
	ne[83] = ne[84][ne[85]]
	ne[76] = "Text"
	ne[84] = "Center"
	ne[82] = ne[83][ne[84]]
	ne[84] = 26
	ne[83] = "ZIndex"
	ne[69] = {
		[ne[70]] = ne[71],
		[ne[72]] = ne[74],
		[ne[73]] = ne[75],
		[ne[76]] = ne[32],
		[ne[77]] = ne[78],
		[ne[79]] = ne[80],
		[ne[81]] = ne[82],
		[ne[83]] = ne[84]
	}
	ne[67] = {
		ne[63](ne[68], ne[69])
	}
	ne[62] = {
		ne[64],
		ne[65],
		ne[66],
		unpack(ne[67])
	}
	ne[48] = {
		[ne[49]] = ne[51],
		[ne[50]] = ne[53],
		[ne[52]] = ne[54],
		[ne[55]] = ne[57],
		[ne[56]] = ne[59],
		[ne[58]] = ne[60],
		[ne[61]] = ne[62]
	}
	ne[58] = 28
	ne[59] = 0
	ne[49] = f[ne[42]]
	ne[55] = "UDim2"
	ne[61] = "string"
	ne[60] = 12
	ne[51] = 1
	ne[46] = ne[45](ne[47], ne[48], ne[49])
	ne[48] = "TextLabel"
	ne[56] = 58
	ne[45] = up4
	ne[52] = "Position"
	ne[65] = .82
	ne[57] = 0
	ne[50] = "BackgroundTransparency"
	ne[54] = ENV[ne[55]]
	ne[55] = "new"
	ne[53] = ne[54][ne[55]]
	ne[55] = 0
	ne[54] = ne[53](ne[55], ne[56], ne[57], ne[58])
	ne[57] = "UDim2"
	ne[53] = "Size"
	ne[56] = ENV[ne[57]]
	ne[58] = - 148
	ne[57] = "new"
	ne[63] = "Color3"
	ne[55] = ne[56][ne[57]]
	ne[57] = 1
	ne[56] = ne[55](ne[57], ne[58], ne[59], ne[60])
	ne[55] = "Font"
	ne[60] = "Enum"
	ne[59] = ENV[ne[60]]
	ne[60] = "Font"
	ne[58] = ne[59][ne[60]]
	ne[67] = .82
	ne[59] = "Gotham"
	ne[57] = ne[58][ne[59]]
	ne[60] = ENV[ne[61]]
	ne[58] = "Text"
	ne[61] = "lower"
	ne[59] = ne[60][ne[61]]
	ne[60] = ne[59](ne[32])
	ne[68] = "Enum"
	ne[62] = ENV[ne[63]]
	ne[66] = .82
	ne[63] = "new"
	ne[59] = "TextColor3"
	ne[61] = ne[62][ne[63]]
	ne[64] = f[ne[41]]
	ne[63] = ne[64] * ne[65]
	ne[65] = f[ne[37]]
	ne[64] = ne[65] * ne[66]
	ne[66] = f[ne[39]]
	ne[65] = ne[66] * ne[67]
	ne[62] = ne[61](ne[63], ne[64], ne[65])
	ne[67] = ENV[ne[68]]
	ne[63] = 10
	ne[61] = "TextSize"
	ne[64] = "TextXAlignment"
	ne[68] = "TextXAlignment"
	ne[66] = ne[67][ne[68]]
	ne[67] = "Left"
	ne[65] = ne[66][ne[67]]
	ne[67] = 25
	ne[66] = "ZIndex"
	ne[49] = {
		[ne[50]] = ne[51],
		[ne[52]] = ne[54],
		[ne[53]] = ne[56],
		[ne[55]] = ne[57],
		[ne[58]] = ne[60],
		[ne[59]] = ne[62],
		[ne[61]] = ne[63],
		[ne[64]] = ne[65],
		[ne[66]] = ne[67]
	}
	ne[50] = f[ne[42]]
	ne[47] = ne[45](ne[48], ne[49], ne[50])
	ne[47] = ""
	ne[45] = ne[34] ~= ne[47]
	if ne[45] then goto L10345494 end
::L2905374::
	ne[45] = up4
	ne[48] = "TextButton"
	ne[50] = "BackgroundTransparency"
	ne[51] = 1
	ne[52] = "Size"
	ne[55] = "UDim2"
	ne[54] = ENV[ne[55]]
	ne[55] = "new"
	ne[53] = ne[54][ne[55]]
	ne[61] = c
	ne[57] = 0
	ne[55] = 1
	ne[56] = 0
	ne[59] = c
	ne[63] = ""
	ne[62] = ne[34] ~= ne[63]
	ne[63] = 54
	ne[60] = ne[62] and ne[63]
	ne[58] = ne[60]
	if ne[60] then goto L15911584 end
::L6890178::
	ne[58] = ne[40]
::L15911584::
	c = ne[59]
	ne[31] = nil
	ne[35] = nil
	ne[54] = ne[53](ne[55], ne[56], ne[57], ne[58])
	ne[57] = 28
	ne[53] = "Text"
	ne[38] = h(ne[38])
	ne[58] = "AutoButtonColor"
	ne[59] = false
	ne[56] = "ZIndex"
	ne[55] = ""
	ne[49] = {
		[ne[50]] = ne[51],
		[ne[52]] = ne[54],
		[ne[53]] = ne[55],
		[ne[56]] = ne[57],
		[ne[58]] = ne[59]
	}
	ne[46] = nil
	ne[50] = f[ne[42]]
	ne[47] = ne[45](ne[48], ne[49], ne[50])
	ne[40] = nil
	ne[49] = closure(fn_5345564, {
		up6,
		ne[42],
		ne[41],
		ne[37],
		ne[39],
		ne[43],
		ne[44]
	})
	ne[48] = "MouseEnter"
	ne[45] = ne[47][ne[48]]
	ne[41] = h(ne[41])
	ne[33] = nil
	ne[39] = h(ne[39])
	ne[48] = "Connect"
	ne[37] = h(ne[37])
	ne[48] = ne[45][ne[48]]
	ne[48] = ne[48](ne[45], ne[49])
	ne[48] = "MouseLeave"
	ne[49] = closure(fn_2665110, {
		up6,
		ne[42],
		ne[43],
		ne[44]
	})
	ne[44] = h(ne[44])
	ne[32] = nil
	ne[27] = nil
	ne[34] = nil
	ne[43] = h(ne[43])
	ne[42] = h(ne[42])
	ne[45] = ne[47][ne[48]]
	ne[48] = "Connect"
	ne[48] = ne[45][ne[48]]
	ne[36] = nil
	ne[47] = nil
	ne[48] = ne[48](ne[45], ne[49])
	goto L13382118
::L10345494::
	ne[66] = "UIGradient"
	ne[45] = up4
	ne[51] = f[ne[38]]
	ne[76] = 0
	ne[59] = "UDim2"
	ne[50] = "BackgroundColor3"
	ne[78] = 1
	ne[63] = 0
	ne[62] = 52
	ne[54] = "BorderSizePixel"
	ne[52] = "BackgroundTransparency"
	ne[58] = ENV[ne[59]]
	ne[61] = 0
	ne[79] = "Thickness"
	ne[55] = 0
	ne[64] = 1
	ne[56] = "Position"
	ne[59] = "new"
	ne[48] = "Frame"
	ne[60] = 10
	ne[53] = .78
	ne[57] = ne[58][ne[59]]
	ne[68] = "Transparency"
	ne[59] = 0
	ne[58] = ne[57](ne[59], ne[60], ne[61], ne[62])
	ne[57] = "Size"
	ne[61] = "UDim2"
	ne[60] = ENV[ne[61]]
	ne[61] = "new"
	ne[77] = 0
	ne[59] = ne[60][ne[61]]
	ne[62] = - 20
	ne[61] = 1
	ne[71] = "NumberSequence"
	ne[74] = "NumberSequenceKeypoint"
	ne[75] = 1
	ne[60] = ne[59](ne[61], ne[62], ne[63], ne[64])
	ne[61] = 25
	ne[59] = "ZIndex"
	ne[62] = "Children"
	ne[64] = up4
	ne[70] = ENV[ne[71]]
	ne[71] = "new"
	ne[69] = ne[70][ne[71]]
	ne[73] = ENV[ne[74]]
	ne[74] = "new"
	ne[72] = ne[73][ne[74]]
	ne[74] = 0
	ne[73] = ne[72](ne[74], ne[75])
	ne[75] = "NumberSequenceKeypoint"
	ne[74] = ENV[ne[75]]
	ne[75] = "new"
	ne[72] = ne[74][ne[75]]
	ne[75] = .15
	ne[74] = ne[72](ne[75], ne[76])
	ne[76] = "NumberSequenceKeypoint"
	ne[75] = ENV[ne[76]]
	ne[76] = "new"
	ne[72] = ne[75][ne[76]]
	ne[80] = 1
	ne[76] = .85
	ne[75] = ne[72](ne[76], ne[77])
	ne[77] = "NumberSequenceKeypoint"
	ne[76] = ENV[ne[77]]
	ne[77] = "new"
	ne[72] = ne[76][ne[77]]
	ne[89] = .26
	ne[77] = 1
	ne[76] = {
		ne[72](ne[77], ne[78])
	}
	ne[71] = {
		ne[73],
		ne[74],
		ne[75],
		unpack(ne[76])
	}
	ne[70] = ne[69](ne[71])
	ne[67] = {
		[ne[68]] = ne[70]
	}
	ne[65] = {
		ne[64](ne[66], ne[67])
	}
	ne[63] = {
		unpack(ne[65])
	}
	ne[49] = {
		[ne[50]] = ne[51],
		[ne[52]] = ne[53],
		[ne[54]] = ne[55],
		[ne[56]] = ne[58],
		[ne[57]] = ne[60],
		[ne[59]] = ne[61],
		[ne[62]] = ne[63]
	}
	ne[56] = 14
	ne[50] = f[ne[42]]
	ne[55] = "UDim2"
	ne[47] = ne[45](ne[48], ne[49], ne[50])
	ne[60] = 13
	ne[50] = "BackgroundTransparency"
	ne[59] = 0
	ne[52] = "Position"
	ne[48] = "ImageLabel"
	ne[58] = 57
	ne[45] = up4
	ne[54] = ENV[ne[55]]
	ne[57] = 0
	ne[51] = 1
	ne[55] = "new"
	ne[53] = ne[54][ne[55]]
	ne[55] = 0
	ne[54] = ne[53](ne[55], ne[56], ne[57], ne[58])
	ne[57] = "UDim2"
	ne[53] = "Size"
	ne[63] = .8
	ne[58] = 13
	ne[56] = ENV[ne[57]]
	ne[57] = "new"
	ne[55] = ne[56][ne[57]]
	ne[57] = 0
	ne[56] = ne[55](ne[57], ne[58], ne[59], ne[60])
	ne[60] = "Color3"
	ne[57] = "ImageColor3"
	ne[55] = "Image"
	ne[59] = ENV[ne[60]]
	ne[60] = "new"
	ne[62] = .8
	ne[88] = .26
	ne[58] = ne[59][ne[60]]
	ne[87] = .26
	ne[64] = .8
	ne[61] = f[ne[41]]
	ne[60] = ne[61] * ne[62]
	ne[62] = f[ne[37]]
	ne[77] = "UDim"
	ne[61] = ne[62] * ne[63]
	ne[63] = f[ne[39]]
	ne[67] = "Enum"
	ne[62] = ne[63] * ne[64]
	ne[59] = ne[58](ne[60], ne[61], ne[62])
	ne[60] = 26
	ne[58] = "ZIndex"
	ne[49] = {
		[ne[50]] = ne[51],
		[ne[52]] = ne[54],
		[ne[53]] = ne[56],
		[ne[55]] = ne[35],
		[ne[57]] = ne[59],
		[ne[58]] = ne[60]
	}
	ne[56] = 32
	ne[50] = f[ne[42]]
	ne[57] = 0
	ne[51] = 1
	ne[47] = ne[45](ne[48], ne[49], ne[50])
	ne[48] = "TextLabel"
	ne[45] = up4
	ne[55] = "UDim2"
	ne[54] = ENV[ne[55]]
	ne[52] = "Position"
	ne[50] = "BackgroundTransparency"
	ne[55] = "new"
	ne[53] = ne[54][ne[55]]
	ne[55] = 0
	ne[58] = 56
	ne[81] = "ApplyStrokeMode"
	ne[54] = ne[53](ne[55], ne[56], ne[57], ne[58])
	ne[85] = "Enum"
	ne[59] = 0
	ne[57] = "UDim2"
	ne[53] = "Size"
	ne[62] = "Color3"
	ne[56] = ENV[ne[57]]
	ne[57] = "new"
	ne[55] = ne[56][ne[57]]
	ne[58] = - 140
	ne[60] = 14
	ne[57] = 1
	ne[56] = ne[55](ne[57], ne[58], ne[59], ne[60])
	ne[55] = "Font"
	ne[60] = "Enum"
	ne[65] = .75
	ne[64] = .75
	ne[59] = ENV[ne[60]]
	ne[90] = .08
	ne[68] = "Children"
	ne[60] = "Font"
	ne[58] = ne[59][ne[60]]
	ne[59] = "Gotham"
	ne[57] = ne[58][ne[59]]
	ne[59] = "TextColor3"
	ne[58] = "Text"
	ne[61] = ENV[ne[62]]
	ne[66] = .75
	ne[62] = "new"
	ne[60] = ne[61][ne[62]]
	ne[63] = f[ne[41]]
	ne[62] = ne[63] * ne[64]
	ne[64] = f[ne[37]]
	ne[63] = ne[64] * ne[65]
	ne[65] = f[ne[39]]
	ne[64] = ne[65] * ne[66]
	ne[61] = ne[60](ne[62], ne[63], ne[64])
	ne[60] = "TextSize"
	ne[63] = "TextXAlignment"
	ne[62] = 10
	ne[66] = ENV[ne[67]]
	ne[67] = "TextXAlignment"
	ne[65] = ne[66][ne[67]]
	ne[66] = "Left"
	ne[64] = ne[65][ne[66]]
	ne[65] = "ZIndex"
	ne[66] = 26
	ne[49] = {
		[ne[50]] = ne[51],
		[ne[52]] = ne[54],
		[ne[53]] = ne[56],
		[ne[55]] = ne[57],
		[ne[58]] = ne[36],
		[ne[59]] = ne[61],
		[ne[60]] = ne[62],
		[ne[63]] = ne[64],
		[ne[65]] = ne[66]
	}
	ne[50] = f[ne[42]]
	ne[47] = ne[45](ne[48], ne[49], ne[50])
	ne[45] = up4
	ne[50] = "AnchorPoint"
	ne[59] = .12
	ne[48] = "TextButton"
	ne[54] = 0
	ne[53] = "Vector2"
	ne[72] = "UICorner"
	ne[52] = ENV[ne[53]]
	ne[55] = "Color3"
	ne[53] = "new"
	ne[51] = ne[52][ne[53]]
	ne[53] = 1
	ne[52] = ne[51](ne[53], ne[54])
	ne[54] = ENV[ne[55]]
	ne[57] = .12
	ne[74] = "CornerRadius"
	ne[51] = "BackgroundColor3"
	ne[65] = 0
	ne[61] = "UDim2"
	ne[55] = "new"
	ne[53] = ne[54][ne[55]]
	ne[62] = - 8
	ne[56] = f[ne[41]]
	ne[64] = 55
	ne[55] = ne[56] * ne[57]
	ne[57] = f[ne[37]]
	ne[58] = .12
	ne[56] = ne[57] * ne[58]
	ne[58] = f[ne[39]]
	ne[57] = ne[58] * ne[59]
	ne[54] = ne[53](ne[55], ne[56], ne[57])
	ne[66] = 20
	ne[60] = ENV[ne[61]]
	ne[63] = 0
	ne[78] = 6
	ne[53] = "BackgroundTransparency"
	ne[55] = 0
	ne[58] = "Position"
	ne[56] = "BorderSizePixel"
	ne[61] = "new"
	ne[57] = 0
	ne[67] = 26
	ne[59] = ne[60][ne[61]]
	ne[61] = 1
	ne[60] = ne[59](ne[61], ne[62], ne[63], ne[64])
	ne[64] = 68
	ne[59] = "Size"
	ne[63] = "UDim2"
	ne[62] = ENV[ne[63]]
	ne[63] = "new"
	ne[61] = ne[62][ne[63]]
	ne[63] = 0
	ne[62] = ne[61](ne[63], ne[64], ne[65], ne[66])
	ne[70] = up4
	ne[64] = "Text"
	ne[63] = false
	ne[66] = "ZIndex"
	ne[76] = ENV[ne[77]]
	ne[77] = "new"
	ne[65] = ""
	ne[61] = "AutoButtonColor"
	ne[75] = ne[76][ne[77]]
	ne[77] = 0
	ne[76] = ne[75](ne[77], ne[78])
	ne[78] = .5
	ne[75] = "Color"
	ne[77] = "Transparency"
	ne[73] = {
		[ne[74]] = ne[76]
	}
	ne[71] = ne[70](ne[72], ne[73])
	ne[73] = "UIStroke"
	ne[70] = up4
	ne[76] = f[ne[38]]
	ne[84] = ENV[ne[85]]
	ne[85] = "ApplyStrokeMode"
	ne[83] = ne[84][ne[85]]
	ne[84] = "Border"
	ne[82] = ne[83][ne[84]]
	ne[85] = "Color3"
	ne[74] = {
		[ne[75]] = ne[76],
		[ne[77]] = ne[78],
		[ne[79]] = ne[80],
		[ne[81]] = ne[82]
	}
	ne[79] = "ColorSequence"
	ne[72] = ne[70](ne[73], ne[74])
	ne[74] = "UIGradient"
	ne[70] = up4
	ne[76] = "Color"
	ne[78] = ENV[ne[79]]
	ne[79] = "new"
	ne[77] = ne[78][ne[79]]
	ne[82] = "ColorSequenceKeypoint"
	ne[81] = ENV[ne[82]]
	ne[82] = "new"
	ne[80] = ne[81][ne[82]]
	ne[84] = ENV[ne[85]]
	ne[82] = 0
	ne[85] = "new"
	ne[83] = ne[84][ne[85]]
	ne[86] = f[ne[41]]
	ne[85] = ne[86] * ne[87]
	ne[87] = f[ne[37]]
	ne[86] = ne[87] * ne[88]
	ne[88] = f[ne[39]]
	ne[87] = ne[88] * ne[89]
	ne[84] = {
		ne[83](ne[85], ne[86], ne[87])
	}
	ne[81] = ne[80](ne[82], unpack(ne[84]))
	ne[83] = "ColorSequenceKeypoint"
	ne[82] = ENV[ne[83]]
	ne[88] = .08
	ne[83] = "new"
	ne[86] = "Color3"
	ne[80] = ne[82][ne[83]]
	ne[85] = ENV[ne[86]]
	ne[86] = "new"
	ne[84] = ne[85][ne[86]]
	ne[83] = 1
	ne[87] = f[ne[41]]
	ne[86] = ne[87] * ne[88]
	ne[88] = f[ne[37]]
	ne[89] = .08
	ne[87] = ne[88] * ne[89]
	ne[89] = f[ne[39]]
	ne[88] = ne[89] * ne[90]
	ne[85] = {
		ne[84](ne[86], ne[87], ne[88])
	}
	ne[82] = {
		ne[80](ne[83], unpack(ne[85]))
	}
	ne[79] = {
		ne[81],
		unpack(ne[82])
	}
	ne[78] = ne[77](ne[79])
	ne[77] = "Rotation"
	ne[79] = 90
	ne[75] = {
		[ne[76]] = ne[78],
		[ne[77]] = ne[79]
	}
	ne[73] = {
		ne[70](ne[74], ne[75])
	}
	ne[69] = {
		ne[71],
		ne[72],
		unpack(ne[73])
	}
	ne[49] = {
		[ne[50]] = ne[52],
		[ne[51]] = ne[54],
		[ne[53]] = ne[55],
		[ne[56]] = ne[57],
		[ne[58]] = ne[60],
		[ne[59]] = ne[62],
		[ne[61]] = ne[63],
		[ne[64]] = ne[65],
		[ne[66]] = ne[67],
		[ne[68]] = ne[69]
	}
	ne[50] = f[ne[42]]
	ne[47] = ne[45](ne[48], ne[49], ne[50])
	ne[53] = "Size"
	ne[45] = O()
	ne[51] = "BackgroundTransparency"
	ne[56] = "UDim2"
	f[ne[45]] = ne[47]
	ne[57] = 0
	ne[59] = 0
	ne[62] = 9
	ne[47] = up4
	ne[58] = 1
	ne[55] = ENV[ne[56]]
	ne[49] = "TextLabel"
	ne[52] = 1
	ne[56] = "new"
	ne[54] = ne[55][ne[56]]
	ne[67] = "Enum"
	ne[56] = 1
	ne[61] = "TextSize"
	ne[55] = ne[54](ne[56], ne[57], ne[58], ne[59])
	ne[59] = "Enum"
	ne[54] = "Font"
	ne[58] = ENV[ne[59]]
	ne[59] = "Font"
	ne[63] = "TextXAlignment"
	ne[57] = ne[58][ne[59]]
	ne[59] = "TextColor3"
	ne[58] = "GothamBold"
	ne[56] = ne[57][ne[58]]
	ne[57] = "Text"
	ne[58] = "COPY LINK"
	ne[60] = f[ne[38]]
	ne[66] = ENV[ne[67]]
	ne[67] = "TextXAlignment"
	ne[65] = ne[66][ne[67]]
	ne[66] = "Center"
	ne[64] = ne[65][ne[66]]
	ne[66] = 27
	ne[65] = "ZIndex"
	ne[50] = {
		[ne[51]] = ne[52],
		[ne[53]] = ne[55],
		[ne[54]] = ne[56],
		[ne[57]] = ne[58],
		[ne[59]] = ne[60],
		[ne[61]] = ne[62],
		[ne[63]] = ne[64],
		[ne[65]] = ne[66]
	}
	ne[51] = f[ne[45]]
	ne[48] = ne[47](ne[49], ne[50], ne[51])
	ne[50] = "UIStroke"
	ne[47] = O()
	ne[49] = "FindFirstChildOfClass"
	ne[51] = "MouseEnter"
	f[ne[47]] = ne[48]
	ne[48] = f[ne[45]]
	ne[49] = ne[48][ne[49]]
	ne[49] = ne[49](ne[48], ne[50])
	ne[48] = O()
	f[ne[48]] = ne[49]
	ne[50] = f[ne[45]]
	ne[49] = ne[50][ne[51]]
	ne[50] = "Connect"
	ne[50] = ne[49][ne[50]]
	ne[51] = closure(fn_4236642, {
		up6,
		ne[45],
		ne[41],
		ne[37],
		ne[39],
		ne[48]
	})
	ne[53] = "MouseButton1Click"
	ne[50] = ne[50](ne[49], ne[51])
	ne[50] = f[ne[45]]
	ne[51] = "MouseLeave"
	ne[49] = ne[50][ne[51]]
	ne[51] = closure(fn_146614, {
		up6,
		ne[45],
		ne[41],
		ne[37],
		ne[39],
		ne[48]
	})
	ne[50] = "Connect"
	ne[48] = h(ne[48])
	ne[50] = ne[49][ne[50]]
	ne[50] = ne[50](ne[49], ne[51])
	ne[50] = O()
	ne[49] = O()
	f[ne[49]] = ne[34]
	f[ne[50]] = ne[33]
	ne[52] = f[ne[45]]
	ne[51] = ne[52][ne[53]]
	ne[53] = closure(fn_8498996, {
		ne[45],
		up14,
		ne[49],
		ne[47],
		up6,
		ne[38],
		ne[41],
		ne[37],
		ne[39],
		up5,
		ne[50]
	})
	ne[52] = "Connect"
	ne[49] = h(ne[49])
	ne[52] = ne[51][ne[52]]
	ne[52] = ne[52](ne[51], ne[53])
	ne[45] = h(ne[45])
	ne[47] = h(ne[47])
	ne[50] = h(ne[50])
	goto L2905374
::L5966221::
	ne[33] = "Size"
	ne[27] = up4
	ne[39] = 14
	ne[38] = 0
	ne[29] = "TextLabel"
	ne[36] = "UDim2"
	ne[35] = ENV[ne[36]]
	ne[31] = "BackgroundTransparency"
	ne[36] = "new"
	ne[32] = 1
	ne[37] = 0
	ne[34] = ne[35][ne[36]]
	ne[36] = 1
	ne[35] = ne[34](ne[36], ne[37], ne[38], ne[39])
	ne[34] = "Font"
	ne[39] = "Enum"
	ne[38] = ENV[ne[39]]
	ne[39] = "Font"
	ne[42] = "Color3"
	ne[43] = 90
	ne[37] = ne[38][ne[39]]
	ne[38] = "GothamBold"
	ne[36] = ne[37][ne[38]]
	ne[39] = "TextColor3"
	ne[37] = "Text"
	ne[38] = "TEAM"
	ne[41] = ENV[ne[42]]
	ne[42] = "fromRGB"
	ne[40] = ne[41][ne[42]]
	ne[42] = 130
	ne[44] = 200
	ne[41] = ne[40](ne[42], ne[43], ne[44])
	ne[47] = "Enum"
	ne[42] = 9
	ne[46] = ENV[ne[47]]
	ne[40] = "TextSize"
	ne[43] = "TextXAlignment"
	ne[47] = "TextXAlignment"
	ne[45] = ne[46][ne[47]]
	ne[46] = "Center"
	ne[44] = ne[45][ne[46]]
	ne[46] = 23
	ne[45] = "ZIndex"
	ne[30] = {
		[ne[31]] = ne[32],
		[ne[33]] = ne[35],
		[ne[34]] = ne[36],
		[ne[37]] = ne[38],
		[ne[39]] = ne[41],
		[ne[40]] = ne[42],
		[ne[43]] = ne[44],
		[ne[45]] = ne[46]
	}
	ne[28] = ne[27](ne[29], ne[30], ne[22])
	goto L10514592
::L7730882::
	ne[12] = ne[6]
	f[ne[7]] = ne[12]
	goto L13624054
::L6383883::
	ne[7] = "MouseButton1Click"
	ne[8] = closure(fn_8794367, {
		M,
		L,
		t
	})
	ne[6] = ne[5][ne[7]]
	ne[7] = "Connect"
	ne[7] = ne[6][ne[7]]
	ne[7] = ne[7](ne[6], ne[8])
	goto L12358811
::L2527266::
	ne[10] = true
	ne[9] = "FreemiumBtn"
	ne[8] = "FindFirstChild"
	ne[7] = f[L]
	ne[8] = ne[7][ne[8]]
	ne[8] = ne[8](ne[7], ne[9], ne[10])
	ne[5] = ne[8]
	goto L9436869
::L12283446::
	ne[4] = true
	ne[3] = "Visible"
	ne[1] = f[L]
	ne[1][ne[3]] = ne[4]
	goto L13114087
::L8121407::
	ne[3] = "task"
	ne[2] = ENV[ne[3]]
	ne[3] = "defer"
	ne[1] = ne[2][ne[3]]
	ne[3] = closure(fn_12996982, {
		ae
	})
	ne[2] = ne[1](ne[3])
	goto L1668409
::L7104800::
	oe = he:GetPropertyChangedSignal("ViewportSize")
	oe:Connect(Ne)
	task.defer(Ne)
	goto L15847228
::L8177911::
	Qe = not up9.KeyboardEnabled
	goto L6731689
::L8082377::
	P = LoadKeyValid()
	goto L12117417
::L8384446::
	c = up1
	N = c:GetFileName()
	up2 = N
	c = up1
	c:Load()
	goto L4210618
::L16336715::
	c = up1
	d = c:GetFileName(i.SaveFile)
	up2 = d
	up1.Settings = {}
	c = up1
	c:Load()
	goto L12401920
::L6663479::
	o = c
	N = type(i.SaveFile) == "string"
	if j then goto L4653569 end
::L860668::
	d = N
	goto L4046044
::L4653569::
	N = i.SaveFile ~= ""
	goto L860668
::L9895334::
	c = "Title"
	i.Title = W
	goto L9379381
end

function fn_2235415(arg1, arg2) -- entry L2235415, 1 blocks
::L2235415::
	return up1.Text
end

function fn_2240112(arg1, arg2, arg3, arg4) -- entry L2240112, 1 blocks
::L2240112::
	up1.Playing = true
	c = up1
	c:Play()
	return
end

function fn_2277973(arg1, arg2, arg3, arg4, arg5) -- entry L2277973, 7 blocks
::L2277973::
	c = up1
	R = c:FindFirstChild("_FavStar")
	if R then goto L6303913 end
::L8692765::
	K = "AnchorPoint"
	o = "Name"
	W = "TextButton"
	d = up2()
	c = up3
	j = "_FavStar"
	i = d
	T = Vector2.new(1, .5)
	t = 1
	l = "BackgroundTransparency"
	x = 0
	e = "BorderSizePixel"
	E = i
	B = "Position"
	Y = c
	A = UDim2.new(1, - 6, .5, 0)
	u = "Size"
	L = UDim2.new(0, 22, 0, 22)
	v = "Font"
	b = Enum.Font.GothamBold
	z = (i and "\226\152\133") or "\226\152\134"
	M = "Text"
	y = c
	S = "TextColor3"
	if i then goto L144027 end
::L4202429::
	P = E
	if E then goto L12707440 end
::L2762936::
	P = Color3.fromRGB(210, 180, 255)
::L12707440::
	d = y(W, {
		[o] = j,
		[K] = T,
		[l] = t,
		[e] = x,
		[B] = A,
		[u] = L,
		[v] = b,
		[M] = z,
		[S] = P,
		TextSize = 16,
		ZIndex = 60,
		AutoButtonColor = false
	}, up1)
	W = O()
	f[W] = d
	d = f[W].MouseButton1Click
	o = closure(fn_1245475, {
		up4,
		W
	})
	d:Connect(o)
	j = closure(fn_3520054, {
		W
	})
	d = task.delay
	h(W)
	d(3.5, j)
	return
::L144027::
	E = Color3.fromRGB(255, 210, 90)
	goto L4202429
::L6303913::
	R:Destroy()
	goto L8692765
end

function fn_2282089(arg1, arg2) -- entry L2282089, 1 blocks
::L2282089::
	CircleClick(up1, up2.X, up2.Y)
	up3.CloseSlotPanel()
	return
end

function fn_2381343(arg1, arg2, arg3) -- entry L2381343, 1 blocks
::L2381343::
	math.floor((arg1 / up1) + .5)
	return i*up1
end

function fn_2421049(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L2421049, 15 blocks
::L2421049::
	R = arg1
	if R==nil then goto L12989781 end
::L9733429::
	if type(R)=="function" then goto L182793 end
::L13656148::
	d = type(R) == "table"
	if i then goto L6900031 end
::L1847988::
	if d then goto L1957735 end
::L957999::
	return not (not R)
::L1957735::
	c = pcall
	N = {
		c(R.fn)
	}
	i = N[2]
	d = N[1]
	N = c
	if W then goto L9576059 end
::L10922490::
	if not d then goto L4422764 end
::L10559160::
	return true
::L4422764::
	return false
::L9576059::
	d = i
	goto L10922490
::L6900031::
	d = type(R.fn) == "function"
	goto L1847988
::L182793::
	W = {
		pcall(R)
	}
	i = W[2]
	d = W[1]
	if W then goto L16424041 end
::L11551445::
	return d
::L16424041::
	d = i
	goto L11551445
::L12989781::
	return true
end

function fn_2449627(arg1, arg2) -- entry L2449627, 27 blocks
::L2449627::
	R = arg1
	c = ipairs
	N = up1
	N = {
		c(unpack({
			N:GetChildren()
		}))
	}
	i = N[2]
	W = N[3]
	N = N[1]
::L6603108::
	W, j = N(i, W)
	if W then goto L10103990 end
::L15819564::
	c = {}
	up2 = c
	K = {
		ipairs(up3)
	}
	W = K[1]
	N = K[2]
	o = K[3]
::L4612504::
	o, j = W(N, o)
	if o then goto L8167388 end
::L5099854::
	K = {
		ipairs(up2)
	}
	o = K[3]
	N = K[2]
	W = K[1]
::L13784094::
	o, j = W(N, o)
	if o then goto L2584303 end
::L183030::
	if up6 then goto L16684795 end
::L12676262::
	N = up3[up4[1]] or "None"
	up12.Text = N
::L9328321::
	return
::L16684795::
	i = up12
	N = up13
	o = N(up11(), 2)
	i.Text = o
	goto L9328321
::L2584303::
	K = j.index
	l = j.value
	T = O()
	f[T] = K
	K = table.find(up4, f[T]) ~= nil
	t = up5
	A = "Item_" .. f[T]
	b = Color3.fromRGB(22, 22, 32)
	E = UDim2.new(1, 0, 0, 30)
	k = up5
	Qe = k("UICorner", {
		CornerRadius = UDim.new(0, 6)
	})
	k = up5
	de = Color3.fromRGB(192, 132, 252)
	B = {
		Name = A,
		BackgroundColor3 = b,
		BackgroundTransparency = (K and .3) or .55,
		BorderSizePixel = 0,
		Size = E,
		LayoutOrder = o,
		ZIndex = 12,
		Children = {
			Qe,
			unpack({
				k("UIStroke", {
					Color = de,
					Transparency = (K and .55) or .9,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				})
			})
		}
	}
	e = t("Frame", B, up1)
	t = O()
	f[t] = e
	e = up5
	L = Color3.fromRGB(192, 132, 252)
	S = Vector2.new(0, .5)
	y = UDim2.new(0, 6, .5, 0)
	Y = UDim2.new(0, 3, 0, 14)
	k = up5
	Qe = k("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	k = up5
	Xe = ColorSequence.new
	Re = ColorSequenceKeypoint.new
	Oe = Re(0, unpack({
		Color3.fromRGB(216, 180, 254)
	}))
	Re = ColorSequenceKeypoint.new
	u = {
		BackgroundColor3 = L,
		BackgroundTransparency = (K and 0) or 1,
		AnchorPoint = S,
		Position = y,
		Size = Y,
		ZIndex = 13,
		Children = {
			Qe,
			unpack({
				k("UIGradient", {
					Color = Xe({
						Oe,
						unpack({
							Re(1, unpack({
								Color3.fromRGB(139, 92, 246)
							}))
						})
					}),
					Rotation = 90
				})
			})
		}
	}
	L = 1
	x = e("Frame", u, f[t])
	k = c
	v = "BackgroundTransparency"
	b = "Position"
	u = "TextLabel"
	e = O()
	f[e] = x
	x = up5
	Qe = K
	Fe = "TextColor3"
	me = c
	z = UDim2.new(0, 16, 0, 0)
	M = "Size"
	P = UDim2.new(1, - 24, 1, 0)
	S = "Font"
	H = 12
	y = Enum.Font.GothamBold
	E = "Text"
	Y = "TextSize"
	if K then goto L1454345 end
::L10193681::
	Je = Qe
	if Qe then goto L15868817 end
::L6832295::
	Je = Color3.fromRGB(190, 190, 205)
::L15868817::
	c = k
	B = x(u, {
		[v] = L,
		[b] = z,
		[M] = P,
		[S] = y,
		[E] = l,
		[Y] = H,
		[Fe] = Je,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 13
	}, f[t])
	x = O()
	f[x] = B
	u = O()
	f[u] = nil
	if up6 then goto L8550170 end
::L4550282::
	B = up5
	b = {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = "",
		ZIndex = 14
	}
	v = B("TextButton", b, f[t])
	b = closure(fn_1049849, {
		up7,
		t,
		x
	})
	B = v.MouseEnter
	B:Connect(b)
	b = closure(fn_7203934, {
		up4,
		T,
		up7,
		t,
		x
	})
	B = v.MouseLeave
	B:Connect(b)
	b = closure(fn_5249848, {
		t,
		up8,
		up6,
		up4,
		T,
		up9,
		up10,
		up7,
		e,
		x,
		u,
		up11,
		up12,
		up13,
		up14,
		up15,
		up16,
		up17,
		up18,
		up3,
		up19
	})
	h(T)
	h(u)
	h(x)
	h(e)
	B = v.MouseButton1Click
	B:Connect(b)
	h(t)
	goto L13784094
::L8550170::
	B = up5
	P = Vector2.new(1, .5)
	E = UDim2.new(1, - 8, .5, 0)
	H = UDim2.new(0, 14, 0, 14)
	Fe = Enum.Font.GothamBold
	L = {
		BackgroundTransparency = 1,
		AnchorPoint = P,
		Position = E,
		Size = H,
		Font = Fe,
		Text = (K and "\226\152\133") or "",
		TextSize = 11,
		TextColor3 = Color3.fromRGB(192, 132, 252),
		ZIndex = 13
	}
	A = B("TextLabel", L, f[t])
	f[u] = A
	goto L4550282
::L1454345::
	Qe = Color3.fromRGB(216, 180, 254)
	goto L10193681
::L8167388::
	i = o
	l = c
	K = not R
	if T then goto L3218422 end
::L15764929::
	t = c
	T = R == ""
	if e then goto L12776760 end
::L11204055::
	e = string.find
	u = string.lower(j)
	T = e(u, string.lower(R), 1, true)
::L12776760::
	K = T
::L3218422::
	c = l
	if K then goto L5306110 end
::L7023165::
	goto L4612504
::L5306110::
	table.insert(up2, {
		index = i,
		value = j
	})
	goto L7023165
::L10103990::
	if j:IsA("Frame") then goto L329083 end
::L1701660::
	goto L6603108
::L329083::
	j:Destroy()
	goto L1701660
end

function fn_2463252(arg1, arg2, arg3, arg4, arg5) -- entry L2463252, 4 blocks
::L2463252::
	CircleClick(up1, up2.X, up2.Y)
	if typeof(up3.LockedCallback)=="function" then goto L10624938 end
::L221658::
	c = up4.Notification
	c:Notify({
		Title = "Locked",
		Description = (up3.Label or "This button") .. " is currently locked."
	}, {
		Time = 2
	})
::L11082331::
	return
::L10624938::
	up3.LockedCallback()
	goto L11082331
end

function fn_2502920(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) -- entry L2502920, 80 blocks
::L2502920::
	o = O()
	N = O()
	T = arg9
	i = arg2
	j = arg6
	W = O()
	f[W] = arg3
	f[N] = arg4
	K = O()
	f[o] = arg5
	f[K] = arg7
	c = not checkCondition(arg8)
	if c then goto L15912309 end
::L13397770::
	d = f[N]
	if e then goto L5740564 end
::L14866330::
	d = closure(fn_16529760, {})
::L5740564::
	f[N] = d
	e = f[W] or false
	f[W] = e
	if f[K] then goto L16143174 end
::L6067508::
	if f[K] then goto L16250069 end
::L8298781::
	M = {
		up4.DescMetrics(j, Enum.Font.Gotham, 11, 150)
	}
	A = M[2]
	u = M[1]
	b = c
	L = A > 0
	if M then goto L15508662 end
::L5084069::
	c = b
	v = up5
	P = ThemeColor("Primary")
	H = UDim2.new(1, - 25, 0, L or 32)
	Je = UDim2.new(0, 0, 0, 0)
	Re = up5
	M = {
		BackgroundColor3 = P,
		BackgroundTransparency = .4,
		Size = H,
		Position = Je,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Text = "",
		ClipsDescendants = true,
		Children = {
			unpack({
				Re("UICorner", {
					CornerRadius = UDim.new(0, 6)
				})
			})
		}
	}
	L = v("TextButton", M, up6)
	v = O()
	f[v] = L
	up7(f[v], i)
	L = up5
	y = Color3.fromRGB(15, 15, 15)
	Y = UDim2.new(1, - 50, .5, - 9)
	Fe = UDim2.new(0, 36, 0, 18)
	me = up5
	ce = me("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	me = up5
	Re = Color3.fromRGB(100, 100, 100)
	z = {
		BackgroundColor3 = y,
		Position = Y,
		Size = Fe,
		BorderSizePixel = 0,
		Children = {
			ce,
			unpack({
				me("UIStroke", {
					Color = Re,
					Transparency = .8,
					Thickness = 2,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				})
			})
		}
	}
	P = "AnchorPoint"
	b = L("Frame", z, f[v])
	L = up5
	Qe = c
	z = "ImageLabel"
	E = Vector2.new(0, .5)
	y = "Size"
	H = UDim2.fromOffset(14, 14)
	Je = c
	Y = "Position"
	k = f[W]
	if me then goto L16678018 end
::L1418891::
	Fe = k
	if k then goto L8485488 end
::L6770657::
	Fe = UDim2.new(0, 2, .5, 0)
::L8485488::
	c = Je
	me = (f[W] and 0) or .5
	M = L(z, {
		[P] = E,
		[y] = H,
		[Y] = Fe,
		Image = "http://www.roblox.com/asset/?id=12266946128",
		ImageTransparency = me,
		BackgroundTransparency = 1,
		ImageColor3 = Color3.fromRGB(255, 255, 255)
	}, b)
	L = O()
	f[L] = M
	M = up5
	P = {
		Color = ThemeColor("Lit"),
		Rotation = 90
	}
	E = "BackgroundTransparency"
	z = M("UIGradient", P, f[L])
	M = O()
	f[M] = z
	Xe = c
	P = f[W]
	f[M].Enabled = P
	H = "Position"
	Y = 1
	RegisterLitGradient(f[M])
	z = up5
	P = "TextLabel"
	fe = c
	Je = UDim2.new(0, 10, 0, 4)
	Fe = "Size"
	Qe = UDim2.new(1, - 66, 0, 20)
	k = "Font"
	me = Enum.Font.GothamBold
	Ze = "TextColor3"
	de = f[W]
	ce = "Text"
	if Re then goto L6088125 end
::L13075975::
	Ge = de
	if de then goto L3348547 end
::L16474430::
	Ge = Color3.fromRGB(180, 180, 180)
::L3348547::
	c = Xe
	de = Enum.TextXAlignment.Left
	Ne = Enum.TextTruncate.AtEnd
	y = {
		[E] = Y,
		[H] = Je,
		[Fe] = Qe,
		[k] = me,
		[ce] = i,
		[Ze] = Ge,
		TextXAlignment = de,
		TextWrapped = false,
		TextScaled = true,
		TextTruncate = Ne,
		Children = {
			unpack({
				MakeTextConstraint(14, 8)
			})
		}
	}
	S = z(P, y, f[v])
	z = O()
	f[z] = S
	RegisterTranslatable(f[z], i)
	if A>0 then goto L16038096 end
::L8556186::
	H = c
	Y = f[o]
	P = c
	if Fe then goto L12111079 end
::L11511278::
	S = Y and false
	if y then goto L7595603 end
::L6741591::
	S = f[W]
::L7595603::
	c = P
	P = O()
	f[P] = S
	y = O()
	E = closure(fn_16639571, {
		y,
		P
	})
	f[y] = {}
	S = O()
	f[S] = E
	E = O()
	Y = closure(fn_15587703, {
		up8,
		L,
		P,
		M,
		z,
		K,
		o,
		up3,
		up2,
		N,
		S
	})
	f[E] = Y
	if f[K] then goto L4784514 end
::L10845163::
	f[E]()
	Y = f[v].Activated
	H = Y.Connect
	H(Y, closure(fn_4970902, {
		v,
		up9,
		P,
		E
	}))
	H = c
	Y = f[o]
	if Fe then goto L7020203 end
::L858020::
	c = H
	if Y then goto L706861 end
::L15135625::
	RegisterKeyLocked(f[v], f[o])
	if type(T)=="table" then goto L4352571 end
::L9780170::
	closure(fn_9123293, {
		P
	})
	return {["Update"]=closure(fn_586595, {P,E});["Get"]=k,["Frame"]=me}
::L4352571::
	H = c
	Y = f[K]
	if Fe then goto L7066326 end
::L9149730::
	Fe = i:lower()
	Y = Fe:gsub("%s+", "")
::L7066326::
	c = H
	Qe = {
		ipairs(T)
	}
	k = Qe[3]
	Fe = Qe[1]
	Je = Qe[2]
::L13108341::
	k, Qe = Fe(Je, k)
	if k then goto L8283736 end
::L4944199::
	goto L9780170
::L8283736::
	ce = c
	H = k
	me = Qe.Title
	if Ze then goto L2138735 end
::L12698819::
	me = Qe[1] or "Sub Toggle"
::L2138735::
	c = ce
	Ze = c
	ce = Qe.Default
	if Ge then goto L365077 end
::L12342030::
	ce = Qe[2] or false
::L365077::
	c = Ze
	Ge = c
	Ze = Qe.Callback
	if Xe then goto L9462800 end
::L7281449::
	de = c
	Xe = Qe[3]
	if fe then goto L5540705 end
::L316874::
	Xe = closure(fn_8917735, {})
::L5540705::
	Ze = Xe
::L9462800::
	c = Ge
	Xe = c
	Ge = O()
	f[Ge] = Ze
	Ze = Qe.SaveKey
	if de then goto L11791664 end
::L11831925::
	fe = c
	de = Qe.savekey
	if Re then goto L1800400 end
::L81180::
	de = Y .. ("_sub" .. H)
::L1800400::
	Ze = de
::L11791664::
	c = Xe
	Xe = O()
	f[Xe] = Ze
	Ze = Qe.Optional == true
	de = up2
	Oe = c
	de:RegisterKey(f[Xe])
	fe = c
	Re = not f[o]
	if ie then goto L2365941 end
::L11910152::
	Re = up3.HasKeyAccess()
::L2365941::
	de = Re
	if Re then goto L16248690 end
::L3580798::
	c = fe
	if de then goto L6711968 end
::L10647125::
	Oe = "TextButton"
	We = "BackgroundColor3"
	ne[1] = 0
	fe = up5
	ne[9] = not Ze
	ne[6] = "Visible"
	se = "Size"
	he = ThemeColor("Primary")
	ne[4] = "Active"
	ne[8] = c
	ae = UDim2
	ne[7] = ne[9]
	ne[3] = ""
	Ne = "BackgroundTransparency"
	Ce = ae.new
	cond = ne[9]
	ne[2] = 28
	oe = .48
	ae = Ce(1, - 38, ne[1], ne[2])
	Ce = "BorderSizePixel"
	ne[5] = f[P]
	ne[2] = "Text"
	ge = "AutoButtonColor"
	qe = 0
	ne[1] = false
	if ne[9] then goto L7766274 end
::L9798012::
	ne[9] = f[P]
	ne[7] = ne[9]
::L7766274::
	ne[14] = "UICorner"
	ne[16] = "CornerRadius"
	ne[10] = "Children"
	c = ne[8]
	ne[19] = "UDim"
	ne[8] = "ClipsDescendants"
	ne[12] = up5
	ne[9] = true
	ne[18] = ENV[ne[19]]
	ne[20] = 6
	ne[19] = "new"
	ne[17] = ne[18][ne[19]]
	ne[19] = 0
	ne[18] = ne[17](ne[19], ne[20])
	ne[15] = {
		[ne[16]] = ne[18]
	}
	ne[13] = {
		ne[12](ne[14], ne[15])
	}
	ne[11] = {
		unpack(ne[13])
	}
	Re = fe(Oe, {
		[We] = he,
		[Ne] = oe,
		[se] = ae,
		[Ce] = qe,
		[ge] = ne[1],
		[ne[2]] = ne[3],
		[ne[4]] = ne[5],
		[ne[6]] = ne[7],
		[ne[8]] = ne[9],
		[ne[10]] = ne[11]
	}, up6)
	fe = O()
	f[fe] = Re
	ne[11] = 0
	Re = up7
	ie = f[fe]
	ne[2] = 0
	ne[13] = 100
	ne[12] = 100
	ne[7] = "CornerRadius"
	Re(ie, me .. (" (" .. (i .. ")")))
	Re = up5
	oe = Color3.fromRGB(12, 12, 12)
	ne[1] = - 8
	Ce = UDim2
	ne[5] = "UICorner"
	ne[10] = "UDim"
	Ce = Ce.new(1, - 40, .5, ne[1])
	ne[3] = 16
	ne[1] = 30
	qe = UDim2.new(0, ne[1], ne[2], ne[3])
	ne[14] = "ApplyStrokeMode"
	ne[1] = "Children"
	ne[3] = up5
	ne[9] = ENV[ne[10]]
	ne[10] = "new"
	ne[8] = ne[9][ne[10]]
	ne[10] = 1
	ne[9] = ne[8](ne[10], ne[11])
	ne[6] = {
		[ne[7]] = ne[9]
	}
	ne[4] = ne[3](ne[5], ne[6])
	ne[3] = up5
	ne[6] = "UIStroke"
	ne[8] = "Color"
	ne[11] = "Color3"
	ne[18] = "Enum"
	ne[10] = ENV[ne[11]]
	ne[11] = "fromRGB"
	ne[9] = ne[10][ne[11]]
	ne[11] = 100
	ne[10] = ne[9](ne[11], ne[12], ne[13])
	ne[9] = "Transparency"
	ne[13] = 2
	ne[11] = .8
	ne[17] = ENV[ne[18]]
	ne[12] = "Thickness"
	ne[18] = "ApplyStrokeMode"
	ne[16] = ne[17][ne[18]]
	ne[17] = "Border"
	ne[15] = ne[16][ne[17]]
	ne[7] = {
		[ne[8]] = ne[10],
		[ne[9]] = ne[11],
		[ne[12]] = ne[13],
		[ne[14]] = ne[15]
	}
	ne[5] = {
		ne[3](ne[6], ne[7])
	}
	ne[2] = {
		ne[4],
		unpack(ne[5])
	}
	Oe = Re("Frame", {
		BackgroundColor3 = oe,
		Position = Ce,
		Size = qe,
		BorderSizePixel = 0,
		[ne[1]] = ne[2]
	}, f[fe])
	Re = O()
	oe = "AnchorPoint"
	f[Re] = Oe
	Ne = "ImageLabel"
	Oe = f[Re].UIStroke
	ie = O()
	f[ie] = Oe
	Oe = up5
	ne[3] = c
	Ce = Vector2
	ne[1] = 12
	Ce = Ce.new(0, .5)
	ne[2] = ce
	se = "Size"
	qe = UDim2.fromOffset(12, ne[1])
	ne[1] = c
	ae = "Position"
	if ce then goto L11422136 end
::L14311097::
	ge = ne[2]
	if ne[2] then goto L10955364 end
::L5129754::
	ne[4] = "UDim2"
	ne[6] = .5
	ne[3] = ENV[ne[4]]
	ne[7] = 0
	ne[4] = "new"
	ne[2] = ne[3][ne[4]]
	ne[5] = 2
	ne[4] = 0
	ne[3] = ne[2](ne[4], ne[5], ne[6], ne[7])
	ge = ne[3]
::L10955364::
	ne[10] = "Color3"
	c = ne[1]
	ne[8] = 0
	ne[7] = c
	ne[2] = "http://www.roblox.com/asset/?id=12266946128"
	ne[9] = ENV[ne[10]]
	ne[6] = ce and ne[8]
	ne[5] = c
	ne[1] = "Image"
	ne[5] = "BackgroundTransparency"
	ne[3] = "ImageTransparency"
	ne[7] = .5
	ne[4] = ne[6] or ne[7]
	ne[10] = "fromRGB"
	ne[12] = 255
	ne[7] = "ImageColor3"
	ne[8] = ne[9][ne[10]]
	ne[6] = 1
	ne[11] = 255
	ne[10] = 255
	ne[9] = ne[8](ne[10], ne[11], ne[12])
	he = {
		[oe] = Ce,
		[se] = qe,
		[ae] = ge,
		[ne[1]] = ne[2],
		[ne[3]] = ne[4],
		[ne[5]] = ne[6],
		[ne[7]] = ne[9]
	}
	ne[4] = 0
	ne[7] = 0
	We = Oe(Ne, he, f[Re])
	Oe = O()
	ne[5] = 0
	f[Oe] = We
	ne[8] = c
	We = up5
	ne[9] = ce
	oe = {
		Color = ThemeColor("Lit"),
		Rotation = 90
	}
	ae = 1
	Ne = We("UIGradient", oe, f[Oe])
	ne[3] = 12
	We = O()
	f[We] = Ne
	f[We].Enabled = ce
	ne[2] = "UDim2"
	qe = "Position"
	RegisterLitGradient(f[We])
	Ne = up5
	ne[1] = ENV[ne[2]]
	ne[6] = 1
	ne[10] = c
	Ce = "BackgroundTransparency"
	oe = "TextLabel"
	ne[2] = "new"
	ge = ne[1][ne[2]]
	ne[2] = 0
	ne[1] = ge(ne[2], ne[3], ne[4], ne[5])
	ne[4] = "UDim2"
	ne[5] = - 54
	ne[3] = ENV[ne[4]]
	ge = "Size"
	ne[4] = "new"
	ne[2] = ne[3][ne[4]]
	ne[4] = 1
	ne[3] = ne[2](ne[4], ne[5], ne[6], ne[7])
	ne[2] = "Font"
	ne[7] = "Enum"
	ne[6] = ENV[ne[7]]
	ne[7] = "Font"
	ne[5] = ne[6][ne[7]]
	ne[6] = "GothamBold"
	ne[4] = ne[5][ne[6]]
	ne[5] = "Text"
	ne[6] = "TextColor3"
	if ce then goto L13840307 end
::L588233::
	ne[7] = ne[9]
	if ne[9] then goto L1546015 end
::L3978513::
	ne[11] = "Color3"
	ne[10] = ENV[ne[11]]
	ne[11] = "fromRGB"
	ne[13] = 150
	ne[12] = 145
	ne[9] = ne[10][ne[11]]
	ne[11] = 145
	ne[10] = ne[9](ne[11], ne[12], ne[13])
	ne[7] = ne[10]
::L1546015::
	c = ne[8]
	ne[13] = true
	ne[12] = "Enum"
	ne[11] = ENV[ne[12]]
	ne[8] = "TextXAlignment"
	ne[12] = "TextXAlignment"
	ne[10] = ne[11][ne[12]]
	ne[14] = "TextTruncate"
	ne[20] = 13
	ne[11] = "Left"
	ne[19] = "MakeTextConstraint"
	ne[9] = ne[10][ne[11]]
	ne[18] = "Enum"
	ne[17] = ENV[ne[18]]
	ne[10] = "TextWrapped"
	ne[18] = "TextTruncate"
	ne[16] = ne[17][ne[18]]
	ne[17] = "AtEnd"
	ne[11] = false
	ne[21] = 8
	ne[12] = "TextScaled"
	ne[15] = ne[16][ne[17]]
	ne[18] = ENV[ne[19]]
	ne[19] = {
		ne[18](ne[20], ne[21])
	}
	ne[17] = {
		unpack(ne[19])
	}
	ne[16] = "Children"
	he = Ne(oe, {
		[Ce] = ae,
		[qe] = ne[1],
		[ge] = ne[3],
		[ne[2]] = ne[4],
		[ne[5]] = me,
		[ne[6]] = ne[7],
		[ne[8]] = ne[9],
		[ne[10]] = ne[11],
		[ne[12]] = ne[13],
		[ne[14]] = ne[15],
		[ne[16]] = ne[17]
	}, f[fe])
	Ne = O()
	f[Ne] = he
	RegisterTranslatable(f[Ne], me)
	he = O()
	oe = O()
	f[he] = ce
	se = closure(fn_6681918, {
		up8,
		Oe,
		he,
		We,
		Ne,
		fe,
		o,
		up3,
		up2,
		Xe,
		Ge
	})
	f[oe] = se
	if f[Xe] then goto L159936 end
::L3444324::
	h(Xe)
	ae = f[fe]
	se = closure(fn_8515547, {
		fe,
		up8,
		he,
		Ne,
		Re,
		Oe,
		ie
	})
	Ce = ae.Activated
	qe = closure(fn_3490393, {
		P,
		fe,
		up9,
		he,
		oe
	})
	h(Ne)
	h(he)
	Ce:Connect(qe)
	Ce = f[oe]
	ne[4] = "SetInteractable"
	Ce()
	ae = f[P]
	h(We)
	se(ae)
	h(oe)
	h(Oe)
	ae = table
	ne[1] = "Frame"
	Ce = ae.insert
	h(ie)
	qe = f[y]
	ne[2] = f[fe]
	ne[3] = "Optional"
	h(Re)
	ge = {
		[ne[1]] = ne[2],
		[ne[3]] = Ze,
		[ne[4]] = se
	}
	h(Ge)
	h(fe)
	Ce(qe, ge)
	goto L13108341
::L159936::
	ne[6] = "Default"
	se = up2
	ge = "Type"
	ne[4] = c
	ne[2] = "Default"
	ae = f[Xe]
	ne[5] = Qe[ne[6]]
	ne[3] = ne[5]
	ne[1] = "SubToggle"
	if ne[5] then goto L6699647 end
::L10894989::
	ne[6] = c
	ne[8] = 2
	ne[7] = Qe[ne[8]]
	ne[8] = false
	ne[5] = ne[7] or ne[8]
	ne[3] = ne[5]
::L6699647::
	c = ne[4]
	ne[6] = "Get"
	ne[5] = closure(fn_4067629, {
		he,
		up8,
		Oe,
		We,
		Ne,
		fe,
		Ge
	})
	ne[4] = "Set"
	Ce = se.RegisterControl
	ne[7] = closure(fn_1128392, {
		he
	})
	Ce(se, ae, {
		[ge] = ne[1],
		[ne[2]] = ne[3],
		[ne[4]] = ne[5],
		[ne[6]] = ne[7]
	})
	goto L3444324
::L13840307::
	ne[14] = 205
	ne[13] = "Color3"
	ne[12] = ENV[ne[13]]
	ne[13] = "fromRGB"
	ne[11] = ne[12][ne[13]]
	ne[13] = 205
	ne[15] = 210
	ne[12] = ne[11](ne[13], ne[14], ne[15])
	ne[9] = ne[12]
	goto L588233
::L11422136::
	ne[6] = "UDim2"
	ne[5] = ENV[ne[6]]
	ne[6] = "new"
	ne[4] = ne[5][ne[6]]
	ne[6] = 0
	ne[7] = 16
	ne[9] = 0
	ne[8] = .5
	ne[5] = ne[4](ne[6], ne[7], ne[8], ne[9])
	ne[2] = ne[5]
	goto L14311097
::L6711968::
	de = up2
	fe = de:Get(f[Xe], nil)
	if fe~=nil then goto L7448552 end
::L16576564::
	goto L10647125
::L7448552::
	ce = fe
	goto L16576564
::L16248690::
	de = not IsFullLocked()
	goto L3580798
::L706861::
	H = table
	ce = closure(fn_10966201, {
		up3,
		up2,
		K,
		W,
		P,
		E
	})
	H.insert(up10, {
		saveKey = f[K],
		UpdateFn = ce
	})
	goto L15135625
::L7020203::
	Y = f[K]
	goto L858020
::L4784514::
	Y = up2
	Ge = closure(fn_12663072, {
		P,
		up8,
		L,
		M,
		z,
		S,
		N
	})
	Fe = f[K]
	de = closure(fn_15131030, {
		P
	})
	Y:RegisterControl(Fe, {
		Type = "Toggle",
		Default = f[W],
		Set = Ge,
		Get = de
	})
	goto L10845163
::L12111079::
	Y = not up3.HasKeyAccess()
	goto L11511278
::L16038096::
	S = up5
	me = UDim2.new(0, 10, 0, 22)
	Ze = UDim2.new(1, - 60, 0, A)
	Ge = Enum.Font.Gotham
	Re = Color3.fromRGB(130, 130, 145)
	P = S("TextLabel", {
		Name = "DescLabel",
		BackgroundTransparency = 1,
		Position = me,
		Size = Ze,
		Font = Ge,
		Text = u,
		TextColor3 = Re,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		TextSize = 11,
		ZIndex = 2
	}, f[v])
	RegisterTranslatable(P, j)
	goto L8556186
::L6088125::
	de = Color3.fromRGB(220, 220, 220)
	goto L13075975
::L16678018::
	k = UDim2.new(0, 19, .5, 0)
	goto L1418891
::L15508662::
	L = 28 + A
	goto L5084069
::L16250069::
	A = c
	B = c
	u = not f[o]
	if v then goto L6379603 end
::L11253773::
	u = up3.HasKeyAccess()
::L6379603::
	x = u
	if u then goto L5688807 end
::L15153676::
	c = B
	if x then goto L9068067 end
::L16555626::
	goto L8298781
::L9068067::
	x = up2
	B = x:Get(f[K], nil)
	if B~=nil then goto L3600718 end
::L4782029::
	goto L16555626
::L3600718::
	f[W] = B
	goto L4782029
::L5688807::
	x = not IsFullLocked()
	goto L15153676
::L16143174::
	x = up2
	x:RegisterKey(f[K])
	goto L6067508
::L15912309::
	return up1
end

function fn_2506201() -- entry L2506201, 3 blocks
::L2506201::
	if up1 then goto L11053006 end
::L4236365::
	up4()
	return
::L11053006::
	up1 = false
	up2 = nil
	up3.ShowSettingsPage()
	goto L4236365
end

function fn_2645053(arg1, arg2) -- entry L2645053, 5 blocks
::L2645053::
	i = arg2
	R = arg1
	if up1 then goto L8936754 end
::L5812297::
	if i then goto L12361262 end
::L8193357::
	return
::L12361262::
	c = up2
	c:Save("_opt_BgImageTransparency", R)
	goto L8193357
::L8936754::
	up1.ImageTransparency = R
	goto L5812297
end

function fn_2665110(arg1, arg2) -- entry L2665110, 1 blocks
::L2665110::
	c = up1
	R = up2
	d = c.Tween
	i = {
		BackgroundColor3 = Color3.fromRGB(10, 7, 18)
	}
	d(c, R, i, .2, Enum.EasingStyle.Quint)
	c = up1
	c:Tween(up3, {
		Transparency = .65
	}, .2)
	c = up1
	R = up4
	o = UDim2.new(0, 36, 0, 36)
	i = {
		Size = o,
		Position = UDim2.new(0, 12, 0, 10)
	}
	c:Tween(R, i, .2, Enum.EasingStyle.Quint)
	return
end

function fn_2683243(arg1, arg2, arg3) -- entry L2683243, 6 blocks
::L2683243::
	CircleClick(up1, up2.X, up2.Y)
	d = up3
	if R then goto L3480083 end
::L2064509::
	if d then goto L16095859 end
::L2077839::
	up6.OpenSlotPanel(up5)
	RefreshSlots()
::L14751773::
	return
::L16095859::
	up6.CloseSlotPanel()
	goto L14751773
::L3480083::
	d = up4 == up5
	goto L2064509
end

function fn_2721994(arg1) -- entry L2721994, 1 blocks
::L2721994::
	return unpack({c:JSONEncode(arg1)})
end

function fn_2732006(arg1, arg2, arg3, arg4, arg5) -- entry L2732006, 1 blocks
::L2732006::
	c = up1
	R = up2
	i = {
		BackgroundColor3 = Color3.fromRGB(22, 14, 38)
	}
	c:Tween(R, i, .2, Enum.EasingStyle.Quint)
	return
end

function fn_2742542(arg1, arg2, arg3, arg4) -- entry L2742542, 1 blocks
::L2742542::
	c = up1
	R = up2
	i = {
		BackgroundColor3 = Color3.new(up3 * .14, up4 * .14, up5 * .14)
	}
	c:Tween(R, i, .18, Enum.EasingStyle.Quint)
	c = up1
	c:Tween(up6, {
		Transparency = .45
	}, .18)
	return
end

function fn_2766523(arg1, arg2, arg3) -- entry L2766523, 1 blocks
::L2766523::
	return
end

function fn_2824777(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L2824777, 1 blocks
::L2824777::
	i = O()
	W = O()
	f[i] = arg2
	f[W] = nil
	c = Vector3.zero
	N = O()
	f[N] = c
	d = UDim2.new()
	o = O()
	f[o] = d
	c = arg1.InputBegan
	j = closure(fn_10728592, {
		W,
		N,
		i,
		o
	})
	c:Connect(j)
	c = up1.InputChanged
	j = closure(fn_3248862, {
		W,
		N,
		i,
		o
	})
	c:Connect(j)
	h(o)
	h(i)
	c = up1.InputEnded
	h(N)
	j = closure(fn_10795303, {
		W
	})
	d = c.Connect
	h(W)
	d(c, j)
	return
end

function fn_2886784(arg1) -- entry L2886784, 7 blocks
::L2886784::
	d = arg1
	if R then goto L9125067 end
::L5272757::
	d = up1
::L9125067::
	up2 = d
	i = up3
	if W then goto L6174215 end
::L10214729::
	if i then goto L5335613 end
::L854352::
	return
::L5335613::
	W = "(" .. (up2 .. "s)")
	up3.Text = W
	goto L854352
::L6174215::
	i = up3.Parent
	goto L10214729
end

function fn_2956410(arg1, arg2, arg3, arg4, arg5) -- entry L2956410, 3 blocks
::L2956410::
	R = arg1
	i = arg2
	W = arg3
	if not i then goto L2340558 end
::L1825085::
	R._Keys[i] = true
	R.RegisteredControls[i] = W
	return
::L2340558::
	return
end

function fn_2962907(arg1, arg2, arg3, arg4, arg5) -- entry L2962907, 6 blocks
::L2962907::
	if up1 then goto L2964017 end
::L8040607::
	if up6.Text~="" then goto L12628 end
::L12984229::
	up2.ActivateScroll(up3, up4, up5)
::L14155815::
	return
::L12628::
	up6.Text = ""
	goto L12984229
::L2964017::
	up2.ActivateScroll(up3, up4, up5)
	up2.RefreshSectionVisibility()
	goto L14155815
end

function fn_2973951(arg1, arg2) -- entry L2973951, 1 blocks
::L2973951::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .4
	}, .18)
	return
end

function fn_3079582(arg1, arg2, arg3) -- entry L3079582, 3 blocks
::L3079582::
	R = arg1
	if type(R)~="string" then goto L8397390 end
::L1109178::
	c = R:gsub("^%s+", "")
	d = c:gsub("%s+$", "")
	d:gsub("[ \t]+", " ")
	return unpack(c:gsub("\n[ \t]+","\n"))
::L8397390::
	return ""
end

function fn_3164141() -- entry L3164141, 1 blocks
::L3164141::
	up1.moved = false
	return
end

function fn_3174427(arg1) -- entry L3174427, 1 blocks
::L3174427::
	up1.Visible = false
	c = up1
	i = UDim2.new(0, 220, 0, 0)
	c.Size = i
	up2.Visible = false
	c = up2
	i = UDim2.new(1, - 8, 0, 0)
	c.Size = i
	c = up2
	i = UDim2.new(0, 0, 0, 0)
	c.CanvasSize = i
	return
end

function fn_3231578(arg1, arg2) -- entry L3231578, 1 blocks
::L3231578::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .35
	}, .18)
	return
end

function fn_3233106(arg1, arg2, arg3) -- entry L3233106, 8 blocks
::L3233106::
	c = ipairs
	W = up1
	W = {
		c(unpack({
			W:GetChildren()
		}))
	}
	i = W[3]
	R = W[2]
	W = W[1]
::L4479009::
	i, o = W(R, i)
	if i then goto L3531885 end
::L14671951::
	c = {}
	up2 = c
	up3 = {}
	K = c
	up4.Text = "None"
	i = up5
	j = up6
	if l then goto L10418361 end
::L15729167::
	i(j or "None")
	return
::L10418361::
	j = {}
	goto L15729167
::L3531885::
	if o:IsA("Frame") then goto L5348504 end
::L2601964::
	goto L4479009
::L5348504::
	o:Destroy()
	goto L2601964
end

function fn_3248862(arg1) -- entry L3248862, 13 blocks
::L3248862::
	R = arg1
	c = not up1
	if c then goto L8882507 end
::L2985613::
	d = R == up1
	if i then goto L9356112 end
::L8221096::
	W = c
	i = up1.UserInputType == Enum.UserInputType.MouseButton1
	if N then goto L3018657 end
::L7722983::
	c = W
	d = i
::L9356112::
	if d then goto L2695518 end
::L11972481::
	return
::L2695518::
	o = c
	W = c
	N = MainUIScale
	if j then goto L11489460 end
::L2765859::
	i = N
	if N then goto L14178100 end
::L13611885::
	i = i or 1
	W = R.Position - up2
	d = up3
	j = UDim2.new(up4.X.Scale, up4.X.Offset + (W.X / i), up4.Y.Scale, up4.Y.Offset + (W.Y / i))
	d.Position = j
	goto L11972481
::L14178100::
	i = MainUIScale.Scale
	goto L13611885
::L11489460::
	N = MainUIScale.Scale > 0
	goto L2765859
::L3018657::
	i = R.UserInputType == Enum.UserInputType.MouseMovement
	goto L7722983
::L8882507::
	return
end

function fn_3400534(arg1, arg2, arg3) -- entry L3400534, 1 blocks
::L3400534::
	return closure(fn_3630602, {up1})
end

function fn_3445462(arg1, arg2, arg3) -- entry L3445462, 3 blocks
::L3445462::
	if not up1 then goto L2706517 end
::L3316434::
	return up2
::L2706517::
	return true
end

function fn_3490393(arg1) -- entry L3490393, 3 blocks
::L3490393::
	if not up1 then goto L11301376 end
::L775181::
	CircleClick(up2, up3.X, up3.Y)
	c = not up4
	up4 = c
	up5()
	return
::L11301376::
	return
end

function fn_3520054(arg1, arg2) -- entry L3520054, 5 blocks
::L3520054::
	d = up1
	if R then goto L178208 end
::L10421763::
	if d then goto L9072229 end
::L557441::
	return
::L9072229::
	c = up1
	c:Destroy()
	goto L557441
::L178208::
	d = up1.Parent
	goto L10421763
end

function fn_3528672(arg1, arg2, arg3) -- entry L3528672, 1 blocks
::L3528672::
	c = up1
	R = up2
	i = {
		BackgroundColor3 = Color3.fromRGB(30, 18, 52)
	}
	c:Tween(R, i, .2, Enum.EasingStyle.Quint)
	return
end

function fn_3535664(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L3535664, 24 blocks
::L3535664::
	d = arg2
	R = arg1
	if i then goto L375336 end
::L11566819::
	W = up1
	d = W:Get("_opt_BgImageTransparency", .88)
::L375336::
	i = d
	W = type(R) ~= "string"
	if N then goto L7616960 end
::L8031208::
	W = R == ""
::L7616960::
	if W then goto L14552151 end
::L2252826::
	if up2(R) then goto L10454302 end
::L11917613::
	o = up4(R)
	if not o then goto L10742030 end
::L10982449::
	ClearBackgroundMedia()
	up3.Visible = true
	up3.Image = o
	up3.ImageTransparency = i
	c = up1
	c:Save("_opt_BgImage", R)
::L10386107::
	return
::L10742030::
	return
::L10454302::
	up3.Image = ""
	up3.Visible = false
	o = O()
	N = up4(R)
	f[o] = N
	if not f[o] then goto L4143823 end
::L11524164::
	N = not up6
	if j then goto L6575610 end
::L14838453::
	N = not up6.Parent
::L6575610::
	if N then goto L5538174 end
::L13063854::
	if up7 then goto L3977297 end
::L6126809::
	if up6 then goto L4483518 end
::L6997147::
	c = up1
	j = c.Save
	h(o)
	j(c, "_opt_BgImage", R)
	goto L10386107
::L4483518::
	j = closure(fn_15589216, {
		up6,
		o
	})
	pcall(j)
	c = task.spawn
	c(closure(fn_1009404, {
		up6
	}))
	if not up8 then goto L1083043 end
::L12217247::
	goto L6997147
::L1083043::
	c = task.spawn
	N = c(closure(fn_5260507, {
		up7,
		up6
	}))
	up8 = N
	goto L12217247
::L3977297::
	up7.Visible = true
	goto L6126809
::L5538174::
	c = pcall
	c(closure(fn_875084, {
		up6,
		up7
	}))
	goto L13063854
::L4143823::
	c = up5.Notification
	c:Notify({
		Title = "Video BG",
		Description = "Could not load video asset. File not found or unsupported."
	}, {
		Time = 3
	})
	ClearBackgroundMedia()
	return
::L14552151::
	ClearBackgroundMedia()
	c = up1
	c:Save("_opt_BgImage", "")
	return
end

function fn_3630602(arg1, arg2, arg3, arg4, arg5) -- entry L3630602, 1 blocks
::L3630602::
	return up1
end

function fn_3665984(arg1, arg2) -- entry L3665984, 10 blocks
::L3665984::
	R = arg1
	if R.UserInputType==Enum.UserInputType.MouseButton2 then goto L7705763 end
::L8571675::
	if R.UserInputType==Enum.UserInputType.Touch then goto L10588597 end
::L10470874::
	return
::L10588597::
	i = os.clock()
	W = Vector2.new(R.Position.X, R.Position.Y)
	d = (i - up2) <= .35
	if N then goto L15920764 end
::L3894306::
	if d then goto L2002922 end
::L6995035::
	up2 = i
	up3 = W
::L13201944::
	goto L10470874
::L2002922::
	up2 = 0
	up4()
	goto L13201944
::L15920764::
	d = (W - up3).Magnitude < 40
	goto L3894306
::L7705763::
	up1()
	return
end

function fn_3735338(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L3735338, 21 blocks
::L3735338::
	d = arg2
	if i then goto L12652568 end
::L11223933::
	d = {}
::L12652568::
	c = d
	up1 = c
	N = up2()
	table.clear(up3)
	W = closure(fn_6209870, {
		up1,
		up4
	})
	if up5 then goto L590292 end
::L14454641::
	W(N[1])
	j = c
	o = (# up3) == 0
	if K then goto L11783973 end
::L16667528::
	c = j
	if o then goto L12290087 end
::L16753094::
::L6738468::
	t = c
	l = c
	o = up6
	j = "Text"
	T = up5
	if e then goto L14941494 end
::L12260713::
	K = T
	c = t
	if T then goto L16275294 end
::L2175499::
	K = up1[up3[1]] or "None"
::L16275294::
	o[j] = K
	up8(up9.Text)
	return
::L14941494::
	e = up7
	T = e(up2(), 2)
	goto L12260713
::L12290087::
	up4(1)
	goto L16753094
::L11783973::
	o = (# up1) > 0
	goto L16667528
::L590292::
	T = {
		ipairs(N)
	}
	K = T[2]
	l = T[3]
	j = T[1]
::L4905384::
	l, T = j(K, l)
	if l then goto L16678964 end
::L9688176::
	j = c
	o = (# up3) == 0
	if K then goto L4262192 end
::L6851144::
	c = j
	if o then goto L11137251 end
::L9790176::
	goto L6738468
::L11137251::
	up4(1)
	goto L9790176
::L4262192::
	o = (# up1) > 0
	goto L6851144
::L16678964::
	W(T)
	goto L4905384
end

function fn_3817529(arg1) -- entry L3817529, 1 blocks
::L3817529::
	math.floor((arg1 / up1) + .5)
	return i*up1
end

function fn_3832728(arg1, arg2) -- entry L3832728, 1 blocks
::L3832728::
	up1.Text = "COPY LINK"
	R = up2
	up1.TextColor3 = R
	c = up3
	R = up4
	i = {
		BackgroundColor3 = Color3.new(up5 * .12, up6 * .12, up7 * .12)
	}
	c:Tween(R, i, .25, Enum.EasingStyle.Quint)
	return
end

function fn_3876600(arg1, arg2, arg3, arg4) -- entry L3876600, 1 blocks
::L3876600::
	c = up1
	c:Tween(up2, {
		Transparency = .78
	}, .28)
	c = up1
	c:Tween(up3, {
		BackgroundTransparency = .1
	}, .28)
	return
end

function fn_3884146(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L3884146, 28 blocks
::L3884146::
	R = O()
	f[R] = arg1
	N = arg4
	W = arg3
	i = arg2
	d = not f[R]
	if o then goto L10527777 end
::L8558291::
	d = not i
::L10527777::
	if d then goto L8975042 end
::L10375767::
	K = c
	T = c
	N = N or 4
	W = W or "Y"
	l = W == "X"
	if t then goto L9155174 end
::L5133318::
	j = l
	if l then goto L7615602 end
::L12419266::
	j = i.AbsoluteContentSize.Y
::L7615602::
	c = K
	t = c
	l = c
	T = W == "X"
	if e then goto L728310 end
::L1736098::
	K = T
	if T then goto L4745104 end
::L11710248::
	K = f[R].AbsoluteSize.Y
::L4745104::
	c = l
	if K<2 then goto L2839090 end
::L3141014::
	j = UnscaledLayout(j)
	T = UnscaledLayout
	K = T(unpack({
		math.max(K, 0)
	}))
	if j>0 then goto L15925392 end
::L5317779::
	B = math.max(j, 0)
	u = O()
	f[u] = j > (K + 1)
	if W=="X" then goto L14991310 end
::L15921026::
	x = f[R]
	L = UDim2.new(0, 0, 0, B)
	x.CanvasSize = L
	if not f[u] then goto L8187704 end
::L11779420::
::L10966008::
	f[R].ScrollingEnabled = true
	v = closure(fn_6421254, {
		R,
		u
	})
	h(R)
	x = pcall
	h(u)
	x(v)
	return
::L8187704::
	x = f[R]
	L = Vector2.new(f[R].CanvasPosition.X, 0)
	x.CanvasPosition = L
	goto L11779420
::L14991310::
	x = f[R]
	L = UDim2.new(0, B, 0, 0)
	x.CanvasSize = L
	if not f[u] then goto L881165 end
::L5543294::
	goto L10966008
::L881165::
	x = f[R]
	L = Vector2.new(0, f[R].CanvasPosition.Y)
	x.CanvasPosition = L
	goto L5543294
::L15925392::
	j = j + N
	goto L5317779
::L2839090::
	T = c
	e = c
	t = W == "X"
	if x then goto L15089760 end
::L4024875::
	l = t
	if t then goto L7068096 end
::L2863724::
	l = f[R].Size.Y.Offset
::L7068096::
	K = l
	goto L3141014
::L15089760::
	t = f[R].Size.X.Offset
	goto L4024875
::L728310::
	T = f[R].AbsoluteSize.X
	goto L1736098
::L9155174::
	l = i.AbsoluteContentSize.X
	goto L5133318
::L8975042::
	return
end

function fn_3909995(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L3909995, 31 blocks
::L3909995::
	W = arg3
	i = arg2
	N = arg4
	R = O()
	d = not N
	f[R] = arg1
	if o then goto L11147271 end
::L11620975::
	if d then goto L9512379 end
::L15124578::
	d = not N
	if o then goto L12682926 end
::L7316047::
	if d then goto L7833940 end
::L5873019::
	o = 1
	j = 1
	c = ipairs
	t = {
		c(up3)
	}
	T = t[1]
	K = t[2]
	l = t[3]
::L1309916::
	l, e = T(K, l)
	if l then goto L3785965 end
::L14269623::
	l = O()
	f[l] = ((j > o) and 1) or (- 1)
	u = {
		ipairs(up3)
	}
	T = u[1]
	e = u[3]
	t = u[2]
::L8816366::
	e, B = T(t, e)
	if e then goto L752728 end
::L11363531::
	if not N then goto L16404263 end
::L3024511::
	K = f[R]
	e = UDim2.new(0, 0, 0, 0)
	K.Position = e
	f[R].Visible = true
	up1 = false
::L7038792::
	T = up4
	e = {
		TextColor3 = Color3.fromRGB(255, 255, 255)
	}
	T:Tween(i, e, .22, Enum.EasingStyle.Quint)
	e = UDim2.new(0, 0, 0, 3)
	W.Size = e
	W.Visible = true
	T = up4
	e = {
		Size = UDim2.new(.5, 0, 0, 3)
	}
	A = Enum.EasingStyle.Back
	b = Enum
	h(l)
	T:Tween(W, e, .3, A, b.EasingDirection.Out)
	T = f[R]
	up2 = T
	h(R)
	return
::L16404263::
	T = task
	e = closure(fn_16498339, {
		R,
		l,
		up4,
		up1
	})
	T.delay(.15, e)
	goto L7038792
::L752728::
	u = O()
	f[u] = B
	B = u
	u = up4
	v = f[B].tabButton
	L = {
		TextColor3 = Color3.fromRGB(130, 120, 155)
	}
	u:Tween(v, L, .2, Enum.EasingStyle.Quint)
	if f[B].tabUnderline.Visible then goto L6743622 end
::L11557910::
	A = c
	u = f[B].scrollFrame.Visible
	if v then goto L4249926 end
::L6640866::
	c = A
	if u then goto L9156906 end
::L6526678::
	h(B)
	goto L8816366
::L9156906::
	u = f[B].scrollFrame
	A = O()
	f[A] = u
	if not N then goto L734865 end
::L10749148::
	f[A].Visible = false
	v = f[A]
	M = UDim2.new(0, 0, 0, 0)
	v.Position = M
::L5735502::
	h(A)
	goto L6526678
::L734865::
	up1 = true
	v = up4
	b = f[A]
	M = {
		Position = UDim2.new((- 0.04) * f[l], 0, 0, 0)
	}
	v:Tween(b, M, .2, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
	M = closure(fn_13427803, {
		A
	})
	task.delay(.2, M)
	goto L5735502
::L4249926::
	u = f[B].scrollFrame ~= f[R]
	goto L6640866
::L6743622::
	u = up4
	v = f[B].tabUnderline
	L = {
		Size = UDim2.new(0, 0, 0, 3)
	}
	M = Enum.EasingStyle.Quint
	A = u.Tween
	z = Enum.EasingDirection.In
	A(u, v, L, .15, M, z, closure(fn_4968699, {
		B
	}))
	goto L11557910
::L3785965::
	c = e.scrollFrame == up2
	t = l
	if c then goto L7544228 end
::L13530282::
	if e.scrollFrame==f[R] then goto L3268836 end
::L4999688::
	goto L1309916
::L3268836::
	j = t
	goto L4999688
::L7544228::
	c = t
	o = c
	goto L13530282
::L7833940::
	return
::L12682926::
	d = up2 == f[R]
	goto L7316047
::L9512379::
	return
::L11147271::
	d = up1
	goto L11620975
end

function fn_3944856(arg1, arg2) -- entry L3944856, 3 blocks
::L3944856::
	d = tonumber(up1.Text)
	if i then goto L9820680 end
::L12188034::
	d = up2
::L9820680::
	return d
end

function fn_4026069(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L4026069, 9 blocks
::L4026069::
	i = arg2
	K = c
	o = c
	R = arg1
	W = arg3
	j = W
	if W then goto L9730461 end
::L7538933::
	N = j
	if j then goto L590636 end
::L14416713::
	c = o
	j = i
	W = N or 1
	o = c
	K = c
	if i then goto L1481382 end
::L704341::
	N = j
	if j then goto L15592076 end
::L12547221::
	N = Vector2.zero
::L15592076::
	return (o.X-N.X)/W, (o.Y-N.Y)/W
::L1481382::
	j = i.AbsolutePosition
	goto L704341
::L590636::
	N = W
	goto L14416713
::L9730461::
	j = W ~= 0
	goto L7538933
end

function fn_4033376(arg1, arg2, arg3, arg4, arg5) -- entry L4033376, 5 blocks
::L4033376::
	d = IsFullLocked()
	if i then goto L9381146 end
::L16350857::
	if d then goto L5957810 end
::L7895983::
	return
::L5957810::
	up1.Visible = true
	goto L7895983
::L9381146::
	d = up1
	goto L16350857
end

function fn_4062653(arg1, arg2, arg3) -- entry L4062653, 14 blocks
::L4062653::
	W = arg3
	i = arg2
	R = arg1
	if R.IsAutoSave then goto L13157343 end
::L3905164::
	N = R:Get("_opt_AutoSave", true)
::L7808640::
	if not N then goto L8362816 end
::L3424944::
	R:Save(i, W)
	o = R:Get("_saveSlots", {})
	j = nil
	e = {
		ipairs(o)
	}
	T = e[2]
	l = e[1]
	t = e[3]
::L16389483::
	t, e = l(T, t)
	if t then goto L13481105 end
::L14061175::
	K = R:GetSnapshot()
	if j then goto L16246279 end
::L6902008::
	l = table.insert
	b = os.date("%Y-%m-%d %H:%M")
	l(o, 1, {
		name = "[Auto]",
		data = K,
		created = b,
		updated = os.date("%Y-%m-%d %H:%M")
	})
::L10150346::
	R:Save("_saveSlots", o)
	return
::L16246279::
	o[j].data = K
	l = o[j]
	e = os.date("%Y-%m-%d %H:%M")
	l.updated = e
	goto L10150346
::L13481105::
	K = t
	if e.name=="[Auto]" then goto L5205854 end
::L6998908::
	goto L16389483
::L5205854::
	j = K
	goto L14061175
::L8362816::
	return
::L13157343::
	N = R:IsAutoSave()
	goto L7808640
end

function fn_4067629(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L4067629, 11 blocks
::L4067629::
	i = arg2
	c = arg1 == true
	up1 = c
	t = c
	d = up2
	N = up3
	j = "Position"
	T = up1
	l = c
	if e then goto L3153312 end
::L16636160::
	K = T
	if T then goto L14818341 end
::L6531417::
	K = UDim2.new(0, 2, .5, 0)
::L14818341::
	c = l
	d:Tween(N, {
		[j] = K,
		ImageTransparency = (up1 and 0) or .5
	}, .3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	N = up1
	up4.Enabled = N
	t = c
	d = up2
	j = "TextColor3"
	N = up5
	T = up1
	l = c
	if e then goto L8162184 end
::L16132095::
	K = T
	if T then goto L11947752 end
::L626384::
	K = Color3.fromRGB(145, 145, 150)
::L11947752::
	d:Tween(N, {
		[j] = K
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	d = up2
	d:Tween(up6, {
		BackgroundTransparency = (up1 and .35) or .48
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	if i~=false then goto L15742940 end
::L264490::
	return
::L15742940::
	pcall(up7, up1)
	goto L264490
::L8162184::
	T = Color3.fromRGB(205, 205, 210)
	goto L16132095
::L3153312::
	T = UDim2.new(0, 16, .5, 0)
	goto L16636160
end

function fn_4125396(arg1, arg2) -- entry L4125396, 26 blocks
::L4125396::
	R = arg1
	c = ipairs
	N = up1
	N = {
		c(unpack({
			N:GetChildren()
		}))
	}
	W = N[3]
	i = N[2]
	N = N[1]
::L15008482::
	W, j = N(i, W)
	if W then goto L3209371 end
::L6126254::
	if R then goto L8874707 end
::L1608152::
	up2.Visible = false
	W = up2
	K = UDim2.new(1, - 8, 0, 0)
	W.Size = K
	if (#up4)<=0 then goto L6743297 end
::L13338593::
	W = up5
	u = UDim2.new(1, 0, 0, 14)
	A = Enum.Font.GothamBold
	z = Color3.fromRGB(140, 110, 190)
	W("TextLabel", {
		Name = "HistoryHeader",
		BackgroundTransparency = 1,
		Size = u,
		Font = A,
		Text = "Recent",
		TextColor3 = z,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = 1,
		ZIndex = 10000
	}, up1)
	T = {
		ipairs(up4)
	}
	j = T[2]
	o = T[1]
	K = T[3]
::L14269395::
	K, l = o(j, K)
	if K then goto L1569449 end
::L16633996::
	i = (((# up4) + 1) * 22) + 12
::L107422::
	if i<=0 then goto L15723399 end
::L9506278::
	o = up1
	l = UDim2.new(0, 220, 0, i)
	o.Size = l
	up1.Visible = true
	return
::L15723399::
	up3()
	return
::L1569449::
	T = O()
	f[T] = l
	l = T
	T = up5
	A = Color3.fromRGB(22, 20, 28)
	M = UDim2.new(1, 0, 0, 20)
	z = Enum.Font.Gotham
	P = "  " .. f[l]
	Y = Color3.fromRGB(180, 160, 200)
	Je = Enum.TextXAlignment.Left
	Xe = up5
	x = {
		BackgroundColor3 = A,
		BackgroundTransparency = .5,
		Size = M,
		Font = z,
		Text = P,
		TextColor3 = Y,
		TextSize = 10,
		TextXAlignment = Je,
		LayoutOrder = K + 1,
		ZIndex = 10000,
		Children = {
			unpack({
				Xe("UICorner", {
					CornerRadius = UDim.new(0, 4)
				})
			})
		}
	}
	t = T("TextButton", x, up1)
	x = closure(fn_16140210, {
		up6,
		l,
		up3
	})
	T = t.MouseButton1Click
	T:Connect(x)
	h(l)
	goto L14269395
::L6743297::
	up3()
	return
::L8874707::
	W = 0
	if up2.Visible then goto L15791327 end
::L12168368::
	if W<=0 then goto L7698827 end
::L16346022::
	o = math.min(W, 180)
	N = up2
	l = UDim2.new(1, - 8, 0, o)
	N.Size = l
	i = o + 12
	goto L107422
::L7698827::
	up3()
	return
::L15791327::
	W = up2.CanvasSize.Y.Offset
	goto L12168368
::L3209371::
	K = j:IsA("TextButton")
	if l then goto L7762481 end
::L4559913::
	K = j:IsA("TextLabel")
::L7762481::
	if K then goto L4530757 end
::L11107906::
	goto L15008482
::L4530757::
	K = j.Name ~= "SearchTreeScroll"
	if l then goto L1744301 end
::L3680734::
	if K then goto L15604168 end
::L8117203::
	goto L11107906
::L15604168::
	j:Destroy()
	goto L8117203
::L1744301::
	K = j ~= up2
	goto L3680734
end

function fn_4159269(arg1, arg2, arg3, arg4) -- entry L4159269, 8 blocks
::L4159269::
	R = arg1
	i = arg2 or 2
	if (#R)==0 then goto L720490 end
::L2723722::
	if (#R)<=i then goto L15262281 end
::L9431555::
	W = {}
	o = i
	K = 1
	l = 1 < 0
	j = 1 - 1
::L12120674::
	j = j + K
	if (l and (j>=o)) or ((not l) and (j<=o)) then goto L5741326 end
::L5163897::
	return table.concat(W,", ")..("  +"..((#R)-i))
::L5741326::
	N = j
	T = R[N]
	W[N] = T
	goto L12120674
::L15262281::
	return unpack({table.concat(R,", ")})
::L720490::
	return "None"
end

function fn_4211525(arg1, arg2, arg3, arg4) -- entry L4211525, 6 blocks
::L4211525::
	N = {
		ipairs(up1.List)
	}
	R = N[2]
	i = N[3]
	W = N[1]
::L5278974::
	i, o = W(R, i)
	if i then goto L8859123 end
::L15162563::
	return false
::L8859123::
	if o==up2.favKey then goto L13337920 end
::L11839973::
	goto L5278974
::L13337920::
	return true
end

function fn_4214084(arg1, arg2) -- entry L4214084, 1 blocks
::L4214084::
	up1 = arg1
	return unpack({up2(R)})
end

function fn_4214589(arg1, arg2, arg3, arg4, arg5) -- entry L4214589, 12 blocks
::L4214589::
	R = O()
	f[R] = arg1
	if up1._busy then goto L13122049 end
::L3967486::
	up1._busy = true
	up1._pending = nil
	i = closure(fn_9272005, {
		up1,
		R
	})
	if f[R]=="en" then goto L8404346 end
::L1512675::
	c = task.spawn
	c(closure(fn_16010888, {
		up1,
		R
	}))
	h(R)
	return
::L8404346::
	j = {
		pairs(up1.RegisteredElements)
	}
	N = j[3]
	W = j[2]
	o = j[1]
::L1504490::
	N, K = o(W, N)
	if N then goto L462008 end
::L9379095::
	i()
	return
::L462008::
	c = O()
	f[c] = N
	j = c
	c = O()
	f[c] = K
	K = c
	l = f[j]
	if T then goto L9978916 end
::L9247898::
	if l then goto L13713124 end
::L4910177::
	h(K)
	h(j)
	goto L1504490
::L13713124::
	T = closure(fn_16736119, {
		j,
		K
	})
	pcall(T)
	goto L4910177
::L9978916::
	l = f[j].Parent
	goto L9247898
::L13122049::
	i = f[R]
	up1._pending = i
	return
end

function fn_4223968(arg1) -- entry L4223968, 5 blocks
::L4223968::
	c = string.lower
	R = c(unpack({
		tostring(up1)
	}))
	d = R == "developer"
	if i then goto L6423453 end
::L15258988::
	W = c
	i = R == "v.developer"
	if N then goto L244460 end
::L10412247::
	i = string.find(R, "developer", 1, true) ~= nil
::L244460::
	d = i
::L6423453::
	return d
end

function fn_4236642(arg1) -- entry L4236642, 1 blocks
::L4236642::
	c = up1
	R = up2
	i = {
		BackgroundColor3 = Color3.new(up3 * .28, up4 * .28, up5 * .28)
	}
	c:Tween(R, i, .12, Enum.EasingStyle.Quint)
	c = up1
	c:Tween(up6, {
		Transparency = .15
	}, .12)
	return
end

function fn_4237553(arg1, arg2, arg3, arg4) -- entry L4237553, 1 blocks
::L4237553::
	d = Instance.new("VideoFrame")
	up1 = d
	up1.Name = "BodyVideo"
	up1.BackgroundTransparency = 1
	up1.BorderSizePixel = 0
	c = up1
	W = UDim2.new(1, 0, 1, 0)
	c.Size = W
	up1.Visible = true
	up1.Looped = true
	up1.Volume = 0
	up1.ZIndex = 0
	i = up2
	up1.Parent = i
	return
end

function fn_4276762(arg1, arg2) -- entry L4276762, 1 blocks
::L4276762::
	up1.PinAbsToOffset(up2, up3, up4.Scale)
	return
end

function fn_4315777(arg1, arg2, arg3, arg4, arg5) -- entry L4315777, 1 blocks
::L4315777::
	N = O()
	W = O()
	f[W] = arg3
	f[N] = arg4
	ne[11] = "NumberSequenceKeypoint"
	o = O()
	f[o] = arg5
	c = up1
	v = Color3.fromRGB(4, 2, 10)
	b = UDim2
	ne[7] = "NumberSequenceKeypoint"
	K = {
		Visible = false,
		Active = true,
		BackgroundTransparency = .5,
		BackgroundColor3 = v,
		Size = b.new(1, 0, 1, 0),
		ZIndex = 20
	}
	d = c("Frame", K, up2)
	ne[3] = "UDim"
	j = O()
	f[j] = d
	ne[14] = 0
	c = up1
	ne[9] = 1
	B = Vector2.new(.5, .5)
	A = UDim2.new(.5, 0, .5, 0)
	L = Color3.fromRGB(11, 8, 18)
	z = UDim2.new
	y = f[W]
	Y = f[N]
	ne[15] = 1
	S = z(0, y, 0, Y)
	Y = up1
	H = Y("UICorner", {
		CornerRadius = UDim.new(0, 12)
	})
	Y = up1
	ce = Color3.fromRGB(140, 90, 220)
	k = {
		Color = ce,
		Transparency = .6,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}
	ne[8] = 0
	Fe = Y("UIStroke", k)
	Y = up1
	Ze = Color3.fromRGB(80, 40, 160)
	Re = UDim2.new
	ne[4] = 12
	Oe = Re(1, 0, .45, 0)
	We = UDim2.new(0, 0, 0, 0)
	se = up1
	ne[2] = ENV[ne[3]]
	ne[3] = "new"
	ne[1] = ne[2][ne[3]]
	ne[12] = 1
	ne[3] = 0
	ne[2] = ne[1](ne[3], ne[4])
	Ce = se("UICorner", {
		CornerRadius = ne[2]
	})
	ne[1] = "Transparency"
	ne[4] = "NumberSequence"
	se = up1
	ne[3] = ENV[ne[4]]
	ne[4] = "new"
	ne[2] = ne[3][ne[4]]
	ne[6] = ENV[ne[7]]
	ne[7] = "new"
	ne[5] = ne[6][ne[7]]
	ne[7] = 0
	ne[6] = ne[5](ne[7], ne[8])
	ne[8] = "NumberSequenceKeypoint"
	ne[7] = ENV[ne[8]]
	ne[8] = "new"
	ne[5] = ne[7][ne[8]]
	ne[8] = 1
	ne[7] = {
		ne[5](ne[8], ne[9])
	}
	ne[4] = {
		ne[6],
		unpack(ne[7])
	}
	ne[3] = ne[2](ne[4])
	ne[2] = "Rotation"
	ne[4] = 90
	Je = Y("Frame", {
		BackgroundColor3 = Ze,
		BackgroundTransparency = .92,
		BorderSizePixel = 0,
		Size = Oe,
		Position = We,
		ZIndex = 21,
		Children = {
			Ce,
			unpack({
				se("UIGradient", {
					[ne[1]] = ne[3],
					[ne[2]] = ne[4]
				})
			})
		}
	})
	Y = up1
	de = Vector2.new(.5, 0)
	Re = UDim2.new(.5, 0, 0, 14)
	ie = UDim2.new(0, 20, 0, 20)
	k = Y("ImageLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = de,
		Position = Re,
		Size = ie,
		Image = arg2,
		ImageColor3 = Color3.fromRGB(190, 140, 255),
		ZIndex = 22
	})
	Y = up1
	fe = Vector2.new(.5, 0)
	ne[13] = 0
	Oe = UDim2.new(.5, 0, 0, 38)
	ne[3] = "Enum"
	We = UDim2.new(1, - 24, 0, 16)
	Ne = Enum.Font.FredokaOne
	Ce = Color3.fromRGB(210, 175, 255)
	ne[2] = ENV[ne[3]]
	ne[3] = "TextXAlignment"
	ne[1] = ne[2][ne[3]]
	ne[2] = "Center"
	ge = ne[1][ne[2]]
	ne[1] = "ZIndex"
	ne[2] = 22
	Qe = Y("TextLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = fe,
		Position = Oe,
		Size = We,
		Font = Ne,
		Text = arg1,
		TextColor3 = Ce,
		TextSize = 15,
		TextXAlignment = ge,
		[ne[1]] = ne[2]
	})
	Y = up1
	de = Color3.fromRGB(160, 100, 255)
	Ne = Vector2.new(.5, 0)
	oe = UDim2
	ne[5] = "Transparency"
	ne[3] = "UIGradient"
	he = oe.new
	ne[1] = 1
	oe = he(.5, 0, 0, 57)
	Ce = UDim2.new(.65, 0, 0, ne[1])
	ne[1] = up1
	ne[8] = "NumberSequence"
	ne[7] = ENV[ne[8]]
	ne[8] = "new"
	ne[6] = ne[7][ne[8]]
	ne[10] = ENV[ne[11]]
	ne[11] = "new"
	ne[9] = ne[10][ne[11]]
	ne[11] = 0
	ne[10] = ne[9](ne[11], ne[12])
	ne[12] = "NumberSequenceKeypoint"
	ne[11] = ENV[ne[12]]
	ne[12] = "new"
	ne[9] = ne[11][ne[12]]
	ne[12] = .2
	ne[11] = ne[9](ne[12], ne[13])
	ne[13] = "NumberSequenceKeypoint"
	ne[12] = ENV[ne[13]]
	ne[13] = "new"
	ne[9] = ne[12][ne[13]]
	ne[13] = .8
	ne[12] = ne[9](ne[13], ne[14])
	ne[14] = "NumberSequenceKeypoint"
	ne[13] = ENV[ne[14]]
	ne[14] = "new"
	ne[9] = ne[13][ne[14]]
	ne[14] = 1
	ne[13] = {
		ne[9](ne[14], ne[15])
	}
	ne[8] = {
		ne[10],
		ne[11],
		ne[12],
		unpack(ne[13])
	}
	ne[7] = ne[6](ne[8])
	ne[4] = {
		[ne[5]] = ne[7]
	}
	ne[2] = {
		ne[1](ne[3], ne[4])
	}
	l = {
		Visible = false,
		AnchorPoint = B,
		Position = A,
		BackgroundColor3 = L,
		BackgroundTransparency = 0,
		Size = S,
		ZIndex = 2000,
		Children = {
			H,
			Fe,
			Je,
			k,
			Qe,
			unpack({
				Y("Frame", {
					BackgroundColor3 = de,
					BackgroundTransparency = .72,
					BorderSizePixel = 0,
					AnchorPoint = Ne,
					Position = oe,
					Size = Ce,
					ZIndex = 22,
					Children = {
						unpack(ne[2])
					}
				})
			})
		}
	}
	d = c("Frame", l, up2)
	K = O()
	ne[1] = "UDim"
	f[K] = d
	c = up1
	B = Vector2.new
	ne[2] = 2
	u = B(.5, 0)
	v = UDim2.new(.5, 0, 0, 64)
	b = UDim2.new(1, - 16, 1, - 100)
	Y = Enum.ScrollingDirection.Y
	Fe = Enum.AutomaticSize.Y
	k = Enum.ElasticBehavior.WhenScrollable
	ce = UDim2.new(0, 0, 0, 0)
	de = up1
	We = Enum.HorizontalAlignment.Center
	he = Enum.SortOrder.LayoutOrder
	fe = de("UIListLayout", {
		HorizontalAlignment = We,
		SortOrder = he,
		Padding = UDim.new(0, 4)
	})
	de = up1
	he = UDim.new(0, 3)
	se = UDim.new(0, 3)
	ae = UDim.new(0, 2)
	ge = ENV[ne[1]]
	ne[1] = "new"
	qe = ge[ne[1]]
	ne[1] = 0
	T = {
		BackgroundTransparency = 1,
		AnchorPoint = u,
		Position = v,
		Size = b,
		Active = true,
		ScrollBarThickness = 0,
		ScrollBarImageTransparency = 1,
		ScrollingDirection = Y,
		AutomaticCanvasSize = Fe,
		ElasticBehavior = k,
		CanvasSize = ce,
		ZIndex = 22,
		Children = {
			fe,
			unpack({
				de("UIPadding", {
					PaddingTop = he,
					PaddingBottom = se,
					PaddingLeft = ae,
					PaddingRight = qe(ne[1], ne[2])
				})
			})
		}
	}
	c("ScrollingFrame", T, f[K])
	c = up1
	u = Color3.fromRGB
	ne[3] = "Enum"
	A = u(30, 18, 52)
	M = Vector2.new(.5, 1)
	S = UDim2.new(.52, 0, 0, 24)
	y = UDim2.new(.5, 0, 1, - 9)
	Fe = Color3.fromRGB(180, 135, 255)
	Je = Enum.Font.GothamBold
	fe = up1
	Re = fe("UICorner", {
		CornerRadius = UDim.new(0, 6)
	})
	fe = up1
	oe = Color3.fromRGB(140, 90, 220)
	ne[2] = ENV[ne[3]]
	ne[3] = "ApplyStrokeMode"
	ne[1] = ne[2][ne[3]]
	ne[2] = "Border"
	t = {
		Name = "CloseBtn",
		BackgroundColor3 = A,
		BackgroundTransparency = 0,
		AnchorPoint = M,
		Size = S,
		Position = y,
		Text = "Close",
		TextColor3 = Fe,
		Font = Je,
		TextSize = 11,
		AutoButtonColor = false,
		ZIndex = 22,
		Children = {
			Re,
			unpack({
				fe("UIStroke", {
					Color = oe,
					Transparency = .65,
					Thickness = 1,
					ApplyStrokeMode = ne[1][ne[2]]
				})
			})
		}
	}
	d = c("TextButton", t, f[K])
	T = O()
	f[T] = d
	c = f[T].MouseEnter
	t = closure(fn_7109094, {
		up3,
		T
	})
	x = O()
	c:Connect(t)
	c = f[T].MouseLeave
	t = closure(fn_3528672, {
		up3,
		T
	})
	c:Connect(t)
	t = O()
	f[t] = false
	closure(fn_12516936, {
		t,
		j,
		K,
		W,
		N,
		up3
	})
	c = closure(fn_22186, {
		t,
		up3,
		K,
		W,
		N,
		j,
		o
	})
	f[x] = c
	closure(fn_7247867, {
		t
	})
	c = f[T].MouseButton1Click
	c:Connect(f[x])
	c = f[j].InputBegan
	u = closure(fn_8790158, {
		up4,
		x
	})
	c:Connect(u)
	return f[K], l, f[j], e, f[x], B
end

function fn_4319870() -- entry L4319870, 1 blocks
::L4319870::
	return unpack({JsonDecode(up1)})
end

function fn_4351594(arg1, arg2, arg3, arg4) -- entry L4351594, 1 blocks
::L4351594::
	up1 = false
	RefreshAllLayouts()
	return
end

function fn_4360230(arg1, arg2, arg3) -- entry L4360230, 3 blocks
::L4360230::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .3
	}, .2, Enum.EasingStyle.Quint)
	if up3 then goto L14871677 end
::L16416948::
	return
::L14871677::
	c = up1
	R = up3
	i = {
		TextColor3 = Color3.fromRGB(210, 185, 255)
	}
	c:Tween(R, i, .2)
	goto L16416948
end

function fn_4372470(arg1, arg2, arg3, arg4, arg5) -- entry L4372470, 1 blocks
::L4372470::
	DebouncedFitScrollCanvas(up1, up2, "Y", 4)
	return
end

function fn_4407748(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L4407748, 10 blocks
::L4407748::
	d = up1.ResolveFontPreset(arg1)
	i = O()
	f[i] = d
	c = up2
	c:Save("_opt_UIFont", f[i].Name)
	c = {
		Regular = f[i].Regular,
		Bold = f[i].Bold,
		Display = f[i].Display
	}
	W = O()
	f[W] = c
	c = ipairs
	j = up3
	j = {
		c(unpack({
			j:GetDescendants()
		}))
	}
	N = j[2]
	o = j[3]
	j = j[1]
::L16046929::
	o, l = j(N, o)
	if o then goto L8445161 end
::L9777957::
	h(W)
	h(i)
	return
::L8445161::
	c = O()
	f[c] = l
	l = c
	t = f[l]
	T = t:IsA("TextLabel")
	if e then goto L15221055 end
::L15474607::
	x = f[l]
	e = c
	t = x:IsA("TextButton")
	if B then goto L1516703 end
::L1703305::
	x = f[l]
	t = x:IsA("TextBox")
::L1516703::
	T = t
::L15221055::
	if T then goto L16352292 end
::L1268950::
	h(l)
	goto L16046929
::L16352292::
	T = up4[f[l].Font] or "Regular"
	t = O()
	x = closure(fn_8030945, {
		l,
		W,
		t,
		i
	})
	f[t] = T
	pcall(x)
	h(t)
	goto L1268950
end

function fn_4413930(arg1, arg2, arg3) -- entry L4413930, 17 blocks
::L4413930::
	d = arg2
	R = arg1
	if i then goto L14232641 end
::L16118991::
	d = {}
::L14232641::
	K = "AccentBar"
	j = "Name"
	i = d
	N = "Frame"
	l = "BackgroundColor3"
	c = up1
	t = c
	T = ThemeColor("Accent")
	if x then goto L2321543 end
::L6960820::
	x = c
	e = i.Color
	if B then goto L15953996 end
::L6370633::
	e = Color3.fromRGB(192, 132, 252)
::L15953996::
	T = e
::L2321543::
	c = t
	t = "BackgroundTransparency"
	x = "BorderSizePixel"
	e = i.Transparency or 0
	B = 0
	u = "AnchorPoint"
	v = Vector2.new(0, .5)
	A = "Position"
	b = UDim2.new(0, 0, .5, 0)
	z = c
	M = i.Size
	L = "Size"
	if S then goto L13639127 end
::L769608::
	M = UDim2.new(0, 2, 0, 14)
::L13639127::
	c = z
	E = up1
	W = c(N, {
		[j] = K,
		[l] = T,
		[t] = e,
		[x] = B,
		[u] = v,
		[A] = b,
		[L] = M,
		ZIndex = 3,
		Children = {
			unpack({
				E("UICorner", {
					CornerRadius = UDim.new(1, 0)
				})
			})
		}
	}, R)
	if i.Gradient then goto L8232328 end
::L13355434::
	RegisterThemeElement(W, "BackgroundColor3", "Accent")
	return W
::L8232328::
	l = "Color"
	N = up1
	j = "UIGradient"
	T = ColorSequence.new
	x = ColorSequenceKeypoint.new
	A = ThemeColor("AccentLight")
	u = 0
	v = c
	if b then goto L13810781 end
::L16668224::
	A = Color3.fromRGB(216, 180, 254)
::L13810781::
	B = x(u, A)
	L = v
	x = ColorSequenceKeypoint.new
	A = 1
	v = ThemeColor("AccentDark")
	if M then goto L11412476 end
::L1207737::
	v = Color3.fromRGB(139, 92, 246)
::L11412476::
	t = T({
		B,
		unpack({
			x(A, v)
		})
	})
	T = "Rotation"
	u = L
	B = i.Gradient
	if A then goto L11654659 end
::L6106956::
	o = N(j, {
		[l] = t,
		[T] = B or 90
	}, W)
	RegisterButtonGradient(o)
	goto L13355434
::L11654659::
	B = i.Gradient.Rotation
	goto L6106956
end

function fn_4482496(arg1) -- entry L4482496, 1 blocks
::L4482496::
	return
end

function fn_4526782(arg1, arg2, arg3, arg4, arg5) -- entry L4526782, 1 blocks
::L4526782::
	c = up1.Notification
	c:Notify({
		Title = "TikTok",
		Description = "TikTok link copied to clipboard."
	}, {
		Time = 2
	})
	return
end

function fn_4691528(arg1, arg2) -- entry L4691528, 5 blocks
::L4691528::
	if up1~=up2 then goto L10010473 end
::L7240540::
	DoSearch(up3)
	if up3=="" then goto L3771632 end
::L6659401::
	return
::L3771632::
	up4()
	goto L6659401
::L10010473::
	return
end

function fn_4701376(arg1, arg2, arg3, arg4, arg5) -- entry L4701376, 42 blocks
::L4701376::
	table.clear(up1)
	R = closure(fn_6617337, {
		up2,
		up3
	})
	c = up4.HasKeyAccess
	if c() then goto L10874224 end
::L3307294::
	if up7 then goto L1419615 end
::L16593228::
	R(up12)
	W = c
	i = (# up1) == 0
	if N then goto L11185489 end
::L11407112::
	c = W
	if i then goto L10722595 end
::L9499612::
	N = up2[up1[1]] or "None"
	up8.Text = N
	up11(up2[up1[1]] or "None")
::L6220217::
::L9923768::
	return
::L10722595::
	up3(1)
	goto L9499612
::L11185489::
	i = (# up2) > 0
	goto L11407112
::L1419615::
	if typeof(up12)=="table" then goto L11475134 end
::L13287835::
	R(up12)
::L2588074::
	i = (# up1) == 0
	W = c
	if N then goto L16313036 end
::L4100015::
	if i then goto L8533168 end
::L16143436::
	i = up8
	N = up9
	o = N(up10(), 2)
	i.Text = o
	i = up11
	i(unpack({
		up10()
	}))
	goto L6220217
::L8533168::
	up3(1)
	goto L16143436
::L16313036::
	i = (# up2) > 0
	goto L4100015
::L11475134::
	K = {
		ipairs(up12)
	}
	o = K[3]
	W = K[1]
	N = K[2]
::L8957505::
	o, j = W(N, o)
	if o then goto L16452343 end
::L12876663::
	goto L2588074
::L16452343::
	R(j)
	goto L8957505
::L10874224::
	c = up5
	i = c:Get(up6, nil)
	if up7 then goto L10812726 end
::L14400063::
	W = i
	if i then goto L6702694 end
::L1319591::
	if W then goto L6438411 end
::L3971861::
	R(up12)
::L550998::
	N = (# up1) == 0
	if o then goto L8778851 end
::L14709491::
	if N then goto L3335938 end
::L8610932::
	o = up2[up1[1]] or "None"
	up8.Text = o
	up11(up2[up1[1]] or "None")
::L3991238::
	goto L9923768
::L3335938::
	up3(1)
	goto L8610932
::L8778851::
	N = (# up2) > 0
	goto L14709491
::L6438411::
	up3(W)
	goto L550998
::L6702694::
	W = table.find(up2, i)
	goto L1319591
::L10812726::
	if typeof(i)=="table" then goto L7996700 end
::L7122432::
	W = (# up1) == 0
	if N then goto L234767 end
::L940331::
	if W then goto L4050084 end
::L12977868::
	c = up8
	N = up9
	o = N(up10(), 2)
	c.Text = o
	c = up11
	c(unpack({
		up10()
	}))
	goto L3991238
::L4050084::
	up3(1)
	goto L12977868
::L234767::
	W = (# up2) > 0
	goto L940331
::L7996700::
	o = {
		ipairs(i)
	}
	W = o[2]
	N = o[3]
	o = o[1]
::L4551538::
	N, K = o(W, N)
	if N then goto L10278273 end
::L11625535::
	goto L7122432
::L10278273::
	R(K)
	goto L4551538
end

function fn_4717418(arg1, arg2, arg3, arg4) -- entry L4717418, 5 blocks
::L4717418::
	i = O()
	W = closure(fn_5827365, {
		i
	})
	f[i] = 0
	pcall(W)
	d = not f[i]
	if W then goto L571512 end
::L5282358::
	d = f[i] == 0
::L571512::
	if d then goto L2472590 end
::L13921473::
	return unpack({tostring(f[i] or 0)})
::L2472590::
	W = closure(fn_6270433, {
		i
	})
	pcall(W)
	goto L13921473
end

function fn_4725401(arg1) -- entry L4725401, 1 blocks
::L4725401::
	c = up1
	R = up2
	d = c.Tween
	i = {
		BackgroundColor3 = Color3.fromRGB(10, 7, 18)
	}
	d(c, R, i, .2, Enum.EasingStyle.Quint)
	c = up1
	c:Tween(up3, {
		Transparency = .65
	}, .2)
	c = up1
	R = up4
	o = UDim2.new(0, 40, 0, 40)
	i = {
		Size = o,
		Position = UDim2.new(0, 14, .5, - 20)
	}
	c:Tween(R, i, .2, Enum.EasingStyle.Quint)
	return
end

function fn_4741043(arg1) -- entry L4741043, 28 blocks
::L4741043::
	R = arg1
	d = up1.Themes
	i = O()
	c = d[R]
	f[i] = c
	if not f[i] then goto L15023616 end
::L891490::
	W = f[i]
	up1.Current = W
	c = up2
	c:Save("_activeTheme", R)
	if up3.body then goto L4277731 end
::L1941388::
	j = {
		ipairs(up3.accentElements)
	}
	W = j[2]
	o = j[1]
	N = j[3]
::L8076781::
	N, K = o(W, N)
	if N then goto L7784027 end
::L15069779::
	K = {
		ipairs(up3.litGradients)
	}
	o = K[3]
	N = K[2]
	W = K[1]
::L93034::
	o, K = W(N, o)
	if o then goto L9380205 end
::L10500593::
	K = {
		ipairs(up3.buttonGradients)
	}
	N = K[2]
	W = K[1]
	o = K[3]
::L16583964::
	o, K = W(N, o)
	if o then goto L14633588 end
::L2459812::
	N = closure(fn_12036057, {
		up5,
		i,
		up6
	})
	c = pcall
	h(i)
	c(N)
	return
::L14633588::
	l = K
	if K then goto L10262003 end
::L8480800::
	if l then goto L9815488 end
::L9239433::
	goto L16583964
::L9815488::
	l = ColorSequence.new
	x = ColorSequenceKeypoint.new(0, f[i].AccentLight)
	T = l({
		x,
		unpack({
			ColorSequenceKeypoint.new(1, f[i].AccentDark)
		})
	})
	K.Color = T
	goto L9239433
::L10262003::
	l = K.Parent
	goto L8480800
::L9380205::
	l = K
	if K then goto L15071749 end
::L9374376::
	if l then goto L1833160 end
::L6574205::
	goto L93034
::L1833160::
	l = f[i].Lit
	K.Color = l
	goto L6574205
::L15071749::
	l = K.Parent
	goto L9374376
::L7784027::
	l = K[2]
	t = K[1]
	e = f[i][K[3]]
	if x then goto L7879804 end
::L3810939::
	e = f[i].Accent
::L7879804::
	x = t
	if t then goto L16447883 end
::L4891515::
	if x then goto L13527539 end
::L15251337::
	goto L8076781
::L13527539::
	c = up4
	c:Tween(t, {
		[l] = e
	}, .28, Enum.EasingStyle.Quint)
	goto L15251337
::L16447883::
	x = t.Parent
	goto L4891515
::L4277731::
	c = up4
	c:Tween(up3.body, {
		BackgroundColor3 = f[i].Body
	}, .28, Enum.EasingStyle.Quint)
	goto L1941388
::L15023616::
	return
end

function fn_4785707(arg1, arg2, arg3, arg4, arg5) -- entry L4785707, 10 blocks
::L4785707::
	R = arg1
	if up1.HIDEUI then goto L8523760 end
::L7658071::
	if gethui then goto L14358580 end
::L13272639::
	d = syn
	if i then goto L4827794 end
::L15303986::
	if d then goto L3752072 end
::L9303068::
	d = up2
	R.Parent = d
::L9437727::
	return
::L3752072::
	pcall(syn.protect_gui, R)
	d = up2
	R.Parent = d
	goto L9437727
::L4827794::
	d = syn.protect_gui
	goto L15303986
::L14358580::
	i = gethui()
	R.Parent = i
	goto L9437727
::L8523760::
	d = up1.HIDEUI
	R.Parent = d
	goto L9437727
end

function fn_4798365(arg1, arg2, arg3, arg4) -- entry L4798365, 9 blocks
::L4798365::
	R = O()
	f[R] = arg1
	if not f[R] then goto L7205592 end
::L14861462::
	c = f[R]
	d = c:gsub("^%s+", "")
	c = d:gsub("%s+$", "")
	f[R] = c
	if d:match("^QH%-SAVE:") then goto L13421231 end
::L5951526::
	o = closure(fn_4319870, {
		R
	})
	j = {
		pcall(o)
	}
	N = j[2]
	d = j[1]
	o = c
	if W then goto L7733131 end
::L4457666::
	if d then goto L7558775 end
::L12367404::
	return nil
::L7558775::
	return N
::L7733131::
	d = type(N) == "table"
	goto L4457666
::L13421231::
	d = f[R]
	i = d:sub(9)
	f[R] = i
	goto L5951526
::L7205592::
	return nil
end

function fn_4818711(arg1, arg2) -- entry L4818711, 1 blocks
::L4818711::
	c = math.max
	R = c(UnscaledLayout(up1.AbsoluteContentSize.Y) + 4, 22)
	c = up2
	W = UDim2.new(1, 0, 0, R)
	c.Size = W
	c = up3
	W = UDim2.new(1, - 10, 0, R)
	c.Size = W
	return
end

function fn_4884474(arg1, arg2, arg3, arg4, arg5) -- entry L4884474, 1 blocks
::L4884474::
	return up1.Text
end

function fn_4961997() -- entry L4961997, 1 blocks
::L4961997::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .45
	}, .2)
	return
end

function fn_4968699(arg1) -- entry L4968699, 1 blocks
::L4968699::
	up1.tabUnderline.Visible = false
	c = up1.tabUnderline
	i = UDim2.new(.5, 0, 0, 3)
	c.Size = i
	return
end

function fn_4970902(arg1, arg2, arg3) -- entry L4970902, 1 blocks
::L4970902::
	CircleClick(up1, up2.X, up2.Y)
	c = not up3
	up3 = c
	up4()
	return
end

function fn_4986440(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L4986440, 1 blocks
::L4986440::
	R = O()
	i = O()
	f[R] = arg1
	W = closure(fn_5557177, {
		R,
		i
	})
	f[i] = arg2
	c = RegisterLayoutRefresh
	h(R)
	h(i)
	c(W)
	return
end

function fn_5039439(arg1, arg2, arg3, arg4, arg5) -- entry L5039439, 3 blocks
::L5039439::
	if up1 then goto L1107888 end
::L9927458::
	return
::L1107888::
	c = up1
	c:Destroy()
	goto L9927458
end

function fn_5106797(arg1, arg2) -- entry L5106797, 1 blocks
::L5106797::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .2
	}, .12)
	return
end

function fn_5127253(arg1, arg2) -- entry L5127253, 5 blocks
::L5127253::
	R = arg1
	d = up1.Current
	if i then goto L12124882 end
::L1350579::
	if d then goto L4831897 end
::L5630776::
	return unpack({Color3.fromRGB(255,0,255)})
::L4831897::
	return up1.Current[R]
::L12124882::
	d = up1.Current[R]
	goto L1350579
end

function fn_5151574(arg1) -- entry L5151574, 3 blocks
::L5151574::
	R = arg1
	if not table.find(up1,R) then goto L4487822 end
::L11247572::
	return
::L4487822::
	table.insert(up1, R)
	goto L11247572
end

function fn_5164427(arg1) -- entry L5164427, 1 blocks
::L5164427::
	FitScrollCanvas(up1, up2, "Y", 4)
	return
end

function fn_5209898(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L5209898, 11 blocks
::L5209898::
	R = arg1
	d = not up1
	if i then goto L8794181 end
::L7397820::
	d = not up2
::L8794181::
	if d then goto L1407575 end
::L735327::
	d = R == up2
	if i then goto L13292631 end
::L6813567::
	W = c
	i = up2.UserInputType == Enum.UserInputType.MouseButton1
	if N then goto L1488062 end
::L10221163::
	d = i
::L13292631::
	if d then goto L5408928 end
::L7632566::
	return
::L5408928::
	up3(R.Position.X)
	goto L7632566
::L1488062::
	i = R.UserInputType == Enum.UserInputType.MouseMovement
	goto L10221163
::L1407575::
	return
end

function fn_5249848() -- entry L5249848, 25 blocks
::L5249848::
	CircleClick(up1, up2.X, up2.Y)
	c = up3
	if c then goto L14602303 end
::L11597429::
	table.clear(up4)
	table.insert(up4, up5)
	W = up20[up5]
	up13.Text = W
	i = c
	R = up15
	if W then goto L10142597 end
::L9804650::
	if R then goto L9740838 end
::L2324325::
	up19(up20[up5])
	up21()
::L8392063::
	return
::L9740838::
	R = up18
	R:ElementSave(up15, up20[up5])
	goto L2324325
::L10142597::
	N = c
	W = not up16
	if o then goto L10182428 end
::L3522805::
	W = up17.HasKeyAccess()
::L10182428::
	R = W
	goto L9804650
::L14602303::
	c = table.find
	if c(up4,up5) then goto L2756356 end
::L13982458::
	up7(up5)
	R = true
::L15918029::
	i = up8
	i:Tween(up9, {
		BackgroundTransparency = (R and 0) or 1
	}, .2)
	i = up8
	T = R
	l = c
	i:Tween(up1, {
		BackgroundTransparency = (R and .3) or .55
	}, .2)
	i = up8
	j = "TextColor3"
	N = up10
	t = c
	if R then goto L6225793 end
::L16499733::
	K = T
	if T then goto L9080702 end
::L13202990::
	K = Color3.fromRGB(190, 190, 205)
::L9080702::
	c = l
	i:Tween(N, {
		[j] = K
	}, .2)
	if up11 then goto L14331221 end
::L4160130::
	W = up12()
	i = up13
	j = up14(W, 2)
	i.Text = j
	i = up15
	N = c
	if o then goto L4431657 end
::L4334643::
	if i then goto L15704125 end
::L14797299::
	up19(W)
	goto L8392063
::L15704125::
	i = up18
	i:ElementSave(up15, W)
	goto L14797299
::L4431657::
	j = c
	o = not up16
	if K then goto L13691657 end
::L11328604::
	o = up17.HasKeyAccess()
::L13691657::
	i = o
	goto L4334643
::L14331221::
	up11.Text = (R and "\226\156\147") or ""
	goto L4160130
::L6225793::
	T = Color3.fromRGB(216, 180, 254)
	goto L16499733
::L2756356::
	up6(up5)
	c = false
	R = false
	goto L15918029
end

function fn_5260507(arg1) -- entry L5260507, 14 blocks
::L5260507::
::L1008424::
	if true then goto L8179708 end
::L5471704::
	return
::L8179708::
	c = task.wait
	c(1.5)
	d = up1
	if R then goto L8342639 end
::L13487688::
	if d then goto L2435952 end
::L12906164::
	goto L1008424
::L2435952::
	R = O()
	f[R] = false
	c = pcall
	c(closure(fn_5297517, {
		up2,
		R
	}))
	if not f[R] then goto L11067325 end
::L7576166::
	h(R)
	goto L12906164
::L11067325::
	i = closure(fn_38848, {
		up2
	})
	pcall(i)
	goto L7576166
::L8342639::
	i = c
	R = up1.Visible
	if W then goto L12967067 end
::L6337599::
	d = R
	goto L13487688
::L12967067::
	N = c
	W = up2
	if o then goto L13817697 end
::L4263815::
	R = W
	goto L6337599
::L13817697::
	W = up2.Parent
	goto L4263815
end

function fn_5296204(arg1) -- entry L5296204, 13 blocks
::L5296204::
	i = arg1
	c = i == nil
	if c then goto L1056089 end
::L14564530::
	if i==up1 then goto L16709885 end
::L2454004::
	up1 = i
	up2.Visible = i
	up3.Visible = true
	up4.Visible = true
	if i then goto L1508115 end
::L8722880::
	return
::L1508115::
	W = up5
	j = W:Get("_opt_UITransparency", .05)
	up2.BackgroundTransparency = j
	o = c
	W = up6
	if j then goto L6558243 end
::L9809980::
	if W then goto L6626228 end
::L300417::
	goto L8722880
::L6626228::
	W = pcall
	W(closure(fn_2240112, {
		up6
	}))
	goto L300417
::L6558243::
	j = up7
	K = c
	if l then goto L13396601 end
::L14534634::
	W = j
	goto L9809980
::L13396601::
	j = up7.Visible
	goto L14534634
::L16709885::
	return
::L1056089::
	c = not up1
	i = c
	goto L14564530
end

function fn_5297517(arg1, arg2, arg3, arg4) -- entry L5297517, 1 blocks
::L5297517::
	c = up1.Playing
	up2 = c
	return
end

function fn_5310197(arg1, arg2, arg3) -- entry L5310197, 1 blocks
::L5310197::
	c = up1.Notification
	c:Notify({
		Title = "Discord",
		Description = "Discord invite copied to clipboard."
	}, {
		Time = 3
	})
	return
end

function fn_5323669(arg1) -- entry L5323669, 3 blocks
::L5323669::
	R = arg1
	i = up1.Scale
	if i==0 then goto L15585264 end
::L7348521::
	return R/i
::L15585264::
	return R
end

function fn_5324422(arg1, arg2, arg3, arg4) -- entry L5324422, 5 blocks
::L5324422::
	c = up1.Text
	up2 = c
	if up3 then goto L7355665 end
::L909501::
	return
::L7355665::
	d = up4
	R = d:Get("_saveSlots", {})
	i = R[up3]
	if i then goto L4845709 end
::L2029060::
	goto L909501
::L4845709::
	up5.UpdatePreview(i, up2)
	goto L2029060
end

function fn_5345564() -- entry L5345564, 1 blocks
::L5345564::
	c = up1
	R = up2
	i = {
		BackgroundColor3 = Color3.new(up3 * .06, up4 * .04, up5 * .11)
	}
	c:Tween(R, i, .14, Enum.EasingStyle.Quint)
	c = up1
	c:Tween(up6, {
		Transparency = .28
	}, .14)
	c = up1
	R = up7
	o = UDim2.new(0, 39, 0, 39)
	d = c.Tween
	i = {
		Size = o,
		Position = UDim2.new(0, 11, 0, 9)
	}
	d(c, R, i, .18, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	return
end

function fn_5358000(arg1, arg2, arg3, arg4, arg5) -- entry L5358000, 1 blocks
::L5358000::
	return unpack({up1(up2,true)})
end

function fn_5453020(arg1, arg2, arg3) -- entry L5453020, 27 blocks
::L5453020::
	if not up1 then goto L15968895 end
::L12810688::
	c = up2
	R = c:Get("_saveSlots", {})
	i = R[up1]
	if not i then goto L13420579 end
::L12957163::
	c = up2
	W = c:Get("_autoLoadTarget", nil)
	N = not (W == i.name)
	o = "_autoLoadTarget"
	l = N
	T = up2
	if N then goto L10097807 end
::L10093769::
	c = T
	x = c
	c:Save(o, l or nil)
	d = up3
	t = c
	j = up4
	e = N
	l = "Position"
	if N then goto L12624499 end
::L6691225::
	T = e
	if e then goto L11793535 end
::L10274092::
	T = UDim2.new(0, 3, .5, 0)
::L11793535::
	c = t
	t = c
	d:Tween(j, {
		[l] = T
	}, .22, Enum.EasingStyle.Back)
	x = c
	e = N
	l = "BackgroundColor3"
	d = up3
	j = up5
	if N then goto L13844135 end
::L11770986::
	T = e
	if e then goto L16305761 end
::L8983666::
	T = Color3.fromRGB(14, 9, 26)
::L16305761::
	c = t
	d:Tween(j, {
		[l] = T
	}, .2, Enum.EasingStyle.Quint)
	d = up4
	o = d:FindFirstChildOfClass("UIGradient")
	if o then goto L5248303 end
::L11840143::
	l = "Title"
	T = "Auto Load"
	B = N
	t = "Description"
	u = c
	d = up6.Notification
	if N then goto L6894093 end
::L16012587::
	d:Notify({
		[l] = T,
		[t] = B or "Auto Load disabled."
	}, {
		Time = 2
	})
	RefreshSlots()
	return
::L6894093::
	B = "\"" .. (i.name .. "\" set as default auto-load profile.")
	goto L16012587
::L5248303::
	d = "Color"
	B = c
	A = c
	j = ColorSequence.new
	T = ColorSequenceKeypoint.new
	e = 0
	u = N
	if N then goto L15805684 end
::L10694544::
	x = u
	if u then goto L14631447 end
::L13895217::
	x = Color3.fromRGB(110, 90, 140)
::L14631447::
	c = B
	t = T(e, x)
	v = c
	A = N
	u = c
	T = ColorSequenceKeypoint.new
	x = 1
	if N then goto L11230856 end
::L3377522::
	B = A
	if A then goto L11516111 end
::L14143920::
	B = Color3.fromRGB(55, 45, 85)
::L11516111::
	c = u
	K = j({
		t,
		unpack({
			T(x, B)
		})
	})
	o[d] = K
	goto L11840143
::L11230856::
	A = Color3.fromRGB(170, 105, 255)
	goto L3377522
::L15805684::
	u = Color3.fromRGB(235, 205, 255)
	goto L10694544
::L13844135::
	e = Color3.fromRGB(90, 45, 170)
	goto L11770986
::L12624499::
	e = UDim2.new(0, 21, .5, 0)
	goto L6691225
::L10097807::
	l = i.name
	goto L10093769
::L13420579::
	return
::L15968895::
	return
end

function fn_5462641(arg1, arg2, arg3, arg4, arg5) -- entry L5462641, 15 blocks
::L5462641::
	if not up1 then goto L3948413 end
::L128968::
	CircleClick(up2, up3.X, up3.Y)
	c = up4
	R = c:Get("_saveSlots", {})
	d = R[up1]
	if i then goto L16451089 end
::L5190444::
	i = d
	table.remove(R, up1)
	c = up4
	c:Save("_saveSlots", R)
	d = i
	if i then goto L2220708 end
::L10401575::
	if d then goto L10768966 end
::L8486089::
	d = i
	if i then goto L10081691 end
::L5658373::
	if d then goto L5786161 end
::L15970946::
	c = up6.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "Profile deleted."
	}, {
		Time = 2
	})
	up7.CloseSlotPanel()
	return
::L5786161::
	up4.ActiveProfile = "[Auto]"
	if up5 then goto L9361911 end
::L10228227::
	goto L15970946
::L9361911::
	up5.Text = "Active Profile: <font color=\"#C084FC\"><b>[Auto]</b></font>"
	goto L10228227
::L10081691::
	d = up4.ActiveProfile == i
	goto L5658373
::L10768966::
	c = up4
	c:Save("_autoLoadTarget", nil)
	goto L8486089
::L2220708::
	N = up4
	d = N:Get("_autoLoadTarget", nil) == i
	goto L10401575
::L16451089::
	d = R[up1].name
	goto L5190444
::L3948413::
	return
end

function fn_5541782(arg1, arg2, arg3, arg4, arg5) -- entry L5541782, 1 blocks
::L5541782::
	up1.Playing = true
	c = up1
	c:Play()
	return
end

function fn_5557177(arg1) -- entry L5557177, 1 blocks
::L5557177::
	c = up1
	R = select
	i = R(1, unpack({
		ScaledFontSize(up2)
	}))
	c.TextSize = i
	return
end

function fn_5640063(arg1, arg2, arg3, arg4, arg5) -- entry L5640063, 1 blocks
::L5640063::
	up1.Playing = true
	c = up1
	c:Play()
	return
end

function fn_5682131(arg1) -- entry L5682131, 5 blocks
::L5682131::
	d = up1
	if R then goto L1569598 end
::L3993400::
	if d then goto L1113703 end
::L6943793::
	return
::L1113703::
	c = up1
	c:Destroy()
	goto L6943793
::L1569598::
	d = up1.Parent
	goto L3993400
end

function fn_5706739(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L5706739, 20 blocks
::L5706739::
	R = arg1
	if not isfolder(R.FolderName) then goto L10869296 end
::L11271970::
	d = R.FolderName
	i = d .. ("/" .. R:GetFileName())
	c = pcall
	o = {
		c(readfile, i)
	}
	N = o[1]
	W = o[2]
	o = O()
	f[o] = W
	d = not N
	if W then goto L5561874 end
::L2476908::
	d = not f[o]
::L5561874::
	if d then goto L12845368 end
::L11292001::
	j = c
	W = N
	if N then goto L5732688 end
::L15268165::
	if W then goto L8169288 end
::L2997133::
	R:Save()
	return {}
::L8169288::
	j = O()
	f[j] = nil
	W = pcall
	W(closure(fn_12057577, {
		o,
		j
	}))
	if type(f[j])=="table" then goto L15323011 end
::L13479583::
	h(j)
	goto L2997133
::L15323011::
	K = f[j]
	R.Settings = K
	return f[j]
::L5732688::
	W = f[o]
	goto L15268165
::L12845368::
	W = R:GetPlayerName()
	l = "/" .. (W .. ("-" .. (R:GetGameId() .. ".json")))
	c = ipairs
	t = {
		c({
			R.FolderName .. l,
			R.FolderName .. ("/" .. (W .. ".json"))
		})
	}
	T = t[3]
	l = t[2]
	t = t[1]
::L7487642::
	T, x = t(l, T)
	if T then goto L15428338 end
::L1609222::
	goto L11292001
::L15428338::
	c = pcall
	v = {
		c(readfile, x)
	}
	u = v[2]
	A = v[1]
	if B then goto L9535561 end
::L4297064::
	if A then goto L1060104 end
::L727522::
	goto L7487642
::L1060104::
	N = true
	c = u
	f[o] = c
	goto L1609222
::L9535561::
	A = u
	goto L4297064
::L10869296::
	pcall(makefolder, R.FolderName)
	goto L11271970
end

function fn_5727425(arg1, arg2) -- entry L5727425, 1 blocks
::L5727425::
	up1.Playing = false
	return
end

function fn_5745404(arg1, arg2, arg3, arg4, arg5) -- entry L5745404, 8 blocks
::L5745404::
	R = O()
	f[R] = arg1
	if not f[R] then goto L8594970 end
::L15634148::
	o = {
		ipairs(up1)
	}
	N = o[1]
	W = o[3]
	i = o[2]
::L9168863::
	W, j = N(i, W)
	if W then goto L10735909 end
::L2906765::
	f[R].elementFrame.Visible = true
	f[R].sectionFrame.Visible = true
	f[R].sectionScroll.Visible = true
	up2.RefreshSectionVisibility()
	c = task.defer
	c(closure(fn_13788953, {
		R,
		up3,
		up4
	}))
	h(R)
	return
::L10735909::
	if j.scrollFrame==f[R].scrollFrame then goto L6927248 end
::L8919354::
	goto L9168863
::L6927248::
	up2.ActivateScroll(j.scrollFrame, j.tabButton, j.tabUnderline, true)
	goto L2906765
::L8594970::
	return
end

function fn_5827365(arg1, arg2, arg3, arg4) -- entry L5827365, 1 blocks
::L5827365::
	c = game.GameId
	up1 = c
	return
end

function fn_5830455(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15) -- entry L5830455, 25 blocks
::L5830455::
	j = O()
	T = O()
	W = O()
	i = arg2
	N = O()
	l = O()
	f[W] = arg3
	K = O()
	f[N] = arg4
	o = O()
	f[o] = arg5
	f[j] = arg6
	f[K] = arg7
	f[l] = arg8
	f[T] = arg9
	c = not checkCondition(arg10)
	if c then goto L1524777 end
::L12629314::
	d = f[j]
	if x then goto L13227285 end
::L2927832::
	d = closure(fn_12282878, {})
::L13227285::
	f[j] = d
	x = f[W] or 0
	f[W] = x
	B = f[N] or 100
	f[N] = B
	u = f[l] or 1
	f[l] = u
	if f[T] then goto L11214121 end
::L15501225::
	if f[T] then goto L13376792 end
::L1814778::
	M = c
	v = math.clamp
	b = f[o]
	if z then goto L8277903 end
::L9036826::
	b = f[W]
::L8277903::
	L = v(b, f[W], f[N])
	f[o] = L
	S = select
	z = M
	Y = tostring(f[l])
	M = S(2, unpack({
		Y:find("%.")
	}))
	if P then goto L3826037 end
::L9882986::
	c = z
	ne[4] = 15
	ne[16] = 252
	b = "%." .. ((M or 0) .. "f")
	M = O()
	z = closure(fn_2381343, {
		l
	})
	f[M] = b
	b = O()
	f[b] = z
	z = up4
	H = ThemeColor("Primary")
	Qe = UDim2.new(1, - 25, 0, 54)
	ce = UDim2.new(0, 0, 0, 0)
	Re = up4
	oe = UDim.new(0, 6)
	ne[15] = 132
	y = {
		BackgroundColor3 = H,
		BackgroundTransparency = .4,
		Size = Qe,
		Position = ce,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Children = {
			unpack({
				Re("UICorner", {
					CornerRadius = oe
				})
			})
		}
	}
	S = z("Frame", y, up5)
	z = O()
	f[z] = S
	S = up4
	Fe = Color3.fromRGB(192, 132, 252)
	E = {
		Color = Fe,
		Transparency = 1,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}
	Y = f[z]
	ne[5] = 8
	P = S("UIStroke", E, Y)
	S = O()
	f[S] = P
	P = up4
	Qe = UDim2.new(1, - 70, 0, 18)
	ce = UDim2.new(0, 12, 0, 8)
	ne[3] = "MakeTextConstraint"
	Ze = Enum.Font.GothamBold
	ne[8] = "UICorner"
	Re = Color3.fromRGB
	ne[13] = "UDim"
	Oe = Re(220, 220, 230)
	ie = Enum.TextXAlignment.Left
	Ce = Enum.TextTruncate.AtEnd
	ne[2] = ENV[ne[3]]
	ne[3] = {
		ne[2](ne[4], ne[5])
	}
	ne[1] = {
		unpack(ne[3])
	}
	y = P("TextLabel", {
		BackgroundTransparency = 1,
		Size = Qe,
		Position = ce,
		Font = Ze,
		Text = i,
		TextSize = 13,
		TextColor3 = Oe,
		TextXAlignment = ie,
		TextWrapped = false,
		TextScaled = true,
		TextTruncate = Ce,
		ZIndex = 3,
		Children = ne[1]
	}, f[z])
	ne[10] = "CornerRadius"
	P = RegisterTranslatable
	ne[17] = "ApplyStrokeMode"
	P(y, i)
	P = up6
	Y = f[z]
	ne[14] = 5
	P(Y, i)
	P = up4
	k = Color3
	ne[2] = "ZIndex"
	Je = k.fromRGB
	ne[1] = false
	k = Je(12, 12, 18)
	Ze = UDim2.new(1, - 56, 0, 6)
	Xe = UDim2.new(0, 46, 0, 20)
	de = Enum.Font.GothamBold
	Re = string.format
	ie = f[M]
	We = f[o]
	ne[3] = 3
	Oe = Re(ie, We)
	Ne = Color3.fromRGB
	ne[4] = "Children"
	he = Ne(192, 132, 252)
	oe = Enum.TextXAlignment.Center
	Ce = Enum.TextTruncate.AtEnd
	ne[6] = up4
	ne[12] = ENV[ne[13]]
	ne[13] = "new"
	ne[11] = ne[12][ne[13]]
	ne[13] = 0
	ne[12] = ne[11](ne[13], ne[14])
	ne[9] = {
		[ne[10]] = ne[12]
	}
	ne[7] = ne[6](ne[8], ne[9])
	ne[14] = "Color3"
	ne[6] = up4
	ne[11] = "Color"
	ne[13] = ENV[ne[14]]
	ne[9] = "UIStroke"
	ne[21] = "Enum"
	ne[14] = "fromRGB"
	ne[12] = ne[13][ne[14]]
	ne[14] = 192
	ne[13] = ne[12](ne[14], ne[15], ne[16])
	ne[12] = "Transparency"
	ne[14] = .72
	ne[15] = "Thickness"
	ne[20] = ENV[ne[21]]
	ne[16] = 1
	ne[21] = "ApplyStrokeMode"
	ne[19] = ne[20][ne[21]]
	ne[20] = "Border"
	ne[18] = ne[19][ne[20]]
	ne[10] = {
		[ne[11]] = ne[13],
		[ne[12]] = ne[14],
		[ne[15]] = ne[16],
		[ne[17]] = ne[18]
	}
	ne[8] = {
		ne[6](ne[9], ne[10])
	}
	ne[5] = {
		ne[7],
		unpack(ne[8])
	}
	E = P("TextBox", {
		BackgroundColor3 = k,
		BackgroundTransparency = .2,
		Position = Ze,
		Size = Xe,
		Font = de,
		Text = Oe,
		TextSize = 12,
		TextColor3 = he,
		TextXAlignment = oe,
		TextTruncate = Ce,
		ClipsDescendants = true,
		ClearTextOnFocus = ne[1],
		[ne[2]] = ne[3],
		[ne[4]] = ne[5]
	}, f[z])
	P = O()
	ne[22] = 0
	f[P] = E
	ne[14] = 5
	E = up4
	ne[1] = 252
	Qe = Color3.fromRGB(10, 10, 16)
	ne[12] = 0
	ne[2] = "ApplyStrokeMode"
	Ge = UDim2.new(0, 12, 0, 34)
	ne[6] = "Enum"
	de = UDim2.new(1, - 24, 0, 10)
	ie = up4
	We = ie("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	ie = up4
	ae = Color3.fromRGB(192, 132, ne[1])
	ne[5] = ENV[ne[6]]
	ne[1] = 1
	ne[6] = "ApplyStrokeMode"
	ne[4] = ne[5][ne[6]]
	ne[5] = "Border"
	ne[3] = ne[4][ne[5]]
	Fe = {
		BackgroundColor3 = Qe,
		BackgroundTransparency = .1,
		Position = Ge,
		Size = de,
		ZIndex = 2,
		Children = {
			We,
			unpack({
				ie("UIStroke", {
					Color = ae,
					Transparency = .82,
					Thickness = ne[1],
					[ne[2]] = ne[3]
				})
			})
		}
	}
	Y = E("Frame", Fe, f[z])
	E = O()
	ne[18] = "CornerRadius"
	f[E] = Y
	Y = up4
	me = ColorSequence
	ne[6] = 252
	ne[16] = "UICorner"
	Qe = me.new
	Ze = ColorSequenceKeypoint.new
	de = Color3.fromRGB
	ne[3] = "UDim"
	ne[11] = "Enum"
	Ge = Ze(0, unpack({
		de(139, 92, 246)
	}))
	Xe = ColorSequenceKeypoint
	ne[4] = 0
	Ze = Xe.new
	H = Y("UIGradient", {
		Color = Qe({
			Ge,
			unpack({
				Ze(1, unpack({
					Color3.fromRGB(216, 180, 254)
				}))
			})
		}),
		Rotation = 0
	})
	RegisterButtonGradient(H)
	Y = up4
	Ze = UDim2.new
	fe = f[o]
	ne[21] = "UDim"
	Ge = Ze((fe - f[W]) / (f[N] - f[W]), 0, 1, 0)
	Re = up4
	k = {
		BackgroundTransparency = 0,
		Size = Ge,
		ZIndex = 3,
		Children = {
			Re("UICorner", {
				CornerRadius = UDim.new(1, 0)
			}),
			H
		}
	}
	Qe = f[E]
	ne[5] = 132
	Fe = Y("Frame", k, Qe)
	Y = O()
	f[Y] = Fe
	Fe = up4
	Xe = Color3.fromRGB(255, 255, 255)
	fe = Vector2.new(.5, .5)
	Re = UDim2.new
	ie = (f[o] - f[W]) / (f[N] - f[W])
	ne[7] = "ApplyStrokeMode"
	Oe = Re(ie, 0, .5, 0)
	We = UDim2.new(0, 13, 0, 13)
	se = up4
	ne[2] = ENV[ne[3]]
	ne[3] = "new"
	ne[1] = ne[2][ne[3]]
	ne[3] = 1
	ne[2] = ne[1](ne[3], ne[4])
	ne[4] = "Color3"
	Ce = se("UICorner", {
		CornerRadius = ne[2]
	})
	se = up4
	ne[1] = "Color"
	ne[3] = ENV[ne[4]]
	ne[4] = "fromRGB"
	ne[2] = ne[3][ne[4]]
	ne[4] = 192
	ne[3] = ne[2](ne[4], ne[5], ne[6])
	ne[6] = 1.5
	ne[10] = ENV[ne[11]]
	ne[4] = .3
	ne[5] = "Thickness"
	ne[2] = "Transparency"
	ne[11] = "ApplyStrokeMode"
	ne[9] = ne[10][ne[11]]
	ne[10] = "Border"
	ne[8] = ne[9][ne[10]]
	ae = se("UIStroke", {
		[ne[1]] = ne[3],
		[ne[2]] = ne[4],
		[ne[5]] = ne[6],
		[ne[7]] = ne[8]
	})
	se = up4
	ne[9] = "UDim2"
	ne[5] = "Color3"
	ne[4] = ENV[ne[5]]
	ne[2] = "BackgroundColor3"
	ne[8] = .5
	ne[5] = "fromRGB"
	ne[6] = 132
	ne[7] = 252
	ne[3] = ne[4][ne[5]]
	ne[5] = 192
	ne[4] = ne[3](ne[5], ne[6], ne[7])
	ne[3] = "AnchorPoint"
	ne[7] = "Vector2"
	ne[6] = ENV[ne[7]]
	ne[7] = "new"
	ne[5] = ne[6][ne[7]]
	ne[11] = .5
	ne[7] = .5
	ne[6] = ne[5](ne[7], ne[8])
	ne[13] = 0
	ne[8] = ENV[ne[9]]
	ne[10] = 0
	ne[5] = "Position"
	ne[9] = "new"
	ne[7] = ne[8][ne[9]]
	ne[9] = .5
	ne[8] = ne[7](ne[9], ne[10], ne[11], ne[12])
	ne[12] = 5
	ne[11] = "UDim2"
	ne[10] = ENV[ne[11]]
	ne[7] = "Size"
	ne[11] = "new"
	ne[9] = ne[10][ne[11]]
	ne[11] = 0
	ne[10] = ne[9](ne[11], ne[12], ne[13], ne[14])
	ne[9] = "ZIndex"
	ne[12] = "Children"
	ne[14] = up4
	ne[11] = 6
	ne[20] = ENV[ne[21]]
	ne[21] = "new"
	ne[19] = ne[20][ne[21]]
	ne[21] = 1
	ne[20] = ne[19](ne[21], ne[22])
	ne[17] = {
		[ne[18]] = ne[20]
	}
	ne[15] = {
		ne[14](ne[16], ne[17])
	}
	ne[13] = {
		unpack(ne[15])
	}
	ne[1] = {
		[ne[2]] = ne[4],
		[ne[3]] = ne[6],
		[ne[5]] = ne[8],
		[ne[7]] = ne[10],
		[ne[9]] = ne[11],
		[ne[12]] = ne[13]
	}
	Qe = {
		Name = "Thumb",
		BackgroundColor3 = Xe,
		AnchorPoint = fe,
		Position = Oe,
		Size = We,
		ZIndex = 5,
		Children = {
			Ce,
			ae,
			unpack({
				se("Frame", ne[1])
			})
		}
	}
	Je = Fe("Frame", Qe, f[E])
	Fe = O()
	k = O()
	f[Fe] = Je
	Qe = closure(fn_11644986, {
		W,
		N,
		Y,
		up7,
		Fe,
		P,
		M,
		T,
		K,
		up3,
		up2,
		j
	})
	f[k] = false
	Je = O()
	me = closure(fn_7830157, {
		E,
		Je,
		b,
		W,
		N
	})
	f[Je] = Qe
	Qe = O()
	f[Qe] = me
	f[Je](f[o])
	ce = O()
	f[ce] = nil
	me = O()
	Ze = closure(fn_15915517, {
		ce,
		k,
		Qe,
		up7,
		S,
		Fe
	})
	f[me] = Ze
	Ze = f[E].InputBegan
	Ze:Connect(f[me])
	Ze = f[Fe].InputBegan
	Ze:Connect(f[me])
	Ze = f[z].InputBegan
	Xe = closure(fn_11338031, {
		z,
		me
	})
	Ze:Connect(Xe)
	Ze = up8.InputChanged
	Xe = closure(fn_11936360, {
		k,
		ce,
		Qe
	})
	Ze:Connect(Xe)
	Ze = up8.InputEnded
	Ge = Ze.Connect
	Ge(Ze, closure(fn_7449691, {
		ce,
		k,
		up7,
		S,
		Fe
	}))
	Ze = f[P].FocusLost
	Xe = closure(fn_11590691, {
		P,
		Je,
		b,
		W,
		N,
		o
	})
	Ze:Connect(Xe)
	if f[T] then goto L16358269 end
::L4380774::
	Ge = c
	Ze = f[K]
	if Xe then goto L3823728 end
::L1890172::
	if Ze then goto L8628940 end
::L3505659::
	h(M)
	h(P)
	h(l)
	h(E)
	h(Y)
	h(Fe)
	Ze = RegisterKeyLocked
	h(j)
	h(b)
	h(ce)
	h(me)
	Xe = f[z]
	h(T)
	h(N)
	Ze(Xe, f[K])
	h(z)
	h(k)
	h(S)
	h(Je)
	h(K)
	h(Qe)
	h(W)
	h(o)
	return
::L8628940::
	ie = closure(fn_1484990, {
		up3,
		up2,
		T,
		Je,
		o,
		W,
		N
	})
	table.insert(up9, {
		saveKey = f[T],
		UpdateFn = ie
	})
	goto L3505659
::L3823728::
	Ze = f[T]
	goto L1890172
::L16358269::
	Ne = closure(fn_6867615, {
		o,
		W,
		N,
		Y,
		up7,
		Fe,
		P,
		M,
		j
	})
	Ze = up2
	oe = closure(fn_3944856, {
		P,
		o
	})
	Ze:RegisterControl(f[T], {
		Type = "Slider",
		Default = f[o],
		Set = Ne,
		Get = oe
	})
	goto L4380774
::L3826037::
	P = # tostring(f[l])
	E = tostring(f[l])
	M = P - E:find("%.")
	goto L9882986
::L13376792::
	v = c
	A = not f[K]
	if L then goto L3180480 end
::L6427451::
	A = up3.HasKeyAccess()
::L3180480::
	c = v
	if A then goto L5560269 end
::L5321139::
	goto L1814778
::L5560269::
	A = up2
	v = A:Get(f[T], nil)
	if v~=nil then goto L13416556 end
::L7211290::
	goto L5321139
::L13416556::
	f[o] = v
	goto L7211290
::L11214121::
	A = up2
	A:RegisterKey(f[T])
	goto L15501225
::L1524777::
	return up1
end

function fn_5841648(arg1, arg2, arg3, arg4) -- entry L5841648, 1 blocks
::L5841648::
	up1 = false
	up2 = nil
	up3.ShowSettingsPage()
	RefreshSlots()
	return
end

function fn_5897131(arg1, arg2, arg3) -- entry L5897131, 7 blocks
::L5897131::
	R = arg1
	d = R.UserInputType == Enum.UserInputType.Touch
	if i then goto L2084473 end
::L15368779::
	d = R.UserInputType == Enum.UserInputType.MouseButton1
::L2084473::
	if d then goto L14089525 end
::L7291646::
	return
::L14089525::
	if (R.Position.Y-up1.AbsolutePosition.Y)>=((up2 and 26) or 24) then goto L14965736 end
::L2790527::
	goto L7291646
::L14965736::
	up3(R)
	goto L2790527
end

function fn_5905940(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- entry L5905940, 7 blocks
::L5905940::
	R = arg1
	W = arg3
	i = arg2
	N = arg4
	d = not R
	if o then goto L7168001 end
::L7092029::
	d = not i
::L7168001::
	if d then goto L12657046 end
::L13906229::
	up1[R] = {
		layout = i,
		axis = W or "Y",
		pad = N or 2
	}
	if not up2 then goto L7768279 end
::L16466640::
	return
::L7768279::
	up2 = true
	o = task.defer
	o(closure(fn_952040, {
		up2,
		up1
	}))
	goto L16466640
::L12657046::
	return
end

function fn_5979815(arg1) -- entry L5979815, 4 blocks
::L5979815::
::L4142117::
	if true then goto L16201670 end
::L10223547::
	return
::L16201670::
	c = l2
	d = l1
	l1 = c
	l2 = d
	up1()
	goto L4142117
end

function fn_6209870(arg1, arg2, arg3, arg4, arg5) -- entry L6209870, 5 blocks
::L6209870::
	R = arg1
	if R then goto L12313254 end
::L13270347::
	return
::L12313254::
	i = table.find(up1, R)
	if i then goto L16019232 end
::L9090935::
	goto L13270347
::L16019232::
	up2(i)
	goto L9090935
end

function fn_6210320(arg1, arg2, arg3, arg4, arg5) -- entry L6210320, 11 blocks
::L6210320::
	CircleClick(up1, up2.X, up2.Y)
	d = up3
	if R then goto L9935489 end
::L174942::
	if d then goto L7456164 end
::L8886120::
	d = up5
	if R then goto L2182472 end
::L975417::
	if d then goto L1418600 end
::L7590581::
	if up7.BuildBgImageCards then goto L831544 end
::L12188234::
	up8()
	return
::L831544::
	up7.BuildBgImageCards()
	goto L12188234
::L1418600::
	up6()
	goto L7590581
::L2182472::
	d = up5()
	goto L975417
::L7456164::
	up4()
	goto L8886120
::L9935489::
	d = up3()
	goto L174942
end

function fn_6240124(arg1) -- entry L6240124, 9 blocks
::L6240124::
	CircleClick(up1, up2.X, up2.Y)
	c = up3.Text
	R = c:gsub("`", "")
	if R=="" then goto L4990647 end
::L2848126::
	i = up4.DecodeShareCode(R)
	if not i then goto L2778591 end
::L6346720::
	c = up6
	W = c:Get("_saveSlots", {})
	c = (# W) >= 10
	if c then goto L11822630 end
::L9124986::
	l = "data"
	K = "name"
	c = (i.name or "Imported") .. " (imported)"
	N = c
	t = c
	d = table.insert
	T = i.data
	if e then goto L972706 end
::L3677402::
	T = {}
::L972706::
	x = os.date("%Y-%m-%d %H:%M")
	d(W, {
		[K] = N,
		[l] = T,
		created = x,
		updated = os.date("%Y-%m-%d %H:%M")
	})
	d = up6
	d:Save("_saveSlots", W)
	up3.Text = ""
	d = up5.Notification
	d:Notify({
		Title = "Import",
		Description = "Imported profile \"" .. (N .. "\".")
	}, {
		Time = 3
	})
	RefreshSlots()
	return
::L11822630::
	c = up5.Notification
	c:Notify({
		Title = "Import",
		Description = "Maximum 10 profiles reached."
	}, {
		Time = 2
	})
	return
::L2778591::
	c = up5.Notification
	c:Notify({
		Title = "Import",
		Description = "Invalid share code format."
	}, {
		Time = 2
	})
	return
::L4990647::
	return
end

function fn_6246386(arg1, arg2, arg3, arg4, arg5) -- entry L6246386, 7 blocks
::L6246386::
	d = arg1
	if R then goto L8241082 end
::L6988026::
	if d then goto L16720031 end
::L11087345::
	return
::L16720031::
	if up2 then goto L2481322 end
::L2896768::
	up4(up1.Text)
	goto L11087345
::L2481322::
	c = up3
	c:ElementSave(up2, up1.Text)
	goto L2896768
::L8241082::
	d = up1.Text ~= ""
	goto L6988026
end

function fn_6270433(arg1, arg2, arg3, arg4, arg5) -- entry L6270433, 1 blocks
::L6270433::
	c = game.PlaceId
	up1 = c
	return
end

function fn_6283193(arg1) -- entry L6283193, 1 blocks
::L6283193::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .4
	}, .25, Enum.EasingStyle.Quint)
	c = up1
	R = up3
	i = {
		TextColor3 = Color3.fromRGB(210, 210, 220)
	}
	c:Tween(R, i, .25)
	c = up1
	R = up4
	o = UDim2.new(1, - 12, .5, 0)
	i = {
		Position = o,
		TextColor3 = Color3.fromRGB(192, 132, 252)
	}
	c:Tween(R, i, .25, Enum.EasingStyle.Quint)
	return
end

function fn_6342477(arg1) -- entry L6342477, 3 blocks
::L6342477::
	CircleClick(up1, up2.X, up2.Y)
	c = up3
	c:ClearAll()
	c = up3
	c:Save("_saveSlots", {})
	c = up3
	c:Save("_autoLoadTarget", nil)
	up3.ActiveProfile = "[Auto]"
	if up4 then goto L9690160 end
::L2019268::
	RefreshSlots()
	c = up5.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "All saved profiles and data have been cleared."
	}, {
		Time = 3
	})
	return
::L9690160::
	up4.Text = "Active Profile: <font color=\"#C084FC\"><b>[Auto]</b></font>"
	goto L2019268
end

function fn_6419193() -- entry L6419193, 1 blocks
::L6419193::
	R = up2
	up1.Text = R
	return
end

function fn_6421254(arg1, arg2, arg3, arg4, arg5) -- entry L6421254, 5 blocks
::L6421254::
	c = up1
	W = up2
	N = c
	i = c
	d = "ElasticBehavior"
	if o then goto L5962222 end
::L958343::
	R = W
	if W then goto L6436375 end
::L16109441::
	R = Enum.ElasticBehavior.Never
::L6436375::
	i[d] = R
	return
::L5962222::
	W = Enum.ElasticBehavior.WhenScrollable
	goto L958343
end

function fn_6525482(arg1) -- entry L6525482, 17 blocks
::L6525482::
	c = ipairs
	W = up1
	W = {
		c(unpack({
			W:GetChildren()
		}))
	}
	i = W[3]
	R = W[2]
	W = W[1]
::L1783346::
	i, o = W(R, i)
	if i then goto L2867304 end
::L7540684::
	c = up2
	R = c:Get("_opt_Language", "English")
	i = up3.GetFilteredLanguages()
	j = {
		ipairs(i)
	}
	W = j[1]
	o = j[3]
	N = j[2]
::L3374215::
	o, K = W(N, o)
	if o then goto L11454365 end
::L16160632::
	up3.SetCanvasHeight(# i)
	return
::L11454365::
	j = o
	c = O()
	t = "TextButton"
	x = "BackgroundColor3"
	f[c] = K
	K = c
	l = f[K] == R
	A = l
	c = up4
	u = c
	v = c
	if l then goto L4971352 end
::L7032::
	B = A
	if A then goto L13511589 end
::L7758676::
	B = Color3.fromRGB(18, 13, 30)
::L13511589::
	c = u
	u = "BackgroundTransparency"
	A = (l and .2) or .5
	L = 0
	Fe = "Children"
	b = "Size"
	v = "BorderSizePixel"
	ne[2] = "UICorner"
	z = UDim2.new(1, - 2, 0, up5)
	P = ""
	k = up4
	y = "AutoButtonColor"
	S = "Text"
	H = 25
	M = "LayoutOrder"
	Y = "ZIndex"
	E = false
	Qe = k("UICorner", {
		CornerRadius = UDim.new(0, 5)
	})
	k = up4
	de = Color3.fromRGB(140, 90, 220)
	ne[8] = 0
	me = k("UIStroke", {
		Color = de,
		Transparency = (l and .42) or .82,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	})
	ne[4] = "CornerRadius"
	k = up4
	fe = Color3.fromRGB(160, 100, 255)
	ne[7] = "UDim"
	he = UDim2.new(0, 0, .5, - 9)
	se = UDim2.new(0, 3, 0, 18)
	ge = up4
	ne[6] = ENV[ne[7]]
	ne[7] = "new"
	ne[5] = ne[6][ne[7]]
	ne[7] = 1
	ne[6] = ne[5](ne[7], ne[8])
	ne[3] = {
		[ne[4]] = ne[6]
	}
	ne[1] = {
		ge(ne[2], ne[3])
	}
	ge = l
	ce = k("Frame", {
		BackgroundColor3 = fe,
		BackgroundTransparency = (l and 0) or 1,
		BorderSizePixel = 0,
		Position = he,
		Size = se,
		ZIndex = 26,
		Children = {
			unpack(ne[1])
		}
	})
	k = up4
	fe = 1
	Re = "Position"
	ie = UDim2
	ne[1] = c
	Ge = "TextLabel"
	de = "BackgroundTransparency"
	ie = ie.new(0, 12, 0, 0)
	Oe = "Size"
	qe = c
	Ne = UDim2.new(1, - 24, 1, 0)
	We = "Font"
	he = Enum.Font.GothamBold
	Ce = "TextColor3"
	oe = "Text"
	se = f[K]
	if l then goto L557052 end
::L3568397::
	ae = ge
	if ge then goto L15680092 end
::L16268273::
	ne[2] = "Color3"
	ne[4] = 210
	ne[1] = ENV[ne[2]]
	ne[2] = "fromRGB"
	ge = ne[1][ne[2]]
	ne[3] = 155
	ne[2] = 175
	ne[1] = ge(ne[2], ne[3], ne[4])
	ae = ne[1]
::L15680092::
	ne[5] = "Enum"
	ne[4] = ENV[ne[5]]
	ne[5] = "TextXAlignment"
	ne[3] = ne[4][ne[5]]
	ne[4] = "Left"
	ne[1] = "TextXAlignment"
	ne[2] = ne[3][ne[4]]
	ne[4] = 26
	ne[3] = "ZIndex"
	e = {
		[x] = B,
		[u] = A,
		[v] = L,
		[b] = z,
		[M] = j,
		[S] = P,
		[y] = E,
		[Y] = H,
		[Fe] = {
			Qe,
			me,
			ce,
			unpack({
				k(Ge, {
					[de] = fe,
					[Re] = ie,
					[Oe] = Ne,
					[We] = he,
					[oe] = se,
					[Ce] = ae,
					TextSize = 11,
					[ne[1]] = ne[2],
					[ne[3]] = ne[4]
				})
			})
		}
	}
	t = qe(t, e, up1).MouseButton1Click
	x = closure(fn_14986292, {
		up2,
		K,
		up6,
		up7,
		up8,
		up9,
		up3,
		up1,
		up10,
		up11,
		up12,
		up13,
		up14
	})
	t:Connect(x)
	h(K)
	goto L3374215
::L557052::
	ne[6] = 255
	ne[5] = 185
	ne[4] = "Color3"
	ne[3] = ENV[ne[4]]
	ne[4] = "fromRGB"
	ne[2] = ne[3][ne[4]]
	ne[4] = 215
	ne[3] = ne[2](ne[4], ne[5], ne[6])
	ge = ne[3]
	goto L3568397
::L4971352::
	A = Color3.fromRGB(30, 18, 52)
	goto L7032
::L2867304::
	if o:IsA("TextButton") then goto L9287830 end
::L10175240::
	goto L1783346
::L9287830::
	o:Destroy()
	goto L10175240
end

function fn_6617337(arg1, arg2, arg3, arg4, arg5) -- entry L6617337, 11 blocks
::L6617337::
	R = arg1
	c = (# up1) < 1
	if c then goto L833097 end
::L2023932::
	W = c
	i = type(R) == "number"
	if N then goto L2915137 end
::L1460906::
	d = i
	c = W
	if i then goto L329416 end
::L8667759::
	W = c
	i = type(R) == "string"
	if N then goto L10995015 end
::L6701752::
	d = i
::L329416::
	i = d
	if i then goto L1115574 end
::L13715625::
	return
::L1115574::
	up2(i)
	goto L13715625
::L10995015::
	i = table.find(up1, R)
	goto L6701752
::L2915137::
	i = math.clamp(R, 1, # up1)
	goto L1460906
::L833097::
	return
end

function fn_6650125(arg1, arg2, arg3, arg4) -- entry L6650125, 3 blocks
::L6650125::
	if not checkCondition(arg2) then goto L7446940 end
::L2518836::
	c = up2
	B = UDim2.new(0, 240, 0, 260)
	M = UDim2.new(0, 0, 0, 0)
	E = Enum.ScrollingDirection.Y
	H = Enum.AutomaticSize.Y
	Je = Enum.ElasticBehavior.WhenScrollable
	Ze = up2
	N = {
		Name = "SectionScroll",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = B,
		ScrollBarThickness = 0,
		ScrollBarImageTransparency = 1,
		CanvasSize = M,
		Active = true,
		ClipsDescendants = true,
		ScrollingDirection = E,
		AutomaticCanvasSize = H,
		ElasticBehavior = Je,
		ScrollingEnabled = true,
		Children = {
			unpack({
				Ze("UICorner", {
					CornerRadius = UDim.new(1, 0)
				})
			})
		}
	}
	d = c("ScrollingFrame", N, up3)
	W = O()
	f[W] = d
	c = up2
	K = Enum.HorizontalAlignment.Center
	T = Enum.SortOrder.LayoutOrder
	o = {
		HorizontalAlignment = K,
		SortOrder = T,
		Padding = UDim.new(0, 7)
	}
	d = c("UIListLayout", o, f[W])
	N = O()
	o = closure(fn_4372470, {
		W,
		N
	})
	f[N] = d
	j = closure(fn_5164427, {
		W,
		N
	})
	RegisterLayoutRefresh(j)
	c = f[N]
	d = c:GetPropertyChangedSignal("AbsoluteContentSize")
	d:Connect(o)
	c = f[W]
	d = c:GetPropertyChangedSignal("AbsoluteSize")
	d:Connect(o)
	c = f[W].ChildAdded
	c:Connect(o)
	c = f[W].ChildRemoved
	c:Connect(o)
	j = {}
	c = closure(fn_10312579, {
		up1,
		up2,
		W,
		up4,
		up3,
		up5,
		up6,
		up7,
		up8,
		up9,
		up10,
		up11,
		up12,
		up13,
		up14,
		up15,
		up16
	})
	j.addMenu = c
	d = j.addMenu
	j.AddMenu = d
	return j
::L7446940::
	return up1
end

function fn_6666543(arg1, arg2, arg3, arg4, arg5) -- entry L6666543, 1 blocks
::L6666543::
	R = O()
	f[R] = arg1
	i = O()
	f[i] = arg2
	c = select
	o = {
		MaxTextSize = c(1, unpack({
			ScaledFontSize(f[R], f[i])
		})),
		MinTextSize = 1
	}
	d = up1("UITextSizeConstraint", o)
	N = O()
	f[N] = d
	o = closure(fn_7479084, {
		R,
		i,
		N
	})
	RegisterLayoutRefresh(o)
	return f[N]
end

function fn_6677681(arg1) -- entry L6677681, 3 blocks
::L6677681::
	CircleClick(up1, up2.X, up2.Y)
	if typeof(up3.Callback)=="function" then goto L5160863 end
::L6506854::
	return
::L5160863::
	up3.Callback()
	goto L6506854
end

function fn_6681918(arg1, arg2) -- entry L6681918, 13 blocks
::L6681918::
	W = "Position"
	c = up1
	K = c
	o = c
	R = up2
	j = up3
	if l then goto L3141008 end
::L9175402::
	N = j
	if j then goto L10111742 end
::L7808090::
	N = UDim2.new(0, 2, .5, 0)
::L10111742::
	c = o
	c:Tween(R, {
		[W] = N,
		ImageTransparency = (up3 and 0) or .5
	}, .3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	l = c
	i = up3
	up4.Enabled = i
	d = up1
	j = c
	N = "TextColor3"
	i = up5
	K = up3
	if T then goto L7288391 end
::L405136::
	o = K
	if K then goto L15736624 end
::L8238961::
	o = Color3.fromRGB(145, 145, 150)
::L15736624::
	d:Tween(i, {
		[N] = o
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	d = up1
	d:Tween(up6, {
		BackgroundTransparency = (up3 and .35) or .48
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	R = j
	d = not up7
	if i then goto L960858 end
::L2969661::
	d = up8.HasKeyAccess()
::L960858::
	if d then goto L9167268 end
::L13959450::
	up11(up3)
	return
::L9167268::
	d = up9
	d:ElementSave(up10, up3)
	goto L13959450
::L7288391::
	K = Color3.fromRGB(205, 205, 210)
	goto L405136
::L3141008::
	j = UDim2.new(0, 16, .5, 0)
	goto L9175402
end

function fn_6688507(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) -- entry L6688507, 10 blocks
::L6688507::
	R = arg1
	i = arg2
	j = arg6
	N = O()
	o = O()
	W = O()
	f[W] = arg3
	t = O()
	f[N] = arg4
	l = O()
	K = O()
	T = arg9 or 23
	f[o] = arg5
	f[K] = arg7
	f[l] = arg8
	f[t] = arg10
	e = f[K] or .05
	f[K] = e
	x = f[t] == true
	f[t] = x
	B = up1
	B:RegisterKey(f[W])
	B = up1
	u = B:Get(f[W], j)
	if u~=nil then goto L9558081 end
::L10675164::
	j = math.clamp(j, f[N], f[o])
	b = up2 and 16
	L = O()
	f[L] = b or 12
	b = O()
	A = (up2 and 20) or 14
	z = closure(fn_8379402, {})
	M = closure(fn_3817529, {
		K
	})
	f[b] = A
	S = O()
	A = O()
	f[A] = M
	M = O()
	f[M] = z
	f[S] = nil
	z = R
::L13312333::
	if z then goto L4448390 end
::L11838052::
	E = up3
	Qe = Color3
	ne[2] = 0
	Qe = Qe.fromRGB(18, 12, 30)
	de = UDim2.new(1, 0, 0, (up2 and 52) or 48)
	ne[1] = "UDim"
	We = up3
	Y = E("Frame", {
		BackgroundColor3 = Qe,
		BackgroundTransparency = .2,
		BorderSizePixel = 0,
		Size = de,
		Active = true,
		ZIndex = T,
		Children = {
			unpack({
				We("UICorner", {
					CornerRadius = UDim.new(0, 8)
				})
			})
		}
	}, R)
	ne[5] = "ColorSequenceKeypoint"
	E = O()
	ne[8] = "Color3"
	f[E] = Y
	Y = up3
	me = Color3.fromRGB(140, 90, 220)
	Y("UIStroke", {
		Color = me,
		Transparency = .7,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}, f[E])
	Y = up3
	me = Color3
	ne[9] = 170
	me = me.fromRGB(160, 100, 255)
	fe = UDim2
	ne[10] = 255
	fe = fe.new(0, 0, .5, - 12)
	Oe = UDim2.new(0, 3, 0, 24)
	he = up3
	ge = ENV[ne[1]]
	ne[1] = "new"
	qe = ge[ne[1]]
	ne[11] = 210
	ne[1] = 1
	ge = qe(ne[1], ne[2])
	ne[2] = "ColorSequence"
	oe = he("UICorner", {
		CornerRadius = ge
	})
	he = up3
	ne[1] = ENV[ne[2]]
	ne[2] = "new"
	ge = ne[1][ne[2]]
	ne[4] = ENV[ne[5]]
	ne[5] = "new"
	ne[3] = ne[4][ne[5]]
	ne[7] = ENV[ne[8]]
	ne[5] = 0
	ne[8] = "fromRGB"
	ne[6] = ne[7][ne[8]]
	ne[8] = 220
	ne[7] = {
		ne[6](ne[8], ne[9], ne[10])
	}
	ne[4] = ne[3](ne[5], unpack(ne[7]))
	ne[6] = "ColorSequenceKeypoint"
	ne[10] = 55
	ne[5] = ENV[ne[6]]
	ne[6] = "new"
	ne[3] = ne[5][ne[6]]
	ne[6] = 1
	ne[9] = "Color3"
	ne[8] = ENV[ne[9]]
	ne[9] = "fromRGB"
	ne[7] = ne[8][ne[9]]
	ne[9] = 110
	ne[8] = {
		ne[7](ne[9], ne[10], ne[11])
	}
	ne[5] = {
		ne[3](ne[6], unpack(ne[8]))
	}
	ne[2] = {
		ne[4],
		unpack(ne[5])
	}
	ne[1] = ge(ne[2])
	ne[2] = 90
	Je = {
		BackgroundColor3 = me,
		BackgroundTransparency = .15,
		BorderSizePixel = 0,
		Position = fe,
		Size = Oe,
		ZIndex = T + 1,
		Children = {
			oe,
			unpack({
				he("UIGradient", {
					Color = ne[1],
					Rotation = ne[2]
				})
			})
		}
	}
	Y("Frame", Je, f[E])
	Y = up3
	ce = UDim2.new
	ne[3] = 0
	Ze = ce(0, 14, 0, 6)
	Xe = UDim2.new(1, - 70, 0, 14)
	fe = Enum.Font
	ne[12] = "Enum"
	de = fe.GothamBold
	ie = Color3.fromRGB(215, 185, 255)
	he = Enum.TextXAlignment.Left
	ne[6] = "ApplyStrokeMode"
	Y("TextLabel", {
		BackgroundTransparency = 1,
		Position = Ze,
		Size = Xe,
		Font = de,
		Text = i,
		TextColor3 = ie,
		TextSize = 11,
		TextXAlignment = he,
		ZIndex = T + 1
	}, f[E])
	Y = up3
	Ze = Vector2
	ne[10] = "Enum"
	Ze = Ze.new(1, 0)
	Xe = UDim2.new(1, - 10, 0, 6)
	fe = UDim2.new(0, 44, 0, 14)
	Re = Enum.Font.GothamBold
	We = f[M](j)
	he = Color3.fromRGB(192, 132, 252)
	H = Y("TextLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = Ze,
		Position = Xe,
		Size = fe,
		Font = Re,
		Text = We,
		TextColor3 = he,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Right,
		ZIndex = T + 1
	}, f[E])
	Y = O()
	f[Y] = H
	H = up3
	ne[4] = 90
	ce = Color3.fromRGB(10, 10, 16)
	Xe = UDim2.new
	ie = (up2 and 30) or 28
	ne[2] = "UDim"
	de = Xe(0, 12, 0, ie)
	Re = UDim2.new(1, - 24, 0, (up2 and 14) or 10)
	ne[5] = 220
	oe = up3
	ne[1] = ENV[ne[2]]
	ne[2] = "new"
	ge = ne[1][ne[2]]
	ne[2] = 1
	ne[1] = ge(ne[2], ne[3])
	se = oe("UICorner", {
		CornerRadius = ne[1]
	})
	oe = up3
	ne[3] = "Color3"
	ne[2] = ENV[ne[3]]
	ne[3] = "fromRGB"
	ne[1] = ne[2][ne[3]]
	ne[3] = 140
	ne[2] = ne[1](ne[3], ne[4], ne[5])
	ne[4] = "Thickness"
	ne[1] = "Transparency"
	ne[3] = .72
	ne[9] = ENV[ne[10]]
	ne[5] = 1
	ne[10] = "ApplyStrokeMode"
	ne[8] = ne[9][ne[10]]
	ne[9] = "Border"
	ne[7] = ne[8][ne[9]]
	he = {
		se,
		unpack({
			oe("UIStroke", {
				Color = ne[2],
				[ne[1]] = ne[3],
				[ne[4]] = ne[5],
				[ne[6]] = ne[7]
			})
		})
	}
	ne[3] = "ColorSequenceKeypoint"
	Fe = H("Frame", {
		BackgroundColor3 = ce,
		BackgroundTransparency = .1,
		Position = de,
		Size = Re,
		Active = true,
		ZIndex = T + 2,
		Children = he
	}, f[E])
	H = O()
	f[H] = Fe
	Fe = up3
	Ze = Color3.fromRGB(160, 100, 255)
	de = UDim2.new
	ne[9] = 254
	ie = f[N]
	ne[8] = 246
	ne[6] = "Color3"
	fe = de((j - ie) / (f[o] - f[N]), 0, 1, 0)
	We = up3
	Ne = We("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	We = up3
	qe = ColorSequence
	ne[7] = 92
	ae = qe.new
	ne[2] = ENV[ne[3]]
	ne[3] = "new"
	ne[1] = ne[2][ne[3]]
	ne[3] = 0
	ne[5] = ENV[ne[6]]
	ne[6] = "fromRGB"
	ne[4] = ne[5][ne[6]]
	ne[6] = 139
	ne[5] = {
		ne[4](ne[6], ne[7], ne[8])
	}
	ne[7] = "Color3"
	ne[2] = ne[1](ne[3], unpack(ne[5]))
	ne[4] = "ColorSequenceKeypoint"
	ne[3] = ENV[ne[4]]
	ne[4] = "new"
	ne[1] = ne[3][ne[4]]
	ne[4] = 1
	ne[8] = 180
	ne[6] = ENV[ne[7]]
	ne[7] = "fromRGB"
	ne[5] = ne[6][ne[7]]
	ne[7] = 216
	ne[6] = {
		ne[5](ne[7], ne[8], ne[9])
	}
	ne[3] = {
		ne[1](ne[4], unpack(ne[6]))
	}
	Qe = {
		BackgroundColor3 = Ze,
		BackgroundTransparency = 0,
		Size = fe,
		ZIndex = T + 3,
		Children = {
			Ne,
			unpack({
				We("UIGradient", {
					Color = ae({
						ne[2],
						unpack(ne[3])
					})
				})
			})
		}
	}
	me = f[H]
	ne[4] = "UDim"
	ne[6] = 132
	Je = Fe("Frame", Qe, me)
	ne[7] = 252
	Fe = O()
	ne[5] = 0
	f[Fe] = Je
	Je = up3
	Ge = Color3.fromRGB(255, 255, 255)
	Xe = Vector2.new
	ne[1] = "CornerRadius"
	de = Xe(.5, .5)
	Re = UDim2.new((j - f[N]) / (f[o] - f[N]), 0, .5, 0)
	ie = UDim2.new(0, f[L], 0, f[L])
	ne[8] = "ApplyStrokeMode"
	Ce = up3
	ne[3] = ENV[ne[4]]
	ne[4] = "new"
	ne[2] = ne[3][ne[4]]
	ne[4] = 1
	ne[3] = ne[2](ne[4], ne[5])
	ge = {
		[ne[1]] = ne[3]
	}
	ne[2] = "Color"
	ae = Ce("UICorner", ge)
	ne[5] = "Color3"
	Ce = up3
	ne[4] = ENV[ne[5]]
	ne[5] = "fromRGB"
	ne[3] = ne[4][ne[5]]
	ne[5] = 192
	ne[4] = ne[3](ne[5], ne[6], ne[7])
	ne[5] = .3
	ne[7] = 1.5
	ne[11] = ENV[ne[12]]
	ne[6] = "Thickness"
	ne[12] = "ApplyStrokeMode"
	ne[10] = ne[11][ne[12]]
	ne[11] = "Border"
	ne[3] = "Transparency"
	ne[9] = ne[10][ne[11]]
	ne[1] = {
		[ne[2]] = ne[4],
		[ne[3]] = ne[5],
		[ne[6]] = ne[7],
		[ne[8]] = ne[9]
	}
	me = {
		BackgroundColor3 = Ge,
		AnchorPoint = de,
		Position = Re,
		Size = ie,
		Active = true,
		ZIndex = T + 4,
		Children = {
			ae,
			unpack({
				Ce("UIStroke", ne[1])
			})
		}
	}
	k = Je("Frame", me, f[H])
	Je = O()
	f[Je] = k
	k = up3
	Oe = Vector2.new(.5, .5)
	We = UDim2.new(.5, 0, .5, 0)
	ne[2] = 14
	Ne = UDim2.new
	Ce = math.max(f[L] + 14, 28)
	ae = math.max
	ne[1] = f[L]
	ge = ne[1] + ne[2]
	ne[1] = 28
	ce = {
		Name = "TouchHitbox",
		BackgroundTransparency = 1,
		AnchorPoint = Oe,
		Position = We,
		Size = Ne(0, Ce, 0, unpack({
			ae(ge, ne[1])
		})),
		Text = "",
		ZIndex = T + 5
	}
	k("TextButton", ce, f[Je])
	k = O()
	f[k] = j
	me = O()
	f[me] = false
	ce = O()
	f[ce] = nil
	Ze = closure(fn_15128608, {
		l,
		t
	})
	Qe = O()
	Ge = closure(fn_13920609, {
		A,
		N,
		o,
		k,
		up4,
		Fe,
		Je,
		Y,
		M,
		up1,
		W,
		Qe
	})
	f[Qe] = Ze
	Ze = O()
	f[Ze] = Ge
	Xe = closure(fn_13460073, {
		H,
		Ze,
		N,
		o
	})
	Ge = O()
	f[Ge] = Xe
	de = O()
	fe = closure(fn_16181534, {
		me,
		de,
		ce,
		up5,
		S,
		up4,
		Je,
		L,
		up1,
		W,
		k,
		Qe
	})
	f[de] = nil
	Xe = O()
	f[Xe] = fe
	fe = O()
	Re = closure(fn_14834215, {
		de,
		me,
		ce,
		up5,
		S,
		Ge,
		up4,
		Je,
		b
	})
	f[fe] = Re
	Re = f[H].InputBegan
	Re:Connect(f[fe])
	Re = f[Je].InputBegan
	Re:Connect(f[fe])
	Re = f[Je]
	Oe = Re:FindFirstChild("TouchHitbox")
	if Oe then goto L753127 end
::L3049866::
	Re = f[E].InputBegan
	ie = Re.Connect
	ie(Re, closure(fn_5897131, {
		E,
		up2,
		fe
	}))
	Re = up6.InputChanged
	We = closure(fn_5209898, {
		me,
		de,
		Ge
	})
	Re:Connect(We)
	Re = up6.InputEnded
	We = closure(fn_10243567, {
		de,
		Xe
	})
	Re:Connect(We)
	f[Ze](j, true)
	return closure(fn_10435628, {k})
::L753127::
	Re = Oe.InputBegan
	Re:Connect(f[fe])
	goto L3049866
::L4448390::
	if z:IsA("ScrollingFrame") then goto L15328357 end
::L3431111::
	z = z.Parent
	goto L13312333
::L15328357::
	f[S] = z
	goto L11838052
::L9558081::
	j = u
	goto L10675164
end

function fn_6715438() -- entry L6715438, 1 blocks
::L6715438::
	c = up1.IsLoaded
	up2 = c
	return
end

function fn_6718007(arg1, arg2, arg3, arg4) -- entry L6718007, 58 blocks
::L6718007::
	N = {
		ipairs(up1)
	}
	R = N[2]
	i = N[3]
	W = N[1]
::L3787172::
	i, o = W(R, i)
	if i then goto L15965419 end
::L12794717::
	c = {}
	up1 = c
	R = up2
	i = R:Get("_saveSlots", {})
	up3 = i
	R = up2
	W = R:Get("_autoLoadTarget", nil)
	if up4 then goto L11772151 end
::L11612274::
	if (#up3)==0 then goto L194551 end
::L5109901::
	l = {
		ipairs(up3)
	}
	j = l[3]
	o = l[2]
	N = l[1]
::L2683475::
	j, K = N(o, j)
	if j then goto L5348599 end
::L2582157::
	return
::L5348599::
	R = j
	l = W == K.name
	T = up2.ActiveProfile == K.name
	e = c
	t = up7 == R
	if x then goto L11587133 end
::L9840701::
	c = e
	M = c
	e = O()
	f[e] = t
	A = "BackgroundColor3"
	L = c
	t = up5
	B = "Frame"
	b = f[e]
	if z then goto L9956129 end
::L9413705::
	v = b
	if b then goto L322163 end
::L16754286::
	v = Color3.fromRGB(15, 10, 26)
::L322163::
	c = L
	S = "Size"
	fe = c
	L = "BackgroundTransparency"
	M = "BorderSizePixel"
	z = 0
	b = 0
	y = UDim2.new(1, 0, 0, 42)
	Y = 23
	H = "Children"
	P = "LayoutOrder"
	Je = up5
	E = "ZIndex"
	Xe = c
	k = Je("UICorner", {
		CornerRadius = UDim.new(0, 7)
	})
	Je = up5
	Ze = "Color"
	me = "UIStroke"
	de = f[e]
	if Re then goto L6650283 end
::L8608514::
	c = fe
	Ge = de
	if de then goto L10966490 end
::L15073330::
	Oe = c
	fe = c
	Re = l
	if l then goto L13078094 end
::L14232786::
	de = Re
	if Re then goto L12792313 end
::L13773829::
	de = Color3.fromRGB(90, 60, 150)
::L12792313::
	Ge = de
::L10966490::
	c = Xe
	fe = c
	de = f[e] and .2
	Xe = "Transparency"
	if Re then goto L10090933 end
::L1049650::
	de = (l and .4) or .75
::L10090933::
	c = fe
	u = {
		[A] = v,
		[L] = b,
		[M] = z,
		[S] = y,
		[P] = R,
		[E] = Y,
		[H] = {
			k,
			unpack({
				Je(me, {
					[Ze] = Ge,
					[Xe] = de,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				})
			})
		}
	}
	x = t(B, u, up6)
	t = O()
	b = c
	u = "Frame"
	M = l
	z = c
	f[t] = x
	v = "BackgroundColor3"
	x = up5
	if l then goto L10900884 end
::L8257433::
	L = M
	if M then goto L15298279 end
::L276787::
	L = Color3.fromRGB(120, 70, 200)
::L15298279::
	c = b
	P = UDim2.new(0, 0, 0, 6)
	E = UDim2.new(0, 3, 1, - 12)
	Je = up5
	A = {
		[v] = L,
		BorderSizePixel = 0,
		Position = P,
		Size = E,
		ZIndex = 24,
		Children = {
			unpack({
				Je("UICorner", {
					CornerRadius = UDim.new(1, 0)
				})
			})
		}
	}
	x(u, A, f[t])
	x = up5
	b = Color3.fromRGB(38, 22, 70)
	E = UDim2.new(0, 10, .5, - 10)
	H = UDim2.new(0, 20, 0, 20)
	Qe = up5
	de = UDim
	ne[2] = "Enum"
	me = Qe("UICorner", {
		CornerRadius = de.new(0, 5)
	})
	Qe = up5
	Oe = UDim2.new(1, 0, 1, 0)
	ie = Enum.Font.GothamBold
	he = tostring(R)
	se = Color3.fromRGB(200, 160, 255)
	ne[1] = ENV[ne[2]]
	ne[2] = "TextXAlignment"
	ge = ne[1][ne[2]]
	ne[1] = "Center"
	qe = ge[ne[1]]
	ne[1] = 25
	A = {
		BackgroundColor3 = b,
		BackgroundTransparency = .2,
		BorderSizePixel = 0,
		Position = E,
		Size = H,
		ZIndex = 24,
		Children = {
			me,
			unpack({
				Qe("TextLabel", {
					BackgroundTransparency = 1,
					Size = Oe,
					Font = ie,
					Text = he,
					TextColor3 = se,
					TextSize = 10,
					TextXAlignment = qe,
					ZIndex = ne[1]
				})
			})
		}
	}
	x("Frame", A, f[t])
	x = 0
	if K.data then goto L2053420 end
::L11969602::
	z = 1
	M = "BackgroundTransparency"
	v = "TextLabel"
	u = up5
	S = "Position"
	y = UDim2.new(0, 36, 0, 6)
	P = "Size"
	Y = UDim2.new(1, - 105, 0, 15)
	E = "Font"
	H = Enum.Font.GothamBold
	k = c
	Fe = "Text"
	Je = K.name
	if Qe then goto L1306233 end
::L12549371::
	Je = "Profile " .. R
::L1306233::
	c = k
	me = c
	ce = f[e]
	k = "TextColor3"
	Ze = c
	if Ge then goto L8170989 end
::L6395254::
	c = Ze
	Qe = ce
	if ce then goto L8691554 end
::L3054961::
	Xe = c
	Ge = T
	Ze = c
	if T then goto L9248512 end
::L4279503::
	ce = Ge
	if Ge then goto L3415655 end
::L6205337::
	ce = Color3.fromRGB(190, 170, 230)
::L3415655::
	Qe = ce
::L8691554::
	c = me
	u(v, {
		[M] = z,
		[S] = y,
		[P] = Y,
		[E] = H,
		[Fe] = Je,
		[k] = Qe,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 24
	}, f[t])
	v = string.format("%d keys", x)
	if l then goto L13177229 end
::L10635921::
	if T then goto L14461049 end
::L11308006::
	S = "TextLabel"
	y = "BackgroundTransparency"
	E = 1
	M = up5
	Y = "Position"
	Fe = UDim2.new(0, 36, 0, 22)
	H = "Size"
	de = c
	k = UDim2.new(1, - 105, 0, 13)
	Je = "Font"
	Ge = c
	Qe = Enum.Font.Gotham
	ce = "TextColor3"
	Xe = l
	me = "Text"
	if l then goto L7581452 end
::L3315417::
	Ze = Xe
	c = de
	if Xe then goto L9666058 end
::L10914031::
	Re = c
	fe = T
	de = c
	if T then goto L4332271 end
::L6252008::
	Xe = fe
	if fe then goto L10614489 end
::L13944858::
	Xe = Color3.fromRGB(135, 115, 165)
::L10614489::
	Ze = Xe
::L9666058::
	c = Ge
	ne[12] = "ApplyStrokeMode"
	M(S, {
		[y] = E,
		[Y] = Fe,
		[H] = k,
		[Je] = Qe,
		[me] = v,
		[ce] = Ze,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 24
	}, f[t])
	ne[10] = 100
	M = up5
	ne[8] = "UDim"
	H = Vector2
	ne[11] = 230
	ne[3] = "UICorner"
	H = H.new(1, .5)
	Je = Color3.fromRGB(70, 35, 140)
	Ge = UDim2.new(1, - 8, .5, 0)
	ne[5] = "CornerRadius"
	Xe = UDim2.new
	ne[16] = "Enum"
	de = Xe(0, 48, 0, 22)
	ie = Color3.fromRGB(215, 185, 255)
	We = Enum.Font.GothamBold
	ne[1] = up5
	ne[7] = ENV[ne[8]]
	ne[8] = "new"
	ne[9] = 5
	ne[6] = ne[7][ne[8]]
	ne[8] = 0
	ne[7] = ne[6](ne[8], ne[9])
	ne[9] = "Color3"
	ne[4] = {
		[ne[5]] = ne[7]
	}
	ne[2] = ne[1](ne[3], ne[4])
	ne[1] = up5
	ne[4] = "UIStroke"
	ne[6] = "Color"
	ne[8] = ENV[ne[9]]
	ne[9] = "fromRGB"
	ne[7] = ne[8][ne[9]]
	ne[9] = 150
	ne[8] = ne[7](ne[9], ne[10], ne[11])
	ne[15] = ENV[ne[16]]
	ne[9] = .6
	ne[11] = 1
	ne[7] = "Transparency"
	ne[10] = "Thickness"
	ne[16] = "ApplyStrokeMode"
	ne[14] = ne[15][ne[16]]
	ne[15] = "Border"
	ne[13] = ne[14][ne[15]]
	ne[5] = {
		[ne[6]] = ne[8],
		[ne[7]] = ne[9],
		[ne[10]] = ne[11],
		[ne[12]] = ne[13]
	}
	ne[3] = {
		ne[1](ne[4], ne[5])
	}
	y = {
		AnchorPoint = H,
		BackgroundColor3 = Je,
		BackgroundTransparency = .35,
		BorderSizePixel = 0,
		Position = Ge,
		Size = de,
		Text = "Load",
		TextColor3 = ie,
		Font = We,
		TextSize = 10,
		AutoButtonColor = false,
		ZIndex = 25,
		Children = {
			ne[2],
			unpack(ne[3])
		}
	}
	S = M("TextButton", y, f[t])
	M = O()
	f[M] = S
	S = f[M].MouseEnter
	P = S.Connect
	P(S, closure(fn_9637429, {
		up9,
		M
	}))
	S = f[M].MouseLeave
	y = closure(fn_3231578, {
		up9,
		M
	})
	S:Connect(y)
	S = O()
	P = O()
	f[S] = R
	f[P] = K
	y = f[M].MouseButton1Click
	Y = closure(fn_14425248, {
		M,
		up10,
		P,
		up2,
		S,
		up11,
		up12
	})
	h(P)
	y:Connect(Y)
	y = up5
	me = UDim2.new(1, - 62, 1, 0)
	Ze = UDim2.new(0, 0, 0, 0)
	h(M)
	E = y("TextButton", {
		BackgroundTransparency = 1,
		Size = me,
		Position = Ze,
		Text = "",
		ZIndex = 24
	}, f[t])
	y = O()
	f[y] = E
	E = f[y].MouseEnter
	H = closure(fn_13065761, {
		e,
		up9,
		t
	})
	E:Connect(H)
	E = f[y].MouseLeave
	H = closure(fn_9491825, {
		up9,
		t,
		e
	})
	Y = E.Connect
	h(e)
	Y(E, H)
	E = f[y].MouseButton1Click
	H = closure(fn_2683243, {
		y,
		up10,
		up8,
		up7,
		S,
		up13
	})
	E:Connect(H)
	Y = table
	h(S)
	E = Y.insert
	h(y)
	E(up1, f[t])
	h(t)
	goto L2683475
::L4332271::
	fe = Color3.fromRGB(140, 220, 170)
	goto L6252008
::L7581452::
	Xe = Color3.fromRGB(180, 130, 255)
	goto L3315417
::L14461049::
	v = v .. "  \226\128\162  active"
	goto L11308006
::L13177229::
	v = v .. "  \226\128\162  auto load"
	goto L11308006
::L9248512::
	Ge = Color3.fromRGB(225, 195, 255)
	goto L4279503
::L8170989::
	ce = Color3.fromRGB(240, 220, 255)
	goto L6395254
::L2053420::
	M = {
		pairs(K.data)
	}
	A = M[1]
	v = M[2]
	L = M[3]
::L3197000::
	L = A(v, L)
	if L then goto L11607993 end
::L7534058::
	goto L11969602
::L11607993::
	x = x + 1
	goto L3197000
::L10900884::
	M = Color3.fromRGB(190, 140, 255)
	goto L8257433
::L13078094::
	Re = Color3.fromRGB(160, 105, 240)
	goto L14232786
::L6650283::
	de = Color3.fromRGB(190, 130, 255)
	goto L8608514
::L9956129::
	b = Color3.fromRGB(24, 16, 42)
	goto L9413705
::L11587133::
	t = up8
	goto L9840701
::L194551::
	R = up5
	e = UDim2.new(1, 0, 0, 24)
	x = Enum.Font.Gotham
	L = Color3.fromRGB(130, 105, 160)
	N = R("TextLabel", {
		BackgroundTransparency = 1,
		Size = e,
		Font = x,
		Text = "No saved profiles. Create or Quick Save above!",
		TextColor3 = L,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Center,
		ZIndex = 23
	}, up6)
	table.insert(up1, N)
	goto L5109901
::L11772151::
	R = up4
	j = string.format("PROFILES & SLOTS (%d/10)", # up3)
	R.Text = j
	goto L11612274
::L15965419::
	o:Destroy()
	goto L3787172
end

function fn_6734372(arg1, arg2) -- entry L6734372, 1 blocks
::L6734372::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .6
	}, .15)
	return
end

function fn_6734820(...) -- MAIN CHUNK, 85 blocks
::L6734820::
	i = O()
	f[i] = true
	d = string
	o = O()
	l = closure(fn_9879197, {
		o
	})
	N = O()
	c = d.gmatch
	W = O()
	f[W] = c
	c = closure(fn_10975621, {})
	f[N] = c
	f[o] = false
	d = pcall(l)
	if K then goto L3166973 end
::L7227172::
	c = math.random
	K = O()
	f[K] = c
	T = table
	t = table.concat
	if e then goto L12697888 end
::L5516232::
	d = T
	if T then goto L7655833 end
::L6537369::
	d = unpack
::L7655833::
	T = O()
	f[T] = d
	d = f[K](3, 65)
	t = O()
	u = closure(fn_8782778, {})
	f[t] = d
	e = 0
	x = 0
	u = ({
		unpack({
			pcall(u)
		})
	})[2]
	c = tonumber
	A = f[W]
	d = c(unpack({
		A(tostring(u), ":(%d*):")()
	}))
	A = O()
	f[A] = d
	L = f[t]
	b = 1
	M = 1 < 0
	v = 1 - 1
::L15685043::
	v = v + b
	if (M and (v>=L)) or ((not M) and (v<=L)) then goto L3235158 end
::L15844702::
	v = f[i]
	if L then goto L11964045 end
::L13072907::
	f[i] = v
	c = f[i]
	if c then goto L7242512 end
::L10042567::
::L14556121::
	return unpack({closure(fn_5979815, {N})()})
::L7242512::
::L13046150::
	h(K)
	h(o)
	h(N)
	h(A)
	h(T)
	o = c
	h(t)
	h(W)
	h(i)
	W = c
	N = not game
	if j then goto L5023197 end
::L12487060::
	i = N
	c = o
	if N then goto L4999633 end
::L16171439::
	o = c
	N = game.ClassName ~= "DataModel"
	if j then goto L11184939 end
::L493634::
	T = c
	K = c
	l = typeof
	if t then goto L518596 end
::L16217784::
	c = T
	j = l
	if l then goto L6169406 end
::L9527632::
	t = c
	T = getmetatable
	if e then goto L2810573 end
::L13388955::
	j = not T
::L6169406::
	N = j
::L11184939::
	i = N
::L4999633::
	c = W
	if i then goto L5466459 end
::L14442006::
	o = O()
	f[o] = {}
	N = {}
	i = O()
	f[i] = {}
	f[o].Notification = {}
	j = f[o].Notification
	K = c
	N.Notify = j
	W = closure(fn_7277703, {})
	j = W("Players")
	if l then goto L5183546 end
::L16434392::
	l = game
	j = l:GetService("Players")
::L5183546::
	c = K
	K = O()
	f[K] = j
	l = c
	j = W("UserInputService")
	if T then goto L2861829 end
::L5986378::
	T = game
	j = T:GetService("UserInputService")
::L2861829::
	c = l
	l = O()
	f[l] = j
	T = c
	j = W("TweenService")
	if t then goto L1222865 end
::L699892::
	t = game
	j = t:GetService("TweenService")
::L1222865::
	c = T
	T = O()
	t = c
	f[T] = j
	j = W("TextService")
	if e then goto L10298689 end
::L9433967::
	e = game
	j = e:GetService("TextService")
::L10298689::
	c = t
	t = O()
	f[t] = j
	e = c
	j = W("HttpService")
	if x then goto L6579499 end
::L5773796::
	x = game
	j = x:GetService("HttpService")
::L6579499::
	c = e
	e = O()
	f[e] = j
	j = f[K].LocalPlayer
	x = O()
	f[x] = j
	if not f[x] then goto L8668939 end
::L4772142::
	u = c
	A = f[x]
	M = c
	if z then goto L4039148 end
::L8345818::
	B = A
	if A then goto L4209512 end
::L10396094::
	B = {
		X = 0,
		Y = 0
	}
::L4209512::
	c = u
	u = O()
	A = c
	z = c
	f[u] = B
	M = gethui
	if S then goto L11550642 end
::L12554431::
	B = M
	c = z
	if M then goto L2336281 end
::L16647392::
	z = c
	M = W("CoreGui")
	if S then goto L1763674 end
::L3971036::
	S = game
	M = S:GetService("CoreGui")
::L1763674::
	B = M
::L2336281::
	c = A
	A = O()
	f[A] = B
	M = {
		Players = f[K],
		UIS = f[l],
		Tween = f[T],
		Text = f[t],
		Http = f[e],
		LocalPlayer = f[x],
		Mouse = f[u]
	}
	z = c
	P = c
	N.Services = M
	B = "ENV"
	S = getgenv
	if y then goto L15591848 end
::L7796683::
	M = S
	if S then goto L15828468 end
::L7756536::
	M = _G
::L15828468::
	N[B] = M
	M = f[A]
	c = z
	N.CoreGui = M
	B = N.Notify
	M = O()
	f[M] = B
	B = TweenInfo.new
	z = N.ENV
	S = O()
	f[S] = B
	B = O()
	f[B] = z
	f[o]._CurrentGui = nil
	N.Save = {
		FolderName = "Quantum Onyx Hub",
		Settings = {},
		_Keys = {},
		RegisteredControls = {},
		ActiveProfile = "[Auto]"
	}
	z = N.Save
	P = O()
	f[P] = z
	y = f[P]
	z = closure(fn_14793414, {})
	y.RegisterKey = z
	z = closure(fn_2956410, {})
	f[P].RegisterControl = z
	y = f[P]
	z = closure(fn_10806006, {})
	Y = O()
	y.PruneStaleKeys = z
	z = closure(fn_2721994, {
		e
	})
	JsonEncode = z
	y = closure(fn_14963951, {
		e
	})
	JsonDecode = y
	f[Y] = nil
	E = closure(fn_2177973, {
		x,
		K
	})
	f[P].GetPlayerName = E
	H = f[P]
	E = closure(fn_4717418, {})
	H.GetGameId = E
	H = f[P]
	E = closure(fn_1569863, {
		Y
	})
	H.GetFileName = E
	H = f[P]
	E = closure(fn_12606541, {})
	H.Save = E
	E = closure(fn_5706739, {})
	f[P].Load = E
	E = closure(fn_7359484, {})
	f[P].Get = E
	H = f[P]
	E = closure(fn_7525686, {})
	H.GetSnapshot = E
	E = closure(fn_8122136, {})
	f[P].ApplySnapshot = E
	H = f[P]
	E = closure(fn_8035756, {})
	H.ResetToDefaults = E
	E = closure(fn_4062653, {})
	f[P].ElementSave = E
	H = f[P]
	E = closure(fn_15796798, {})
	H.ClearAll = E
	k = f[P]
	f[o].SaveSystem = k
	f[o].Modules = N
	N.Util = {}
	N.Tween = {}
	N.Media = {}
	N.Theme = {}
	N.UI = {}
	E = N.Util
	H = N.Tween
	k = N.Media
	Qe = N.Theme
	me = O()
	f[me] = E
	E = O()
	f[E] = H
	H = O()
	f[H] = Qe
	ce = f[me]
	Qe = closure(fn_14530042, {})
	ce.Set = Qe
	ce = f[me]
	Qe = closure(fn_4785707, {
		B,
		A
	})
	ce.Protect = Qe
	ce = O()
	f[ce] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	Qe = closure(fn_9490443, {
		ce
	})
	f[me].RandomName = Qe
	Qe = closure(fn_12415870, {
		me
	})
	f[me].Create = Qe
	Ze = f[me]
	Qe = closure(fn_4026069, {})
	Ze.GuiCenterLocal = Qe
	Ze = f[me]
	Qe = closure(fn_10284601, {})
	Ze.PinAbsToOffset = Qe
	Qe = closure(fn_2824777, {
		l
	})
	f[me].MakeDraggable = Qe
	Qe = closure(fn_12711716, {
		E
	})
	f[me].BindHover = Qe
	Ze = f[me]
	Qe = closure(fn_3079582, {})
	Ze.Trim = Qe
	Ze = O()
	f[Ze] = {}
	Ge = f[me]
	Qe = closure(fn_8610673, {
		Ze,
		t
	})
	Ge.TextHeight = Qe
	Qe = closure(fn_391553, {})
	f[me].WrapText = Qe
	Qe = closure(fn_11404242, {
		me
	})
	f[me].DescMetrics = Qe
	Qe = closure(fn_16575680, {
		S
	})
	f[E].Info = Qe
	Ge = f[E]
	Qe = closure(fn_8718728, {
		me,
		E,
		T
	})
	Ge.Play = Qe
	Qe = closure(fn_15353536, {
		E
	})
	f[E].Group = Qe
	Qe = closure(fn_1753810, {
		P
	})
	k.PathToAsset = Qe
	Qe = closure(fn_10232381, {})
	k.ListImages = Qe
	Qe = closure(fn_16057988, {})
	k.ListVideos = Qe
	Qe = closure(fn_8671222, {})
	k.IsVideo = Qe
	Qe = f[me].Create
	Ge = O()
	f[Ge] = Qe
	Qe = f[me].Protect
	Xe = f[me].RandomName
	fe = O()
	f[fe] = Qe
	Qe = O()
	f[Qe] = Xe
	Re = f[me].TextHeight
	Oe = f[me].WrapText
	We = O()
	f[We] = Re
	Re = O()
	f[Re] = Oe
	Oe = k.PathToAsset
	Ne = k.ListImages
	he = k.ListVideos
	oe = k.IsVideo
	se = O()
	f[se] = Oe
	Oe = O()
	f[Oe] = Ne
	Ne = O()
	f[Ne] = he
	he = O()
	f[he] = oe
	oe = closure(fn_1882883, {
		E
	})
	f[i].Tween = oe
	oe = closure(fn_11710107, {})
	f[o].DestroyGui = oe
	oe = closure(fn_10840193, {
		Ge,
		E
	})
	CircleClick = oe
	oe = f[B].QuantumThemeManager
	Ce = O()
	f[Ce] = oe
	if not f[Ce] then goto L11764883 end
::L16521105::
	ge = f[Ce]
	f[H].Manager = ge
	ae = closure(fn_5127253, {
		Ce
	})
	f[H].Color = ae
	ne[1] = c
	ae = closure(fn_12830908, {
		H
	})
	ThemeColor = ae
	ae = closure(fn_15563731, {
		A,
		Qe,
		fe,
		Ge
	})
	ne[4] = "ActiveMessages"
	f[M].Init = ae
	qe = "ActiveMessages"
	ae = f[M]
	ne[3] = f[M]
	ne[2] = ne[3][ne[4]]
	ge = ne[2]
	if ne[2] then goto L14019190 end
::L14620984::
	ne[2] = {}
	ge = ne[2]
::L14019190::
	ae[qe] = ge
	ae = f[M]
	ne[4] = "ActiveById"
	ne[3] = f[M]
	qe = "ActiveById"
	c = ne[1]
	ne[2] = ne[3][ne[4]]
	ge = ne[2]
	ne[1] = c
	if ne[2] then goto L12749505 end
::L160723::
	ne[2] = {}
	ge = ne[2]
::L12749505::
	ne[27] = "Hindi"
	ne[42] = "uk"
	ne[34] = "ar"
	ne[76] = "sr"
	ne[30] = "zh-cn"
	ne[74] = "hr"
	ne[56] = "el"
	ne[60] = "hu"
	ne[6] = "id"
	ne[57] = "Swedish"
	ne[69] = "Slovak"
	ne[51] = "Romanian"
	ne[12] = "de"
	ne[79] = "Latvian"
	ne[10] = "fr"
	ne[49] = "Persian"
	ne[48] = "ur"
	ae[qe] = ge
	ne[82] = "sl"
	qe = f[M]
	ne[1] = "English"
	ne[59] = "Hungarian"
	ne[55] = "Greek"
	ne[66] = "no"
	ne[31] = "Chinese Traditional"
	ne[36] = "it"
	ne[33] = "Arabic"
	ne[65] = "Norwegian"
	ne[68] = "he"
	ne[63] = "Finnish"
	ne[50] = "fa"
	ne[32] = "zh-tw"
	ne[28] = "hi"
	ne[37] = "Polish"
	ne[77] = "Lithuanian"
	ne[8] = "es"
	ne[15] = "Korean"
	ne[75] = "Serbian"
	ne[64] = "fi"
	ne[58] = "sv"
	ne[19] = "Thai"
	ne[29] = "Chinese Simplified"
	ae = closure(fn_8127549, {
		M,
		Re,
		We,
		Ge,
		i,
		E,
		u
	})
	ne[73] = "Croatian"
	ne[3] = "Filipino"
	ne[78] = "lt"
	ne[67] = "Hebrew"
	ne[18] = "vi"
	ne[11] = "German"
	ne[20] = "th"
	ne[17] = "Vietnamese"
	ne[53] = "Czech"
	ne[23] = "Portuguese"
	qe.Notify = ae
	ne[46] = "bn"
	ne[35] = "Italian"
	ne[25] = "Turkish"
	ne[44] = "ms"
	ne[9] = "French"
	ne[41] = "Ukrainian"
	ne[21] = "Russian"
	ne[61] = "Danish"
	ne[14] = "ja"
	ne[54] = "cs"
	ne[81] = "Slovenian"
	ne[70] = "sk"
	ne[38] = "pl"
	ne[40] = "nl"
	ne[16] = "ko"
	ne[80] = "lv"
	ne[39] = "Dutch"
	ne[26] = "tr"
	ne[13] = "Japanese"
	ne[4] = "fil"
	ne[43] = "Malay"
	ne[47] = "Urdu"
	ne[2] = "en"
	ne[7] = "Spanish"
	ne[5] = "Indonesian"
	ne[24] = "pt"
	ne[72] = "bg"
	ne[22] = "ru"
	ne[62] = "da"
	ne[52] = "ro"
	ne[45] = "Bengali"
	ne[71] = "Bulgarian"
	ge = {
		[ne[1]] = ne[2],
		[ne[3]] = ne[4],
		[ne[5]] = ne[6],
		[ne[7]] = ne[8],
		[ne[9]] = ne[10],
		[ne[11]] = ne[12],
		[ne[13]] = ne[14],
		[ne[15]] = ne[16],
		[ne[17]] = ne[18],
		[ne[19]] = ne[20],
		[ne[21]] = ne[22],
		[ne[23]] = ne[24],
		[ne[25]] = ne[26],
		[ne[27]] = ne[28],
		[ne[29]] = ne[30],
		[ne[31]] = ne[32],
		[ne[33]] = ne[34],
		[ne[35]] = ne[36],
		[ne[37]] = ne[38],
		[ne[39]] = ne[40],
		[ne[41]] = ne[42],
		[ne[43]] = ne[44],
		[ne[45]] = ne[46],
		[ne[47]] = ne[48],
		[ne[49]] = ne[50],
		[ne[51]] = ne[52],
		[ne[53]] = ne[54],
		[ne[55]] = ne[56],
		[ne[57]] = ne[58],
		[ne[59]] = ne[60],
		[ne[61]] = ne[62],
		[ne[63]] = ne[64],
		[ne[65]] = ne[66],
		[ne[67]] = ne[68],
		[ne[69]] = ne[70],
		[ne[71]] = ne[72],
		[ne[73]] = ne[74],
		[ne[75]] = ne[76],
		[ne[77]] = ne[78],
		[ne[79]] = ne[80],
		[ne[81]] = ne[82]
	}
	ne[1] = "RegisteredElements"
	ne[3] = "Cache"
	ne[2] = {}
	ne[4] = {}
	ae = {
		Languages = ge,
		[ne[1]] = ne[2],
		[ne[3]] = ne[4]
	}
	qe = O()
	ne[1] = "CreateWindow"
	f[qe] = ae
	ae = closure(fn_1519377, {
		qe,
		e
	})
	TranslateText = ae
	ae = closure(fn_161449, {
		qe
	})
	RegisterTranslatable = ae
	ae = closure(fn_4214589, {
		qe
	})
	ApplyTranslation = ae
	ae = closure(fn_2232417, {
		P,
		Y,
		Ce,
		Ge,
		o,
		i,
		Qe,
		A,
		l,
		he,
		se,
		fe,
		me,
		u,
		qe,
		Oe,
		Ne,
		t,
		x
	})
	f[o][ne[1]] = ae
	ae = f[o]
	ne[3] = "CreateWindow"
	ne[2] = f[o]
	ne[1] = ne[2][ne[3]]
	ae.CreateWindow = ne[1]
	ne[3] = "CreateWindow"
	ae = f[o]
	ne[2] = f[o]
	ne[1] = ne[2][ne[3]]
	ae.createWindow = ne[1]
	ae = f[o]
	ne[3] = "DestroyGui"
	ne[2] = f[o]
	ne[1] = ne[2][ne[3]]
	ae.DestroyGui = ne[1]
	ne[3] = "DestroyGui"
	ae = f[o]
	ne[2] = f[o]
	ne[1] = ne[2][ne[3]]
	ae.destroyGui = ne[1]
	return f[o]
::L11764883::
	ne[1] = "https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/Util/LibraryModule/Themes.lua"
	ne[2] = "HttpGet"
	oe = loadstring
	qe = game
	ne[2] = qe[ne[2]]
	oe = oe(unpack({
		ne[2](qe, ne[1])
	}))()
	f[Ce] = oe
	ge = f[Ce]
	f[B].QuantumThemeManager = ge
	goto L16521105
::L15591848::
	S = getgenv()
	goto L7796683
::L11550642::
	M = gethui()
	goto L12554431
::L4039148::
	z = f[x]
	A = z:GetMouse()
	goto L8345818
::L8668939::
	u = closure(fn_8156572, {
		K,
		x
	})
	pcall(u)
	B = c
	j = f[x]
	if u then goto L13802145 end
::L4523029::
	j = f[K].LocalPlayer
::L13802145::
	f[x] = j
	c = B
	goto L4772142
::L5466459::
::L2108301::
	task.wait()
	warn("stop skidding - flazhy")
	if not (false) then goto L2108301 end
::L4205334::
	goto L14442006
::L2810573::
	x = c
	e = setmetatable
	if B then goto L15924818 end
::L4788354::
	T = e
	goto L13388955
::L15924818::
	u = c
	B = type
	if A then goto L2063421 end
::L2707429::
	e = B
	goto L4788354
::L2063421::
	M = c
	A = pcall
	if z then goto L5017615 end
::L1548615::
	B = A
	goto L2707429
::L5017615::
	S = c
	z = rawget
	if P then goto L15838892 end
::L4185685::
	A = z
	goto L1548615
::L15838892::
	z = rawset
	goto L4185685
::L518596::
	l = typeof(game.Players) ~= "Instance"
	goto L16217784
::L5023197::
	K = c
	j = game.GetService
	if l then goto L5092061 end
::L898962::
	N = j
	goto L12487060
::L5092061::
	l = game
	j = l:GetService("RunService")
	goto L898962
::L11964045::
	v = e == x
	goto L13072907
::L3235158::
	z = O()
	f[z] = v
	d = math.random(1, 100)
	S = O()
	f[S] = d
	d = f[K](0, 255)
	P = O()
	f[P] = d
	d = f[K](1, f[S])
	y = O()
	f[y] = d
	c = f[K](1, 2) == 1
	E = O()
	f[E] = c
	Je = tostring
	Y = ":" .. (Je(unpack({
		f[K](0, 10000)
	})) .. ":")
	c = u:gsub(":(%d*):", Y)
	Y = O()
	f[Y] = c
	Fe = closure(fn_1879672, {
		K,
		z,
		t,
		W,
		i,
		A,
		E,
		Y,
		S,
		y,
		P,
		T
	})
	H = {
		unpack({
			pcall(Fe)
		})
	}
	c = f[E]
	if c then goto L9334520 end
::L9851274::
	Fe = f[i]
	if Je then goto L792113 end
::L436270::
	f[i] = Fe
	e = (e + H[f[y] + 1]) % 256
	x = (x + f[P]) % 256
::L16574095::
	h(Y)
	h(E)
	h(S)
	h(y)
	h(z)
	h(P)
	goto L15685043
::L792113::
	Fe = H[1]
	goto L436270
::L9334520::
	d = f[i]
	if Fe then goto L16661725 end
::L8341770::
	f[i] = d
	goto L16574095
::L16661725::
	Je = c
	Fe = H[1] == false
	if k then goto L10696969 end
::L2613966::
	d = Fe
	goto L8341770
::L10696969::
	Fe = H[2] == f[Y]
	goto L2613966
::L12697888::
	T = table.unpack
	goto L5516232
::L3166973::
	d = f[o]
	goto L7227172
end

function fn_6856384(arg1, arg2) -- entry L6856384, 1 blocks
::L6856384::
	R = O()
	f[R] = {}
	W = {
		__index = closure(fn_3400534, {
			R
		})
	}
	setmetatable(f[R], W)
	return f[R]
end

function fn_6867615(arg1, arg2) -- entry L6867615, 5 blocks
::L6867615::
	i = arg2
	d = tonumber(arg1)
	if N then goto L14173256 end
::L552365::
	d = up1
::L14173256::
	R = math.clamp(d, up2, up3)
	N = (R - up2) / (up3 - up2)
	c = up4
	K = UDim2.new(N, 0, 1, 0)
	c:TweenSize(K, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .15, true)
	c = up5
	j = up6
	K = {
		Position = UDim2.new(N, 0, .5, 0)
	}
	c:Tween(j, K, .15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	c = up7
	K = string.format(up8, R)
	c.Text = K
	if i~=false then goto L2377498 end
::L10109369::
	return
::L2377498::
	pcall(up9, R)
	goto L10109369
end

function fn_6880433() -- entry L6880433, 8 blocks
::L6880433::
	if up1=="" then goto L114823 end
::L9552026::
	i = {}
	R = string.lower(up1)
	j = {
		ipairs(up2)
	}
	N = j[3]
	o = j[1]
	W = j[2]
::L8529954::
	N, K = o(W, N)
	if N then goto L7755865 end
::L9685108::
	return i
::L7755865::
	if c(string.lower(K),R,1,true) then goto L3622165 end
::L2819875::
	goto L8529954
::L3622165::
	table.insert(i, K)
	goto L2819875
::L114823::
	return unpack({table.clone(up2)})
end

function fn_6963692(arg1) -- entry L6963692, 9 blocks
::L6963692::
	CircleClick(up1, up2.X, up2.Y)
	d = up3
	if R then goto L4856656 end
::L7499750::
	if d then goto L2420446 end
::L10596031::
	d = up5
	if R then goto L1760288 end
::L15230331::
	if d then goto L7584380 end
::L16079117::
	up7()
	return
::L7584380::
	up6()
	goto L16079117
::L1760288::
	d = up5()
	goto L15230331
::L2420446::
	up4()
	goto L10596031
::L4856656::
	d = up3()
	goto L7499750
end

function fn_6970714(arg1, arg2, arg3) -- entry L6970714, 7 blocks
::L6970714::
	CircleClick(up1, up2.X, up2.Y)
	c = up3
	R = c:Get("_saveSlots", {})
	c = (# R) >= 10
	if c then goto L15436244 end
::L11813591::
	W = c
	i = up5.Text ~= ""
	if N then goto L16193386 end
::L4651724::
	d = i
	if i then goto L6154247 end
::L8573127::
	d = "Profile " .. ((# R) + 1)
::L6154247::
	i = d
	c = up3
	W = c:GetSnapshot()
	K = os.date("%Y-%m-%d %H:%M")
	N = {
		name = i,
		data = W,
		created = K,
		updated = os.date("%Y-%m-%d %H:%M")
	}
	table.insert(R, N)
	c = up3
	c:Save("_saveSlots", R)
	up5.Text = ""
	c = up4.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "Created profile \"" .. (i .. "\".")
	}, {
		Time = 2
	})
	RefreshSlots()
	return
::L16193386::
	i = up5.Text
	goto L4651724
::L15436244::
	c = up4.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "Maximum 10 profiles reached."
	}, {
		Time = 2
	})
	return
end

function fn_7080054() -- entry L7080054, 1 blocks
::L7080054::
	c = up1
	R = up2
	i = {
		BackgroundColor3 = Color3.new(up3 * .07, up4 * .04, up5 * .12)
	}
	c:Tween(R, i, .14, Enum.EasingStyle.Quint)
	c = up1
	c:Tween(up6, {
		Transparency = .3
	}, .14)
	c = up1
	R = up7
	o = UDim2.new(0, 43, 0, 43)
	i = {
		Size = o,
		Position = UDim2.new(0, 12, .5, - 21)
	}
	c:Tween(R, i, .18, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	return
end

function fn_7109094(arg1) -- entry L7109094, 1 blocks
::L7109094::
	c = up1
	R = up2
	i = {
		BackgroundColor3 = Color3.fromRGB(50, 28, 85)
	}
	c:Tween(R, i, .15, Enum.EasingStyle.Quint)
	return
end

function fn_7110918(arg1, arg2, arg3, arg4) -- entry L7110918, 12 blocks
::L7110918::
	R = arg1
	c = R:gsub("^%s+", "")
	R = c:gsub("%s+$", "")
	i = R == ""
	if W then goto L3879694 end
::L12094267::
	i = (# R) < 2
::L3879694::
	if i then goto L3495116 end
::L2162179::
	N = 1
	o = - 1
	j = (- 1) < 0
	W = (# up1) - (- 1)
::L7408616::
	W = W + o
	if (j and (W>=N)) or ((not j) and (W<=N)) then goto L7622107 end
::L4799957::
	table.insert(up1, 1, R)
	if (#up1)>8 then goto L2438824 end
::L2167747::
	c = up2
	c:Save("_opt_SearchHistory", up1)
	return
::L2438824::
	table.remove(up1, 9)
	goto L2167747
::L7622107::
	i = W
	if up1[i]==R then goto L11781020 end
::L4534290::
	goto L7408616
::L11781020::
	table.remove(up1, i)
	goto L4534290
::L3495116::
	return
end

function fn_7155701(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L7155701, 5 blocks
::L7155701::
	W = arg3
	i = O()
	f[i] = arg2
	if not checkCondition(arg4) then goto L15957809 end
::L4951176::
	ne[4] = "Enum"
	K = O()
	T = O()
	l = O()
	f[K] = 16
	f[l] = 6
	f[T] = 12
	ne[1] = .5
	j = O()
	f[j] = 14
	c = up2
	M = Enum.Font.FredokaOne
	P = Color3.fromRGB(200, 200, 200)
	y = f[j]
	Fe = Enum
	ne[2] = 0
	Y = Fe.TextXAlignment.Right
	Fe = f[i]
	ce = up2
	Ze = ce("UICorner", {
		CornerRadius = UDim.new(0, 7)
	})
	ce = up2
	he = Vector2.new(0, .5)
	se = UDim2.new(0, f[K], 0, f[K])
	ae = UDim2.new(0, 5, ne[1], ne[2])
	ne[2] = ""
	ne[1] = ({
		["cat-quantum"] = "rbxassetid://82115431450716",
		["home-quantum"] = "rbxassetid://130439434919073",
		["swords-quantum"] = "rbxassetid://88173691221304",
		["rabbit-quantum"] = "rbxassetid://138575837887336",
		["ship-quantum"] = "rbxassetid://115481449706054",
		["visual-quantum"] = "rbxassetid://102173201308116",
		["info-quantum"] = "rbxassetid://88050097561287",
		["misc-quantum"] = "rbxassetid://137985950260873",
		["cart-quantum"] = "rbxassetid://137995400175306",
		["cherry-quantum"] = "rbxassetid://122029349593217",
		["map-quantum"] = "rbxassetid://125480398387209",
		["raid-quantum"] = "rbxassetid://104575804564229",
		["user-quantum"] = "rbxassetid://83474083071373",
		["settings-quantum"] = "rbxassetid://81151604784579",
		["bio-quantum"] = "rbxassetid://132316362727024",
		["craft-quantum"] = "rbxassetid://118197342073112"
	})[W]
	qe = ne[1] or ne[2]
	ne[3] = ENV[ne[4]]
	ne[4] = "ScaleType"
	ne[2] = ne[3][ne[4]]
	ne[3] = "Fit"
	ne[1] = ne[2][ne[3]]
	d = c("TextButton", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Font = M,
		TextColor3 = P,
		TextSize = y,
		TextXAlignment = Y,
		Text = Fe,
		ClipsDescendants = false,
		Children = {
			Ze,
			unpack({
				ce("ImageLabel", {
					Name = "TabIcon",
					BackgroundTransparency = 1,
					AnchorPoint = he,
					Size = se,
					Position = ae,
					Image = qe,
					ScaleType = ne[1]
				})
			})
		}
	}, nil)
	t = O()
	f[t] = d
	e = closure(fn_9899092, {
		up3,
		i,
		j,
		t,
		l,
		K,
		T
	})
	RegisterLayoutRefresh(e)
	e()
	d = up2
	M = Color3.fromRGB(110, 55, 190)
	y = Vector2.new(.5, 0)
	Y = UDim2.new(.5, 0, 0, 3)
	Fe = UDim2.new(.5, 0, 1, 1)
	me = up2
	ce = me("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	me = up2
	fe = ColorSequence.new
	ie = ColorSequenceKeypoint.new
	We = ie(0, unpack({
		Color3.fromRGB(160, 100, 255)
	}))
	ie = ColorSequenceKeypoint.new
	u = {
		Name = "Tab_Underline",
		BackgroundColor3 = M,
		BorderSizePixel = 0,
		AnchorPoint = y,
		Size = Y,
		Position = Fe,
		Visible = false,
		Children = {
			ce,
			unpack({
				me("UIGradient", {
					Color = fe({
						We,
						unpack({
							ie(1, unpack({
								Color3.fromRGB(90, 40, 180)
							}))
						})
					}),
					Rotation = 0
				})
			})
		}
	}
	x = d("Frame", u, f[t])
	B = O()
	f[B] = x
	u = up4
	f[t].Parent = u
	d = up2
	E = UDim2.new(0, 0, 0, 0)
	H = UDim2.new(1, 0, 1, 0)
	Je = UDim2.new(0, 0, 0, 0)
	Qe = Color3.fromRGB(0, 0, 0)
	x = d("ScrollingFrame", {
		Name = "ScrollingFrame",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = E,
		Size = H,
		CanvasSize = Je,
		ScrollBarImageColor3 = Qe,
		ScrollBarThickness = 0,
		ScrollBarImageTransparency = 1,
		ScrollingDirection = Enum.ScrollingDirection.X,
		ElasticBehavior = Enum.ElasticBehavior.Never,
		ScrollingEnabled = false,
		Visible = false,
		ClipsDescendants = true
	}, up5)
	u = O()
	f[u] = x
	d = up2
	z = Enum.FillDirection.Horizontal
	P = Enum.SortOrder.LayoutOrder
	v = {
		Name = "Scrolling_Layout",
		FillDirection = z,
		SortOrder = P,
		Padding = UDim.new(0, 19)
	}
	x = d("UIListLayout", v, f[u])
	A = O()
	f[A] = x
	L = closure(fn_8236015, {
		u,
		A
	})
	x = closure(fn_8138851, {
		u,
		A
	})
	RegisterLayoutRefresh(L)
	d = f[A]
	v = d:GetPropertyChangedSignal("AbsoluteContentSize")
	v:Connect(x)
	d = f[u]
	v = d:GetPropertyChangedSignal("AbsoluteSize")
	v:Connect(x)
	d = f[u].ChildAdded
	d:Connect(x)
	d = f[u].ChildRemoved
	d:Connect(x)
	table.insert(up6, {
		tabButton = f[t],
		tabUnderline = f[B],
		scrollFrame = f[u]
	})
	if up7 then goto L11873255 end
::L5460476::
	v = f[t].MouseButton1Click
	b = closure(fn_2962907, {
		up9,
		up8,
		u,
		t,
		B,
		up10
	})
	v:Connect(b)
	v = {}
	L = closure(fn_6650125, {
		up1,
		up2,
		u,
		t,
		i,
		up11,
		up12,
		up13,
		up14,
		up15,
		up16,
		up8,
		up17,
		up18,
		up19,
		up20
	})
	v.addSection = L
	b = v.addSection
	v.AddSection = b
	return v
::L11873255::
	up7 = false
	up8.ActivateScroll(f[u], f[t], f[B])
	goto L5460476
::L15957809::
	return up1
end

function fn_7189438(arg1, arg2) -- entry L7189438, 1 blocks
::L7189438::
	CircleClick(up1, up2.X, up2.Y)
	up3()
	up4()
	return
end

function fn_7203934(arg1) -- entry L7203934, 5 blocks
::L7203934::
	R = table.find(up1, up2) ~= nil
	c = up3
	T = c
	c:Tween(up4, {
		BackgroundTransparency = (R and .3) or .55
	}, .15)
	d = up3
	l = R
	o = "TextColor3"
	W = up5
	K = c
	if R then goto L1463908 end
::L2795340::
	j = l
	if l then goto L9335255 end
::L1525387::
	j = Color3.fromRGB(190, 190, 205)
::L9335255::
	d:Tween(W, {
		[o] = j
	}, .15)
	return
::L1463908::
	l = Color3.fromRGB(216, 180, 254)
	goto L2795340
end

function fn_7247867(arg1, arg2, arg3, arg4, arg5) -- entry L7247867, 1 blocks
::L7247867::
	return up1
end

function fn_7277703(arg1, arg2) -- entry L7277703, 3 blocks
::L7277703::
	c = pcall
	o = {
		c(game.GetService, game, arg1)
	}
	i = o[2]
	d = o[1]
	o = c
	N = d
	if W then goto L3282451 end
::L13341837::
	return N or nil
::L3282451::
	N = i
	goto L13341837
end

function fn_7329006(arg1, arg2, arg3) -- entry L7329006, 1 blocks
::L7329006::
	up1 = true
	up2.Text = "..."
	return
end

function fn_7359484(arg1, arg2, arg3, arg4) -- entry L7359484, 5 blocks
::L7359484::
	W = arg3
	c = arg1.Settings[arg2]
	j = c
	N = c
	o = N ~= nil
	if K then goto L16192570 end
::L6625428::
	d = o
	if o then goto L7759769 end
::L3063319::
	d = W
::L7759769::
	return d
::L16192570::
	o = N
	goto L6625428
end

function fn_7371832(arg1, arg2, arg3, arg4, arg5) -- entry L7371832, 1 blocks
::L7371832::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .25
	}, .15)
	return
end

function fn_7449691(arg1, arg2) -- entry L7449691, 3 blocks
::L7449691::
	if arg1==up1 then goto L890223 end
::L6417270::
	return
::L890223::
	up2 = false
	up1 = nil
	i = up3
	i:Tween(up4, {
		Transparency = 1
	}, .3)
	i = up3
	N = up5
	o = {
		Size = UDim2.new(0, 13, 0, 13)
	}
	i:Tween(N, o, .2, Enum.EasingStyle.Quint)
	goto L6417270
end

function fn_7479084(arg1, arg2) -- entry L7479084, 1 blocks
::L7479084::
	c = select
	i = c(1, unpack({
		ScaledFontSize(up1, up2)
	}))
	up3.MaxTextSize = i
	up3.MinTextSize = 1
	return
end

function fn_7480784(arg1, arg2) -- entry L7480784, 9 blocks
::L7480784::
	if not up1 then goto L10674881 end
::L13849298::
	R = workspace.CurrentCamera
	if not R then goto L16464604 end
::L2038277::
	c = R.ViewportSize
	i = c
	d = i.X < 50
	if W then goto L2381757 end
::L4026441::
	d = i.Y < 50
::L2381757::
	if d then goto L2305343 end
::L12945683::
	o = math.min(i.X / ((up2 and 800) or 1000), i.Y / ((up2 and 460) or 600), 1)
	j = math.clamp(up3 * o, up4, up5)
	up6.SetUIScalePreview(j)
	ScheduleRefreshAllLayouts()
	return
::L2305343::
	return
::L16464604::
	return
::L10674881::
	return
end

function fn_7525686(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L7525686, 19 blocks
::L7525686::
	R = arg1
	i = {}
	j = {
		pairs(R.Settings)
	}
	N = j[3]
	W = j[2]
	o = j[1]
::L2377469::
	N, K = o(W, N)
	if N then goto L5811329 end
::L1136653::
	K = {
		pairs(R.RegisteredControls)
	}
	o = K[3]
	W = K[1]
	N = K[2]
::L12042555::
	o, K = W(N, o)
	if o then goto L8466830 end
::L15916248::
	return i
::L8466830::
	j = o
	l = i[j] == nil
	if T then goto L12943869 end
::L4186986::
	if l then goto L760372 end
::L4848046::
	goto L12042555
::L760372::
	e = {
		pcall(K.Get)
	}
	T = e[2]
	t = e[1]
	if l then goto L2667867 end
::L4326988::
	if t then goto L3304634 end
::L15760036::
	goto L4848046
::L3304634::
	i[j] = T
	goto L15760036
::L2667867::
	t = T ~= nil
	goto L4326988
::L12943869::
	l = K.Get
	goto L4186986
::L5811329::
	j = N
	l = j:sub(1, 1) ~= "_"
	if T then goto L562082 end
::L14540984::
	if l then goto L12095426 end
::L15855968::
	goto L2377469
::L12095426::
	i[j] = K
	goto L15855968
::L562082::
	l = R._Keys[j]
	goto L14540984
end

function fn_7609776(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L7609776, 1 blocks
::L7609776::
	i = arg2
	up1 = i
	up2.Text = i or ""
	return
end

function fn_7681772(arg1, arg2, arg3, arg4) -- entry L7681772, 21 blocks
::L7681772::
	R = arg1
	d = not up1.on
	if i then goto L11609617 end
::L3228248::
	W = c
	i = not up1.start
	if N then goto L656803 end
::L2693540::
	o = c
	N = not up1.origin
	if j then goto L2023421 end
::L8900974::
	N = not up1.input
::L2023421::
	i = N
::L656803::
	c = W
	d = i
::L11609617::
	if d then goto L8493858 end
::L8036882::
	d = R == up1.input
	if i then goto L15502074 end
::L13501764::
	W = c
	i = up1.input.UserInputType == Enum.UserInputType.MouseButton1
	if N then goto L2226217 end
::L1046503::
	d = i
	c = W
::L15502074::
	if d then goto L9568801 end
::L16131184::
	return
::L9568801::
	W = c
	o = c
	N = up2
	if j then goto L4394231 end
::L5356046::
	i = N
	if N then goto L3373352 end
::L10699070::
	W = (R.Position - up1.start) / (i or 1)
	if W.Magnitude>up3 then goto L10838479 end
::L7437677::
	goto L16131184
::L10838479::
	up1.moved = true
	d = up4
	j = UDim2.fromOffset(up1.origin.X.Offset + W.X, up1.origin.Y.Offset + W.Y)
	d.Position = j
	goto L7437677
::L3373352::
	i = up2.Scale
	goto L10699070
::L4394231::
	N = up2.Scale > 0
	goto L5356046
::L2226217::
	i = R.UserInputType == Enum.UserInputType.MouseMovement
	goto L1046503
::L8493858::
	return
end

function fn_7830157(arg1, arg2) -- entry L7830157, 1 blocks
::L7830157::
	d = math.clamp((arg1 - up1.AbsolutePosition.X) / up1.AbsoluteSize.X, 0, 1)
	c = up2
	c(unpack({
		up3(up4 + ((up5 - up4) * d))
	}))
	return
end

function fn_7855657(arg1) -- entry L7855657, 1 blocks
::L7855657::
	up1.ClipsDescendants = true
	R = up2 - up1.AbsolutePosition.X
	i = up3 - up1.AbsolutePosition.Y
	W = math.max(up1.AbsoluteSize.X, up1.AbsoluteSize.Y) * 1.5
	c = up4
	x = Color3.fromRGB(80, 80, 80)
	z = UDim2.new(0, 0, 0, 0)
	o = {
		Name = "Circle",
		Image = "rbxassetid://266543268",
		ImageColor3 = x,
		ImageTransparency = .8,
		BackgroundTransparency = 1,
		ZIndex = 10,
		Size = z,
		Position = UDim2.new(0, R, 0, i)
	}
	d = c("ImageLabel", o, up1)
	N = O()
	f[N] = d
	c = up5.Play
	o = f[N]
	T = UDim2.new(0, W, 0, W)
	j = {
		Size = T,
		Position = UDim2.new(.5, (- W) / 2, .5, (- W) / 2)
	}
	c(o, j, .45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	c = up5.Play
	o = f[N]
	l = Enum.EasingStyle.Linear
	T = Enum.EasingDirection.Out
	t = closure(fn_9929657, {
		N
	})
	h(N)
	c(o, {
		ImageTransparency = 1
	}, .45, l, T, t)
	return
end

function fn_7929027(arg1, arg2) -- entry L7929027, 1 blocks
::L7929027::
	c = not up1
	up1 = c
	i = up1
	up2.Visible = i
	return
end

function fn_7977154(arg1, arg2, arg3, arg4) -- entry L7977154, 5 blocks
::L7977154::
	up1.Image = ""
	up1.Visible = false
	if up2 then goto L5982601 end
::L5955140::
	if up3 then goto L3392099 end
::L16409746::
	return
::L3392099::
	R = closure(fn_5727425, {
		up3
	})
	pcall(R)
	R = closure(fn_10716513, {
		up3
	})
	pcall(R)
	c = pcall
	c(closure(fn_13338386, {
		up3
	}))
	goto L16409746
::L5982601::
	up2.Visible = false
	goto L5955140
end

function fn_8006249() -- entry L8006249, 1 blocks
::L8006249::
	ApplyBackgroundImage(up1)
	up2.BuildBgImageCards()
	c = up3.Notification
	c:Notify({
		Title = "Background",
		Description = "Applied " .. f[up4]
	}, {
		Time = 2
	})
	return
end

function fn_8030945() -- entry L8030945, 3 blocks
::L8030945::
	d = "Font"
	i = up1
	R = up2[up3]
	if W then goto L4781311 end
::L13132640::
	R = up4.Regular
::L4781311::
	i[d] = R
	return
end

function fn_8035756(arg1, arg2) -- entry L8035756, 10 blocks
::L8035756::
	R = arg1
	c = arg2 ~= false
	i = c
	K = {
		pairs(R.RegisteredControls)
	}
	N = K[2]
	W = K[1]
	o = K[3]
::L2548752::
	o, K = W(N, o)
	if o then goto L5390277 end
::L7225302::
	R:Save()
	return
::L5390277::
	j = o
	l = c
	d = K
	if K then goto L12321644 end
::L7149606::
	c = l
	if d then goto L14545946 end
::L14570832::
	goto L2548752
::L14545946::
	l = K.Default
	R.Settings[j] = l
	pcall(K.Set, K.Default, i)
	goto L14570832
::L12321644::
	t = c
	T = K.Default ~= nil
	if e then goto L13913844 end
::L5855326::
	d = T
	goto L7149606
::L13913844::
	T = K.Set
	goto L5855326
end

function fn_8062828(arg1, arg2, arg3, arg4) -- entry L8062828, 25 blocks
::L8062828::
	i = arg2
	R = arg1
	if up1 then goto L4097289 end
::L12604704::
	c = table.clear
	c(up2)
	o = c
	N = type(R) == "string"
	if j then goto L13303786 end
::L751903::
	c = o
	W = N
	if N then goto L6505687 end
::L2893386::
	o = c
	N = type(R) == "number"
	if j then goto L5810606 end
::L8648495::
	W = N
::L6505687::
	N = W
	if W then goto L14236875 end
::L11637184::
	if N then goto L4180938 end
::L7334531::
::L15753732::
	return
::L4180938::
	table.insert(up2, W)
	o = up3[W]
	up5.Text = o
	if i~=false then goto L2317316 end
::L3215591::
	goto L7334531
::L2317316::
	pcall(up8, up3[W])
	goto L3215591
::L14236875::
	N = up3[W]
	goto L11637184
::L5810606::
	N = R
	goto L8648495
::L13303786::
	N = table.find(up3, R)
	goto L751903
::L4097289::
	table.clear(up2)
	if type(R)=="table" then goto L10409072 end
::L12974349::
	c = up5
	N = up6
	o = N(up7(), 2)
	c.Text = o
	if i~=false then goto L9781320 end
::L12596915::
	goto L15753732
::L9781320::
	c = pcall
	N = up8
	c(N, unpack({
		up7()
	}))
	goto L12596915
::L10409072::
	o = {
		ipairs(R)
	}
	W = o[2]
	N = o[3]
	o = o[1]
::L3435588::
	N, K = o(W, N)
	if N then goto L14568741 end
::L13509416::
	goto L12974349
::L14568741::
	l = table.find(up3, K)
	if l then goto L540450 end
::L13176431::
	goto L3435588
::L540450::
	up4(l)
	goto L13176431
end

function fn_8122136(arg1, arg2, arg3) -- entry L8122136, 12 blocks
::L8122136::
	W = arg3
	R = arg1
	i = arg2
	if type(i)~="table" then goto L13110441 end
::L12570445::
	c = W ~= false
	W = c
	K = {
		pairs(i)
	}
	o = K[2]
	N = K[1]
	j = K[3]
::L3846324::
	j, l = N(o, j)
	if j then goto L16011119 end
::L7450728::
	R:Save()
	return true
::L16011119::
	K = j
	if K:sub(1,1)~="_" then goto L9305178 end
::L9461145::
	goto L3846324
::L9305178::
	R.Settings[K] = l
	t = c
	T = R.RegisteredControls[K]
	d = T
	if T then goto L11408777 end
::L7583453::
	c = t
	if d then goto L11843691 end
::L2982836::
	goto L9461145
::L11843691::
	pcall(T.Set, l, W)
	goto L2982836
::L11408777::
	d = T.Set
	goto L7583453
::L13110441::
	return false
end

function fn_8127549(arg1, arg2, arg3) -- entry L8127549, 144 blocks
::L8127549::
	W = arg3
	i = O()
	f[i] = arg2
	c = assert
	R = arg1
	c(R.GUI, "Notification GUI not initialized. Call :Init(parent) first.")
	d = f[i]
	if N then goto L13949360 end
::L729372::
	d = {}
::L13949360::
	f[i] = d
	N = W
	if W then goto L13493815 end
::L8545486::
	N = {}
::L13493815::
	W = N
	o = f[i].Title or "Notification"
	j = f[i].Description or ""
	K = W.Time or 3
	l = O()
	f[l] = K
	K = 12
	T = Enum.Font.Gotham
	t = 176
	if f[i].Id then goto L555850 end
::L3739580::
	x = O()
	f[x] = o .. ("||" .. j)
	if up1.ActiveMessages[f[x]] then goto L13324478 end
::L5125746::
	up1.ActiveMessages[f[x]] = true
	B = c
	e = f[i].Buttons
	if u then goto L5282814 end
::L16109156::
	A = c
	u = f[i].Button
	if v then goto L386953 end
::L8326974::
	L = c
	v = f[i].Actions
	if b then goto L13771067 end
::L11059307::
	b = f[i].Options
	M = c
	if z then goto L11563317 end
::L16373650::
	z = W
	S = c
	if W then goto L2705935 end
::L10513952::
	b = z
::L11563317::
	v = b
::L13771067::
	u = v
::L386953::
	e = u
::L5282814::
	c = B
	B = {}
	if type(e)=="string" then goto L6227497 end
::L4191395::
	if type(e)=="table" then goto L738755 end
::L11330510::
	u = (# B) > 0
	M = c
	A = 22
	b = u
	if u then goto L3380379 end
::L75674::
	c = M
	v = b or 0
	b = up2(j, T, K, t)
	M = up3(b, T, K, t)
	y = O()
	L = ((28 + M) + v) + 14
	z = 200
	P = O()
	f[P] = 46
	f[y] = 26
	S = up4
	k = Vector2.new(1, 0)
	Xe = UDim2.new(1, - 10, 0, 10)
	de = UDim2.new
	ne[24] = "UDim"
	H = {
		AnchorPoint = k,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = Xe,
		Size = de(0, f[P], 0, 0),
		ClipsDescendants = false,
		ZIndex = 1000
	}
	E = S("Frame", H, R.GUI)
	S = O()
	f[S] = E
	E = up4
	ce = UDim2
	ne[14] = "UDim2"
	ce = ce.new(0, 8, 0, 2)
	Ge = UDim2.new(1, - 16, 0, 18)
	fe = Enum.Font.FredokaOne
	We = Color3.fromRGB(220, 220, 220)
	Y = E("TextLabel", {
		BackgroundTransparency = 1,
		Position = ce,
		Size = Ge,
		ZIndex = 1002,
		Font = fe,
		Text = o,
		TextColor3 = We,
		TextSize = 12,
		TextTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left
	})
	E = O()
	f[E] = Y
	Y = up4
	Ze = Vector2.new(1, 0)
	Xe = UDim2.new(1, - 8, 0, 2)
	fe = UDim2.new(0, 40, 0, 18)
	ne[4] = "Enum"
	ie = Enum.Font.Gotham
	Ne = "(" .. (f[l] .. "s)")
	se = Color3.fromRGB(180, 180, 180)
	ne[3] = ENV[ne[4]]
	ne[4] = "TextXAlignment"
	ne[2] = ne[3][ne[4]]
	ne[3] = "Right"
	ne[1] = ne[2][ne[3]]
	ne[11] = "Enum"
	Je = {
		BackgroundTransparency = 1,
		AnchorPoint = Ze,
		Position = Xe,
		Size = fe,
		ZIndex = 1002,
		Font = ie,
		Text = Ne,
		TextColor3 = se,
		TextSize = 11,
		TextTransparency = 1,
		TextXAlignment = ne[1]
	}
	ne[2] = "Enum"
	H = Y("TextLabel", Je)
	Y = O()
	f[Y] = H
	H = up4
	Ge = UDim2
	ne[21] = "CornerRadius"
	ne[4] = "Enum"
	Ge = Ge.new(0, 8, 0, 22)
	ne[15] = 0
	de = UDim2.new(0, 184, 0, M)
	Ne = Color3.fromRGB(180, 180, 180)
	ne[1] = ENV[ne[2]]
	ne[2] = "TextXAlignment"
	ge = ne[1][ne[2]]
	ne[1] = "Left"
	ne[5] = "TextXAlignment"
	qe = ge[ne[1]]
	ne[3] = ENV[ne[4]]
	ne[4] = "TextYAlignment"
	ne[2] = ne[3][ne[4]]
	ne[3] = "Top"
	ne[1] = ne[2][ne[3]]
	Fe = H("TextLabel", {
		BackgroundTransparency = 1,
		Position = Ge,
		Size = de,
		ZIndex = 1002,
		Font = T,
		Text = b,
		TextColor3 = Ne,
		TextSize = K,
		TextTransparency = 1,
		TextWrapped = true,
		TextXAlignment = qe,
		TextYAlignment = ne[1]
	})
	H = O()
	f[H] = Fe
	Fe = up4
	Ge = Vector2.new
	ne[9] = "Enum"
	Xe = Ge(.5, .5)
	Oe = UDim2.new(.5, 0, .5, 0)
	We = UDim2.new(0, 0, 0, 0)
	qe = Enum
	ne[3] = 220
	Je = Fe("ImageLabel", {
		Name = "PillLogo",
		AnchorPoint = Xe,
		BackgroundTransparency = 1,
		Position = Oe,
		Size = We,
		Image = "rbxassetid://87383580130479",
		ImageTransparency = 1,
		ScaleType = qe.ScaleType.Fit,
		ZIndex = 1002
	})
	ne[4] = 220
	Fe = up4
	ne[2] = "Color3"
	de = Vector2.new(.5, .5)
	ie = UDim2.new(.5, 0, .5, 0)
	Ne = UDim2.new(1, - 8, 1, 0)
	ae = Enum
	ne[19] = "UICorner"
	se = ae.Font.GothamBold
	ne[1] = ENV[ne[2]]
	ne[2] = "fromRGB"
	ge = ne[1][ne[2]]
	ne[2] = 220
	ne[1] = ge(ne[2], ne[3], ne[4])
	ne[4] = 1
	ne[3] = "TextTransparency"
	ne[2] = 11
	ne[8] = ENV[ne[9]]
	ne[9] = "TextXAlignment"
	ne[7] = ne[8][ne[9]]
	ne[8] = "Center"
	ne[6] = ne[7][ne[8]]
	ne[10] = ENV[ne[11]]
	ne[7] = "TextYAlignment"
	ne[11] = "TextYAlignment"
	ne[9] = ne[10][ne[11]]
	ne[10] = "Center"
	ne[8] = ne[9][ne[10]]
	k = Fe("TextLabel", {
		Name = "DoneLabel",
		AnchorPoint = de,
		BackgroundTransparency = 1,
		Position = ie,
		Size = Ne,
		ZIndex = 1002,
		Font = se,
		Text = "Done",
		TextColor3 = ne[1],
		TextSize = ne[2],
		[ne[3]] = ne[4],
		[ne[5]] = ne[6],
		[ne[7]] = ne[8]
	})
	Fe = O()
	ne[25] = 0
	f[Fe] = k
	ne[11] = "Size"
	k = up4
	de = Color3.fromRGB
	ne[9] = "BorderSizePixel"
	fe = de(40, 40, 40)
	he = UDim2
	ne[16] = 1
	he = he.new(0, 8, 1, - 10)
	se = UDim2
	ne[10] = 0
	ne[2] = "UICorner"
	oe = se.new
	ne[7] = "UDim"
	se = oe(1, - 16, 0, 4)
	ne[4] = "CornerRadius"
	ge = up4
	ne[6] = ENV[ne[7]]
	ne[7] = "new"
	ne[8] = 0
	ne[5] = ne[6][ne[7]]
	ne[7] = 1
	ne[17] = 0
	ne[6] = ne[5](ne[7], ne[8])
	ne[3] = {
		[ne[4]] = ne[6]
	}
	ne[7] = "BackgroundTransparency"
	ne[5] = "Name"
	ne[6] = "ProgressBarFill"
	ne[1] = ge(ne[2], ne[3])
	ge = up4
	ne[8] = 1
	ne[13] = ENV[ne[14]]
	ne[3] = "Frame"
	ne[14] = "new"
	ne[12] = ne[13][ne[14]]
	ne[14] = 1
	ne[13] = ne[12](ne[14], ne[15], ne[16], ne[17])
	ne[15] = "Children"
	ne[17] = up4
	ne[12] = "ZIndex"
	ne[14] = 1003
	ne[23] = ENV[ne[24]]
	ne[24] = "new"
	ne[22] = ne[23][ne[24]]
	ne[24] = 1
	ne[23] = ne[22](ne[24], ne[25])
	ne[20] = {
		[ne[21]] = ne[23]
	}
	ne[25] = "Lit"
	ne[24] = "ThemeColor"
	ne[22] = "Color"
	ne[18] = ne[17](ne[19], ne[20])
	ne[20] = "UIGradient"
	ne[17] = up4
	ne[23] = ENV[ne[24]]
	ne[24] = ne[23](ne[25])
	ne[25] = 0
	ne[23] = "Rotation"
	ne[21] = {
		[ne[22]] = ne[24],
		[ne[23]] = ne[25]
	}
	ne[19] = {
		ne[17](ne[20], ne[21])
	}
	ne[16] = {
		ne[18],
		unpack(ne[19])
	}
	ne[4] = {
		[ne[5]] = ne[6],
		[ne[7]] = ne[8],
		[ne[9]] = ne[10],
		[ne[11]] = ne[13],
		[ne[12]] = ne[14],
		[ne[15]] = ne[16]
	}
	ne[2] = {
		ge(ne[3], ne[4])
	}
	Qe = k("Frame", {
		Name = "ProgressBarBackground",
		BackgroundColor3 = fe,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = he,
		Size = se,
		ZIndex = 1002,
		Children = {
			ne[1],
			unpack(ne[2])
		}
	})
	k = O()
	f[k] = Qe
	ce = O()
	Qe = nil
	f[ce] = {}
	if u then goto L7070997 end
::L355745::
	Ge = up4
	Xe = Ge("UICorner", {
		CornerRadius = UDim.new(0, 13)
	})
	me = {
		Xe,
		Je,
		f[Fe],
		f[E],
		f[Y],
		f[H],
		f[k]
	}
	if Qe then goto L10895906 end
::L11647211::
	ne[2] = 0
	Ge = up4
	ne[1] = 0
	ie = Color3.fromRGB(25, 25, 25)
	ne[4] = 1
	ae = UDim2.new
	ne[5] = 0
	ne[3] = 0
	qe = ae(0, ne[1], ne[2], ne[3])
	ne[2] = "UDim2"
	ne[1] = ENV[ne[2]]
	ne[2] = "new"
	ge = ne[1][ne[2]]
	ne[2] = 1
	ne[3] = 0
	ne[1] = ge(ne[2], ne[3], ne[4], ne[5])
	ne[3] = "Children"
	ne[2] = 1001
	Ge("Frame", {
		BackgroundColor3 = ie,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Position = qe,
		Size = ne[1],
		ZIndex = ne[2],
		[ne[3]] = me
	}, f[S])
	Ge = f[k].ProgressBarFill
	de = O()
	f[de] = Ge
	fe = O()
	f[fe] = false
	Re = closure(fn_16479300, {
		fe,
		up5,
		E,
		Y,
		H,
		k,
		de,
		ce,
		S,
		P,
		y,
		Fe,
		up1,
		x,
		i
	})
	Ge = O()
	f[Ge] = Re
	he = {
		ipairs(f[ce])
	}
	We = he[3]
	ie = he[2]
	Oe = he[1]
::L5800682::
	We, Ne = Oe(ie, We)
	if We then goto L15022059 end
::L15421813::
	Re = up6.Play
	ie = f[S]
	ne[1] = "ResetTimer"
	se = UDim2.new(0, z, 0, L)
	ne[5] = "isDismissed"
	ne[3] = "Dismiss"
	Re(ie, {
		Size = se
	}, .35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	Oe = task
	ne[6] = false
	We = closure(fn_8325922, {
		up6,
		E,
		Y,
		H,
		k,
		de,
		ce,
		l
	})
	Oe.delay(.12, We)
	Re = f[l]
	Oe = O()
	f[Oe] = Re
	Re = task.spawn
	ne[2] = closure(fn_2886784, {
		l,
		Oe,
		Y
	})
	Re(closure(fn_14398128, {
		Oe,
		fe,
		Y,
		Ge
	}))
	We = f[S]
	he = f[E]
	ae = f[H]
	ge = f[Y]
	ne[4] = f[Ge]
	Re = {
		Host = We,
		TitleLabel = he,
		DescLabel = ae,
		CooldownLabel = ge,
		[ne[1]] = ne[2],
		[ne[3]] = ne[4],
		[ne[5]] = ne[6]
	}
	if f[i].Id then goto L3622691 end
::L13582600::
	return Re
::L3622691::
	up1.ActiveById[f[i].Id] = Re
	goto L13582600
::L15022059::
	he = O()
	f[he] = Ne
	Ne = he
	ne[1] = "MouseEnter"
	he = f[Ne].Instance
	se = O()
	f[se] = he
	he = f[Ne].Stroke
	ae = O()
	f[ae] = he
	he = f[Ne].Data
	qe = O()
	f[qe] = he
	he = f[se][ne[1]]
	ge = he.Connect
	ne[1] = closure(fn_14470045, {
		fe,
		up6,
		se,
		Ne,
		ae
	})
	ge(he, ne[1])
	ge = f[se]
	ne[1] = "MouseLeave"
	he = ge[ne[1]]
	ge = he.Connect
	ne[1] = closure(fn_11309479, {
		fe,
		up6,
		se,
		Ne,
		ae
	})
	ge(he, ne[1])
	ne[1] = "MouseButton1Click"
	h(Ne)
	he = f[se][ne[1]]
	ge = he.Connect
	ne[1] = closure(fn_13052756, {
		fe,
		se,
		up7,
		qe,
		Ge
	})
	h(qe)
	h(ae)
	h(se)
	ge(he, ne[1])
	goto L5800682
::L10895906::
	table.insert(me, Qe)
	goto L11647211
::L7070997::
	ne[17] = 6
	ne[9] = "Enum"
	me = up4
	ne[13] = "Enum"
	Ne = UDim2.new(0, 8, 0, (22 + M) + 6)
	ne[5] = "FillDirection"
	oe = UDim2
	ne[3] = "Name"
	ne[4] = "ButtonsLayout"
	oe = oe.new(1, - 16, 0, A)
	ne[1] = "UIListLayout"
	ne[11] = "Enum"
	qe = up4
	ne[8] = ENV[ne[9]]
	ne[9] = "FillDirection"
	ne[7] = ne[8][ne[9]]
	ne[8] = "Horizontal"
	ne[6] = ne[7][ne[8]]
	ne[10] = ENV[ne[11]]
	ne[7] = "HorizontalAlignment"
	ne[11] = "HorizontalAlignment"
	ne[9] = ne[10][ne[11]]
	ne[10] = "Center"
	ne[8] = ne[9][ne[10]]
	ne[12] = ENV[ne[13]]
	ne[9] = "VerticalAlignment"
	ne[13] = "VerticalAlignment"
	ne[15] = "Enum"
	ne[11] = ne[12][ne[13]]
	ne[12] = "Center"
	ne[16] = "UDim"
	ne[10] = ne[11][ne[12]]
	ne[11] = "SortOrder"
	ne[14] = ENV[ne[15]]
	ne[15] = "SortOrder"
	ne[13] = ne[14][ne[15]]
	ne[14] = "LayoutOrder"
	ne[12] = ne[13][ne[14]]
	ne[13] = "Padding"
	ne[15] = ENV[ne[16]]
	ne[16] = "new"
	ne[14] = ne[15][ne[16]]
	ne[16] = 0
	ne[15] = ne[14](ne[16], ne[17])
	ne[2] = {
		[ne[3]] = ne[4],
		[ne[5]] = ne[6],
		[ne[7]] = ne[8],
		[ne[9]] = ne[10],
		[ne[11]] = ne[12],
		[ne[13]] = ne[15]
	}
	Ze = me("Frame", {
		Name = "ButtonContainer",
		BackgroundTransparency = 1,
		Position = Ne,
		Size = oe,
		ZIndex = 1002,
		Children = {
			unpack({
				qe(ne[1], ne[2])
			})
		}
	})
	me = # B
	Qe = Ze
	Xe = 1 / me
	de = - math.floor(((me - 1) * 6) / me)
	We = {
		ipairs(B)
	}
	ie = We[3]
	Re = We[1]
	Oe = We[2]
::L3175512::
	ie, We = Re(Oe, ie)
	if ie then goto L6679896 end
::L2425017::
	goto L355745
::L6679896::
	fe = ie
	Ne = We.Text or "Button"
	he = We.Primary
	if he==nil then goto L6318518 end
::L8464889::
	ae = c
	ge = c
	qe = he
	if he then goto L14744532 end
::L15994748::
	se = qe
	if qe then goto L5480851 end
::L9721388::
	ne[1] = "Color3"
	ne[3] = 28
	ge = ENV[ne[1]]
	ne[1] = "fromRGB"
	ne[2] = 28
	qe = ge[ne[1]]
	ne[1] = 28
	se = qe(ne[1], ne[2], ne[3])
::L5480851::
	c = ae
	qe = c
	ne[1] = c
	ge = he
	if he then goto L734356 end
::L4412077::
	ae = ge
	if ge then goto L14144865 end
::L377752::
	ne[4] = 40
	ne[2] = "Color3"
	ne[1] = ENV[ne[2]]
	ne[2] = "fromRGB"
	ge = ne[1][ne[2]]
	ne[3] = 40
	ne[2] = 40
	ne[1] = ge(ne[2], ne[3], ne[4])
	ae = ne[1]
::L14144865::
	c = qe
	ne[2] = c
	ne[1] = he
	ge = c
	if he then goto L4193207 end
::L12680009::
	qe = ne[1]
	if ne[1] then goto L1869882 end
::L277049::
	ne[4] = 180
	ne[3] = "Color3"
	ne[2] = ENV[ne[3]]
	ne[3] = "fromRGB"
	ne[1] = ne[2][ne[3]]
	ne[5] = 180
	ne[3] = 180
	ne[2] = ne[1](ne[3], ne[4], ne[5])
	qe = ne[2]
::L1869882::
	c = ge
	ne[6] = c
	ne[7] = he
	ge = up4
	ne[8] = c
	ne[2] = "UIStroke"
	ne[4] = "Color"
	if he then goto L14601550 end
::L4220128::
	cond = ne[7]
	ne[5] = ne[7]
	if ne[7] then goto L4103128 end
::L12006915::
	ne[9] = "Color3"
	ne[8] = ENV[ne[9]]
	ne[10] = 48
	ne[9] = "fromRGB"
	ne[7] = ne[8][ne[9]]
	ne[11] = 48
	ne[9] = 48
	ne[8] = ne[7](ne[9], ne[10], ne[11])
	ne[5] = ne[8]
::L4103128::
	ne[34] = "CornerRadius"
	ne[17] = "AutoButtonColor"
	c = ne[6]
	ne[24] = 11
	ne[14] = "Enum"
	ne[13] = ENV[ne[14]]
	ne[14] = "ApplyStrokeMode"
	ne[7] = 1
	ne[23] = "Enum"
	ne[9] = 1
	ne[10] = "ApplyStrokeMode"
	ne[8] = "Thickness"
	ne[12] = ne[13][ne[14]]
	ne[13] = "Border"
	ne[16] = 0
	ne[6] = "Transparency"
	ne[11] = ne[12][ne[13]]
	ne[3] = {
		[ne[4]] = ne[5],
		[ne[6]] = ne[7],
		[ne[8]] = ne[9],
		[ne[10]] = ne[11]
	}
	ne[9] = "tostring"
	ne[27] = "Parent"
	ne[1] = ge(ne[2], ne[3])
	ne[15] = "UDim2"
	ne[5] = "Name"
	ne[12] = "Size"
	ge = up4
	ne[32] = "UICorner"
	ne[3] = "TextButton"
	ne[7] = "Button_"
	ne[8] = ENV[ne[9]]
	ne[11] = 0
	ne[9] = ne[8](fe)
	ne[6] = ne[7] .. ne[9]
	ne[25] = "TextTransparency"
	ne[8] = "BackgroundTransparency"
	ne[10] = "BorderSizePixel"
	ne[9] = 1
	ne[26] = 1
	ne[14] = ENV[ne[15]]
	ne[18] = false
	ne[7] = "BackgroundColor3"
	ne[15] = "new"
	ne[13] = ne[14][ne[15]]
	ne[15] = 1
	ne[14] = ne[13](Xe, de, ne[15], ne[16])
	ne[22] = ENV[ne[23]]
	ne[15] = "ZIndex"
	ne[23] = "Font"
	ne[19] = "Font"
	ne[21] = ne[22][ne[23]]
	ne[23] = "TextSize"
	ne[13] = "LayoutOrder"
	ne[16] = 1003
	ne[22] = "GothamMedium"
	ne[28] = "Children"
	ne[20] = ne[21][ne[22]]
	ne[37] = "UDim"
	ne[21] = "Text"
	ne[30] = up4
	ne[36] = ENV[ne[37]]
	ne[22] = "TextColor3"
	ne[38] = 6
	ne[37] = "new"
	ne[35] = ne[36][ne[37]]
	ne[37] = 0
	ne[36] = ne[35](ne[37], ne[38])
	ne[33] = {
		[ne[34]] = ne[36]
	}
	ne[31] = ne[30](ne[32], ne[33])
	ne[29] = {
		ne[31],
		ne[1]
	}
	ne[4] = {
		[ne[5]] = ne[6],
		[ne[7]] = se,
		[ne[8]] = ne[9],
		[ne[10]] = ne[11],
		[ne[12]] = ne[14],
		[ne[13]] = fe,
		[ne[15]] = ne[16],
		[ne[17]] = ne[18],
		[ne[19]] = ne[20],
		[ne[21]] = Ne,
		[ne[22]] = qe,
		[ne[23]] = ne[24],
		[ne[25]] = ne[26],
		[ne[27]] = Qe,
		[ne[28]] = ne[29]
	}
	ne[2] = ge(ne[3], ne[4])
	ne[8] = "DefaultBg"
	ne[4] = "table"
	ne[10] = "IsPrimary"
	ne[3] = ENV[ne[4]]
	ne[4] = "insert"
	ge = ne[3][ne[4]]
	ne[9] = "HoverBg"
	ne[4] = f[ce]
	ne[7] = "Stroke"
	ne[6] = "Instance"
	ne[11] = "Data"
	ne[5] = {
		[ne[6]] = ne[2],
		[ne[7]] = ne[1],
		[ne[8]] = se,
		[ne[9]] = ae,
		[ne[10]] = he,
		[ne[11]] = We
	}
	ne[2] = nil
	ne[3] = ge(ne[4], ne[5])
	ne[1] = nil
	goto L3175512
::L14601550::
	ne[12] = 80
	ne[13] = 80
	ne[11] = "Color3"
	ne[10] = ENV[ne[11]]
	ne[11] = "fromRGB"
	ne[9] = ne[10][ne[11]]
	ne[11] = 80
	ne[10] = ne[9](ne[11], ne[12], ne[13])
	ne[7] = ne[10]
	goto L4220128
::L4193207::
	ne[5] = "Color3"
	ne[4] = ENV[ne[5]]
	ne[5] = "fromRGB"
	ne[3] = ne[4][ne[5]]
	ne[5] = 255
	ne[7] = 255
	ne[6] = 255
	ne[4] = ne[3](ne[5], ne[6], ne[7])
	ne[1] = ne[4]
	goto L12680009
::L734356::
	ne[4] = "Color3"
	ne[3] = ENV[ne[4]]
	ne[6] = 52
	ne[4] = "fromRGB"
	ne[2] = ne[3][ne[4]]
	ne[5] = 52
	ne[4] = 52
	ne[3] = ne[2](ne[4], ne[5], ne[6])
	ge = ne[3]
	goto L4412077
::L14744532::
	ne[3] = "Color3"
	ne[5] = 38
	ne[2] = ENV[ne[3]]
	ne[3] = "fromRGB"
	ne[1] = ne[2][ne[3]]
	ne[4] = 38
	ne[3] = 38
	ne[2] = ne[1](ne[3], ne[4], ne[5])
	qe = ne[2]
	goto L15994748
::L6318518::
	Ce = c
	se = string.lower(Ne)
	oe = me == 1
	if ae then goto L4777817 end
::L2013901::
	qe = c
	ne[1] = "okay"
	ae = se == ne[1]
	if ge then goto L10737051 end
::L11210564::
	ne[3] = "ok"
	ne[1] = c
	ne[2] = se == ne[3]
	ge = ne[2]
	if ne[2] then goto L5376377 end
::L3087901::
	ne[5] = "yes"
	ne[3] = c
	ne[4] = se == ne[5]
	cond = ne[4]
	ne[2] = ne[4]
	if ne[4] then goto L6418230 end
::L4121689::
	ne[5] = c
	ne[7] = "confirm"
	ne[6] = se == ne[7]
	cond = ne[6]
	ne[4] = ne[6]
	if ne[6] then goto L3166261 end
::L14815795::
	ne[9] = "accept"
	ne[8] = se == ne[9]
	ne[7] = c
	cond = ne[8]
	ne[6] = ne[8]
	if ne[8] then goto L816952 end
::L5158150::
	ne[9] = "apply"
	ne[8] = se == ne[9]
	ne[6] = ne[8]
::L816952::
	ne[4] = ne[6]
::L3166261::
	ne[2] = ne[4]
::L6418230::
	ge = ne[2]
::L5376377::
	ae = ge
::L10737051::
	oe = ae
::L4777817::
	c = Ce
	if oe then goto L14540302 end
::L10739762::
	he = false
::L9538182::
	goto L8464889
::L14540302::
	he = true
	goto L9538182
::L3380379::
	b = A + 8
	goto L75674
::L738755::
	A = c
	u = e.Text
	if v then goto L2440078 end
::L14762064::
	L = c
	v = e.Name
	if b then goto L15747443 end
::L8111998::
	v = e.Title
::L15747443::
	u = v
::L2440078::
	c = A
	if u then goto L14966211 end
::L276764::
	if (#e)>0 then goto L11341680 end
::L10327714::
	M = {
		pairs(e)
	}
	v = M[1]
	L = M[2]
	b = M[3]
::L14663101::
	b, M = v(L, b)
	if b then goto L1382815 end
::L7922823::
::L16144882::
::L11036764::
	goto L11330510
::L1382815::
	y = "Text"
	z = table.insert
	Fe = c
	Y = tostring(b)
	k = c
	E = "Callback"
	Je = type(M) == "function"
	if Qe then goto L6447875 end
::L46116::
	c = k
	H = Je
	if Je then goto L9913617 end
::L5739673::
	k = c
	Je = type(M) == "table"
	if Qe then goto L1690854 end
::L15435807::
	H = Je
::L9913617::
	c = Fe
	k = c
	Fe = "Primary"
	Je = type(M) == "table"
	if Qe then goto L1265752 end
::L6719419::
	z(B, {
		[y] = Y,
		[E] = H,
		[Fe] = Je
	})
	c = k
	goto L14663101
::L1265752::
	me = c
	Qe = M.Primary
	if ce then goto L7910847 end
::L1165427::
	Qe = M.IsPrimary
::L7910847::
	Je = Qe
	goto L6719419
::L1690854::
	me = c
	Qe = M.Callback
	if ce then goto L16703294 end
::L14860694::
	Ze = c
	ce = M.OnClick
	if Ge then goto L9993995 end
::L12845654::
	ce = M.Function
::L9993995::
	Qe = ce
::L16703294::
	Je = Qe
	goto L15435807
::L6447875::
	Je = M
	goto L46116
::L11341680::
	M = {
		ipairs(e)
	}
	L = M[2]
	b = M[3]
	v = M[1]
::L6150076::
	b, M = v(L, b)
	if b then goto L2257080 end
::L1731676::
	goto L16144882
::L2257080::
	if type(M)=="string" then goto L10869983 end
::L14705279::
	if type(M)=="table" then goto L11180803 end
::L14818956::
	goto L6150076
::L11180803::
	Y = c
	y = "Text"
	z = table.insert
	E = M.Text
	if H then goto L9136616 end
::L7851622::
	Fe = c
	H = M.Name
	if Je then goto L16003422 end
::L5894538::
	H = M.Title or "Button"
::L16003422::
	E = H
::L9136616::
	c = Y
	Y = "Callback"
	Fe = c
	H = M.Callback
	if Je then goto L315612 end
::L4686859::
	k = c
	Je = M.OnClick
	if Qe then goto L1229971 end
::L14760890::
	Je = M.Function
::L1229971::
	H = Je
::L315612::
	c = Fe
	Fe = "Primary"
	k = c
	Je = M.Primary
	if Qe then goto L9797668 end
::L4776319::
	Je = M.IsPrimary
::L9797668::
	c = k
	z(B, {
		[y] = E,
		[Y] = H,
		[Fe] = Je
	})
	goto L14818956
::L10869983::
	table.insert(B, {
		Text = M
	})
	goto L14818956
::L14966211::
	L = "Text"
	M = c
	u = table.insert
	b = e.Text
	if z then goto L13569797 end
::L3255780::
	S = c
	z = e.Name
	if P then goto L11741051 end
::L11818915::
	z = e.Title or "Okay"
::L11741051::
	b = z
::L13569797::
	c = M
	M = "Callback"
	z = e.Callback
	S = c
	if P then goto L5552198 end
::L7646592::
	y = c
	P = e.OnClick
	if E then goto L9851149 end
::L605741::
	P = e.Function
::L9851149::
	z = P
::L5552198::
	y = S
	S = "Primary"
	P = e.Primary
	if E then goto L11536914 end
::L4856435::
	P = e.IsPrimary
::L11536914::
	c = y
	u(B, {
		[L] = b,
		[M] = z,
		[S] = P
	})
	goto L11036764
::L6227497::
	table.insert(B, {
		Text = e,
		Callback = f[i].Callback
	})
	goto L11330510
::L2705935::
	y = c
	P = W.Buttons
	if E then goto L15168541 end
::L1219978::
	P = W.Actions
::L15168541::
	z = P
	goto L10513952
::L13324478::
	return
::L555850::
	e = up1.ActiveById[f[i].Id]
	B = c
	x = e
	if e then goto L5965459 end
::L54882::
	c = B
	if x then goto L4420893 end
::L1377703::
	goto L3739580
::L4420893::
	B = c
	x = e.TitleLabel
	if u then goto L2392333 end
::L12066205::
	c = B
	if x then goto L7776972 end
::L15863729::
	B = c
	x = e.DescLabel
	if u then goto L7808823 end
::L1017436::
	if x then goto L11090176 end
::L1793742::
	if e.ResetTimer then goto L4681127 end
::L3197889::
	return e
::L4681127::
	e.ResetTimer(f[l])
	goto L3197889
::L11090176::
	A = up2(j, T, K, t)
	e.DescLabel.Text = A
	goto L1793742
::L7808823::
	x = e.DescLabel.Parent
	goto L1017436
::L7776972::
	e.TitleLabel.Text = o
	goto L15863729
::L2392333::
	x = e.TitleLabel.Parent
	goto L12066205
::L5965459::
	A = c
	u = e.Host
	if v then goto L2367630 end
::L511514::
	x = u
	goto L54882
::L2367630::
	L = c
	v = e.Host.Parent
	if b then goto L15721189 end
::L2255901::
	u = v
	goto L511514
::L15721189::
	v = not e.isDismissed
	goto L2255901
end

function fn_8138851(arg1, arg2, arg3, arg4, arg5) -- entry L8138851, 1 blocks
::L8138851::
	DebouncedFitScrollCanvas(up1, up2, "X", 4)
	return
end

function fn_8156572(arg1, arg2, arg3, arg4, arg5) -- entry L8156572, 1 blocks
::L8156572::
	c = up1
	d = c:GetPropertyChangedSignal("LocalPlayer")
	c = d:Wait()
	up2 = c
	return
end

function fn_8232843(arg1, arg2, arg3, arg4, arg5) -- entry L8232843, 1 blocks
::L8232843::
	c = up1.Text
	R = O()
	f[R] = c
	i = f[R] ~= ""
	up2.Visible = i
	c = up3 + 1
	i = O()
	up3 = c
	d = up3
	f[i] = d
	d = task.delay
	o = closure(fn_4691528, {
		i,
		up3,
		R,
		up4
	})
	h(R)
	h(i)
	d(.08, o)
	return
end

function fn_8236015() -- entry L8236015, 1 blocks
::L8236015::
	FitScrollCanvas(up1, up2, "X", 4)
	return
end

function fn_8247531() -- entry L8247531, 12 blocks
::L8247531::
	c = up1
	R = c:Get("_autoLoadTarget", nil)
	if R then goto L15530080 end
::L16601289::
	return
::L15530080::
	c = up1
	i = c:Get("_saveSlots", {})
	o = {
		ipairs(i)
	}
	N = o[3]
	W = o[2]
	o = o[1]
::L1761499::
	N, K = o(W, N)
	if N then goto L7029031 end
::L12382078::
	goto L16601289
::L7029031::
	l = K.name == R
	if T then goto L12490158 end
::L2694340::
	if l then goto L10393055 end
::L15500173::
	goto L1761499
::L10393055::
	c = up1
	c:ApplySnapshot(K.data, true)
	T = K.name
	up1.ActiveProfile = T
	if up2 then goto L10500892 end
::L14145778::
	goto L12382078
::L10500892::
	c = up2
	t = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", K.name)
	c.Text = t
	goto L14145778
::L12490158::
	l = K.data
	goto L2694340
end

function fn_8262362(arg1) -- entry L8262362, 3 blocks
::L8262362::
	up1.Visible = false
	up2.Visible = false
	c = up1
	i = UDim2.new(0, up3, 0, up4)
	c.Size = i
	up1.BackgroundTransparency = 0
	if up5 then goto L16186003 end
::L4535260::
	return
::L16186003::
	up5()
	goto L4535260
end

function fn_8305683(arg1, arg2) -- entry L8305683, 5 blocks
::L8305683::
	i = arg2
	R = arg1
	if up1 then goto L6127508 end
::L11264661::
	if i then goto L12559247 end
::L13416047::
	return
::L12559247::
	c = up2
	c:Save("_opt_UITransparency", R)
	goto L13416047
::L6127508::
	up1.BackgroundTransparency = R
	goto L11264661
end

function fn_8325922(arg1) -- entry L8325922, 6 blocks
::L8325922::
	up1.Play(up2, {
		TextTransparency = 0
	}, .22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	up1.Play(up3, {
		TextTransparency = 0
	}, .22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	up1.Play(up4, {
		TextTransparency = 0
	}, .22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	up1.Play(up5, {
		BackgroundTransparency = 0
	}, .22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	up1.Play(up6, {
		BackgroundTransparency = 0
	}, .22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	N = {
		ipairs(up7)
	}
	R = N[2]
	i = N[3]
	W = N[1]
::L14686066::
	i, o = W(R, i)
	if i then goto L10939654 end
::L3134984::
	c = up1.Play
	i = up6
	W = {
		Size = UDim2.new(0, 0, 1, 0)
	}
	c(i, W, up8, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	return
::L10939654::
	up1.Play(o.Instance, {
		BackgroundTransparency = 0,
		TextTransparency = 0
	}, .22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	if o.Stroke then goto L6888297 end
::L3794542::
	goto L14686066
::L6888297::
	up1.Play(o.Stroke, {
		Transparency = .8
	}, .22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	goto L3794542
end

function fn_8379402(arg1) -- entry L8379402, 1 blocks
::L8379402::
	return math.floor((arg1*100)+.5).."%"
end

function fn_8380123() -- entry L8380123, 4 blocks
::L8380123::
	R = {}
	o = {
		ipairs(up1)
	}
	i = o[2]
	W = o[3]
	N = o[1]
::L15177138::
	W, j = N(i, W)
	if W then goto L8577849 end
::L14802082::
	return R
::L8577849::
	K = up2[j]
	R[(# R) + 1] = K
	goto L15177138
end

function fn_8397256(arg1, arg2, arg3, arg4, arg5) -- entry L8397256, 23 blocks
::L8397256::
	R = arg1
	c = R
	up1 = c
	up2 = true
	i = up3
	i = i:Get("_saveSlots", {})[R]
	if not i then goto L15674030 end
::L14700460::
	o = "Text"
	N = up4
	K = c
	j = i.name
	if l then goto L2892445 end
::L12340229::
	j = "Slot " .. R
::L2892445::
	N[o] = j
	c = K
	t = c
	x = c
	up5.Visible = false
	up6.Text = ""
	up7 = ""
	o = up3
	j = o:Get("_autoLoadTarget", nil)
	o = j == i.name
	l = "BackgroundColor3"
	K = up8
	e = o
	if o then goto L5789545 end
::L189784::
	T = e
	if e then goto L10212050 end
::L3346458::
	T = Color3.fromRGB(14, 9, 26)
::L10212050::
	e = o
	c = t
	t = c
	x = c
	K[l] = T
	K = up9
	l = "Position"
	if o then goto L10610412 end
::L12386082::
	T = e
	if e then goto L16466075 end
::L3144808::
	T = UDim2.new(0, 3, .5, 0)
::L16466075::
	c = t
	K[l] = T
	K = up9
	l = K:FindFirstChildOfClass("UIGradient")
	if l then goto L30093 end
::L15006569::
	up10.UpdatePreview(i)
	up10.ShowSlotPage(R)
	return
::L30093::
	v = c
	b = c
	K = "Color"
	L = o
	T = ColorSequence.new
	x = ColorSequenceKeypoint.new
	u = 0
	if o then goto L6222384 end
::L547014::
	A = L
	if L then goto L15193752 end
::L5090075::
	A = Color3.fromRGB(110, 90, 140)
::L15193752::
	c = v
	B = x(u, A)
	L = c
	M = c
	x = ColorSequenceKeypoint.new
	A = 1
	b = o
	if o then goto L4971709 end
::L10163935::
	v = b
	if b then goto L6577140 end
::L9355574::
	v = Color3.fromRGB(55, 45, 85)
::L6577140::
	t = T({
		B,
		unpack({
			x(A, v)
		})
	})
	l[K] = t
	goto L15006569
::L4971709::
	b = Color3.fromRGB(170, 105, 255)
	goto L10163935
::L6222384::
	L = Color3.fromRGB(235, 205, 255)
	goto L547014
::L10610412::
	e = UDim2.new(0, 21, .5, 0)
	goto L12386082
::L5789545::
	e = Color3.fromRGB(90, 45, 170)
	goto L189784
::L15674030::
	return
end

function fn_8498996(arg1, arg2, arg3, arg4, arg5) -- entry L8498996, 1 blocks
::L8498996::
	CircleClick(up1, up2.X, up2.Y)
	R = closure(fn_12231870, {
		up3
	})
	pcall(R)
	up4.Text = "COPIED"
	c = up4
	i = Color3.fromRGB(100, 255, 160)
	c.TextColor3 = i
	c = up5
	R = up1
	i = {
		BackgroundColor3 = Color3.fromRGB(14, 60, 32)
	}
	c:Tween(R, i, .12, Enum.EasingStyle.Quint)
	c = task.delay
	c(1.4, closure(fn_3832728, {
		up4,
		up6,
		up5,
		up1,
		up7,
		up8,
		up9
	}))
	c = up10.Notification
	c:Notify({
		Title = up11,
		Description = "Profile link copied to clipboard!"
	}, {
		Time = 2
	})
	return
end

function fn_8515547(arg1, arg2, arg3) -- entry L8515547, 13 blocks
::L8515547::
	R = arg1
	K = R
	up1.Active = R
	c = up2
	i = up1
	N = "BackgroundTransparency"
	l = c
	if R then goto L10475985 end
::L2858049::
	c = l
	W = {
		[N] = K or .75
	}
	e = c
	K = "TextColor3"
	c:Tween(i, W, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	t = R
	j = (R and 0) or .6
	o = "TextTransparency"
	d = up2
	T = c
	W = up4
	if R then goto L6502774 end
::L9739378::
	l = t
	if t then goto L694347 end
::L9352709::
	l = Color3.fromRGB(100, 100, 105)
::L694347::
	c = T
	d:Tween(W, {
		[o] = j,
		[K] = l
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	d = up2
	T = c
	d:Tween(up5, {
		BackgroundTransparency = (R and 0) or .65
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	d = up2
	W = up6
	l = R
	o = "ImageTransparency"
	if R then goto L5187457 end
::L9216427::
	d:Tween(W, {
		[o] = l or .75
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	d = up2
	d:Tween(up7, {
		Transparency = (R and .8) or .9
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	return
::L5187457::
	l = (up3 and 0) or .5
	goto L9216427
::L6502774::
	A = c
	u = up3
	B = c
	if v then goto L15819710 end
::L16106997::
	x = u
	if u then goto L13177802 end
::L150224::
	x = Color3.fromRGB(145, 145, 150)
::L13177802::
	t = x
	goto L9739378
::L15819710::
	u = Color3.fromRGB(205, 205, 210)
	goto L16106997
::L10475985::
	K = (up3 and .35) or .48
	goto L2858049
end

function fn_8610673(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- entry L8610673, 16 blocks
::L8610673::
	R = arg1
	W = arg3
	N = arg4
	i = arg2
	d = not R
	if o then goto L13875742 end
::L407530::
	d = R == ""
::L13875742::
	if d then goto L785784 end
::L10335139::
	d = i
	if i then goto L16254218 end
::L1251248::
	d = Enum.Font.Gotham
::L16254218::
	i = d
	t = c
	N = N or 150
	l = c
	W = W or 11
	T = typeof(i) == "EnumItem"
	if e then goto L11226210 end
::L13431132::
	K = T
	if T then goto L3049509 end
::L13022970::
	K = tostring(i)
::L3049509::
	t = tostring(R)
	L = tostring(W)
	l = t .. ("\000" .. (K .. ("\000" .. (L .. ("\000" .. J.tostring(N))))))
	T = up1[l]
	if T then goto L13024491 end
::L7739314::
	e = tostring(R)
	t = e:gsub("<[^>]->", "")
	e = 0
	v = {
		t:gmatch("\n")
	}
	B = v[2]
	x = v[1]
	u = v[3]
::L6903119::
	u = x(B, u)
	if u then goto L12037033 end
::L15829291::
	B = up2
	u = B.GetTextSize
	B = (u(B, t, W, i, unpack({
		Vector2.new(N, 10000)
	})).Y + (e * 4)) + 2
	up1[l] = B
	return B
::L12037033::
	e = e + 1
	goto L6903119
::L13024491::
	return T
::L11226210::
	T = i.Name
	goto L13431132
::L785784::
	return 0
end

function fn_8644600(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L8644600, 3 blocks
::L8644600::
	l = up1.Play(arg2, arg3, arg4, arg5, arg6, arg7)
	if l then goto L16715600 end
::L5372869::
	return l
::L16715600::
	up2[(# up2) + 1] = l
	goto L5372869
end

function fn_8671222(arg1, arg2) -- entry L8671222, 13 blocks
::L8671222::
	R = arg1
	if type(R)~="string" then goto L1979590 end
::L9671816::
	d = string.lower(R)
	c = d:gsub("%s+$", "")
	i = c
	d = i:find("%.webm") ~= nil
	if W then goto L13707823 end
::L16228580::
	N = c
	W = i:find("%.mp4") ~= nil
	if o then goto L10200472 end
::L14083332::
	j = c
	o = i:find("%.mov") ~= nil
	if K then goto L2717564 end
::L9109204::
	l = c
	K = i:find("%.mkv") ~= nil
	if T then goto L13208129 end
::L10309835::
	t = c
	T = i:find("%.avi") ~= nil
	if e then goto L8619164 end
::L2228399::
	T = i:find("%[vid%]") ~= nil
::L8619164::
	K = T
::L13208129::
	o = K
::L2717564::
	W = o
::L10200472::
	d = W
::L13707823::
	return d
::L1979590::
	return false
end

function fn_8718728(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L8718728, 18 blocks
::L8718728::
	N = arg4
	R = arg1
	c = not R
	o = arg5
	i = arg2
	j = O()
	f[j] = arg6
	W = arg3
	if c then goto L646406 end
::L15773075::
	d = typeof(W) == "number"
	if K then goto L15891299 end
::L12638619::
	if d then goto L11458858 end
::L10847652::
	T = c
	l = typeof(W) == "TweenInfo"
	if t then goto L3463107 end
::L3645929::
	c = T
	K = l
	if l then goto L8377013 end
::L9079664::
	K = up2.Info(W or .25, N, o)
::L8377013::
	c = up3
	l = c:Create(R, K, i)
	if typeof(f[j])=="function" then goto L6689247 end
::L8103389::
	l:Play()
	return l
::L6689247::
	T = O()
	f[T] = nil
	c = l.Completed
	e = closure(fn_13586973, {
		T,
		j
	})
	t = c:Connect(e)
	f[T] = t
	h(T)
	goto L8103389
::L3463107::
	l = W
	goto L3645929
::L11458858::
	T = {
		pairs(i)
	}
	K = T[2]
	l = T[3]
	T = T[1]
::L1419155::
	l, e = T(K, l)
	if l then goto L2747283 end
::L10676261::
	if typeof(f[j])=="function" then goto L10878355 end
::L9482972::
	return nil
::L10878355::
	f[j]()
	goto L9482972
::L2747283::
	pcall(up1.Set, R, l, e)
	goto L1419155
::L15891299::
	d = W == 0
	goto L12638619
::L646406::
	return nil
end

function fn_8743671() -- entry L8743671, 1 blocks
::L8743671::
	up1(up2.Text)
	return
end

function fn_8782778(arg1, arg2, arg3, arg4) -- entry L8782778, 1 blocks
::L8782778::
	return "yrNQSRoqERU3AV"/(13574362-("xVlNTzuDbOB0"^7237807))
end

function fn_8790158(arg1, arg2, arg3, arg4) -- entry L8790158, 7 blocks
::L8790158::
	R = arg1
	if up1 then goto L11304003 end
::L4412467::
	d = R.UserInputType == Enum.UserInputType.MouseButton1
	if i then goto L5132530 end
::L8991025::
	d = R.UserInputType == Enum.UserInputType.Touch
::L5132530::
	if d then goto L3989251 end
::L16678685::
	return
::L3989251::
	up2()
	goto L16678685
::L11304003::
	return
end

function fn_8794367(arg1, arg2, arg3) -- entry L8794367, 1 blocks
::L8794367::
	up1 = true
	up2.Visible = false
	up3.SetSubtitleTier()
	return
end

function fn_8917735(arg1, arg2, arg3) -- entry L8917735, 1 blocks
::L8917735::
	return
end

function fn_9078291(arg1, arg2) -- entry L9078291, 1 blocks
::L9078291::
	table.insert(up1.buttonGradients, arg1)
	return
end

function fn_9100128(arg1, arg2) -- entry L9100128, 18 blocks
::L9100128::
::L10603483::
	if true then goto L13796986 end
::L13742686::
	return
::L13796986::
	task.wait(.45)
	d = up1()
	c = up2
	R = d
	i = c:Get("_opt_Language", "English")
	d = R ~= up3
	if W then goto L14580710 end
::L13924887::
	N = c
	W = R
	if R then goto L14607134 end
::L4798040::
	d = W
::L14580710::
	if d then goto L8792071 end
::L2605109::
	goto L10603483
::L8792071::
	c = R
	up3 = c
	up4 = i
	o = c
	W = up5.Languages[i]
	N = R
	if R then goto L12360617 end
::L10008802::
	if N then goto L5467314 end
::L9379575::
	if not R then goto L13533483 end
::L1977094::
	goto L2605109
::L13533483::
	ApplyTranslation("en")
	goto L1977094
::L5467314::
	ApplyTranslation(W)
	goto L1977094
::L12360617::
	K = c
	j = W
	if W then goto L13690433 end
::L7291246::
	N = j
	goto L10008802
::L13690433::
	j = W ~= "en"
	goto L7291246
::L14607134::
	W = i ~= up4
	goto L4798040
end

function fn_9123293(arg1, arg2, arg3, arg4, arg5) -- entry L9123293, 1 blocks
::L9123293::
	return up1
end

function fn_9139112(arg1, arg2) -- entry L9139112, 22 blocks
::L9139112::
	R = arg1
	i = arg2
	d = not up1
	if W then goto L13851638 end
::L9819754::
	d = not i
::L13851638::
	if d then goto L6521211 end
::L3097520::
	if up2.HasKeyAccess() then goto L11677566 end
::L16611840::
	R.BackgroundTransparency = .55
	W = R:FindFirstChild("AccentBar")
	if W then goto L11813831 end
::L13540981::
	c = ipairs
	K = {
		c(unpack({
			R:GetDescendants()
		}))
	}
	N = K[2]
	o = K[3]
	j = K[1]
::L14724192::
	o, l = j(N, o)
	if o then goto L15038238 end
::L12874136::
	c = up3
	e = Vector2.new(1, 0)
	B = UDim2.new(1, - 6, 0, 6)
	A = UDim2.new(0, 11, 0, 11)
	c("ImageLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = e,
		Position = B,
		Size = A,
		Image = "rbxassetid://7733992528",
		ImageColor3 = Color3.fromRGB(140, 110, 190),
		ImageTransparency = .3,
		ZIndex = 10
	}, R)
	c = up3
	N = c("TextButton", {
		Name = "_KeyBlocker",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = "",
		ZIndex = 10,
		AutoButtonColor = false
	}, R)
	j = closure(fn_14638046, {
		up4
	})
	c = N.Activated
	c:Connect(j)
	table.insert(up5, {
		frame = R,
		blocker = N
	})
	return
::L15038238::
	T = l:IsA("TextLabel")
	if t then goto L3893664 end
::L7516909::
	T = l:IsA("TextButton")
::L3893664::
	if T then goto L5642743 end
::L6953554::
	goto L14724192
::L5642743::
	T = l.Name == "ButtonLabel"
	if t then goto L2785664 end
::L5365453::
	e = c
	t = l.Name == "ToggleTitle"
	if x then goto L13800552 end
::L15391798::
	t = l.Name == "SliderTitle"
::L13800552::
	T = t
	c = e
::L2785664::
	if T then goto L9533237 end
::L2565660::
	goto L6953554
::L9533237::
	c = "TextColor3"
	t = Color3.fromRGB(130, 110, 160)
	l.TextColor3 = t
	goto L2565660
::L11813831::
	W.BackgroundTransparency = .8
	goto L13540981
::L11677566::
	return
::L6521211::
	return
end

function fn_9189721(arg1, arg2, arg3, arg4) -- entry L9189721, 1 blocks
::L9189721::
	up1(up2)
	return
end

function fn_9201187(arg1) -- entry L9201187, 8 blocks
::L9201187::
	if up1.IsDeveloperBuild() then goto L4422267 end
::L1794131::
	if up1.HasKeyAccess() then goto L1759964 end
::L3648334::
	if up4 then goto L2633877 end
::L14508844::
	c = up2
	R = string.format
	N = up3
	o = up5
	i = R("<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#34D399\">%s</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>", N, o, unpack({
		os.date("%A")
	}))
	c.Text = i
::L872363::
	return
::L2633877::
	c = up2
	R = string.format
	N = up3
	i = R("<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#34D399\">v.Freemium</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>", N, unpack({
		os.date("%A")
	}))
	c.Text = i
	goto L872363
::L1759964::
	c = up2
	R = string.format
	N = up3
	i = R("<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#FFD700\">v.Premium</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>", N, unpack({
		os.date("%A")
	}))
	c.Text = i
	goto L872363
::L4422267::
	c = up2
	R = string.format
	N = up3
	i = R("<font color=\"#C084FC\">%s</font> \226\128\162 <font color=\"#7286FF\">v.Developer</font> \226\128\162 <font color=\"#FF9E9E\">%s</font>", N, unpack({
		os.date("%A")
	}))
	c.Text = i
	goto L872363
end

function fn_9260478(arg1, arg2, arg3, arg4, arg5) -- entry L9260478, 27 blocks
::L9260478::
	d = not up1
	if R then goto L16631349 end
::L621819::
	d = not up1.Parent
::L16631349::
	if d then goto L15887363 end
::L5074936::
	c = ipairs
	W = up1
	W = {
		c(unpack({
			W:GetChildren()
		}))
	}
	i = W[3]
	R = W[2]
	W = W[1]
::L33866::
	i, o = W(R, i)
	if i then goto L8058671 end
::L14784020::
	R = up2.List
	if (#R)==0 then goto L16466829 end
::L2809486::
	o = {
		ipairs(R)
	}
	i = o[1]
	W = o[2]
	N = o[3]
::L7758574::
	N, j = i(W, N)
	if N then goto L12225032 end
::L12291232::
	return
::L12225032::
	o = N
	c = up2.Entries[j]
	K = O()
	t = c
	f[K] = c
	T = f[K]
	if e then goto L11883787 end
::L3477062::
	l = T
	c = t
	if T then goto L1781981 end
::L15443769::
	t = c
	T = j:match("([^|]+)$")
	if e then goto L2049128 end
::L15203307::
	T = j
::L2049128::
	c = t
	l = T
::L1781981::
	e = c
	t = f[K]
	if x then goto L3701606 end
::L10588952::
	ne[3] = "Enum"
	T = t or ""
	t = up3
	v = ThemeColor("Primary")
	z = UDim2.new(1, - 8, 0, 36)
	Fe = up3
	Je = Fe("UICorner", {
		CornerRadius = UDim.new(0, 6)
	})
	Fe = up3
	de = UDim2.new(0, 10, 0, 2)
	fe = UDim2.new
	ne[1] = "Enum"
	Re = fe(1, - 20, 0, 16)
	Oe = Enum.Font.GothamBold
	oe = Color3.fromRGB(255, 220, 140)
	ge = ENV[ne[1]]
	ne[1] = "TextXAlignment"
	ae = ge[ne[1]].Left
	ne[2] = ENV[ne[3]]
	ne[3] = "TextTruncate"
	ne[1] = ne[2][ne[3]]
	ne[2] = "AtEnd"
	k = Fe("TextLabel", {
		BackgroundTransparency = 1,
		Position = de,
		Size = Re,
		Font = Oe,
		Text = "\226\152\133  " .. l,
		TextColor3 = oe,
		TextSize = 11,
		TextXAlignment = ae,
		TextTruncate = ne[1][ne[2]]
	})
	Fe = up3
	fe = UDim2
	ne[3] = "Enum"
	fe = fe.new(0, 10, 0, 18)
	Oe = UDim2.new(1, - 20, 0, 14)
	ie = Enum.Font.Gotham
	oe = Color3.fromRGB(160, 140, 190)
	ne[1] = "Enum"
	ge = ENV[ne[1]]
	ne[1] = "TextXAlignment"
	ae = ge[ne[1]].Left
	ne[2] = ENV[ne[3]]
	ne[3] = "TextTruncate"
	ne[1] = ne[2][ne[3]]
	ne[2] = "AtEnd"
	B = {
		BackgroundColor3 = v,
		BackgroundTransparency = .35,
		Size = z,
		Text = "",
		AutoButtonColor = false,
		LayoutOrder = o,
		Children = {
			Je,
			k,
			unpack({
				Fe("TextLabel", {
					BackgroundTransparency = 1,
					Position = fe,
					Size = Oe,
					Font = ie,
					Text = T,
					TextColor3 = oe,
					TextSize = 9,
					TextXAlignment = ae,
					TextTruncate = ne[1][ne[2]]
				})
			})
		}
	}
	t = t("TextButton", B, up1).MouseButton1Click
	B = closure(fn_10430957, {
		K,
		up4
	})
	h(K)
	t:Connect(B)
	goto L7758574
::L3701606::
	t = (f[K].tabTitle or "") .. (" \226\128\186 " .. (f[K].menuTitle or ""))
	goto L10588952
::L11883787::
	T = f[K].title
	goto L3477062
::L16466829::
	c = up3
	T = UDim2.new(1, - 8, 0, 18)
	t = Enum.Font.Gotham
	A = Color3.fromRGB(140, 120, 170)
	c("TextLabel", {
		BackgroundTransparency = 1,
		Size = T,
		Font = t,
		Text = "No favorites yet",
		TextColor3 = A,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left
	}, up1)
	return
::L8058671::
	j = o:IsA("TextButton")
	if K then goto L15237880 end
::L7813404::
	l = c
	K = o:IsA("TextLabel")
	if T then goto L7833801 end
::L13357946::
	j = K
	c = l
::L15237880::
	if j then goto L8815930 end
::L3507470::
	goto L33866
::L8815930::
	c = o:Destroy()
	goto L3507470
::L7833801::
	K = o.Text == "No favorites yet"
	goto L13357946
::L15887363::
	return
end

function fn_9263160(arg1, arg2) -- entry L9263160, 7 blocks
::L9263160::
	R = arg1
	up1.Visible = false
	up2.Visible = true
	c = up3
	W = Vector2.new(0, 0)
	c.CanvasPosition = W
	c = up4
	W = c:Get("_saveSlots", {})[R]
	c = up5
	N = c:FindFirstChild("BackLabel")
	d = N
	if N then goto L3607801 end
::L12661869::
	if d then goto L11801130 end
::L10052882::
	return
::L11801130::
	o = "Text"
	d = W.name
	if j then goto L28512 end
::L7053449::
	d = "Slot " .. R
::L28512::
	N[o] = d
	goto L10052882
::L3607801::
	d = W
	goto L12661869
end

function fn_9272005() -- entry L9272005, 5 blocks
::L9272005::
	up1._busy = false
	d = up1._pending
	if R then goto L4243843 end
::L12638790::
	if d then goto L10439224 end
::L4901441::
	return
::L10439224::
	R = up1._pending
	up1._pending = nil
	task.defer(ApplyTranslation, R)
	goto L4901441
::L4243843::
	d = up1._pending ~= up2
	goto L12638790
end

function fn_9328518(arg1, arg2, arg3, arg4) -- entry L9328518, 10 blocks
::L9328518::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .2
	}, .15)
	c = up3.Text
	d = c:gsub("^%s+", "")
	R = d:gsub("%s+$", "")
	d = R ~= ""
	if i then goto L4082301 end
::L3630012::
	if d then goto L4719278 end
::L6149503::
	d = R == ""
	if i then goto L545073 end
::L5086045::
	if d then goto L13289503 end
::L5834395::
	up7()
::L4861233::
	return
::L13289503::
	up5.UpdateHistoryUI(false)
	goto L4861233
::L545073::
	d = (# up6) > 0
	goto L5086045
::L4719278::
	up5.UpdateSearchTreeUI(up4, R)
	up5.UpdateHistoryUI(true)
	goto L4861233
::L4082301::
	d = (# up4) > 0
	goto L3630012
end

function fn_9359241(arg1, arg2, arg3, arg4) -- entry L9359241, 5 blocks
::L9359241::
	R = arg1
	W = up1.Scale
	if W<=0 then goto L4832973 end
::L16767144::
	if W<1 then goto L7996909 end
::L3793620::
	d = math.min
	j = R + d(math.floor(((W - 1) * 10) + .5), 6)
	return math.min(j,18), 1
::L7996909::
	return unpack(math.max)
::L4832973::
	W = 1
	goto L16767144
end

function fn_9422263(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L9422263, 25 blocks
::L9422263::
	i = arg2
	R = arg1
	W = i:lower()
	d = R.title or ""
	N = d:lower()
	d = R.menuTitle or ""
	o = d:lower()
	d = R.tabTitle or ""
	j = d:lower()
	K = j .. (" " .. (o .. (" " .. N)))
	l = 0
	if N==W then goto L15852212 end
::L6958632::
	if N:sub(1,#W)==W then goto L14323733 end
::L982425::
	if N:find(W,1,true) then goto L2192082 end
::L13382844::
	if o:find(W,1,true) then goto L7868411 end
::L5117582::
	if j:find(W,1,true) then goto L12425836 end
::L13630293::
	B = up1.SplitWords(W)
	if (#B)>1 then goto L13195833 end
::L4189990::
	if up1.fuzzyMatch(N,i) then goto L14829607 end
::L14580020::
	if up1.fuzzyMatch(K,i) then goto L15048865 end
::L15948607::
	return l
::L15048865::
	l = math.max(l, 35)
	goto L15948607
::L14829607::
	l = math.max(l, 45)
	goto L14580020
::L13195833::
	u = true
	A = 0
	M = {
		ipairs(B)
	}
	b = M[3]
	v = M[1]
	L = M[2]
::L11002140::
	b, z = v(L, b)
	if b then goto L3781759 end
::L6721675::
	if u then goto L11912980 end
::L3376720::
	goto L4189990
::L11912980::
	l = math.max(l, 100 + A)
	goto L3376720
::L3781759::
	if K:find(z,1,true) then goto L5663454 end
::L1665053::
	u = false
::L9772823::
	goto L11002140
::L5663454::
	A = A + 25
	goto L9772823
::L12425836::
	l = math.max(l, 70)
	goto L13630293
::L7868411::
	l = math.max(l, 90)
	goto L5117582
::L2192082::
	l = math.max(l, 120)
	goto L13382844
::L14323733::
	l = math.max(l, 160)
	goto L982425
::L15852212::
	return 200
end

function fn_9490443(arg1, arg2) -- entry L9490443, 4 blocks
::L9490443::
	R = {}
	W = 16
	N = 1
	o = 1 < 0
	i = 1 - 1
::L14359849::
	i = i + N
	if (o and (i>=W)) or ((not o) and (i<=W)) then goto L12040486 end
::L14631348::
	return unpack({table.concat(R)})
::L12040486::
	d = math.random(1, # up1)
	c = up1
	K = d
	d = c:sub(K, K)
	R[i] = d
	goto L14359849
end

function fn_9491825(arg1, arg2) -- entry L9491825, 5 blocks
::L9491825::
	c = up1
	W = "BackgroundColor3"
	K = c
	o = c
	R = up2
	j = up3
	if l then goto L14203178 end
::L13997402::
	N = j
	if j then goto L9028289 end
::L3673223::
	N = Color3.fromRGB(15, 10, 26)
::L9028289::
	c = o
	c:Tween(R, {
		[W] = N
	}, .18)
	return
::L14203178::
	j = Color3.fromRGB(24, 16, 42)
	goto L13997402
end

function fn_9609093(arg1, arg2) -- entry L9609093, 1 blocks
::L9609093::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .15
	}, .12)
	return
end

function fn_9637429(arg1) -- entry L9637429, 1 blocks
::L9637429::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .15
	}, .12)
	return
end

function fn_9644370(arg1) -- entry L9644370, 7 blocks
::L9644370::
	R = arg1
	if up1.on then goto L4221767 end
::L13473029::
	d = R.UserInputType ~= Enum.UserInputType.MouseButton1
	if i then goto L3401428 end
::L4348438::
	if d then goto L3547815 end
::L9895199::
	up1.on = true
	up1.input = R
	up1.moved = false
	i = R.Position
	up1.start = i
	up2.PinToggleToOffset()
	i = up3.Position
	up1.origin = i
	return
::L3547815::
	return
::L3401428::
	d = R.UserInputType ~= Enum.UserInputType.Touch
	goto L4348438
::L4221767::
	return
end

function fn_9674455(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) -- entry L9674455, 31 blocks
::L9674455::
	i = arg2
	W = O()
	j = O()
	f[W] = arg3
	N = O()
	f[N] = arg4
	o = O()
	K = O()
	l = O()
	f[o] = arg5
	f[j] = arg6
	f[K] = arg7
	f[l] = arg8
	c = not checkCondition(arg9)
	if c then goto L12063906 end
::L5630314::
	d = f[W] or 1
	f[W] = d
	x = c
	e = f[N]
	if B then goto L7141347 end
::L16444166::
	e = {}
::L7141347::
	f[N] = e
	c = x
	x = f[o]
	B = c
	if u then goto L11043196 end
::L6768600::
	x = closure(fn_4482496, {})
::L11043196::
	f[o] = x
	c = B
	if f[l] then goto L6394694 end
::L12402239::
	if f[l] then goto L14742744 end
::L10075628::
	v = O()
	A = O()
	b = closure(fn_1730543, {
		A
	})
	M = closure(fn_8380123, {
		A,
		N
	})
	f[A] = {}
	f[v] = {}
	u = O()
	L = closure(fn_5151574, {
		A
	})
	f[u] = L
	L = O()
	f[L] = b
	z = closure(fn_4159269, {})
	b = O()
	f[b] = M
	M = O()
	f[M] = z
	closure(fn_1885413, {
		N,
		u,
		K,
		W,
		A
	})()
	S = up4
	Fe = ThemeColor("Primary")
	Ze = UDim2.new(1, - 25, 0, 32)
	fe = up4
	E = {
		BackgroundColor3 = Fe,
		BackgroundTransparency = .4,
		BorderSizePixel = 0,
		Size = Ze,
		ClipsDescendants = true,
		Children = {
			unpack({
				fe("UICorner", {
					CornerRadius = UDim.new(0, 6)
				})
			})
		}
	}
	P = S("Frame", E, up5)
	S = up4
	Je = Color3
	ne[3] = 15
	Je = Je.fromRGB(192, 132, 252)
	y = S("UIStroke", {
		Color = Je,
		Transparency = 1,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}, P)
	S = O()
	f[S] = y
	ne[2] = "MakeTextConstraint"
	up6(P, i)
	y = up4
	me = UDim2.new(0, 12, 0, 0)
	ne[4] = 8
	Ze = UDim2.new(1, - 95, 1, 0)
	Ge = Enum.Font.GothamBold
	fe = Color3.fromRGB(220, 220, 230)
	Re = Enum.TextXAlignment.Left
	se = Enum.TextTruncate.AtEnd
	ne[1] = ENV[ne[2]]
	ne[8] = "Enum"
	ne[2] = {
		ne[1](ne[3], ne[4])
	}
	H = {
		BackgroundTransparency = 1,
		Position = me,
		Size = Ze,
		Font = Ge,
		TextColor3 = fe,
		TextXAlignment = Re,
		Text = i,
		TextWrapped = false,
		TextScaled = true,
		TextTruncate = se,
		ZIndex = 3,
		Children = {
			unpack(ne[2])
		}
	}
	ne[3] = 252
	ne[4] = "ApplyStrokeMode"
	E = y("TextLabel", H, P)
	ne[1] = 5
	y = up4
	Qe = Color3.fromRGB(12, 12, 18)
	de = UDim2.new(1, - 90, .5, - 11)
	Re = UDim2
	ne[2] = 132
	Re = Re.new(0, 68, 0, 22)
	Ne = up4
	he = Ne("UICorner", {
		CornerRadius = UDim.new(0, ne[1])
	})
	Ne = up4
	ne[1] = "Color3"
	ge = ENV[ne[1]]
	ne[1] = "fromRGB"
	qe = ge[ne[1]]
	ne[1] = 192
	ge = qe(ne[1], ne[2], ne[3])
	ne[7] = ENV[ne[8]]
	ne[2] = "Thickness"
	ne[3] = 1
	ne[1] = .75
	ne[8] = "ApplyStrokeMode"
	ne[6] = ne[7][ne[8]]
	ne[7] = "Border"
	ne[5] = ne[6][ne[7]]
	me = "Size"
	Y = y("Frame", {
		BackgroundColor3 = Qe,
		BackgroundTransparency = .15,
		BorderSizePixel = 0,
		Position = de,
		Size = Re,
		ZIndex = 3,
		Children = {
			he,
			unpack({
				Ne("UIStroke", {
					Color = ge,
					Transparency = ne[1],
					[ne[2]] = ne[3],
					[ne[4]] = ne[5]
				})
			})
		}
	}, P)
	ge = c
	y = up4
	Qe = 1
	Fe = "TextLabel"
	k = "BackgroundTransparency"
	Ze = UDim2.new(1, - 8, 1, 0)
	ce = "Position"
	Xe = UDim2.new(0, 6, 0, 0)
	Ge = "Font"
	de = Enum.Font.GothamBold
	fe = "TextColor3"
	Oe = Color3.fromRGB(192, 132, 252)
	We = "TextTruncate"
	Re = "TextScaled"
	ie = true
	Ne = Enum.TextTruncate.AtEnd
	he = "TextXAlignment"
	ae = c
	oe = Enum.TextXAlignment.Left
	se = "Text"
	ne[1] = f[K]
	qe = ne[1]
	if ne[1] then goto L3000364 end
::L12844187::
	Ce = qe
	c = ge
	if qe then goto L15171685 end
::L4473652::
	ne[5] = 1
	ne[2] = f[N]
	ne[4] = f[A]
	ne[3] = ne[4][ne[5]]
	ne[1] = ne[2][ne[3]]
	ne[2] = "None"
	Ce = ne[1] or ne[2]
::L15171685::
	c = ae
	ne[5] = 10
	ne[4] = 13
	ne[3] = "MakeTextConstraint"
	ne[2] = ENV[ne[3]]
	ne[3] = {
		ne[2](ne[4], ne[5])
	}
	ne[1] = {
		unpack(ne[3])
	}
	Je = {
		[k] = Qe,
		[me] = Ze,
		[ce] = Xe,
		[Ge] = de,
		[fe] = Oe,
		[Re] = ie,
		[We] = Ne,
		[he] = oe,
		[se] = Ce,
		ZIndex = 4,
		Children = ne[1]
	}
	ne[3] = "CornerRadius"
	ne[20] = "UDim"
	H = y(Fe, Je, Y)
	y = O()
	f[y] = H
	H = up4
	Ge = Vector2.new(1, .5)
	de = UDim2.new(1, - 8, .5, 0)
	ne[9] = 252
	Re = UDim2.new(0, 16, 0, 16)
	Fe = H("ImageButton", {
		BackgroundTransparency = 1,
		AnchorPoint = Ge,
		Position = de,
		Size = Re,
		Image = "rbxassetid://95968409641902",
		ImageColor3 = Color3.fromRGB(192, 132, 252),
		ZIndex = 3
	}, P)
	ne[13] = "UDim"
	H = O()
	f[H] = Fe
	Fe = up4
	ne[10] = "CornerRadius"
	Oe = Color3.fromRGB(0, 0, 0)
	We = UDim2.new(1, 0, 1, 0)
	ne[14] = 5
	Je = Fe("Frame", {
		Visible = false,
		Active = true,
		BackgroundTransparency = .6,
		BackgroundColor3 = Oe,
		Size = We,
		ZIndex = 9
	}, up7)
	ne[6] = "UDim"
	Fe = O()
	f[Fe] = Je
	Je = up4
	de = Vector2.new(.5, .5)
	Re = UDim2
	ne[8] = 132
	Re = Re.new(.5, 0, .5, 0)
	Ne = UDim2.new(0, 250, 0, 0)
	oe = Color3
	ne[1] = "UICorner"
	oe = oe.fromRGB(14, 14, 20)
	ne[7] = 10
	qe = up4
	ne[5] = ENV[ne[6]]
	ne[6] = "new"
	ne[4] = ne[5][ne[6]]
	ne[6] = 0
	ne[5] = ne[4](ne[6], ne[7])
	ne[7] = "Color3"
	ne[2] = {
		[ne[3]] = ne[5]
	}
	ne[4] = "Color"
	ge = qe(ne[1], ne[2])
	qe = up4
	ne[6] = ENV[ne[7]]
	ne[2] = "UIStroke"
	ne[7] = "fromRGB"
	ne[5] = ne[6][ne[7]]
	ne[7] = 192
	ne[6] = ne[5](ne[7], ne[8], ne[9])
	ne[9] = 1
	ne[7] = .72
	ne[8] = "Thickness"
	ne[5] = "Transparency"
	ne[28] = "Enum"
	ne[3] = {
		[ne[4]] = ne[6],
		[ne[5]] = ne[7],
		[ne[8]] = ne[9]
	}
	ne[1] = {
		qe(ne[2], ne[3])
	}
	me = {
		Visible = false,
		AnchorPoint = de,
		Position = Re,
		BackgroundTransparency = .18,
		Size = Ne,
		BackgroundColor3 = oe,
		ZIndex = 10,
		Children = {
			ge,
			unpack(ne[1])
		}
	}
	ce = up7
	ne[2] = "ZIndex"
	k = Je("Frame", me, ce)
	Je = O()
	ne[17] = "CornerRadius"
	f[Je] = k
	k = up4
	Xe = UDim2.new(1, - 40, 0, 20)
	ne[4] = "Children"
	fe = UDim2.new(0, 12, 0, 8)
	he = Enum
	ne[3] = 12
	ne[1] = "Enum"
	We = he.Font.GothamBold
	Ce = Color3.fromRGB(220, 220, 230)
	ge = ENV[ne[1]]
	ne[1] = "TextXAlignment"
	k("TextLabel", {
		Size = Xe,
		Position = fe,
		BackgroundTransparency = 1,
		Text = i,
		Font = We,
		TextSize = 13,
		TextColor3 = Ce,
		TextXAlignment = ge[ne[1]].Left,
		ZIndex = 11
	}, f[Je])
	k = up4
	fe = Color3.fromRGB(192, 132, 252)
	ne[8] = "UICorner"
	ne[1] = 252
	ie = Enum.Font.GothamBold
	he = UDim2.new(0, 22, 0, 22)
	ne[22] = 132
	se = UDim2.new(1, - 28, 0, 5)
	Ce = Color3.fromRGB
	ne[23] = 252
	ne[21] = 6
	ae = Ce(192, 132, ne[1])
	ne[6] = up4
	ne[1] = false
	ne[12] = ENV[ne[13]]
	ne[13] = "new"
	ne[11] = ne[12][ne[13]]
	ne[13] = 0
	ne[12] = ne[11](ne[13], ne[14])
	ne[9] = {
		[ne[10]] = ne[12]
	}
	ne[7] = {
		ne[6](ne[8], ne[9])
	}
	ne[5] = {
		unpack(ne[7])
	}
	ce = {
		Text = "\195\151",
		TextColor3 = fe,
		TextSize = 18,
		Font = ie,
		Size = he,
		Position = se,
		BackgroundColor3 = ae,
		BackgroundTransparency = .88,
		AutoButtonColor = ne[1],
		[ne[2]] = ne[3],
		[ne[4]] = ne[5]
	}
	ne[7] = 10
	Qe = k("TextButton", ce, f[Je])
	ne[4] = 230
	ne[11] = "Children"
	ne[8] = 16
	k = up4
	ne[1] = "Enum"
	ie = Color3
	ne[5] = "Enum"
	Oe = ie.fromRGB
	ne[15] = "UICorner"
	ie = Oe(120, 100, 150)
	We = UDim2.new
	ne[3] = 220
	ne[10] = 11
	ne[2] = "Color3"
	Ne = We(1, - 16, 0, 26)
	oe = UDim2
	ne[6] = "Color3"
	oe = oe.new(0, 8, 0, 34)
	ge = ENV[ne[1]]
	ne[1] = "Font"
	ae = ge[ne[1]].Gotham
	ne[1] = ENV[ne[2]]
	ne[2] = "fromRGB"
	ge = ne[1][ne[2]]
	ne[2] = 220
	ne[1] = ge(ne[2], ne[3], ne[4])
	ne[4] = ENV[ne[5]]
	ne[5] = "TextXAlignment"
	ne[9] = "ZIndex"
	ne[3] = ne[4][ne[5]]
	ne[4] = "Left"
	ne[2] = ne[3][ne[4]]
	ne[24] = "ApplyStrokeMode"
	ne[3] = "BackgroundColor3"
	ne[5] = ENV[ne[6]]
	ne[6] = "fromRGB"
	ne[4] = ne[5][ne[6]]
	ne[6] = 10
	ne[5] = ne[4](ne[6], ne[7], ne[8])
	ne[13] = up4
	ne[7] = "ClearTextOnFocus"
	ne[6] = .1
	ne[4] = "BackgroundTransparency"
	ne[8] = true
	ne[19] = ENV[ne[20]]
	ne[20] = "new"
	ne[18] = ne[19][ne[20]]
	ne[20] = 0
	ne[19] = ne[18](ne[20], ne[21])
	ne[16] = {
		[ne[17]] = ne[19]
	}
	ne[21] = "Color3"
	ne[18] = "Color"
	ne[14] = ne[13](ne[15], ne[16])
	ne[16] = "UIStroke"
	ne[13] = up4
	ne[20] = ENV[ne[21]]
	ne[21] = "fromRGB"
	ne[19] = ne[20][ne[21]]
	ne[21] = 192
	ne[20] = ne[19](ne[21], ne[22], ne[23])
	ne[27] = ENV[ne[28]]
	ne[28] = "ApplyStrokeMode"
	ne[22] = "Thickness"
	ne[23] = 1
	ne[21] = .78
	ne[26] = ne[27][ne[28]]
	ne[27] = "Border"
	ne[25] = ne[26][ne[27]]
	ne[19] = "Transparency"
	ne[17] = {
		[ne[18]] = ne[20],
		[ne[19]] = ne[21],
		[ne[22]] = ne[23],
		[ne[24]] = ne[25]
	}
	ne[15] = ne[13](ne[16], ne[17])
	ne[23] = 8
	ne[13] = up4
	ne[17] = "UIPadding"
	ne[19] = "PaddingLeft"
	ne[22] = "UDim"
	ne[21] = ENV[ne[22]]
	ne[22] = "new"
	ne[20] = ne[21][ne[22]]
	ne[22] = 0
	ne[21] = ne[20](ne[22], ne[23])
	ne[18] = {
		[ne[19]] = ne[21]
	}
	ne[16] = {
		ne[13](ne[17], ne[18])
	}
	ne[12] = {
		ne[14],
		ne[15],
		unpack(ne[16])
	}
	me = k("TextBox", {
		Text = "",
		PlaceholderText = "Search options...",
		PlaceholderColor3 = ie,
		Size = Ne,
		Position = oe,
		TextSize = 12,
		Font = ae,
		TextColor3 = ne[1],
		TextXAlignment = ne[2],
		[ne[3]] = ne[5],
		[ne[4]] = ne[6],
		[ne[7]] = ne[8],
		[ne[9]] = ne[10],
		[ne[11]] = ne[12]
	}, f[Je])
	k = O()
	ne[21] = 2
	ne[15] = "UDim"
	f[k] = me
	ne[18] = "Enum"
	ne[10] = "UIListLayout"
	me = up4
	ne[12] = "Padding"
	fe = UDim2.new(1, - 8, 1, - 70)
	ne[2] = "Enum"
	Oe = UDim2
	ne[19] = 2
	ne[4] = "ZIndex"
	ne[23] = 4
	ne[3] = true
	Oe = Oe.new(0, 4, 0, 66)
	ne[5] = 11
	We = UDim2.new(0, 0, 0, 0)
	Ce = Enum.AutomaticSize.Y
	ne[1] = ENV[ne[2]]
	ne[2] = "ElasticBehavior"
	ge = ne[1][ne[2]]
	ne[1] = "WhenScrollable"
	ne[6] = "Children"
	ne[16] = 4
	qe = ge[ne[1]]
	ne[22] = "UDim"
	ne[1] = 1
	ne[8] = up4
	ne[14] = ENV[ne[15]]
	ne[15] = "new"
	ne[13] = ne[14][ne[15]]
	ne[2] = "Active"
	ne[15] = 0
	ne[14] = ne[13](ne[15], ne[16])
	ne[20] = "UDim"
	ne[13] = "SortOrder"
	ne[17] = ENV[ne[18]]
	ne[18] = "SortOrder"
	ne[16] = ne[17][ne[18]]
	ne[17] = "LayoutOrder"
	ne[15] = ne[16][ne[17]]
	ne[11] = {
		[ne[12]] = ne[14],
		[ne[13]] = ne[15]
	}
	ne[9] = ne[8](ne[10], ne[11])
	ne[13] = "PaddingLeft"
	ne[11] = "UIPadding"
	ne[18] = "UDim"
	ne[16] = "UDim"
	ne[8] = up4
	ne[15] = ENV[ne[16]]
	ne[17] = 2
	ne[16] = "new"
	ne[14] = ne[15][ne[16]]
	ne[16] = 0
	ne[15] = ne[14](ne[16], ne[17])
	ne[14] = "PaddingRight"
	ne[17] = ENV[ne[18]]
	ne[18] = "new"
	ne[16] = ne[17][ne[18]]
	ne[18] = 0
	ne[17] = ne[16](ne[18], ne[19])
	ne[16] = "PaddingTop"
	ne[19] = ENV[ne[20]]
	ne[20] = "new"
	ne[18] = ne[19][ne[20]]
	ne[20] = 0
	ne[19] = ne[18](ne[20], ne[21])
	ne[18] = "PaddingBottom"
	ne[21] = ENV[ne[22]]
	ne[22] = "new"
	ne[20] = ne[21][ne[22]]
	ne[22] = 0
	ne[21] = ne[20](ne[22], ne[23])
	ne[12] = {
		[ne[13]] = ne[15],
		[ne[14]] = ne[17],
		[ne[16]] = ne[19],
		[ne[18]] = ne[21]
	}
	ne[10] = {
		ne[8](ne[11], ne[12])
	}
	ne[7] = {
		ne[9],
		unpack(ne[10])
	}
	ce = me("ScrollingFrame", {
		Size = fe,
		Position = Oe,
		CanvasSize = We,
		ScrollBarThickness = 0,
		ScrollBarImageTransparency = 1,
		AutomaticCanvasSize = Ce,
		ElasticBehavior = qe,
		BackgroundTransparency = ne[1],
		[ne[2]] = ne[3],
		[ne[4]] = ne[5],
		[ne[6]] = ne[7]
	}, f[Je])
	me = O()
	f[me] = ce
	Ze = UDim2.new(0, 250, 0, 230)
	ce = O()
	f[ce] = Ze
	Ge = closure(fn_31869, {})
	Ze = O()
	Xe = closure(fn_15308841, {
		Ze,
		H,
		up7,
		up8,
		Je,
		S,
		Fe
	})
	f[Ze] = Ge
	Ge = O()
	de = closure(fn_2449627, {
		me,
		v,
		N,
		A,
		up4,
		K,
		up8,
		up9,
		L,
		u,
		b,
		y,
		M,
		l,
		j,
		up3,
		up2,
		o,
		Ge
	})
	f[Ge] = Xe
	Xe = O()
	f[Xe] = de
	fe = f[k]
	Ne = c
	de = closure(fn_1941357, {
		k,
		Xe,
		Ze,
		H,
		up7,
		Je,
		Fe,
		up8,
		ce,
		S
	})
	ie = c
	Re = fe:GetPropertyChangedSignal("Text")
	Oe = closure(fn_8743671, {
		Xe,
		k
	})
	Re:Connect(Oe)
	fe = f[H].MouseButton1Click
	fe:Connect(de)
	fe = Qe.MouseButton1Click
	fe:Connect(f[Ge])
	fe = f[Fe].InputBegan
	Re = fe.Connect
	Re(fe, closure(fn_13809089, {
		Ge
	}))
	fe = f[o]
	We = f[K]
	if he then goto L10534596 end
::L12364978::
	c = Ne
	Oe = We
	if We then goto L5608548 end
::L2141906::
	Oe = f[N][f[A][1]] or "None"
::L5608548::
	fe(Oe)
	Re = ie
	fe = f[j]
	if Oe then goto L257204 end
::L15192147::
	if fe then goto L8167580 end
::L4202895::
	if f[l] then goto L12711826 end
::L9631081::
	RegisterKeyLocked(P, f[j])
	fe = RegisterTranslatable
	closure(fn_3233106, {
		me,
		A,
		v,
		y,
		o,
		K
	})
	closure(fn_3735338, {
		N,
		b,
		A,
		u,
		K,
		y,
		M,
		Xe,
		k
	})
	fe(E, i)
	return {["Clear"]=Oe,["Refresh"]=We}
::L12711826::
	Ce = closure(fn_8062828, {
		K,
		A,
		N,
		u,
		y,
		M,
		b,
		o
	})
	fe = up2
	Oe = f[l]
	qe = closure(fn_1471334, {
		K,
		b,
		N,
		A
	})
	fe:RegisterControl(Oe, {
		Type = "Dropdown",
		Default = f[W],
		Set = Ce,
		Get = qe
	})
	goto L9631081
::L8167580::
	oe = closure(fn_4701376, {
		A,
		N,
		u,
		up3,
		up2,
		l,
		K,
		y,
		M,
		b,
		o,
		W
	})
	table.insert(up10, {
		saveKey = f[l],
		UpdateFn = oe
	})
	goto L4202895
::L257204::
	fe = f[l]
	goto L15192147
::L10534596::
	We = f[b]()
	goto L12364978
::L3000364::
	ne[1] = f[M]
	ne[3] = f[b]
	ne[4] = ne[3]()
	ne[3] = 2
	ne[2] = ne[1](ne[4], ne[3])
	qe = ne[2]
	goto L12844187
::L14742744::
	u = c
	B = not f[j]
	if A then goto L2576700 end
::L16000692::
	B = up3.HasKeyAccess()
::L2576700::
	c = u
	if B then goto L1850199 end
::L14386106::
	goto L10075628
::L1850199::
	B = up2
	u = B:Get(f[l], nil)
	if u~=nil then goto L12819003 end
::L13991408::
	goto L14386106
::L12819003::
	f[W] = u
	goto L13991408
::L6394694::
	B = up2
	B:RegisterKey(f[l])
	goto L12402239
::L12063906::
	return up1
end

function fn_9813407(arg1, arg2, arg3) -- entry L9813407, 4 blocks
::L9813407::
	N = {
		ipairs(up1)
	}
	R = N[2]
	i = N[3]
	W = N[1]
::L1107099::
	i, o = W(R, i)
	if i then goto L15397954 end
::L4430739::
	return
::L15397954::
	pcall(o)
	goto L1107099
end

function fn_9839019(arg1) -- entry L9839019, 3 blocks
::L9839019::
	if up1 then goto L16235254 end
::L7047634::
	return
::L16235254::
	c = up1
	c:Destroy()
	goto L7047634
end

function fn_9849170(arg1) -- entry L9849170, 3 blocks
::L9849170::
	i = math.min(arg1, up1)
	if i==0 then goto L13320284 end
::L10086080::
	return (up2+(i*up3))+((i-1)*up4)
::L13320284::
	return 0
end

function fn_9879197() -- entry L9879197, 1 blocks
::L9879197::
	up1 = true
	return
end

function fn_9884679(arg1, arg2) -- entry L9884679, 1 blocks
::L9884679::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .84
	}, .2)
	return
end

function fn_9899092(arg1, arg2, arg3) -- entry L9899092, 1 blocks
::L9899092::
	d = up1
	i = up2
	W = up3
	N = Enum.Font.FredokaOne
	R = d.GetTextSize
	R = R(d, i, W, N, unpack({
		Vector2.new(4096, 24)
	})).X
	c = up4
	W = UDim2.new(0, ((up5 + up6) + up7) + R, 0, 24)
	c.Size = W
	return
end

function fn_9929657() -- entry L9929657, 1 blocks
::L9929657::
	c = up1
	c:Destroy()
	return
end

function fn_9994705(arg1, arg2, arg3, arg4) -- entry L9994705, 1 blocks
::L9994705::
	UDim2.new(1, 0, 0, 13)
	Color3.fromRGB(140, 105, 200)
	return unpack({c("TextLabel",{["BackgroundTransparency"]=1,["Size"]=T,["LayoutOrder"]=arg2;["Font"]=e,["Text"]=arg1;["TextColor3"]=A,["TextSize"]=9,["TextXAlignment"]=Enum.TextXAlignment.Left,["ZIndex"]=24},up2)})
end

function fn_10068962(arg1) -- entry L10068962, 1 blocks
::L10068962::
	DebouncedFitScrollCanvas(up1, up2, "X", 4)
	return
end

function fn_10172906(arg1, arg2) -- entry L10172906, 1 blocks
::L10172906::
	c = up1
	R = up2
	i = {
		BackgroundColor3 = Color3.new(up3 * .28, up4 * .28, up5 * .28)
	}
	c:Tween(R, i, .12, Enum.EasingStyle.Quint)
	c = up1
	c:Tween(up6, {
		Transparency = .15
	}, .12)
	return
end

function fn_10232381(arg1, arg2, arg3) -- entry L10232381, 24 blocks
::L10232381::
	R = arg1
	c = {}
	d = isfolder
	W = c
	i = c
	if N then goto L10004195 end
::L5504092::
	if not d then goto L919385 end
::L1939717::
	o = {
		pcall(listfiles, R)
	}
	W = o[2]
	d = not o[1]
	if o then goto L10799105 end
::L2318789::
	d = not W
::L10799105::
	if d then goto L8344051 end
::L8542275::
	K = {
		ipairs(W)
	}
	o = K[2]
	j = K[3]
	K = K[1]
::L3206919::
	j, T = K(o, j)
	if j then goto L6453016 end
::L14278084::
	table.sort(i)
	return i
::L6453016::
	c = string.lower
	t = c(T)
	e = t:find("%.png")
	if x then goto L2910375 end
::L13459356::
	B = c
	x = t:find("%.jpe?g")
	if u then goto L4410140 end
::L5349474::
	A = c
	u = t:find("%.webp")
	if v then goto L14169429 end
::L1215348::
	L = c
	v = t:find("%.gif")
	if b then goto L12188548 end
::L9165311::
	v = t:find("%.bmp")
::L12188548::
	u = v
::L14169429::
	x = u
::L4410140::
	e = x
::L2910375::
	if e then goto L14954736 end
::L14176863::
	goto L3206919
::L14954736::
	table.insert(i, T)
	goto L14176863
::L8344051::
	return i
::L919385::
	return i
::L10004195::
	N = listfiles
	o = c
	if j then goto L8300210 end
::L2086216::
	d = N
	goto L5504092
::L8300210::
	N = isfolder(R)
	goto L2086216
end

function fn_10243567(arg1, arg2, arg3) -- entry L10243567, 3 blocks
::L10243567::
	R = arg1
	if R==up1 then goto L14536923 end
::L113866::
	return
::L14536923::
	up2(R)
	goto L113866
end

function fn_10284601(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L10284601, 9 blocks
::L10284601::
	i = arg2
	K = c
	o = c
	R = arg1
	W = arg3
	j = W
	if W then goto L13752869 end
::L13610659::
	N = j
	if j then goto L16725043 end
::L16369867::
	c = o
	W = N or 1
	K = c
	o = c
	j = i
	if i then goto L5773253 end
::L12451305::
	N = j
	if j then goto L15923299 end
::L6374247::
	N = Vector2.zero
::L15923299::
	o = R.AbsolutePosition
	l = UDim2.fromOffset((o.X - N.X) / W, (o.Y - N.Y) / W)
	R.Position = l
	return R.Position
::L5773253::
	j = i.AbsolutePosition
	goto L12451305
::L16725043::
	N = W
	goto L16369867
::L13752869::
	j = W ~= 0
	goto L13610659
end

function fn_10312579(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L10312579, 7 blocks
::L10312579::
	i = O()
	f[i] = arg2
	if not checkCondition(arg3) then goto L7010307 end
::L7447256::
	c = up2
	o = {
		Name = "Section",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(.48, 0, 0, 20),
		ClipsDescendants = false
	}
	d = c("Frame", o, up3)
	N = O()
	f[N] = d
	c = up2
	e = Color3.fromRGB(25, 25, 25)
	L = UDim2.new(0, 5, 0, 0)
	M = UDim2.new(1, - 5, 0, 25)
	S = up2
	j = {
		Name = "InnerSection",
		BackgroundColor3 = e,
		BackgroundTransparency = .3,
		BorderSizePixel = 0,
		Position = L,
		Size = M,
		Children = {
			unpack({
				S("UICorner", {
					CornerRadius = UDim.new(0, 6)
				})
			})
		}
	}
	d = c("Frame", j, f[N])
	o = O()
	f[o] = d
	c = up2
	T = Enum.HorizontalAlignment.Center
	e = Enum.SortOrder.LayoutOrder
	K = {
		HorizontalAlignment = T,
		SortOrder = e,
		Padding = UDim.new(0, 3)
	}
	d = c("UIListLayout", K, f[o])
	j = O()
	f[j] = d
	c = up2
	B = UDim2.new(1, 0, 0, 22)
	A = up2
	Y = UDim2.new(.6, 0, 1, 0)
	Fe = UDim2.new(.2, 0, 0, 0)
	Je = Enum.Font.FredokaOne
	Qe = f[i]
	Ze = Color3.fromRGB(255, 255, 255)
	l = {
		BackgroundTransparency = 1,
		Size = B,
		Children = {
			unpack({
				A("TextLabel", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = Y,
					Position = Fe,
					Font = Je,
					Text = Qe,
					TextColor3 = Ze,
					TextSize = 15,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Center,
					ZIndex = 3
				})
			})
		}
	}
	K = c("Frame", l, f[o])
	c = up2
	d = c("UIGradient", {
		Color = ThemeColor("Lit"),
		Rotation = 60
	})
	c = up2
	l = d
	T = c("UIGradient", {
		Color = ThemeColor("Lit"),
		Rotation = 60
	})
	t = "Frame"
	RegisterLitGradient(l)
	RegisterLitGradient(T)
	x = "BackgroundColor3"
	u = up2
	B = ThemeColor("Accent")
	if v then goto L16521811 end
::L723080::
	B = Color3.fromRGB(150, 100, 255)
::L16521811::
	b = UDim2.new(.2, 0, 0, 10)
	z = UDim2.new(0, 0, .5, - 1)
	E = up2
	e = {
		[x] = B,
		BorderSizePixel = 0,
		Size = b,
		Position = z,
		ZIndex = 2,
		Children = {
			E("UICorner", {
				CornerRadius = UDim.new(.5)
			}),
			l
		}
	}
	B = "BackgroundColor3"
	d = u(t, e, K)
	A = up2
	e = "Frame"
	t = d
	u = ThemeColor("Accent")
	if L then goto L16693046 end
::L5581699::
	u = Color3.fromRGB(150, 100, 255)
::L16693046::
	M = UDim2.new(.2, 0, 0, 10)
	S = UDim2.new(.8, 0, .5, - 1)
	Y = up2
	e = A(e, {
		[B] = u,
		BorderSizePixel = 0,
		Size = M,
		Position = S,
		ZIndex = 2,
		Children = {
			Y("UICorner", {
				CornerRadius = UDim.new(.5)
			}),
			T
		}
	}, K)
	RegisterThemeElement(t, "BackgroundColor3", "Accent")
	RegisterThemeElement(e, "BackgroundColor3", "Accent")
	x = closure(fn_4818711, {
		j,
		N,
		o
	})
	RegisterLayoutRefresh(x)
	c = f[j]
	d = c:GetPropertyChangedSignal("AbsoluteContentSize")
	B = O()
	d:Connect(x)
	x()
	c = closure(fn_494216, {
		up4,
		up5,
		up3,
		N,
		up6,
		i,
		up7,
		up8,
		up9,
		up10,
		up2,
		up11
	})
	f[B] = c
	u = {}
	c = closure(fn_64016, {
		up1,
		up2,
		o,
		B,
		up11,
		up12
	})
	u.addButton = c
	c = closure(fn_2502920, {
		up1,
		up10,
		up13,
		up14,
		up2,
		o,
		B,
		up11,
		up12,
		up15
	})
	u.addToggle = c
	c = closure(fn_5830455, {
		up1,
		up10,
		up13,
		up2,
		o,
		B,
		up11,
		up16,
		up15
	})
	u.addSlider = c
	c = closure(fn_9674455, {
		up1,
		up10,
		up13,
		up2,
		o,
		B,
		up17,
		up11,
		up12,
		up15
	})
	u.addDropdown = c
	c = closure(fn_1928515, {
		up1,
		up10,
		up2,
		o,
		B,
		up11,
		up12
	})
	u.addTextbox = c
	c = closure(fn_15540229, {
		up2,
		o
	})
	u.addLabel = c
	c = closure(fn_12499070, {
		up2,
		o,
		B,
		up12,
		up9,
		up11
	})
	u.addButtonGrid = c
	d = u.addButton
	u.AddButton = d
	d = u.addToggle
	u.AddToggle = d
	d = u.addSlider
	u.AddSlider = d
	d = u.addDropdown
	u.AddDropdown = d
	d = u.addTextbox
	u.AddTextBox = d
	d = u.addTextbox
	u.AddTextbox = d
	d = u.addLabel
	u.AddLabel = d
	d = u.addKeybind
	u.AddKeybind = d
	d = u.addLine
	u.AddLine = d
	d = u.addParagraph
	u.AddParagraph = d
	d = u.addButtonGrid
	u.AddButtonGrid = d
	return u
::L7010307::
	return up1
end

function fn_10372935(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L10372935, 3 blocks
::L10372935::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .4
	}, .2)
	if arg1 then goto L7302717 end
::L1136333::
	c = task.delay
	c(.25, closure(fn_910904, {
		up4,
		up5
	}))
	return
::L7302717::
	up3.SaveSearchToHistory(up4.Text)
	goto L1136333
end

function fn_10430957(arg1, arg2, arg3) -- entry L10430957, 3 blocks
::L10430957::
	if up1 then goto L8851243 end
::L1625219::
	return
::L8851243::
	up2.NavigateToSearchEntry(up1)
	goto L1625219
end

function fn_10435628(arg1, arg2, arg3) -- entry L10435628, 1 blocks
::L10435628::
	return up1
end

function fn_10502918(arg1, arg2, arg3, arg4) -- entry L10502918, 34 blocks
::L10502918::
	N = {
		ipairs(up1)
	}
	R = N[2]
	W = N[1]
	i = N[3]
::L11113845::
	i, o = W(R, i)
	if i then goto L11158238 end
::L9947894::
	if not up2 then goto L6310136 end
::L9903482::
	if up5.Refresh then goto L12051910 end
::L11823057::
	W = closure(fn_714964, {
		up5
	})
	task.delay(1.5, W)
	return
::L12051910::
	up5.Refresh()
	goto L11823057
::L6310136::
	c = ipairs
	o = {
		c(up3)
	}
	i = o[2]
	W = o[3]
	R = o[1]
::L980234::
	W, o = R(i, W)
	if W then goto L16450436 end
::L11497227::
	goto L9903482
::L16450436::
	K = o.tabButton
	if l then goto L7863876 end
::L3713835::
	if K then goto L15251689 end
::L3182592::
	goto L980234
::L15251689::
	K = {}
	c = ipairs
	e = o.scrollFrame
	e = {
		c(unpack({
			e:GetChildren()
		}))
	}
	t = e[3]
	l = e[1]
	T = e[2]
::L15559405::
	t, x = l(T, t)
	if t then goto L5804645 end
::L14035181::
	l = K[2]
	if T then goto L4283084 end
::L7830967::
	l = K[1]
::L4283084::
	if l then goto L4778682 end
::L7015799::
	goto L11497227
::L4778682::
	c = up4
	b = UDim2.new(1, - 10, 0, 0)
	M = Enum.AutomaticSize.Y
	P = up4
	Fe = Enum.SortOrder.LayoutOrder
	T = c("Frame", {
		Name = "FavHost",
		BackgroundTransparency = 1,
		Size = b,
		AutomaticSize = M,
		Children = {
			unpack({
				P("UIListLayout", {
					SortOrder = Fe,
					Padding = UDim.new(0, 4)
				})
			})
		}
	}, l)
	up2 = T
	goto L7015799
::L5804645::
	if x.Name=="SectionScroll" then goto L763802 end
::L14997946::
	goto L15559405
::L763802::
	table.insert(K, x)
	goto L14997946
::L7863876::
	T = c
	l = o.tabButton.Text == "Main"
	if t then goto L6832425 end
::L15092134::
	c = T
	K = l
	goto L3713835
::L6832425::
	l = o.scrollFrame
	goto L15092134
::L11158238::
	j = o.tabTitle == "Main"
	if K then goto L3510404 end
::L4958390::
	if j then goto L4729461 end
::L10417947::
	goto L11113845
::L4729461::
	j = o.sectionFrame
	if K then goto L1409931 end
::L5681634::
	up2 = j
	if up2 then goto L1558102 end
::L11546797::
	goto L10417947
::L1558102::
	goto L9947894
::L1409931::
	K = o.sectionFrame
	j = K:FindFirstChild("InnerSection")
	goto L5681634
::L3510404::
	j = o.menuTitle == "Favorites / Pinned"
	goto L4958390
end

function fn_10668172(arg1, arg2) -- entry L10668172, 1 blocks
::L10668172::
	up1.Text = arg2 or ""
	return
end

function fn_10675444(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L10675444, 6 blocks
::L10675444::
	o = {
		ipairs(up1)
	}
	R = arg1
	i = o[2]
	W = o[3]
	N = o[1]
::L12087261::
	W, j = N(i, W)
	if W then goto L16400827 end
::L13828643::
	return up1[1]
::L16400827::
	if j.Name==R then goto L279505 end
::L9777205::
	goto L12087261
::L279505::
	return j
end

function fn_10716513(arg1, arg2, arg3, arg4) -- entry L10716513, 1 blocks
::L10716513::
	c = up1
	c:Pause()
	return
end

function fn_10728592(arg1, arg2, arg3) -- entry L10728592, 7 blocks
::L10728592::
	R = arg1
	if up1~=nil then goto L15721423 end
::L11379672::
	d = R.UserInputType == Enum.UserInputType.MouseButton1
	if i then goto L12445064 end
::L14508251::
	d = R.UserInputType == Enum.UserInputType.Touch
::L12445064::
	if d then goto L15738991 end
::L12954705::
	return
::L15738991::
	up1 = R
	d = R.Position
	up2 = d
	i = up3.Position
	up4 = i
	goto L12954705
::L15721423::
	return
end

function fn_10745841(arg1, arg2) -- entry L10745841, 1 blocks
::L10745841::
	c = up1
	R = up2
	i = {
		BackgroundColor3 = Color3.fromRGB(30, 18, 52)
	}
	c:Tween(R, i, .15, Enum.EasingStyle.Quint)
	return
end

function fn_10751902(arg1, arg2, arg3, arg4) -- entry L10751902, 3 blocks
::L10751902::
	CircleClick(up1, up2.X, up2.Y)
	up3.Text = ""
	if up4 then goto L8668425 end
::L814490::
	c = up3
	c:CaptureFocus()
	return
::L8668425::
	c = up5
	c:ElementSave(up4, "")
	goto L814490
end

function fn_10795303(arg1) -- entry L10795303, 3 blocks
::L10795303::
	if arg1==up1 then goto L2153282 end
::L7999171::
	return
::L2153282::
	up1 = nil
	goto L7999171
end

function fn_10806006(arg1, arg2, arg3, arg4) -- entry L10806006, 24 blocks
::L10806006::
	R = arg1
	if not next(R._Keys) then goto L47442 end
::L2955262::
	i = false
	j = {
		pairs(R.Settings)
	}
	N = j[3]
	o = j[1]
	W = j[2]
::L15534773::
	N = o(W, N)
	if N then goto L1005917 end
::L10584431::
	W = R:Get("_saveSlots", {})
	N = false
	T = {
		ipairs(W)
	}
	j = T[1]
	K = T[2]
	l = T[3]
::L223188::
	l, T = j(K, l)
	if l then goto L14735435 end
::L4603355::
	if i then goto L12184067 end
::L977511::
	if N then goto L2365830 end
::L9035344::
	return
::L2365830::
	R:Save("_saveSlots", W)
	goto L9035344
::L12184067::
	R:Save()
	goto L977511
::L14735435::
	if T.data then goto L10001291 end
::L4435335::
	goto L223188
::L10001291::
	A = {
		pairs(T.data)
	}
	x = A[2]
	e = A[1]
	B = A[3]
::L3875676::
	B = e(x, B)
	if B then goto L9591674 end
::L7724149::
	goto L4435335
::L9591674::
	t = B
	if not R._Keys[t] then goto L10891317 end
::L15836189::
	goto L3875676
::L10891317::
	T.data[t] = nil
	N = true
	goto L15836189
::L1005917::
	j = N
	K = j:sub(1, 1) ~= "_"
	if l then goto L3112494 end
::L2675340::
	if K then goto L4702378 end
::L12475029::
	goto L15534773
::L4702378::
	R.Settings[j] = nil
	i = true
	goto L12475029
::L3112494::
	K = not R._Keys[j]
	goto L2675340
::L47442::
	return
end

function fn_10811909(arg1, arg2) -- entry L10811909, 3 blocks
::L10811909::
	if up1~=up2 then goto L8202973 end
::L11360443::
	return
::L8202973::
	c = up3
	R = up4
	i = {
		BackgroundColor3 = Color3.fromRGB(14, 10, 22)
	}
	c:Tween(R, i, .2, Enum.EasingStyle.Quint)
	c = up3
	c:Tween(up5, {
		Transparency = .78
	}, .2)
	goto L11360443
end

function fn_10840193(arg1, arg2, arg3, arg4, arg5) -- entry L10840193, 1 blocks
::L10840193::
	R = O()
	i = O()
	f[R] = arg1
	W = O()
	f[i] = arg2
	f[W] = arg3
	c = task.spawn
	N = closure(fn_7855657, {
		R,
		i,
		W,
		up1,
		up2
	})
	h(R)
	c(N)
	h(W)
	h(i)
	return
end

function fn_10854233(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L10854233, 3 blocks
::L10854233::
	i = arg2
	c = i
	up1 = c
	up2.Text = i or ""
	d = i
	W = c
	if i then goto L241544 end
::L14256060::
	W = d
	up3.Visible = W
	up2.Visible = W
	return
::L241544::
	d = i ~= ""
	goto L14256060
end

function fn_10884445(arg1, arg2) -- entry L10884445, 1 blocks
::L10884445::
	c = up1
	c:DestroyGui()
	return
end

function fn_10906503(arg1, arg2) -- entry L10906503, 5 blocks
::L10906503::
	up1.Play(up2, up3, .15, Enum.EasingStyle.Quint)
	d = up4
	if R then goto L10236929 end
::L6404855::
	if d then goto L7685041 end
::L11963169::
	return
::L7685041::
	up1.Play(up4, up5, .15)
	goto L11963169
::L10236929::
	d = up5
	goto L6404855
end

function fn_10943683(arg1, arg2, arg3, arg4) -- entry L10943683, 3 blocks
::L10943683::
	if up1==up2 then goto L10399007 end
::L13233842::
	CircleClick(up3, up4.X, up4.Y)
	c = up2
	up1 = c
	ApplyTheme(up2)
	up5.BuildThemeCards()
	d = up6.Notification
	d:Notify({
		Title = "Theme Manager",
		Description = up2 .. " theme applied."
	}, {
		Time = 2
	})
	return
::L10399007::
	return
end

function fn_10966201(arg1, arg2) -- entry L10966201, 7 blocks
::L10966201::
	if up1.HasKeyAccess() then goto L15773188 end
::L2170156::
	return
::L15773188::
	c = up2
	W = c
	R = c:Get(up3, nil)
	i = R ~= nil
	if N then goto L6952961 end
::L1584851::
	d = i
	if i then goto L11954977 end
::L4077339::
	d = up4
::L11954977::
	up5 = d
	up6()
	goto L2170156
::L6952961::
	i = R
	goto L1584851
end

function fn_10975621(arg1, arg2) -- entry L10975621, 1 blocks
::L10975621::
	error("You Are Lost!")
	return
end

function fn_11011879(arg1, arg2, arg3, arg4) -- entry L11011879, 1 blocks
::L11011879::
	return "zhm45"/(11457791-("U7"^9848343))
end

function fn_11210831(arg1, arg2, arg3, arg4) -- entry L11210831, 1 blocks
::L11210831::
	d = game
	d:GetService("MarketplaceService")
	return R:GetProductInfo(game.PlaceId).Name
end

function fn_11270311(arg1, arg2) -- entry L11270311, 5 blocks
::L11270311::
	if up1 then goto L5052319 end
::L4551029::
	if up2 then goto L7080444 end
::L11665786::
	up3.SetSubtitleTier()
	return
::L7080444::
	RefreshKeyLock()
	goto L11665786
::L5052319::
	d = LoadKeyValid()
	up2 = d
	goto L4551029
end

function fn_11295075() -- entry L11295075, 7 blocks
::L11295075::
	c = up1
	R = c:Get("_opt_UIFont", "Default")
	d = R
	if R then goto L9247490 end
::L7655072::
	if d then goto L2412491 end
::L11118165::
	return
::L2412491::
	up2.ApplyUIFont(R)
	goto L11118165
::L9247490::
	W = c
	i = R ~= "Default"
	if N then goto L2500141 end
::L10927510::
	d = i
	goto L7655072
::L2500141::
	i = R ~= "Gotham"
	goto L10927510
end

function fn_11309479(arg1, arg2, arg3) -- entry L11309479, 5 blocks
::L11309479::
	if not up1 then goto L684109 end
::L2657593::
	return
::L684109::
	up2.Play(up3, {
		BackgroundColor3 = up4.DefaultBg
	}, .15, Enum.EasingStyle.Quint)
	if up5 then goto L11328609 end
::L14702994::
	goto L2657593
::L11328609::
	up2.Play(up5, {
		Transparency = .8
	}, .15)
	goto L14702994
end

function fn_11338031(arg1, arg2, arg3) -- entry L11338031, 7 blocks
::L11338031::
	R = arg1
	d = R.UserInputType == Enum.UserInputType.Touch
	if i then goto L10234663 end
::L14016612::
	d = R.UserInputType == Enum.UserInputType.MouseButton1
::L10234663::
	if d then goto L15599512 end
::L4418505::
	return
::L15599512::
	if (R.Position.Y-up1.AbsolutePosition.Y)>=28 then goto L5630125 end
::L5849374::
	goto L4418505
::L5630125::
	up2(R)
	goto L5849374
end

function fn_11352211(arg1, arg2, arg3) -- entry L11352211, 1 blocks
::L11352211::
	return unpack({JsonEncode(up1)})
end

function fn_11404242(arg1, arg2, arg3, arg4, arg5) -- entry L11404242, 7 blocks
::L11404242::
	W = arg3
	d = arg2
	N = arg4
	R = arg1
	if i then goto L12569067 end
::L6060585::
	d = Enum.Font.Gotham
::L12569067::
	i = d
	W = W or 11
	N = N or 150
	l = c
	K = typeof(R) ~= "string"
	if T then goto L6563352 end
::L5464166::
	K = R == ""
::L6563352::
	if K then goto L1981716 end
::L14886366::
	up1.TextHeight(R, i, W, N)
	return R, unpack({math.max(l,14)})
::L1981716::
	return "", 0
end

function fn_11590691(arg1, arg2, arg3, arg4) -- entry L11590691, 4 blocks
::L11590691::
	R = tonumber(up1.Text)
	if R then goto L5990851 end
::L7838331::
	up2(up6)
::L9110768::
	return
::L5990851::
	c = up2
	i = up3
	c(unpack({
		i(unpack({
			math.clamp(R, up4, up5)
		}))
	}))
	goto L9110768
end

function fn_11639074(arg1, arg2, arg3) -- entry L11639074, 7 blocks
::L11639074::
	if not up1 then goto L2441949 end
::L4246138::
	c = up2
	R = c:Get("_saveSlots", {})
	i = R[up1]
	if i then goto L5916751 end
::L11452285::
	return
::L5916751::
	d = "Visible"
	N = up3
	W = up4.Text ~= i.name
	if o then goto L10347630 end
::L3664409::
	N[d] = W
	goto L11452285
::L10347630::
	W = up4.Text ~= ""
	goto L3664409
::L2441949::
	return
end

function fn_11644986(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L11644986, 7 blocks
::L11644986::
	R = arg1
	i = (R - up1) / (up2 - up1)
	c = up3
	N = UDim2.new(i, 0, 1, 0)
	c:TweenSize(N, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .15, true)
	c = up4
	W = up5
	N = {
		Position = UDim2.new(i, 0, .5, 0)
	}
	c:Tween(W, N, .15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	c = up6
	N = string.format(up7, R)
	c.Text = N
	d = up8
	if W then goto L5841334 end
::L8639909::
	if d then goto L10490250 end
::L3073879::
	up12(R)
	return
::L10490250::
	c = up11
	c:ElementSave(up8, R)
	goto L3073879
::L5841334::
	N = c
	W = not up9
	if o then goto L6740801 end
::L5058061::
	W = up10.HasKeyAccess()
::L6740801::
	d = W
	goto L8639909
end

function fn_11676521() -- entry L11676521, 17 blocks
::L11676521::
	if not up1 then goto L14684838 end
::L12352541::
	c = up2
	R = c:Get("_saveSlots", {})
	i = R[up1]
	if not i then goto L6396927 end
::L15832321::
	c = i.name
	o = c
	W = c
	N = up3.Text ~= ""
	if j then goto L13884347 end
::L4468947::
	d = N
	if N then goto L10894355 end
::L9624195::
	d = W
::L10894355::
	N = d
	R[up1].name = N
	if d:Get("_autoLoadTarget",nil)==W then goto L16216972 end
::L4782342::
	if up2.ActiveProfile==W then goto L2126448 end
::L9592258::
	c = up2
	c:Save("_saveSlots", R)
	up5.Visible = false
	c = up6
	o = c:FindFirstChild("BackLabel")
	if o then goto L14627856 end
::L1508629::
	c = up7.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "Renamed to \"" .. (N .. "\".")
	}, {
		Time = 2
	})
	RefreshSlots()
	return
::L14627856::
	o.Text = N
	goto L1508629
::L2126448::
	up2.ActiveProfile = N
	if up4 then goto L5100896 end
::L9325158::
	goto L9592258
::L5100896::
	c = up4
	j = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", N)
	c.Text = j
	goto L9325158
::L16216972::
	c = up2
	c:Save("_autoLoadTarget", N)
	goto L4782342
::L13884347::
	N = up3.Text
	goto L4468947
::L6396927::
	return
::L14684838::
	return
end

function fn_11680866(arg1, arg2) -- entry L11680866, 1 blocks
::L11680866::
	CircleClick(up1, up2.X, up2.Y)
	c = up3
	c:ResetToDefaults(true)
	c = up4.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "All controls have been reset to default values."
	}, {
		Time = 3
	})
	return
end

function fn_11693169(arg1, arg2, arg3, arg4) -- entry L11693169, 1 blocks
::L11693169::
	table.insert(up1, arg1)
	return
end

function fn_11710107(arg1, arg2, arg3, arg4) -- entry L11710107, 5 blocks
::L11710107::
	R = arg1
	d = R._CurrentGui
	if i then goto L16061280 end
::L9539726::
	if d then goto L3934187 end
::L16270636::
	return
::L3934187::
	c = R._CurrentGui
	c:Destroy()
	R._CurrentGui = nil
	goto L16270636
::L16061280::
	d = R._CurrentGui.Parent
	goto L9539726
end

function fn_11936360(arg1, arg2, arg3, arg4) -- entry L11936360, 11 blocks
::L11936360::
	R = arg1
	d = not up1
	if i then goto L6961327 end
::L3199964::
	d = not up2
::L6961327::
	if d then goto L1345452 end
::L9316132::
	d = R == up2
	if i then goto L13059149 end
::L7280642::
	W = c
	i = up2.UserInputType == Enum.UserInputType.MouseButton1
	if N then goto L13984053 end
::L9336112::
	d = i
::L13059149::
	if d then goto L3850817 end
::L5879473::
	return
::L3850817::
	up3(R.Position.X)
	goto L5879473
::L13984053::
	i = R.UserInputType == Enum.UserInputType.MouseMovement
	goto L9336112
::L1345452::
	return
end

function fn_11999476(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L11999476, 45 blocks
::L11999476::
	i = arg2
	K = O()
	N = arg4
	R = arg1
	W = O()
	f[W] = arg3
	f[K] = arg7
	T = c
	o = arg5 or 23
	l = arg6
	if j then goto L13826772 end
::L15981735::
	c = T
	T = O()
	f[T] = l
	if f[T] then goto L14847386 end
::L6545019::
	l = up2
	t = l:Get(f[W], N)
	if f[T] then goto L11345949 end
::L9719879::
	e = up3
	L = Color3.fromRGB(18, 12, 30)
	y = UDim2.new(1, 0, 0, 34)
	H = up3
	x = e("Frame", {
		BackgroundColor3 = L,
		BackgroundTransparency = .2,
		BorderSizePixel = 0,
		Size = y,
		ZIndex = o,
		Children = {
			unpack({
				H("UICorner", {
					CornerRadius = UDim.new(0, 8)
				})
			})
		}
	}, R)
	e = up3
	u = "UIStroke"
	v = "Color"
	y = t
	E = c
	b = Color3.fromRGB(140, 90, 220)
	L = "Transparency"
	if t then goto L8340344 end
::L10884612::
	c = E
	B = e(u, {
		[v] = b,
		[L] = (y and .45) or .82,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}, x)
	e = O()
	f[e] = B
	E = t
	A = "Frame"
	L = "BackgroundColor3"
	B = up3
	Y = c
	M = Color3.fromRGB(160, 100, 255)
	b = "BackgroundTransparency"
	if t then goto L6390905 end
::L5264646::
	c = Y
	Y = UDim2.new(0, 0, .5, - 10)
	Fe = UDim2.new(0, 3, 0, 20)
	me = up3
	ce = me("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	me = up3
	fe = ColorSequence.new
	ie = ColorSequenceKeypoint.new
	We = ie(0, unpack({
		Color3.fromRGB(220, 170, 255)
	}))
	ie = ColorSequenceKeypoint.new
	u = B(A, {
		[L] = M,
		[b] = (E and 0) or .8,
		BorderSizePixel = 0,
		Position = Y,
		Size = Fe,
		ZIndex = o + 1,
		Children = {
			ce,
			unpack({
				me("UIGradient", {
					Color = fe({
						We,
						unpack({
							ie(1, unpack({
								Color3.fromRGB(110, 55, 210)
							}))
						})
					}),
					Rotation = 90
				})
			})
		}
	}, x)
	M = 1
	B = O()
	f[B] = u
	u = up3
	z = "Position"
	b = "BackgroundTransparency"
	v = "TextLabel"
	Ge = c
	P = UDim2.new(0, 14, 0, 0)
	S = "Size"
	E = UDim2.new(1, - 70, 1, 0)
	y = "Font"
	Y = Enum.Font.GothamBold
	H = "Text"
	ce = c
	Qe = c
	Fe = i .. ((f[T] and " (Premium)") or "")
	Ze = t
	Je = "TextColor3"
	if t then goto L9057714 end
::L7568933::
	me = Ze
	if Ze then goto L10416591 end
::L1106913::
	k = me
	if me then goto L1565647 end
::L7671847::
	k = Color3.fromRGB(155, 130, 195)
::L1565647::
	c = Qe
	A = u(v, {
		[b] = M,
		[z] = P,
		[S] = E,
		[y] = Y,
		[H] = Fe,
		[Je] = k,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = o + 1
	}, x)
	u = O()
	f[u] = A
	if f[T] then goto L14936344 end
::L14957995::
	E = t
	Y = c
	L = "Frame"
	y = c
	A = up3
	M = "BackgroundColor3"
	S = c
	if t then goto L9572683 end
::L556385::
	P = E
	if E then goto L14092175 end
::L12903853::
	z = P
	if P then goto L12317053 end
::L8684240::
	z = Color3.fromRGB(14, 9, 26)
::L12317053::
	y = Vector2.new(1, .5)
	Y = UDim2.new(1, - 10, .5, 0)
	Fe = UDim2.new(0, 38, 0, 20)
	Ze = up3
	v = A(L, {
		[M] = z,
		AnchorPoint = y,
		Position = Y,
		Size = Fe,
		BorderSizePixel = 0,
		ZIndex = o + 2,
		Children = {
			unpack({
				Ze("UICorner", {
					CornerRadius = UDim.new(1, 0)
				})
			})
		}
	}, x)
	b = "UIStroke"
	Je = S
	z = "Color"
	A = O()
	Fe = t
	f[A] = v
	v = up3
	P = Color3.fromRGB(140, 90, 220)
	S = "Transparency"
	if t then goto L8006729 end
::L3389474::
	c = Je
	L = v(b, {
		[z] = P,
		[S] = (Fe and .4) or .72,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}, f[A])
	v = O()
	S = "AnchorPoint"
	Je = t
	M = "Frame"
	f[v] = L
	L = up3
	y = Vector2.new(0, .5)
	Y = c
	k = c
	Fe = c
	P = "Position"
	if t then goto L9470713 end
::L8532523::
	H = Je
	if Je then goto L15474921 end
::L10757677::
	E = H
	if H then goto L5243186 end
::L2750857::
	E = UDim2.new(0, 3, .5, 0)
::L5243186::
	c = Y
	Y = "Size"
	Fe = UDim2.new(0, 14, 0, 14)
	H = "BorderSizePixel"
	Je = 0
	k = "ZIndex"
	Qe = o + 3
	ne[1] = c
	Ze = up3
	ge = t
	me = "Children"
	Re = "Color"
	Ge = Ze("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	Ze = up3
	de = "UIGradient"
	Ce = c
	Oe = ColorSequence.new
	qe = c
	Ne = ColorSequenceKeypoint.new
	oe = 0
	if t then goto L5108961 end
::L5177254::
	ae = ge
	if ge then goto L4127501 end
::L5036542::
	se = ae
	if ae then goto L6846724 end
::L1819959::
	ne[2] = 150
	qe = Color3
	ne[1] = 100
	se = qe.fromRGB(120, ne[1], ne[2])
::L6846724::
	c = Ce
	he = Ne(oe, se)
	oe = ColorSequenceKeypoint
	ge = c
	ne[2] = c
	Ne = oe.new
	ae = c
	se = 1
	ne[1] = t
	if t then goto L668789 end
::L15571800::
	qe = ne[1]
	if ne[1] then goto L14827715 end
::L2436433::
	Ce = qe
	if qe then goto L596310 end
::L141657::
	ne[1] = "Color3"
	ge = ENV[ne[1]]
	ne[1] = "fromRGB"
	ne[2] = 50
	ne[3] = 90
	qe = ge[ne[1]]
	ne[1] = 60
	Ce = qe(ne[1], ne[2], ne[3])
::L596310::
	z = {
		[S] = y,
		[P] = E,
		[Y] = Fe,
		[H] = Je,
		[k] = Qe,
		[me] = {
			Ge,
			unpack({
				Ze(de, {
					[Re] = Oe({
						he,
						unpack({
							Ne(se, Ce)
						})
					}),
					Rotation = 135
				})
			})
		}
	}
	b = L(M, z, f[A])
	L = O()
	f[L] = b
	b = f[L]
	M = b:FindFirstChildOfClass("UIGradient")
	b = O()
	f[b] = M
	M = up3
	z = M("TextButton", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = "",
		ZIndex = o + 4
	}, x)
	M = O()
	y = closure(fn_13707583, {
		T,
		up4,
		M,
		up5,
		L,
		A,
		v,
		e,
		B,
		u,
		b,
		up2,
		W,
		K
	})
	f[M] = t
	S = z.MouseButton1Click
	S:Connect(y)
	return closure(fn_15794352, {M})
::L14827715::
	ne[3] = "Color3"
	ne[4] = 105
	ne[2] = ENV[ne[3]]
	ne[3] = "fromRGB"
	ne[1] = ne[2][ne[3]]
	ne[3] = 170
	ne[5] = 255
	ne[2] = ne[1](ne[3], ne[4], ne[5])
	qe = ne[2]
	goto L2436433
::L668789::
	ne[4] = f[T]
	ne[3] = not ne[4]
	ne[1] = ne[3]
	goto L15571800
::L4127501::
	ne[2] = "Color3"
	ne[1] = ENV[ne[2]]
	ne[4] = 255
	ne[3] = 205
	ne[2] = "fromRGB"
	ge = ne[1][ne[2]]
	ne[2] = 235
	ne[1] = ge(ne[2], ne[3], ne[4])
	ae = ne[1]
	goto L5036542
::L5108961::
	ne[3] = f[T]
	ne[2] = not ne[3]
	ge = ne[2]
	goto L5177254
::L15474921::
	H = UDim2.new(0, 20, .5, 0)
	goto L10757677
::L9470713::
	Je = not f[T]
	goto L8532523
::L8006729::
	Fe = not f[T]
	goto L3389474
::L14092175::
	P = Color3.fromRGB(90, 45, 170)
	goto L12903853
::L9572683::
	E = not f[T]
	goto L556385
::L14936344::
	A = up3
	y = Vector2.new(1, .5)
	Y = UDim2.new(1, - 54, .5, 0)
	Fe = UDim2.new(0, 12, 0, 12)
	A("ImageLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = y,
		Position = Y,
		Size = Fe,
		Image = "rbxassetid://7733992528",
		ImageColor3 = Color3.fromRGB(140, 110, 190),
		ZIndex = o + 3
	}, x)
	goto L14957995
::L10416591::
	me = Color3.fromRGB(215, 185, 255)
	goto L1106913
::L9057714::
	Ze = not f[T]
	goto L7568933
::L6390905::
	E = not f[T]
	goto L5264646
::L8340344::
	y = not f[T]
	goto L10884612
::L11345949::
	t = false
	goto L9719879
::L14847386::
	l = up2
	l:Save(f[W], false)
	goto L6545019
::L13826772::
	l = not up1.HasKeyAccess()
	goto L15981735
end

function fn_12016307(arg1, arg2, arg3, arg4) -- entry L12016307, 10 blocks
::L12016307::
	R = arg1
	i = O()
	f[i] = arg2
	j = {
		pairs(up1.RegisteredElements)
	}
	N = j[3]
	o = j[1]
	W = j[2]
::L6513629::
	N, K = o(W, N)
	if N then goto L5965809 end
::L4566163::
	h(i)
	return
::L5965809::
	c = O()
	f[c] = N
	j = c
	l = f[j]
	if T then goto L6587735 end
::L2595532::
	if l then goto L5378613 end
::L2016633::
	h(j)
	goto L6513629
::L5378613::
	T = closure(fn_6419193, {
		j,
		i
	})
	pcall(T)
	goto L2016633
::L6587735::
	t = c
	T = f[j].Parent
	if e then goto L8103465 end
::L16253347::
	l = T
	goto L2595532
::L8103465::
	T = K.original == R
	goto L16253347
end

function fn_12031680(arg1, arg2, arg3, arg4) -- entry L12031680, 7 blocks
::L12031680::
	R = math.clamp(arg1, up1, up2)
	up3.Scale = R
	i = up4.Notification.GUI
	if W then goto L8779950 end
::L15162597::
	if i then goto L15944807 end
::L3251229::
	return R
::L15944807::
	W = i:FindFirstChildOfClass("UIScale")
	if not W then goto L4685101 end
::L9894968::
	W.Scale = R
	goto L3251229
::L4685101::
	W = up5("UIScale", {
		Name = "LibraryUIScale"
	}, i)
	goto L9894968
::L8779950::
	i = up4.Notification.GUI.Parent
	goto L15162597
end

function fn_12035202(arg1, arg2, arg3, arg4, arg5) -- entry L12035202, 7 blocks
::L12035202::
	d = up1
	if R then goto L5209808 end
::L11035519::
	return d
::L5209808::
	i = c
	R = up2
	if W then goto L2428908 end
::L423536::
	d = R
	goto L11035519
::L2428908::
	N = c
	W = not up3
	if o then goto L10975454 end
::L5554534::
	R = W
	goto L423536
::L10975454::
	W = not up4
	goto L5554534
end

function fn_12036057(arg1) -- entry L12036057, 14 blocks
::L12036057::
	if up1 then goto L6629895 end
::L834375::
	N = ipairs
	W = up3
	if o then goto L12071153 end
::L1398437::
	W = {}
::L12071153::
	N = {
		N(W)
	}
	i = N[3]
	R = N[2]
	W = N[1]
::L12716560::
	i, o = W(R, i)
	if i then goto L8996772 end
::L7172661::
	if TopFrame then goto L16410188 end
::L6101899::
	return
::L16410188::
	goto L6101899
::L8996772::
	if o.tabUnderline then goto L7412874 end
::L14867436::
	goto L12716560
::L7412874::
	K = up2.Accent
	o.tabUnderline.BackgroundColor3 = K
	goto L14867436
::L6629895::
	c = up1
	R = c:FindFirstChildOfClass("UIStroke")
	if R then goto L4681245 end
::L15337527::
	goto L834375
::L4681245::
	d = up2.Accent
	R.Color = d
	goto L15337527
end

function fn_12057577(arg1, arg2, arg3, arg4) -- entry L12057577, 1 blocks
::L12057577::
	d = JsonDecode(up1)
	up2 = d
	return
end

function fn_12084308(arg1, arg2, arg3) -- entry L12084308, 5 blocks
::L12084308::
	if not up1 then goto L2632224 end
::L6194716::
	CircleClick(up2, up3.X, up3.Y)
	c = up4
	R = c:Get("_saveSlots", {})
	i = R[up1]
	if i then goto L11047116 end
::L2898162::
	return
::L11047116::
	d = up4
	W = d:GetSnapshot()
	i.data = W
	W = os.date("%Y-%m-%d %H:%M")
	i.updated = W
	c = up4
	c:Save("_saveSlots", R)
	up5.UpdatePreview(i, up6)
	c = up7.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "Overwrote \"" .. ((i.name or "profile") .. "\" with current state.")
	}, {
		Time = 2
	})
	RefreshSlots()
	goto L2898162
::L2632224::
	return
end

function fn_12092912(arg1, arg2, arg3, arg4, arg5) -- entry L12092912, 1 blocks
::L12092912::
	c = up1
	T = Color3.fromRGB(18, 12, 30)
	A = UDim2.new(1, 0, 0, 34)
	M = up1
	o = c("Frame", {
		BackgroundColor3 = T,
		BackgroundTransparency = .2,
		BorderSizePixel = 0,
		Size = A,
		ZIndex = 23,
		Children = {
			unpack({
				M("UICorner", {
					CornerRadius = UDim.new(0, 8)
				})
			})
		}
	}, arg1)
	c = up1
	t = Color3.fromRGB(140, 90, 220)
	c("UIStroke", {
		Color = t,
		Transparency = .7,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}, o)
	c = up1
	x = UDim2.new(0, 14, 0, 0)
	u = UDim2.new(1, - 90, 1, 0)
	A = Enum.Font.GothamBold
	M = Color3.fromRGB(215, 185, 255)
	c("TextLabel", {
		BackgroundTransparency = 1,
		Position = x,
		Size = u,
		Font = A,
		Text = arg2,
		TextColor3 = M,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 24
	}, o)
	c = up1
	x = Vector2.new(1, .5)
	u = UDim2.new(1, - 10, .5, 0)
	v = UDim2.new(0, 72, 0, 14)
	L = Enum.Font.GothamBold
	M = up2.Name
	P = Color3.fromRGB(192, 132, 252)
	d = c("TextLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = x,
		Position = u,
		Size = v,
		Font = L,
		Text = M,
		TextColor3 = P,
		TextSize = 10,
		TextTruncate = Enum.TextTruncate.AtEnd,
		TextXAlignment = Enum.TextXAlignment.Right,
		ZIndex = 24
	}, o)
	up3 = d
	c = up1
	c = c("TextButton", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = "",
		ZIndex = 25
	}, o).MouseButton1Click
	l = closure(fn_7329006, {
		up4,
		up3
	})
	c:Connect(l)
	return
end

function fn_12158981() -- entry L12158981, 1 blocks
::L12158981::
	R = up2.BadgeText or "COPY"
	up1.Text = R
	i = up3
	up1.TextColor3 = i
	d = up4
	i = up5
	W = {
		BackgroundColor3 = Color3.new(up6 * .14, up7 * .14, up8 * .14)
	}
	d:Tween(i, W, .35, Enum.EasingStyle.Quint)
	d = up4
	d:Tween(up9, {
		Transparency = .45
	}, .35)
	d = up4
	d:Tween(up10, {
		Transparency = .65
	}, .35)
	return
end

function fn_12183170(arg1, arg2, arg3) -- entry L12183170, 1 blocks
::L12183170::
	return
end

function fn_12206888(arg1) -- entry L12206888, 1 blocks
::L12206888::
	up1.SetSubtitleTier()
	return
end

function fn_12231870() -- entry L12231870, 3 blocks
::L12231870::
	d = setclipboard
	if R then goto L10925659 end
::L4740926::
	d = toclipboard
::L10925659::
	d(up1)
	return
end

function fn_12282878(arg1, arg2) -- entry L12282878, 1 blocks
::L12282878::
	return
end

function fn_12415870(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L12415870, 23 blocks
::L12415870::
	W = arg3
	i = arg2
	N = Instance.new(arg1)
	if i then goto L7020033 end
::L3553379::
	if W then goto L10947754 end
::L14884591::
	return N
::L10947754::
	N.Parent = W
	goto L14884591
::L7020033::
	K = {
		pairs(i)
	}
	o = K[2]
	j = K[3]
	K = K[1]
::L1996499::
	j, T = K(o, j)
	if j then goto L15566395 end
::L16359105::
	o = i.Children
	if o then goto L13476338 end
::L12408485::
	if i.Parent then goto L6165738 end
::L7377324::
	if W then goto L14313801 end
::L16611419::
	goto L14884591
::L14313801::
	N.Parent = W
	goto L16611419
::L6165738::
	j = i.Parent
	N.Parent = j
	goto L16611419
::L13476338::
	l = # o
	T = 1
	t = 1 < 0
	K = 1 - 1
::L14741789::
	K = K + T
	if (t and (K>=l)) or ((not t) and (K<=l)) then goto L12871446 end
::L13554494::
	goto L12408485
::L12871446::
	e = o[K]
	if e then goto L13683907 end
::L5559533::
	goto L14741789
::L13683907::
	e.Parent = N
	goto L5559533
::L15566395::
	l = j
	t = l ~= "Children"
	if e then goto L4900180 end
::L2822245::
	if t then goto L10586154 end
::L6261918::
	goto L1996499
::L10586154::
	pcall(up1.Set, N, l, T)
	goto L6261918
::L4900180::
	t = l ~= "Parent"
	goto L2822245
end

function fn_12499070(arg1, arg2, arg3, arg4) -- entry L12499070, 31 blocks
::L12499070::
	i = arg2
	d = arg3
	if W then goto L13933563 end
::L11939396::
	d = {}
::L13933563::
	c = math.ceil
	W = d
	B = c
	N = c((# W) / 3)
	K = 8
	x = i
	if i then goto L1556077 end
::L12427219::
	c = ((K + ((x and 26) or 0)) + ((N * 26) + (math.max(N - 1, 0) * 4))) + 8
	j = up1
	x = ThemeColor("Primary")
	b = UDim2.new(1, - 25, 0, c)
	P = up1
	T = {
		BackgroundColor3 = x,
		BackgroundTransparency = .4,
		BorderSizePixel = 0,
		Size = b,
		ClipsDescendants = true,
		Children = {
			unpack({
				P("UICorner", {
					CornerRadius = UDim.new(0, 6)
				})
			})
		}
	}
	K = j("Frame", T, up2)
	up3(K, i or "ButtonGrid")
	j = i
	l = c
	if i then goto L13094322 end
::L16136750::
	c = l
	if j then goto L8919881 end
::L3091584::
	e = {
		ipairs(W)
	}
	l = e[1]
	T = e[2]
	t = e[3]
::L7132922::
	t, e = l(T, t)
	if t then goto L4578265 end
::L5212285::
	return K
::L4578265::
	j = t
	x = O()
	f[x] = e
	e = x
	S = c
	x = (j - 1) % 3
	u = math.floor((j - 1) / 3)
	M = "BackgroundColor3"
	L = "TextButton"
	y = c
	B = f[e].Locked == true
	A = up1
	P = B
	if B then goto L10034764 end
::L1732019::
	z = P
	if P then goto L7726002 end
::L2889433::
	z = Color3.fromRGB(55, 28, 100)
::L7726002::
	Oe = S
	S = "BackgroundTransparency"
	y = "BorderSizePixel"
	P = (B and .55) or .3
	Re = i
	Y = "Position"
	E = 0
	H = UDim2.new
	Je = x / 3
	Qe = 0
	Ze = 8
	k = ((x == 0) and 10) or 2
	if i then goto L8661454 end
::L4029699::
	c = Oe
	Fe = H(Je, k, Qe, (Ze + ((Re and 26) or 0)) + (u * 30))
	H = "Size"
	Je = UDim2.new
	ce = c
	Qe = .33333333333333
	me = (x == 0) and (- 12)
	if Ze then goto L15375188 end
::L6578976::
	me = ((x == 2) and (- 12)) or (- 4)
::L15375188::
	qe = "Size"
	Xe = "ZIndex"
	c = ce
	k = Je(Qe, me, 0, 26)
	Ge = ""
	Ze = "Text"
	Qe = false
	me = "ClipsDescendants"
	Oe = up1
	ne[2] = "UDim2"
	se = UDim
	ne[4] = c
	ce = true
	fe = "Children"
	ne[10] = "Label"
	de = 3
	Je = "AutoButtonColor"
	Ne = {
		CornerRadius = se.new(0, 3)
	}
	se = "BtnLabel"
	ie = Oe("UICorner", Ne)
	Ce = "BackgroundTransparency"
	oe = "Name"
	ae = 1
	Oe = up1
	ne[4] = 1
	Ne = "TextLabel"
	ne[1] = ENV[ne[2]]
	ne[2] = "new"
	ge = ne[1][ne[2]]
	ne[6] = c
	ne[7] = - 18
	ne[6] = - 4
	ne[2] = 1
	ne[5] = B and ne[7]
	ne[7] = 0
	ne[3] = ne[5] or ne[6]
	ne[6] = 0
	ne[5] = 0
	ne[1] = ge(ne[2], ne[3], ne[4], ne[5])
	ne[5] = 2
	ge = "Position"
	ne[4] = "UDim2"
	ne[3] = ENV[ne[4]]
	ne[4] = "new"
	ne[2] = ne[3][ne[4]]
	ne[4] = 0
	ne[3] = ne[2](ne[4], ne[5], ne[6], ne[7])
	ne[2] = "Font"
	ne[7] = "Enum"
	ne[6] = ENV[ne[7]]
	ne[7] = "Font"
	ne[5] = ne[6][ne[7]]
	ne[6] = "GothamBold"
	ne[4] = ne[5][ne[6]]
	ne[5] = "Text"
	ne[7] = c
	ne[9] = f[e]
	ne[8] = ne[9][ne[10]]
	cond = ne[8]
	ne[6] = ne[8]
	if ne[8] then goto L11791969 end
::L7535013::
	ne[9] = "Button "
	ne[8] = ne[9] .. j
	ne[6] = ne[8]
::L11791969::
	c = ne[7]
	ne[7] = "TextColor3"
	ne[10] = B
	ne[11] = c
	ne[9] = c
	if B then goto L278463 end
::L11956743::
	ne[8] = ne[10]
	if ne[10] then goto L12388860 end
::L3140444::
	ne[12] = "Color3"
	ne[14] = 255
	ne[13] = 185
	ne[11] = ENV[ne[12]]
	ne[12] = "fromRGB"
	ne[10] = ne[11][ne[12]]
	ne[12] = 210
	ne[11] = ne[10](ne[12], ne[13], ne[14])
	ne[8] = ne[11]
::L12388860::
	c = ne[9]
	ne[15] = "Enum"
	ne[14] = ENV[ne[15]]
	ne[11] = "TextTruncate"
	ne[20] = 8
	ne[15] = "TextTruncate"
	ne[10] = true
	ne[13] = ne[14][ne[15]]
	ne[19] = 12
	ne[14] = "AtEnd"
	ne[12] = ne[13][ne[14]]
	ne[15] = "Children"
	ne[14] = 4
	ne[9] = "TextScaled"
	ne[18] = "MakeTextConstraint"
	ne[17] = ENV[ne[18]]
	ne[18] = {
		ne[17](ne[19], ne[20])
	}
	ne[13] = "ZIndex"
	ne[16] = {
		unpack(ne[18])
	}
	v = A(L, {
		[M] = z,
		[S] = P,
		[y] = E,
		[Y] = Fe,
		[H] = k,
		[Je] = Qe,
		[me] = ce,
		[Ze] = Ge,
		[Xe] = de,
		[fe] = {
			ie,
			unpack({
				Oe(Ne, {
					[oe] = se,
					[Ce] = ae,
					[qe] = ne[1],
					[ge] = ne[3],
					[ne[2]] = ne[4],
					[ne[5]] = ne[6],
					[ne[7]] = ne[8],
					[ne[9]] = ne[10],
					[ne[11]] = ne[12],
					[ne[13]] = ne[14],
					[ne[15]] = ne[16]
				})
			})
		}
	}, K)
	A = O()
	f[A] = v
	if B then goto L16643931 end
::L989534::
	v = f[A]
	L = v:FindFirstChild("BtnLabel")
	v = O()
	f[v] = L
	if B then goto L5622209 end
::L16473543::
	L = f[A].MouseEnter
	b = L.Connect
	b(L, closure(fn_186586, {
		up6,
		A,
		v
	}))
	L = f[A].MouseLeave
	M = closure(fn_4360230, {
		up6,
		A,
		v
	})
	L:Connect(M)
	L = f[A].MouseButton1Click
	M = closure(fn_6677681, {
		A,
		up4,
		e
	})
	L:Connect(M)
::L6943747::
	h(A)
	h(e)
	h(v)
	goto L7132922
::L5622209::
	L = f[A].MouseButton1Click
	M = closure(fn_2463252, {
		A,
		up4,
		e,
		up5
	})
	L:Connect(M)
	goto L6943747
::L16643931::
	v = up1
	E = Vector2.new(1, .5)
	H = UDim2.new(1, - 4, .5, 0)
	Je = UDim2.new(0, 10, 0, 10)
	M = {
		BackgroundTransparency = 1,
		AnchorPoint = E,
		Position = H,
		Size = Je,
		Image = "rbxassetid://7733992528",
		ImageColor3 = Color3.fromRGB(140, 110, 190),
		ImageTransparency = .3,
		ZIndex = 5
	}
	v("ImageLabel", M, f[A])
	goto L989534
::L278463::
	ne[14] = "Color3"
	ne[13] = ENV[ne[14]]
	ne[14] = "fromRGB"
	ne[15] = 110
	ne[16] = 160
	ne[12] = ne[13][ne[14]]
	ne[14] = 130
	ne[13] = ne[12](ne[14], ne[15], ne[16])
	ne[10] = ne[13]
	goto L11956743
::L8661454::
	Re = i ~= ""
	goto L4029699
::L10034764::
	P = Color3.fromRGB(30, 18, 50)
	goto L1732019
::L8919881::
	j = up1
	A = UDim2.new(0, 12, 0, 8)
	L = UDim2.new(1, - 20, 0, 20)
	b = Enum.Font.GothamBold
	P = Color3.fromRGB(210, 200, 230)
	j("TextLabel", {
		BackgroundTransparency = 1,
		Position = A,
		Size = L,
		Font = b,
		Text = i,
		TextColor3 = P,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 3
	}, K)
	goto L3091584
::L13094322::
	j = i ~= ""
	goto L16136750
::L1556077::
	x = i ~= ""
	goto L12427219
end

function fn_12516936(arg1, arg2) -- entry L12516936, 1 blocks
::L12516936::
	up1 = true
	up2.Visible = true
	up3.Visible = true
	d = up3
	W = UDim2.new(0, up4 * .5, 0, up5 * .5)
	d.Size = W
	up3.BackgroundTransparency = .6
	d = up6
	i = up3
	R = d.Tween
	W = {
		Size = UDim2.new(0, up4, 0, up5),
		BackgroundTransparency = 0
	}
	R(d, i, W, .3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	return
end

function fn_12606541(arg1, arg2, arg3, arg4, arg5) -- entry L12606541, 5 blocks
::L12606541::
	W = arg3
	i = arg2
	R = arg1
	if i~=nil then goto L12322982 end
::L13954277::
	if not isfolder(R.FolderName) then goto L10664042 end
::L7154835::
	c = pcall
	N = writefile
	j = R.FolderName
	o = j .. ("/" .. R:GetFileName())
	c(N, o, unpack({
		JsonEncode(R.Settings)
	}))
	return
::L10664042::
	pcall(makefolder, R.FolderName)
	goto L7154835
::L12322982::
	R.Settings[i] = W
	goto L13954277
end

function fn_12610468(arg1, arg2, arg3, arg4) -- entry L12610468, 48 blocks
::L12610468::
	R = {}
	i = {}
	j = {
		ipairs(up1)
	}
	W = j[2]
	o = j[1]
	N = j[3]
::L8769082::
	N, K = o(W, N)
	if N then goto L7871290 end
::L2883136::
	j = {
		ipairs(R)
	}
	N = j[2]
	W = j[1]
	o = j[3]
::L13769181::
	o, K = W(N, o)
	if o then goto L7969307 end
::L3186174::
	W = {}
	t = {
		ipairs(up1)
	}
	K = t[2]
	N = {}
	j = t[1]
	l = t[3]
::L314752::
	l, T = j(K, l)
	if l then goto L11277653 end
::L15186749::
	t = {
		ipairs(up1)
	}
	l = t[3]
	j = t[1]
	K = t[2]
::L14506038::
	l, T = j(K, l)
	if l then goto L3506096 end
::L8219005::
	T = {
		pairs(N)
	}
	j = T[1]
	l = T[3]
	K = T[2]
::L10239991::
	l, T = j(K, l)
	if l then goto L2910838 end
::L11449186::
	return
::L2910838::
	u = {
		ipairs(T)
	}
	e = u[1]
	x = u[2]
	B = u[3]
::L4380445::
	B, u = e(x, B)
	if B then goto L13328607 end
::L13006823::
	goto L10239991
::L13328607::
	if u.Visible then goto L8767222 end
::L15639523::
	goto L4380445
::L8767222::
	M = UDim2.new(0, 240, 0, 260)
	u.Size = M
	goto L15639523
::L3506096::
	t = N[T.scrollFrame]
	e = false
	L = {
		ipairs(t)
	}
	u = L[2]
	B = L[1]
	v = L[3]
::L8281439::
	v, L = B(u, v)
	if v then goto L6199914 end
::L6292459::
	if not e then goto L1906445 end
::L8851260::
	goto L14506038
::L1906445::
	table.insert(t, T.sectionScroll)
	goto L8851260
::L6199914::
	if L==T.sectionScroll then goto L10625860 end
::L3911383::
	goto L8281439
::L10625860::
	e = true
	goto L6292459
::L11277653::
	if not W[T.scrollFrame] then goto L8572589 end
::L16124078::
	goto L314752
::L8572589::
	W[T.scrollFrame] = true
	N[T.scrollFrame] = {}
	goto L16124078
::L7969307::
	l = false
	c = ipairs
	B = {
		c(unpack({
			K:GetChildren()
		}))
	}
	t = B[2]
	T = B[1]
	e = B[3]
::L9975021::
	e, B = T(t, e)
	if e then goto L13686923 end
::L3318475::
	K.Visible = l
	goto L13769181
::L13686923::
	if B.Name=="Section" then goto L15052004 end
::L8118640::
	goto L9975021
::L15052004::
	u = false
	c = ipairs
	M = {
		c(up1)
	}
	A = M[1]
	v = M[2]
	L = M[3]
::L12849193::
	L, M = A(v, L)
	if L then goto L12201420 end
::L3941030::
	B.Visible = u
	if u then goto L12684698 end
::L13345811::
	goto L8118640
::L12684698::
	l = true
	goto L13345811
::L12201420::
	z = M.sectionScroll == K
	if S then goto L11879513 end
::L129098::
	if z then goto L5666873 end
::L12010909::
	goto L12849193
::L5666873::
	u = true
	goto L3941030
::L11879513::
	P = c
	S = M.sectionFrame == B
	if y then goto L8672122 end
::L3190197::
	c = P
	z = S
	goto L129098
::L8672122::
	S = M.elementFrame.Visible
	goto L3190197
::L7871290::
	if not i[K.sectionScroll] then goto L4571705 end
::L8663339::
	goto L8769082
::L4571705::
	i[K.sectionScroll] = true
	table.insert(R, K.sectionScroll)
	goto L8663339
end

function fn_12663072(arg1, arg2, arg3, arg4) -- entry L12663072, 11 blocks
::L12663072::
	c = arg1 == true
	i = arg2
	up1 = c
	j = "Position"
	l = c
	d = up2
	N = up3
	T = up1
	t = c
	if e then goto L9588509 end
::L14913914::
	K = T
	if T then goto L5733629 end
::L2996723::
	K = UDim2.new(0, 2, .5, 0)
::L5733629::
	c = l
	T = (up1 and 0) or .5
	W = d.Tween
	o = {
		[j] = K,
		ImageTransparency = T,
		ImageColor3 = Color3.fromRGB(255, 255, 255)
	}
	W(d, N, o, .3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	t = c
	l = c
	N = up1
	up4.Enabled = N
	d = up2
	N = up5
	j = "TextColor3"
	T = up1
	if e then goto L15784122 end
::L16084654::
	K = T
	if T then goto L3178478 end
::L11263893::
	K = Color3.fromRGB(120, 120, 120)
::L3178478::
	d:Tween(N, {
		[j] = K
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	up6()
	if i~=false then goto L5390236 end
::L11034435::
	return
::L5390236::
	pcall(up7, up1)
	goto L11034435
::L15784122::
	T = Color3.fromRGB(230, 230, 230)
	goto L16084654
::L9588509::
	T = UDim2.new(0, 19, .5, 0)
	goto L14913914
end

function fn_12686058() -- entry L12686058, 4 blocks
::L12686058::
	if up1 then goto L1766634 end
::L8623390::
	up3()
::L5821559::
	return
::L1766634::
	up2()
	goto L5821559
end

function fn_12711716(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- entry L12711716, 1 blocks
::L12711716::
	R = O()
	j = O()
	W = O()
	o = O()
	f[R] = arg1
	i = O()
	f[i] = arg2
	N = O()
	f[W] = arg3
	f[N] = arg4
	f[o] = arg5
	f[j] = arg6
	c = f[R].MouseEnter
	K = closure(fn_10906503, {
		up1,
		R,
		i,
		j,
		N
	})
	c:Connect(K)
	d = f[R]
	h(N)
	c = d.MouseLeave
	d = c.Connect
	K = closure(fn_980865, {
		up1,
		R,
		W,
		j,
		o
	})
	h(i)
	d(c, K)
	h(W)
	h(R)
	h(o)
	h(j)
	return
end

function fn_12830908(arg1, arg2, arg3, arg4, arg5) -- entry L12830908, 1 blocks
::L12830908::
	return unpack({up1.Color(arg1)})
end

function fn_12833697(arg1, arg2, arg3, arg4) -- entry L12833697, 3 blocks
::L12833697::
	c = up1.Text
	up2 = c
	up3.BuildLangItems()
	if up4 then goto L187466 end
::L928199::
	return
::L187466::
	W = # up3.GetFilteredLanguages()
	i = up3.CalcListHeight(W)
	d = up5
	o = UDim2.new(1, 0, 0, i)
	d.Size = o
	d = up6
	o = UDim2.new(1, - (up7 * 2), 0, (up8 + up9) + i)
	d.Size = o
	goto L928199
end

function fn_12918836(arg1, arg2) -- entry L12918836, 6 blocks
::L12918836::
	i = # up1
	W = 1
	N = 1 < 0
	R = 1 - 1
::L14546037::
	R = R + W
	if (N and (R>=i)) or ((not N) and (R<=i)) then goto L8231578 end
::L2010402::
	table.clear(up1)
	return
::L8231578::
	j = O()
	c = up1[R]
	f[j] = c
	if f[j] then goto L1777025 end
::L5307251::
	h(j)
	goto L14546037
::L1777025::
	K = closure(fn_14168777, {
		j
	})
	pcall(K)
	goto L5307251
end

function fn_12986342(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L12986342, 1 blocks
::L12986342::
	d = up1.SetUIScalePreview(arg1)
	ScheduleRefreshAllLayouts()
	return d
end

function fn_12996982(arg1) -- entry L12996982, 1 blocks
::L12996982::
	ApplyBackgroundImage(up1)
	return
end

function fn_13052756(arg1, arg2) -- entry L13052756, 5 blocks
::L13052756::
	if up1 then goto L11440969 end
::L5558149::
	CircleClick(up2, up3.X, up3.Y)
	if type(up4.Callback)=="function" then goto L5589873 end
::L11559364::
	task.spawn(up5)
	return
::L5589873::
	c = task.spawn
	c(closure(fn_13848074, {
		up4
	}))
	goto L11559364
::L11440969::
	return
end

function fn_13065761(arg1, arg2, arg3, arg4) -- entry L13065761, 3 blocks
::L13065761::
	if not up1 then goto L1574464 end
::L8555116::
	return
::L1574464::
	c = up2
	R = up3
	d = c.Tween
	d(c, R, {
		BackgroundColor3 = Color3.fromRGB(22, 14, 38)
	}, .12)
	goto L8555116
end

function fn_13114216() -- entry L13114216, 3 blocks
::L13114216::
	d = setclipboard
	if R then goto L10684246 end
::L9717004::
	d = toclipboard
::L10684246::
	d(up1.CopyText)
	return
end

function fn_13138047(arg1, arg2, arg3, arg4) -- entry L13138047, 34 blocks
::L13138047::
	N = {
		ipairs(up1)
	}
	i = N[3]
	R = N[2]
	W = N[1]
::L15212677::
	i, o = W(R, i)
	if i then goto L16027062 end
::L15526617::
	c = {}
	up1 = c
	j = {
		ipairs({
			"Purple",
			"Crimson",
			"Ocean",
			"Emerald",
			"Sunset"
		})
	}
	N = j[2]
	W = j[1]
	o = j[3]
::L10343970::
	o, j = W(N, o)
	if o then goto L10970331 end
::L5317229::
	return
::L10970331::
	v = "BackgroundColor3"
	u = "TextButton"
	K = up2.Themes[j]
	z = c
	l = up3 == j
	T = K.Accent
	b = c
	t = K.AccentDark
	e = K.PreviewColors
	M = l
	x = up4
	if l then goto L10283869 end
::L14652898::
	L = M
	if M then goto L2352775 end
::L6916353::
	L = Color3.fromRGB(14, 10, 22)
::L2352775::
	c = b
	E = UDim2.new(1, 0, 0, 44)
	ce = up4
	A = {
		[v] = L,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		Size = E,
		Text = "",
		AutoButtonColor = false,
		ZIndex = 23,
		Children = {
			unpack({
				ce("UICorner", {
					CornerRadius = UDim.new(0, 9)
				})
			})
		}
	}
	z = l
	M = c
	S = c
	L = "Color"
	B = x(u, A, up5)
	A = "UIStroke"
	x = O()
	f[x] = B
	B = up4
	if l then goto L10053478 end
::L14917174::
	b = z
	if z then goto L4827729 end
::L13076154::
	b = Color3.fromRGB(90, 60, 140)
::L4827729::
	c = M
	u = B(A, {
		[L] = b,
		Transparency = (l and .3) or .78,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}, f[x])
	B = O()
	f[B] = u
	u = up4
	Y = UDim2.new(0, 0, 0, 7)
	Fe = UDim2.new(0, 3, 1, - 14)
	me = up4
	ce = me("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	me = up4
	fe = ColorSequence.new
	We = ColorSequenceKeypoint.new(0, K.AccentLight)
	L = {
		BackgroundColor3 = T,
		BackgroundTransparency = (l and 0) or .5,
		BorderSizePixel = 0,
		Position = Y,
		Size = Fe,
		ZIndex = 24,
		Children = {
			ce,
			unpack({
				me("UIGradient", {
					Color = fe({
						We,
						unpack({
							ColorSequenceKeypoint.new(1, t)
						})
					}),
					Rotation = 90
				})
			})
		}
	}
	u("Frame", L, f[x])
	u = 12
	M = {
		ipairs(e)
	}
	L = M[2]
	v = M[1]
	b = M[3]
::L8753919::
	b, M = v(L, b)
	if b then goto L903916 end
::L7610367::
	L = "TextLabel"
	A = up4
	M = "BackgroundTransparency"
	S = 1
	Ge = c
	P = "Position"
	ce = c
	E = UDim2.new(0, 72, 0, 0)
	y = "Size"
	H = UDim2.new(1, - 130, 1, 0)
	Y = "Font"
	Fe = Enum.Font.GothamBold
	Ze = l
	Je = "Text"
	k = K.DisplayName
	Qe = "TextColor3"
	if l then goto L7426247 end
::L9580001::
	me = Ze
	if Ze then goto L748911 end
::L2750113::
	me = Color3.fromRGB(185, 165, 215)
::L748911::
	c = ce
	A(L, {
		[M] = S,
		[P] = E,
		[y] = H,
		[Y] = Fe,
		[Je] = k,
		[Qe] = me,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 24
	}, f[x])
	L = "Frame"
	A = up4
	M = "AnchorPoint"
	Y = l
	H = c
	P = Vector2.new(1, .5)
	S = "BackgroundColor3"
	E = c
	if l then goto L15451799 end
::L8298257::
	y = Y
	if Y then goto L3946660 end
::L6588650::
	y = Color3.fromRGB(18, 12, 28)
::L3946660::
	H = "BorderSizePixel"
	c = E
	Je = "Position"
	E = "BackgroundTransparency"
	Y = 0
	se = c
	Fe = 0
	Qe = UDim2.new(1, - 8, .5, 0)
	k = "Size"
	ce = UDim2.new(0, 62, 0, 22)
	Ze = 24
	Ge = "Children"
	me = "ZIndex"
	de = up4
	he = c
	We = "Color"
	fe = de("UICorner", {
		CornerRadius = UDim.new(0, 6)
	})
	oe = l
	de = up4
	Oe = "UIStroke"
	if l then goto L7595061 end
::L2675965::
	Ne = oe
	if oe then goto L545646 end
::L14271402::
	Ne = Color3.fromRGB(90, 65, 130)
::L545646::
	c = he
	ne[2] = "Enum"
	ne[1] = ENV[ne[2]]
	ne[5] = c
	ne[2] = "ApplyStrokeMode"
	ge = ne[1][ne[2]]
	ne[1] = "Border"
	qe = ge[ne[1]]
	ne[1] = 0
	he = 1
	oe = "Size"
	Re = de(Oe, {
		[We] = Ne,
		Transparency = (l and .35) or .72,
		Thickness = 1,
		ApplyStrokeMode = qe
	})
	ie = "TextLabel"
	ne[4] = "Active"
	de = up4
	Ne = "BackgroundTransparency"
	ne[3] = c
	Ce = UDim2.new(1, 0, 1, ne[1])
	se = "Font"
	ne[2] = l and ne[4]
	ne[1] = "Enum"
	ge = ENV[ne[1]]
	ne[1] = "Font"
	ae = ge[ne[1]].GothamBold
	qe = "Text"
	ne[3] = "Apply"
	ne[4] = l
	ne[1] = c
	ne[1] = "TextColor3"
	ge = ne[2] or ne[3]
	ne[3] = c
	if l then goto L6839740 end
::L12072499::
	cond = ne[4]
	ne[2] = ne[4]
	if ne[4] then goto L9681071 end
::L8278426::
	ne[6] = "Color3"
	ne[5] = ENV[ne[6]]
	ne[6] = "fromRGB"
	ne[4] = ne[5][ne[6]]
	ne[7] = 130
	ne[6] = 160
	ne[8] = 200
	ne[5] = ne[4](ne[6], ne[7], ne[8])
	ne[2] = ne[5]
::L9681071::
	ne[4] = 10
	ne[9] = "Enum"
	ne[5] = "TextXAlignment"
	ne[8] = ENV[ne[9]]
	c = ne[3]
	ne[9] = "TextXAlignment"
	ne[3] = "TextSize"
	ne[7] = ne[8][ne[9]]
	ne[8] = "Center"
	ne[6] = ne[7][ne[8]]
	ne[7] = "ZIndex"
	ne[8] = 25
	b = {
		[M] = P,
		[S] = y,
		[E] = Y,
		[H] = Fe,
		[Je] = Qe,
		[k] = ce,
		[me] = Ze,
		[Ge] = {
			fe,
			Re,
			unpack({
				de(ie, {
					[Ne] = he,
					[oe] = Ce,
					[se] = ae,
					[qe] = ge,
					[ne[1]] = ne[2],
					[ne[3]] = ne[4],
					[ne[5]] = ne[6],
					[ne[7]] = ne[8]
				})
			})
		}
	}
	A(L, b, f[x])
	table.insert(up1, f[x])
	A = O()
	f[A] = j
	L = f[x].MouseEnter
	M = closure(fn_16178182, {
		up3,
		A,
		up6,
		x,
		B
	})
	L:Connect(M)
	L = f[x].MouseLeave
	M = closure(fn_10811909, {
		up3,
		A,
		up6,
		x,
		B
	})
	L:Connect(M)
	L = f[x].MouseButton1Click
	h(B)
	M = closure(fn_10943683, {
		up3,
		A,
		x,
		up7,
		up8,
		up9
	})
	L:Connect(M)
	h(x)
	h(A)
	goto L10343970
::L6839740::
	ne[7] = "AccentLight"
	ne[6] = K[ne[7]]
	ne[4] = ne[6]
	goto L12072499
::L7595061::
	oe = T
	goto L2675965
::L15451799::
	Y = Color3.new(t.R * .5, t.G * .5, t.B * .5)
	goto L8298257
::L7426247::
	Ze = K.AccentLight
	goto L9580001
::L903916::
	z = up4
	k = UDim2.new(0, u, .5, - 10)
	ne[1] = "Enum"
	me = UDim2.new(0, 20, 0, 20)
	Xe = up4
	de = Xe("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	Xe = up4
	Ne = Color3.fromRGB(255, 255, 255)
	ge = ENV[ne[1]]
	ne[1] = "ApplyStrokeMode"
	y = {
		BackgroundColor3 = M,
		BorderSizePixel = 0,
		Position = k,
		Size = me,
		ZIndex = 24,
		Children = {
			de,
			unpack({
				Xe("UIStroke", {
					Color = Ne,
					Transparency = .85,
					Thickness = 1,
					ApplyStrokeMode = ge[ne[1]].Border
				})
			})
		}
	}
	z("Frame", y, f[x])
	u = u + 16
	goto L8753919
::L10053478::
	z = T
	goto L14917174
::L10283869::
	M = Color3.fromRGB(20, 13, 36)
	goto L14652898
::L16027062::
	o:Destroy()
	goto L15212677
end

function fn_13181416(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L13181416, 5 blocks
::L13181416::
	R = arg1
	l = 0
	d = up1 + (R * up2)
	N = math.max(R - 1, 0)
	i = d + (N * up3)
	T = 0
	N = i > (UnscaledLayout(up4.AbsoluteSize.Y) + 1)
	d = "CanvasSize"
	B = up4
	o = UDim2.new
	K = 0
	x = N
	if N then goto L3371981 end
::L11198771::
	j = o(K, l, T, x or 0)
	B[d] = j
	up4.ScrollingEnabled = N
	j = Enum.ElasticBehavior.Never
	up4.ElasticBehavior = j
	if not N then goto L16477948 end
::L12394112::
	return
::L16477948::
	d = up4
	K = Vector2.new(0, 0)
	d.CanvasPosition = K
	goto L12394112
::L3371981::
	x = i
	goto L11198771
end

function fn_13187044(arg1, arg2, arg3, arg4) -- entry L13187044, 5 blocks
::L13187044::
	R = arg1
	if not up1.on then goto L2111073 end
::L12662576::
	if R==up1.input then goto L4881162 end
::L11098934::
	return
::L4881162::
	up1.on = false
	up1.input = nil
	up1.start = nil
	up1.origin = nil
	W = closure(fn_3164141, {
		up1
	})
	task.delay(.08, W)
	goto L11098934
::L2111073::
	return
end

function fn_13257363(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L13257363, 4 blocks
::L13257363::
	i = {}
	c = string.gmatch
	K = {
		c(string.lower(arg1), "%S+")
	}
	W = K[2]
	N = K[3]
	o = K[1]
::L2350357::
	N = o(W, N)
	if N then goto L5046489 end
::L5136221::
	return i
::L5046489::
	table.insert(i, N)
	goto L2350357
end

function fn_13338386(arg1, arg2, arg3) -- entry L13338386, 1 blocks
::L13338386::
	up1.Video = ""
	return
end

function fn_13410338(arg1, arg2, arg3, arg4, arg5) -- entry L13410338, 1 blocks
::L13410338::
	FitScrollCanvas(up1, up2, "X", 4)
	return
end

function fn_13427803() -- entry L13427803, 1 blocks
::L13427803::
	up1.Visible = false
	c = up1
	i = UDim2.new(0, 0, 0, 0)
	c.Position = i
	return
end

function fn_13460073(arg1, arg2, arg3, arg4) -- entry L13460073, 1 blocks
::L13460073::
	i = math.clamp((arg1 - up1.AbsolutePosition.X) / up1.AbsoluteSize.X, 0, 1)
	up2(up3 + ((up4 - up3) * i), false)
	return
end

function fn_13484127(arg1, arg2) -- entry L13484127, 5 blocks
::L13484127::
	if up1.moved then goto L2045805 end
::L8406621::
	R = tick()
	if (R-up2)<.2 then goto L313828 end
::L30239::
	up2 = R
	up3()
	return
::L313828::
	return
::L2045805::
	return
end

function fn_13529559() -- entry L13529559, 13 blocks
::L13529559::
	c = up1.FolderName .. "/Key.json"
	R = O()
	f[R] = c
	d = not isfolder(up1.FolderName)
	if i then goto L9126370 end
::L7659044::
	d = not isfile(f[R])
::L9126370::
	if d then goto L8903119 end
::L12791386::
	c = pcall
	N = {
		c(closure(fn_775728, {
			R
		}))
	}
	i = N[2]
	d = not N[1]
	if N then goto L3314581 end
::L10014887::
	d = type(i) ~= "table"
::L3314581::
	if d then goto L2268015 end
::L15364068::
	d = type(i.key) ~= "string"
	if N then goto L6803144 end
::L15099880::
	d = i.key == ""
::L6803144::
	if d then goto L9133908 end
::L14246967::
	return i.verified==true
::L9133908::
	return false
::L2268015::
	return false
::L8903119::
	return false
end

function fn_13586973(arg1) -- entry L13586973, 5 blocks
::L13586973::
	R = arg1
	if up1 then goto L1773314 end
::L3911771::
	if R==Enum.PlaybackState.Completed then goto L2067634 end
::L8291536::
	return
::L2067634::
	up2()
	goto L8291536
::L1773314::
	c = up1
	c:Disconnect()
	goto L3911771
end

function fn_13625031(arg1, arg2, arg3, arg4, arg5) -- entry L13625031, 5 blocks
::L13625031::
	d = up1
	if R then goto L5651881 end
::L9687061::
	if d then goto L4969981 end
::L10813460::
	return
::L4969981::
	R = up2
	up1.Transparency = R
	goto L10813460
::L5651881::
	d = up1.Parent
	goto L9687061
end

function fn_13707583(arg1, arg2, arg3, arg4, arg5) -- entry L13707583, 27 blocks
::L13707583::
	if up1 then goto L202420 end
::L8822558::
	c = not up3
	N = "Position"
	l = c
	up3 = c
	j = c
	d = up4
	i = up5
	K = up3
	if T then goto L6949504 end
::L16359537::
	o = K
	if K then goto L12816853 end
::L9674453::
	o = UDim2.new(0, 3, .5, 0)
::L12816853::
	c = j
	l = c
	d:Tween(i, {
		[N] = o
	}, .22, Enum.EasingStyle.Back)
	d = up4
	i = up6
	N = "BackgroundColor3"
	j = c
	K = up3
	if T then goto L668730 end
::L12125142::
	o = K
	if K then goto L1638957 end
::L2654408::
	o = Color3.fromRGB(14, 9, 26)
::L1638957::
	c = j
	d:Tween(i, {
		[N] = o
	}, .2, Enum.EasingStyle.Quint)
	d = up4
	d:Tween(up7, {
		Transparency = (up3 and .4) or .72
	}, .2)
	d = up4
	d:Tween(up8, {
		Transparency = (up3 and .45) or .82
	}, .2)
	d = up4
	j = c
	d:Tween(up9, {
		BackgroundTransparency = (up3 and 0) or .8
	}, .2)
	d = up4
	N = "TextColor3"
	l = c
	i = up10
	K = up3
	if T then goto L11016650 end
::L3766658::
	o = K
	if K then goto L753346 end
::L8894398::
	o = Color3.fromRGB(155, 130, 195)
::L753346::
	c = j
	d:Tween(i, {
		[N] = o
	}, .2)
	if up11 then goto L5442941 end
::L16036673::
	d = up12
	d:Save(up13, up3)
	if typeof(up14)=="function" then goto L14394011 end
::L16746507::
	return
::L14394011::
	pcall(up14, up3)
	goto L16746507
::L5442941::
	R = "Color"
	T = c
	d = up11
	i = ColorSequence.new
	o = ColorSequenceKeypoint.new
	t = up3
	e = c
	K = 0
	if x then goto L6786476 end
::L663685::
	l = t
	if t then goto L12713784 end
::L4520969::
	l = Color3.fromRGB(120, 100, 150)
::L12713784::
	j = o(K, l)
	c = T
	x = c
	o = ColorSequenceKeypoint.new
	t = c
	l = 1
	e = up3
	if B then goto L8876498 end
::L1551949::
	T = e
	if e then goto L9666890 end
::L14062977::
	T = Color3.fromRGB(60, 50, 90)
::L9666890::
	W = i({
		j,
		unpack({
			o(l, T)
		})
	})
	d[R] = W
	goto L16036673
::L8876498::
	e = Color3.fromRGB(170, 105, 255)
	goto L1551949
::L6786476::
	t = Color3.fromRGB(235, 205, 255)
	goto L663685
::L11016650::
	K = Color3.fromRGB(215, 185, 255)
	goto L3766658
::L668730::
	K = Color3.fromRGB(90, 45, 170)
	goto L12125142
::L6949504::
	K = UDim2.new(0, 20, .5, 0)
	goto L16359537
::L202420::
	c = up2.Notification
	c:Notify({
		Title = "Premium Only",
		Description = "This feature requires a premium key."
	}, {
		Time = 3
	})
	return
end

function fn_13741953(arg1, arg2, arg3, arg4, arg5) -- entry L13741953, 1 blocks
::L13741953::
	d = game
	c = d:GetService("Players").LocalPlayer
	up1 = c
	return
end

function fn_13788953(arg1) -- entry L13788953, 16 blocks
::L13788953::
	R = up1.elementFrame
	c = up1.sectionScroll
	i = c
	W = c
	d = R
	if R then goto L1590311 end
::L6908176::
	if not d then goto L16687820 end
::L3657329::
	N = math.max(0, ((R.AbsolutePosition.Y - i.AbsolutePosition.Y) + i.CanvasPosition.Y) - 40)
	c = up2
	o = {
		CanvasPosition = Vector2.new(0, N)
	}
	c:Tween(i, o, .28, Enum.EasingStyle.Quint)
	K = "BackgroundColor3"
	T = up3
	o = "Frame"
	l = ThemeColor("Accent")
	if e then goto L1550505 end
::L431639::
	l = Color3.fromRGB(180, 120, 255)
::L1550505::
	A = UDim2.new(1, 0, 1, 0)
	M = up3
	d = T(o, {
		[K] = l,
		BackgroundTransparency = .35,
		BorderSizePixel = 0,
		Size = A,
		ZIndex = 50,
		Children = {
			unpack({
				M("UICorner", {
					CornerRadius = UDim.new(0, 6)
				})
			})
		}
	}, R)
	o = O()
	f[o] = d
	c = up2
	j = f[o]
	T = Enum.EasingStyle.Quad
	t = Enum.EasingDirection.Out
	e = closure(fn_5039439, {
		o
	})
	c:Tween(j, {
		BackgroundTransparency = 1
	}, .65, T, t, e)
	c = R:FindFirstChildOfClass("UIStroke")
	j = O()
	f[j] = c
	if not f[j] then goto L1258001 end
::L10324972::
	c = f[j].Transparency
	K = O()
	f[K] = c
	f[j].Transparency = .15
	l = task
	t = closure(fn_13625031, {
		j,
		K
	})
	h(K)
	l.delay(.8, t)
::L494485::
	h(j)
	h(o)
	return
::L1258001::
	K = "UIStroke"
	T = "Color"
	e = up3
	t = ThemeColor("Accent")
	if B then goto L2208975 end
::L6150623::
	t = Color3.fromRGB(180, 120, 255)
::L2208975::
	d = e(K, {
		[T] = t,
		Transparency = .2,
		Thickness = 1.5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}, R)
	f[j] = d
	T = closure(fn_5682131, {
		j
	})
	task.delay(.8, T)
	goto L494485
::L16687820::
	return
::L1590311::
	N = R.Parent
	o = c
	if j then goto L7534256 end
::L2987768::
	d = N
	goto L6908176
::L7534256::
	j = i
	K = c
	if i then goto L4369589 end
::L10108313::
	N = j
	goto L2987768
::L4369589::
	j = i.Parent
	goto L10108313
end

function fn_13809089(arg1, arg2, arg3) -- entry L13809089, 3 blocks
::L13809089::
	if arg1.UserInputType==Enum.UserInputType.MouseButton1 then goto L13770433 end
::L4334556::
	return
::L13770433::
	up1()
	goto L4334556
end

function fn_13848074(arg1) -- entry L13848074, 3 blocks
::L13848074::
	R = ({
		pcall(up1.Callback)
	})[2]
	if not W[1] then goto L11610181 end
::L9377411::
	return
::L11610181::
	c = warn
	c("[Notification Callback Error]: " .. J.tostring(R))
	goto L9377411
end

function fn_13905168(arg1, arg2, arg3, arg4) -- entry L13905168, 1 blocks
::L13905168::
	up1.Visible = false
	up2.Visible = true
	c = up3
	i = Vector2.new(0, 0)
	c.CanvasPosition = i
	return
end

function fn_13915136(arg1, arg2, arg3) -- entry L13915136, 1 blocks
::L13915136::
	up1 = false
	return
end

function fn_13920609(arg1, arg2, arg3, arg4) -- entry L13920609, 6 blocks
::L13920609::
	d = up1
	i = arg2 ~= false
	R = d(unpack({
		math.clamp(arg1, up2, up3)
	}))
	up4 = R
	N = (R - up2) / (up3 - up2)
	j = UDim2.new(N, 0, 1, 0)
	K = UDim2.new(N, 0, .5, 0)
	if i then goto L13409779 end
::L2853580::
	up6.Size = j
	up7.Position = K
::L9773275::
	o = up8
	t = up9(R)
	o.Text = t
	if i then goto L9323880 end
::L6263573::
	up12(R, i)
	return
::L9323880::
	o = up10
	o:Save(up11, R)
	goto L6263573
::L13409779::
	o = up5
	o:Tween(up6, {
		Size = j
	}, .12, Enum.EasingStyle.Quint)
	o = up5
	o:Tween(up7, {
		Position = K
	}, .12, Enum.EasingStyle.Quint)
	goto L9773275
end

function fn_14113382(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L14113382, 1 blocks
::L14113382::
	table.insert(up1.litGradients, arg1)
	return
end

function fn_14119228(arg1, arg2, arg3, arg4) -- entry L14119228, 1 blocks
::L14119228::
	up1.Text = ""
	DoSearch("")
	up2()
	c = up1
	c:CaptureFocus()
	return
end

function fn_14168777(arg1, arg2, arg3, arg4) -- entry L14168777, 1 blocks
::L14168777::
	c = up1
	c:Cancel()
	return
end

function fn_14330360(arg1) -- entry L14330360, 7 blocks
::L14330360::
	if c:Get("_opt_AutoTranslate",false) then goto L9550990 end
::L2870594::
	return
::L9550990::
	c = up1
	R = c:Get("_opt_Language", "English")
	i = up2.Languages[R]
	d = i
	if i then goto L14881214 end
::L13624493::
	if d then goto L619269 end
::L9203791::
	goto L2870594
::L619269::
	ApplyTranslation(i)
	goto L9203791
::L14881214::
	d = i ~= "en"
	goto L13624493
end

function fn_14367592() -- entry L14367592, 5 blocks
::L14367592::
	CircleClick(up1, up2.X, up2.Y)
	if up3.Text~="" then goto L2200765 end
::L2222309::
	return
::L2200765::
	if up4 then goto L6934961 end
::L7708245::
	up6(up3.Text)
	goto L2222309
::L6934961::
	c = up5
	c:ElementSave(up4, up3.Text)
	goto L7708245
end

function fn_14398128(arg1, arg2, arg3, arg4) -- entry L14398128, 12 blocks
::L14398128::
::L16423623::
	d = up1 > 0
	if R then goto L10681715 end
::L10010077::
	if d then goto L15493986 end
::L13073667::
	if not up2 then goto L11491130 end
::L13139968::
	return
::L11491130::
	up4()
	goto L13139968
::L15493986::
	d = up3
	if R then goto L6795837 end
::L16020213::
	if d then goto L3481344 end
::L12846256::
	task.wait(1)
	c = up1 - 1
	up1 = c
	goto L16423623
::L3481344::
	R = "(" .. (up1 .. "s)")
	up3.Text = R
	goto L12846256
::L6795837::
	d = up3.Parent
	goto L16020213
::L10681715::
	d = not up2
	goto L10010077
end

function fn_14425248(arg1) -- entry L14425248, 9 blocks
::L14425248::
	CircleClick(up1, up2.X, up2.Y)
	d = up3
	if R then goto L10254498 end
::L13594098::
	if d then goto L13366337 end
::L6105863::
	return
::L13366337::
	c = up4
	c:ApplySnapshot(up3.data, true)
	d = "ActiveProfile"
	R = up3.name
	i = up4
	if W then goto L6982436 end
::L3090980::
	R = "Slot " .. f[up5]
::L6982436::
	i[d] = R
	if up6 then goto L6676187 end
::L10928102::
	c = up7.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "Loaded profile \"" .. ((up3.name or "Slot") .. "\".")
	}, {
		Time = 2
	})
	RefreshSlots()
	goto L6105863
::L6676187::
	c = up6
	i = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", up4.ActiveProfile)
	c.Text = i
	goto L10928102
::L10254498::
	d = up3.data
	goto L13594098
end

function fn_14454601(arg1, arg2, arg3) -- entry L14454601, 11 blocks
::L14454601::
	R = arg1
	c = (# up1) < 1
	if c then goto L787061 end
::L16057870::
	W = c
	i = type(R) == "number"
	if N then goto L10195427 end
::L13198854::
	d = i
	c = W
	if i then goto L1171039 end
::L7417480::
	W = c
	i = type(R) == "string"
	if N then goto L14477730 end
::L139224::
	d = i
::L1171039::
	i = d
	if i then goto L529478 end
::L15224791::
	return
::L529478::
	up2(i)
	goto L15224791
::L14477730::
	i = table.find(up1, R)
	goto L139224
::L10195427::
	i = math.clamp(R, 1, # up1)
	goto L13198854
::L787061::
	return
end

function fn_14470045(arg1, arg2) -- entry L14470045, 5 blocks
::L14470045::
	if not up1 then goto L8935628 end
::L4975973::
	return
::L8935628::
	up2.Play(up3, {
		BackgroundColor3 = up4.HoverBg
	}, .15, Enum.EasingStyle.Quint)
	if up5 then goto L3101058 end
::L14584351::
	goto L4975973
::L3101058::
	up2.Play(up5, {
		Transparency = .5
	}, .15)
	goto L14584351
end

function fn_14530042(arg1, arg2, arg3, arg4) -- entry L14530042, 1 blocks
::L14530042::
	arg1[arg2] = arg3
	return
end

function fn_14608164(arg1, arg2) -- entry L14608164, 39 blocks
::L14608164::
	i = arg2
	R = arg1
	c = ipairs
	o = up1
	o = {
		c(unpack({
			o:GetChildren()
		}))
	}
	W = o[2]
	N = o[3]
	o = o[1]
::L611749::
	N, K = o(W, N)
	if N then goto L5577679 end
::L636035::
	W = not R
	if N then goto L10470196 end
::L14944024::
	W = not R.data
::L10470196::
	if W then goto L6350896 end
::L16749424::
	o = c
	N = i
	if i then goto L8211155 end
::L7073894::
	c = o
	i = N or ""
	N = 0
	t = {
		pairs(R.data)
	}
	l = t[3]
	j = t[1]
	K = t[2]
::L12350443::
	l, T = j(K, l)
	if l then goto L13292855 end
::L5043231::
	if N==0 then goto L10380556 end
::L857264::
	return
::L10380556::
	o = up2
	M = UDim2.new(1, 0, 0, 16)
	z = Enum.Font.Gotham
	Y = Color3.fromRGB(110, 85, 140)
	o("TextLabel", {
		BackgroundTransparency = 1,
		Size = M,
		Font = z,
		Text = ((i ~= "") and "(no matching keys)") or "(no data keys saved)",
		TextColor3 = Y,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 24
	}, up1)
	goto L857264
::L13292855::
	e = c
	o = l
	t = i == ""
	if x then goto L535489 end
::L13247864::
	B = c
	u = string.find
	v = string.lower
	x = u(v(unpack({
		tostring(o)
	})), i, 1, true)
	if A then goto L3343894 end
::L2379627::
	u = string.find
	v = string.lower
	x = u(v(unpack({
		tostring(T)
	})), i, 1, true)
::L3343894::
	t = x
::L535489::
	c = e
	if t then goto L6908878 end
::L7877908::
	goto L12350443
::L6908878::
	N = N + 1
	if N>40 then goto L464374 end
::L8147775::
	e = tostring(T)
	if type(T)=="table" then goto L2783304 end
::L10288581::
	if (#e)>32 then goto L8648522 end
::L364902::
	x = "#88bb99"
	if type(T)=="boolean" then goto L10016704 end
::L8554335::
	if type(T)=="number" then goto L7001361 end
::L9164227::
	if type(T)=="table" then goto L16499204 end
::L4459554::
	b = up2
	Fe = UDim2.new(1, 0, 0, 14)
	Je = Enum.Font.Gotham
	ce = string.format
	Ze = ce("<font color=\"#C084FC\">%s</font> <font color=\"#6B7280\">=</font> <font color=\"%s\">%s</font>", tostring(o), x, e)
	b("TextLabel", {
		BackgroundTransparency = 1,
		LayoutOrder = N,
		Size = Fe,
		Font = Je,
		RichText = true,
		Text = Ze,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 24
	}, up1)
	goto L7877908
::L16499204::
	x = "#FBBF24"
	goto L4459554
::L7001361::
	x = "#60A5FA"
	goto L4459554
::L10016704::
	x = (T and "#34D399") or "#F87171"
	goto L4459554
::L8648522::
	e = e:sub(1, 30) .. "\226\128\166"
	goto L364902
::L2783304::
	b = c
	L = {
		pcall(JsonEncode, T)
	}
	A = L[2]
	L = L[1]
	if u then goto L1964941 end
::L14671415::
	c = b
	e = L or "[table]"
	goto L10288581
::L1964941::
	L = A
	goto L14671415
::L464374::
	e = up2
	z = UDim2.new(1, 0, 0, 14)
	S = Enum.Font.Gotham
	u = {
		BackgroundTransparency = 1,
		LayoutOrder = N,
		Size = z,
		Font = S,
		Text = "\226\128\166 + more items",
		TextColor3 = Color3.fromRGB(130, 95, 170),
		TextSize = 9,
		ZIndex = 24
	}
	e("TextLabel", u, up1)
	goto L5043231
::L8211155::
	N = string.lower(i)
	goto L7073894
::L6350896::
	c = up2
	t = UDim2.new(1, 0, 0, 16)
	e = Enum.Font.Gotham
	v = Color3.fromRGB(110, 85, 140)
	c("TextLabel", {
		BackgroundTransparency = 1,
		Size = t,
		Font = e,
		Text = "(empty slot)",
		TextColor3 = v,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 24
	}, up1)
	return
::L5577679::
	l = K:IsA("TextLabel")
	if T then goto L15785014 end
::L16292311::
	l = K:IsA("Frame")
::L15785014::
	if l then goto L15463464 end
::L15295604::
	goto L611749
::L15463464::
	c = K:Destroy()
	goto L15295604
end

function fn_14632542(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L14632542, 52 blocks
::L14632542::
	R = arg1
	c = R:lower()
	d = c:gsub("^%s+", "")
	R = d:gsub("%s+$", "")
	up1.Visible = R ~= ""
	if R=="" then goto L6235462 end
::L939626::
	if not up2 then goto L7753649 end
::L14547934::
	e = {
		ipairs(up7)
	}
	T = e[3]
	K = e[1]
	l = e[2]
::L11690534::
	T, t = K(l, T)
	if T then goto L10298478 end
::L579397::
	e = {
		ipairs(up8)
	}
	T = e[3]
	K = e[1]
	l = e[2]
::L334125::
	T, t = K(l, T)
	if T then goto L8621579 end
::L15474800::
	K = {}
	j = {}
	l = {}
	u = {
		ipairs(up7)
	}
	x = u[3]
	e = u[2]
	t = u[1]
::L748713::
	x, B = t(e, x)
	if x then goto L2064965 end
::L10240467::
	T = table.sort
	T(l, closure(fn_14819643, {}))
	up3 = {}
	u = {
		ipairs(l)
	}
	e = u[1]
	B = u[3]
	x = u[2]
::L7438711::
	B, u = e(x, B)
	if B then goto L13215105 end
::L10621827::
	t = # up3
	up4.Visible = t > 0
	e = up4
	u = tostring(t)
	e.Text = u
	e = up4
	B = UDim2.new
	v = math.max
	u = B(0, v(22, ((# tostring(t)) * 8) + 10), 0, 14)
	e.Size = u
	if up5.UpdateSearchTreeUI(up3,R)<=0 then goto L5403947 end
::L914840::
	up5.UpdateHistoryUI(true)
::L3820915::
	if (#j)==0 then goto L13920983 end
::L4810662::
	up5.RefreshSectionVisibility()
	L = {
		ipairs(up8)
	}
	A = L[3]
	u = L[2]
	B = L[1]
::L12440279::
	A, v = B(u, A)
	if A then goto L3604021 end
::L3050384::
	return
::L3604021::
	if v.scrollFrame==j[1] then goto L10539038 end
::L900334::
	goto L12440279
::L10539038::
	up5.ActivateScroll(v.scrollFrame, v.tabButton, v.tabUnderline, true)
	goto L3050384
::L13920983::
	return
::L5403947::
	up6()
	goto L3820915
::L13215105::
	A = u.entry
	table.insert(up3, A)
	A.elementFrame.Visible = true
	if not K[A.scrollFrame] then goto L9375212 end
::L16611534::
	S = {
		ipairs(up8)
	}
	M = S[3]
	L = S[1]
	b = S[2]
::L15369447::
	M, z = L(b, M)
	if M then goto L7782023 end
::L15269699::
	goto L7438711
::L7782023::
	if z.scrollFrame==A.scrollFrame then goto L7450891 end
::L13877279::
	goto L15369447
::L7450891::
	z.tabButton.Visible = true
	goto L15269699
::L9375212::
	K[A.scrollFrame] = true
	table.insert(j, A.scrollFrame)
	goto L16611534
::L2064965::
	A = up5.ScoreSearchEntry(B, R)
	if A>0 then goto L11358191 end
::L16041614::
	goto L748713
::L11358191::
	table.insert(l, {
		entry = B,
		score = A
	})
	goto L16041614
::L8621579::
	t.tabButton.Visible = false
	t.scrollFrame.Visible = false
	e = t.tabButton
	u = Color3.fromRGB(200, 200, 200)
	e.TextColor3 = u
	t.tabUnderline.Visible = false
	goto L334125
::L10298478::
	t.elementFrame.Visible = false
	goto L11690534
::L7753649::
	up2 = true
	o = up10
	up9 = o
	goto L14547934
::L6235462::
	up2 = false
	up3 = {}
	up4.Visible = false
	up5.UpdateSearchTreeUI({}, "")
	up6()
	l = {
		ipairs(up7)
	}
	N = l[1]
	o = l[2]
	j = l[3]
::L13068555::
	j, K = N(o, j)
	if j then goto L2617717 end
::L15537808::
	l = {
		ipairs(up8)
	}
	j = l[3]
	N = l[1]
	o = l[2]
::L13025349::
	j, K = N(o, j)
	if j then goto L5701094 end
::L1682936::
	if up9 then goto L2114888 end
::L4167198::
	if (#up8)>0 then goto L3889469 end
::L7631892::
::L1810369::
	return
::L3889469::
	N = up8[1]
	up5.ActivateScroll(N.scrollFrame, N.tabButton, N.tabUnderline)
	goto L7631892
::L2114888::
	l = {
		ipairs(up8)
	}
	o = l[2]
	N = l[1]
	j = l[3]
::L9513548::
	j, K = N(o, j)
	if j then goto L5007640 end
::L15991633::
	up9 = nil
	goto L1810369
::L5007640::
	if K.scrollFrame==up9 then goto L12334111 end
::L6718852::
	goto L9513548
::L12334111::
	up5.ActivateScroll(K.scrollFrame, K.tabButton, K.tabUnderline, true)
	goto L15991633
::L5701094::
	K.tabButton.Visible = true
	goto L13025349
::L2617717::
	K.elementFrame.Visible = true
	K.sectionFrame.Visible = true
	K.sectionScroll.Visible = true
	l = K.sectionScroll
	e = UDim2.new(0, 240, 0, 260)
	l.Size = e
	goto L13068555
end

function fn_14638046(arg1, arg2, arg3, arg4) -- entry L14638046, 1 blocks
::L14638046::
	c = up1.Notification
	c:Notify({
		Title = "Key Required",
		Description = "Verify your key in the Key System panel to unlock this feature."
	}, {
		Time = 3
	})
	return
end

function fn_14664067() -- entry L14664067, 3 blocks
::L14664067::
	up1.Visible = false
	up2.Visible = false
	if up3 then goto L13393885 end
::L3717206::
	return
::L13393885::
	CloseFullLock()
	goto L3717206
end

function fn_14793414(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L14793414, 1 blocks
::L14793414::
	arg1._Keys[arg2] = true
	return
end

function fn_14819643(arg1, arg2) -- entry L14819643, 1 blocks
::L14819643::
	return arg1.score>arg2.score
end

function fn_14834215(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L14834215, 9 blocks
::L14834215::
	R = arg1
	if up1~=nil then goto L8749104 end
::L4479296::
	d = R.UserInputType == Enum.UserInputType.Touch
	if i then goto L8727952 end
::L4103028::
	d = R.UserInputType == Enum.UserInputType.MouseButton1
::L8727952::
	if d then goto L11604670 end
::L14127085::
	return
::L11604670::
	up2 = true
	up1 = R
	i = R.UserInputType
	up3 = i
	up4 = true
	if up5 then goto L366762 end
::L2556889::
	up6(R.Position.X)
	N = up7
	j = up8
	K = {
		Size = UDim2.new(0, up9, 0, up9)
	}
	N:Tween(j, K, .12, Enum.EasingStyle.Back)
	goto L14127085
::L366762::
	up5.ScrollingEnabled = false
	goto L2556889
::L8749104::
	return
end

function fn_14943015(arg1, arg2, arg3) -- entry L14943015, 1 blocks
::L14943015::
	ApplyBackgroundImage("")
	c = up1
	c:Save("_opt_BgImage", "")
	up2.BuildBgImageCards()
	return
end

function fn_14963951(arg1, arg2) -- entry L14963951, 1 blocks
::L14963951::
	return unpack({c:JSONDecode(arg1)})
end

function fn_14973287() -- entry L14973287, 29 blocks
::L14973287::
	c = not up1
	if c then goto L488029 end
::L772505::
	if up2 then goto L3910963 end
::L14154155::
	i = c
	up2 = true
	R = up3
	if W then goto L12142639 end
::L1398211::
	c = i
	if R then goto L13098755 end
::L298972::
	j = {
		ipairs(up5)
	}
	N = j[3]
	i = j[1]
	W = j[2]
::L15921447::
	N, o = i(W, N)
	if N then goto L5141089 end
::L15304291::
	R = task.defer
	R(closure(fn_15630559, {
		up6,
		up7
	}))
	return
::L5141089::
	j = o.frame
	l = c
	K = j
	if j then goto L12601608 end
::L9954490::
	c = l
	if K then goto L6570339 end
::L5098661::
	goto L15921447
::L6570339::
	T = c
	K = o.blocker
	l = K
	if K then goto L3240265 end
::L6644055::
	c = T
	if l then goto L14887862 end
::L10094387::
	l = ipairs
	B = {
		l(unpack({
			j:GetChildren()
		}))
	}
	e = B[3]
	t = B[2]
	T = B[1]
::L11927093::
	e, x = T(t, e)
	if e then goto L7001649 end
::L355662::
	j.BackgroundTransparency = .4
	l = j:FindFirstChild("AccentBar")
	if l then goto L3777392 end
::L7516613::
	goto L5098661
::L3777392::
	l.BackgroundTransparency = 0
	goto L7516613
::L7001649::
	u = c
	B = x:IsA("ImageLabel")
	if A then goto L14517272 end
::L2535965::
	c = u
	if B then goto L1006188 end
::L9104034::
	goto L11927093
::L1006188::
	x:Destroy()
	goto L9104034
::L14517272::
	B = x.Image == "rbxassetid://7733992528"
	goto L2535965
::L14887862::
	K:Destroy()
	goto L10094387
::L3240265::
	l = K.Parent
	goto L6644055
::L12601608::
	K = j.Parent
	goto L9954490
::L13098755::
	up4.Visible = false
	goto L298972
::L12142639::
	R = up4
	goto L1398211
::L3910963::
	return
::L488029::
	up2 = false
	return
end

function fn_14986292() -- entry L14986292, 5 blocks
::L14986292::
	c = up1
	c:Save("_opt_Language", up2)
	R = up2
	up3.Text = R
	up4 = false
	up5 = ""
	up6.Text = ""
	up6.Visible = false
	up7.BuildLangItems()
	R = up7.CalcListHeight
	i = R(# up7.GetFilteredLanguages())
	R = up8
	o = UDim2.new(1, 0, 0, i)
	R.Size = o
	R = up9
	N = up10
	o = {
		Size = UDim2.new(1, - (up11 * 2), 0, 0)
	}
	R:Tween(N, o, .22, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
	R = up9
	N = up8
	o = {
		Size = UDim2.new(1, 0, 0, 0)
	}
	R:Tween(N, o, .22, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
	if up12() then goto L7923490 end
::L235381::
	return
::L7923490::
	R = up13.Languages[up2]
	if R then goto L14211115 end
::L112459::
	goto L235381
::L14211115::
	task.spawn(ApplyTranslation, R)
	goto L112459
end

function fn_15057397(arg1, arg2, arg3, arg4, arg5) -- entry L15057397, 23 blocks
::L15057397::
	if up1 then goto L7635434 end
::L4690086::
	d = up2
	if R then goto L3301761 end
::L3728113::
	if d then goto L3663676 end
::L16063132::
	d = up4
	if R then goto L12221502 end
::L14421756::
	if d then goto L1136234 end
::L13543970::
	d = up6
	if R then goto L15641077 end
::L7320836::
	if d then goto L4158195 end
::L7869562::
	if TabContainer then goto L16581307 end
::L5386142::
	if MainContainer then goto L10334943 end
::L4413990::
	if up8 then goto L9131452 end
::L14448130::
	if up9 then goto L10403061 end
::L8434512::
	c = up10
	i = UDim2.new(1, - 34, 0, 16)
	c.Position = i
	c = up11
	i = UDim2.new(1, - 8, 0, 16)
	c.Position = i
	up10.Image = "rbxassetid://124967485209478"
	up12.BackgroundTransparency = 0
	c = up13
	i = UDim2.new(1, - 65, 0, 16)
	c.Size = i
	c = up14
	i = UDim2.new(1, - 65, 0, 12)
	c.Size = i
	R = up15.Position
	c = up15
	W = UDim2.new(R.X.Scale, R.X.Offset - 150, R.Y.Scale, R.Y.Offset - 149)
	c.Position = W
	c = up15
	W = UDim2.new(0, 210, 0, 32)
	c.Size = W
	up1 = true
	return
::L10403061::
	up9.Visible = false
	goto L8434512
::L9131452::
	up8.Visible = false
	goto L14448130
::L10334943::
	MainContainer.Visible = false
	goto L4413990
::L16581307::
	TabContainer.Visible = false
	goto L5386142
::L4158195::
	up7()
	goto L7869562
::L15641077::
	d = up6()
	goto L7320836
::L1136234::
	up5()
	goto L13543970
::L12221502::
	d = up4()
	goto L14421756
::L3663676::
	up3()
	goto L16063132
::L3301761::
	d = up2()
	goto L3728113
::L7635434::
	return
end

function fn_15084644(arg1, arg2, arg3) -- entry L15084644, 1 blocks
::L15084644::
	i = O()
	f[i] = arg2
	c = f[i].AccentColor
	W = O()
	f[W] = c
	c = f[W].R
	d = f[W].G
	o = f[W]
	K = O()
	N = o.B
	o = O()
	j = O()
	f[o] = c
	f[j] = d
	f[K] = N
	c = up1
	e = Color3.fromRGB(10, 7, 18)
	L = UDim2.new(1, 0, 0, 72)
	ne[2] = .1
	y = up1
	d = c("Frame", {
		BackgroundColor3 = e,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		Size = L,
		ZIndex = 23,
		ClipsDescendants = true,
		Children = {
			unpack({
				y("UICorner", {
					CornerRadius = UDim.new(0, 12)
				})
			})
		}
	}, arg1)
	N = O()
	f[N] = d
	c = up1
	e = f[W]
	b = UDim2.new(1, 0, 1, 0)
	P = up1
	y = P("UICorner", {
		CornerRadius = UDim.new(0, 12)
	})
	P = up1
	Je = ColorSequence.new
	me = ColorSequenceKeypoint.new
	ce = me(0, unpack({
		Color3.new(f[o] * .6, f[j] * .6, f[K] * .6)
	}))
	me = ColorSequenceKeypoint.new
	T = {
		BackgroundColor3 = e,
		BackgroundTransparency = .88,
		BorderSizePixel = 0,
		Size = b,
		ZIndex = 23,
		Children = {
			y,
			unpack({
				P("UIGradient", {
					Color = Je({
						ce,
						unpack({
							me(1, unpack({
								Color3.fromRGB(6, 4, 12)
							}))
						})
					}),
					Rotation = 135
				})
			})
		}
	}
	c("Frame", T, f[N])
	up1("UIStroke", {
		Color = f[W],
		Transparency = .65,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	}, f[N])
	c = up1
	e = f[W]
	v = UDim2.new(0, 0, 0, 10)
	b = UDim2.new(0, 3, 1, - 20)
	P = up1
	y = P("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	P = up1
	Je = ColorSequence.new
	me = ColorSequenceKeypoint.new
	ce = me(0, unpack({
		Color3.fromRGB(255, 255, 255)
	}))
	T = {
		BackgroundColor3 = e,
		BorderSizePixel = 0,
		Position = v,
		Size = b,
		ZIndex = 25,
		Children = {
			y,
			unpack({
				P("UIGradient", {
					Color = Je({
						ce,
						unpack({
							ColorSequenceKeypoint.new(1, f[W])
						})
					}),
					Rotation = 90
				})
			})
		}
	}
	c("Frame", T, f[N])
	c = up1
	x = Color3.new(f[o] * .18, f[j] * .18, f[K] * .18)
	v = UDim2.new(0, 14, .5, - 20)
	b = UDim2.new(0, 40, 0, 40)
	P = up1
	y = P("UICorner", {
		CornerRadius = UDim.new(1, 0)
	})
	E = up1("UIStroke", {
		Color = f[W],
		Transparency = .4,
		Thickness = 1.5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	})
	P = up1
	ce = Vector2.new(.5, .5)
	Ge = UDim2.new(.5, 0, .5, 0)
	de = UDim2.new(0, 20, 0, 20)
	T = {
		BackgroundColor3 = x,
		BorderSizePixel = 0,
		Position = v,
		Size = b,
		ZIndex = 25,
		Children = {
			y,
			E,
			unpack({
				P("ImageLabel", {
					BackgroundTransparency = 1,
					AnchorPoint = ce,
					Position = Ge,
					Size = de,
					Image = f[i].IconImg,
					ImageColor3 = f[W],
					ZIndex = 26
				})
			})
		}
	}
	d = c("Frame", T, f[N])
	l = O()
	f[l] = d
	c = up1
	A = UDim2.new(0, 64, 0, 14)
	L = UDim2.new(1, - 160, 0, 18)
	b = Enum.Font.FredokaOne
	z = f[i].Label
	y = Color3.fromRGB(240, 235, 255)
	c("TextLabel", {
		BackgroundTransparency = 1,
		Position = A,
		Size = L,
		Font = b,
		Text = z,
		TextColor3 = y,
		TextSize = 15,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 25
	}, f[N])
	c = up1
	A = UDim2.new(0, 64, 0, 34)
	L = UDim2.new(1, - 160, 0, 12)
	b = Enum.Font.Gotham
	z = f[i].SubLabel
	y = Color3.new(f[o] * .8, f[j] * .8, f[K] * .8)
	c("TextLabel", {
		BackgroundTransparency = 1,
		Position = A,
		Size = L,
		Font = b,
		Text = z,
		TextColor3 = y,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 25
	}, f[N])
	c = up1
	B = Vector2.new(1, .5)
	A = Color3.new(f[o] * .14, f[j] * .14, f[K] * .14)
	S = UDim2.new(1, - 10, .5, 0)
	y = UDim2.new(0, 68, 0, 28)
	me = up1
	ce = me("UICorner", {
		CornerRadius = UDim.new(0, 8)
	})
	Ze = up1("UIStroke", {
		Color = f[W],
		Transparency = .45,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	})
	me = up1
	Re = ColorSequence.new
	We = ColorSequenceKeypoint.new
	oe = Color3.new
	Ce = f[o] * .28
	ne[1] = .28
	Ne = We(0, unpack({
		oe(Ce, f[j] * .28, f[K] * ne[1])
	}))
	We = ColorSequenceKeypoint.new
	se = Color3.new
	ae = f[o] * .1
	ge = f[j]
	ne[1] = .1
	qe = ge * ne[1]
	ne[1] = f[K]
	t = {
		AnchorPoint = B,
		BackgroundColor3 = A,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		Position = S,
		Size = y,
		AutoButtonColor = false,
		Text = "",
		ZIndex = 26,
		Children = {
			ce,
			Ze,
			unpack({
				me("UIGradient", {
					Color = Re({
						Ne,
						unpack({
							We(1, unpack({
								se(ae, qe, ne[1] * ne[2])
							}))
						})
					}),
					Rotation = 90
				})
			})
		}
	}
	d = c("TextButton", t, f[N])
	T = O()
	f[T] = d
	c = up1
	v = UDim2.new(1, 0, 1, 0)
	d = c("TextLabel", {
		BackgroundTransparency = 1,
		Size = v,
		Font = Enum.Font.GothamBold,
		Text = f[i].BadgeText or "COPY",
		TextColor3 = f[W],
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Center,
		ZIndex = 27
	}, f[T])
	t = O()
	f[t] = d
	d = f[T]
	e = d:FindFirstChildOfClass("UIStroke")
	x = O()
	f[x] = e
	d = f[N]
	e = d:FindFirstChildOfClass("UIStroke")
	B = O()
	f[B] = e
	d = up1
	A = {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = "",
		ZIndex = 28,
		AutoButtonColor = false
	}
	e = d("TextButton", A, f[N])
	A = closure(fn_7080054, {
		up2,
		N,
		o,
		j,
		K,
		B,
		l
	})
	d = e.MouseEnter
	d:Connect(A)
	d = e.MouseLeave
	A = closure(fn_4725401, {
		up2,
		N,
		B,
		l
	})
	d:Connect(A)
	d = f[T].MouseEnter
	A = closure(fn_10172906, {
		up2,
		T,
		o,
		j,
		K,
		x
	})
	d:Connect(A)
	d = f[T].MouseLeave
	u = d.Connect
	u(d, closure(fn_2742542, {
		up2,
		T,
		o,
		j,
		K,
		x
	}))
	A = f[T]
	u = closure(fn_16369682, {
		T,
		up3,
		i,
		t,
		up2,
		o,
		j,
		K,
		x,
		B,
		W
	})
	d = A.MouseButton1Click
	d:Connect(u)
	d = e.MouseButton1Click
	d:Connect(u)
	return f[N]
end

function fn_15128608(arg1, arg2, arg3, arg4, arg5) -- entry L15128608, 7 blocks
::L15128608::
	R = arg1
	i = arg2
	if not up1 then goto L13484897 end
::L1361246::
	if up2 then goto L12410068 end
::L16377199::
	if i then goto L7645190 end
::L210811::
	return
::L7645190::
	up1(R, true)
	goto L210811
::L12410068::
	up1(R, i)
	goto L210811
::L13484897::
	return
end

function fn_15131030(arg1, arg2, arg3) -- entry L15131030, 1 blocks
::L15131030::
	return up1
end

function fn_15139377(arg1, arg2, arg3, arg4) -- entry L15139377, 1 blocks
::L15139377::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .35
	}, .18)
	return
end

function fn_15187645(arg1) -- entry L15187645, 1 blocks
::L15187645::
	CircleClick(up1, up2.X, up2.Y)
	c = up3
	R = up4
	i = {
		Position = UDim2.new(1, - 6, .5, 0)
	}
	c:Tween(R, i, .1, Enum.EasingStyle.Quart)
	d = task
	i = closure(fn_1323226, {
		up3,
		up4
	})
	d.delay(.1, i)
	up5()
	return
end

function fn_15308841(arg1, arg2, arg3, arg4, arg5) -- entry L15308841, 1 blocks
::L15308841::
	R = up1(up2, up3)
	i = up2.AbsoluteSize
	c = up4
	W = up5
	N = {
		Position = R,
		Size = UDim2.new(0, i.X, 0, i.Y)
	}
	c:Tween(W, N, .25, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
	c = up4
	c:Tween(up2, {
		Rotation = 0
	}, .25, Enum.EasingStyle.Quint)
	c = up4
	c:Tween(up6, {
		Transparency = 1
	}, .3)
	N = closure(fn_16483591, {
		up5,
		up7
	})
	task.delay(.25, N)
	return
end

function fn_15353536(arg1) -- entry L15353536, 1 blocks
::L15353536::
	R = O()
	closure(fn_12918836, {
		R
	})
	closure(fn_8644600, {
		up1,
		R
	})
	f[R] = {}
	return {["Play"]=i,["Cancel"]=N}
end

function fn_15521294(arg1) -- entry L15521294, 31 blocks
::L15521294::
	c = ipairs
	W = up1
	W = {
		c(unpack({
			W:GetChildren()
		}))
	}
	i = W[3]
	R = W[2]
	W = W[1]
::L15227881::
	i, o = W(R, i)
	if i then goto L6078285 end
::L1118365::
	R = up2(up3.FolderName)
	i = up4(up3.FolderName)
	W = {}
	K = {
		ipairs(R)
	}
	N = K[1]
	o = K[2]
	j = K[3]
::L3580856::
	j, l = N(o, j)
	if j then goto L15514679 end
::L12845215::
	K = {
		ipairs(i)
	}
	N = K[1]
	j = K[3]
	o = K[2]
::L8124800::
	j, l = N(o, j)
	if j then goto L13994047 end
::L13569287::
	l = "BackgroundColor3"
	c = up3
	N = c:Get("_opt_BgImage", "")
	j = "TextButton"
	c = up5
	t = c
	x = c
	e = N == ""
	if B then goto L15892412 end
::L14133238::
	T = e
	if e then goto L8181946 end
::L10028014::
	T = Color3.fromRGB(14, 10, 22)
::L8181946::
	u = UDim2.new(1, - 8, 0, 28)
	A = Enum.Font.GothamBold
	z = Color3.fromRGB(185, 165, 215)
	Je = up5
	K = {
		[l] = T,
		BorderSizePixel = 0,
		Size = u,
		Font = A,
		Text = "None (theme default)",
		TextColor3 = z,
		TextSize = 10,
		ZIndex = 24,
		LayoutOrder = 0,
		Children = {
			unpack({
				Je("UICorner", {
					CornerRadius = UDim.new(0, 7)
				})
			})
		}
	}
	c = t(j, K, up1).MouseButton1Click
	K = closure(fn_14943015, {
		up3,
		up6
	})
	c:Connect(K)
	T = {
		ipairs(W)
	}
	l = T[3]
	K = T[2]
	j = T[1]
::L15792719::
	l, t = j(K, l)
	if l then goto L15217318 end
::L8375885::
	j = up1
	K = j:FindFirstChildOfClass("UIListLayout")
	if K then goto L2694061 end
::L1554433::
	return
::L2694061::
	FitScrollCanvas(up1, K, "Y", 4)
	goto L1554433
::L15217318::
	T = l
	e = t:match("([^/\\]+)$")
	if x then goto L8984099 end
::L13272619::
	e = t
::L8984099::
	x = O()
	A = "TextButton"
	f[x] = e
	e = up7(t)
	L = "BackgroundColor3"
	B = N == t
	c = up5
	z = B
	M = c
	S = c
	if B then goto L1056232 end
::L2943042::
	b = z
	if z then goto L494731 end
::L7524878::
	b = Color3.fromRGB(14, 10, 22)
::L494731::
	S = "Size"
	c = M
	M = "BorderSizePixel"
	z = 0
	y = UDim2.new(1, - 8, 0, 28)
	P = "Font"
	E = Enum.Font.GothamBold
	Y = "Text"
	me = c
	k = c
	Qe = B
	H = ((B and "\226\156\147 ") or "") .. (((e and "[VID] ") or "") .. f[x])
	Fe = "TextColor3"
	if B then goto L15797319 end
::L15834970::
	Je = Qe
	if Qe then goto L1719819 end
::L1906597::
	Je = Color3.fromRGB(160, 140, 200)
::L1719819::
	ce = Enum.TextTruncate.AtEnd
	Ge = Enum.TextXAlignment.Left
	ie = up5
	We = ie("UICorner", {
		CornerRadius = UDim.new(0, 7)
	})
	ie = up5
	v = {
		[L] = b,
		[M] = z,
		[S] = y,
		[P] = E,
		[Y] = H,
		[Fe] = Je,
		TextSize = 10,
		TextTruncate = ce,
		TextXAlignment = Ge,
		ZIndex = 24,
		LayoutOrder = T,
		Children = {
			We,
			unpack({
				ie("UIPadding", {
					PaddingLeft = UDim.new(0, 10)
				})
			})
		}
	}
	u = k(A, v, up1)
	A = O()
	f[A] = t
	v = u.MouseButton1Click
	b = closure(fn_8006249, {
		A,
		up6,
		up8,
		x
	})
	L = v.Connect
	h(A)
	h(x)
	L(v, b)
	goto L15792719
::L15797319::
	Qe = Color3.fromRGB(210, 180, 255)
	goto L15834970
::L1056232::
	z = Color3.fromRGB(22, 14, 38)
	goto L2943042
::L15892412::
	e = Color3.fromRGB(22, 14, 38)
	goto L14133238
::L13994047::
	table.insert(W, l)
	goto L8124800
::L15514679::
	table.insert(W, l)
	goto L3580856
::L6078285::
	if o:IsA("TextButton") then goto L11938476 end
::L13900525::
	goto L15227881
::L11938476::
	o:Destroy()
	goto L13900525
end

function fn_15531816() -- entry L15531816, 1 blocks
::L15531816::
	up1.Playing = true
	c = up1
	c:Play()
	return
end

function fn_15540229(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L15540229, 3 blocks
::L15540229::
	W = O()
	o = {}
	i = O()
	f[i] = arg2
	f[W] = arg3
	j = Enum.Font.GothamBold
	K = Enum.Font.Gotham
	c = up1
	T = 11
	u = ThemeColor("Primary")
	z = UDim2.new(1, - 24, 0, 0)
	S = Enum.AutomaticSize.Y
	H = up1
	Fe = H("UICorner", {
		CornerRadius = UDim.new(0, 6)
	})
	H = up1
	Ze = Color3.fromRGB(110, 55, 190)
	Je = H("UIStroke", {
		Color = Ze,
		Transparency = .88,
		Thickness = 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	})
	H = up1
	Ge = UDim.new(0, 10)
	de = UDim.new(0, 10)
	Re = UDim.new(0, 14)
	k = H("UIPadding", {
		PaddingTop = Ge,
		PaddingBottom = de,
		PaddingLeft = Re,
		PaddingRight = UDim.new(0, 14)
	})
	H = up1
	Ge = Enum.SortOrder.LayoutOrder
	e = {
		BackgroundColor3 = u,
		BackgroundTransparency = .4,
		BorderSizePixel = 0,
		Size = z,
		AutomaticSize = S,
		ClipsDescendants = false,
		Children = {
			Fe,
			Je,
			k,
			unpack({
				H("UIListLayout", {
					SortOrder = Ge,
					Padding = UDim.new(0, 6)
				})
			})
		}
	}
	t = c("Frame", e, up2)
	RegisterKeyLocked(t, arg4)
	c = up1
	M = UDim2.new(1, 0, 0, 0)
	z = Enum.AutomaticSize.Y
	H = Color3.fromRGB(230, 230, 240)
	d = c("TextLabel", {
		Name = "TitleLabel",
		BackgroundTransparency = 1,
		Size = M,
		AutomaticSize = z,
		LayoutOrder = 1,
		Font = j,
		TextColor3 = H,
		TextSize = 13,
		TextWrapped = true,
		RichText = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		Text = f[i] or "Default Title",
		ZIndex = 3
	}, t)
	x = c
	e = O()
	f[e] = d
	d = f[W]
	if B then goto L855569 end
::L13314827::
	x = d
	d = up1
	z = Color3.fromRGB(110, 55, 190)
	H = UDim2.new(1, 0, 0, 1)
	Ze = up1
	Re = NumberSequence.new
	Ne = NumberSequenceKeypoint.new(0, 0)
	he = NumberSequenceKeypoint.new(.7, 0)
	B = d("Frame", {
		Name = "Divider",
		BackgroundColor3 = z,
		BackgroundTransparency = .78,
		BorderSizePixel = 0,
		Size = H,
		LayoutOrder = 2,
		Visible = x,
		ZIndex = 3,
		Children = {
			unpack({
				Ze("UIGradient", {
					Transparency = Re({
						Ne,
						he,
						unpack({
							NumberSequenceKeypoint.new(1, 1)
						})
					})
				})
			})
		}
	}, t)
	u = O()
	f[u] = B
	d = up1
	y = UDim2.new(1, 0, 0, 0)
	E = Enum.AutomaticSize.Y
	Qe = Color3.fromRGB(165, 165, 185)
	B = d("TextLabel", {
		Name = "DescLabel",
		BackgroundTransparency = 1,
		Size = y,
		AutomaticSize = E,
		LayoutOrder = 3,
		Font = K,
		TextColor3 = Qe,
		TextSize = T,
		TextWrapped = true,
		RichText = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		Text = f[W] or "",
		Visible = x,
		ZIndex = 3
	}, t)
	A = O()
	f[A] = B
	RegisterTranslatable(f[e], f[i])
	RegisterTranslatable(f[A], f[W])
	d = closure(fn_7609776, {
		i,
		e
	})
	o.RefreshTitle = d
	d = closure(fn_10854233, {
		W,
		A,
		u
	})
	o.RefreshDesc = d
	return o
::L855569::
	d = f[W] ~= ""
	goto L13314827
end

function fn_15563731(arg1, arg2) -- entry L15563731, 3 blocks
::L15563731::
	R = arg1
	if not R.GUI then goto L2114056 end
::L10249303::
	return
::L2114056::
	i = Instance.new("ScreenGui", up1)
	W = up2()
	i.Name = W
	d = Enum.ZIndexBehavior.Global
	i.ZIndexBehavior = d
	i.ResetOnSpawn = false
	i.IgnoreGuiInset = true
	up3(i)
	d = up4
	x = UDim2.new(1, - 20, 1, - 52)
	u = UDim2.new(1, - 10, 0, 10)
	v = Vector2.new(1, 0)
	y = up4
	Qe = Enum.HorizontalAlignment.Right
	ce = Enum.SortOrder.LayoutOrder
	Ge = Enum.VerticalAlignment.Top
	W = d("Frame", {
		Name = "STX_Notification",
		BackgroundTransparency = 1,
		Size = x,
		Position = u,
		AnchorPoint = v,
		ClipsDescendants = false,
		ZIndex = 999,
		Parent = i,
		Children = {
			unpack({
				y("UIListLayout", {
					Name = "STX_NotificationUIListLayout",
					HorizontalAlignment = Qe,
					SortOrder = ce,
					VerticalAlignment = Ge,
					Padding = UDim.new(0, 6)
				})
			})
		}
	})
	R.GUI = W
	goto L10249303
end

function fn_15587703() -- entry L15587703, 15 blocks
::L15587703::
	c = up1
	o = c
	R = up2
	K = c
	W = "Position"
	j = up3
	if l then goto L10186583 end
::L14563587::
	N = j
	if j then goto L9818447 end
::L14950925::
	N = UDim2.new(0, 2, .5, 0)
::L9818447::
	c = o
	j = (up3 and 0) or .5
	i = {
		[W] = N,
		ImageTransparency = j,
		ImageColor3 = Color3.fromRGB(255, 255, 255)
	}
	c:Tween(R, i, .3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	l = c
	N = "TextColor3"
	i = up3
	up4.Enabled = i
	j = c
	d = up1
	i = up5
	K = up3
	if T then goto L12068873 end
::L577160::
	o = K
	if K then goto L3476958 end
::L1047408::
	o = Color3.fromRGB(120, 120, 120)
::L3476958::
	c = j
	d:Tween(i, {
		[N] = o
	}, .3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	R = c
	d = up6
	if i then goto L5088852 end
::L5356111::
	if d then goto L16441632 end
::L2981471::
	up10(up3)
	up11()
	return
::L16441632::
	d = up9
	d:ElementSave(up6, up3)
	goto L2981471
::L5088852::
	W = c
	i = not up7
	if N then goto L5432010 end
::L15752229::
	i = up8.HasKeyAccess()
::L5432010::
	d = i
	goto L5356111
::L12068873::
	K = Color3.fromRGB(230, 230, 230)
	goto L577160
::L10186583::
	j = UDim2.new(0, 19, .5, 0)
	goto L14563587
end

function fn_15589216(arg1, arg2) -- entry L15589216, 1 blocks
::L15589216::
	up1.Visible = true
	up1.Looped = true
	up1.Volume = 0
	R = up2
	up1.Video = R
	up1.Playing = true
	c = up1
	c:Play()
	return
end

function fn_15609190() -- entry L15609190, 19 blocks
::L15609190::
	c = ipairs
	W = up1
	W = {
		c(unpack({
			W:GetChildren()
		}))
	}
	R = W[2]
	i = W[3]
	W = W[1]
::L5838199::
	i, o = W(R, i)
	if i then goto L7062767 end
::L10107561::
	c = up2
	R = c:Get("_opt_UIFont", "Gotham")
	j = {
		ipairs(up3)
	}
	W = j[2]
	i = j[1]
	N = j[3]
::L5167529::
	N, j = i(W, N)
	if N then goto L848134 end
::L9804638::
	i = up1
	W = i:FindFirstChildOfClass("UIListLayout")
	if W then goto L15224931 end
::L13496832::
	return
::L15224931::
	FitScrollCanvas(up1, W, "Y", 4)
	goto L13496832
::L848134::
	e = "BackgroundColor3"
	o = N
	T = "TextButton"
	K = R == j.Name
	u = K
	c = up4
	A = c
	B = c
	if K then goto L4994484 end
::L1263796::
	x = u
	if u then goto L2611968 end
::L5635276::
	x = Color3.fromRGB(14, 10, 22)
::L2611968::
	u = 0
	A = "Size"
	c = B
	B = "BorderSizePixel"
	L = UDim2.new(1, - 8, 0, 26)
	v = "Font"
	b = j.Bold
	E = K
	y = c
	z = ((K and "\226\156\147 ") or "") .. j.Name
	M = "Text"
	S = "TextColor3"
	Y = c
	if K then goto L2363919 end
::L9360463::
	P = E
	if E then goto L13297096 end
::L14508591::
	P = Color3.fromRGB(160, 140, 200)
::L13297096::
	Qe = up4
	t = {
		[e] = x,
		[B] = u,
		[A] = L,
		[v] = b,
		[M] = z,
		[S] = P,
		TextSize = 11,
		ZIndex = 24,
		LayoutOrder = o,
		Children = {
			unpack({
				Qe("UICorner", {
					CornerRadius = UDim.new(0, 7)
				})
			})
		}
	}
	l = y(T, t, up1)
	T = j.Name
	t = O()
	f[t] = T
	x = closure(fn_975388, {
		up5,
		t,
		up6
	})
	T = l.MouseButton1Click
	T:Connect(x)
	h(t)
	goto L5167529
::L2363919::
	E = Color3.fromRGB(210, 180, 255)
	goto L9360463
::L4994484::
	u = Color3.fromRGB(22, 14, 38)
	goto L1263796
::L7062767::
	if o:IsA("TextButton") then goto L8793086 end
::L11467117::
	goto L5838199
::L8793086::
	o:Destroy()
	goto L11467117
end

function fn_15622150(arg1, arg2) -- entry L15622150, 3 blocks
::L15622150::
	if up1 then goto L1823981 end
::L11645768::
	up4()
	return
::L1823981::
	up1 = false
	up2 = nil
	up3.ShowSettingsPage()
	goto L11645768
end

function fn_15630559(arg1, arg2) -- entry L15630559, 6 blocks
::L15630559::
	N = {
		ipairs(up1)
	}
	i = N[3]
	R = N[2]
	W = N[1]
::L16159201::
	i, o = W(R, i)
	if i then goto L12417402 end
::L6709516::
	return
::L12417402::
	c = O()
	f[c] = o
	o = c
	K = closure(fn_1830175, {
		o,
		up2
	})
	pcall(K)
	if (i%12)==0 then goto L1657162 end
::L10644396::
	h(o)
	goto L16159201
::L1657162::
	task.wait()
	goto L10644396
end

function fn_15655868(arg1, arg2, arg3, arg4, arg5) -- entry L15655868, 1 blocks
::L15655868::
	pcall(up1.SyncKeyAccess)
	return
end

function fn_15794352() -- entry L15794352, 1 blocks
::L15794352::
	return up1
end

function fn_15796798(arg1, arg2) -- entry L15796798, 3 blocks
::L15796798::
	R = arg1
	R.Settings = {}
	if isfolder(R.FolderName) then goto L5465491 end
::L4607521::
	return
::L5465491::
	c = pcall
	i = writefile
	N = R.FolderName
	c(i, N .. ("/" .. R:GetFileName()), "{}")
	goto L4607521
end

function fn_15875446(arg1, arg2) -- entry L15875446, 8 blocks
::L15875446::
	W = 1
	R = arg1
	i = arg2
	c = R:lower()
	R = c
	N = 1
	i = i:lower()
::L16567574::
	j = c
	o = W <= (# i)
	if K then goto L10846558 end
::L3328976::
	c = j
	if o then goto L6231087 end
::L14738295::
	return W>(#i)
::L6231087::
	i:sub(W, W)
	if j==K(R,N,N) then goto L6050517 end
::L1894525::
	N = N + 1
	goto L16567574
::L6050517::
	W = W + 1
	goto L1894525
::L10846558::
	o = N <= (# R)
	goto L3328976
end

function fn_15905598() -- entry L15905598, 15 blocks
::L15905598::
	if up1 then goto L5375220 end
::L8850918::
	d = up3
	if R then goto L4844610 end
::L12183429::
	if d then goto L4426576 end
::L4031711::
	d = up5
	if R then goto L4590624 end
::L10784187::
	if d then goto L4576457 end
::L1878218::
	d = up7
	if R then goto L995361 end
::L13519775::
	if d then goto L16278446 end
::L16248250::
	up9.Visible = true
	up10.Visible = true
	return
::L16278446::
	up8()
	goto L16248250
::L995361::
	d = up7()
	goto L13519775
::L4576457::
	up6()
	goto L1878218
::L4590624::
	d = up5()
	goto L10784187
::L4426576::
	up4()
	goto L4031711
::L4844610::
	d = up3()
	goto L12183429
::L5375220::
	up2()
	goto L8850918
end

function fn_15915517(arg1, arg2, arg3, arg4, arg5, arg6) -- entry L15915517, 7 blocks
::L15915517::
	R = arg1
	if up1~=nil then goto L6038390 end
::L11189156::
	d = R.UserInputType == Enum.UserInputType.Touch
	if i then goto L11992866 end
::L7236805::
	d = R.UserInputType == Enum.UserInputType.MouseButton1
::L11992866::
	if d then goto L500490 end
::L4772403::
	return
::L500490::
	up2 = true
	up1 = R
	up3(R.Position.X)
	i = up4
	i:Tween(up5, {
		Transparency = .45
	}, .15)
	i = up4
	N = up6
	o = {
		Size = UDim2.new(0, 15, 0, 15)
	}
	i:Tween(N, o, .15, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	goto L4772403
::L6038390::
	return
end

function fn_16010888(arg1, arg2, arg3, arg4, arg5) -- entry L16010888, 19 blocks
::L16010888::
	R = {}
	i = {}
	j = {
		pairs(up1.RegisteredElements)
	}
	W = j[2]
	N = j[3]
	o = j[1]
::L3048307::
	N, K = o(W, N)
	if N then goto L9251003 end
::L2176606::
	W = closure(fn_12016307, {
		up1
	})
	K = {
		ipairs(R)
	}
	j = K[3]
	N = K[1]
	o = K[2]
::L1071470::
	j, l = N(o, j)
	if j then goto L7614481 end
::L9089873::
	Finish()
	return
::L7614481::
	T = up2 .. (":" .. l)
	t = up1.Cache[T]
	e = t ~= nil
	c = not t
	if c then goto L4730785 end
::L12043444::
	u = c
	B = t
	if t then goto L13052559 end
::L7111370::
	B = l
::L13052559::
	W(l, B)
	if not e then goto L2034388 end
::L7559613::
	goto L1071470
::L2034388::
	task.wait()
	goto L7559613
::L4730785::
	t = TranslateText(up2, l)
	c = up1.Cache
	c[T] = t
	goto L12043444
::L9251003::
	j = N
	l = j
	if j then goto L5970696 end
::L4106746::
	if l then goto L10300074 end
::L2861538::
	goto L3048307
::L10300074::
	l = K.original
	if not i[l] then goto L10283086 end
::L8502535::
	goto L2861538
::L10283086::
	i[l] = true
	table.insert(R, l)
	goto L8502535
::L5970696::
	l = j.Parent
	goto L4106746
end

function fn_16057988(arg1, arg2, arg3) -- entry L16057988, 24 blocks
::L16057988::
	c = {}
	i = c
	W = c
	R = arg1
	d = isfolder
	if N then goto L7711244 end
::L3173188::
	if not d then goto L5192102 end
::L1746899::
	o = {
		pcall(listfiles, R)
	}
	W = o[2]
	d = not o[1]
	if o then goto L15281851 end
::L2228977::
	d = not W
::L15281851::
	if d then goto L15169841 end
::L10334521::
	K = {
		ipairs(W)
	}
	o = K[2]
	j = K[3]
	K = K[1]
::L3979175::
	j, T = K(o, j)
	if j then goto L8582199 end
::L7907659::
	table.sort(i)
	return i
::L8582199::
	c = string.lower
	t = c(T)
	e = t:find("%.webm")
	if x then goto L9958665 end
::L2652003::
	B = c
	x = t:find("%.mp4")
	if u then goto L16621922 end
::L1729668::
	A = c
	u = t:find("%.mov")
	if v then goto L12359333 end
::L11107823::
	L = c
	v = t:find("%.mkv")
	if b then goto L16661616 end
::L12656510::
	v = t:find("%.avi")
::L16661616::
	u = v
::L12359333::
	x = u
::L16621922::
	e = x
::L9958665::
	if e then goto L4764618 end
::L973573::
	goto L3979175
::L4764618::
	table.insert(i, T)
	goto L973573
::L15169841::
	return i
::L5192102::
	return i
::L7711244::
	o = c
	N = listfiles
	if j then goto L11884226 end
::L16136633::
	d = N
	goto L3173188
::L11884226::
	N = isfolder(R)
	goto L16136633
end

function fn_16140210(arg1, arg2) -- entry L16140210, 1 blocks
::L16140210::
	R = up2
	up1.Text = R
	DoSearch(up2)
	up3()
	return
end

function fn_16169894(arg1, arg2, arg3, arg4) -- entry L16169894, 1 blocks
::L16169894::
	table.insert(up1.accentElements, {
		arg1,
		arg2,
		arg3 or "Accent"
	})
	return
end

function fn_16178182(arg1, arg2, arg3, arg4, arg5) -- entry L16178182, 3 blocks
::L16178182::
	if up1~=up2 then goto L1333739 end
::L16269761::
	return
::L1333739::
	c = up3
	R = up4
	i = {
		BackgroundColor3 = Color3.fromRGB(18, 13, 30)
	}
	c:Tween(R, i, .15, Enum.EasingStyle.Quint)
	c = up3
	c:Tween(up5, {
		Transparency = .55
	}, .15)
	goto L16269761
end

function fn_16181534(arg1, arg2, arg3, arg4) -- entry L16181534, 7 blocks
::L16181534::
	R = arg1
	if not up1 then goto L13576200 end
::L16776632::
	if R~=up2 then goto L9731494 end
::L2161070::
	up1 = false
	up2 = nil
	up3 = nil
	up4 = false
	if up5 then goto L742686 end
::L3521409::
	N = up6
	j = up7
	o = N.Tween
	K = {
		Size = UDim2.new(0, up8, 0, up8)
	}
	o(N, j, K, .15, Enum.EasingStyle.Quint)
	N = up9
	N:Save(up10, up11)
	up12(up11, true)
	return
::L742686::
	up5.ScrollingEnabled = true
	goto L3521409
::L9731494::
	return
::L13576200::
	return
end

function fn_16259897(arg1, arg2) -- entry L16259897, 12 blocks
::L16259897::
	R = arg1
	if R==true then goto L6736248 end
::L12632334::
	if type(R)~="table" then goto L12841590 end
::L5681764::
	W = nil
	i = false
	j = {
		ipairs(R)
	}
	o = j[3]
	N = j[2]
	j = j[1]
::L13561263::
	o, l = j(N, o)
	if o then goto L1648102 end
::L15931141::
	return i, W
::L1648102::
	if l==true then goto L16404128 end
::L9323385::
	if type(l)=="string" then goto L13916372 end
::L11638215::
	goto L13561263
::L13916372::
	W = l
	goto L11638215
::L16404128::
	i = true
	goto L11638215
::L12841590::
	return false, nil
::L6736248::
	return true, nil
end

function fn_16349111(arg1) -- entry L16349111, 1 blocks
::L16349111::
	c = up1
	c:Tween(up2, {
		BackgroundTransparency = .28
	}, .2, Enum.EasingStyle.Quint)
	c = up1
	R = up3
	i = {
		TextColor3 = Color3.fromRGB(235, 235, 245)
	}
	c:Tween(R, i, .2)
	c = up1
	R = up4
	o = UDim2.new(1, - 9, .5, 0)
	i = {
		Position = o,
		TextColor3 = Color3.fromRGB(216, 180, 254)
	}
	c:Tween(R, i, .2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	return
end

function fn_16369682(arg1, arg2) -- entry L16369682, 3 blocks
::L16369682::
	CircleClick(up1, up2.X, up2.Y)
	R = closure(fn_13114216, {
		up3
	})
	pcall(R)
	up4.Text = "COPIED"
	c = up4
	i = Color3.fromRGB(100, 255, 160)
	c.TextColor3 = i
	c = up5
	R = up1
	i = {
		BackgroundColor3 = Color3.new(up6 * .1, up7 * .4, up8 * .25)
	}
	c:Tween(R, i, .12, Enum.EasingStyle.Quint)
	c = up5
	c:Tween(up9, {
		Transparency = 0
	}, .12)
	c = up5
	c:Tween(up10, {
		Transparency = .15
	}, .12)
	i = closure(fn_12158981, {
		up4,
		up3,
		up11,
		up5,
		up1,
		up6,
		up7,
		up8,
		up9,
		up10
	})
	task.delay(1.4, i)
	if up3.OnClick then goto L8886158 end
::L15806804::
	return
::L8886158::
	up3.OnClick(up3.CopyText)
	goto L15806804
end

function fn_16479300() -- entry L16479300, 14 blocks
::L16479300::
	if up1 then goto L646475 end
::L5503134::
	c = true
	up1 = true
	d = up2
	d:Tween(up3, {
		TextTransparency = 1
	}, .2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
	d = up2
	d:Tween(up4, {
		TextTransparency = 1
	}, .2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
	d = up2
	d:Tween(up5, {
		TextTransparency = 1
	}, .2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
	d = up2
	d:Tween(up6, {
		BackgroundTransparency = 1
	}, .2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
	d = up2
	d:Tween(up7, {
		BackgroundTransparency = 1
	}, .2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
	o = {
		ipairs(up8)
	}
	R = o[1]
	W = o[3]
	i = o[2]
::L15833959::
	W, o = R(i, W)
	if W then goto L12943215 end
::L7079988::
	task.wait(.2)
	d = up2
	i = up9
	W = {
		Size = UDim2.new(0, up10, 0, up11)
	}
	d:Tween(i, W, .28, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	task.wait(.28)
	d = up2
	d:Tween(up12, {
		TextTransparency = 0
	}, .18, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	task.wait(.35)
	d = up2
	i = up9
	W = {
		Size = UDim2.new(0, 0, 0, 0)
	}
	d:Tween(i, W, .18, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
	d = up2
	d:Tween(up12, {
		TextTransparency = 1
	}, .12, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
	task.wait(.18)
	R = c
	d = up9
	if i then goto L737839 end
::L10479284::
	if d then goto L7360965 end
::L12220770::
	up13.ActiveMessages[up14] = nil
	if up15.Id then goto L14760390 end
::L689577::
	return
::L14760390::
	up13.ActiveById[up15.Id] = nil
	goto L689577
::L7360965::
	d = up9
	d:Destroy()
	goto L12220770
::L737839::
	d = up9.Parent
	goto L10479284
::L12943215::
	d = up2
	d:Tween(o.Instance, {
		BackgroundTransparency = 1,
		TextTransparency = 1
	}, .2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
	if o.Stroke then goto L2111631 end
::L1029598::
	goto L15833959
::L2111631::
	d = up2
	d:Tween(o.Stroke, {
		Transparency = 1
	}, .2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
	goto L1029598
::L646475::
	return
end

function fn_16483591(arg1, arg2, arg3) -- entry L16483591, 1 blocks
::L16483591::
	up1.Visible = false
	up2.Visible = false
	return
end

function fn_16498339(arg1, arg2, arg3) -- entry L16498339, 1 blocks
::L16498339::
	c = up1
	i = UDim2.new(.04 * up2, 0, 0, 0)
	c.Position = i
	up1.Visible = true
	c = up3
	R = up1
	i = {
		Position = UDim2.new(0, 0, 0, 0)
	}
	c:Tween(R, i, .28, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	d = task
	i = closure(fn_13915136, {
		up4
	})
	d.delay(.28, i)
	return
end

function fn_16529760(arg1, arg2, arg3, arg4, arg5) -- entry L16529760, 1 blocks
::L16529760::
	return
end

function fn_16560094(arg1, arg2, arg3, arg4) -- entry L16560094, 12 blocks
::L16560094::
	if not up1 then goto L3566307 end
::L5427301::
	CircleClick(up2, up3.X, up3.Y)
	c = up4
	R = c:Get("_saveSlots", {})
	if (#R)>=10 then goto L13387799 end
::L10390327::
	i = R[up1]
	if i then goto L1979881 end
::L12582270::
	return
::L1979881::
	W = {}
	j = i.data
	K = pairs
	if l then goto L12473178 end
::L8782150::
	j = {}
::L12473178::
	K = {
		K(j)
	}
	o = K[3]
	j = K[1]
	N = K[2]
::L3149761::
	o, l = j(N, o)
	if o then goto L13211208 end
::L411816::
	c = table.insert
	K = (i.name or "Profile") .. " (Copy)"
	e = os.date("%Y-%m-%d %H:%M")
	c(R, {
		name = K,
		data = W,
		created = e,
		updated = os.date("%Y-%m-%d %H:%M")
	})
	N = up4
	N:Save("_saveSlots", R)
	N = up5.Notification
	N:Notify({
		Title = "Save Manager",
		Description = "Cloned \"" .. ((i.name or "profile") .. "\".")
	}, {
		Time = 2
	})
	RefreshSlots()
	goto L12582270
::L13211208::
	W[o] = l
	goto L3149761
::L13387799::
	c = up5.Notification
	c:Notify({
		Title = "Save Manager",
		Description = "Maximum 10 profiles reached."
	}, {
		Time = 2
	})
	return
::L3566307::
	return
end

function fn_16575680(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- entry L16575680, 5 blocks
::L16575680::
	j = arg6
	K = arg2
	W = arg3
	l = up1
	o = arg5
	R = arg1
	N = arg4
	if i then goto L4180513 end
::L2095066::
	K = Enum.EasingStyle.Cubic
::L4180513::
	c = l
	l = W
	T = c
	if W then goto L4558311 end
::L16376422::
	l = Enum.EasingDirection.Out
::L4558311::
	return unpack({T(R,K,l,N or 0,o or false,j or 0)})
end

function fn_16639571(arg1, arg2, arg3, arg4, arg5) -- entry L16639571, 8 blocks
::L16639571::
	N = {
		ipairs(up1)
	}
	i = N[3]
	R = N[2]
	W = N[1]
::L16470451::
	i, o = W(R, i)
	if i then goto L7543244 end
::L7761848::
	return
::L7543244::
	if o.Optional then goto L4619977 end
::L1498219::
	if o.SetInteractable then goto L151855 end
::L13215871::
	goto L16470451
::L151855::
	o.SetInteractable(up2)
	goto L13215871
::L4619977::
	K = up2
	o.Frame.Visible = K
	goto L1498219
end

function fn_16736119(arg1, arg2) -- entry L16736119, 1 blocks
::L16736119::
	R = up2.original
	up1.Text = R
	return
end

function fn_16748999() -- entry L16748999, 11 blocks
::L16748999::
	R = up1.List
	i = nil
	c = ipairs
	o = {
		c(R)
	}
	W = o[2]
	N = o[3]
	o = o[1]
::L16526506::
	N, K = o(W, N)
	if N then goto L3176876 end
::L688901::
	if i then goto L11654312 end
::L10371852::
	table.insert(R, up2.favKey)
	W = up3.Notification
	W:Notify({
		Title = "Favorites",
		Description = "Pinned " .. (up2.title or "")
	}, {
		Time = 2
	})
::L3250421::
	W = up4
	W:Save("_favorites", R)
	if up1.Refresh then goto L6505062 end
::L3260407::
	W = up5
	T = Color3.fromRGB(255, 200, 80)
	B = UDim2.new(1, 0, 1, 0)
	L = up5
	j = {
		BackgroundColor3 = T,
		BackgroundTransparency = .4,
		Size = B,
		ZIndex = 40,
		Children = {
			unpack({
				L("UICorner", {
					CornerRadius = UDim.new(0, 6)
				})
			})
		}
	}
	N = W("Frame", j, up6)
	W = O()
	f[W] = N
	N = up7
	j = f[W]
	T = Enum.EasingStyle.Quad
	e = closure(fn_9839019, {
		W
	})
	N:Tween(j, {
		BackgroundTransparency = 1
	}, .4, T, nil, e)
	h(W)
	return
::L6505062::
	up1.Refresh()
	goto L3260407
::L11654312::
	table.remove(R, i)
	W = up3.Notification
	W:Notify({
		Title = "Favorites",
		Description = "Removed " .. (up2.title or "")
	}, {
		Time = 2
	})
	goto L3250421
::L3176876::
	j = N
	c = K == up2.favKey
	if c then goto L9816722 end
::L11201195::
	goto L16526506
::L9816722::
	c = j
	i = c
	goto L688901
end
