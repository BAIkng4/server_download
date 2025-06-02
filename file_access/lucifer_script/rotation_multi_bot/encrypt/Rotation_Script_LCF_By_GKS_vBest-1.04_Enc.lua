-------------------- [ ABOUT ] --------------------
--ROTATION SCRIPT LUCIFER MULTIBOT BY GROW KING SCRIPTS
--FOLLOW OUR INFORMATION AND SOCIAL MEDIA https://linktr.ee/growks
---------------------------------------------------


login_data_settings = {--Type the /gks-login command to get login data
	userID = 0,
	code = "CODE"
}

proxy_settings = {
--Proxy option
	add_proxy_option = "OFF",
	external_proxy_list = "OFF|File Path",
	proxy_list = {
	--Example: IP:Port:Username:Password
		
	},
	external_change_proxy_list = "OFF|File Path",
	change_proxy_list = {
		
	},
-------------------------
--Preferences
	proxy_limit = 3,
	bypass_logon_option = "OFF",
	external_proxy_bypass_list = "OFF|File Path",
	proxy_bypass_list = {
	----Example: IP:Port:Username:Password|Proxy Type: HTTP or SOCKS5
		
	},
}

bot_settings = {
--Add bot option
	external_bot_list = "OFF|File Path",
	bot_list = {
	--Example: GrowID/Mail/Token|Password|Steam Account (Required for steam platform)|Recovery (Optional)|Sms Link (Optional)|OTP Secret (Optional)|Platform: Windows, Android, MacOS, IOS, UbiConnect, AppleID, Steam|Mac (Optional)|Rid (Optional)|AAP Option (Optional)
		"Mail|Password|-|Recovery|-|-|WINDOWS|-|-|NO"
	},
	external_change_bot_list = "OFF|File Path",
	change_bot_list = {
		
	},
-------------------------
--Pickaxe option
	pickaxe_option = "OFF",
	pickaxe_list = {
	--Example: World|World Id|Pickaxe Id
		"World|World Id|98"
	},
-------------------------
--Preferences
	change_bot_on_maximum_level_option = "OFF", maximum_level = 20,
	rare_clothes_option = "ON",
	remove_bot_option = "OFF",
	move_animation_option = "ON", punch_animation_option = "ON",
	move_speed = 235,
	move_range = 3,
	start_script_delay_option = "ON", start_script_delayMS = 8000,
}

rotation_settings = {
--Rotation option
	external_rotation_world_list = "OFF|File Path",
	rotation_world_list = {
	--Example: World|World Id|Block Id
		"World|World Id|4584",
	},
	spread_rotation_world_option = "ON",
	rotation_world_limit = 1,
	start_rotation_world_list = 1,
	
	seed_world_list = {
	--Example: World|World Id|Marker
		"World|World Id|3",
	},
-------------------------
--pnb option
	pnb_world_option = "RANDOMWORLD", --Option: Rotation world (MAIN) or (RANDOMWORLD)
	pnb_range = 5, pnb_xy = "1|23",
-------------------------
--Preferences
	rotation_looping_option = "ON",
	take_floating_block_option = "ON",
}

advanced_settings = {
--Auto buy option
	buy_pack_option = "OFF",
	pack_list = {
	--Example: Pack Name|Pack Price|Pack Item Id
		"world_lock|2000|242",
	},
	pack_world_list = {
	--Example: World|World Id|Marker|Max Drop Pack
		"World|World Id|16|3",
	},
-------------------------
--Webhook option
	webhook_option = "OFF", webhook_edit_option = "OFF",
	bot_information_link_list = {
	--Example: Url|Webhook Id
		"Url|0",
	},
	dropped_item_link_list = {
		"Url|0",
	},
	reconnect_link_list = {
		"Url|0",
	},

	webhook_all_bot_option = "OFF", webhook_all_bot_edit_option = "OFF", webhook_all_bot_delayS = 30,
	all_bot_link = "Url|0",
-------------------------
--Leveling option
	leveling_option = "HARVEST", --Option: HARVEST
-------------------------
--Delay option
	harvest_delayMS = 80,
	plant_delayMS = 80,
	hit_delayMS = 120,
	place_delayMS = 90,
	drop_delayMS = 1000,
	auto_buy_delayMS = 1000,
	wear_delayMS = 1000,
	join_world_delayMS = 8000,
	reconnect_delayMS = 20000,
	hard_join_world_delayM = 5,
	max_reconnect_delayM = 5,
	maintenance_delayM = 20,
	version_update_delayM = 20,
	mod_entered_delayM = 10,
-------------------------
--Preferences
	auto_trash = "ON",
	trash_id = { 5024, 5026, 5028, 5032, 5034, 5036, 5038, 5040, 5042, 5044, 7162, 7164, 9204 },
	stop_script = "ON",
	max_reconnect = 10,
	
	malady_check_option = "OFF", 
	consume_vial_list = {--This feature can work if the malady_check_option feature is enabled
	--Example: ON/OFF|Vile Vial Id|World|World Id
		"OFF|8542|World|World Id",
	},
	auto_surg_option = "OFF", --This feature can work if the malady_check_option feature is enabled
	auto_surg_world_list = {
	--Example: World|World Id|Auto Surg Price
		"World|World Id|2",
	},
	random_chat = "OFF", random_chat_delayS = 8,
	chat_list = {
		
	},
}





