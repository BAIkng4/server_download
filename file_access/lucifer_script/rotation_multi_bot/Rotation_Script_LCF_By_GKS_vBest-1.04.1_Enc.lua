-------------------- [ ABOUT ] --------------------
--ROTATION SCRIPT LUCIFER MULTIBOT BY GROW KING SCRIPTS
--FOLLOW OUR INFORMATION AND SOCIAL MEDIA https://linktr.ee/growks
---------------------------------------------------


login_data_settings = {--Type the /login command to get login data
	discord_userid = 0,
	login_code = "CODE"
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
return(function(...)local c={"\082\083\099\106\102\071\081\102";"\105\088\109\056\080\078\061\061","\099\106\070\105\115\101\061\061","\103\119\079\056\103\119\068\071","\112\097\049\066\080\121\052\107","\089\066\084\053\111\111\090\103\055\053\080\100\122\066\090\120\118\070\083\061";"\047\086\055\111\111\047\049\098";"\085\089\112\116\082\108\050\061","\069\110\061\061";"\108\068\097\086\073\065\108\085\065\066\083\102\065\110\061\061";"\080\121\052\107\105\053\052\107\122\119\084\056\122\097\077\072";"\114\106\089\118\122\111\089\066\057\111\080\102\105\119\079\100\047\052\057\061","\107\054\115\084\110\110\051\061","\122\070\072\107\080\057\061\061";"\090\079\108\090\110\113\108\056\099\111\073\113\109\078\061\061","\052\088\049\087\112\088\052\082\048\083\084\072\047\088\052\117\047\088\052\106\048\057\061\061","\084\119\102\076\111\057\118\097";"\114\066\079\073\111\121\049\054\047\057\061\061";"\085\115\084\053\119\105\054\082\097\049\047\116\104\076\107\117\073\122\071\075\100\075\068\066\114\068\084\069\074\115\114\076\070\076\090\053\105\110\056\075\117\085\084\110\110\100\111\052\098\079\121\097\085\066\056\043\104\110\079\109\103\121\086\065\054\078\113\113\087\113\067\048\068\072\056\090\083\054\116\104\076\075\073\081\050\090\078\078\053\052\108\104\076\120\108\098\114\077\076\102\110\110\061\061","\105\088\109\070\103\053\104\085\080\088\049\107\122\052\109\071\080\119\084\107\103\053\104\070\112\101\061\061";"\121\083\118\049\057\088\099\107\057\113\115\050\065\070\053\103\081\106\112\090\075\073\070\097\097\097\112\051\053\116\121\056\080\081\048\109\112\110\061\061","\108\115\055\047\100\070\051\119","\118\055\083\117\086\100\110\061","\081\109\107\082\070\100\048\061";"\105\098\048\061";"\119\115\109\070\122\101\061\061";"\076\069\072\115\068\076\105\067\054\054\086\056\111\082\076\071\120\087\112\061","\052\052\110\061","\111\098\070\098","\112\097\052\087\105\066\080\072","\111\098\052\066\114\071\089\057\103\067\079\121\047\057\061\061";"\081\053\050\121\065\105\119\043","\057\048\097\098";"\052\089\051\079\057\057\061\061";"\087\100\106\050\113\101\111\061";"\118\098\083\101\047\107\104\101\112\117\079\087\112\114\112\066";"\055\052\080\043\112\052\079\088\052\117\068\074\118\115\043\101","\069\049\047\098\047\107\047\100\105\098\052\106\103\107\068\100\055\106\122\061","\112\121\052\099\080\053\089\107";"\054\052\101\067\087\057\061\061","\047\114\047\069\084\097\109\116\114\067\056\107\084\107\072\068\114\066\048\061";"\113\113\114\111\074\112\111\061";"\098\076\051\061";"\079\120\056\067","\112\097\049\066\112\121\052\107","\114\088\109\070\103\053\104\085\057\121\109\106\080\052\050\071";"\109\109\090\089\066\082\073\076\089\105\116\112\113\078\061\061";"\114\088\109\070\103\053\104\085\057\121\109\106\080\052\050\082";"\080\119\068\082\105\066\048\061","\080\066\089\115\122\110\061\061";"\122\052\057\066\089\083\090\084\114\114\080\072\080\111\089\075\122\053\043\061","\122\057\061\061";"\074\057\061\061";"\099\111\081\097";"\054\117\100\055\050\110\061\061","\112\121\052\107\114\053\052\107\103\088\109\106","\122\121\109\075\122\121\049\107";"\105\053\049\107\103\078\061\061","\108\068\121\100\078\070\079\053\083\115\117\116\086\110\061\061";"\054\104\067\116";"\047\088\109\075\047\053\115\074\080\119\048\061";"\110\051\074\083\104\107\121\111\108\076\051\071\090\099\122\053\043\105\057\061","\122\121\109\082\105\066\052\107\103\053\104\072","\080\121\115\056\047\088\089\102","\114\053\052\107\103\088\109\106","\080\097\072\043\114\088\072\075\080\107\047\065\105\121\057\061","\085\065\114\048\082\097\115\083\078\116\120\043\086\116\081\087\116\050\070\118\080\098\099\116\089\080\048\118\104\055\083\051\112\053\051\067\047\069\081\116\090\110\068\085\074\111\067\121\105\088\050\079\056\079\055\112\097\106\076\108\069\054\116\087\102\107\080\108\105\083\048\121\073\104\079\053\115\107\122\056\100\097\077\102\057\122\102\112\068\077\053\081\068\069\074\084\051\054\105\111\105\055\100\072\078\056\108\089\100\057\111\105\097\052\106\084\104\121\053\082\118\077\053\072\077\085\120\081\067\105\102\080";"\121\119\110\097\086\082\088\078";"\080\088\109\097\103\053\077\072";"\112\067\049\070\047\083\048\115\103\071\084\070\118\067\068\072\122\110\061\061","\069\074\110\072\080\100\102\090\069\110\061\061";"\053\053\049\054\118\053\104\100\122\053\104\067";"\047\053\104\101\122\053\089\054","\103\111\072\068\103\053\104\090\111\088\049\118\122\111\056\069\118\111\110\061";"\115\076\119\071\114\100\102\061","";"\105\088\109\070\103\053\051\061","\103\067\084\107\112\083\089\099\103\053\052\075\047\078\061\061","\119\115\109\099\080\053\051\061","\078\099\101\115\074\102\051\061";"\043\117\047\068\043\052\072\051\052\115\090\114\122\111\077\082";"\112\097\049\075\080\088\109\087","\118\115\089\075\055\111\115\073\080\083\089\068\052\107\104\099";"\099\103\113\069\077\085\122\066\089\073\106\109\077\079\055\110\079\067\110\061";"\087\105\077\112\101\110\061\061";"\122\119\089\071\080\119\068\107","\121\075\043\107";"\112\088\089\056\105\088\101\061","\047\088\049\074\105\088\111\061";"\080\049\089\080\111\097\089\056\111\115\068\101\084\053\104\102","\057\111\104\088\105\053\084\075\043\052\049\088\043\117\052\077\053\078\061\061";"\105\066\043\061","\071\121\097\083";"\103\103\079\112";"\066\073\078\061","\047\052\068\057\103\098\079\097\047\098\049\079\105\072\056\053\084\070\057\061","\112\088\049\090\112\070\043\061";"\055\117\072\103\122\070\072\067\080\107\087\065\080\111\115\056\122\106\051\061","\103\085\049\056\109\110\061\061","\047\088\109\071\047\067\068\090\105\097\112\061";"\077\120\055\076\105\087\102\061","\119\115\109\090\105\097\084\072\055\078\061\061","\103\053\050\061","\118\067\084\107\112\083\089\099\103\053\052\075\047\078\061\061","\086\087\069\112\073\109\106\061","\105\049\079\122\084\066\079\102\057\066\043\077\105\070\106\121\118\114\122\061";"\122\101\061\061","\112\097\052\077\047\053\052\071\047\078\061\061";"\088\120\067\075\070\104\048\088","\114\087\079\122\069\073\075\070\106\116\047\080\105\078\061\061";"\088\114\048\107";"\113\052\053\079\110\054\116\073\090\089\043\061","\116\068\080\111\075\100\089\050\054\057\074\120\113\110\061\061";"\112\067\068\090\105\070\057\061";"\112\083\053\083\048\057\061\061";"\084\114\068\065","\077\053\116\080","\119\115\109\087\080\119\084\056\047\088\049\074\105\088\111\061","\105\098\087\043\085\104\081\081\099\121\104\072\107\118\043\090\107\054\071\116\109\066\066\065\052\121\087\105\056\083\076\074\074\049\110\061","\121\083\050\061","\105\098\083\061";"\055\111\090\121\118\107\111\121\118\083\068\049\057\111\056\069\111\101\061\061","\079\098\097\081\101\078\061\061";"\110\080\087\114\101\079\111\061";"\080\057\061\061","\115\071\077\114","\082\066\078\076\067\078\061\061";"\055\053\051\107\105\119\072\075\047\083\104\068\057\072\047\111","\052\083\083\061","\047\097\109\052\047\114\056\122\111\053\052\101\105\115\056\067\105\057\061\061","\080\078\061\061","\122\121\056\056\112\110\061\061";"\114\088\109\070\103\053\104\085\057\121\109\106\080\052\050\077";"\047\088\052\118\069\111\048\077\112\106\077\082\052\052\080\082\122\057\061\061","\072\106\073\104\071\056\075\082\115\086\097\105\107\077\083\053\086\113\101\061","\080\097\077\065\105\066\048\061";"\069\098\056\067\112\115\047\077\057\052\090\099\080\098\049\107\043\110\061\061";"\098\118\112\081\057\054\097\115\100\066\098\115\066\084\104\085\117\103\105\102\105\065\099\111\115\087\103\115\103\099\066\070\082\116\111\076\054\078\061\061";"\108\078\065\118\116\057\048\061";"\112\121\052\107\105\053\052\107\122\119\084\056\122\097\077\072";"\122\115\067\114\073\097\069\079";"\114\054\086\076\076\107\047\051\105\105\115\114\076\043\057\110\067\115\083\061","\047\067\072\101\080\057\061\061";"\066\051\112\105\073\100\101\061";"\050\102\082\052\069\052\069\067","\066\056\071\112\101\078\061\061";"\105\097\052\051\047\078\061\061";"\112\119\052\099\103\097\090\119\112\119\068\103\118\115\084\107\057\110\061\061","\115\110\112\112\088\120\099\103\066\089\116\073\113\087\048\121\055\069\057\117\057\075\101\061";"\105\088\109\056\080\067\089\107\112\097\072\075\080\101\061\061";"\112\066\084\082\103\053\104\070","\115\087\109\100\098\077\077\049","\081\088\121\110","\103\086\110\115\107\113\115\085\075\074\071\073\068\068\050\111\109\075\050\061","\105\088\052\075"}for q,n in ipairs({{1;155};{1;130},{131;155}})do while n[1]<n[2]do c[n[1]],c[n[2]],n[1],n[2]=c[n[2]],c[n[1]],n[1]+1,n[2]-1 end end local function q(q)return c[q+60543]end do local q={m=61,f=40,B=55;V=42;i=27,b=3;M=49;F=39,q=63;["\047"]=29,s=53,Z=41;["\050"]=60;["\055"]=30;X=6;["\051"]=56;["\048"]=8;W=45,["\052"]=21;G=51,a=38,H=37,y=54;o=20;v=18,x=15;S=4;h=57;N=0;I=58,e=48;p=28,["\057"]=16;P=25,n=32,T=17;g=26;L=59,A=47;D=9,l=62;u=35,J=34,R=50,z=24,E=14;C=7;["\056"]=33,c=44,["\053"]=22;K=46;j=36;w=23,d=2,Q=11;["\049"]=5;["\043"]=12;Y=13,t=10,U=31,k=52,r=19,O=1,["\054"]=43}local n=type local D=string.char local Y=math.floor local N=string.sub local k=table.concat local M=c local X=string.len local f=table.insert for c=1,#M,1 do local C=M[c]if n(C)=="\115\116\114\105\110\103"then local n=X(C)local b={}local G=1 local K=0 local R=0 while G<=n do local c=N(C,G,G)local k=q[c]if k then K=K+k*64^(3-R)R=R+1 if R==4 then R=0 local c=Y(K/65536)local q=Y((K%65536)/256)local n=K%256 f(b,D(c,q,n))K=0 end elseif c=="\061"then f(b,D(Y(K/65536)))if G>=n or N(C,G+1,G+1)~="\061"then f(b,D(Y((K%65536)/256)))end break end G=G+1 end M[c]=k(b)end end end return(function(c,n,D,Y,N,k,M,X,f,C,b,G,K,R,h,P,u,F,i,H,w,d,x,l)d,f,G,C,b,F,X,P,x,u,l,H,i,h,w,R,K=function(c)for q=1,#c,1 do x[c[q]]=1+x[c[q]]end if D then local n=D(true)local Y=N(n)Y[q(-60466)],Y[q(-60542)],Y[q(-60489)]=c,F,function()return 1579961 end return n else return Y({},{[q(-60542)]=F;[q(-60466)]=c,[q(-60489)]=function()return 1579961 end})end end,function(c,q)local n=d(q)local D=function(D,Y,N,k)return b(c,{D;Y,N,k},q,n)end return D end,function(c,q)local n=d(q)local D=function(D,Y)return b(c,{D,Y},q,n)end return D end,0,function(D,Y,N,k)local M,C,b,F,w,d,x,W,Z,y,B,t,z,Q,V,e,J,U,o,I,p,E,T,m,O,s,g,r,L,j,a,v,A,S,cG,qG,nG,DG,YG,NG,kG,MG,XG,fG,CG,bG,GG,KG,RG,hG,PG,uG,FG,iG,HG,wG,dG,xG,lG,WG while D do if D<8090607 then if D<2706909 then if D<1280397 then if D<743657 then if D<524047 then if D<385300 then if D<340707 then D=c[q(-60462)]F={xG}else D=H[wG]O=1 HG=6 iG=D(O,HG)D=q(-60388)HG=q(-60388)c[D]=iG O=c[HG]HG=2 D=O>HG D=D and 1587704 or 13615016 end else if D<505884 then V=H[N[1]]F=#V V=0 D=F==V D=D and 3661908 or 14925519 else iG=H[xG]GG=iG D=iG and 7693423 or 11133505 end end else if D<640906 then if D<553138 then dG=K()NG=q(-60466)MG={}s=nil g=nil m=K()HG=X(436811,{m;z;RG;C})C=h(C)H[m]=MG C=q(-60393)MG=K()H[MG]=HG S={}e=nil HG={}XG=q(-60428)b=q(-60450)H[dG]=HG HG=c[XG]U=H[dG]v={[NG]=U,[b]=g}XG=HG(S,v)DG=nil H[uG]=XG HG=R(4773559,{dG,m,a;z,RG,MG})lG=nil wG=nil a=h(a)H[xG]=HG MG=h(MG)DG=c[C]m=h(m)e=H[uG]MG=q(-60484)d=nil wG=H[xG]z=h(z)dG=h(dG)RG=h(RG)RG=5451161746946 dG=4794776480521 z=q(-60506)d=wG(z,RG)C=e[d]RG=q(-60393)m=30617840764442 wG=q(-60507)e=c[wG]z=c[RG]lG=H[uG]a=H[xG]s=a(MG,m)RG=lG[s]HG=q(-60433)d=z[RG]s=15030913095315 wG=e(d)RG=26056667648905 DG[C]=wG m=16728962565317 MG=q(-60414)a=q(-60521)z=q(-60509)C=q(-60393)DG=c[C]e=H[uG]wG=H[xG]d=wG(z,RG)C=e[d]d=q(-60393)wG=c[d]z=H[uG]RG=H[xG]lG=RG(a,s)d=z[lG]e=wG[d]DG[C]=e C=q(-60491)DG=f(702785,{uG,xG})c[C]=DG C=q(-60491)wG=D DG=c[C]C=DG()lG=H[uG]a=H[xG]DG=l(14168718,{uG;xG})s=a(MG,m)a=q(-60393)RG=lG[s]z=C[RG]lG=c[a]s=H[uG]MG=H[xG]m=MG(HG,dG)a=s[m]RG=lG[a]d=z==RG e=d D=d and 1804151 or 16373382 else xG=q(-60411)V=Y[1]F=c[xG]D=V==F D=D and 10258487 or 12930953 end else xG=H[N[1]]D={}C=q(-60394)V=D MG=29896763284384 s=q(-60458)z=q(-60426)DG=H[N[2]]e=24519427009223 RG=4962626366582 uG=DG(C,e)F=xG[uG]C=q(-60393)uG=c[C]e=H[N[1]]wG=H[N[2]]d=wG(z,RG)C=e[d]DG=uG[C]e=H[N[1]]z=q(-60515)wG=H[N[2]]RG=16950108485950 d=wG(z,RG)C=e[d]z=q(-60393)d=c[z]RG=H[N[1]]lG=H[N[2]]a=lG(s,MG)z=RG[a]wG=d[z]z=H[N[1]]s=14008909904109 RG=H[N[2]]a=q(-60429)lG=RG(a,s)RG=196695053641 d=z[lG]z=q(-60535)e=wG..d uG=C..e xG=DG..uG d=8328146684763 D=F..xG xG=D DG=q(-60464)wG=q(-60475)F=c[DG]uG=H[N[1]]C=H[N[2]]e=C(wG,d)DG=uG[e]D=F[DG]F=D()DG=F C=q(-60503)uG=c[C]e=H[N[1]]wG=H[N[2]]d=wG(z,RG)C=e[d]F=uG[C]D=q(-60512)D=DG[D]D=D(DG,F)F=H[N[1]]z=31942919357767 e=q(-60524)wG=17272438905051 uG=H[N[2]]C=uG(e,wG)D=F[C]F=xG DG[D]=F D=q(-60460)D=DG[D]D=D(DG)d=q(-60534)C=H[N[1]]e=H[N[2]]wG=e(d,z)d=q(-60541)F=C[wG]uG=D D=uG[F]C=D F=H[N[1]]z=733052660100 e=H[N[2]]wG=e(d,z)D=F[wG]z=q(-60417)e=q(-60507)s=q(-60526)F=c[e]d=c[z]RG=H[N[1]]lG=H[N[2]]MG=6711330441758 a=lG(s,MG)z=RG[a]wG=d[z]RG=H[N[1]]MG=7148640099575 s=q(-60430)lG=H[N[2]]a=lG(s,MG)z=RG[a]d={wG(C,z)}e=F(n(d))d=q(-60455)lG=q(-60467)V[D]=e z=11108991254909 F=H[N[1]]e=H[N[2]]wG=e(d,z)a=32621807315214 D=F[wG]wG=q(-60417)e=c[wG]d=H[N[1]]z=H[N[2]]RG=z(lG,a)wG=d[RG]F=e[wG]d=H[N[1]]a=12202359183997 z=H[N[2]]lG=q(-60392)RG=z(lG,a)wG=d[RG]e=F(C,wG)V[D]=e F={V}D=c[q(-60485)]end end else if D<1134331 then if D<1121684 then if D<1056182 then D=13652069 wG=q(-60454)e=c[wG]z=H[uG]RG=H[xG]s=26989530100704 a=q(-60501)lG=RG(a,s)d=z[lG]wG=e(d)else S=not XG m=m+dG MG=m<=HG MG=S and MG S=m>=HG S=XG and S MG=S or MG S=14622543 D=MG and S MG=14805509 D=D or MG end else D=H[N[3]]F={D}D=c[q(-60531)]end else if D<1192335 then if D<1161476 then Q=H[xG]D=Q and 2517058 or 9092823 F=Q else qG=H[xG]D=qG and 1238637 or 13034584 Q=qG end else g=1 qG=b[g]Q=qG D=13034584 end end end else if D<1805666 then if D<1610543 then if D<1579467 then if D<1417030 then D=true H[N[1]]=D D=c[q(-60487)]F={}else D=2209315 end else O=q(-60468)D=c[O]dG=q(-60447)HG=c[dG]O=D(HG)D=q(-60388)c[D]=O D=13061319 end else if D<1776112 then if D<1687477 then DG=119 xG=H[N[3]]V=xG*DG D=3855833 xG=257 F=V%xG H[N[3]]=F else S=1 HG=#s m=1 MG=DG(m,HG)m=e(s,MG)HG=H[a]XG=m-S dG=wG(XG)MG=nil HG[m]=dG m=nil D=14800811 end else lG=H[uG]a=H[xG]MG=q(-60403)m=27712227108464 D=16373382 s=a(MG,m)a=q(-60393)dG=10715924125689 RG=lG[s]z=C[RG]lG=c[a]s=H[uG]MG=H[xG]HG=q(-60398)m=MG(HG,dG)a=s[m]RG=lG[a]d=z==RG e=d end end else if D<2186892 then if D<2133155 then if D<1960480 then F=z D=RG D=z and 4066573 or 10935368 else DG=q(-60417)V=Y xG=K()D=true H[xG]=D F=c[DG]DG=q(-60504)D=F[DG]uG=K()DG=K()H[DG]=D D=u(15132191,{})H[uG]=D D=false C=K()H[C]=D wG=q(-60480)e=c[wG]d=G(1285448,{C})wG=e(d)D=wG and 5312156 or 10232374 F=wG end else D=true D=D and 351922 or 5280848 end else if D<2572928 then if D<2364757 then C=nil d=nil lG=nil wG=nil RG=nil e=h(e)xG=nil uG=nil F={}D=c[q(-60517)]DG=nil else WG=1 qG=D L=b[WG]WG=false g=L==WG Q=g D=g and 12317117 or 2799940 end else D=13429906 end end end end else if D<4962625 then if D<3854369 then if D<3007726 then if D<2979880 then if D<2808247 then D=qG D=9092823 F=Q else DG=0 V=q(-60519)D=c[V]xG=H[N[8]]V=D(xG,DG)D=3245085 end else D=12930953 end else if D<3437286 then if D<3217623 then F=q(-60443)D=c[F]F={D}D=c[q(-60434)]else D={}V=D xG=1 DG=H[N[9]]uG=DG DG=1 C=DG D=9752215 DG=0 e=C<DG DG=xG-C end else xG=H[N[2]]DG=1 V=xG*DG xG=1103363592095 F=V+xG xG=1 V=35184372088832 D=F%V H[N[2]]=D D=1638035 V=H[N[3]]F=V~=xG end end else if D<4095052 then if D<4029711 then if D<3856104 then xG=H[N[3]]DG=1 V=xG~=DG D=V and 14350387 or 1638035 else D=H[N[10]]xG=H[N[11]]V[D]=xG D=H[N[12]]xG={D(V)}F={n(xG)}D=c[q(-60420)]end else z=K()lG=65 H[z]=F s=q(-60480)D=H[wG]RG=3 F=D(RG,lG)MG=G(9176582,{})RG=K()D=0 H[RG]=F lG=D D=0 a=D F=c[s]s={F(MG)}O=q(-60468)F=2 D={n(s)}s=D D=s[F]F=q(-60507)MG=D D=c[F]m=H[DG]iG=c[O]O=iG(MG)iG=q(-60497)GG=m(O,iG)m={GG()}F=D(n(m))m=K()H[m]=F F=1 GG=H[RG]D=11429349 iG=GG GG=1 O=GG GG=0 HG=O<GG GG=F-O end else if D<4722947 then if D<4210421 then s=q(-60454)a=c[s]D=2209315 O=q(-60508)HG=23391589342631 m=H[N[1]]GG=H[N[2]]iG=GG(O,HG)MG=m[iG]s=a(MG)else D=2151202 end else D=H[N[1]]V=Y[1]xG=Y[2]DG=D D=DG[xG]D=D and 8962444 or 11219719 end end end else if D<6071237 then if D<5332306 then if D<5288043 then if D<5204823 then D=true D=D and 4681235 or 5965877 else F={}D=c[q(-60470)]end else D=10232374 e=H[C]F=e end else if D<6020212 then if D<5454851 then F=q(-60507)uG=q(-60468)D=c[F]V=H[N[4]]z=u(6403779,{})DG=c[uG]d=q(-60480)wG=c[d]d={wG(z)}e={n(d)}wG=2 C=e[wG]uG=DG(C)DG=q(-60497)xG=V(uG,DG)V={xG()}F=D(n(V))V=F xG=H[N[5]]F=xG D=xG and 15876769 or 6101617 else D=P(10091286,{uG})iG={D()}D=c[q(-60472)]F={n(iG)}end else D=nil F={D}D=c[q(-60431)]end end else if D<7393361 then if D<6287823 then if D<6099536 then F={}D=c[q(-60532)]else H[N[5]]=F V=nil D=13111649 end else DG=8329817 F=5155858 xG=q(-60537)V=xG^DG D=F-V V=D F=q(-60452)D=F/V F={D}D=c[q(-60478)]end else if D<7637493 then if D<7586036 then D=lG and 16709473 or 1558509 else uG=nil e=nil wG=nil D=63089 end else iG=lG==a D=11133505 GG=iG end end end end end else if D<12924992 then if D<10486128 then if D<9631578 then if D<9055922 then if D<8705724 then if D<8231821 then D=9627390 xG=H[N[2]]DG=H[N[3]]V=xG==DG F=V else s=not a RG=RG+lG d=RG<=z d=s and d s=RG>=z s=a and s d=s or d s=10603074 D=d and s d=7623093 D=D or d end else if D<9024752 then D=63089 else D=1951779 s=q(-60479)a=c[s]s=q(-60495)lG=a[s]z=lG end end else if D<9243268 then if D<9170019 then H[xG]=F D=12917113 else F=3075499 xG=q(-60395)DG=13357974 V=xG^DG D=F-V F=q(-60439)V=D D=F/V F={D}D=c[q(-60477)]end else D=F and 5365908 or 13111649 end end else if D<10189659 then if D<9772134 then if D<9666623 then xG=100 V=Y[1]DG=q(-60507)F=xG*V z=q(-60525)xG=c[DG]e=H[N[1]]RG=33286997541502 wG=H[N[2]]d=wG(z,RG)C=e[d]uG=V..C DG=xG(uG)D=F==DG D=D and 1132483 or 12464378 else DG=DG+C xG=DG<=uG wG=not e xG=wG and xG wG=DG>=uG wG=e and wG xG=wG or xG wG=13179782 D=xG and wG xG=3861303 D=D or xG end else D=11677194 end else if D<10314364 then if D<10251133 then wG=q(-60510)e=F F=c[wG]wG=q(-60486)D=F[wG]d=q(-60479)wG=K()H[wG]=D F=c[d]d=q(-60511)D=F[d]a=q(-60479)RG=D lG=c[a]d=D D=lG and 9047634 or 1951779 z=lG else D=true D=D and 14464518 or 2990477 end else D=13652069 e=DG()end end end else if D<11561941 then if D<11206522 then if D<11114095 then if D<10698100 then O=q(-60417)D=8541651 d=RG iG=c[O]O=q(-60399)GG=iG[O]iG=GG(V,d)GG=H[N[6]]O=GG()m=iG+O d=nil MG=m+e O=1 m=256 s=MG%m m=DG[xG]e=s iG=e+O GG=uG[iG]MG=m..GG DG[xG]=MG else RG=q(-60495)z=c[RG]F=z D=4066573 end else H[xG]=GG D=H[xG]D=D and 2591248 or 16339706 end else if D<11304245 then if D<11236462 then RG=1 D={}H[N[2]]=D F=H[N[3]]wG=255 uG=F d=q(-60417)C=35184372088832 F=xG%C H[N[4]]=F e=xG%wG wG=2 C=e+wG H[N[5]]=C wG=c[d]d=q(-60413)e=wG[d]lG=RG wG=e(V)RG=0 e=q(-60492)z=wG a=lG<RG d=1 RG=d-lG DG[xG]=e D=8541651 e=0 else xG=H[N[1]]e=12808466034821 V=Y[1]C=q(-60540)DG=H[N[2]]uG=DG(C,e)F=xG[uG]D=V==F D=D and 13382544 or 6050572 end else GG=GG+O dG=not HG F=GG<=iG F=dG and F dG=GG>=iG dG=HG and dG F=dG or F dG=13226649 D=F and dG F=509808 D=D or F end end else if D<12744883 then if D<12326244 then if D<11796810 then D=true D=D and 12853888 or 6081028 else D=2799940 WG=2 L=b[WG]WG=H[U]g=L==WG Q=g end else F=2 D=V==F D=D and 15356597 or 3194859 end else if D<12875678 then if D<12811812 then F={}V=nil D=c[q(-60527)]else F=q(-60388)D=c[F]V=q(-60447)F=c[V]V=q(-60447)c[V]=D V=q(-60388)c[V]=F D=11677194 V=H[N[1]]xG=V()end else v=h(v)b=nil XG=h(XG)D=11429349 NG=h(NG)U=h(U)S=h(S)dG=h(dG)end end end end else if D<14351469 then if D<13309223 then if D<13091780 then if D<13039516 then if D<12993604 then F=q(-60461)D=c[F]F={D}D=c[q(-60446)]else H[xG]=Q T=1 WG=H[v]L=WG+T g=b[L]qG=lG+g g=256 D=qG%g L=H[S]lG=D g=a+L L=256 qG=g%L a=qG D=12917113 end else D=2151202 end else if D<13191640 then if D<13166037 then D=H[N[7]]D=D and 2862278 or 3245085 else D=H[N[1]]xG=DG z=255 d=0 wG=D(d,z)V[xG]=wG xG=nil D=9752215 end else XG=q(-60510)dG=K()S=100 H[dG]=GG F=c[XG]v=255 g=q(-60468)XG=q(-60486)D=F[XG]XG=1 F=D(XG,S)XG=K()S=0 H[XG]=F D=H[wG]T=0 F=D(S,v)S=K()v=1 nG=10000 H[S]=F D=H[wG]b=2 U=1 NG=H[XG]F=D(v,NG)v=K()H[v]=F F=H[wG]NG=F(U,b)F=1 b=q(-60404)D=NG==F F=q(-60497)NG=K()H[NG]=D qG=c[g]L=H[wG]WG={L(T,nG)}D=q(-60518)g=qG(n(WG))qG=q(-60404)Q=g..qG U=b..Q D=MG[D]D=D(MG,F,U)U=K()b=q(-60480)Q=u(15486651,{wG,dG;RG;DG,xG,m,NG;U;XG,v;S,z})H[U]=D F=c[b]b={F(Q)}D={n(b)}b=D D=H[NG]D=D and 1149621 or 1171221 end end else if D<13633810 then if D<13518801 then if D<13394629 then D=true F={D}D=c[q(-60401)]else s=nil wG=h(wG)d=nil m=h(m)a=nil d=q(-60479)MG=nil wG=q(-60510)uG=h(uG)lG=nil e=nil e=q(-60510)RG=h(RG)z=h(z)s={}lG={}xG=h(xG)C=h(C)DG=h(DG)RG=K()m=256 xG=nil DG=nil uG=K()H[uG]=xG xG=K()a=K()H[xG]=DG C=c[e]e=q(-60432)DG=C[e]z=q(-60417)C=K()H[C]=DG e=c[wG]wG=q(-60486)HG=m DG=e[wG]wG=c[d]d=q(-60538)e=wG[d]m=1 d=c[z]D=1062371 dG=m z=q(-60436)wG=d[z]z=K()d=0 H[z]=d d=2 H[RG]=d d={}H[a]=lG MG=1 lG=0 m=0 XG=dG<m m=MG-dG end else HG=q(-60388)D=c[HG]HG=q(-60447)c[HG]=D D=13061319 end else if D<14193022 then if D<14136197 then DG=nil uG=h(uG)xG=h(xG)C=nil F={}D=c[q(-60407)]else F=H[N[1]]nG=12560218317202 XG=q(-60402)V=H[N[2]]uG=9781071576572 DG=q(-60405)dG=q(-60428)lG=q(-60425)xG=V(DG,uG)A=8647913690416 z=q(-60468)C=9542995771501 CG=31153555706496 d=q(-60421)D=F[xG]uG=q(-60473)V=H[N[1]]KG=8852766479785 hG=34588621993461 xG=H[N[2]]v=q(-60479)e=9624570672047 DG=xG(uG,C)F=V[DG]Q=q(-60396)xG=H[N[1]]DG=H[N[2]]C=q(-60419)g=35008468675341 uG=DG(C,e)WG=12629198040698 cG=26933167124307 V=xG[uG]xG=q(-60435)c[xG]=D GG=q(-60523)xG=q(-60520)L=10701110776991 c[xG]=F O=q(-60507)s=q(-60409)MG=q(-60471)e=q(-60448)YG=4568466108504 xG=q(-60522)qG=153112177986 RG=q(-60454)c[xG]=V wG=23394290137748 DG=H[N[1]]uG=H[N[2]]HG=q(-60519)C=uG(e,wG)e=q(-60418)uG=q(-60522)xG=DG[C]PG=17216017222622 wG=q(-60499)DG=c[uG]C=c[e]Z=4640173754268 fG=q(-60469)w=15769931253536 a=q(-60482)e=c[wG]wG=c[d]d=c[z]z=c[RG]RG=c[lG]lG=c[a]a=c[s]m=q(-60408)s=c[MG]MG=c[m]m=c[GG]iG=q(-60529)GG=c[iG]iG=c[O]t=18056865484419 B=6081729566450 O=c[HG]HG=c[dG]dG=c[XG]S=c[v]NG=H[N[1]]U=H[N[2]]b=U(Q,qG)qG=q(-60391)v=NG[b]XG=S[v]T=31747334000533 NG=q(-60479)v=c[NG]U=H[N[1]]b=H[N[2]]Q=b(qG,g)NG=U[Q]S=v[NG]U=q(-60479)NG=c[U]b=H[N[1]]g=q(-60423)y=30183883298583 Q=H[N[2]]qG=Q(g,L)U=b[qG]b=q(-60417)v=NG[U]U=c[b]Q=H[N[1]]L=q(-60457)qG=H[N[2]]g=qG(L,WG)b=Q[g]NG=U[b]Q=q(-60417)b=c[Q]qG=H[N[1]]J=12756767070020 I=7898177293856 WG=q(-60474)g=H[N[2]]L=g(WG,T)Q=qG[L]T=q(-60493)U=b[Q]qG=q(-60417)W=26869453968180 Q=c[qG]g=H[N[1]]L=H[N[2]]WG=L(T,nG)qG=g[WG]g=q(-60417)b=Q[qG]qG=c[g]nG=q(-60444)L=H[N[1]]WG=H[N[2]]T=WG(nG,t)g=L[T]L=q(-60417)Q=qG[g]g=c[L]WG=H[N[1]]o=25709219276608 t=q(-60445)T=H[N[2]]nG=T(t,o)L=WG[nG]t=q(-60424)qG=g[L]L=q(-60411)g=c[L]o=5322843607916 WG=H[N[1]]T=H[N[2]]nG=T(t,o)L=WG[nG]nG=q(-60417)T=c[nG]t=H[N[1]]o=H[N[2]]E=o(fG,cG)nG=t[E]t=q(-60417)WG=T[nG]nG=c[t]cG=q(-60488)p=3755612596370 o=H[N[1]]E=H[N[2]]fG=E(cG,A)t=o[fG]T=nG[t]o=q(-60417)A=q(-60500)t=c[o]E=H[N[1]]fG=H[N[2]]cG=fG(A,B)o=E[cG]B=q(-60412)nG=t[o]E=q(-60417)o=c[E]fG=H[N[1]]cG=H[N[2]]A=cG(B,w)E=fG[A]t=o[E]fG=q(-60510)bG=33829264232569 E=c[fG]cG=H[N[1]]A=H[N[2]]w=q(-60442)B=A(w,bG)fG=cG[B]o=E[fG]bG=q(-60400)cG=q(-60510)fG=c[cG]A=H[N[1]]j=21128821921914 B=H[N[2]]x=1603216563514 w=B(bG,YG)cG=A[w]E=fG[cG]A=q(-60510)cG=c[A]B=H[N[1]]YG=q(-60422)M=6790196997206 w=H[N[2]]bG=w(YG,KG)KG=q(-60483)A=B[bG]B=q(-60510)fG=cG[A]A=c[B]w=H[N[1]]bG=H[N[2]]YG=bG(KG,PG)B=w[YG]w=q(-60510)cG=A[B]B=c[w]bG=H[N[1]]PG=q(-60539)YG=H[N[2]]KG=YG(PG,W)w=bG[KG]bG=q(-60510)A=B[w]w=c[bG]W=q(-60451)YG=H[N[1]]KG=H[N[2]]PG=KG(W,J)J=q(-60536)bG=YG[PG]YG=q(-60510)B=w[bG]bG=c[YG]r=709485748974 KG=H[N[1]]PG=H[N[2]]W=PG(J,Z)YG=KG[W]w=bG[YG]KG=q(-60476)YG=c[KG]Z=q(-60410)PG=H[N[1]]W=H[N[2]]J=W(Z,j)j=q(-60441)KG=PG[J]PG=q(-60476)bG=YG[KG]KG=c[PG]W=H[N[1]]J=H[N[2]]Z=J(j,CG)PG=W[Z]W=q(-60505)YG=KG[PG]CG=q(-60416)PG=c[W]J=H[N[1]]Z=H[N[2]]j=Z(CG,r)W=J[j]J=q(-60505)r=q(-60427)KG=PG[W]W=c[J]Z=H[N[1]]FG=7204128662916 j=H[N[2]]CG=j(r,hG)J=Z[CG]PG=W[J]hG=q(-60389)Z=q(-60505)J=c[Z]j=H[N[1]]CG=H[N[2]]r=CG(hG,y)Z=j[r]j=q(-60505)W=J[Z]Z=c[j]CG=H[N[1]]y=q(-60406)r=H[N[2]]kG=9739737709742 hG=r(y,I)j=CG[hG]CG=q(-60465)I=q(-60453)J=Z[j]j=c[CG]r=H[N[1]]hG=H[N[2]]y=hG(I,FG)CG=r[y]r=q(-60465)Z=j[CG]CG=c[r]hG=H[N[1]]FG=q(-60528)y=H[N[2]]I=y(FG,x)r=hG[I]x=q(-60390)hG=q(-60465)j=CG[r]r=c[hG]y=H[N[1]]I=H[N[2]]FG=I(x,p)hG=y[FG]y=q(-60465)CG=r[hG]p=q(-60463)hG=c[y]I=H[N[1]]FG=H[N[2]]x=FG(p,kG)y=I[x]r=hG[y]kG=q(-60533)I=q(-60465)y=c[I]FG=H[N[1]]x=H[N[2]]p=x(kG,M)I=FG[p]hG=y[I]uG={C,e,wG,d,z;RG,lG;a;s,MG;m,GG;iG,O,HG;dG;XG,S,v;NG;U,b;Q,qG;g;L,WG;T;nG;t,o,E;fG,cG,A;B,w,bG;YG,KG,PG;W;J,Z;j;CG;r;hG}e=25.0 C=uG[e]lG=q(-60449)e=K()H[e]=C HG=16379593654467 d=H[N[1]]z=H[N[2]]a=22700716713689 RG=z(lG,a)m=q(-60437)wG=d[RG]RG=q(-60435)z=c[RG]a=H[N[1]]s=H[N[2]]O=q(-60459)GG=31447514134228 MG=s(m,GG)lG=a[MG]MG=q(-60520)s=c[MG]m=H[N[1]]GG=H[N[2]]iG=GG(O,HG)MG=m[iG]a=s..MG RG=lG..a lG=q(-60456)d=z..RG C=wG..d a=22894191291401 d=H[N[1]]O=9097032536952 z=H[N[2]]RG=z(lG,a)wG=d[RG]RG=q(-60464)d=l(9634237,{N[1];N[2],e})z=q(-60494)c[z]=d d=i(557425,{})z=q(-60496)c[z]=d iG=q(-60481)d=i(11261183,{N[1],N[2]})z=q(-60502)c[z]=d z=c[RG]lG=H[N[1]]MG=q(-60514)m=25601630854807 a=H[N[2]]s=a(MG,m)RG=lG[s]d=z[RG]z=d()s=q(-60503)d=q(-60490)RG=q(-60490)c[d]=z d=c[RG]a=c[s]MG=H[N[1]]m=H[N[2]]GG=m(iG,O)RG=q(-60512)RG=d[RG]m=24501358303380 s=MG[GG]lG=a[s]RG=RG(d,lG)RG=q(-60490)d=c[RG]MG=q(-60415)lG=H[N[1]]a=H[N[2]]s=a(MG,m)RG=lG[s]a=C..DG lG=wG..a d[RG]=lG RG=q(-60490)d=c[RG]RG=q(-60460)RG=d[RG]RG=RG(d)GG=22383913807144 a=H[N[1]]m=q(-60513)s=H[N[2]]MG=s(m,GG)lG=a[MG]d=RG[lG]MG=q(-60411)a=q(-60496)lG=c[a]s=c[MG]a=lG(s)lG=a(d)s=q(-60502)a=c[s]s=a(xG)D=s and 7542077 or 4112554 end else xG=H[N[3]]DG=32 lG=13 V=xG%DG uG=H[N[4]]wG=H[N[2]]MG=H[N[3]]z=2 s=MG-V MG=32 a=s/MG RG=lG-a d=z^RG e=wG/d C=uG(e)uG=4294967296.0 d=1 DG=C%uG C=2 uG=C^V xG=DG/uG z=256 uG=H[N[4]]wG=xG%d d=4294967296.0 e=wG*d C=uG(e)uG=H[N[4]]wG=65536 e=uG(xG)DG=C+e C=65536 uG=DG%C e=DG-uG V=nil lG=256 C=e/wG wG=256 e=uG%wG d=uG-e wG=d/z z=256 d=C%z DG=nil xG=nil RG=C-d uG=nil z=RG/lG RG={e;wG;d;z}e=nil C=nil wG=nil H[N[1]]=RG d=nil D=14925519 z=nil end end end else if D<15352406 then if D<14803161 then if D<14678248 then if D<14580210 then F=q(-60494)D=c[F]xG=2 F={D(xG)}D=c[q(-60438)]F={n(F)}else D=1062371 MG=m S=MG s[MG]=S MG=nil end else HG=0 m=#s MG=m==HG D=MG and 548223 or 1730699 end else if D<15077925 then if D<14902041 then D=1730699 HG=0 m=#s MG=m==HG else DG=q(-60479)xG=c[DG]DG=q(-60538)V=xG[DG]DG=H[N[1]]D=c[q(-60530)]xG={V(DG)}F={n(xG)}end else F=q(-60519)D=c[F]V=q(-60397)F=D(V)D=c[q(-60440)]F={}end end else if D<16309926 then if D<15846743 then if D<15370020 then F=q(-60516)D=c[F]F={D}D=c[q(-60498)]else uG=1 C=2 xG=H[N[1]]DG=xG(uG,C)xG=1 V=DG==xG D=V and 9627390 or 8166475 F=V end else DG=H[N[6]]D=6101617 xG=DG==V F=xG end else if D<16697939 then if D<16346265 then D=true D=5965877 else D=wG D=e and 10476428 or 986239 end else a=lG()D=1558509 end end end end end end end D=#k return n(F)end,function(c)local q,n=1,c[1]while n do x[n],q=x[n]-1,q+1 if 0==x[n]then x[n],H[n]=nil,nil end n=c[q]end end,function(c,q)local n=d(q)local D=function()return b(c,{},q,n)end return D end,function(c,q)local n=d(q)local D=function(D)return b(c,{D},q,n)end return D end,{},function(c,q)local n=d(q)local D=function(D,Y,N,k,M)return b(c,{D,Y;N;k;M},q,n)end return D end,function(c,q)local n=d(q)local D=function(D,Y,N)return b(c,{D,Y,N},q,n)end return D end,{},function(c,q)local n=d(q)local D=function(D,Y,N,k,M,X)return b(c,{D;Y,N,k,M;X},q,n)end return D end,function(c)x[c]=x[c]-1 if 0==x[c]then x[c],H[c]=nil,nil end end,function(c,q)local n=d(q)local D=function(...)return b(c,{...},q,n)end return D end,function(c,q)local n=d(q)local D=function(D,Y,N,k,M,X,f)return b(c,{D,Y;N;k;M,X;f},q,n)end return D end,function()C=C+1 x[C]=1 return C end return(w(2033223,{}))(n(M))end)(getfenv and getfenv()or _ENV,unpack or table[q(-60495)],newproxy,setmetatable,getmetatable,select,{...})end)(...)