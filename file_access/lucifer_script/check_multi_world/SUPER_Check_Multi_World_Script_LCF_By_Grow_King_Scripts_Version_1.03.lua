-------------------- [ ABOUT ] --------------------
--CHECK MULTI WORLD SCRIPT LUCIFER BY GROW KING SCRIPTS
--FOLLOW OUR INFORMATION AND SOCIAL MEDIA https://linktr.ee/growks
---------------------------------------------------


Proxy_Settings = {
----------------- [ PROXY SETTINGS ] -----------------
--Add proxy
	Add_Proxy = "NO", --Options: yes or no
	Proxy_List = {--Format: IP:PORT:USERNAME:PASSWORD
		"IP:PORT:USERNAME:PASSWORD",
		"IP:PORT:USERNAME:PASSWORD",
	},
----------------------------------
--Preferences
	Proxy_Limit = 3, --Fill in with number (Bot/Proxy)
	Bypass_Logon = "NO", --Options: yes or no
----------------- [ END PROXY SETTINGS ] -----------------
}


Check_World_Settings = {
----------------- [ CHECK WORLD SETTINGS ] -----------------
--World setting
	External_World_List = "NO", External_World_List_Path = "FILE PATH", --Options yes or no | File path
	World_List = { "WORLD1|DOORID1", "WORLD2:DOORID2" },
----------------------------------
--Preferences
	Check_Ready_And_Unready_Tree = "YES", --Options: yes or no
	Tree_ID = { 4585, 5667, 341 }, --Fill in with tree item id
	
	Check_Item_Placed = "YES", --Options: yes or no
	Item_Placed_ID = { 4584, 5666, 340 }, --Fill in with tree item id
	
	Check_Item_Floating = "YES", --Options: yes or no
	Item_Floating_ID = { 4585, 5667, 341 }, --Fill in with tree item id
----------------- [ END CHECK WORLD SETTINGS ] -----------------
}