--Don't delete or change the script function below!
return(function(...)local I={"\073\104\099\110\104\051\061\061";"\097\116\117\065\070\050\068\090";"\052\116\118\083\102\082\119\111","\043\068\101\076\069\104\055\113\102\080\101\048\098\049\117\112";"\055\076\071\112\100\079\057\100\103\068\072\120\043\090\057\088\097\109\061\061","\112\087\088\054\071\074\098\106";"\055\080\082\050\080\117\090\061";"\068\076\117\115\097\076\068\112\066\067\098\101\073\076\068\121\073\076\068\084\066\119\061\061","\070\050\049\057\073\076\055\072";"\047\076\097\061";"\073\076\051\061";"\073\102\081\051\069\102\055\048","\097\050\068\090\047\102\068\090\069\104\098\057\069\116\071\101","\071\111\102\051\053\116\086\061","\103\102\086\061";"\080\080\101\105\080\079\117\076\047\083\098\101\055\067\097\082\122\076\051\061","\070\104\099\112\047\065\066\061","\047\076\111\057\070\079\055\090\097\116\101\074\070\051\061\061","\086\107\110\069\104\111\079\081";"\080\076\111\088\103\102\081\078\119\050\111\084\070\068\086\071";"\103\043\101\099\103\102\081\114\043\076\117\054\069\043\057\100\054\043\075\061";"\047\102\117\090\069\050\075\061","\084\085\090\121\119\056\110\061";"\097\116\068\071\073\102\068\120\073\109\061\061","\097\116\117\065\097\050\068\090";"\103\065\098\070\080\090\072\081\103\050\057\054\103\083\099\103\100\119\061\061","\097\079\099\114\047\088\119\061","\090\103\114\117\048\105\110\061","\104\049\111\115\070\104\098\057\073\076\117\052\047\076\043\061","\097\107\106\049\055\088\114\079","\121\105\109\056\098\051\061\061","\122\105\054\115\085\051\061\061","\104\049\111\110\070\102\082\061","\097\117\072\071\102\104\119\081\119\116\073\057\070\101\070\057","\110\071\082\088","\121\072\077\090","\070\104\051\102";"\097\076\117\114\097\088\106\061","\073\079\101\051\070\119\061\061";"\098\073\108\067\071\119\071\099","\103\082\118\122\110\051\061\061","\070\065\055\049\069\075\061\061";"\069\088\101\090\070\119\061\061";"\073\076\111\120\073\079\099\114\047\116\097\061","\080\076\111\088\103\102\081\078\119\050\111\084\070\068\086\120";"\082\108\122\048\081\054\084\078\102\085\086\061","\080\065\114\106\122\104\119\061","\112\100\049\076\087\108\101\103";"\069\050\057\057\097\075\061\061","\074\119\114\100","\097\116\117\074\070\076\111\115","\088\101\081\107";"\100\079\114\088\100\102\049\119\043\104\099\057\102\104\055\082\068\068\119\061";"\080\121\068\079\097\090\049\051\100\068\057\105\068\090\097\065\119\051\061\061";"\073\076\111\074\073\102\049\052\070\104\066\061","\057\119\057\081\119\073\056\100\050\101\085\086\068\115\090\081\054\072\112\080\099\087\066\069\099\072\114\080\083\113\097\049\076\049\084\061";"\047\065\106\061";"\068\055\077\104\086\084\043\061","\070\050\068\090\047\102\068\090\069\104\098\057\069\116\071\101","\098\076\075\065\119\049\068\067\068\079\055\056\106\088\070\084";"\047\083\067\061","\104\049\111\114\047\116\098\101\122\109\061\061";"\097\065\098\112\103\102\081\088";"\106\083\076\081\048\075\061\061";"\047\076\068\074";"\075\114\047\075";"\070\076\111\116\103\102\071\101","\069\104\055\120\070\104\099\090","\070\119\061\061";"\116\053\084\111\081\103\090\061";"\072\050\121\071\112\052\056\047\121\105\108\049\110\087\072\117\085\081\109\103\098\081\101\072\075\107\052\111\078\106\097\065\050\113\054\090\054\116\082\100\117\113\079\065\117\102\057\089\088\055\043\089\114\103\089\098\116\080\119\099\099\052\114\054\052\078\048\090\087\098\053\072\090\053\078\069\056\108\057\050\097\108\121\088\098\101\089\118\074\086\113\082\118\113\055\117\057\111\115\087\120\051\076\120\047\090\116\066\090\049\086\085\122\056\070\068\106\048\071\105\065\084\112\081\055\057\047\099\082\056\099\068","\115\111\105\047\075\119\061\061";"\106\120\084\082\119\068\117\106\068\104\056\110\047\088\068\066\069\051\061\061";"\047\102\117\090\103\109\061\061";"\098\076\055\080\103\090\081\067\055\088\043\065\102\116\081\054\098\068\097\061","\104\087\081\076\107\101\121\112\118\097\090\117\065\107\056\113\101\114\049\078\077\052\056\076\065\086\116\068\109\085\043\069\111\116\073\074\112\115\122\069\084\084\067\056\084\049\077\083\115\083\071\085\104\121\081\120\118\049\097\099\050\055\098\113\113\082\066\077\110\054\072\109\048\084\103\113\051\120\115\097\065\072\083\102";"\103\104\056\057\103\104\099\120";"\097\050\068\090\080\102\068\090\103\076\111\084","\104\072\090\070\088\104\090\061","\106\117\114\081\070\065\101\051\103\084\073\114\103\116\098\120","\115\076\043\061";"\069\050\111\112\047\065\068\090\103\102\081\101","\104\049\111\088\069\051\061\061";"\085\075\112\085\082\070\055\090";"\097\050\068\110\070\102\055\090";"\116\065\097\061";"\103\079\098\090\097\067\055\110\103\102\068\074\073\109\061\061","\047\076\111\057\070\109\061\061";"\054\079\098\090\097\067\055\110\103\102\068\074\073\109\061\061","\100\052\075\101\070\108\072\114\100\075\061\061";"\099\055\051\061","\085\082\074\088\117\070\085\105";"\097\090\115\102\047\090\098\052\069\050\099\082\100\117\068\116\097\117\067\061";"\106\076\057\100\073\076\114\113\047\043\070\119\119\050\114\102","\112\049\114\102\047\113\048\120";"\100\051\061\061","\080\102\068\090\103\076\111\084","\077\110\052\113","\073\118\108\053";"\090\099\112\070\115\047\113\053";"\047\076\111\088\103\102\081\078\070\076\117\090\069\068\111\120\070\104\098\090\103\102\081\088\097\051\061\061";"\103\079\052\113";"\055\119\097\089\088\051\061\061","\070\116\101\074\070\109\061\061","\069\068\056\110\043\068\119\120\119\102\068\116\043\049\055\102\054\090\090\061","\047\083\117\088\078\056\043\065","\047\083\066\061","\051\075\075\104";"\082\120\122\050\067\121\070\100","\105\049\102\112\074\051\061\061";"\070\116\071\107\047\065\066\061";"\047\117\114\116\080\116\071\050\068\076\115\117\098\050\110\050\047\109\061\061","\069\050\111\084\070\119\061\061","\068\100\083\088\080\109\061\061";"\055\043\098\083\106\067\070\099\100\067\049\121\054\067\067\071\102\116\086\061";"\066\057\109\061","\065\073\084\121\049\075\061\061","\071\107\100\070\116\065\075\061";"\102\102\117\048\054\102\081\108\069\102\081\079";"\099\088\105\101\110\054\097\101";"\097\076\055\057\047\076\051\061","\047\116\068\082\073\109\061\061","\102\068\084\049\068\068\099\090\073\084\049\108\069\120\098\067","\109\047\104\119\080\119\061\061","\073\104\055\101\097\084\101\067","\047\080\055\098\112\109\061\061","\110\103\080\055\088\083\047\065\088\050\103\102\074\081\106\085\077\108\119\061","\069\050\111\074\069\050\117\090","\098\099\102\056";"\069\051\061\061","\098\090\081\068\100\104\117\043\102\117\101\082\119\090\117\090","\113\069\118\097\116\075\061\061","\043\116\073\110\106\050\055\105\080\068\070\119\098\102\097\090\055\119\061\061","";"\054\068\099\052\043\120\073\049\097\102\114\055\043\121\099\099\043\109\061\061";"\107\051\122\055\075\054\105\079","\080\076\111\088\103\102\081\078\119\050\111\084\070\068\086\112";"\098\088\078\111\118\114\109\079\055\070\074\083\087\100\072\051\056\057\055\098\075\102\084\061";"\103\104\117\071\080\049\056\108\070\090\071\090\100\102\055\066\119\043\110\061";"\098\088\101\101\102\117\114\114\047\104\068\101\073\090\081\106","\078\110\114\050\114\117\075\061";"\069\119\061\061","\118\102\052\107\072\119\061\061";"\100\075\061\061","\070\116\101\106\080\076\101\074\070\090\073\107\047\050\119\061";"\073\076\117\052\047\076\043\061";"\115\052\077\105","\119\080\070\107\122\102\057\084\080\079\101\053\119\102\057\110\080\104\067\061","\097\116\068\115\047\065\070\101","\076\112\117\049\055\075\086\061";"\043\115\047\057\104\076\047\090"}for x,i in ipairs({{1;151},{1;92},{93,151}})do while i[1]<i[2]do I[i[1]],I[i[2]],i[1],i[2]=I[i[2]],I[i[1]],i[1]+1,i[2]-1 end end local function x(x)return I[x+23002]end do local x=table.insert local i=math.floor local X=I local o=string.len local n={M=10;L=6;["\052"]=34,x=51;["\053"]=42,h=23,i=58;r=41,y=35,["\043"]=20;q=11;P=19;j=12,n=44;a=28;["\047"]=27;f=22,Y=62,E=24;["\057"]=33,N=31,["\055"]=13;b=17,K=32;v=59,m=0;C=4,d=14,U=15;S=3,R=56,O=7;u=5,W=63;s=45,l=2;w=16;G=49,D=21;F=25,p=50;["\050"]=54;k=47;I=29,["\056"]=1,T=36;Q=57,["\051"]=48,J=46;c=9,X=39;e=37;t=38,o=61;["\049"]=53,["\054"]=18;V=60;z=30,B=8,["\048"]=43,H=40;Z=52,A=55;g=26}local K=type local c=string.sub local w=string.char local z=table.concat for I=1,#X,1 do local C=X[I]if K(C)=="\115\116\114\105\110\103"then local K=o(C)local l={}local O=1 local r=0 local A=0 while O<=K do local I=c(C,O,O)local X=n[I]if X then r=r+X*64^(3-A)A=A+1 if A==4 then A=0 local I=i(r/65536)local X=i((r%65536)/256)local o=r%256 x(l,w(I,X,o))r=0 end elseif I=="\061"then x(l,w(i(r/65536)))if O>=K or c(C,O+1,O+1)~="\061"then x(l,w(i((r%65536)/256)))end break end O=O+1 end X[I]=z(l)end end end return(function(I,i,X,o,n,K,c,w,z,C,l,O,r,A,V,B,F,Z,e,M,P,h)C,h,r,l,B,Z,F,z,M,e,w,A,P,V,O=function(I)local x,i=1,I[1]while i do A[i],x=A[i]-1,x+1 if A[i]==0 then A[i],r[i]=nil,nil end i=I[x]end end,function(I,x)local i=F(x)local X=function(X,o,n)return P(I,{X;o,n},x,i)end return X end,{},function(I,x)local i=F(x)local X=function(X,o,n,K,c,w,z)return P(I,{X;o,n;K;c,w,z},x,i)end return X end,function()V=1+V A[V]=1 return V end,function(I,x)local i=F(x)local X=function(X,o,n,K,c,w)return P(I,{X;o;n,K,c;w},x,i)end return X end,function(I)for x=1,#I,1 do A[I[x]]=1+A[I[x]]end if X then local i=X(true)local o=n(i)o[x(-22999)],o[x(-22978)],o[x(-22877)]=I,C,function()return-2931505 end return i else return o({},{[x(-22978)]=C;[x(-22999)]=I,[x(-22877)]=function()return-2931505 end})end end,function(I)A[I]=A[I]-1 if A[I]==0 then A[I],r[I]=nil,nil end end,function(I,x)local i=F(x)local X=function(X)return P(I,{X},x,i)end return X end,function(I,x)local i=F(x)local X=function(X,o,n,K,c)return P(I,{X;o;n,K;c},x,i)end return X end,function(I,x)local i=F(x)local X=function(...)return P(I,{...},x,i)end return X end,{},function(X,o,n,K)local c,w,C,A,V,F,P,S,f,b,J,U,y,k,H,d,s,j,m,W,N,Y,a,g,u,t,Q,p,R,G,D,L,q,E,T,v,I7,x7,i7,X7,o7,n7,K7,c7,w7,z7,C7,l7,O7,r7,A7,V7,B7,F7,Z7,e7,M7,P7,h7,S7,f7,b7,J7,U7,y7,k7,H7,d7,s7,j7,m7,W7,N7 while X do if X<8649389 then if X<4755957 then if X<2418189 then if X<984352 then if X<523896 then if X<389274 then if X<124548 then M7=r[n[3]]Y=32 c7=13 O7=M7%Y e7=r[n[4]]d=2 b7=r[n[2]]T=r[n[3]]B7=T-O7 T=32 m=B7/T t=c7-m I7=d^t H=b7/I7 I7=1 F7=e7(H)d=256 e7=4294967296.0 Y=F7%e7 F7=2 e7=F7^O7 M7=Y/e7 e7=r[n[4]]O7=nil b7=M7%I7 I7=4294967296.0 H=b7*I7 F7=e7(H)b7=65536 e7=r[n[4]]H=e7(M7)Y=F7+H F7=65536 e7=Y%F7 X=14191187 H=Y-e7 M7=nil F7=H/b7 b7=256 H=e7%b7 I7=e7-H Y=nil c7=256 b7=I7/d d=256 I7=F7%d t=F7-I7 d=t/c7 F7=nil t={H;b7,I7,d}d=nil I7=nil b7=nil e7=nil H=nil r[n[1]]=t else G=2 X=O7==G X=X and 9500692 or 4845213 end else if X<471171 then O7=o[1]G=r[n[1]]b7=x(-22873)e7=x(-22985)F7=5792577478831 M7=r[n[2]]I7=18988440686289 Y=M7(e7,F7)X=G[Y]G=x(-22909)d=x(-22962)Y=x(-22972)I[G]=X t=32299642050491 X=11274961 M7=I[Y]e7=r[n[1]]F7=r[n[2]]H=F7(b7,I7)Y=e7[H]G=M7[Y]F7=x(-22964)M7=G()e7=I[F7]G=x(-22983)G=M7[G]H=r[n[1]]b7=r[n[2]]I7=b7(d,t)F7=H[I7]Y=e7[F7]H=x(-22959)I7=x(-22937)b7=1077650523842 d=25541917983971 G=G(M7,Y)Y=r[n[1]]e7=r[n[2]]F7=e7(H,b7)G=Y[F7]e7=x(-22909)Y=I[e7]M7[G]=Y G=x(-22886)G=M7[G]G=G(M7)Y=G F7=r[n[1]]H=r[n[2]]b7=H(I7,d)e7=F7[b7]d=x(-22952)t=27092934069153 G=Y[e7]H=r[n[1]]b7=r[n[2]]I7=b7(d,t)e7=x(-22901)F7=H[I7]H=nil e7=G[e7]e7=e7(G,F7)G=false F7=G G=nil I7=G b7=e7 else M7=z(M7)G={}e7=z(e7)X=I[x(-22930)]end end else if X<731023 then if X<693276 then T=j X=14384681 C7=T B7[T]=C7 T=nil else j=#B7 X=1645483 f7=0 T=j==f7 end else X=true X=X and 6213235 or 8764649 end end else if X<1552495 then if X<1466741 then if X<1135645 then r[M7]=G X=10047475 else E=C7()X=4529423 end else X=G and 16168058 or 3213250 end else if X<2043059 then if X<1691819 then X=8665841 f7=#B7 j=1 T=Y(j,f7)j=H(B7,T)C7=1 f7=r[m]Q=j-C7 T=nil y7=b7(Q)f7[j]=y7 j=nil else G=x(-22931)X=I[G]G={X}X=I[x(-22928)]end else l7=2 W=U7[l7]X=2778118 l7=r[k7]V=W==l7 r7=V end end end else if X<3751405 then if X<3258922 then if X<3016333 then if X<2976649 then X=R G=r7 X=984510 else X=14001370 o7=x(-22998)k=I[o7]o7=x(-22867)I7=t x7=k[o7]k=x7(O7,I7)x7=r[n[6]]o7=x7()j=k+o7 I7=nil T=j+H j=256 o7=1 B7=T%j H=B7 j=Y[M7]k=H+o7 x7=e7[k]T=j..x7 Y[M7]=T end else if X<3191581 then M7=r[n[2]]Y=149 O7=M7*Y M7=12877078996639 G=O7+M7 O7=35184372088832 X=G%O7 r[n[2]]=X O7=r[n[3]]X=5681785 M7=1 G=O7~=M7 else X=r[n[7]]X=X and 3750938 or 7878608 end end else if X<3750684 then if X<3379143 then r[M7]=x7 X=r[M7]X=X and 10045428 or 11440358 else y7=nil X=509324 c7=nil C7=nil d=nil T=nil j=nil t=nil m=nil B7=z(B7)end else O7=x(-22893)X=I[O7]Y=0 M7=r[n[8]]O7=X(M7,Y)X=7878608 end end else if X<4479383 then if X<4259774 then if X<4093918 then r7=r[M7]G=r7 X=r7 and 16036219 or 984510 else k=r[M7]x7=k X=k and 8905470 or 3291927 end else X=10489031 end else if X<4713994 then if X<4567534 then X=3749333 else B7=x(-22915)m=I[B7]B7=x(-22898)c7=m[B7]X=13181169 d=c7 end else X=I[x(-23001)]G={}end end end end else if X<6642948 then if X<5955679 then if X<5441789 then if X<5243708 then if X<4965156 then G=x(-22992)X=I[G]G={X}X=I[x(-22906)]else q=x(-22893)t=x(-22991)V7=13412660968920 b7=r[e7]K7=x(-22904)U=x(-22935)c7=11547273441141 I7=r[M7]m=6924457787496 d=I7(t,c7)Y=b7[d]b=13564075118928 g=9517382772789 f7=x(-22866)I7=r[e7]c7=x(-22980)d=r[M7]t=d(c7,m)b7=I7[t]d=r[e7]T=20495344384611 t=r[M7]j=x(-22939)m=x(-22923)B7=14305233354439 c7=t(m,B7)W7=x(-22915)D=11824396654730 l7=x(-22855)S=10985953881047 y7=x(-22883)B7=x(-22945)I7=d[c7]d=x(-22890)I[d]=Y d=x(-22924)p=1573324762073 I[d]=b7 W=x(-22976)N7=26690870481846 d=x(-22865)I[d]=I7 S7=x(-22897)V=x(-22885)t=r[e7]c7=r[M7]m=c7(B7,T)d=t[m]c=1309048326005 J7=3252593625230 B7=x(-22892)c7=x(-22865)t=I[c7]k7=x(-22872)m=I[B7]T=x(-22994)E=x(-22993)B7=I[T]T=I[j]C7=x(-22871)j=I[f7]f7=I[y7]U7=x(-22908)A=x(-22984)h7=8863428907835 y7=I[C7]C7=I[E]E=I[A]A=I[k7]k7=I[U7]U7=I[V]X7=5845071110231 V=I[W]d7=21154245335655 W=I[l7]u=x(-22851)l7=I[q]z7=25545485763787 q=I[S7]S7=I[u]m7=I[W7]C=r[e7]N=r[M7]s7=17357845834490 P7=N(K7,z7)W7=C[P7]u=m7[W7]C=x(-22915)L=33476991728452 W7=I[C]N=r[e7]P7=r[M7]z7=x(-22891)K7=P7(z7,S)C=N[K7]N=x(-22915)m7=W7[C]C=I[N]P7=r[e7]n7=1508576004527 K7=r[M7]S=x(-22966)z7=K7(S,V7)V7=x(-22914)N=P7[z7]P7=x(-22998)W7=C[N]N=I[P7]K7=r[e7]z7=r[M7]S=z7(V7,g)P7=K7[S]C=N[P7]K7=x(-22998)P7=I[K7]z7=r[e7]S=r[M7]H7=31145672336668 g=x(-22995)v=15556371871138 w7=6461210260457 V7=S(g,c)K7=z7[V7]N=P7[K7]z7=x(-22998)K7=I[z7]S=r[e7]c=x(-22852)V7=r[M7]g=V7(c,J7)z7=S[g]S=x(-22998)P7=K7[z7]z7=I[S]V7=r[e7]g=r[M7]J7=x(-22920)c=g(J7,n7)S=V7[c]J=6166653978466 V7=x(-22998)n7=x(-22878)K7=z7[S]S=I[V7]g=r[e7]c=r[M7]J7=c(n7,h7)V7=g[J7]z7=S[V7]h7=10696025091558 V7=x(-22973)S=I[V7]g=r[e7]c=r[M7]n7=x(-22896)J7=c(n7,h7)V7=g[J7]J7=x(-22998)c=I[J7]n7=r[e7]h7=r[M7]A7=h7(U,J)J7=n7[A7]n7=x(-22998)J=x(-22943)j7=4779176827095 g=c[J7]J7=I[n7]h7=r[e7]A7=r[M7]U=A7(J,s7)n7=h7[U]h7=x(-22998)c=J7[n7]n7=I[h7]A7=r[e7]s7=x(-22862)U=r[M7]J=U(s7,D)h7=A7[J]F=22117930054673 A7=x(-22998)P=12432862715481 J7=n7[h7]h7=I[A7]U=r[e7]J=r[M7]D=x(-22955)s7=J(D,d7)A7=U[s7]U=x(-22987)n7=h7[A7]A7=I[U]J=r[e7]w=18981813421319 s7=r[M7]d7=x(-22860)D=s7(d7,H7)U=J[D]J=x(-22987)h7=A7[U]U=I[J]s7=r[e7]H7=x(-22882)D=r[M7]d7=D(H7,p)J=s7[d7]A7=U[J]s7=x(-22987)J=I[s7]p=x(-22918)D=r[e7]d7=r[M7]H7=d7(p,L)s7=D[H7]U=J[s7]D=x(-22987)s7=I[D]L=x(-22869)d7=r[e7]H7=r[M7]p=H7(L,X7)f=23473060987684 D=d7[p]d7=x(-22987)X7=x(-22932)J=s7[D]D=I[d7]H7=r[e7]p=r[M7]L=p(X7,b)d7=H7[L]H7=x(-22987)s7=D[d7]s=8473833018497 d7=I[H7]p=r[e7]b=x(-22963)L=r[M7]X7=L(b,s)s=x(-22910)H7=p[X7]p=x(-22987)D=d7[H7]H7=I[p]y=695441780533 L=r[e7]X7=r[M7]b=X7(s,j7)p=L[b]j7=x(-22879)d7=H7[p]L=x(-22853)p=I[L]X7=r[e7]b=r[M7]s=b(j7,f)L=X7[s]f=x(-22951)X7=x(-22853)H7=p[L]i7=1172082765424 L=I[X7]b=r[e7]s=r[M7]j7=s(f,v)X7=b[j7]b=x(-22979)p=L[X7]X7=I[b]v=x(-22870)s=r[e7]j7=r[M7]f=j7(v,N7)b=s[f]s=x(-22979)N7=x(-22880)L=X7[b]b=I[s]j7=r[e7]f=r[M7]v=f(N7,w)s=j7[v]w=x(-22911)j7=x(-22979)X7=b[s]s=I[j7]f=r[e7]v=r[M7]N7=v(w,y)j7=f[N7]f=x(-22979)b=s[j7]j7=I[f]v=r[e7]N7=r[M7]y=x(-22961)w=N7(y,i7)f=v[w]i7=x(-22947)s=j7[f]v=x(-22895)f=I[v]N7=r[e7]w=r[M7]y=w(i7,F)v=N7[y]a=9559653478803 N7=x(-22895)j7=f[v]F=x(-22997)v=I[N7]w=r[e7]y=r[M7]i7=y(F,P)N7=w[i7]P=x(-22903)f=v[N7]w=x(-22895)N7=I[w]y=r[e7]i7=r[M7]F=i7(P,a)w=y[F]v=N7[w]y=x(-22895)w=I[y]i7=r[e7]F=r[M7]a=x(-22982)P=F(a,w7)y=i7[P]N7=w[y]i7=x(-22895)y=I[i7]F=r[e7]w7=x(-22887)P=r[M7]Z7=20082684155877 a=P(w7,Z7)i7=F[a]w=y[i7]c7={m,B7;T,j,f7,y7,C7,E,A,k7;U7,V;W;l7,q,S7;u,m7,W7,C,N;P7,K7;z7;S;V7,g;c,J7;n7;h7;A7,U;J,s7,D;d7;H7;p,L;X7,b;s,j7;f,v;N7;w}B7=25.0 m=c7[B7]V=22445131365320 B7=B()r[B7]=m q=28371370965865 l7=x(-22925)E=9585373408136 j=r[e7]C7=x(-22854)U7=x(-22965)f7=r[M7]y7=f7(C7,E)T=j[y7]y7=x(-22890)f7=I[y7]E=r[e7]A=r[M7]k7=A(U7,V)C7=E[k7]k7=x(-22924)A=I[k7]U7=r[e7]V=r[M7]W=V(l7,q)k7=U7[W]E=A..k7 y7=C7 ..E j=f7 ..y7 m=T..j C7=x(-22864)j=r[e7]E=1597224812771 f7=r[M7]y7=f7(C7,E)f7=x(-22889)T=j[y7]U7=12444715502221 W=x(-22953)j=e(15192449,{e7,M7;B7})I[f7]=j y7=x(-22972)k7=x(-22874)l7=23407098522500 f7=x(-22942)j=M(15737649,{})I[f7]=j f7=x(-22916)j=Z(8683340,{e7,M7})I[f7]=j f7=I[y7]C7=r[e7]E=r[M7]A=E(k7,U7)y7=C7[A]j=f7[y7]y7=x(-22974)f7=j()j=x(-22974)A=x(-22964)I[j]=f7 j=I[y7]E=I[A]k7=r[e7]U7=r[M7]y7=x(-22983)V=U7(W,l7)y7=j[y7]A=k7[V]k7=x(-22858)C7=E[A]y7=y7(j,C7)y7=x(-22974)j=I[y7]U7=29423979548443 C7=r[e7]E=r[M7]V=30210400458145 A=E(k7,U7)y7=C7[A]E=m..t C7=T..E j[y7]=C7 y7=x(-22974)j=I[y7]y7=x(-22886)y7=j[y7]U7=x(-22989)y7=y7(j)E=r[e7]A=r[M7]k7=A(U7,V)C7=E[k7]E=x(-22942)j=y7[C7]k7=x(-22973)C7=I[E]A=I[k7]E=C7(A)A=x(-22916)C7=E(j)E=I[A]A=E(d)X=A and 15391979 or 13500332 end else if X<5355760 then H=r[F7]X=6024024 G=H else t=x(-22883)j=x(-22990)d=I[t]y7=13991790673087 m=r[e7]B7=r[M7]T=B7(j,y7)c7=m[T]X=509324 t=d(c7)end end else if X<5751164 then if X<5660842 then y7=x(-23000)o7=x(-22866)X=I[o7]f7=I[y7]o7=X(f7)X=x(-22954)I[X]=o7 X=5960356 else Y=209 M7=r[n[3]]O7=M7*Y M7=257 G=O7%M7 X=12742200 r[n[3]]=G end else m=nil b7=z(b7)t=z(t)b7=x(-22987)t=B()T=nil j=z(j)F7=z(F7)d=z(d)H=nil M7=z(M7)B7=nil M7=nil Y=z(Y)X=14384681 Y=nil c7=nil e7=z(e7)I7=nil e7=B()T=1 r[e7]=M7 H=x(-22987)m=B()M7=B()r[M7]=Y F7=I[H]H=x(-22950)I7=x(-22915)Y=F7[H]B7={}F7=B()j=256 d=x(-22998)r[F7]=Y H=I[b7]b7=x(-22859)Y=H[b7]b7=I[I7]I7=x(-22912)H=b7[I7]f7=j I7=I[d]j=1 d=x(-22861)b7=I7[d]I7=0 d=B()r[d]=I7 y7=j j=0 I7=2 r[t]=I7 c7={}r[m]=c7 I7={}c7=0 Q=y7<j j=T-y7 end end else if X<6195590 then if X<6072569 then if X<5999022 then X=13289919 else m=x(-22915)b7=x(-22987)H=G G=I[b7]b7=x(-22859)X=G[b7]b7=B()r[b7]=X I7=x(-22915)G=I[I7]I7=x(-22933)X=G[I7]t=X I7=X c7=I[m]d=c7 X=c7 and 4571961 or 13181169 end else X=6862012 c7=true F7=c7 end else if X<6470715 then if X<6221436 then X=13289919 else T={}Q=x(-22897)y7=B()A=x(-22999)j=B()f7=M(7553626,{j,d;t,F7})r[j]=T C7={}T=B()I7=nil H=nil r[T]=f7 f7={}U7=x(-22881)r[y7]=f7 B7=nil f7=I[Q]V=nil k7=r[y7]b7=nil E={[A]=k7;[U7]=V}Q=f7(C7,E)Y=nil f7=l(9782055,{y7,j;m,d;t,T})F7=z(F7)r[e7]=Q t=z(t)d=z(d)t=32591588944574 m=z(m)F7=x(-22900)T=z(T)y7=z(y7)j=z(j)Y=h(424414,{e7;M7})c7=nil r[M7]=f7 y7=32244796962656 j=4404634261487 I[F7]=Y d=x(-22977)F7=x(-22960)Y=I[F7]H=r[e7]b7=r[M7]I7=b7(d,t)t=x(-22960)F7=H[I7]b7=x(-22855)H=I[b7]d=I[t]T=x(-22941)c7=r[e7]m=r[M7]B7=m(T,j)t=c7[B7]I7=d[t]d=x(-22929)t=3615200922629 b7=H(I7)m=x(-22944)Y[F7]=b7 T=31863232639241 F7=x(-22960)Y=I[F7]H=r[e7]b7=r[M7]I7=b7(d,t)F7=H[I7]I7=x(-22960)b7=I[I7]d=r[e7]B7=24733677707258 t=r[M7]c7=t(m,B7)I7=d[c7]H=b7[I7]d=x(-22960)Y[F7]=H F7=x(-22900)B7=x(-22969)Y=I[F7]I7=I[d]t=r[e7]c7=r[M7]m=c7(B7,T)d=t[m]b7=I7[d]I7={Y(b7)}b7=X f7=x(-22907)Y=x(-22936)H=I7[2]F7=I7[1]m=x(-22960)I[Y]=F7 Y=x(-22948)t=x(-22936)I[Y]=H d=I[t]c7=I[m]B7=r[e7]T=r[M7]j=T(f7,y7)m=B7[j]t=c7[m]I7=d==t X=I7 and 8390246 or 15287585 Y=I7 end else e7=1 M7=r[n[1]]F7=2 Y=M7(e7,F7)M7=1 O7=Y==M7 G=O7 X=O7 and 1544264 or 12727030 end end end else if X<7606669 then if X<7439780 then if X<7383780 then if X<7161970 then X=11274961 d=nil else X=r[n[10]]M7=r[n[11]]O7[X]=M7 X=r[n[12]]M7={X(O7)}X=I[x(-22946)]G={i(M7)}end else if X<7420719 then O7=x(-22902)G=x(-22893)X=I[G]G=X(O7)X=I[x(-22967)]G={}else M7=nil e7=nil X=I[x(-22884)]Y=nil O7=nil G={}F7=nil end end else if X<7570134 then if X<7495099 then R=r[M7]r7=R X=R and 14377082 or 15145851 else O7=r[n[1]]G=#O7 O7=0 X=G==O7 X=X and 3170388 or 14191187 end else X=r[n[1]]I7=0 d=255 M7=Y b7=X(I7,d)X=13034679 O7[M7]=b7 M7=nil end end else if X<7891119 then if X<7857323 then if X<7826646 then C7=100 Q=x(-22987)S7=10000 y7=B()r[y7]=x7 V=x(-22866)G=I[Q]Q=x(-22859)X=G[Q]E=255 U7=2 Q=1 G=X(Q,C7)Q=B()C7=0 r[Q]=G X=r[b7]G=X(C7,E)E=1 C7=B()r[C7]=G X=r[b7]k7=1 A=r[Q]G=X(E,A)E=B()r[E]=G q=0 G=r[b7]A=G(k7,U7)G=1 X=A==G A=B()r[A]=X R=I[V]W=r[b7]U7=x(-22917)X=x(-22868)l7={W(q,S7)}V=R(i(l7))G=x(-22971)X=T[X]R=x(-22917)r7=V..R k7=U7 ..r7 X=X(T,G,k7)k7=B()r7=e(6585445,{b7;y7,t;Y;M7,j;A;k7,Q,E,C7,d})r[k7]=X U7=x(-22940)G=I[U7]U7={G(r7)}X={i(U7)}U7=X X=r[A]X=X and 3755943 or 7441586 else c7=x(-22957)c7=d[c7]c7=c7(d,O7)X=c7 and 6171285 or 6862012 end else Y=r[n[9]]X={}O7=X M7=1 e7=Y Y=1 F7=Y Y=0 H=F7<Y Y=M7-F7 X=13034679 end else if X<8392125 then if X<8312841 then r[n[5]]=G X=3213250 O7=nil else t=x(-22948)d=I[t]m=x(-22960)c7=I[m]B7=r[e7]y7=31484741539898 X=15287585 f7=x(-22958)T=r[M7]j=T(f7,y7)m=B7[j]t=c7[m]I7=d==t Y=I7 end else M7=2 G=x(-22889)X=I[G]G={X(M7)}G={i(G)}X=I[x(-22894)]end end end end end else if X<12796362 then if X<10236513 then if X<9736381 then if X<8831112 then if X<8681881 then if X<8664800 then F7=35184372088832 X={}r[n[2]]=X b7=255 G=r[n[3]]e7=G I7=x(-22998)G=M7%F7 r[n[4]]=G H=M7%b7 t=1 b7=2 F7=H+b7 r[n[5]]=F7 b7=I[I7]I7=x(-22996)H=b7[I7]b7=H(O7)c7=t X=14001370 H=x(-22927)t=0 Y[M7]=H H=62 d=b7 m=c7<t I7=1 t=I7-c7 else j=#B7 f7=0 T=j==f7 X=T and 6239527 or 1645483 end else if X<8751244 then M7=r[n[1]]F7=x(-22970)O7=o[1]Y=r[n[2]]H=19788814385321 e7=Y(F7,H)G=M7[e7]X=O7==G X=X and 12723130 or 10265692 else X=O(11885298,{e7})k={X()}X=I[x(-22857)]G={i(k)}end end else if X<9451747 then if X<9052340 then X=3291927 k=c7==m x7=k else Y=6653338 G=5278920 M7=x(-22856)O7=M7^Y X=G-O7 O7=X G=x(-22899)X=G/O7 G={X}X=I[x(-22876)]end else G=x(-22919)X=I[G]G={X}X=I[x(-22922)]end end else if X<10047463 then if X<9959180 then if X<9799702 then X=r[n[1]]O7=o[1]Y=X M7=o[2]X=Y[M7]X=X and 4473723 or 8664633 else t=x(-22898)d=I[t]X=14369888 G=d end else X=5871119 end else if X<10144840 then if X<10071021 then U7=nil X=10234384 C7=z(C7)E=z(E)A=z(A)y7=z(y7)k7=z(k7)Q=z(Q)else X=true M7=B()r[M7]=X Y=x(-22998)O7=o G=I[Y]Y=x(-22901)X=G[Y]Y=B()b7=x(-22940)r[Y]=X e7=B()X=e(7416257,{})r[e7]=X X=false F7=B()r[F7]=X H=I[b7]I7=M(13239839,{F7})b7=H(I7)X=b7 and 5271489 or 6024024 G=b7 end else y7=not f7 x7=x7+o7 G=x7<=k G=y7 and G y7=x7>=k y7=f7 and y7 G=y7 or G y7=7659350 X=G and y7 G=4184104 X=X or G end end end else if X<11795209 then if X<11174153 then if X<10511357 then if X<10444855 then X=nil G={X}X=I[x(-22956)]else X=I[x(-22913)]G={M7}end else if X<10940282 then m=r[n[1]]j=x(-22934)B7=r[n[2]]t=x(-22888)x7=16305158017299 T=B7(j,x7)X=I[x(-22968)]t=d[t]c7=m[T]t=t(d,c7)c7=x(-22948)m=x(-22948)I[c7]=t c7=I[m]G={O7;c7}else G={}X=I[x(-22926)]end end else if X<11609212 then if X<11337441 then H=b7(I7,H)X=H and 15173984 or 7422285 else X=true X=8764649 end else X=r[n[3]]G={X}X=I[x(-22986)]end end else if X<12707984 then if X<12671820 then if X<11931802 then X=11961686 else X=true X=X and 13483382 or 11096346 end else b7=nil H=nil X=10489031 e7=nil end else if X<12727909 then if X<12725078 then X=true G={X}X=I[x(-22988)]else M7=r[n[2]]Y=r[n[3]]O7=M7==Y X=1544264 G=O7 end else Y=1 M7=r[n[3]]O7=M7~=Y X=O7 and 51871 or 5681785 end end end end else if X<14400162 then if X<13909307 then if X<13461168 then if X<13202799 then if X<13055666 then b7=not H Y=Y+F7 M7=Y<=e7 M7=b7 and M7 b7=Y>=e7 b7=H and b7 M7=b7 or M7 b7=7570458 X=M7 and b7 M7=7234513 X=X or M7 else G=d X=t X=d and 14369888 or 9828438 end else if X<13273141 then G={}X=true r[n[1]]=X X=I[x(-22938)]else X=true X=X and 15017753 or 4748258 end end else if X<13745055 then if X<13491659 then O7=x(-23000)G=x(-22954)X=I[G]G=I[O7]O7=x(-23000)I[O7]=X O7=x(-22954)I[O7]=G X=11961686 O7=r[n[1]]M7=O7()else A=x(-22883)E=I[A]U7=r[e7]q=29443384344831 V=r[M7]l7=x(-22875)X=3749333 W=V(l7,q)k7=U7[W]A=E(k7)end else f7=x(-22954)X=I[f7]f7=x(-23000)I[f7]=X X=5960356 end end else if X<14323210 then if X<14218786 then if X<14099725 then B7=not m t=t+c7 I7=t<=d I7=B7 and I7 B7=t>=d B7=m and B7 I7=B7 or I7 B7=2990668 X=I7 and B7 I7=12690261 X=X or I7 else Y=x(-22915)M7=I[Y]Y=x(-22912)X=I[x(-22949)]O7=M7[Y]Y=r[n[1]]M7={O7(Y)}G={i(M7)}end else X=true X=X and 8400949 or 15328707 end else if X<14378680 then if X<14371082 then t=3 c7=65 T=M(15853971,{})d=B()r[d]=G X=r[b7]G=X(t,c7)t=B()r[t]=G X=0 c7=X B7=x(-22940)X=0 m=X G=I[B7]B7={G(T)}X={i(B7)}G=2 B7=X X=B7[G]T=X G=x(-22855)X=I[G]o7=x(-22866)j=r[Y]k=I[o7]o7=k(T)k=x(-22971)x7=j(o7,k)j={x7()}G=X(i(j))j=B()r[j]=G X=10234384 G=1 x7=r[t]k=x7 x7=1 o7=x7 x7=0 f7=o7<x7 x7=G-o7 else V=1 R=U7[V]r7=R X=15145851 end else C7=not Q j=j+y7 T=j<=f7 T=C7 and T C7=j>=f7 C7=Q and C7 T=C7 or T C7=645711 X=T and C7 T=713627 X=X or T end end end else if X<15340207 then if X<15190817 then if X<15029922 then if X<14796449 then Y=r[n[6]]M7=Y==O7 G=M7 X=7953705 else X=r[b7]f7=6 o7=1 k=X(o7,f7)X=x(-22954)I[X]=k f7=x(-22954)o7=I[f7]f7=2 X=o7>f7 X=X and 5456472 or 13803846 end else if X<15163469 then q=1 r[M7]=r7 l7=r[E]W=l7+q V=U7[W]R=c7+V V=256 X=R%V c7=X X=10047475 W=r[C7]V=m+W W=256 R=V%W m=R else X=F7 and 10823364 or 7843940 d=H end end else if X<15309449 then if X<15201591 then M7=100 Y=x(-22855)O7=o[1]t=9594579526782 d=x(-22975)G=M7*O7 M7=I[Y]H=r[n[1]]b7=r[n[2]]I7=b7(d,t)F7=H[I7]e7=O7 ..F7 Y=M7(e7)X=G==Y X=X and 11753623 or 243161 else X=b7 X=Y and 5131814 or 5423910 end else X=1896401 end end else if X<16021734 then if X<15768868 then if X<15398105 then X=C7 and 1373105 or 4529423 else O7=o[1]M7=x(-22973)G=I[M7]X=O7==G X=X and 14224056 or 1896401 end else Y=16081549 G=12666989 M7=x(-22863)O7=M7^Y X=G-O7 G=x(-22981)O7=X X=G/O7 G={X}X=I[x(-22921)]end else if X<16453839 then if X<16045345 then R=X l7=1 W=U7[l7]l7=false V=W==l7 r7=V X=V and 2267919 or 2778118 else G=x(-22855)I7=x(-22940)X=I[G]e7=x(-22866)O7=r[n[4]]Y=I[e7]b7=I[I7]d=O(9430801,{})I7={b7(d)}b7=2 H={i(I7)}F7=H[b7]e7=Y(F7)Y=x(-22971)M7=O7(e7,Y)O7={M7()}G=X(i(O7))O7=G M7=r[n[5]]X=M7 and 14634136 or 7953705 G=M7 end else X=I[x(-22905)]O7=nil G={}end end end end end end end X=#K return i(G)end,0,function(I,x)local i=F(x)local X=function()return P(I,{},x,i)end return X end return(w(10140522,{}))(i(c))end)(getfenv and getfenv()or _ENV,unpack or table[x(-22898)],newproxy,setmetatable,getmetatable,select,{...})end)(...)