Advanced_Settings = {
----------------- [ ADVANCED SETTINGS ] -----------------
--Webhook setting
	Use_Webhook = "NO", --Options: yes or no
	Edit_Webhook_Message = "NO", --Options: yes or no
	Webhook_Link_World_Information = "LINK|0", --Format: Link|Message ID
	Webhook_Link_Reconnect = "LINK|0", --Format: Link|Message ID
----------------------------------
--Auto open log folder
	Auto_Open_Log_Folder = "NO", Lucifer_Folder_Path = "FILE PATH", --Options: yes or no | File path
----------------------------------
--Other settings
	Result_Appearance = { 1, 2, 3, 4, 5 }, --Options see below!
	--[[
		=> 0 - NONE
		=> 1 - TREE INFORMATION
		=> 2 - ITEM PLACED INFORMATION
		=> 3 - ITEM FLOATING INFORMATION
		=> 4 - FOSSIL INFORMATION
		=> 5 - FIRE INFORMATION
	]]

	Join_World_Delay = 5000, --In milliseconds
	Reconnect_Delay = 15000, --In milliseconds
	Max_Connect_Count = 5, Max_Reconnect_Cooldown = 1, --In minutes
	GMT_Time_Zone = 7, --Fill in with number (This is for webhook timestamps. Example: Jakarta/Indonesia's GMT time zone is +7 so you can write it as 7. Note: if your GMT time zone is minus, you can write it by adding a minus symbol like this -1)
----------------- [ END ADVANCED SETTINGS ] -----------------
}





--Don't delete or change the script function below!
---- [ LUCIFER VARIABLE API ] ----
	bot = getBot()
	world = bot:getWorld()
	Proxy_Manager = getProxyManager()
	bot.auto_reconnect = false
---- [ END LUCIFER VARIABLE API ] ----


---- [ GKS VARIABLE ] ----
--World and bot number variable
	local worldStartFrom = 1
----------------------------------
--Reconnect variable
	connectCount = 0
	autoRecon = true
----------------------------------
--Stop script variable
	noStopScript = true
----------------------------------
--Next world status
	nextWorldStatus = true
----------------------------------
--Webhook variable
	scriptName = "Check Multi World Script"
	creditName = "**Grow King Scripts**"
	reportCenterLink = "https://discord.gg/XvjAqQ8ZuG"
	reportCenter = ":warning: Report illegal resale and distribution of script/login code to <@1034725351873576990> for a free 300 GKS Balance. For more information [click here!](<" .. reportCenterLink .. ">)"
	webhookTitle = scriptName .. " \nScript By " .. creditName
	webhookAvatar = "https://media.discordapp.net/attachments/1151744897687224320/1160427676654391428/GKS_Logo.jpg?ex=65349f7d&is=65222a7d&hm=b11ee741e5b45e61d96257712224c5ad4c5c44e4e42fde4e441c529a646a708c&=&width=427&height=427"
	webhookImage = "https://media.discordapp.net/attachments/1151744897687224320/1160427676381741106/GKS_Footer.jpg?ex=65349f7d&is=65222a7d&hm=3e4925cc5fb2ba188bf8c6c4ae7cc58aeca7ca1507011b923c8500e1aa70eb8b&="
----------------------------------
--Folder and file variable
	logFolder = "GKSlog"
	proxyFile = logFolder .. "/proxyLog"
	httpProxyFile = logFolder .. "/httpProxyLog"
	worldBannedFile = logFolder .. "/worldBannedLog"
	worldLevelFile = logFolder .. "/worldLevelLog"
	worldNotInformationFile = logFolder .. "/worldInformationLog"
---- [ END GKS VARIABLE ] ----


---- [ PROXY SETTINGS ] ----
--Add Proxy
	Add_Proxy = Proxy_Settings.Add_Proxy:upper()
	Proxy_List = Proxy_Settings.Proxy_List
----------------------------------
--Preferences
	Proxy_Limit = tonumber(Proxy_Settings.Proxy_Limit)
	Bypass_Logon = Proxy_Settings.Bypass_Logon:upper()
---- [ END PROXY SETTINGS ] ----


---- [ CHECK WORLD SETTINGS ] ----
--World setting
	External_World_List = Check_World_Settings.External_World_List:upper()
	External_World_List_Path = Check_World_Settings.External_World_List_Path
	World_List = Check_World_Settings.World_List
		totalWorldInList = #World_List
----------------------------------
--Preferences
	Check_Ready_And_Unready_Tree = Check_World_Settings.Check_Ready_And_Unready_Tree:upper()
	Tree_ID = Check_World_Settings.Tree_ID
	Check_Item_Placed = Check_World_Settings.Check_Item_Placed:upper()
	Item_Placed_ID = Check_World_Settings.Item_Placed_ID
	Check_Item_Floating = Check_World_Settings.Check_Item_Floating:upper()
	Item_Floating_ID = Check_World_Settings.Item_Floating_ID
---- [ END CHECK WORLD SETTINGS ] ----


---- [ ADVANCED SETTINGS ] ----
--Webhook setting
	Use_Webhook = Advanced_Settings.Use_Webhook:upper()
	Edit_Webhook_Message = Advanced_Settings.Edit_Webhook_Message:upper()
	Webhook_Link_World_Information = Advanced_Settings.Webhook_Link_World_Information
		Webhook_Link_World_Information, Message_ID_World_Information = Webhook_Link_World_Information:match("([^|]+)[|]([^|]+)")
		Message_ID_World_Information = tonumber(Message_ID_World_Information)
	Webhook_Link_Reconnect = Advanced_Settings.Webhook_Link_Reconnect
		Webhook_Link_Reconnect, Message_ID_Reconnect = Webhook_Link_Reconnect:match("([^|]+)[|]([^|]+)")
		Message_ID_Reconnect = tonumber(Message_ID_Reconnect)
----------------------------------
--Auto open log folder
	Auto_Open_Log_Folder = Advanced_Settings.Auto_Open_Log_Folder:upper()
	Lucifer_Folder_Path = Advanced_Settings.Lucifer_Folder_Path
		Lucifer_Folder_Path = Lucifer_Folder_Path .. "/" .. logFolder
----------------------------------
--Other settings
	Result_Appearance = Advanced_Settings.Result_Appearance
	Join_World_Delay = tonumber(Advanced_Settings.Join_World_Delay)
		Join_World_Delay_Seconds = Join_World_Delay / 1000
	Reconnect_Delay = tonumber(Advanced_Settings.Reconnect_Delay)
	Max_Connect_Count = tonumber(Advanced_Settings.Max_Connect_Count)
	Max_Reconnect_Cooldown = tonumber(Advanced_Settings.Max_Reconnect_Cooldown)
		Max_Reconnect_Cooldown_Milliseconds = Max_Reconnect_Cooldown * 60 * 1000
	GMT_Time_Zone = tonumber(Advanced_Settings.GMT_Time_Zone)
---- [ END ADVANCED SETTINGS ] ----


---- [ MAKING GKS LOG FOLDER ] ----
function createLogFolder()
	os.execute("mkdir " .. logFolder)
end
---- [ END MAKING GKS LOG FOLDER ] ----


---- [ ADD PROXY ] ----
function proxyLog()
	local filename = string.format("%s.txt", proxyFile)
	local newFile = io.open(filename, "w")
	for _, writeProxy in pairs(Proxy_List) do
		newFile:write(writeProxy .. " \n")
		sleep(100)
	end
	newFile:close()
end

function bypassLogon()
	if Bypass_Logon == "YES" then
		bot.bypass_logon = true
	elseif Bypass_Logon == "NO" then
		bot.bypass_logon = false
	end
end

function addProxyMain()
	Proxy_Manager.localize = true
	Proxy_Manager.spread = false
	Proxy_Manager:setLimit(Proxy_Limit)
	
	if Add_Proxy == "NO" then 
		return 
	elseif Add_Proxy == "YES" then
		proxyLog()
		
		for _, getProxy in pairs(Proxy_List) do
			Proxy_Manager:addProxy(getProxy)
			sleep(100)
		end
	end
end
---- [ END ADD PROXY ] ----


---- [ LOG FILE ] ----
function worldInformationLogFile(file_name, worldName, description)
	local filename = string.format("%s.txt", file_name)
	local newData = worldName .. " " .. description
    
	local file = io.open(filename, "r")
    local fileContent = ""

    if file then
        fileContent = file:read("*a")
        file:close()
    end

   if not string.find(fileContent, newData, 1, true) then
        file = io.open(filename, "w")
        if file then
            file:write(newData .. " \n")
            file:write(fileContent)
            file:close()
        end
    end
	
	sleep(100)
end

function worldNotInformationLogFile(description)
    local filename = string.format("%s.txt", worldNotInformationFile)
	local newData = description
    
	local file = io.open(filename, "r")
    local fileContent = ""

    if file then
        fileContent = file:read("*a")
        file:close()
    end

   if not string.find(fileContent, newData, 1, true) then
        file = io.open(filename, "w")
        if file then
            file:write(newData .. " \n\n------------------------------------------- \n\n")
            file:write(fileContent)
            file:close()
        end
    end
	
	sleep(100)
end
---- [ END LOG FILE ] ----


---- [ WEBHOOK TIME ] ----
function webhookDate()
	local Time_Difference_Webhook = GMT_Time_Zone * 3600
	local Current_Time_GMT = os.time(os.date("!*t"))
	local Current_Time_Webhook = Current_Time_GMT + Time_Difference_Webhook
	return os.date("%A, %B %d, %Y | %H:%M", Current_Time_Webhook)
end
---- [ END WEBHOOK TIME ] ----


---- [ WEBHOOK ] ----
function webhookShareInfoWorld(message)
	if Use_Webhook == "YES" then
		local wh = Webhook.new(Webhook_Link_World_Information)
		wh.username = "Grow King Scripts"
		wh.avatar_url = webhookAvatar
		wh.embed1.use = true
		wh.embed1.image = webhookImage
		wh.embed1.title = webhookTitle
		wh.embed1.description = message .. " \n\n" .. reportCenter
		wh.embed1.color = 15105570
		wh.embed1.footer.text = scriptName .. " \n" .. webhookDate()
		if Edit_Webhook_Message:upper() == "YES" then
			wh:edit(Message_ID_World_Information)
		else
			wh:send()
		end
	elseif Use_Webhook == "NO" then
		return
	end
end

function webhookShareInfoReconnect(message)
	if Use_Webhook == "YES" then
		local wh = Webhook.new(Webhook_Link_Reconnect)
		wh.username = "Grow King Scripts"
		wh.avatar_url = webhookAvatar
		wh.content = "@everyone"
		wh.embed1.use = true
		wh.embed1.image = webhookImage
		wh.embed1.title = webhookTitle
		wh.embed1.description = message .. " \n\n" .. reportCenter
		wh.embed1.color = 15105570
		wh.embed1.footer.text = scriptName .. " \n" .. webhookDate()
		if Edit_Webhook_Message:upper() == "YES" then
			wh:edit(Message_ID_Reconnect)
		else
			wh:send()
		end
	elseif Use_Webhook == "NO" then
		return
	end
end

function webhookShareInfoAds(message)
	if Use_Webhook == "YES" then
		local wh = Webhook.new(Webhook_Link_World_Information)
		wh.username = "Grow King Scripts"
		wh.avatar_url = webhookAvatar
		wh.embed1.use = true
		wh.embed1.image = webhookImage
		wh.embed1.title = "[ ADVERTISEMENT ]"
		wh.embed1.description = message .. " \n\n" .. reportCenter
		wh.embed1.color = 15105570
		wh.embed1.footer.text = scriptName .. " \n" .. webhookDate()
		if Edit_Webhook_Message == "YES" then
			return
		else
			wh:send()
		end
	elseif Use_Webhook == "NO" then
		return
	end
end
---- [ END WEBHOOK ] ----


---- [ GET TIME] ----
function convertMillisecondsToHours(ms)
    local totalSeconds = math.floor(ms / 1000)

    hours = string.format("%02.f", math.floor(totalSeconds / 3600))
    mins = string.format("%02.f", math.floor((totalSeconds / 60) % 60))
    secs = string.format("%02.f", math.floor(totalSeconds % 60))
    return hours..":"..mins..":"..secs
end
---- [ END GET TIME] ----


---- [ BOT STATUS ] ----
function statusBotDescription()
	if bot.status == BotStatus.online then
		return "Online"
	elseif bot.status == BotStatus.offline then
		return "Offline"
	elseif bot.status == BotStatus.wrong_password then
		return "Wrong Password"
	elseif bot.status == BotStatus.account_banned then
		return "Account Banned"
	elseif bot.status == BotStatus.location_banned then
		return "Location Banned"
	elseif bot.status == BotStatus.version_update then
		return "Version Update"
	elseif bot.status == BotStatus.advanced_account_protection then
		return "Advanced Account Protection"
	elseif bot.status == BotStatus.server_overload then
		return "Server Overload"
	elseif bot.status == BotStatus.too_many_login then
		return "Too Many Login"
	elseif bot.status == BotStatus.maintenance then
		return "Maintenance"
	elseif bot.status == BotStatus.http_block then
		return "Http Block"
	elseif bot.status == BotStatus.captcha_requested then
		return "Captcha Requested"
	elseif bot.status == BotStatus.mod_entered then
		return "Mod Entered"
	elseif bot.status == BotStatus.changing_subserver then
		return "Changing Subserver"
		
	else 
		return "nil"
	end
end
---- [ END BOT STATUS ] ----


---- [ RECONNECT STATUS ] ----
function reconnectStatus()
	if bot.status == BotStatus.online then
		botStatus = "Online"
	else
		botStatus = "Offline"
	end
end
---- [ END RECONNECT STATUS ] ----


---- [ RECONNECT ] ----
function maxReconnect()
	reconnectStatus()
	
	if connectCount < Max_Connect_Count then
		connectCount = connectCount + 1
	else
		webhookShareInfoReconnect(
			"<a:toa:997296837352505415> **|** Sorry, the maximum reconnect has reached the limit. Please wait until the bot is back online! \n" ..
			"<a:clocksandsz:978628852832165968> **|** Cooldown: " .. convertMillisecondsToHours(Max_Reconnect_Cooldown_Milliseconds)
		)
		sleep(Max_Reconnect_Cooldown_Milliseconds)
		connectCount = 0
	end
end

function reconnect(worldName)
	reconnectStatus()
	
	if autoRecon then
		if bot.status ~= BotStatus.online then
			worldName = worldName:match("([^:|]+)"):upper()
			
			webhookShareInfoReconnect(
				"<:growbot:992058196439072770> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
				"<:status:1007595490600288326> **|** Bot Status: " .. botStatus .. " [" .. bot:getPing() .. "] \n" ..
				"=> `[" .. statusBotDescription() .. "]`"
			)
			maxReconnect()
			webhookShareInfoReconnect(
				"<:growbot:992058196439072770> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
				"<:status:1007595490600288326> **|** Bot Status: " .. botStatus .. " [" .. bot:getPing() .. "] \n" ..
				"=> `[" .. statusBotDescription() .. "]` \n" ..
				"<a:toa:997296837352505415> **|** Bot Trying to Reconnect! (" .. connectCount .. "/" .. Max_Connect_Count .. ")"
			)
			bot:connect()
			sleep(Reconnect_Delay)
			while true do
				while bot.status ~= BotStatus.online and noStopScript == true do
					maxReconnect()
					webhookShareInfoReconnect(
						"<:growbot:992058196439072770> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
						"<:status:1007595490600288326> **|** Bot Status: " .. botStatus .. " [" .. bot:getPing() .. "] \n" ..
						"=> `[" .. statusBotDescription() .. "]` \n" ..
						"<a:toa:997296837352505415> **|** Bot Trying to Reconnect! (" .. connectCount .. "/" .. Max_Connect_Count .. ")"
					)
					bot:connect()
					sleep(Reconnect_Delay)
				end
				changingSubserver()
				webhookShareInfoReconnect(
					"<a:toa:997296837352505415> **|** " .. bot.name:upper() .. " is back online!"
				)
				while bot.status == BotStatus.online and world.name ~= worldName do 
					bot:warp(worldName)
					addEvent(Event.variantlist, worldEvent)
					listenEvents(Join_World_Delay_Seconds)
					changingSubserver()
				end
				sleep(3000)
				if bot.status == BotStatus.online and world.name == worldName then
					connectCount = 0
					reconnectStatus()
					return false
				end
			end
		end
	end
end
---- [ END RECONNECT ] ----


---- [ CHANGING SUBSERVER ] ----
function changingSubserver()
	if bot.status == BotStatus.changing_subserver then
		sleep(10000)
		local sendWebhookAmount = 0
		while bot.status == BotStatus.changing_subserver do
			if sendWebhookAmount < 1 then
				webhookShareInfoWorld(
					"<a:toa:997296837352505415> **|** " .. bot.name:upper() .. " is currently changing subserver."
				)
			end
			bot:connect()
			sleep(Reconnect_Delay)
		end
	end
end
---- [ END CHANGING SUBSERVER ] ----


---- [ GET ITEM NAME ] ----
function getItemName(itemID)
	return getInfo(itemID).name
end
---- [ END GET ITEM NAME ] ----


---- [ SCAN ] ----
function readyTreeScan()
	if Check_Ready_And_Unready_Tree == "YES" then
		local readyTree = {}
		local retry = false
		
		for _, treeList in pairs(Tree_ID) do
			readyTree[treeList] = 0
		end
		
		if bot.status == BotStatus.online then
			for _, tile in pairs(world:getTiles()) do
				if bot.status == BotStatus.online then
					for _, treeList in pairs(Tree_ID) do
						if tile.fg == treeList and tile:canHarvest() then
							readyTree[treeList] = readyTree[treeList] + 1
						end
					end
				else
					reconnect(World_List[worldStartFrom]:upper())
					retry = true
					break
				end
			end
			
			if retry then
				readyTreeScan()
			end
			
			return readyTree
		else
			reconnect(World_List[worldStartFrom]:upper())
			readyTreeScan()
		end
	elseif Check_Ready_And_Unready_Tree == "NO" then
		return
	end
end

function unreadyTreeScan()
	if Check_Ready_And_Unready_Tree == "YES" then
		local unreadyTree = {}
		local retry = false
		
		for _, treeList in pairs(Tree_ID) do
			unreadyTree[treeList] = 0
		end
		
		if bot.status == BotStatus.online then
			for _, tile in pairs(world:getTiles()) do
				if bot.status == BotStatus.online then
					for _, treeList in pairs(Tree_ID) do
						if tile.fg == treeList and not tile:canHarvest() then
							unreadyTree[treeList] = unreadyTree[treeList] + 1
						end
					end
				else
					reconnect(World_List[worldStartFrom]:upper())
					retry = true
					break
				end
			end
			
			if retry then
				unreadyTreeScan()
			end
			
			return unreadyTree
		else
			reconnect(World_List[worldStartFrom]:upper())
			unreadyTreeScan()
		end
	elseif Check_Ready_And_Unready_Tree == "NO" then
		return
	end
end

function readyAndUnreadyTreeResult()
	local str = ""
	
	if Check_Ready_And_Unready_Tree == "YES" then
		for _, treeList in pairs(Tree_ID) do
			str = str .. "\n" .. getItemName(treeList) .. ": Ready [" .. readyTreeScan()[treeList] .. "], Unready [" .. unreadyTreeScan()[treeList] .. "], Tree Amount [" .. readyTreeScan()[treeList] + unreadyTreeScan()[treeList] .. "]"
		end
	elseif Check_Ready_And_Unready_Tree == "NO" then
		str = str .. "\n<a:toa:997296837352505415> **|** You did not enable the Check_Ready_And_Unready_Tree feature. No data is available!"
	end
	
	return str
end

function placedItemScan()
	if Check_Item_Placed == "YES" then
		local count = {}
		local retry = false
		
		for _, placedList in pairs(Item_Placed_ID) do
			count[placedList] = 0
		end
		
		if bot.status == BotStatus.online then
			for id, counts in pairs(world.growscan:getTiles()) do
				if bot.status == BotStatus.online then
					for _, placedList in pairs(Item_Placed_ID) do
						if id == placedList then
							count[placedList] = counts
						end
					end
				else
					reconnect(World_List[worldStartFrom]:upper())
					retry = true
					break
				end
			end
			
			if retry then
				placedItemScan()
			end
			
			return count
		else
			reconnect(World_List[worldStartFrom]:upper())
			placedItemScan()
		end
	elseif Check_Item_Placed == "NO" then
		return
	end
end

function placedItemResult()
	local str = ""
	
	if Check_Item_Placed == "YES" then
		for _, placedList in pairs(Item_Placed_ID) do
			str = str .. "\n" .. getItemName(placedList) .. ": [" .. placedItemScan()[placedList] .. "]"
		end
	elseif Check_Item_Placed == "NO" then
		str = str .. "\n<a:toa:997296837352505415> **|** You did not enable the Check_Item_Placed feature. No data is available!"
	end
	
	return str
end

function floatingItemScan()
	if Check_Item_Floating == "YES" then
		local count = {}
		local retry = false
		
		for _, floaingList in pairs(Item_Floating_ID) do
			count[floaingList] = 0
		end
		
		if bot.status == BotStatus.online then
			for id, counts in pairs(world.growscan:getObjects()) do
				if bot.status == BotStatus.online then
					for _, floaingList in pairs(Item_Floating_ID) do
						if id == floaingList then
							count[floaingList] = counts
						end
					end
				else
					reconnect(World_List[worldStartFrom]:upper())
					retry = true
					break
				end
			end
			
			if retry then
				floatingItemScan()
			end
			
			return count
		else
			reconnect(World_List[worldStartFrom]:upper())
			floatingItemScan()
		end
	elseif Check_Item_Floating == "NO" then
		return
	end
end

function floatingItemResult()
	local str = ""
	
	if Check_Item_Floating == "YES" then
		for _, floatingList in pairs(Item_Floating_ID) do
			str = str .. "\n" .. getItemName(floatingList) .. ": [" .. floatingItemScan()[floatingList] .. "]"
		end
	elseif Check_Item_Floating == "NO" then
		str = str .. "\n<a:toa:997296837352505415> **|** You did not enable the Check_Item_Placed feature. No data is available!"
	end
	
	return str
end

function fossilRockScan()
	local fossil = 0
	local retry = false
	
	if bot.status == BotStatus.online then
		for _, tile in pairs(world:getTiles()) do
			if bot.status == BotStatus.online then
				if tile.fg == 3918 then
					fossil = fossil + 1
				end
			else
				reconnect(World_List[worldStartFrom]:upper())
				retry = true
				break
			end
		end
		
		if retry then
			fossilRockScan()
		end
		
		return fossil
	else
		reconnect(World_List[worldStartFrom]:upper())
		fossilRockScan()
	end
end

function fireScan()
	local fire = 0
	local retry = false

	if bot.status == BotStatus.online then
		for id, count in pairs(world.growscan:getTiles()) do
			if bot.status == BotStatus.online then
				if id == 14142 then
					fire = count
				end
			else
				reconnect(World_List[worldStartFrom]:upper())
				retry = true
				break
			end
		end
		
		if retry then
			fireScan()
		end
		
		return fire
	else
		reconnect(World_List[worldStartFrom]:upper())
		fireScan()
	end
end
---- [ END SCAN ] ----


---- [ RESULT APPEARANCE ] ----
function hasAccessAble()
	local hasAccessToWorld = 0
	for _, tile in pairs(world:getTiles()) do
		if world:hasAccess(tile.x, tile.y) ~= 0 and #bot:getPath(tile.x, tile.y) > 0 then
			hasAccessToWorld = hasAccessToWorld + 1
		end
	end
	
	if hasAccessToWorld > 0 and hasAccessToDoorID == true then
		return "[Can Access World and Door ID]"
	elseif hasAccessToWorld > 0 and hasAccessToDoorID == false then
		return "[Can Only Access World]"
	elseif hasAccessToWorld == 0 and hasAccessToDoorID == true then
		return "[Can Only Access Door ID]"
	elseif hasAccessToWorld == 0 and hasAccessToDoorID == false then
		return "[Can't Access World and Door ID]"
	end
end

function webhookResultShow()
	result = ""
	
	if Result_Appearance[1] == 1 then
        result = result .. 
		"\n\n**[ TREE INFORMATION ]** \n" ..
		"<:pohon:1007595269199769680> **|** Tree amount: \n" .. 
		readyAndUnreadyTreeResult()
    end

    if Result_Appearance[2] == 2 then
        result = result .. 
		"\n\n**[ ITEM PLACED INFORMATION ]** \n" ..
		":blue_square: **|** Item Placed Amount: \n" ..
		placedItemResult()
    end

    if Result_Appearance[3] == 3 then
        result = result .. 
		"\n\n**[ ITEM FLOATING INFORMATION ]** \n" ..
		":stop_button: **|** Item Floating Amount: \n" ..
		floatingItemResult()
    end

    if Result_Appearance[4] == 4 then
        result = result .. 
		"\n\n**[ FOSSIL INFORMATION ]** \n" ..
		"<:posil:989484591029026867> **|** Fossil Rock Amount: " .. fossilRockScan()
    end
	
	if Result_Appearance[5] == 5 then
        result = result .. 
		"\n\n**[ FIRE INFORMATION ]** \n" ..
		":fire: **|** Fire Amount: " .. fireScan()
    end
	
	return result
end

function resultFileShow()
	result = ""
	
	if Result_Appearance[1] == 1 then
        result = result .. 
		"\n\n[ TREE INFORMATION ] \n" ..
		"Tree amount: \n" .. 
		readyAndUnreadyTreeResult()
    end

    if Result_Appearance[2] == 2 then
        result = result .. 
		"\n\n[ ITEM PLACED INFORMATION ] \n" ..
		"Item Placed Amount: \n" ..
		placedItemResult()
    end

    if Result_Appearance[3] == 3 then
        result = result .. 
		"\n\n[ ITEM FLOATING INFORMATION ] \n" ..
		"Item Floating Amount: \n" ..
		floatingItemResult()
    end

    if Result_Appearance[4] == 4 then
        result = result .. 
		"\n\n[ FOSSIL INFORMATION ] \n" ..
		"Fossil Rock Amount: " .. fossilRockScan()
    end
	
	if Result_Appearance[5] == 5 then
        result = result .. 
		"\n\n[ FIRE INFORMATION ] \n" ..
		"Fire Amount: " .. fireScan()
	end
	
	return result
end
---- [ END RESULT APPEARANCE ] ----


---- [ CHECK WORLD ] ----
function worldEvent(varlist)
	reconnect(World_List[worldStartFrom]:upper())
	
	if varlist:get(0):getString() == "OnConsoleMessage" then
    message = varlist:get(1):getString()
		if message:match("That world is inaccessible.") then
			webhookShareInfoWorld(
				"<a:toa:997296837352505415> **|** " .. World_List[worldStartFrom]:upper() .. " world has been banned."
			)
			worldInformationLogFile(
				worldBannedFile, World_List[worldStartFrom]:upper(), " world has been banned."
			)
			reconnect(World_List[worldStartFrom]:upper())
			nextWorldStatus = false
			nextWorld()
		elseif message:match("Players lower than level (%d+)") then
			matchLevel = message:match("Players lower than level (%d+)")
			levelNumber = tonumber(matchLevel)
			webhookShareInfoWorld(
				"<a:toa:997296837352505415> **|** " .. World_List[worldStartFrom]:upper() .. " world has a minimum level restriction. \n" ..
				":heart: **|** Minimum Level: " .. levelNumber
			)
			worldInformationLogFile(
				worldLevelFile, World_List[worldStartFrom]:upper(), "has a minimum level restriction of level "..levelNumber.."."
			)
			reconnect(World_List[worldStartFrom]:upper())
			nextWorldStatus = false
			nextWorld()
		end
	end
end

function nextWorld()
	reconnect(World_List[worldStartFrom]:upper())
	
	if nextWorldStatus == true and noStopScript == true then
		reconnect(World_List[worldStartFrom]:upper())
		webhookShareInfoWorld(
			"**[ WORLD INFORMATION ]** \n" ..
			":globe_with_meridians: **|** " .. World_List[worldStartFrom]:upper() .. " \n" ..
			hasAccessAble() ..
			
			webhookResultShow()
		)
		
		worldNotInformationLogFile(
			"[ WORLD INFORMATION ] \n" ..
			World_List[worldStartFrom]:upper() .. " \n" ..
			hasAccessAble() ..
			
			resultFileShow()
		)
		
		table.remove(World_List, worldStartFrom)
		totalWorldInList = #World_List
		worldStartFrom = 0
		if totalWorldInList == 0 then
			bot:disconnect()
			sleep(100)
			webhookShareInfoWorld(
				"<a:toa:997296837352505415> **|** Process completed and " .. bot.name:upper() .. " is " .. statusBotDescription():lower() .. ". Check the log file in the **GKSlog** folder."
			)
			if Auto_Open_Log_Folder == "YES" then
				os.execute('start "" "' .. Lucifer_Folder_Path .. '"')
				sleep(100)
			end
			noStopScript = false
			bot:stopScript()
			sleep(1000)
		end
	elseif nextWorldStatus == false and noStopScript == true then
		reconnect(World_List[worldStartFrom]:upper())
		table.remove(World_List, worldStartFrom)
		totalWorldInList = #World_List
		worldStartFrom = 0
		if totalWorldInList == 0 then
			bot:disconnect()
			sleep(100)
			webhookShareInfoWorld(
				"<a:toa:997296837352505415> **|** Process completed and " .. bot.name:upper() .. " is " .. statusBotDescription():lower() .. ". Check the log file in the **GKSlog** folder."
			)
			if Auto_Open_Log_Folder == "YES" then
				os.execute('start "" "' .. Lucifer_Folder_Path .. '"')
				sleep(100)
			end
			noStopScript = false
			bot:stopScript()
			sleep(1000)
		end
		nextWorldStatus = true
	end
	
	if nextWorldStatus == true and noStopScript == true then
		sleep(Join_World_Delay)
		
		worldStartFrom = worldStartFrom + 1
		if worldStartFrom <= totalWorldInList then
			checkWorld()
		else
			bot:disconnect()
			sleep(100)
			webhookShareInfoWorld(
				"<a:toa:997296837352505415> **|** Process completed and " .. bot.name:upper() .. " is " .. statusBotDescription():lower() .. ". Check the log file in the **GKSlog** folder."
			)
			if Auto_Open_Log_Folder == "YES" then
				os.execute('start "" "' .. Lucifer_Folder_Path .. '"')
				sleep(100)
			end
			noStopScript = false
			bot:stopScript()
			sleep(1000)
		end
	end
end

function checkWorld()
	reconnect(World_List[worldStartFrom]:upper())
	hasAccessToDoorID = true
	
	if bot.status == BotStatus.online then
		bot:sendPacket(3, "action|quit_to_exit")
		sleep(1000)
		bot:warp(World_List[worldStartFrom]:upper())
		sleep(Join_World_Delay)
		
		local maxJoinWorld = 0
		while not bot:isInWorld(World_List[worldStartFrom]:upper()) and maxJoinWorld < 3 and noStopScript == true do
			reconnect(World_List[worldStartFrom]:upper())
			bot:warp(World_List[worldStartFrom]:upper())
			addEvent(Event.variantlist, worldEvent)
			listenEvents(Join_World_Delay_Seconds)
			changingSubserver()
			maxJoinWorld = maxJoinWorld + 1
			if maxJoinWorld >= 3 then
				hasAccessToDoorID = false
				break
			end
		end
		
		nextWorld()
	else
		reconnect(World_List[worldStartFrom]:upper())
		checkWorld()
	end
end
---- [ END CHECK WORLD ] ----


---- [ EXTERNAL WORLD LIST ] ----
function externalWorldList()
	if External_World_List == "YES" then
		local filename = External_World_List_Path
		local file = io.open(filename, "r")
		
		if file then
			World_List = {}
			
			for line in file:lines() do
				table.insert(World_List, line)
			end

			file:close()
		else
			bot:disconnect()
			sleep(100)
			webhookShareInfoWorld(
				"External world list file not found!"
			)
			noStopScript = false
			bot:stopScript()
			sleep(1000)
		end
	elseif External_World_List == "NO" then
		return
	end
end
---- [ END EXTERNAL WORLD LIST ] ----


---- [ RUNNING ] ----
createLogFolder()
bypassLogon()
addProxyMain()

while bot.status ~= BotStatus.online do
	bot:connect()
	sleep(Reconnect_Delay)
end

webhookShareInfoAds(":pushpin: **|** Buy other scripts only at Grow King Scripts. \nReport bugs [click here!](<https://discord.gg/tTQ6s9pyVx>)")
bot:getLog():append("............................................................... \n[GROW KING SCRIPTS] Script Started! \n\nBuy other scripts only at Grow King Scripts. \nReport bugs: https://discord.gg/tTQ6s9pyVx. \n...............................................................")
sleep(100)
externalWorldList()
checkWorld()
---- [ END RUNNING ] ----