-------------------- [ ABOUT ] --------------------
--ROTATION SCRIPT LUCIFER MULTIBOT BY GROW KING SCRIPTS
--FOLLOW OUR INFORMATION AND SOCIAL MEDIA https://linktr.ee/growks
---------------------------------------------------


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
---- [ LUCIFER VARIABLE API ] ----
	bot = getBot()
	proxy_manager = getProxyManager()
---- [ END LUCIFER VARIABLE API ] ----


---- [ GKS VARIABLE ] ----
--Folder and file variable
	logFolder = "GKSlog"
	proxyFile = logFolder .. "/proxyLog"
	proxyBypassFile = logFolder .. "/proxyBypassLog"
---- [ END GKS VARIABLE ] ----


---- [ PROXY SETTINGS ] ----
--Proxy option
	add_proxy_option = proxy_settings.add_proxy_option:upper()
	external_proxy_list = proxy_settings.external_proxy_list
		external_proxy_list_option, external_proxy_list_file_path = external_proxy_list:match("([^|]+)[|]?(.*)")
	external_change_proxy_list = proxy_settings.external_change_proxy_list
		external_change_proxy_list_option, external_change_proxy_list_file_path = external_change_proxy_list:match("([^|]+)[|]?(.*)")
-------------------------
--Preferences
	proxy_limit = tonumber(proxy_settings.proxy_limit)
	bypass_logon_option = proxy_settings.bypass_logon_option:upper()
	external_proxy_bypass_list = proxy_settings.external_proxy_bypass_list
		external_proxy_bypass_list_option, external_proxy_bypass_list_file_path = external_proxy_bypass_list:match("([^|]+)[|]?(.*)")
---- [ END PROXY SETTINGS ] ----


---- [ BOT SETTINGS ] ----
--Add bot option
	external_bot_list = bot_settings.external_bot_list
		external_bot_list_option, external_bot_list_file_path = external_bot_list:match("([^|]+)[|]?(.*)")
	external_change_bot_list = bot_settings.external_change_bot_list
		external_change_bot_list_option, external_change_bot_list_file_path = external_change_bot_list:match("([^|]+)[|]?(.*)")
-------------------------
--Preferences
	start_script_delay_option = bot_settings.start_script_delay_option:upper()
	start_script_delayMS = tonumber(bot_settings.start_script_delayMS)
---- [ END BOT SETTINGS ] ----


---- [ ROTATION SETTINGS ] ----
--Rotation option
	external_rotation_world_list = rotation_settings.external_rotation_world_list
		external_rotation_world_list_option, external_rotation_world_list_file_path = external_rotation_world_list:match("([^|]+)[|]?(.*)")
---- [ END ROTATION SETTINGS ] ----


---- [ EXTERNAL FILE ] ----
function externalFile()
	if external_proxy_list_option == "ON" then
		proxy_list = {}
		local filename = external_proxy_list_file_path
		local file = io.open(filename, "r")
		if file then
			for line in file:lines() do
				table.insert(proxy_list, line)
			end
			file:close()
		else
			error("External proxy list file not found, make sure the file path is correct!")
			sleep(10)
		end
	else
		proxy_list = proxy_settings.proxy_list
	end
	if external_change_proxy_list_option == "ON" then
		change_proxy_list = {}
		local filename = external_change_proxy_list_file_path
		local file = io.open(filename, "r")
		if file then
			for line in file:lines() do
				table.insert(change_proxy_list, line)
			end
			file:close()
		else
			error("External change proxy list file not found, make sure the file path is correct!")
			sleep(10)
		end
	else
		change_proxy_list = proxy_settings.change_proxy_list
	end
	if bypass_logon_option == "ON" and external_proxy_bypass_list_option == "ON" then
		proxy_bypass_list = {}
		local filename = external_proxy_bypass_list_file_path
		local file = io.open(filename, "r")
		if file then
			for line in file:lines() do
				table.insert(proxy_bypass_list, line)
			end
			file:close()
		else
			error("External proxy bypass list file not found, make sure the file path is correct!")
			sleep(10)
		end
	else
		proxy_bypass_list = proxy_settings.proxy_bypass_list
	end
	if external_bot_list_option == "ON" then
		bot_list = {}
		local filename = external_bot_list_file_path
		local file = io.open(filename, "r")
		if file then
			for line in file:lines() do
				table.insert(bot_list, line)
			end
			file:close()
		else
			error("External bot list file not found, make sure the file path is correct!")
			sleep(10)
		end
	else
		bot_list = bot_settings.bot_list
	end
	if external_change_bot_list_option == "ON" then
		change_bot_list = {}
		local filename = external_change_bot_list_file_path
		local file = io.open(filename, "r")
		if file then
			for line in file:lines() do
				table.insert(change_bot_list, line)
			end
			file:close()
		else
			error("External change bot list file not found, make sure the file path is correct!")
			sleep(10)
		end
	else
		change_bot_list = bot_settings.change_bot_list
	end
	if external_rotation_world_list_option == "ON" then
		rotation_world_list = {}
		local filename = external_rotation_world_list_file_path
		local file = io.open(filename, "r")
		if file then
			for line in file:lines() do
				table.insert(rotation_world_list, line)
			end
			file:close()
		else
			error("External rotation world list file not found, make sure the file path is correct!")
			sleep(10)
		end
	else
		rotation_world_list = rotation_settings.rotation_world_list
	end
end

externalFile()
---- [ END EXTERNAL FILE ] ----


---- [ LOG FOLDER ] ----
function createLogFolder()
	os.execute("mkdir " .. logFolder)
end
---- [ END LOG FOLDER ] ----


---- [ ADD PROXY ] ----
function changeProxyListUpdate()
	if change_proxy_list[1] ~= "" then
		change_proxy_list_update = {}
		for i = 1, tonumber(proxy_limit) do
			for _, changeProxyList in ipairs(change_proxy_list) do
				table.insert(change_proxy_list_update, changeProxyList)
			end
		end
	end
end

function extractProxyBypassList()
	if bypass_logon_option == "ON" and #proxy_bypass_list > 0 then
		proxy_bypass_list_update = {}
        for _, proxyBypassData in ipairs(proxy_bypass_list) do
			if proxyBypassData ~= "" then
				local parts = {}
				for part in string.gmatch(proxyBypassData, "[^|]+") do
					table.insert(parts, part)
				end
				table.insert(proxy_bypass_list_update, parts)
			end
        end
	end
end

function proxyLog()
	if add_proxy_option == "ON" then
		local filename = string.format("%s.txt", proxyFile)
		local newFile = io.open(filename, "w")
		for _, proxyData in pairs(proxy_list) do
			newFile:write(proxyData .. " \n")
		end
		newFile:close()
	end
	if bypass_logon_option == "ON" then
		local filename = string.format("%s.txt", proxyBypassFile)
		local newFile = io.open(filename, "w")
		for _, proxyBypassData in pairs(proxy_bypass_list_update) do
			local proxy_bypass_data = proxyBypassData[1]
			newFile:write(proxy_bypass_data .. " \n")
		end
		newFile:close()
	end
end

function bypassLogon(botIndex)
	if bypass_logon_option == "ON" then
		botIndex.bypass_logon = true
	else
		botIndex.bypass_logon = false
	end
end

function addProxy()
	proxy_manager.localize = true
	proxy_manager.spread = false
	proxy_manager:setLimit(proxy_limit)
	extractProxyBypassList()
	
	if add_proxy_option == "ON" then
		proxyLog()
		for _, proxyData in pairs(proxy_list) do
			proxy_manager:addProxy(proxyData)
		end
		
		if bypass_logon_option == "ON" then
			for _, proxyBypassData in pairs(proxy_bypass_list_update) do
				local proxy_bypass_data = proxyBypassData[1]
				local proxy_bypass_type
				if proxyBypassData[2] then
					proxy_bypass_type = proxyBypassData[2]:upper()
				else
					proxy_bypass_type = nil
				end
				if proxy_bypass_type == "HTTP" then
					addDataProxy(proxy_bypass_data, true)
				else
					addDataProxy(proxy_bypass_data, false)
				end
			end
		end
	else
		return
	end
end
---- [ END ADD PROXY ] ----


---- [ RUNNING ] ----
createLogFolder()
changeProxyListUpdate()
addProxy()

local remainingBots = #bot_list - #getBots()
if remainingBots > 0 then
	for index = 1, remainingBots do
		indexString = tostring(math.random(0, 999999))
		addBot(indexString, indexString)
	end
	while #getBots() < #bot_list do
		sleep(1000)
	end
end

indexRunningScript = {}
indexUnrunningScript = {}
for index, botData in ipairs(getBots()) do
	if botData:isRunningScript() then
		table.insert(indexRunningScript, index)
	else
		botData.reconnect_interval = 1000
		table.insert(indexUnrunningScript, index)
	end
end
---- [ END RUNNING ] ----

scriptConfig1 = [[
---- [ PROXY SETTINGS ] ----
--Add proxy
	proxy_list = { "]] .. table.concat(proxy_list, '", "') .. [[" }
	local change_proxy_list_updates = "]] .. table.concat(change_proxy_list_update, '", "') .. [["
	if #change_proxy_list_updates > 0 then
		change_proxy_list = { "]] .. table.concat(change_proxy_list_update, '", "') .. [[" }
	else
		change_proxy_list = {}
	end
-------------------------
--Preferences
	proxy_limit = ]] .. proxy_limit .. [[
---- [ END PROXY SETTINGS ] ----


---- [ BOT SETTINGS ] ----
--Add bot option
	bot_list = { "]] .. table.concat(bot_list, '", "') .. [[" }
	change_bot_list = { "]] .. table.concat(change_bot_list, '", "') .. [[" }
-------------------------
--Pickaxe option
	pickaxe_option = "]] .. bot_settings.pickaxe_option:upper() .. [["
	pickaxe_list = { "]] .. table.concat(bot_settings.pickaxe_list, '", "') .. [[" }
-------------------------
--Preferences
	change_bot_on_maximum_level_option = "]] .. bot_settings.change_bot_on_maximum_level_option:upper() .. [["
	maximum_level = ]] .. tonumber(bot_settings.maximum_level) .. [[
	rare_clothes_option = "]] .. bot_settings.rare_clothes_option:upper() .. [["
	move_animation_option = "]] .. bot_settings.move_animation_option:upper() .. [["
	remove_bot_option = "]] .. bot_settings.remove_bot_option:upper() .. [["
	punch_animation_option = "]] .. bot_settings.punch_animation_option:upper() .. [["
	move_speed = ]] .. tonumber(bot_settings.move_speed) .. [[
	move_range = ]] .. tonumber(bot_settings.move_range) .. [[
---- [ END BOT SETTINGS ] ----
]]

scriptConfig2 = [[
---- [ ROTATION SETTINGS ] ----
--Rotation option
	rotation_world_list = { "]] .. table.concat(rotation_world_list, '", "') .. [[" }
	spread_rotation_world_option = "]] .. rotation_settings.spread_rotation_world_option:upper() .. [["
	rotation_world_limit = ]] .. tonumber(rotation_settings.rotation_world_limit)  .. [[
	start_rotation_world_list = ]] .. tonumber(rotation_settings.start_rotation_world_list)  .. [[
	seed_world_list = { "]] .. table.concat(rotation_settings.seed_world_list, '", "') .. [[" }
-------------------------
--pnb option
	pnb_world_option = "]] .. rotation_settings.pnb_world_option:upper() .. [["
	pnb_range = ]] .. tonumber(rotation_settings.pnb_range) .. [[
		if pnb_range % 2 > 0 then
			pnb_range_helper = pnb_range + 1
		end
	pnb_xy = "]] .. rotation_settings.pnb_xy .. [["
		pnb_x, pnb_y = pnb_xy:match("([^|]+)[|]?(.*)")
		if pnb_x and pnb_y then
			pnb_x = tonumber(pnb_x)
			pnb_y = tonumber(pnb_y)
		else
			pnb_x = 1
			pnb_y = 23
		end
-------------------------
--Preferences
	rotation_looping_option = "]] .. rotation_settings.rotation_looping_option:upper() .. [["
	take_floating_block_option = "]] .. rotation_settings.take_floating_block_option:upper() .. [["
---- [ END ROTATION SETTINGS ] ----


---- [ ADVANCED SETTINGS ] ----
--Auto buy option
	buy_pack_option = "]] .. advanced_settings.buy_pack_option:upper() .. [["
	pack_list = { "]] .. table.concat(advanced_settings.pack_list, '", "') .. [[" }
	pack_world_list = { "]] .. table.concat(advanced_settings.pack_world_list, '", "') .. [[" }
-------------------------
--Webhook option
	webhook_option = "]] .. advanced_settings.webhook_option:upper() .. [["
	webhook_edit_option = "]] .. advanced_settings.webhook_edit_option:upper() .. [["
	bot_information_link_list = { "]] .. table.concat(advanced_settings.bot_information_link_list, '", "') .. [[" }
	dropped_item_link_list = { "]] .. table.concat(advanced_settings.dropped_item_link_list, '", "') .. [[" }
	reconnect_link_list = { "]] .. table.concat(advanced_settings.reconnect_link_list, '", "') .. [[" }

	webhook_all_bot_option = "]] .. advanced_settings.webhook_all_bot_option:upper() .. [["
	webhook_all_bot_edit_option = "]] .. advanced_settings.webhook_all_bot_edit_option:upper() .. [["
	webhook_all_bot_delayS = ]] .. tonumber(advanced_settings.webhook_all_bot_delayS) .. [[
	all_bot_link = "]] .. advanced_settings.all_bot_link .. [["
		all_bot_link, all_bot_message_id = all_bot_link:match("([^|]+)[|]?(.*)")
		all_bot_message_id = tonumber(all_bot_message_id)
-------------------------
--Leveling option
	leveling_option = "]] .. advanced_settings.leveling_option:upper() .. [["
-------------------------
--Delay option
--In milliseconds
	harvest_delayMS = ]] .. tonumber(advanced_settings.harvest_delayMS) .. [[
	plant_delayMS = ]] .. tonumber(advanced_settings.plant_delayMS) .. [[
	hit_delayMS = ]] .. tonumber(advanced_settings.hit_delayMS) .. [[
	place_delayMS = ]] .. tonumber(advanced_settings.place_delayMS) .. [[
	drop_delayMS = ]] .. tonumber(advanced_settings.drop_delayMS) .. [[
	auto_buy_delayMS = ]] .. tonumber(advanced_settings.auto_buy_delayMS) .. [[
	wear_delayMS = ]] .. tonumber(advanced_settings.wear_delayMS) .. [[
	join_world_delayMS = ]] .. tonumber(advanced_settings.join_world_delayMS) .. [[
	reconnect_delayMS = ]] .. tonumber(advanced_settings.reconnect_delayMS) .. [[
	
--In minutes
	hard_join_world_delayM = ]] .. tonumber(advanced_settings.hard_join_world_delayM * 60000) .. [[
	max_reconnect_delayM = ]] .. tonumber(advanced_settings.max_reconnect_delayM * 60000) .. [[
	maintenance_delayM = ]] .. tonumber(advanced_settings.maintenance_delayM * 60000) .. [[
	version_update_delayM = ]] .. tonumber(advanced_settings.version_update_delayM * 60000) .. [[
	mod_entered_delayM = ]] .. tonumber(advanced_settings.mod_entered_delayM * 60000) .. [[
-------------------------
--Preferences
	auto_trash = "]] .. advanced_settings.auto_trash:upper() .. [["
	trash_id = { ]] .. table.concat(advanced_settings.trash_id, ', ') .. [[ }
	stop_script = "]] .. advanced_settings.stop_script:upper() .. [["
	max_reconnect = ]] .. tonumber(advanced_settings.max_reconnect) .. [[
		if max_reconnect <= 0 then
			max_reconnect = 1
		end
	malady_check_option = "]] .. advanced_settings.malady_check_option:upper() .. [["
	consume_vial_list = { "]] .. table.concat(advanced_settings.consume_vial_list, '", "') .. [[" }
	auto_surg_option = "]] .. advanced_settings.auto_surg_option:upper() .. [["
	auto_surg_world_list = { "]] .. table.concat(advanced_settings.auto_surg_world_list, '", "') .. [[" }
	random_chat = "]] .. advanced_settings.random_chat:upper() .. [["
	random_chat_delayS = ]] .. tonumber(advanced_settings.random_chat_delayS) .. [[
	chat_list = { "]] .. table.concat(advanced_settings.chat_list, '", "') .. [[" }
---- [ END ADVANCED SETTINGS ] ----
]]

script = [[
---- [ LUCIFER VARIABLE API ] ----
	bot = getBot()
	world = bot:getWorld()
	inventory = bot:getInventory()
	bot.auto_reconnect = false
	bot.reconnect_interval = 15
	bot.collect_path_check = true
	bot.collect_range = 4
	bot.object_collect_delay = 50
	bot:setInterval(Action.collect, 1)
---- [ END LUCIFER VARIABLE API ] ----


---- [ REMOVE BOT ] ----
function removeBotIndex(removeBotStatus, errorMessage)
	if removeBotStatus == "ON" then
		bot:disconnect()
		sleep(10)
		bot:stopScript()
		sleep(10)
		removeBot(bot.name)
		sleep(10)
	else
		bot:getLog():append(errorMessage)
		sleep(10)
		if stop_script == "ON" then
			bot:disconnect()
			sleep(10)
			error(errorMessage)
			sleep(10)
		else
			bot:disconnect()
			sleep(10)
			connectBot()
		end
	end
end
---- [ END REMOVE BOT ] ----


---- [ SPLIT TABLE (CONFIG INDEX) ] ----	
function splitTable(tables, numGroups)
	local result = {}
	local groupSize = math.ceil(#tables / numGroups)
	for i = 1, numGroups do
		local startIdx = (i - 1) * groupSize + 1
		local endIdx = math.min(i * groupSize, #tables)
		local group = {}
		for j = startIdx, endIdx do
			table.insert(group, tables[j])
		end
		table.insert(result, group)
	end
	return result
end

function splitTableRotationWorld(bot_index, worlds, limit)
	local total_worlds = math.ceil((#worlds / bot_index) * limit)
	local total_groups = math.ceil(#worlds / total_worlds)
	local result = {}
	local index = 1

	for i = 1, bot_index do
		local bot_worlds = {}
		
		if index <= total_groups then
			local start_world = (index - 1) * total_worlds + 1
			local end_world = math.min(start_world + total_worlds - 1, #worlds)

			for j = start_world, end_world do
				table.insert(bot_worlds, worlds[j])
			end

			if i % limit == 0 then
				index = index + 1
			end
		end
		
		table.insert(result, bot_worlds)
	end
	
	return result
end
	
function splitTableWithLimit(botIndex, tables, limit)
	local startIndex = (botIndex - 1) * limit + 1
	local endIndex = math.min(startIndex + limit - 1, #tables)
	local splitTableWithLimit = {}
	for i = startIndex, endIndex do
		local tableIndex = tables[i]
		table.insert(splitTableWithLimit, tableIndex)
	end
	return splitTableWithLimit
end

function splitTableLooping(tables)
	local result = {}
	local tableCount = #tables
	if runningIndex then
		for checkRunningIndex, bot in ipairs(getBots()) do
			botIndex = checkRunningIndex - isRunningIndex
			local indexTable = (botIndex - 1) % tableCount + 1
			result[bot.name] = tables[indexTable]
		end
	elseif not runningIndex then
		for botIndex, bot in ipairs(getBots()) do
			local indexTable = (botIndex - 1) % tableCount + 1
			result[bot.name] = tables[indexTable]
		end
	end
	return result
end

function splitTableLimit(botIndex, tables, limit)
	local index = math.floor((botIndex - 1) / limit) + 1
	return tables[index]
end

function splitSingleTable(table)
	local assignments = {}
    for i = 1, #table do
        assignments[i] = table[i]
    end
    return assignments
end

function setBotPositions(index, posX, posY, rangeposY, previousPosY)
	local newPosY = previousPosY or posY
	if previousPosY then
		newPosY = newPosY + rangeposY
	end
	return posX, newPosY
end

indexRunningScript = { ]] .. table.concat(indexRunningScript, ', ') .. [[ }
if indexRunningScript[1] ~= nil then
	indexUnrunningScript = indexRunningScript[#indexRunningScript] + 1
end
local previousPosY = {}
runningIndex = false
bots = {}
for checkRunningIndex, bot in pairs(getBots()) do
	if indexRunningScript[#indexRunningScript] == checkRunningIndex then
		runningIndex = true
		isRunningIndex = checkRunningIndex
		break
	end
end

if runningIndex then
	for botIndex, bot in ipairs(getBots()) do
		local index = botIndex - isRunningIndex
		local isUnrunningIndex = #getBots() - isRunningIndex
		local assignedProxyList = splitTableLimit(index, proxy_list, proxy_limit)
		local assignedChangeProxyList = splitTableWithLimit(index, change_proxy_list, proxy_limit)
		local assignedBotList = splitSingleTable(bot_list)[index]
		local assignedChangeBotList = splitTable(change_bot_list, isUnrunningIndex)[index]
		local assignedPickaxeList = splitTableLooping(pickaxe_list)
		if spread_rotation_world_option == "ON" then
			assignedRotationList = splitTableRotationWorld(#getBots(), rotation_world_list, rotation_world_limit)[index + 1]
		else
			assignedRotationList = rotation_world_list
		end
		
		local assignedPnbx, assignedPnby
		local worldKey = table.concat(assignedRotationList, "|")
		if previousPosY[worldKey] then
			assignedPnbx, assignedPnby = setBotPositions(index, pnb_x, pnb_y, pnb_range_helper, previousPosY[worldKey])
		else
			assignedPnbx, assignedPnby = setBotPositions(index, pnb_x, pnb_y, pnb_range_helper)
		end
		previousPosY[worldKey] = assignedPnby
		
		local assignedPackList = splitTableLooping(pack_list)
		local assignedBotInformationLinkList = splitTableLooping(bot_information_link_list)
		local assignedDroppedItemLinkList = splitTableLooping(dropped_item_link_list)
		local assignedReconnectLinkList = splitTableLooping(reconnect_link_list)
		local assignedConsumeVialList = splitTableLooping(consume_vial_list)
		local assignedAutoSurgWorldList = splitTableLooping(auto_surg_world_list)
		bots[bot.name] = {
			proxy_list = assignedProxyList,
			change_proxy_list = assignedChangeProxyList,
			bot_list = assignedBotList,
			change_bot_list = assignedChangeBotList,
			pickaxe_list = assignedPickaxeList[bot.name],
			rotation_world_list = assignedRotationList,
			pnb_x = assignedPnbx,
			pnb_y = assignedPnby,
			pack_list = assignedPackList[bot.name],
			bot_information_link_list = assignedBotInformationLinkList[bot.name],
			dropped_item_link_list = assignedDroppedItemLinkList[bot.name],
			reconnect_link_list = assignedReconnectLinkList[bot.name],
			consume_vial_list = assignedConsumeVialList[bot.name],
			auto_surg_world_list = assignedAutoSurgWorldList[bot.name],
		}
	end
elseif not runningIndex then
	for botIndex, bot in ipairs(getBots()) do 
		local index = botIndex
		local isUnrunningIndex = #getBots()
		local assignedProxyList = splitTableLimit(index, proxy_list, proxy_limit)
		local assignedChangeProxyList = splitTableWithLimit(index, change_proxy_list, proxy_limit)
		local assignedBotList = splitSingleTable(bot_list)[index]
		local assignedChangeBotList = splitTable(change_bot_list, isUnrunningIndex)[index]
		local assignedPickaxeList = splitTableLooping(pickaxe_list)
		if spread_rotation_world_option == "ON" then
			assignedRotationList = splitTableRotationWorld(#getBots(), rotation_world_list, rotation_world_limit)[index]
		else
			assignedRotationList = rotation_world_list
		end
		
		local assignedPnbx, assignedPnby
		local worldKey = table.concat(assignedRotationList, "|")
		if previousPosY[worldKey] then
			assignedPnbx, assignedPnby = setBotPositions(index, pnb_x, pnb_y, pnb_range_helper, previousPosY[worldKey])
		else
			assignedPnbx, assignedPnby = setBotPositions(index, pnb_x, pnb_y, pnb_range_helper)
		end
		previousPosY[worldKey] = assignedPnby
		
		local assignedPackList = splitTableLooping(pack_list)
		local assignedBotInformationLinkList = splitTableLooping(bot_information_link_list)
		local assignedDroppedItemLinkList = splitTableLooping(dropped_item_link_list)
		local assignedReconnectLinkList = splitTableLooping(reconnect_link_list)
		local assignedConsumeVialList = splitTableLooping(consume_vial_list)
		local assignedAutoSurgWorldList = splitTableLooping(auto_surg_world_list)
		bots[bot.name] = {
			proxy_list = assignedProxyList,
			change_proxy_list = assignedChangeProxyList,
			bot_list = assignedBotList,
			change_bot_list = assignedChangeBotList,
			pickaxe_list = assignedPickaxeList[bot.name],
			rotation_world_list = assignedRotationList,
			pnb_x = assignedPnbx,
			pnb_y = assignedPnby,
			pack_list = assignedPackList[bot.name],
			bot_information_link_list = assignedBotInformationLinkList[bot.name],
			dropped_item_link_list = assignedDroppedItemLinkList[bot.name],
			reconnect_link_list = assignedReconnectLinkList[bot.name],
			consume_vial_list = assignedConsumeVialList[bot.name],
			auto_surg_world_list = assignedAutoSurgWorldList[bot.name],
		}
	end
end

--Change proxy
	proxy_list = bots[bot.name].proxy_list
		proxy_list = { proxy_list }
	change_proxy_list = bots[bot.name].change_proxy_list
	
	if proxy_list[1] ~= "" then
		for i = #proxy_list, 1, -1 do
			table.insert(change_proxy_list, 1, proxy_list[i])
		end
	end
	start_change_proxy_list = 1
-------------------------
--Change bot option
	bot_list = bots[bot.name].bot_list
		bot_list = { bot_list }
	change_bot_list = bots[bot.name].change_bot_list
	for _, changeBotList in pairs(change_bot_list) do
		if changeBotList ~= "" then
			table.insert(bot_list, changeBotList)
		end
	end
	start_bot_list = 1
-------------------------	
--Pickaxe option
	pickaxe_list = { bots[bot.name].pickaxe_list }
-------------------------	
--Rotation option
	rotation_world_list = bots[bot.name].rotation_world_list
	if spread_rotation_world_option == "ON" then
		pnb_x = bots[bot.name].pnb_x
		pnb_y = bots[bot.name].pnb_y
		if pnb_x < 0 or pnb_y > 53 then
			removeBotIndex("OFF", "Pnb Y is " .. pnb_y .. ". This indicates that " .. bot.name .. "'s has no area for PNB!")
		end
	end
-------------------------	
--Auto buy option
	if buy_pack_option == "ON" then
		pack_list = bots[bot.name].pack_list
	end
-------------------------
--Webhook option
	bot_information_link_list = bots[bot.name].bot_information_link_list
	dropped_item_link_list = bots[bot.name].dropped_item_link_list
	reconnect_link_list = bots[bot.name].reconnect_link_list
-------------------------
--Preferences
	consume_vial_list = { bots[bot.name].consume_vial_list }
	auto_surg_world_list = { bots[bot.name].auto_surg_world_list }
---- [ END SPLIT TABLE (CONFIG INDEX) ] ----


---- [ EXTRACT TABLE ] ----
function extractBotList()
	bot_list_update = {}
	for _, element in ipairs(bot_list) do
		local parts = {}
		for part in string.gmatch(element, "[^|]+") do
			table.insert(parts, part)
		end
		table.insert(bot_list_update, {parts[1], parts[2], parts[3], parts[4], parts[5], parts[6], parts[7], parts[8], parts[9], parts[10]})
	end
	if #bot_list_update == 0 then
		removeBotIndex("OFF", bot.name .. "'s does not have a bot list")
	end
end

function extractPickaxeWorldList()
	if pickaxe_option == "ON" then
		pickaxe_list_update = {}
		for _, element in ipairs(pickaxe_list) do
			local parts = {}
			for part in string.gmatch(element, "[^|]+") do
				table.insert(parts, part)
			end
			table.insert(pickaxe_list_update, {parts[1], parts[2], parts[3]})
		end
		start_pickaxe_list = 1
		pickaxe_world = pickaxe_list_update[start_pickaxe_list][1]:upper()
		pickaxe_world_id = pickaxe_list_update[start_pickaxe_list][2]:upper()
			if ((pickaxe_world_id == "-") or (not pickaxe_world_id)) then
				pickaxe_world_id = ""
			end
		pickaxe_id = tonumber(pickaxe_list_update[start_pickaxe_list][3])
			if not pickaxe_id then
				removeBotIndex("OFF", "Pickaxe world list format is wrong!")
			end
	else
		pickaxe_world = ""
		pickaxe_world_id = ""
		pickaxe_id = ""
	end
end

function extractRotationWorldList()
	rotation_world_list_update = {}
	for _, element in ipairs(rotation_world_list) do
		local parts = {}
		for part in string.gmatch(element, "[^|]+") do
			table.insert(parts, part)
		end
		table.insert(rotation_world_list_update, {parts[1], parts[2], parts[3]})
	end
	if #rotation_world_list_update == 0 then
		removeBotIndex("OFF", bot.name .. "'s does not have a rotation world list")
	end
	if ((start_rotation_world_list > #rotation_world_list_update) or (start_rotation_world_list < 1)) then
		start_rotation_world_list = 1
	end
	rotation_world = rotation_world_list_update[start_rotation_world_list][1]:upper()
	rotation_world_id = rotation_world_list_update[start_rotation_world_list][2]:upper()
		if ((rotation_world_id == "-") or (not rotation_world_id)) then
			rotation_world_id = ""
		end
	block_id = tonumber(rotation_world_list_update[start_rotation_world_list][3])
		if not block_id then
			removeBotIndex("OFF", "Rotation world list format is wrong!")
		end
	seed_id = tonumber(block_id + 1)
	seed_block_ID = {seed_id, block_id}
end

function extractSeedWorldList()
	seed_world_list_update = {}
	for _, element in ipairs(seed_world_list) do
		local parts = {}
		for part in string.gmatch(element, "[^|]+") do
			table.insert(parts, part)
		end
		table.insert(seed_world_list_update, {parts[1], parts[2], parts[3]})
	end
	if #seed_world_list_update == 0 then
		removeBotIndex("OFF", bot.name .. "'s does not have a seed world list")
	end
	start_seed_world = 1
	seed_world = seed_world_list_update[start_seed_world][1]:upper()
	seed_world_id = seed_world_list_update[start_seed_world][2]:upper()
		if ((seed_world_id == "-") or (not seed_world_id)) then
			seed_world_id = ""
		end
	seed_world_marker_id = tonumber(seed_world_list_update[start_seed_world][3])
		if not seed_world_marker_id then
			removeBotIndex("OFF", "Seed world list format is wrong!")
		end
end

function extractPackList()
	if buy_pack_option == "ON" then
		pack_list_update = {}
		for part in string.gmatch(pack_list, "[^|]+") do
			table.insert(pack_list_update, part)
		end
		if #pack_list_update == 0 then
			removeBotIndex("OFF", bot.name .. "'s does not have a pack list")
		end
		pack_name = pack_list_update[1]
		pack_price = tonumber(pack_list_update[2])
		pack_id = {}
		for packid in pack_list_update[3]:gmatch("%d+") do
			table.insert(pack_id, tonumber(packid))
		end
	else
		pack_name = ""
		pack_price = 999999999999
		pack_id = { 0 }
	end
end

function extractPackWorldList()
	if buy_pack_option == "ON" then
		pack_world_list_update = {}
		for _, element in ipairs(pack_world_list) do
			local parts = {}
			for part in string.gmatch(element, "[^|]+") do
				table.insert(parts, part)
			end
			table.insert(pack_world_list_update, {parts[1], parts[2], parts[3], parts[4]})
		end
		if #pack_world_list_update == 0 then
			removeBotIndex("OFF", bot.name .. "'s does not have a pack world list")
		end
		start_pack_world = 1
		pack_world = pack_world_list_update[start_pack_world][1]:upper()
		pack_world_id = pack_world_list_update[start_pack_world][2]:upper()
			if ((pack_world_id == "-") or (not pack_world_id)) then
				pack_world_id = ""
			end
		pack_world_marker_id = tonumber(pack_world_list_update[start_pack_world][3])
			if not pack_world_marker_id then
				removeBotIndex("OFF", "Pack world list format is wrong!")
			end
		max_drop_pack = tonumber(pack_world_list_update[start_pack_world][4])
			if ((max_drop_pack == 0) or (not max_drop_pack)) then
				max_drop_pack = 1
			end
	else
		pack_world = ""
		pack_world_id = ""
		pack_world_marker_id = ""
		max_drop_pack = 0
	end
end

function extractBotInformationLinkList()
	if webhook_option == "ON" then
		bot_information_link_list_update = {}
		for part in string.gmatch(bot_information_link_list, "[^|]+") do
			table.insert(bot_information_link_list_update, part)
		end
		bot_information_link = bot_information_link_list_update[1]
		bot_information_message_id = tonumber(bot_information_link_list_update[2])
	else
		bot_information_link = ""
		bot_information_message_id = 0
	end
end

function extractDroppedItemLinkList()
	if webhook_option == "ON" then
		dropped_item_link_list_update = {}
		for part in string.gmatch(dropped_item_link_list, "[^|]+") do
			table.insert(dropped_item_link_list_update, part)
		end
		dropped_item_link = dropped_item_link_list_update[1]
		dropped_item_message_id = tonumber(dropped_item_link_list_update[2])
	else
		dropped_item_link = ""
		dropped_item_message_id = 0
	end
end

function extractReconnectLinkList()
	if webhook_option == "ON" then
		reconnect_link_list_update = {}
		for part in string.gmatch(reconnect_link_list, "[^|]+") do
			table.insert(reconnect_link_list_update, part)
		end
		reconnect_link = reconnect_link_list_update[1]
		reconnect_message_id = tonumber(reconnect_link_list_update[2])
	else
		reconnect_link = ""
		reconnect_message_id = 0
	end
end

function extractConsumeVial()
	if malady_check_option == "ON" then
		consume_vial_list_update = {}
		for _, element in ipairs(consume_vial_list) do
			local parts = {}
			for part in string.gmatch(element, "[^|]+") do
				table.insert(parts, part)
			end
			table.insert(consume_vial_list_update, {parts[1], parts[2], parts[3], parts[4]})
		end
		start_consume_vial_list = 1
		consume_vial_option = consume_vial_list_update[start_consume_vial_list][1]:upper()
		vial_id = tonumber(consume_vial_list_update[start_consume_vial_list][2])
		consume_vial_world = consume_vial_list_update[start_consume_vial_list][3]:upper()
		consume_vial_world_id = consume_vial_list_update[start_consume_vial_list][4]:upper()
			if ((consume_vial_world_id == "-") or (not consume_vial_world_id)) then
				consume_vial_world_id = ""
			end
	else
		consume_vial_option = ""
		vial_id = ""
		consume_vial_world = ""
		consume_vial_world_id = ""
	end
end

function extractAutoSurgWorld()
	if malady_check_option == "ON" and auto_surg_option == "ON" then
		auto_surg_world_list_update = {}
		for _, element in ipairs(auto_surg_world_list) do
			local parts = {}
			for part in string.gmatch(element, "[^|]+") do
				table.insert(parts, part)
			end
			table.insert(auto_surg_world_list_update, {parts[1], parts[2], parts[3]})
		end
		start_auto_surg_world_list = 1
		auto_surg_world = auto_surg_world_list_update[start_auto_surg_world_list][1]:upper()
		auto_surg_world_id = auto_surg_world_list_update[start_auto_surg_world_list][2]:upper()
			if ((auto_surg_world_id == "-") or (not auto_surg_world_id)) then
				auto_surg_world_id = ""
			end
		auto_surg_price = tonumber(auto_surg_world_list_update[start_auto_surg_world_list][3])
	else
		auto_surg_world = ""
		auto_surg_world_id = ""
		auto_surg_price = ""
	end
end

function runningExtractTable()
	extractBotList()
	extractPickaxeWorldList()
	extractRotationWorldList()
	extractSeedWorldList()
	extractPackList()
	extractPackWorldList()
	extractBotInformationLinkList()
	extractDroppedItemLinkList()
	extractReconnectLinkList()
	extractConsumeVial()
	extractAutoSurgWorld()
end
runningExtractTable()
---- [ END EXTRACT TABLE ] ----


---- [ EVENT ] ----
function variantListEvent(varlist, netid)
	if varlist:get(0):getString() == "OnConsoleMessage" then
		message = varlist:get(1):getString()
		if message:match("That world is inaccessible.") then
			unlistenEvents()
			whBotInformation(
				"<:Megaphone:1254703457236025385> **|** Bot Information: " .. worldNameBanned .. " world has been banned"
			)
			if worldNameBanned == rotation_world then
				changeRotationWorld(true)
			elseif worldNameBanned == seed_world then
				changeWorld(seed_world_list_update, start_seed_world, worldNameBanned, "World Has Been Banned")
			elseif worldNameBanned == pack_world then
				changeWorld(pack_world_list_update, start_pack_world, worldNameBanned, "World Has Been Banned")
			elseif worldNameBanned == pickaxe_world then
				changeWorld(pickaxe_list_update, start_pickaxe_list, worldNameBanned, "World Has Been Banned")
			elseif worldNameBanned == consume_vial_world then
				changeWorld(consume_vial_list_update, start_consume_vial_list, worldNameBanned, "World Has Been Banned")
			elseif worldNameBanned == auto_surg_world then
				changeWorld(auto_surg_world_list_update, start_auto_surg_world_list, worldNameBanned, "World Has Been Banned")
			elseif worldNameBanned == randomPnbWorldString() then
				cachedRandomPnbWorld = nil
				randomPnbNotWorldBanned = false
			end
		elseif message:match("Oops, you've created too many worlds today.  Try again tomorrow!") then
			unlistenEvents()
			bot:disconnect()
			sleep(100)
			whAllBot()
			whBotInformation(
				"**[ BOT INFORMATION ]** \n" ..
				"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
				":identification_card: **|** Account Type: " .. accountType .. " \n" ..
				"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
				"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" .. 
				"<:Right_Arrow_V2:1190695167078957056>   `[Too Many Worlds Created Today]`"
			)
			changeBot(true, "Too many worlds created today")
		elseif message:match("You are recovering from surgery.") then
			local hours = message:match("`$(%d+) hours`` left")
			unlistenEvents()
			if hours then
				malady_timeS = tonumber((hours * 3600))
			end
		end
	elseif varlist:get(0):getString() == "OnDialogRequest" then
		message = varlist:get(1):getString()
		if message:match("add_label_with_icon|big|`wAuto Surgeon Station``|left|14666|") then
			auto_surg_price = message:match("add_label_with_icon|small|Cost: `9(%d+)``")
			get_owned_WL = message:match("add_label_with_icon|small|Owned World Locks: `9(%d+)``|left|242|")
			
			if get_owned_WL < auto_surg_price then
				autoSurg(maladyName)
			else
				buttonClicked = "action|dialog_return\ndialog_name|autoSurgeonUi\nbuttonClicked|purchaseCureBtn"
				bot:sendPacket(2, buttonClicked)
			end
		elseif message:match("add_textbox|`9It will cost 2 World Locks.``|left|") then
			buttonClicked = "action|dialog_return\ndialog_name|autoSurgeonCurePurchaseUi\nbuttonClicked|purchaseCureBtn"
			bot:sendPacket(2, buttonClicked)
		elseif message:match("add_label_with_icon|big|`wError``|left|") then
			unlistenEvents()
			malady_name = "None"
			buttonClicked = "action|dialog_return\ndialog_name|Close"
			bot:sendPacket(2, buttonClicked)
		end
	end
end

function gameMessageEvent(message)
	if message:match("(%w*GKSPNB%w*)") and messageEventStatus == "CHECK_RANDOM_PNB_WORLD" then
		cachedRandomPnbWorld = message:match("(%w*GKSPNB%w*)"):upper()
		unlistenEvents()
	elseif message:match("Malady:") and messageEventStatus == "CHECK_MALADY" then
		malady_status = true
		malady_name = message:match("Malady:%s*(.-)%s*!")
		local hours, minutes, seconds = message:match("(%d+) hours, (%d+) mins, (%d+) secs left")
		if not hours then
			hours = 0
			minutes, seconds = message:match("(%d+) mins, (%d+) secs left")
		end
		if not minutes then
			minutes = 0
			seconds = message:match("(%d+) secs left")
		end
		seconds = seconds or 0
		if hours and minutes and hours then
			malady_timeS = tonumber((hours * 3600) + (minutes * 60) + (seconds * 1))
		end
	end
end
---- [ END EVENT ] ----


---- [ TIME ] ----
--Time variable
function timeStart()
	checkYear = (os.date "%Y")
	checkMonth = (os.date "%m")
	checkDay = (os.date "%d")
	checkHour = (os.date "%H")
	checkMinute = (os.date "%M")
	checkSecond = (os.date "%S")
end

function timeEnd()
	checkYear_1 = (os.date "%Y")
	checkMonth_1 = (os.date "%m")
	checkDay_1 = (os.date "%d")
	checkHour_1 = (os.date "%H")
	checkMinute_1 = (os.date "%M")
	checkSecond_1 = (os.date "%S")
	local timeStart = os.time {
		year = checkYear, 
		month = checkMonth, 
		day = checkDay, 
		hour = checkHour, 
		min = checkMinute, 
		sec = checkSecond
	}
	local timeEnd = os.time {
		year = checkYear_1, 
		month = checkMonth_1, 
		day = checkDay_1, 
		hour = checkHour_1, 
		min = checkMinute_1, 
		sec = checkSecond_1
	}
	local calculateTime = (timeEnd - timeStart) / 3600
	return {
		time_hours = math.floor(calculateTime), 
		time_minutes = math.floor((calculateTime - math.floor(calculateTime)) * 60)
	}
end

function timeStartHalf()
	checkYear_2 = (os.date "%Y")
	checkMonth_2 = (os.date "%m")
	checkDay_2 = (os.date "%d")
	checkHour_2 = (os.date "%H")
	checkMinute_2 = (os.date "%M")
	checkSecond_2 = (os.date "%S")
end

function timeEndHalf()
	checkYear_3 = (os.date "%Y")
	checkMonth_3 = (os.date "%m")
	checkDay_3 = (os.date "%d")
	checkHour_3 = (os.date "%H")
	checkMinute_3 = (os.date "%M")
	checkSecond_3 = (os.date "%S")
	local timeStart = os.time {
		year = checkYear_2, 
		month = checkMonth_2, 
		day = checkDay_2, 
		hour = checkHour_2, 
		min = checkMinute_2, 
		sec = checkSecond_2
	}
	local timeEnd = os.time {
		year = checkYear_3, 
		month = checkMonth_3, 
		day = checkDay_3, 
		hour = checkHour_3, 
		min = checkMinute_3, 
		sec = checkSecond_3
	}
	calculateTimeHalf = timeEnd - timeStart
end

function secondON(seconds)
	local seconds = tonumber(seconds)
	
	if seconds <= 0 then
		return "00:00:00";
	else
		hours = string.format("%02.f", math.floor(seconds / 3600));
		mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)));
		secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60));
		return hours .. ":" .. mins .. ":" .. secs
	end
end

function secondR(seconds)
	local seconds = tonumber(seconds)
	
	if seconds <= 0 then
		return "00:00";
	else
		hours = string.format("%02.f", math.floor(seconds / 3600));
		mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)));
		secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60));
		return mins .. ":" .. secs
	end
end

function convertMStoH(milliseconds)
    local totalSeconds = math.floor(milliseconds / 1000)

    hours = string.format("%02.f", math.floor(totalSeconds / 3600))
    mins = string.format("%02.f", math.floor((totalSeconds / 60) % 60))
    secs = string.format("%02.f", math.floor(totalSeconds % 60))
    return hours .. ":" .. mins .. ":" .. secs
end
---- [ END TIME ] ----


---- [ SCAN ] ----
function treeScan(smart_scan_status, smart_scan_ready_tree_status, smart_scan_unready_tree_status)
	local disconnect = false
	local readyTreeSafe, unreadyTreeSafe = 0, 0
	for _, tile in pairs(world:getTiles()) do
		if bot.status == BotStatus.online and bot:isInWorld(rotation_world) and tile.fg == seed_id and world:hasAccess(tile.x, tile.y) ~= 0 then
			if ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
				if smart_scan_status then
					if tile:canHarvest() and smart_scan_ready_tree_status then
						readyTreeSafe = readyTreeSafe + 1
						break
					elseif smart_scan_unready_tree_status then
						unreadyTreeSafe = unreadyTreeSafe + 1
						break
					end
				else
					if tile:canHarvest() then
						readyTreeSafe = readyTreeSafe + 1
					else
						unreadyTreeSafe = unreadyTreeSafe + 1
					end
					
				end
			end
		elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			disconnect = true
			reconnect(defaultWorldName, move_x, move_y)
			break
		end
	end
	if disconnect then
		treeScan(smart_scan_status, smart_scan_ready_tree_status, smart_scan_unready_tree_status)
	end
	return {
		readyTreeSafe = readyTreeSafe, 
		unreadyTreeSafe = unreadyTreeSafe
	}
end

function safeTileScan(itemID)
	local disconnect = false
	local count = 0
	for _, tile in pairs(world:getTiles()) do
		if bot.status == BotStatus.online and bot:isInWorld() and (tile.fg == itemID or tile.bg == itemID) and world:hasAccess(tile.x, tile.y) ~= 0 then
			if ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
				count = count + 1
			end
		elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			disconnect = true
			reconnect(defaultWorldName, move_x, move_y)
			break
		end
	end
	if disconnect then
		safeTileScan(itemID)
	end
	return count
end

function unsafeTileScan(itemID)
	local disconnect = false
	local count = 0
	for id, counts in pairs(world.growscan:getTiles()) do
		if bot.status == BotStatus.online and bot:isInWorld() and id == itemID then
			count = counts
		elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			disconnect = true
			reconnect(defaultWorldName, move_x, move_y)
			break
		end
	end
	if disconnect then
		unsafeTileScan(itemID)
	end
	return count
end

function randomPnbWorldTileScan(itemID)
	local disconnect = false
	local count = 0
	while bot:isInWorld(randomPnbWorldString()) and world:getTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)).fg ~= 6 do
		bot:respawn()
		sleep(1000)
	end
	for _, tile in pairs(world:getTiles()) do
		if bot.status == BotStatus.online then
			if bot:isInWorld(randomPnbWorldString()) and (tile.fg == itemID or tile.bg == itemID) and (tile.x == bot.x and tile.y == bot.y - 1) and world:getTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)).fg == 6 and world:hasAccess(tile.x, tile.y) ~= 0 then
				count = count + 1
				break
			end
		elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			disconnect = true
			reconnect(defaultWorldName, move_x, move_y)
			break
		end
	end
	if disconnect then
		randomPnbWorldTileScan(itemID)
	end
	return count
end

function blankTileScan(worldName, seedID, blockID, smart_scan_status)
	local worldName = worldName:upper()
	local disconnect = false
	local count = 0
	for _, tile in pairs(getTiles()) do
		if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == 0 and world:getTile(tile.x, tile.y + 1).fg ~= seedID and world:getTile(tile.x, tile.y + 1).fg ~= blockID and world:getTile(tile.x, tile.y + 1).fg ~= 0 and world:getTile(tile.x, tile.y + 1).fg % 2 == 0 and world:hasAccess(tile.x, tile.y) ~= 0 then
			if ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
				if smart_scan_status then
					count = count + 1
					break
				else
					count = count + 1
				end
			end
		elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			disconnect = true
			reconnect(defaultWorldName, move_x, move_y)
			break
		end
	end
	if disconnect then
		blankTileScan(worldName, seedID, blockID, smart_scan_status)
	end
	return count
end

function safeObjectScan(itemID)
	local disconnect = false
	local count = 0
	for _, obj in pairs(world:getObjects()) do
		if bot.status == BotStatus.online and bot:isInWorld() and obj.id == itemID then
			local objX = tileRounding(obj.x / 32)
			local objY = tileRounding(obj.y / 32)
			if ((#bot:getPath(objX, objY) > 0) or (#bot:getPath(objX, objY) == 0 and bot:isInTile(objX, objY))) then
				count = count + obj.count
			end
		elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			disconnect = true
			reconnect(defaultWorldName, move_x, move_y)
			break
		end
	end
	if disconnect then
		safeObjectScan(itemID)
	end
	return count
end

function unsafeObjectScan(itemID)
	local disconnect = false
	local count = 0
	for id, counts in pairs(world.growscan:getObjects()) do
		if bot.status == BotStatus.online and bot:isInWorld() and id == itemID then
			count = counts
		elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			disconnect = true
			reconnect(defaultWorldName, move_x, move_y)
			break
		end
	end
	if disconnect then
		unsafeObjectScan(itemID)
	end
	return count
end
---- [ END SCAN ] ----


---- [ OTHER TOOLS ] ----
function otherTools()
	maximumLevel()
	getMalady()
	modEntered()
	randomChat(random_chat, chat_list, random_chat_delayS)
end

function otherTools2()
	useRareClothesPackController()
end

function maximumLevel()
	if change_bot_on_maximum_level_option == "ON" and bot.level == maximum_level then
		dropTableController(seed_world_list_update, start_seed_world, seed_world, seed_block_ID, seed_world_marker_id)
		dropTableController(pack_world_list_update, start_pack_world, pack_world, pack_id, pack_world_marker_id, true)
		while inventory:getItemCount(pickaxe_id) > 0 do
			joinWorld(pickaxe_world)
			findpath(7, 14)
			dropItem(pickaxe_id, 0)
		end
		changeBot(true, bot.name .. "'s level has reached the maximum (level " .. maximum_level .. ")")
	else
		return
	end
end

function consumeVial()
	if consume_vial_option == "ON" then
		joinWorld(consume_vial_world)
		local disconnect = false
		
		if disconnect then
			consumeVial()
		end
		if string.find(world.name:upper(), consume_vial_world) then
			if inventory:getItemCount(vial_id) == 0 then
				takeFloatingController(consume_vial_world, vial_id, 1, "ON")
				if inventory:getItemCount(vial_id) > 1 then
					findpath(bot.x - 1, bot.y)
					while inventory:getItemCount(vial_id) > 1 do
						dropItem(vial_id, 1)
					end
				elseif inventory:getItemCount(vial_id) == 0 then
					whBotInformation(
						"<:Megaphone:1254703457236025385> **|** Bot Information: " .. getInfoItem(vial_id).name .. " are not available in the world or are being taken by other bots."
					)
					while safeObjectScan(vial_id) == 0 and inventory:getItemCount(vial_id) > 0 do
						sleep(1000)
					end
					consumeVial()
				end
			elseif inventory:getItemCount(vial_id) > 1 then
				for _, tile in pairs(world:getTiles()) do
					if bot.status == BotStatus.online and tile.y == bot.y and ((#bot:getPath(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)) > 0) or (#bot:getPath(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)) == 0 and bot:isInTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)))) then
						vial_move_x, vial_move_y = tile.x, tile.y
						break
					elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
						disconnect = true
						reconnect(defaultWorldName, move_x, move_y)
						break 
					end
				end
				
				if (not vial_move_x) or (not vial_move_y) then
					vial_move_x, vial_move_y = 7, 14
				end
		
				findpath(vial_move_x, vial_move_y)
				while inventory:getItemCount(vial_id) > 1 do
					dropItem(vial_id, 1)
				end
			end
			if inventory:getItemCount(vial_id) == 1 then
				while inventory:getItemCount(vial_id) == 1 do
					bot:use(vial_id)
					sleep(math.random(1000, 1500))
				end
				bot:say("/status")
				addEvent(Event.game_message, gameMessageEvent)
				listenEvents(5)
				if malady_status then
					return
				else
					consumeVial()
				end
			end	
		end
	else
		return
	end
end

function grumbleteethMalady()
	joinWorld(rotation_world)
	findpath(pnb_x, pnb_y)
	if bot.status == BotStatus.online and not malady_status then
		whBotInformation(
			"**[ BOT INFORMATION ]** \n" ..
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
			"<:Megaphone:1254703457236025385> **|** Bot Information: Start getting grumbleteeth malady"
		)
		while bot.status == BotStatus.online and not malady_status do
			randomChat("ON", chat_list, 0)
			bot:say("/status")
			addEvent(Event.game_message, gameMessageEvent)
			listenEvents(random_chat_delayS)
		end
		if malady_status then
			whBotInformation(
				"**[ BOT INFORMATION ]** \n" ..
				"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
				":identification_card: **|** Account Type: " .. accountType .. " \n" ..
				"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
				"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
				"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
				"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
				"<:Megaphone:1254703457236025385> **|** Bot Information: Finish getting grumbleteeth malady"
			)
		end
		if bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			reconnect(defaultWorldName, move_x, move_y)
			getMalady()
		end
	elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
		reconnect(defaultWorldName, move_x, move_y)
		getMalady()
	end
end

function autoSurg(maladyName)
	if auto_surg_option == "ON" then
		whBotInformation(
			"**[ BOT INFORMATION ]** \n" ..
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
			"<:Megaphone:1254703457236025385> **|** Bot Information: Start auto surg"
		)
			
		if inventory:getItemCount(242) < auto_surg_price then
			takeFloatingController(pack_world, 242, auto_surg_price, "ON")
			if inventory:getItemCount(242) > auto_surg_price then
				findpath(bot.x - 1, bot.y)
				while inventory:getItemCount(242) > auto_surg_price do
					dropItem(vial_id, auto_surg_price)
				end
			elseif inventory:getItemCount(242) == 0 then
				whBotInformation(
					"<:Megaphone:1254703457236025385> **|** Bot Information: " .. getInfoItem(242).name .. " are not available in the world or are being taken by other bots."
				)
				while safeObjectScan(242) == 0 and inventory:getItemCount(242) > 0 do
					sleep(1000)
				end
				autoSurg(maladyName)
			end
		end
		
		joinWorld(auto_surg_world)
		
		if bot:isInWorld(auto_surg_world) then
			for _, tile in pairs(world:getTiles()) do
				if maladyName == "Torn Punching Muscle" and tile.fg == getInfo("Auto Surgeon Station").id and tile:getExtra().shelf1 == 1 then
					auto_surg_tileX = tile.x
					auto_surg_tileY = tile.y
					break
				elseif maladyName == "Gem Cuts" and tile.fg == getInfo("Auto Surgeon Station").id and tile:getExtra().shelf1 == 2 then
					auto_surg_tileX = tile.x
					auto_surg_tileY = tile.y
					break
				elseif maladyName == "Chicken Feet" and tile.fg == getInfo("Auto Surgeon Station").id and tile:getExtra().shelf1 == 3 then
					auto_surg_tileX = tile.x
					auto_surg_tileY = tile.y
					break
				end
			end
			
			if ((#bot:getPath(auto_surg_tileX, auto_surg_tileY) > 0) or (#bot:getPath(auto_surg_tileX, auto_surg_tileY) == 0 and bot:isInTile(auto_surg_tileX, auto_surg_tileY))) then	
				findpath(auto_surg_tileX, auto_surg_tileY)
				addEvent(Event.variantlist, variantListEvent)
				listenEvents(10)
				
				whBotInformation(
					"**[ BOT INFORMATION ]** \n" ..
					"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
					":identification_card: **|** Account Type: " .. accountType .. " \n" ..
					"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
					"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
					"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
					"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
					"<:Megaphone:1254703457236025385> **|** Bot Information: Finish auto surg"
				)
			else
				changeWorld(auto_surg_world_list_update, start_auto_surg_world_list, worldName, "The Auto Surgeon Station Is Unreachable")
				autoSurg(maladyName)
			end
		end
	else
		return
	end
end

function getMalady()
	local currentTime = os.time()
	if malady_check_option == "ON" and (currentTime - timeGetMalady) >= malady_timeS then
		timeGetMalady = currentTime
		malady_status = false
		messageEventStatus = "CHECK_MALADY"
		malady_data = {
			"Torn Punching Muscle",
			"Gem Cuts",
			"Chicken Feet"
		}
		if not bot:isInWorld() then
			joinWorld(rotation_world)
		end
		whBotInformation(
			"**[ BOT INFORMATION ]** \n" ..
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
			"<:Megaphone:1254703457236025385> **|** Bot Information: Start checking malady"
		)
		bot:say("/status")
		addEvent(Event.game_message, gameMessageEvent)
		listenEvents(5)
		if not malady_status then
			if consume_vial_option == "ON" then
				consumeVial()
			else
				grumbleteethMalady()
			end
		end
		if malady_status then
			whBotInformation(
				"**[ BOT INFORMATION ]** \n" ..
				"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
				":identification_card: **|** Account Type: " .. accountType .. " \n" ..
				"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
				"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
				"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
				"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
				"<:Megaphone:1254703457236025385> **|** Bot Information: Finish checking malady"
			)
			
			for _, maladyData in pairs(malady_data) do
				if auto_surg_option == "ON" and malady_name:match(maladyData) then
					autoSurg(maladyData)
					bot:say("/status")
					addEvent(Event.game_message, gameMessageEvent)
					listenEvents(5)
					if consume_vial_option == "ON" then
						consumeVial()
					end
					break
				else
					if malady_name:match(maladyData) then
						changeBot(true, bot.name .. "'s has " .. maladyData:lower() .. " malady, this is detrimental to rotating")
						break
					end
				end
			end
			
		end
	else
		return
	end
end

function modEntered()
	if bot.status == BotStatus.mod_entered then
		bot:disconnect()
		sleep(100)
		whAllBot()
		whBotInformation(
			"**[ BOT INFORMATION ]** \n" ..
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
			"<:Megaphone:1254703457236025385> **|** Bot Information: The world and your account are under moderator monitoring \n\n" ..
			
			"**[ TIME INFORMATION ]** \n" ..
			"<:Luxurious_Wall_Clock:1190695156333150258> **|** Cooldown: " .. convertMStoH(mod_entered_delayM)
		)
		sleep(mod_entered_delayM)
		reconnect(defaultWorldName, move_x, move_y)
	else
		return
	end
end

function getRandomChat(table)
    local randomChatList = math.random(#table)
    return table[randomChatList]
end

function performActionRandomChat(table, delay)
    local currentTime = os.time()
    if (currentTime - timeRandomChat) >= delay then
        timeRandomChat = currentTime
        return getRandomChat(table)
    else
        return
    end
end

function randomChat(enable_status, table, delay)
	if enable_status == "ON" then
		local result = performActionRandomChat(table, delay)
		if result then
			bot:say(result)
			sleep(50)
		end
	else
		return
	end
end

function useRareClothesPackController()
	rare_clothes_pack_id = { 250, 1716, 82, 78, 754, 146, 356, 72, 46, 124, 1720, 1122, 212, 84, 1722, 1844, 2718, 70, 4966, 288, 232, 788, 148, 448, 134, 50, 74, 1504, 494, 266, 852, 132, 2954, 3060, 3056, 1800, 88, 2960, 1022, 2578, 3164, 86, 302, 1332, 304, 1116, 6788, 492, 1690, 316, 1850, 1718, 1838, 1032, 1860, 1026, 3048, 724, 1590, 798, 1342, 794, 268, 1504, 8884, 1858, 1314, 1688, 1312, 3590, 446, 1856, 1854, 1516, 1316, 2700, 4968, 4964, 6796, 1862, 310, 290, 296, 6674, 1864, 4954, 1476, 896, 1848, 496, 136, 2958, 2576, 1954, 152, 796, 1524, 2928, 80, 2934, 150, 1120, 1142, 1478, 154, 452, 258, 2882, 156, 160, 1140, 3530, 312, 1124, 3052, 294, 1650, 1652, 348, 1736, 576, 292, 1146, 1028, 1762, 600, 11204, 1118 }
	
	if bot.status == BotStatus.online then
		if rare_clothes_option == "ON" then
			local hasRareClothesPackStatus = false
			
			for _, hasRareClothesPack in pairs(rare_clothes_pack_id) do
				reconnect(defaultWorldName, move_x, move_y)
				if inventory:getItemCount(hasRareClothesPack) > 0 then
					hasRareClothesPackStatus = true
					while inventory:getItemCount(hasRareClothesPack) > 0 and not inventory:getItem(hasRareClothesPack).isActive do
						bot:wear(hasRareClothesPack)
						sleep(math.random(wear_delayMS, wear_delayMS + 100))
					end
				end
			end
			
			local notHasRareClothesPackTable = {1, 2, 3}
			
			if not hasRareClothesPackStatus then
				upgradeInventory(notHasRareClothesPackTable)
				if bot.gem_count >= 500 then 
					bot:buy("rare_clothes")
					sleep(math.random(auto_buy_delayMS, auto_buy_delayMS + 100))
				end
				for _, hasRareClothesPack in pairs(rare_clothes_pack_id) do
					reconnect(defaultWorldName, move_x, move_y)
					while inventory:getItemCount(hasRareClothesPack) > 0 and not inventory:getItem(hasRareClothesPack).isActive do
						bot:wear(hasRareClothesPack)
						sleep(math.random(wear_delayMS, wear_delayMS + 100))
					end
				end
			end

			while inventory:getItemCount(pickaxe_id) > 0 and not inventory:getItem(pickaxe_id).isActive do
				bot:wear(pickaxe_id)
				sleep(math.random(wear_delayMS, wear_delayMS + 100))
			end
		elseif rare_clothes_option == "OFF" then 
			return 
		end
	else
		reconnect(defaultWorldName, move_x, move_y)
		useRareClothesPackController()
	end
end
---- [ END OTHER TOOLS ] ----


---- [ AGE ] ----
function age()
	local startAgeSystemDate = os.time({ year = 2023, month = 10, day = 18 })
	local today = os.time(os.date("*t"))
	return math.floor(os.difftime(today, startAgeSystemDate) / (24 * 60 * 60))
end
---- [ END AGE ] ----


---- [ GET ITEM NAME ] ----
function getInfoItem(itemData)
	return {
		id = getInfo(itemData).id, 
		name = getInfo(itemData).name, 
		level = getInfo(itemData).level
	}
end
---- [ END GET ITEM NAME ] ----


---- [ RANDOM STRING ] ----
--Random variable
	cachedRandomPnbWorld = nil
	randomPnbNotWorldBanned = true
	
function generateRandomString()
    local string = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local randomString = math.random(1, #string)
    return string.sub(string, randomString, randomString)
end

function randomAccountString()
	local growid = ""
	local mac = ""
	local rid = ""
	local hash = ""
    for i = 1, 7 do
        growid = growid .. generateRandomString()
    end
    for i = 1, 12 do
        mac = mac .. generateRandomString()
        if i % 2 == 0 and i < 12 then
            mac = mac .. ":"
        end
    end
    for i = 1, 32 do
        rid = rid .. generateRandomString()
    end
	for i = 1, 10 do
        hash = hash .. math.random(1, 9)
    end
	return {
		growid = growid:upper(), 
		mac = mac:upper(), 
		rid = rid:upper(),
		hash = tonumber(hash)
	}
end

function randomPnbWorldString()
	messageEventStatus = "CHECK_RANDOM_PNB_WORLD"
	local notHasAccess = false
	if not cachedRandomPnbWorld and randomPnbNotWorldBanned then
		if not bot:isInWorld() then
			joinWorld(rotation_world)
		end
		if bot:isInWorld() then
			if string.find(world.name:upper(), "GKSPNB") then
				if ((world:hasAccess(bot.x, bot.y) == 0) or (unsafeTileScan(getInfoItem("Fire").id) > 0)) then
					notHasAccess = true
				elseif world:hasAccess(bot.x, bot.y) ~= 0 and unsafeTileScan(getInfoItem("Fire").id) == 0 then
					notHasAccess = true
				end
			else
				bot:say("/status")
				addEvent(Event.game_message, gameMessageEvent)
				listenEvents(5)
			end
		end
	end
		
	if not cachedRandomPnbWorld then
		if string.find(world.name:upper(), "GKSPNB") and not notHasAccess then
			cachedRandomPnbWorld = world.name
		elseif ((not string.find(world.name:upper(), "GKSPNB")) or (notHasAccess)) then
			local worldBreak = "GKSPNB"
			local worldNameLength = math.random(5, 10)
			for i = 1, worldNameLength do
				worldBreak = worldBreak .. generateRandomString()
			end
			
			local typeWorld = math.random(1, 3)
			if typeWorld == 1 then
				cachedRandomPnbWorld = worldBreak:sub(7) .. worldBreak:sub(1, 6)
			elseif typeWorld == 2 then
				cachedRandomPnbWorld = worldBreak:sub(1, 6) .. worldBreak:sub(7)
			elseif typeWorld == 3 then
				cachedRandomPnbWorld = worldBreak:sub(7, 10) .. worldBreak:sub(1, 6) .. worldBreak:sub(11, #worldBreak)
			end
		end
	end

    return cachedRandomPnbWorld:upper()
end
---- [ END RANDOM STRING ] ----


---- [ LOG FILE ] ----
--Folder and file variable
	local logFolder = "GKSlog"
	local removeBotFile = logFolder .. "/growidLog"
	
function removeBotLog(description)
	local filename = string.format("%s.txt", removeBotFile)
	local file = io.open(filename, "r")
	local fileContent = ""
	local newData
	if accountType == "LEGACY" then
		newData = "Growid: " .. bot.name:upper() .. " [" .. accountType .. "]\nDescription: " .. description .. "\n\n"
	elseif accountType == "GOOGLE" then
		newData = "Google Data: " .. bot_list_update[start_bot_list][1] .. " [" .. accountType .. "]\nDescription: " .. description .. "\n\n"
	elseif accountType == "UBICONNECT" then
		newData = "Ubi-Connect Data: " .. bot_list_update[start_bot_list][1] .. " [" .. accountType .. "]\nDescription: " .. description .. "\n\n"
	elseif accountType == "APPLEID" then
		newData = "Apple Data: " .. bot_list_update[start_bot_list][1] .. " [" .. accountType .. "]\nDescription: " .. description .. "\n\n"
	elseif accountType == "STEAM" then
		newData = "Steam Data: " .. bot_list_update[start_bot_list][1] .. " [" .. accountType .. "]\nDescription: " .. description .. "\n\n"
    end
	if file then
		fileContent = file:read("*a")
		file:close()
	end
	if not string.find(fileContent, newData, 1, true) then
		file = io.open(filename, "w")
		if file then
			file:write(newData)
			file:write(fileContent)
			file:close()
		end
	end
end
---- [ END LOG FILE ] ----


---- [ STATUS ] ----
function activeStatus()
	if bot.status == BotStatus.online then
		return "Online"
	else
		return "Offline"
	end
end

function singleBotStatus()
	if bot.status == BotStatus.online then
		return "Online"
	else
		if bot.google_status == GoogleStatus.processing then
			return "Processing"
		elseif bot.google_status == GoogleStatus.init_error then
			return "Initialize Error"
		elseif bot.google_status == GoogleStatus.invalid_credentials then
			return "Invalid Credentials"
		elseif bot.google_status == GoogleStatus.account_disabled then
			return "Account Disabled"
		elseif bot.google_status == GoogleStatus.captcha_required then
			return "Captcha Required"
		elseif bot.google_status == GoogleStatus.phone_required then
			return "Phone Required"
		elseif bot.google_status == GoogleStatus.recovery_required then
			return "Recovery Required"
		elseif bot.google_status == GoogleStatus.no_recovery_challenge then
			return "No Recovery Challenge"
		elseif bot.google_status == GoogleStatus.couldnt_verify then
			return "Couldn't Verify"
		elseif bot.google_status == GoogleStatus.unknown_url then
			return "Unknown URL"
		elseif bot.status == BotStatus.offline then
			return "Offline"
		elseif bot.status == BotStatus.wrong_password then
			return "Wrong Password"
		elseif bot.status == BotStatus.account_banned then
			return "Account Banned"
		elseif bot.status == BotStatus.account_suspended then
			return "Account Suspended"
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
		elseif bot.status == BotStatus.server_busy then
			return "Server Busy"
		elseif bot.status == BotStatus.guest_limit then
			return "Guest Limit"
		elseif bot.status == BotStatus.account_restricted then
			return "Account Restricted"
		elseif bot.status == BotStatus.network_restricted then
			return "Network Restricted"
		elseif bot.status == BotStatus.http_block then
			return "Http Block"
		elseif bot.status == BotStatus.bad_name_length then
			return "Bad Name Length"
		elseif bot.status == BotStatus.invalid_account then
			return "Invalid Account"
		elseif bot.status == BotStatus.error_connecting then
			return "Error Connecting"
		elseif bot.status == BotStatus.logon_fail then
			return "Logon Fail"
		elseif bot.status == BotStatus.captcha_requested then
			return "Captcha Requested"
		elseif bot.status == BotStatus.mod_entered then
			return "Mod Entered"
		elseif bot.status == BotStatus.player_entered then
			return "Player Entered"
		elseif bot.status == BotStatus.high_load then
			return "High Load"
		elseif bot.status == BotStatus.changing_subserver then
			return "Changing Subserver"
		elseif bot.status == BotStatus.stopped then
			return "Stopped"
		elseif bot.status == BotStatus.getting_server_data then
			return "Getting Server Data"
		elseif bot.status == BotStatus.bypassing_server_data then
			return "Bypassing Server Data"
		elseif bot.status == BotStatus.bad_gateway then
			return "Bad gateway"
		elseif bot.status == BotStatus.server_issue then
			return "Server Issue"
		elseif bot.status == BotStatus.retrieving_token then
			return "Retrieving Token"
		else
			return "nil"
		end
	end
end

function allBotStatus(variable)
	if variable.status == BotStatus.online then
		return "Online"
	else
		if variable.google_status == GoogleStatus.processing then
			return "Processing"
		elseif variable.google_status == GoogleStatus.init_error then
			return "Initialize Error"
		elseif variable.google_status == GoogleStatus.invalid_credentials then
			return "Invalid Credentials"
		elseif variable.google_status == GoogleStatus.account_disabled then
			return "Account Disabled"
		elseif variable.google_status == GoogleStatus.captcha_required then
			return "Captcha Required"
		elseif variable.google_status == GoogleStatus.phone_required then
			return "Phone Required"
		elseif variable.google_status == GoogleStatus.recovery_required then
			return "Recovery Required"
		elseif variable.google_status == GoogleStatus.no_recovery_challenge then
			return "No Recovery Challenge"
		elseif variable.google_status == GoogleStatus.couldnt_verify then
			return "Couldn't Verify"
		elseif variable.google_status == GoogleStatus.unknown_url then
			return "Unknown URL"
		elseif variable.status == BotStatus.offline then
			return "Offline"
		elseif variable.status == BotStatus.wrong_password then
			return "Wrong Password"
		elseif variable.status == BotStatus.account_banned then
			return "Account Banned"
		elseif variable.status == BotStatus.account_suspended then
			return "Account Suspended"
		elseif variable.status == BotStatus.location_banned then
			return "Location Banned"
		elseif variable.status == BotStatus.version_update then
			return "Version Update"
		elseif variable.status == BotStatus.advanced_account_protection then
			return "Advanced Account Protection"
		elseif variable.status == BotStatus.server_overload then
			return "Server Overload"
		elseif variable.status == BotStatus.too_many_login then
			return "Too Many Login"
		elseif variable.status == BotStatus.maintenance then
			return "Maintenance"
		elseif variable.status == BotStatus.server_busy then
			return "Server Busy"
		elseif variable.status == BotStatus.guest_limit then
			return "Guest Limit"
		elseif variable.status == BotStatus.account_restricted then
			return "Account Restricted"
		elseif variable.status == BotStatus.network_restricted then
			return "Network Restricted"
		elseif variable.status == BotStatus.http_block then
			return "Http Block"
		elseif variable.status == BotStatus.bad_name_length then
			return "Bad Name Length"
		elseif variable.status == BotStatus.invalid_account then
			return "Invalid Account"
		elseif variable.status == BotStatus.error_connecting then
			return "Error Connecting"
		elseif variable.status == BotStatus.logon_fail then
			return "Logon Fail"
		elseif variable.status == BotStatus.captcha_requested then
			return "Captcha Requested"
		elseif variable.status == BotStatus.mod_entered then
			return "Mod Entered"
		elseif variable.status == BotStatus.player_entered then
			return "Player Entered"
		elseif variable.status == BotStatus.high_load then
			return "High Load"
		elseif variable.status == BotStatus.changing_subserver then
			return "Changing Subserver"
		elseif variable.status == BotStatus.stopped then
			return "Stopped"
		elseif variable.status == BotStatus.getting_server_data then
			return "Getting Server Data"
		elseif variable.status == BotStatus.bypassing_server_data then
			return "Bypassing Server Data"
		elseif variable.status == BotStatus.bad_gateway then
			return "Bad gateway"
		elseif variable.status == BotStatus.server_issue then
			return "Server Issue"
		elseif variable.status == BotStatus.retrieving_token then
			return "Retrieving Token"
		else
			return "nil"
		end
	end
end

function matchConnectStatus()
	whAllBot()
	whBotInformation(
		"**[ BOT INFORMATION ]** \n" ..
		"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
		":identification_card: **|** Account Type: " .. accountType .. " \n" ..
		"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
		"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" .. 
		"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
		"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level
	)
	if bot.google_status == GoogleStatus.processing then
		return
	elseif bot.google_status == GoogleStatus.init_error then
		return
	elseif bot.google_status == GoogleStatus.invalid_credentials then
		changeBot(true)
	elseif bot.google_status == GoogleStatus.account_disabled then
		changeBot(true)
	elseif bot.google_status == GoogleStatus.captcha_required then
		changeBot(true)
	elseif bot.google_status == GoogleStatus.phone_required then
		changeBot(true)
	elseif bot.google_status == GoogleStatus.recovery_required then
		changeBot(true)
	elseif bot.google_status == GoogleStatus.no_recovery_challenge then
		changeBot(true)
	elseif bot.google_status == GoogleStatus.couldnt_verify then
		changeBot(true)
	elseif bot.google_status == GoogleStatus.unknown_url then
		return
	elseif bot.status == BotStatus.offline then
		return
	elseif bot.status == BotStatus.wrong_password then
		changeBot(true)
	elseif bot.status == BotStatus.account_banned then
		changeBot(true)
	elseif bot.status == BotStatus.account_suspended then
		changeBot(true)
	elseif bot.status == BotStatus.location_banned then
		changeProxy(false)
	elseif bot.status == BotStatus.version_update then
		whBotInformation(
			"**[ TIME INFORMATION ]** \n" ..
			"<:Luxurious_Wall_Clock:1190695156333150258> **|** Cooldown: " .. convertMStoH(version_update_delayM)
		)
		sleep(version_update_delayM)
	elseif bot.status == BotStatus.advanced_account_protection then
		if bot_list_update[start_bot_list][10] == "ON" then
			whBotInformation(
				"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name .. "'s requires AAP verification. \n\n" ..
				
				"**[ TIME INFORMATION ]** \n" ..
				"<:Luxurious_Wall_Clock:1190695156333150258> **|** Cooldown: " .. convertMStoH(30000)
			)
			sleep(30000)
		else
			changeBot(true)
		end
	elseif bot.status == BotStatus.server_overload then
		return
	elseif bot.status == BotStatus.too_many_login then
		return
	elseif bot.status == BotStatus.maintenance then
		whBotInformation(
			"**[ TIME INFORMATION ]** \n" ..
			"<:Luxurious_Wall_Clock:1190695156333150258> **|** Cooldown: " .. convertMStoH(maintenance_delayM)
		)
		sleep(maintenance_delayM)
	elseif bot.status == BotStatus.http_block then
		changeProxy(false)
	elseif bot.status == BotStatus.bad_name_length then
		changeBot(true)
	elseif bot.status == BotStatus.error_connecting then
		changeProxy(false)
	elseif bot.status == BotStatus.captcha_requested then
		changeBot(true)
	end
end

function matchWorldIdStatus(worldName)
	local worldName = worldName:upper()
	if worldName == rotation_world then
		return {world_id = rotation_world_id, auto_collect = true}
	elseif worldName == seed_world then
		return {world_id = seed_world_id, auto_collect = false}
	elseif worldName == pack_world then
		return {world_id = pack_world_id, auto_collect = false}
	elseif worldName == pickaxe_world then
		return {world_id = pickaxe_world_id, auto_collect = false}
	elseif worldName == randomPnbWorldString() then
		return {world_id = "", auto_collect = true}
	elseif worldName == consume_vial_world then
		return {world_id = consume_vial_world_id, auto_collect = false}
	elseif worldName == auto_surg_world then
		return {world_id = auto_surg_world_id, auto_collect = false}
	else
		return {world_id = "", auto_collect = nil}
	end
end
---- [ END STATUS ] ----


---- [ WEBHOOK ] ----
--Webhook variable
	local scriptName = "Rotation Script"
	local scriptCredit = "Grow King Scripts"
	local reportIllegalDistributionLink = "https://discord.gg/Av8mQEfVyD"
	local reportCenter = ":warning: **|** Report illegal resale and distribution of script/login code to <@1034725351873576990> for a free 300 GKS Balance. For more information [click here!](<" .. reportIllegalDistributionLink .. ">)"
	local webhookTitle = scriptName .. " \nScript By " .. scriptCredit
	local webhookAvatar = "https://media.discordapp.net/attachments/1151744897687224320/1160427676654391428/GKS_Logo.jpg?ex=65349f7d&is=65222a7d&hm=b11ee741e5b45e61d96257712224c5ad4c5c44e4e42fde4e441c529a646a708c&=&width=427&height=427"
	local webhookImage = "https://media.discordapp.net/attachments/1151744897687224320/1160427676381741106/GKS_Footer.jpg?ex=65349f7d&is=65222a7d&hm=3e4925cc5fb2ba188bf8c6c4ae7cc58aeca7ca1507011b923c8500e1aa70eb8b&="

function webhookDate()
	local time_difference = 7 * 3600
	local current_time_GMT = os.time(os.date("!*t"))
	local current_time_webhook = current_time_GMT + time_difference
	return os.date("%A, %B %d, %Y | %H:%M", current_time_webhook) .. " [GMT+7]"
end

function whBotInformation(message1, message2)
	if webhook_option == "ON" then
		local wh = Webhook.new(bot_information_link)
		wh.username = scriptCredit
		wh.avatar_url = webhookAvatar
		wh.embed1.use = true
		wh.embed1.image = webhookImage
		wh.embed1.title = webhookTitle
		wh.embed1.description = message1 .. " \n\n" .. reportCenter
		wh.embed1.color = 15105570
		wh.embed1.footer.text = scriptName .. " \n" .. webhookDate()
		if message2 then
			wh.embed2.use = true
			wh.embed2.image = webhookImage
			wh.embed2.title = webhookTitle
			wh.embed2.description = message2 .. " \n\n" .. reportCenter
			wh.embed2.color = 15105570
			wh.embed2.footer.text = scriptName .. " \n" .. webhookDate()
		end
		if webhook_edit_option == "ON" and bot_information_message_id and bot_information_message_id ~= 0 then
			wh:edit(bot_information_message_id)
		else
			wh:send()
			bot_information_message_id = wh.message_id
		end
	else
		return 
	end
end

function whDroppedItem(message)
	if webhook_option == "ON" then
		local wh = Webhook.new(dropped_item_link)
		wh.username = scriptCredit
		wh.avatar_url = webhookAvatar
		wh.embed1.use = true
		wh.embed1.image = webhookImage
		wh.embed1.title = webhookTitle
		wh.embed1.description = message .. " \n\n" .. reportCenter
		wh.embed1.color = 15105570
		wh.embed1.footer.text = scriptName  .. " \n" .. webhookDate()
		if webhook_edit_option == "ON" and dropped_item_message_id and dropped_item_message_id ~= 0 then
			wh:edit(dropped_item_message_id)
		else
			wh:send()
			dropped_item_message_id = wh.message_id
		end
	else
		return
	end
end

function whReconnect(message)
	if webhook_option == "ON" then
		local wh = Webhook.new(reconnect_link)
		wh.username = scriptCredit
		wh.avatar_url = webhookAvatar
		wh.content = "@everyone"
		wh.embed1.use = true
		wh.embed1.image = webhookImage
		wh.embed1.title = webhookTitle
		wh.embed1.description = message .. " \n\n" .. reportCenter
		wh.embed1.color = 15105570
		wh.embed1.footer.text = scriptName .. " \n" .. webhookDate()
		if webhook_edit_option == "ON" and reconnect_message_id and reconnect_message_id ~= 0 then
			wh:edit(reconnect_message_id)
		else
			wh:send()
			reconnect_message_id = wh.message_id
		end
	else
		return
	end
end

function whAds(message)
	if webhook_option == "ON" then
		local wh = Webhook.new(bot_information_link)
		wh.username = scriptCredit
		wh.avatar_url = webhookAvatar
		wh.embed1.use = true
		wh.embed1.image = webhookImage
		wh.embed1.title = "[ ADVERTISEMENT ]"
		wh.embed1.description = message .. " \n\n" .. reportCenter
		wh.embed1.color = 15105570
		wh.embed1.footer.text = scriptName .. " \n" .. webhookDate()
		wh:send()
	else
		return
	end
end

timeWhAllBot = os.time() - 0
function whAllBot()
	if webhook_all_bot_option == "ON" then
		local currentTime = os.time()
		local botTimeShow = os.time() - botTime
		if (currentTime - timeWhAllBot) >= webhook_all_bot_delayS then
			timeWhAllBot = currentTime
			local wh = Webhook.new(all_bot_link)
			wh.username = "Grow King Scripts"
			wh.avatar_url = webhookAvatar
			wh.embed1.use = true
			wh.embed1.image = webhookImage
			wh.embed1.title = webhookTitle
			wh.embed1.color = 15105570
			for _, botData in pairs(getBots()) do
				local status = allBotStatus(botData)
				local description = "<:Status:1190695183440945182> [" .. status .. "] \n" ..
					"<:Purple_Gem:1190695162549108876> [" .. botData.gem_count .. "] \n" .. 
					"<:Level:1190699579230916650> [" .. botData.level .. "] \n" .. 
					"<:Laser_Grid:1190695132236894258> [" .. botData:getInventory():getItemCount(block_id) .. "] \n" ..
					"<:Laser_Grid_Seed:1190695138947760249> [" .. botData:getInventory():getItemCount(seed_id) .. "] \n" ..
					"<:Globe:1190695520210006036> [" .. botData:getWorld().name:upper() .. "] \n" ..
					"<:Luxurious_Wall_Clock:1190695156333150258> [" .. secondON(botTimeShow) .. "]"

				wh.embed1:addField("***" .. botData.name:upper() .. "***", description, true)
			end
			wh.embed1.footer.text = scriptName .. " \nCooldown " .. convertMStoH(webhook_all_bot_delayS * 1000) .. " \n" .. webhookDate()
			if webhook_all_bot_edit_option == "ON" and all_bot_message_id and all_bot_message_id ~= 0 then
				wh:edit(all_bot_message_id)
			else
				wh:send()
				all_bot_message_id = wh.message_id
			end
		else
			return
		end
	else
		return
	end
end
---- [ END WEBHOOK ] ----


---- [ WEBHOOK HELPER ] ----
function whDroppedPackIdCount(packID)
	local dropPackIDCount = ""
	pack_id_update = {}
	for _, packIdData in pairs(packID) do
		dropPackIDCount = dropPackIDCount .. " \n" .. getInfoItem(packIdData).name .. ": " .. unsafeObjectScan(packIdData) .. " [" .. inventory:getItemCount(packIdData) .. "] "
		table.insert(pack_id_update, dropPackIDCount)
		sleep(5)
	end
	return dropPackIDCount
end
---- [ END WEBHOOK HELPER ] ----


---- [ FINDPATH ] ----
--Findpath variable
	move_x = 0
	move_y = 0
				
function moveLeftAnimation(var1, var2)
	if bot.status == BotStatus.online and showMoveAnimation() and getInfo(world:getTile(bot.x, bot.y + 1).fg).collision_type == 1 then
		local pkt = GameUpdatePacket.new()
		pkt.flags = 48
		pkt.vec_x = (world:getLocal().posx)
		pkt.vec_y = (world:getLocal().posy)
		if not bot:isInTile(var1, var2) then
			pkt.vec2_x = (math.random(-250, -200))
			pkt.vec2_y = 0
		elseif bot:isInTile(var1, var2) then
			pkt.vec2_x = 0
			pkt.vec2_y = 0
		end
		pkt.int_x = -1
		pkt.int_y = -1

		sleep(50)
		bot:sendRaw(pkt)
	else
		return
	end
end

function moveRightAnimation(var1, var2)
	if bot.status == BotStatus.online and showMoveAnimation() and getInfo(world:getTile(bot.x, bot.y + 1).fg).collision_type == 1 then
		local pkt = GameUpdatePacket.new()
		pkt.flags = 32
		pkt.vec_x = (world:getLocal().posx)
		pkt.vec_y = (world:getLocal().posy)
		if not bot:isInTile(var1, var2) then
			pkt.vec2_x = (math.random(200, 250))
			pkt.vec2_y = 0
		elseif bot:isInTile(var1, var2) then
			pkt.vec2_x = 0
			pkt.vec2_y = 0
		end
		pkt.int_x = -1
		pkt.int_y = -1
		
		sleep(50)
		bot:sendRaw(pkt)
	else
		return
	end
end

function moveUpAnimation(var1, var2)
	if bot.status == BotStatus.online and showMoveAnimation() then
		local pkt = GameUpdatePacket.new()
		if bot.x >= var1 then
			pkt.flags = 144
			lastFlags = 48
		elseif bot.x <= var1 then
			pkt.flags = 128
			lastFlags = 32
		end
		pkt.vec_x = (world:getLocal().posx)
		pkt.vec_y = (world:getLocal().posy)
		if not bot:isInTile(var1, var2) then
			pkt.vec2_x = 0
			pkt.vec2_y = (math.random(-450, -440))
		elseif bot:isInTile(var1, var2) then
			pkt.flags = lastFlags
			pkt.vec2_x = 0
			pkt.vec2_y = 0
		end
		pkt.int_x = -1
		pkt.int_y = -1

		sleep(50)
		bot:sendRaw(pkt)
	else
		return
	end
end

function moveDownAnimation(var1, var2)
	if bot.status == BotStatus.online and showMoveAnimation() then
		local pkt = GameUpdatePacket.new()
		if move_flags < 1 then
			move_flags = move_flags + 1
			if bot.x >= var1 then
				pkt.flags = 16
				lastFlags = 48
			elseif bot.x <= var1 then
				pkt.flags = 0
				lastFlags = 32
			end
		end
		pkt.vec_x = (world:getLocal().posx)
		pkt.vec_y = (world:getLocal().posy)
		if not bot:isInTile(var1, var2) then
			pkt.vec2_x = 0
			pkt.vec2_y = 40
			move_flags = 0
		elseif bot:isInTile(var1, var2) then
			pkt.flags = lastFlags
			pkt.vec2_y = (math.random(-20, -10))
			pkt.vec2_x = 0
			pkt.vec2_y = 0
			move_flags = 0
		end
		pkt.int_x = -1
		pkt.int_y = -1

		sleep(50)
		bot:sendRaw(pkt)
	else
		return
	end
end

function findpath(x, y)
	x = math.abs(x)
	y = math.abs(y)
	if (x < 0 or x > 99) then
		x = math.random(0, 99)
	end
	if (y < 0 or y > 53) then
		y = math.random(0, 53)
	end
	path = bot:getPath(x, y)
	
	if bot.status == BotStatus.online then
		if #bot:getPath(x, y) == 0 then
			if bot:isInTile(x, y) then
				move_x = bot.x
				move_y = bot.y
				return
			elseif not bot:isInTile(x, y) then
				whBotInformation(
					"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name .. "'s can't access tiles " .. bot.x .. ", " .. bot.y
				)
				return
			end			
		elseif #bot:getPath(x, y) > 0 then
			if bot.status == BotStatus.online and bot:isInWorld() then
				move_flags = 0
				for i = 1, #path do
					if bot.status == BotStatus.online and bot:isInWorld() and i % move_range == 0 then
						move_x = path[i].x
						move_y = path[i].y
						if move_x and move_y then
							bot:moveTile(path[i].x, path[i].y)
							if move_y > path[i].y then
								moveUpAnimation(x, y)
							elseif move_y < path[i].y then
								moveDownAnimation(x, y)
							elseif move_x > path[i].x then
								moveLeftAnimation(x, y)
							elseif move_x < path[i].x then
								moveRightAnimation(x, y)
							end
							sleep(math.random(move_speed, move_speed + 30))
						end
					elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
						reconnect(defaultWorldName, move_x, move_y)
						move_x = path[i].x
						move_y = path[i].y
						if move_x and move_y then
							bot:moveTile(path[i].x, path[i].y)
							if move_y > path[i].y then
								moveUpAnimation(x, y)
							elseif move_y < path[i].y then
								moveDownAnimation(x, y)
							elseif move_x > path[i].x then
								moveLeftAnimation(x, y)
							elseif move_x < path[i].x then
								moveRightAnimation(x, y)
							end
							sleep(math.random(move_speed, move_speed + 30))
						end
					end
				end
			else
				reconnect(defaultWorldName, move_x, move_y)
			end
				
			if bot.status == BotStatus.online and bot:isInWorld() then
				move_x = path[#path].x
				move_y = path[#path].y
				if move_x and move_y then 
					bot:moveTile(path[#path].x, path[#path].y)
					if move_y > path[#path].y then
						moveUpAnimation(x, y)
					elseif move_y < path[#path].y then
						moveDownAnimation(x, y)
					elseif move_x > path[#path].x then
						moveLeftAnimation(x, y)
					elseif move_x < path[#path].x then
						moveRightAnimation(x, y)
					end
					sleep(math.random(move_speed, move_speed + 30))
				end
			else
				reconnect(defaultWorldName, move_x, move_y)
			end
		end
	else
		reconnect(defaultWorldName, x, y)
	end
end
---- [ END FINDPATH ] ----


---- [ BOT CHECK AT THE WHITE DOOR ] ----
function whiteDoorCheck(worldName)
	local worldName = worldName:upper()
	local worldID = matchWorldIdStatus(worldName).world_id
	if bot.status == BotStatus.online and bot:isInWorld() then
		if world:getTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)).fg == 6 then
			if worldID == "" then
				return
			else
				local joinWorldCount = 0
				while bot.status == BotStatus.online and string.find(world.name:upper(), worldName) and world:getTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)).fg == 6 and joinWorldCount < 5 do
					joinWorldCount = joinWorldCount + 1
					bot:warp(worldName .. "|" .. matchWorldIdStatus(worldName).world_id)
					sleep(join_world_delayMS)
					changingSubserver()
					if joinWorldCount >= 5 then
						joinWorldCount = 0
						whBotInformation(
							"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name:upper() .. " has tried to enter the world id 5 times. The world id does not match! \n" ..
							"<:Globe:1190695520210006036> **|** World: `" .. worldName .. "|" .. matchWorldIdStatus(worldName).world_id .. "`"
						)
						if worldName == rotation_world then
							changeRotationWorld(true)
						elseif worldName == seed_world then
							changeWorld(seed_world_list_update, start_seed_world, worldName, "The World Id Does Not Match")
						elseif worldName == pack_world then
							changeWorld(pack_world_list_update, start_pack_world, worldName, "The World Id Does Not Match")
						elseif worldName == pickaxe_world then
							changeWorld(pickaxe_list_update, start_pickaxe_list, worldName, "The World Id Does Not Match")
						elseif worldName == consume_vial_world then
							changeWorld(consume_vial_list_update, start_consume_vial_list, worldName, "The World Id Does Not Match")
						elseif worldName == auto_surg_world then
							changeWorld(auto_surg_world_list_update, start_auto_surg_world_list, worldName, "The World Id Does Not Match")
						else
							removeBotIndex(remove_bot_option, bot.name:upper() .. " has tried to enter the world id 5 times. The world id does not match! \nWorld: " .. worldName .. "|" .. matchWorldIdStatus(worldName).world_id)
						end
					end
				end
				
				if bot.status ~= BotStatus.online then
					reconnect(worldName, move_x, move_y)
				end
			end
		end
	elseif bot.status ~= BotStatus.online then
		reconnect(worldName, move_x, move_y)
	end
end
---- [ END BOT CHECK AT THE WHITE DOOR ] ----


---- [ RECONNECT ] ----
--Reconnect variable
	local reconnectCount = 0

function maxReconnect()
	matchConnectStatus()
	if reconnectCount < max_reconnect then
		reconnectCount = reconnectCount + 1
	else
		if (bot.status == BotStatus.offline or bot.status == BotStatus.changing_subserver) and bot:getPing() == 0 then
			reconnectCount = 0
			changeProxy(false)
		elseif reconnectCount > 0 then
			reconnectCount = 0
			whReconnect(
				"<:Megaphone:1254703457236025385> **|** Bot Information: Sorry, the maximum reconnect has reached the limit. Please wait until the bot is back online! \n" ..
				"<:Luxurious_Wall_Clock:1190695156333150258> **|** Cooldown: " .. convertMStoH(max_reconnect_delayM)
			)
			sleep(max_reconnect_delayM)
		end
	end
end

function changingSubserver()
	if bot.status == BotStatus.changing_subserver then
		whAllBot()
		whBotInformation(
			"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name:upper() .. " is currently changing subserver"
		)
		sleep(math.random(5000, 8000))
		while bot.status == BotStatus.changing_subserver do
			bot:connect()
			sleep(reconnect_delayMS)
			while ((bot.google_status == GoogleStatus.processing) or (bot.status == BotStatus.retrieving_token)) do
				sleep(1000)
			end
			maxReconnect()
			whReconnect(
				"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
				":identification_card: **|** Account Type: " .. accountType .. " \n" ..
				"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
				"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" .. 
				"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
				"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
				"<:Megaphone:1254703457236025385> **|** Bot Information: Bot trying to reconnect! (" .. reconnectCount .. "/" .. max_reconnect .. ")"
			)
		end
		reconnectCount = 0
	end
end

function reconnect(worldName, x, y)
	local worldName = worldName:upper()
	worldNameBanned = worldName:upper()
	if bot.status ~= BotStatus.online then
		while true do
			while bot.status ~= BotStatus.online do
				bot:connect()
				sleep(reconnect_delayMS)
				while ((bot.google_status == GoogleStatus.processing) or (bot.status == BotStatus.retrieving_token)) do
					sleep(1000)
				end
				maxReconnect()
				whReconnect(
					"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
					":identification_card: **|** Account Type: " .. accountType .. " \n" ..
					"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
					"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" .. 
					"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
					"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
					"<:Megaphone:1254703457236025385> **|** Bot Information: Bot trying to reconnect! (" .. reconnectCount .. "/" .. max_reconnect .. ")"
				)
			end
			changingSubserver()
			local joinWorldCount = 0
			if bot.status == BotStatus.online then
				joinWorld(worldName)
				sleep(3000)
				if string.find(world.name:upper(), worldName) then
					whiteDoorCheck(worldName)
					if #bot:getPath(x, y) > 0 then
						while string.find(world.name:upper(), worldName) and (math.floor(world:getLocal().posx / 32) ~= x or math.floor(world:getLocal().posy / 32) ~= y) do
							findpath(x, y)
						end
						if string.find(world.name:upper(), worldName) and math.floor(world:getLocal().posx / 32) == x and math.floor(world:getLocal().posy / 32) == y then
							whReconnect(
								"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name:upper() .. " is back online!"
							)
							reconnectCount = 0
							return false
						end
					else
						whReconnect(
							"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name:upper() .. " is back online!"
						)
						reconnectCount = 0
						return false
					end
				end
			end
		end
	elseif bot.status == BotStatus.online then
		if bot:getPing() == 0 then
			whAllBot()
			whReconnect(
				"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
				":identification_card: **|** Account Type: " .. accountType .. " \n" ..
				"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
				"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" .. 
				"<:Right_Arrow_V2:1190695167078957056>   `[Online With Ping 0 Detected]`"
			)
			bot:disconnect()
			sleep(10)
			reconnect(worldName, x, y)
		elseif bot:isInWorld() then
			whiteDoorCheck(worldName)
		end
	end
end
---- [ END RECONNECT ] ----


---- [ TAKE ITEM ] ----
function performActionTakeItem(x, y, itemID, delay)
	local pkt = GameUpdatePacket.new()
	pkt.type = 11
	pkt.int_data = itemID
	pkt.pos_x = x
	pkt.pos_y = y
	bot:sendRaw(pkt)
	sleep(delay)
end

function takeItem(itemID)
	for _, obj in pairs(world:getObjects()) do
		if obj.id == itemID then
			local objX = math.floor(obj.x / 32)
			local objY = math.floor(obj.y / 32)
			if math.abs(bot.x - objX) <= 4 and math.abs(bot.y - objY) <= 4 then
				performActionTakeItem(obj.x, obj.y, obj.oid, 200)
				sleep(130)
				break
			end
		end
	end
end
---- [ END TAKE ITEM ] ----


---- [ TILE ROUNDING ] ----
function tileRounding(number)
    local decimal = number - math.floor(number)
    if decimal < 0.7 then
        return math.floor(number)
    else
        return math.ceil(number)
    end
end
---- [ END TILE ROUNDING ] ----


---- [ ROTATION ] ----
function takeFloating(worldName, itemID, count, take_floating_status)
	local worldName = worldName:upper()
	local disconnect = false
	for _, obj in pairs(world:getObjects()) do
		if bot.status == BotStatus.online and bot:isInWorld(worldName) and obj.id == itemID then
			local objX = tileRounding(obj.x / 32)
			local objY = tileRounding(obj.y / 32)
			if ((#bot:getPath(objX, objY) > 0) or (#bot:getPath(objX, objY) == 0 and bot:isInTile(objX, objY))) then
				findpath(objX, objY)
				while not bot:isInTile(objX, objY) do
					sleep(25000)
					reconnect(defaultWorldName, move_x, move_y)
					findpath(objX, objY)
				end
				takeItem(itemID)
			end
			whAllBot()
			if inventory:getItemCount(itemID) >= count then
				break
			end
		elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			disconnect = true
			reconnect(defaultWorldName, move_x, move_y)
			break
		end
	end
	if disconnect then
		takeFloatingController(worldName, itemID, count, take_floating_status)
	end
end

function takeFloatingController(worldName, itemID, count, take_floating_status)
	if take_floating_status == "ON" then
		if inventory:getItemCount(itemID) < count then
			local worldName = worldName:upper()
			joinWorld(worldName)
			takeFloating(worldName, itemID, count, take_floating_status)
			sleep(1000)
		end
	end
end

function harvest(worldName, seedID, blockID, lineCheck)
	local worldName = worldName:upper()
	local disconnect = false
	if bot:isInWorld(worldName) and treeScan(true, true, false).readyTreeSafe > 0 then
		for _, tile in pairs(world:getTiles()) do
			otherTools()
			if lineCheck then
				if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == seedID and tile:canHarvest() and world:hasAccess(tile.x, tile.y) ~= 0 then
					if ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
						findpath(tile.x, tile.y)
						while not bot:isInTile(tile.x, tile.y) do
							sleep(25000)
							reconnect(defaultWorldName, move_x, move_y)
							findpath(tile.x, tile.y)
						end
						lineCheck = false
					end
				elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
					disconnect = true
					reconnect(defaultWorldName, move_x, move_y)
					break
				end
			else
				if tile.y == bot.y then
					if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == seedID and tile:canHarvest() and world:hasAccess(tile.x, tile.y) ~= 0 then
						if ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
							findpath(tile.x, tile.y)
							while not bot:isInTile(tile.x, tile.y) do
								sleep(25000)
								reconnect(defaultWorldName, move_x, move_y)
								findpath(tile.x, tile.y)
							end
						end
					elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
						disconnect = true
						reconnect(defaultWorldName, move_x, move_y)
						break
					end
				end
			end
		
			if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == seedID and tile:canHarvest() and world:hasAccess(tile.x, tile.y) ~= 0 and bot:isInTile(tile.x, tile.y) then
				if bot:getPing() < 300 then
					bot:hit(tile.x, tile.y)
					sleep(math.random(harvest_delayMS, harvest_delayMS + 100))
				elseif bot:getPing() >= 300 then
					bot:hit(tile.x, tile.y)
					sleep(math.random(bot:getPing(), bot:getPing() + 100))
				end
			elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
				disconnect = true
				reconnect(defaultWorldName, move_x, move_y)
				break
			end
			whAllBot()
			if inventory:getItemCount(blockID) >= 200 and ((bot:getAge() >= age()) or (bot.level >= getInfoItem(blockID).level)) then
				break
			elseif buy_pack_option == "ON" and bot.gem_count >= 20000 then
				buyPackController()
				harvestController(worldName, seedID, blockID)
			else
				if tile.y == bot.y then
					if tile.x == 99 and (bot.x >= 0 and bot.x <= 49) then
						if tile.y >= 0 and tile.y <= 51 then
							if bot.y % 2 == 0 then
								tile = {
									y = tile.y + 1
								}
							end
							if #bot:getPath(0, tile.y + 2) > 0 then
								findpath(0, tile.y + 2)
							elseif #bot:getPath(0, tile.y + 2) == 0 then
								if not bot:isInTile(0, tile.y + 2) then
									harvest(worldName, seedID, blockID, false)
								end
							end
						elseif tile.y >= 52 then
							harvest(worldName, seedID, blockID, true)
						end
					elseif tile.x == 99 and (bot.x >= 50 and bot.x <= 99) then
						if tile.y >= 0 and tile.y <= 51 then
							if bot.y % 2 == 0 then
								tile = {
									y = tile.y + 1
								}
							end
							if #bot:getPath(99, tile.y + 2) > 0 then
								findpath(99, tile.y + 2)
								harvest2(worldName, seedID, blockID)
							elseif #bot:getPath(99, tile.y + 2) == 0 then 
								if bot:isInTile(99, tile.y + 2) then
									harvest2(worldName, seedID, blockID)
								elseif not bot:isInTile(99, tile.y + 2) then
									harvest(worldName, seedID, blockID, false)
								end
							end
						elseif tile.y >= 52 then
							harvest(worldName, seedID, blockID, true)
						end
					end
				end
			end
		end
	end
	if disconnect then
		harvestController(worldName, seedID, blockID)
	elseif inventory:getItemCount(blockID) > 0 and ((bot:getAge() >= age()) or (bot.level >= getInfoItem(blockID).level)) then
		pnbController(seedID, blockID)
	else
		changeRotationWorldController(false)
	end
end

function harvest2(worldName, seedID, blockID)
	local worldName = worldName:upper()
	local disconnect = false
	if bot:isInWorld(worldName) and treeScan(true, true, false).readyTreeSafe > 0 then
		local tiles = world:getTiles()
		for i = #tiles, 1, -1 do
			local tile = tiles[i]
			otherTools()
			if tile.y == bot.y then
				if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == seedID and tile:canHarvest() and world:hasAccess(tile.x, tile.y) ~= 0 then
					if ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
						findpath(tile.x, tile.y)
						while not bot:isInTile(tile.x, tile.y) do
							sleep(25000)
							reconnect(defaultWorldName, move_x, move_y)
							findpath(tile.x, tile.y)
						end
					end
				elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
					disconnect = true
					reconnect(defaultWorldName, move_x, move_y)
					break
				end
			end
			
			if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == seedID and tile:canHarvest() and world:hasAccess(tile.x, tile.y) ~= 0 and bot:isInTile(tile.x, tile.y) then
				if bot:getPing() < 300 then
					bot:hit(tile.x, tile.y)
					sleep(math.random(harvest_delayMS, harvest_delayMS + 100))
				elseif bot:getPing() >= 300 then
					bot:hit(tile.x, tile.y)
					sleep(math.random(bot:getPing(), bot:getPing() + 100))
				end
			elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
				disconnect = true
				reconnect(defaultWorldName, move_x, move_y)
				break
			end
			whAllBot()
			if inventory:getItemCount(blockID) >= 200 and ((bot:getAge() >= age()) or (bot.level >= getInfoItem(blockID).level)) then
				break
			elseif buy_pack_option == "ON" and bot.gem_count >= 20000 then
				buyPackController()
				harvestController(worldName, seedID, blockID)
			else
				if tile.y == bot.y then
					if tile.x == 0 and (bot.x >= 0 and bot.x <= 49) then
						if tile.y >= 0 and tile.y <= 51 then
							if bot.y % 2 == 0 then
								tile = {
									y = tile.y + 1
								}
							end
							if #bot:getPath(0, tile.y + 2) > 0 then
								findpath(0, tile.y + 2)
								harvest(worldName, seedID, blockID, false)
							elseif #bot:getPath(0, tile.y + 2) == 0 then
								if bot:isInTile(0, tile.y + 2) then
									harvest(worldName, seedID, blockID, false)
								elseif not bot:isInTile(0, tile.y + 2) then
									harvest(worldName, seedID, blockID, false)
								end
							end
						elseif tile.y >= 52 then
							harvest(worldName, seedID, blockID, true)
						end
					elseif tile.x == 0 and (bot.x >= 50 and bot.x <= 99) then
						if tile.y >= 0 and tile.y <= 51 then
							if bot.y % 2 == 0 then
								tile = {
									y = tile.y + 1
								}
							end
							if #bot:getPath(99, tile.y + 2) > 0 then
								findpath(99, tile.y + 2)
								harvest2(worldName, seedID, blockID)
							elseif #bot:getPath(99, tile.y + 2) == 0 then 
								if not bot:isInTile(99, tile.y + 2) then
									harvest(worldName, seedID, blockID, false)
								end
							end
						elseif tile.y >= 52 then
							harvest(worldName, seedID, blockID, true)
						end
					end
				end
			end
		end
	end
	if disconnect then
		harvestController(worldName, seedID, blockID)
	elseif inventory:getItemCount(blockID) > 0 and ((bot:getAge() >= age()) or (bot.level >= getInfoItem(blockID).level)) then
		pnbController(seedID, blockID)
	else
		changeRotationWorldController(false)
	end
end

function harvestController(worldName, seedID, blockID)
	local worldName = worldName:upper()
	if inventory:getItemCount(blockID) >= 200 and ((bot:getAge() >= age()) or (bot.level >= getInfoItem(blockID).level)) then
		pnbController(seedID, blockID)
	else
		if ((bot:getAge() >= age()) or (bot.level >= getInfoItem(blockID).level)) then
			takeFloatingController(rotation_world, block_id, 200, take_floating_block_option)
		end
		joinWorld(worldName)
		otherTools2()
		harvest(worldName, seedID, blockID, true)
	end
end

function plant(worldName, seedID, blockID, lineCheck)
	local worldName = worldName:upper()
	local disconnect = false
	if bot:isInWorld(worldName) and blankTileScan(worldName, seedID, blockID, true) > 0 then
		for _, tile in pairs(world:getTiles()) do
			otherTools()
			if lineCheck then
				if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == 0 and world:getTile(tile.x, tile.y + 1).fg ~= seedID and world:getTile(tile.x, tile.y + 1).fg ~= blockID and world:getTile(tile.x, tile.y + 1).fg ~= 0 and world:getTile(tile.x, tile.y + 1).fg % 2 == 0 and world:hasAccess(tile.x, tile.y) ~= 0 then
					if ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
						findpath(tile.x, tile.y)
						while not bot:isInTile(tile.x, tile.y) do
							sleep(25000)
							reconnect(defaultWorldName, move_x, move_y)
							findpath(tile.x, tile.y)
						end
						lineCheck = false
					end
				elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
					disconnect = true
					reconnect(defaultWorldName, move_x, move_y)
					break
				end
			else
				if tile.y == bot.y then
					if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == 0 and world:getTile(tile.x, tile.y + 1).fg ~= seedID and world:getTile(tile.x, tile.y + 1).fg ~= blockID and world:getTile(tile.x, tile.y + 1).fg ~= 0 and world:getTile(tile.x, tile.y + 1).fg % 2 == 0 and world:hasAccess(tile.x, tile.y) ~= 0 then
						if ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
							findpath(tile.x, tile.y)
							while not bot:isInTile(tile.x, tile.y) do
								sleep(25000)
								reconnect(defaultWorldName, move_x, move_y)
								findpath(tile.x, tile.y)
							end
						end
					elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
						disconnect = true
						reconnect(defaultWorldName, move_x, move_y)
						break
					end
				end
			end
			
			if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == 0 and world:getTile(tile.x, tile.y + 1).fg ~= seedID and world:getTile(tile.x, tile.y + 1).fg ~= blockID and world:getTile(tile.x, tile.y + 1).fg ~= 0 and world:getTile(tile.x, tile.y + 1).fg % 2 == 0 and world:hasAccess(tile.x, tile.y) ~= 0 and bot:isInTile(tile.x, tile.y) then
				if bot:getPing() < 300 then
					bot:place(tile.x, tile.y, seedID)
					sleep(math.random(plant_delayMS, plant_delayMS + 100))
				elseif bot:getPing() >= 300 then
					bot:place(tile.x, tile.y, seedID)
					sleep(math.random(bot:getPing(), bot:getPing() + 100))
				end
			elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
				disconnect = true
				reconnect(defaultWorldName, move_x, move_y)
				break
			end
			whAllBot()
			if inventory:getItemCount(seedID) == 0 then
				break
			else
				if tile.y == bot.y then
					if tile.x == 99 and (bot.x >= 0 and bot.x <= 49) then
						if tile.y >= 0 and tile.y <= 51 then
							if bot.y % 2 == 0 then
								tile = {
									y = tile.y + 1
								}
							end
							if #bot:getPath(0, tile.y + 2) > 0 then
								findpath(0, tile.y + 2)
							elseif #bot:getPath(0, tile.y + 2) == 0 then
								if not bot:isInTile(0, tile.y + 2) then
									plant(worldName, seedID, blockID, false)
								end
							end
						elseif tile.y >= 52 then
							plant(worldName, seedID, blockID, true)
						end
					elseif tile.x == 99 and (bot.x >= 50 and bot.x <= 99) then
						if tile.y >= 0 and tile.y <= 51 then
							if bot.y % 2 == 0 then
								tile = {
									y = tile.y + 1
								}
							end
							if #bot:getPath(99, tile.y + 2) > 0 then
								findpath(99, tile.y + 2)
								plant2(worldName, seedID, blockID)
							elseif #bot:getPath(99, tile.y + 2) == 0 then 
								if bot:isInTile(99, tile.y + 2) then
									plant2(worldName, seedID, blockID)
								elseif not bot:isInTile(99, tile.y + 2) then
									plant(worldName, seedID, blockID, false)
								end
							end
						elseif tile.y >= 52 then
							plant(worldName, seedID, blockID, true)
						end
					end
				end
			end
		end
	end
	if disconnect then
		plantController(worldName, seedID, blockID)
	elseif ((treeScan(true, true, false).readyTreeSafe > 0) or (safeObjectScan(blockID) > 0)) then
		if inventory:getItemCount(seed_id) >= 100 then
			dropTableController(seed_world_list_update, start_seed_world, seed_world, seed_block_ID, seed_world_marker_id)
			dropBlockCount = unsafeObjectScan(block_id)
			dropSeedCount = unsafeObjectScan(seed_id)
		end
		harvestController(worldName, seedID, blockID)
	else
		changeRotationWorldController(false)
	end
end

function plant2(worldName, seedID, blockID)
	local worldName = worldName:upper()
	local disconnect = false
	if bot:isInWorld(worldName) and blankTileScan(worldName, seedID, blockID, true) > 0 then
		local tiles = world:getTiles()
		for i = #tiles, 1, -1 do
			local tile = tiles[i]
			otherTools()
			if tile.y == bot.y then
				if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == 0 and world:getTile(tile.x, tile.y + 1).fg ~= seedID and world:getTile(tile.x, tile.y + 1).fg ~= blockID and world:getTile(tile.x, tile.y + 1).fg ~= 0 and world:getTile(tile.x, tile.y + 1).fg % 2 == 0 and world:hasAccess(tile.x, tile.y) ~= 0 then
					if ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
						findpath(tile.x, tile.y)
						while not bot:isInTile(tile.x, tile.y) do
							sleep(25000)
							reconnect(defaultWorldName, move_x, move_y)
							findpath(tile.x, tile.y)
						end
					end
				elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
					disconnect = true
					reconnect(defaultWorldName, move_x, move_y)
					break
				end
			end
			
			if bot.status == BotStatus.online and bot:isInWorld(worldName) and tile.fg == 0 and world:getTile(tile.x, tile.y + 1).fg ~= seedID and world:getTile(tile.x, tile.y + 1).fg ~= blockID and world:getTile(tile.x, tile.y + 1).fg ~= 0 and world:getTile(tile.x, tile.y + 1).fg % 2 == 0 and world:hasAccess(tile.x, tile.y) ~= 0 and bot:isInTile(tile.x, tile.y) then
				if bot:getPing() < 300 then
					bot:place(tile.x, tile.y, seedID)
					sleep(math.random(plant_delayMS, plant_delayMS + 100))
				elseif bot:getPing() >= 300 then
					bot:place(tile.x, tile.y, seedID)
					sleep(math.random(bot:getPing(), bot:getPing() + 100))
				end
			elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
				disconnect = true
				reconnect(defaultWorldName, move_x, move_y)
				break
			end
			whAllBot()
			if inventory:getItemCount(seedID) == 0 then
				break
			else
				if tile.y == bot.y then
					if tile.x == 0 and (bot.x >= 0 and bot.x <= 49) then
						if tile.y >= 0 and tile.y <= 51 then
							if bot.y % 2 == 0 then
								tile = {
									y = tile.y + 1
								}
							end
							if #bot:getPath(0, tile.y + 2) > 0 then
								findpath(0, tile.y + 2)
								plant(worldName, seedID, blockID, false)
							elseif #bot:getPath(0, tile.y + 2) == 0 then
								if bot:isInTile(0, tile.y + 2) then
									plant(worldName, seedID, blockID, false)
								elseif not bot:isInTile(0, tile.y + 2) then
									plant(worldName, seedID, blockID, false)
								end
							end
						elseif tile.y >= 52 then
							plant(worldName, seedID, blockID, true)
						end
					elseif tile.x == 0 and (bot.x >= 50 and bot.x <= 99) then
						if tile.y >= 0 and tile.y <= 51 then
							if bot.y % 2 == 0 then
								tile = {
									y = tile.y + 1
								}
							end
							if #bot:getPath(99, tile.y + 2) > 0 then
								findpath(99, tile.y + 2)
								plant2(worldName, seedID, blockID)
							elseif #bot:getPath(99, tile.y + 2) == 0 then 
								if not bot:isInTile(99, tile.y + 2) then
									plant(worldName, seedID, blockID, false)
								end
							end
						elseif tile.y >= 52 then
							plant(worldName, seedID, blockID, true)
						end
					end
				end
			end
		end
	end
	if disconnect then
		plantController(worldName, seedID, blockID)
	elseif ((treeScan(true, true, false).readyTreeSafe > 0) or (safeObjectScan(blockID) > 0)) then
		if inventory:getItemCount(seed_id) >= 100 then
			dropTableController(seed_world_list_update, start_seed_world, seed_world, seed_block_ID, seed_world_marker_id)
			dropBlockCount = unsafeObjectScan(block_id)
			dropSeedCount = unsafeObjectScan(seed_id)
		end
		harvestController(worldName, seedID, blockID)
	else
		changeRotationWorldController(false)
	end
end

function plantController(worldName, seedID, blockID)
	local worldName = worldName:upper()
	joinWorld(worldName)
	otherTools2()
	botTimeShow = os.time() - botTime
	timeEndHalf()
	timeStartHalf()
	whBotInformation(
		"**[ BOT INFORMATION ]** \n" ..
		"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
		":identification_card: **|** Account Type: " .. accountType .. " \n" ..
		"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
		"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
		"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
		"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
		"<:Purple_Gem:1190695162549108876> **|** Gems Amount: " .. bot.gem_count .. " \n\n" ..
		
		"**[ WORLD INFORMATION ]** \n" ..
		"<:Globe:1190695520210006036> **|** Current Farm World: `" .. rotation_world .. "` \n" ..
		"<:Right_Arrow_V2:1190695167078957056>   `[Farm World " .. numbering_rotation_world_list .. " of " .. #rotation_world_list_update .. " World]` \n" ..
		"<:Globe:1190695520210006036> **|** PNB World: `" .. pnbWorldStatus() .. "` \n" ..
		"<:Globe:1190695520210006036> **|** Seed World: `" .. seed_world .. "` \n" ..
		"<:Globe:1190695520210006036> **|** Pack World: `" .. pack_world .. "` \n\n" ..
		
		"**[ TREE INFORMATION ]** \n" ..
		"<:Laser_Grid_Tree:1190695145188884661> **|** Farmed Tree: " .. getInfoItem(block_id).name .. " \n" ..
		"<:Laser_Grid_Tree:1190695145188884661> **|** Ready Tree Amount: " .. treeScan(false, false, false).readyTreeSafe .. " \n" ..
		"<:Laser_Grid_Tree:1190695145188884661> **|** Unready Tree Amount: " .. treeScan(false, false, false).unreadyTreeSafe .. " \n" ..
		"<:Laser_Grid:1190695132236894258> **|** Floating Block Amount: " .. safeObjectScan(block_id) .. " \n\n" ..
		
		"**[ TIME INFORMATION ]**\n" ..
		"<:Luxurious_Wall_Clock:1190695156333150258> **|** Online Time: " .. secondON(botTimeShow) .. " \n" ..
		"<:Luxurious_Wall_Clock:1190695156333150258> **|** Looping Time: " .. secondR(calculateTimeHalf) .. " Minutes",
		
		
		"**[ ITEM INFORMATION ]** \n" ..
		"<:Seed_And_Block:1190695174993608805> **|** Total Tree Dropped [In Backpack]: \n" ..
		getInfoItem(block_id).name .. ": " .. dropBlockCount .. " [" .. inventory:getItemCount(block_id) .. "] \n" ..
		getInfoItem(seed_id).name .. ": " .. dropSeedCount .. " [" .. inventory:getItemCount(seed_id) .. "] \n\n" ..
		
		":package: **|** Total Pack Dropped [In Backpack]:" ..
		dropPackCount
	)
	if bot:isInWorld(worldName) and blankTileScan(worldName, seedID, blockID, true) > 0 then
		plant(worldName, seedID, blockID, true)
	else
		changeRotationWorldController(false)
	end
end

function breaker(x, y, seedID, blockID)
	while bot.status == BotStatus.online and (world:getTile(x, y).fg ~= 0 or world:getTile(x, y).bg ~= 0) do
		bot:hit(x, y)
		sleep(hit_delayMS)
		pnbHelper(seedID, blockID)
		otherTools()
		if not bot:isInTile(pnb_x, pnb_y) then
			sleep(25000)
			findpath(pnb_x, pnb_y)
		end
	end
	
	if bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
		reconnect(defaultWorldName, move_x, move_y)
		pnbController(seedID, blockID)
	end
end

function pnbHelper(seedID, blockID)
	if pnb_world_option == "RANDOMWORLD" then
		if bot:isInWorld(randomPnbWorldString()) and ((world:hasAccess(bot.x + 1, bot.y) == 0) or (unsafeTileScan(getInfoItem("Fire").id) > 0)) then
			cachedRandomPnbWorld = nil
			pnbController(seedID, blockID)
		end
	end
end

function pnb(seedID, blockID)
	while bot.status == BotStatus.online and inventory:getItemCount(blockID) > 0 do
		pnbHelper(seedID, blockID)
		otherTools()
		findpath(pnb_x, pnb_y)
		whAllBot()
		if inventory:getItemCount(seedID) < 200 then
			if pnb_range == 1 then
				bot:place(bot.x - 1, bot.y, blockID)
				sleep(place_delayMS)
				
				breaker(bot.x - 1, bot.y, seedID, blockID)
			elseif pnb_range == 2 then
				bot:place(bot.x - 1, bot.y - 1, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y, blockID)
				sleep(place_delayMS)
				
				breaker(bot.x - 1, bot.y - 1, seedID, blockID)
				breaker(bot.x - 1, bot.y, seedID, blockID)
			elseif pnb_range == 3 then
				bot:place(bot.x - 1, bot.y - 2, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y - 1, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y, blockID)
				sleep(place_delayMS)
				
				breaker(bot.x - 1, bot.y - 2, seedID, blockID)
				breaker(bot.x - 1, bot.y - 1, seedID, blockID)
				breaker(bot.x - 1, bot.y, seedID, blockID)
			elseif pnb_range == 4 then
				bot:place(bot.x - 1, bot.y - 2, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y - 1, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y + 1, blockID)
				sleep(place_delayMS)
				
				breaker(bot.x - 1, bot.y - 2, seedID, blockID)
				breaker(bot.x - 1, bot.y - 1, seedID, blockID)
				breaker(bot.x - 1, bot.y, seedID, blockID)
				breaker(bot.x - 1, bot.y + 1, seedID, blockID)
			elseif pnb_range == 5 then
				bot:place(bot.x - 1, bot.y - 2, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y - 1, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y + 1, blockID)
				sleep(place_delayMS)
				bot:place(bot.x - 1, bot.y + 2, blockID)
				sleep(place_delayMS)
				
				breaker(bot.x - 1, bot.y - 2, seedID, blockID)
				breaker(bot.x - 1, bot.y - 1, seedID, blockID)
				breaker(bot.x - 1, bot.y, seedID, blockID)
				breaker(bot.x - 1, bot.y + 1, seedID, blockID)
				breaker(bot.x - 1, bot.y + 2, seedID, blockID)
			end
		else
			return
		end
	end
	if bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
		reconnect(defaultWorldName, move_x, move_y)
		pnbController(seedID, blockID)
	end
end

function pnbWorldStatus()
	if pnb_world_option == "RANDOMWORLD" then
		return randomPnbWorldString()
	else
		return rotation_world
	end
end

function pnbController(seedID, blockID)
	if ((bot:getAge() >= age()) or (bot.level >= getInfoItem(blockID).level)) then
		buyPackController()
		if pnb_world_option == "RANDOMWORLD" then
			joinWorld(randomPnbWorldString(), true)
			if world:getTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32) - 1).fg == 204 then
				pnb_x, pnb_y = bot.x, bot.y - 2
			else
				pnb_x, pnb_y = 1, 23
			end
		else
			joinWorld(rotation_world)
		end
		otherTools2()
		trashItem()
		pnb(seedID, blockID)
		plantController(rotation_world, seedID, blockID)
	end
end

function upgradeInventoryPrice()
	if inventory.slotcount == 16 then
		return 100
	elseif inventory.slotcount == 26 then
		return 200
	elseif inventory.slotcount == 36 then
		return 500
	elseif inventory.slotcount == 46 then
		return 1000
	elseif inventory.slotcount == 56 then
		return 1700
	elseif inventory.slotcount == 66 then
		return 2600
	elseif inventory.slotcount == 76 then
		return 3700
	elseif inventory.slotcount == 86 then
		return 5000
	elseif inventory.slotcount == 96 then
		return 6500
	elseif inventory.slotcount == 106 then
		return 8200
	elseif inventory.slotcount == 116 then
		return 10100
	elseif inventory.slotcount == 126 then
		return 12200
	elseif inventory.slotcount == 136 then
		return 14500
	elseif inventory.slotcount == 146 then
		return 17000
	elseif inventory.slotcount == 156 then
		return 19700
	elseif inventory.slotcount == 166 then
		return 22600
	elseif inventory.slotcount == 176 then
		return 25700
	elseif inventory.slotcount == 186 then
		return 29000
	elseif inventory.slotcount == 196 then
		return 32500
	elseif inventory.slotcount == 206 then
		return 36200
	else 
		return 999999999999
	end
end

function upgradeInventory(variable_type)
	local backpackSlotLeft = inventory.slotcount - inventory.itemcount
	local table_name = {}
	if type(variable_type):upper() ~= "TABLE" then
		table.insert(table_name, variable_type)
	else
		table_name = variable_type
	end
	if backpackSlotLeft >= #table_name then
		return
	else
		if bot.gem_count >= upgradeInventoryPrice() then
			bot:buy("upgrade_backpack")
			sleep(math.random(auto_buy_delayMS, auto_buy_delayMS + 100))
		else
			whBotInformation(
				"<a:toa:997296837352505415> **|** " .. bot.name:upper() .. " gems are less than " .. upgradeInventoryPrice() .. "."
			)
		end
	end
end

function buyPack()
	local max_buy = 0
	local packExceed = false
	upgradeInventory(pack_id)
	if bot.status == BotStatus.online then
		if bot.gem_count >= pack_price and max_buy < 50 then
			while bot.status == BotStatus.online and bot.gem_count >= pack_price and max_buy < 50 do
				max_buy = max_buy + 1
				bot:buy(pack_name)
				sleep(math.random(auto_buy_delayMS, auto_buy_delayMS + 100))
				if not packExceed then
					for _, item in pairs(pack_id) do
						if inventory:getItemCount(item) >= 150 then 
							packExceed = true
							break
						end
					end
				end
				if packExceed then
					break
				end
			end
			if bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
				reconnect(defaultWorldName, move_x, move_y)
				buyPackController()
			end
		end
	elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
		reconnect(defaultWorldName, move_x, move_y)
		buyPackController()
	end
	if not packExceed then
		for _, item in pairs(pack_id) do
			if inventory:getItemCount(item) >= max_drop_pack then 
				packExceed = true
				break
			end
		end
	end
	if packExceed then
		dropTableController(pack_world_list_update, start_pack_world, pack_world, pack_id, pack_world_marker_id, true)
	end
end

function buyPackController()
	if buy_pack_option == "ON" then
		buyPack()
	end
end

function dropItem(itemID, leftover)
	bot:setDirection(false)
	sleep(100)
	if leftover then
		bot:drop(itemID, inventory:getItemCount(itemID) - leftover)
		sleep(math.random(drop_delayMS, drop_delayMS + 100))
	else
		bot:drop(itemID, inventory:getItemCount(itemID))
		sleep(math.random(drop_delayMS, drop_delayMS + 100))
	end
end

local markerTilesCache = {}
function markerScan(itemID)
	local disconnect = false
	if markerTilesCache[itemID] then
		return markerTilesCache[itemID]
	end
	
	local markerTiles = {}
	for _, tile in pairs(world:getTiles()) do 
		if bot.status == BotStatus.online and (tile.fg == itemID or tile.bg == itemID) and ((#bot:getPath(tile.x, tile.y) > 0) or (#bot:getPath(tile.x, tile.y) == 0 and bot:isInTile(tile.x, tile.y))) then
			local markerTile = {x = tile.x, y = tile.y}
			table.insert(markerTiles, markerTile)
		elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
			disconnect = true
			reconnect(defaultWorldName, move_x, move_y)
			break
		end
	end
	if disconnect then
		markerScan(itemID)
	end
	markerTilesCache[itemID] = markerTiles
	return markerTiles
end

function dropTable(tableList, startTableList, worldName, itemID, markerID, wind_essence_status)
	local worldName = worldName:upper()
	if bot.status == BotStatus.online then
		local markerTiles = markerScan(markerID)
		local start_drop = #markerTiles
		local nextMarkerTile = markerTiles[start_drop]
		if #markerTiles > 0 then
			findpath(nextMarkerTile.x, nextMarkerTile.y)
			while bot.status == BotStatus.online and not bot:isInTile(nextMarkerTile.x, nextMarkerTile.y) do
				sleep(25000)
				reconnect(defaultWorldName, move_x, move_y)
				findpath(nextMarkerTile.x, nextMarkerTile.y)
			end
			
			if wind_essence_status then
				dropItem(5030)
				while inventory:getItemCount(5030) > 0 do
					reconnect(defaultWorldName, move_x, move_y)
					table.remove(markerTiles, start_drop)
					start_drop = #markerTiles
					findpath(bot.x - 1, bot.y)
					sleep(100)
					dropItem(5030)
				end
				if inventory:getItemCount(5030) == 0 then 
					findpath(bot.x, bot.y - 1)
					sleep(100)
				end
			end
			
			for _, item in pairs(itemID) do
				dropItem(item)
				while inventory:getItemCount(item) > 0 do
					reconnect(defaultWorldName, move_x, move_y)
					table.remove(markerTiles, start_drop)
					start_drop = #markerTiles
					findpath(bot.x - 1, bot.y)
					sleep(100)
					dropItem(item)
				end
				if inventory:getItemCount(item) == 0 then 
					findpath(bot.x, bot.y - 1)
					sleep(100)
				end
			end
		else
			markerTilesCache = {}
			whAllBot()
			changeWorld(tableList, startTableList, worldName, "The Storage World Is Full")
			dropTableController(tableList, startTableList, worldName, itemID, markerID, wind_essence_status)
		end
	else
		reconnect(defaultWorldName, move_x, move_y)
		dropTableController(tableList, startTableList, worldName, itemID, markerID, wind_essence_status)
	end
end

function dropTableController(tableList, startTableList, worldName, itemID, markerID, wind_essence_status)
	local exceed_status = false
	for _, packID in pairs(itemID) do
		if inventory:getItemCount(packID) > 0 then 
			exceed_status = true
			break
		end
	end
	if exceed_status then
		local worldName = worldName:upper()
		joinWorld(worldName)
		dropTable(tableList, startTableList, worldName, itemID, markerID, wind_essence_status)
		if itemID == pack_id then
			dropPackCount = whDroppedPackIdCount(itemID)
			dropTableCountResult = dropPackCount
		elseif itemID == seed_block_ID then
			dropSeedBlockCount = whDroppedPackIdCount(itemID)
			dropTableCountResult = dropSeedBlockCount
		end
		whDroppedItem(
			"**[ BOT INFORMATION ]** \n" .. 
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" .. 
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" .. 
			"<:Right_Arrow_V2:1190695167078957056>  `[" .. singleBotStatus() .. "]` \n" .. 
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
			"<a:toa:997296837352505415> **|** Bot Information: Pack count \n\n" .. 
			
			"**[ PACK INFORMATION ]** \n" ..
			"<:Globe:1190695520210006036> **|** Pack World: `" .. world.name:upper() .. "` \n" .. 
			":package: **|** Total Pack Dropped [In Backpack]:" .. 
			dropTableCountResult
		)
	end
end
---- [ END ROTATION ] ----


---- [ MAIN ] ----
function takePickaxe()
	if bot.status == BotStatus.online then
		local disconnect = false
		
		if disconnect then
			takePickaxeController()
		end
		if string.find(world.name:upper(), pickaxe_world) then
			if inventory:getItemCount(pickaxe_id) == 0 then
				takeFloatingController(pickaxe_world, pickaxe_id, 1, "ON")
				if inventory:getItemCount(pickaxe_id) > 1 then
					findpath(bot.x - 1, bot.y)
					dropPickaxe()
				elseif inventory:getItemCount(pickaxe_id) == 0 then
					whBotInformation(
						"<:Megaphone:1254703457236025385> **|** Bot Information: " .. getInfoItem(pickaxe_id).name .. " are not available in the world or are being taken by other bots."
					)
					while safeObjectScan(pickaxe_id) == 0 and inventory:getItemCount(pickaxe_id) > 0 do
						sleep(1000)
					end
					takePickaxeController()
				end
			elseif inventory:getItemCount(pickaxe_id) > 1 then
				for _, tile in pairs(world:getTiles()) do
					if bot.status == BotStatus.online and tile.y == bot.y and ((#bot:getPath(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)) > 0) or (#bot:getPath(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)) == 0 and bot:isInTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)))) then
						pickaxe_move_x, pickaxe_move_y = tile.x, tile.y
						break
					elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
						disconnect = true
						reconnect(defaultWorldName, move_x, move_y)
						break 
					end
				end
				
				if (not pickaxe_move_x) or (not pickaxe_move_y) then
					pickaxe_move_x, pickaxe_move_y = 7, 14
				end
		
				findpath(pickaxe_move_x, pickaxe_move_y)
				dropPickaxe()
			end
		end
	elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
		reconnect(defaultWorldName, move_x, move_y)
		takePickaxeController()
	end
end

function dropPickaxe()
	if bot.status == BotStatus.online then
		while inventory:getItemCount(pickaxe_id) > 1 do
			dropItem(pickaxe_id, 1)
			reconnect(defaultWorldName, move_x, move_y)
		end
	else
		reconnect(defaultWorldName, move_x, move_y)
		takePickaxeController()
	end
end

function takePickaxeController()
	if pickaxe_option == "ON" and ((inventory:getItemCount(pickaxe_id) == 0) or (inventory:getItemCount(pickaxe_id) > 1)) then
		joinWorld(pickaxe_world)
		takePickaxe()
	end
	if inventory:getItemCount(pickaxe_id) == 1 then
		whBotInformation(
			"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name:upper() .. " already has the " .. getInfoItem(pickaxe_id).name
		)
		while inventory:getItemCount(pickaxe_id) == 1 and not inventory:getItem(pickaxe_id).isActive do
			bot:wear(pickaxe_id)
			sleep(math.random(wear_delayMS, wear_delayMS + 100))
		end
	end
end

function main()
	timeStart()
	if bot.level < 2 and inventory:getItemCount(9640) > 0 then
		skipTutorial()
	else
		if change_bot_on_maximum_level_option == "ON" and bot.level == maximum_level then
			maximumLevel()
		elseif bot:getAge() < age() and bot.level < getInfoItem(block_id).level then
			whBotInformation(
				"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name .. "'s requires level " .. getInfoItem(block_id).level .. " to perform pnb. \nAuto leveling will start automatically" 
			)
			leveling()
		end
	end
	getMalady()
	whAllBot()
	takePickaxeController()
	harvestController(rotation_world, seed_id, block_id)
end
---- [ END MAIN ] ----


---- [ TRASH ITEM ] ----
function trashItem()
	if auto_trash == "ON" then
		for _, item in ipairs(trash_id) do
			item = tonumber(item)
			if inventory:getItemCount(item) > 0 then
				bot:trash(item, inventory:getItemCount(item))
				sleep(math.random(120, 150))
			end
			reconnect(defaultWorldName, move_x, move_y)
		end
	else
		return
	end
end
---- [ END TRASH ITEM ] ----


---- [ LEVELING ] ----
function leveling()
	if leveling_option == "COMINGSOON" then
		return
	else
		return
	end
end
---- [ END LEVELING ] ----


---- [ WORLD ] ----
--World variable
	defaultWorldName = "GKSDEFAULT" .. math.random(00000, 50000)

function joinWorld(worldName, custom_join_world)
	defaultWorldName = worldName:upper()
	worldNameBanned = worldName:upper()
	if bot.status == BotStatus.online then
		if not string.find(world.name:upper(), defaultWorldName) then
			bot.auto_collect = false
			bot:sendPacket(3, "action|quit_to_exit")
			sleep(math.random(1000, 1200))
			if not bot.auto_collect then
				local joinWorldCount = 0
				while not string.find(world.name:upper(), defaultWorldName) and joinWorldCount < 5 do
					joinWorldCount = joinWorldCount + 1
					reconnect(defaultWorldName, move_x, move_y)
					bot:warp(defaultWorldName .. "|" .. matchWorldIdStatus(defaultWorldName).world_id)
					addEvent(Event.variantlist, variantListEvent)
					listenEvents(10)
					changingSubserver()
					if joinWorldCount >= 5 then
						joinWorldCount = 0
						whBotInformation(
							"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name:upper() .. " has tried to enter the world 5 times \n" ..
							"<:Luxurious_Wall_Clock:1190695156333150258> **|** Cooldown: " .. convertMStoH(hard_join_world_delayM)
						)
						sleep(hard_join_world_delayM)
						if not string.find(world.name:upper(), defaultWorldName) then
							bot:disconnect()
							sleep(10)
						end
					end
				end
				
				if string.find(world.name:upper(), defaultWorldName) then
					if custom_join_world then
						while bot:isInWorld(randomPnbWorldString()) and world:getTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)).fg ~= 6 do
							bot:respawn()
							sleep(1000)
						end
						
						if ((bot:isInWorld("DISNEYLAND")) or (bot:isInWorld(randomPnbWorldString()) and world:hasAccess(bot.x, bot.y - 1) == 0)) then
							cachedRandomPnbWorld = nil
							joinWorld(randomPnbWorldString(), true)
						end
						
						if bot:isInWorld(randomPnbWorldString()) and world:getTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)).fg == 6 then
							if randomPnbWorldTileScan(204) == 0 then
								while inventory:getItemCount(204) == 0 and bot.gem_count >= 200 do
									bot:buy("big_lock")
									sleep(math.random(auto_buy_delayMS, auto_buy_delayMS + 100))
								end
							end
							
							if bot:isInWorld(randomPnbWorldString()) and world:hasAccess(bot.x, bot.y - 1) ~= 0 and inventory:getItemCount(204) >= 1 then
								while ((world:getTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)).fg == 0) or (world:getTile(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32)).bg == 0)) and world:hasAccess(bot.x, bot.y - 1) ~= 0 and inventory:getItemCount(204) >= 1 do
									bot:place(math.floor(world:getLocal().posx / 32), math.floor(world:getLocal().posy / 32) - 1, 204)
									sleep(math.random(place_delayMS, place_delayMS + 100))
								end
							end
							if world:hasAccess(bot.x, bot.y - 1) == 0 then 
								cachedRandomPnbWorld = nil
								joinWorld(randomPnbWorldString(), true)
							end
						end
					else
						whiteDoorCheck(defaultWorldName)
					end
				end
			end
		elseif string.find(world.name:upper(), defaultWorldName) then
			whiteDoorCheck(defaultWorldName)
		end
		if matchWorldIdStatus(defaultWorldName).auto_collect then
			bot.auto_collect = true
			sleep(10)
		else
			bot.auto_collect = false
			sleep(10)
		end
	elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
		reconnect(defaultWorldName, move_x, move_y)
		joinWorld(worldName, custom_join_world)
	end
end
---- [ END WORLD ] ----


---- [ CHANGE ] ----
function changeRotationWorld(remove_world_status)
	if ((inventory:getItemCount(seed_id) > 0) or (inventory:getItemCount(block_id) > 0)) then
		dropTableController(seed_world_list_update, start_seed_world, seed_world, seed_block_ID, seed_world_marker_id)
		dropBlockCount = unsafeObjectScan(block_id)
		dropSeedCount = unsafeObjectScan(seed_id)
	end
	buyPackController()
	whBotInformation(
		"**[ BOT INFORMATION ]** \n" ..
		"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
		":identification_card: **|** Account Type: " .. accountType .. " \n" ..
		"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
		"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
		"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
		"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
		"<:Megaphone:1254703457236025385> **|** Bot Information: Change the rotation world \n\n" ..
		
		"**[ ESTIMATED TIME ]** \n" ..
		"<:Globe:1190695520210006036> **|** World Status: `" .. rotation_world .. "` Finished \n" ..
		"<:Right_Arrow_V2:1190695167078957056>   `[Farm World " .. numbering_rotation_world_list .. " of " .. #rotation_world_list_update .. " World]` \n" ..
		"<:Luxurious_Wall_Clock:1190695156333150258> **|** Estimated End Time: \n" ..
		"**" .. timeEnd().time_hours .. " Hours, " .. timeEnd().time_minutes .. " Minutes**"
	)
	if rotation_looping_option == "ON" or ((bot:getAge() < age()) and (bot.level < getInfoItem(block_id).level)) and not remove_world_status then
		local currentList = table.remove(rotation_world_list_update, start_rotation_world_list)
		table.insert(rotation_world_list_update, currentList)
	else
		table.remove(rotation_world_list_update, start_rotation_world_list)
	end
	if #rotation_world_list_update > 0 then
		numbering_rotation_world_list = numbering_rotation_world_list + 1
		if numbering_rotation_world_list > #rotation_world_list_update then
			numbering_rotation_world_list = 1
		end
		rotation_world = rotation_world_list_update[start_rotation_world_list][1]:upper()
		rotation_world_id = rotation_world_list_update[start_rotation_world_list][2]:upper()
			if ((rotation_world_id == "-") or (not rotation_world_id)) then
				rotation_world_id = ""
			end
		block_id = tonumber(rotation_world_list_update[start_rotation_world_list][3])
			if not block_id then
				removeBotIndex(remove_bot_option, "Rotation world list format is wrong!")
			end
		seed_id = tonumber(block_id + 1)
		seed_block_ID = {seed_id, block_id}
		
		dropBlockCount = 0
		dropSeedCount = 0		
		whBotInformation(
			"**[ BOT INFORMATION ]** \n" ..
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" .. 
			"<:Purple_Gem:1190695162549108876> **|** Gems Amount: " .. bot.gem_count .. " \n\n" ..
			
			"**[ WORLD INFORMATION ]** \n" ..
			"<:Globe:1190695520210006036> **|** Current Farm World: `" .. rotation_world .. "` \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[Farm World " .. numbering_rotation_world_list .. " of " .. #rotation_world_list_update .. " World]` \n" ..
			"<:Globe:1190695520210006036> **|** PNB World: `" .. pnbWorldStatus() .. "` \n" ..
			"<:Globe:1190695520210006036> **|** Seed World: `" .. seed_world .. "` \n" ..
			"<:Globe:1190695520210006036> **|** Pack World: `" .. pack_world .. "` \n\n" ..
			
			"**[ TREE INFORMATION ]** \n" ..
			"<:Laser_Grid_Tree:1190695145188884661> **|** Farmed Tree: " .. getInfoItem(block_id).name .. " \n\n" ..
					
			"**[ TIME INFORMATION ]** \n" ..
			"<:Luxurious_Wall_Clock:1190695156333150258> **|** Online Time: " .. secondON(botTimeShow),
			
			
			"**[ ITEM INFORMATION ]** \n" ..
			"<:Seed_And_Block:1190695174993608805> **|** Total Tree Dropped [In Backpack]: \n" ..
			getInfoItem(block_id).name .. ": " .. dropBlockCount .. " [" .. inventory:getItemCount(block_id) .. "] \n" ..
			getInfoItem(seed_id).name .. ": " .. dropSeedCount .. " [" .. inventory:getItemCount(seed_id) .. "] \n\n" ..
			
			":package: **|** Total Pack Dropped [In Backpack]:" ..
			dropPackCount
		)
		main()
	else
		bot:disconnect()
		sleep(10)
		whAllBot()
		whBotInformation(
			"**[ BOT INFORMATION ]** \n" ..
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
			"<:Megaphone:1254703457236025385> **|** Bot Information: Rotation complete!"
		)
		removeBotIndex(remove_bot_option, "Bot Information: Rotation complete!")
	end
end

function changeRotationWorldController(remove_world_status)
	if bot:isInWorld(rotation_world) and blankTileScan(rotation_world, seed_id, block_id, false) > 0 then
		takeFloatingController(seed_world, seed_id, 200, "ON")
		if inventory:getItemCount(seed_id) > 0 then
			plantController(rotation_world, seed_id, block_id)
		else
			changeRotationWorld(remove_world_status)
		end
	else
		changeRotationWorld(remove_world_status)
	end
end

function changeWorld(tableList, startTableList, worldName, description)
	local worldName = worldName:upper()
	whBotInformation(
		"**[ BOT INFORMATION ]** \n" ..
		"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
		":identification_card: **|** Account Type: " .. accountType .. " \n" ..
		"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
		"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "]\n" ..
		"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
		"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n\n" ..
		
		"**[ WORLD INFORMATION ]** \n" ..
		"<:Globe:1190695520210006036> **|** World: `" .. worldName .. "` \n" ..
		"<:Right_Arrow_V2:1190695167078957056>   `[" .. description .. "]`"
	)
	table.remove(tableList, startTableList)
	if #tableList > 0 then
		if tableList == seed_world_list_update then
			seed_world = seed_world_list_update[start_seed_world][1]:upper()
			seed_world_id = seed_world_list_update[start_seed_world][2]:upper()
				if ((seed_world_id == "-") or (not seed_world_id)) then
					seed_world_id = ""
				end
			seed_world_marker_id = tonumber(seed_world_list_update[start_seed_world][3])
				if not seed_world_marker_id then
					removeBotIndex(remove_bot_option, "Seed world list format is wrong!")
				end
		elseif tableList == pack_world_list_update then
			pack_world = pack_world_list_update[start_pack_world][1]:upper()
			pack_world_id = pack_world_list_update[start_pack_world][2]:upper()
				if ((pack_world_id == "-") or (not pack_world_id)) then
					pack_world_id = ""
				end
			pack_world_marker_id = tonumber(pack_world_list_update[start_pack_world][3])
				if not pack_world_marker_id then
					removeBotIndex(remove_bot_option, "Pack world list format is wrong!")
				end
			max_drop_pack = tonumber(pack_world_list_update[start_pack_world][4])
				if ((max_drop_pack == 0) or (not max_drop_pack)) then
					max_drop_pack = 1
				end
		end
	else
		bot:disconnect()
		sleep(10)
		if tableList == pickaxe_list_update then
			informationTableWorld = bot.name .. "'s does not have a pickaxe world list"
		elseif tableList == seed_world_list_update then
			informationTableWorld = bot.name .. "'s does not have a seed world list"
		elseif tableList == pack_world_list_update then
			informationTableWorld = bot.name .. "'s does not have a pack world list"
		end
		whAllBot()
		whBotInformation(
			"**[ BOT INFORMATION ]** \n" ..
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
			"<:Megaphone:1254703457236025385> **|** Bot Information: " .. informationTableWorld
		)
		removeBotIndex(remove_bot_option, "Bot Information: " .. informationTableWorld)
	end
end

function changeBot(remove_bot_status, custom_status)
	if remove_bot_status then
		if custom_status then
			whBotInformation( 
				"<:Megaphone:1254703457236025385> **|** Bot Information: " .. custom_status
			)
			removeBotLog(custom_status)
		else
			whBotInformation( 
				"<:Megaphone:1254703457236025385> **|** Bot Information: " .. singleBotStatus()
			)
			removeBotLog(singleBotStatus())
		end
		table.remove(bot_list_update, start_bot_list)
	else
		local currentList = table.remove(bot_list_update, start_bot_list)
		table.insert(bot_list_update, currentList)
	end
	
	if #bot_list_update > 0 then
		reconnectCount = 0
		connectBot()
	else
		bot:disconnect()
		sleep(10)
		whAllBot()
		whBotInformation( 
			"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name .. "'s does not have a bot list"
		)
		removeBotIndex(remove_bot_option, bot.name .. "'s does not have a bot list")
	end
end

function changeProxy(remove_proxy_status)
	whBotInformation( 
		"<:Megaphone:1254703457236025385> **|** Changing the proxy"
	)
	local proxyMatch = tostring(bot:getProxy().ip .. ":" .. bot:getProxy().port .. ":" .. bot:getProxy().username .. ":" .. bot:getProxy().password)
	if remove_proxy_status then
		if proxyMatch == change_proxy_list[start_change_proxy_list] then
			table.remove(change_proxy_list, start_change_proxy_list)
		end
	else
		if proxyMatch == change_proxy_list[start_change_proxy_list] then
			local currentList = table.remove(change_proxy_list, start_change_proxy_list)
			table.insert(bot_list_update, currentList)
		else
			table.insert(bot_list_update, proxyMatch)
		end
	end
	
	if #change_proxy_list > 0 then
		bot:updateProxy(change_proxy_list[start_change_proxy_list])
		sleep(100)
		reconnect(defaultWorldName, move_x, move_y)
	else
		bot:disconnect()
		sleep(10)
		whAllBot()
		whBotInformation( 
			"<:Megaphone:1254703457236025385> **|** Bot Information: " .. bot.name .. "'s does not have a change proxy list"
		)
		removeBotIndex(remove_bot_option, bot.name .. "'s does not have a change proxy list")
	end
end
---- [ END CHANGE ] ----


---- [ SKIP TUTORIAL ] ----
function skipTutorial()
	if bot.status == BotStatus.online then
		if bot.level < 2 and inventory:getItemCount(9640) > 0 then
			local tutorialWorldName = world.name:upper()
			whBotInformation(
				"**[ BOT INFORMATION ]** \n" ..
				"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
				":identification_card: **|** Account Type: " .. accountType .. " \n" ..
				"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
				"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
				"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
				"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
				"<:Megaphone:1254703457236025385> **|** Bot Information: Start skipping the tutorial"
			)
			while not string.find(world.name:upper(), bot.name:upper()) do
				sleep(1000)
			end
			for _, tile in pairs(world:getTiles()) do
				if bot.status == BotStatus.online then
					while tile.fg == 6 and inventory:getItemCount(9640) > 0 do
						bot:place(tile.x, tile.y - 1, 9640)
						sleep(math.random(place_delayMS, place_delayMS + 100))
						reconnect(tutorialWorldName, move_x, move_y)
					end
				elseif bot.status ~= BotStatus.online or (bot.status == BotStatus.online and bot:getPing() == 0) then
					reconnect(tutorialWorldName, move_x, move_y)
					while tile.fg == 6 and inventory:getItemCount(9640) > 0 do
						bot:place(tile.x, tile.y - 1, 9640)
						sleep(math.random(place_delayMS, place_delayMS + 100))
						reconnect(tutorialWorldName, move_x, move_y)
					end
				end
			end
		end
		whBotInformation(
			"**[ BOT INFORMATION ]** \n" ..
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
			"<:Megaphone:1254703457236025385> **|** Bot Information: Finish skipping the tutorial"
		)
	end
end
---- [ END SKIP TUTORIAL ] ----


---- [ CONNECT ] ----
--Connect variable
	numbering_rotation_world_list = 1
	dropBlockCount = 0
	dropSeedCount = 0
	dropPackCount = "\n 0"
	malady_name = "None"
	botTime = os.time()
	
function connectBot()
	accountType = nil
	timeRandomChat = os.time() - 0
	timeGetMalady = os.time() - 0
	malady_timeS = 0 
	if not accountType then
		
		if ((not bot_list_update[start_bot_list][1]:find("@")) and (not bot_list_update[start_bot_list][1]:find("+"))) and (bot_list_update[start_bot_list][3]:upper() == "-") and ((bot_list_update[start_bot_list][7]:upper() == "WINDOWS") or (bot_list_update[start_bot_list][7]:upper() == "ANDROID") or (bot_list_update[start_bot_list][7]:upper() == "MACOS") or (bot_list_update[start_bot_list][7]:upper() == "IOS")) then
			accountType = "LEGACY"
		elseif ((bot_list_update[start_bot_list][1]:find("@")) or (bot_list_update[start_bot_list][1]:find("+"))) then
			if (bot_list_update[start_bot_list][3]:upper() == "-") then
				if ((bot_list_update[start_bot_list][7]:upper() == "WINDOWS") or (bot_list_update[start_bot_list][7]:upper() == "ANDROID") or (bot_list_update[start_bot_list][7]:upper() == "MACOS") or (bot_list_update[start_bot_list][7]:upper() == "IOS")) then
					accountType = "GOOGLE"
				elseif bot_list_update[start_bot_list][7]:upper() == "UBICONNECT" then
					accountType = "UBICONNECT"
				elseif bot_list_update[start_bot_list][7]:upper() == "APPLEID" then
					accountType = "APPLEID"
				end
			elseif (bot_list_update[start_bot_list][3]:upper() ~= "-") then
				if bot_list_update[start_bot_list][7]:upper() == "STEAM" then
					accountType = "STEAM"
				end
			end
		end
		
		if true then
			if (bot_list_update[start_bot_list][2] == "-") then
				password_login = ""
			else
				password_login= bot_list_update[start_bot_list][2]
			end
			
			if (bot_list_update[start_bot_list][3] == "-") then
				steam_user, steam_password = "", ""
			else
				steam_user, steam_password = string.match(bot_list_update[start_bot_list][3], "([^:]+):([^:]+)")
			end
			
			if (bot_list_update[start_bot_list][4] == "-") then
				email_recovery = ""
			else
				email_recovery = bot_list_update[start_bot_list][4]
			end
			
			if (bot_list_update[start_bot_list][5] == "-") then
				sms_link = ""
			else
				sms_link = bot_list_update[start_bot_list][5]
			end
			
			if (bot_list_update[start_bot_list][6] == "-") then
				otp_secret = ""
			else
				otp_secret = bot_list_update[start_bot_list][6]
			end
			
			if bot_list_update[start_bot_list][7]:upper() == "WINDOWS" then
				platform = Platform.windows
			elseif bot_list_update[start_bot_list][7]:upper() == "ANDROID" then
				platform = Platform.android
			elseif bot_list_update[start_bot_list][7]:upper() == "MACOS" then
				platform = Platform.macos
			elseif bot_list_update[start_bot_list][7]:upper() == "IOS" then
				platform = Platform.ios
			elseif bot_list_update[start_bot_list][7]:upper() == "UBICONNECT" then
				platform = Platform.ubiconnect
			elseif bot_list_update[start_bot_list][7]:upper() == "STEAM" then
				platform = Platform.steam
			elseif bot_list_update[start_bot_list][7]:upper() == "APPLEID" then
				platform = Platform.apple
			end
			if (bot_list_update[start_bot_list][8] ~= "-") then
				mac_login = bot_list_update[start_bot_list][8]
			else
				mac_login = randomAccountString().mac
			end
			
			if (bot_list_update[start_bot_list][9] ~= "-") then
				rid_login = bot_list_update[start_bot_list][9]
			else
				rid_login = randomAccountString().rid
			end
		end
		
		bot_data = {
			["name"] = bot_list_update[start_bot_list][1],
			["password"] = password_login,
			["mac"] = mac_login,
			["rid"] = rid_login,
			["hash"] = randomAccountString().hash,
			["recovery"] = email_recovery,
			["sms"] = sms_link,
			["secret"] = otp_secret,
			["platform"] = platform,
			["steamlogin"] = steam_user .. "|" .. steam_password
		}
		bot:updateCustomBot(bot_data)
	end
	if bot.status ~= BotStatus.online then
		while bot.status ~= BotStatus.online do
			bot:connect()
			sleep(reconnect_delayMS)
			while ((bot.google_status == GoogleStatus.processing) or (bot.status == BotStatus.retrieving_token)) do
				sleep(1000)
			end
			maxReconnect()
			whBotInformation(
				"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
				":identification_card: **|** Account Type: " .. accountType .. " \n" ..
				"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
				"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" .. 
				"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
				"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" ..
				"<:Megaphone:1254703457236025385> **|** Bot Information: Bot trying to reconnect! (" .. reconnectCount .. "/" .. max_reconnect .. ")"
			)
		end
		reconnectCount = 0
		changingSubserver()
	end
	if bot.status == BotStatus.online then
		local startTime = true
		if startTime then
			botTime = os.time()
			botTimeShow = os.time() - botTime
			timeStartHalf()
			timeEndHalf()
		end
		whBotInformation(
			"**[ BOT INFORMATION ]** \n" ..
			"<:GT_Bot:1190695123336560781> **|** Bot Name: " .. bot.name:upper() .. " \n" ..
			":identification_card: **|** Account Type: " .. accountType .. " \n" ..
			"<:Vial:1286537713033547857> **|** Malady: " .. malady_name .. " \n" ..
			"<:Status:1190695183440945182> **|** Bot Status: " .. activeStatus() .. " [" .. bot:getPing() .. "] \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[" .. singleBotStatus() .. "]` \n" ..
			"<:Level:1190699579230916650> **|** Bot Level: " .. bot.level .. " \n" .. 
			"<:Purple_Gem:1190695162549108876> **|** Gems Amount: " .. bot.gem_count .. " \n\n" ..
			
			"**[ WORLD INFORMATION ]** \n" ..
			"<:Globe:1190695520210006036> **|** Current Farm World: `" .. rotation_world .. "` \n" ..
			"<:Right_Arrow_V2:1190695167078957056>   `[Farm World " .. numbering_rotation_world_list .. " of " .. #rotation_world_list_update .. " World]` \n" ..
			"<:Globe:1190695520210006036> **|** PNB World: `" .. pnbWorldStatus() .. "` \n" ..
			"<:Globe:1190695520210006036> **|** Seed World: `" .. seed_world .. "` \n" ..
			"<:Globe:1190695520210006036> **|** Pack World: `" .. pack_world .. "` \n\n" ..
			
			"**[ TREE INFORMATION ]** \n" ..
			"<:Laser_Grid_Tree:1190695145188884661> **|** Farmed Tree: " .. getInfoItem(block_id).name .. " \n\n" ..
					
			"**[ TIME INFORMATION ]** \n" ..
			"<:Luxurious_Wall_Clock:1190695156333150258> **|** Online Time: " .. secondON(botTimeShow),
			
			
			"**[ ITEM INFORMATION ]** \n" ..
			"<:Seed_And_Block:1190695174993608805> **|** Total Tree Dropped [In Backpack]: \n" ..
			getInfoItem(block_id).name .. ": " .. dropBlockCount .. " [" .. inventory:getItemCount(block_id) .. "] \n" ..
			getInfoItem(seed_id).name .. ": " .. dropSeedCount .. " [" .. inventory:getItemCount(seed_id) .. "] \n\n" ..
			
			":package: **|** Total Pack Dropped [In Backpack]:" ..
			dropPackCount
		)
		main()
	end
end
---- [ END CONNECT ] ----


---- [ LOGIN ] ----
function showMoveAnimation()
	if move_animation_option == "ON" then
		return true
	else
		return false
	end
end

function showPunchAnimation()
	if punch_animation_option == "ON" then
		return true
	else
		return false
	end
end

function ignoreGems()
	if ignore_gems == "ON" then
		return true
	else
		return false
	end
end

function validRun()
	if true then
		local check_bot_list_format = true
		if check_bot_list_format then
			local isNotValid = false
			bot_list_not_valid_format = {}
			for i, botListData in pairs(bot_list_update) do
				if (((not botListData[1]:find("@")) and (not botListData[1]:find("+"))) and (botListData[3]:upper() == "-") and ((botListData[7]:upper() == "WINDOWS") or (botListData[7]:upper() == "ANDROID") or (botListData[7]:upper() == "MACOS") or (botListData[7]:upper() == "IOS"))) then
					--
				elseif ((botListData[1]:find("@")) or (botListData[1]:find("+"))) then
					if (botListData[3]:upper() == "-") then
						if ((botListData[7]:upper() == "WINDOWS") or (botListData[7]:upper() == "ANDROID") or (botListData[7]:upper() == "MACOS") or (botListData[7]:upper() == "IOS") or (botListData[7]:upper() == "UBICONNECT") or (botListData[7]:upper() == "APPLEID"))then
							--
						end
					elseif (botListData[3]:upper() ~= "-") then
						if (botListData[7]:upper() == "STEAM") then
							--
						end
					end
				else
					local notValidData = tostring(botListData[1] .. "|" .. botListData[2] .. "|" .. botListData[3] .. "|" .. botListData[4] .. "|" .. botListData[5] .. "|" .. botListData[6] .. "|" .. botListData[7]:upper())
					table.insert(bot_list_not_valid_format, notValidData)
					isNotValid = true
				end
			end
			if isNotValid then
				whBotInformation(
					':exclamation: **|** Incorrect Bot Format: \n' .. table.concat(bot_list_not_valid_format, ' \n') .. ' \n\n' ..
					
					'**Bot list format is wrong! Please follow the format as below:** \n' ..
					'Base format: GrowID/Mail/Token|Password|Steam Account (Required for steam platform)|Recovery (Optional)|Sms Link (Optional)|OTP Secret (Optional)|Platform: Windows, Android, MacOS, IOS, UbiConnect, AppleID, Steam|Mac (Optional)|Rid (Optional)|AAP Option (Optional) \n' ..
					'bot_list = {"GrowID|Password|-|-|-|-|Windows|-|-|-"} -> Example login format with legacy \n' ..
					'bot_list = {"Mail|Password|-|Recovery (Optional)|-|-|Windows|-|-|-"} -> Example login format with google \n' ..
					'bot_list = {"Mail|Password|-|-|-|-|UbiConnect|-|-|-"} -> Example login format with ubi-connect \n' ..
					'bot_list = {"Mail|Password|SteamUser:SteamPassword|-|-|-|Steam|-|-|-"} -> Example login format with steam \n' ..
					'bot_list = {"Mail|Password|-|-|-|-|AppleID|-|-|-"} -> Example login format with apple id \n' ..
					'bot_list = {"Token|-|-|-|-|-|Windows|Mac|Rid|-"} -> Example login format with token \n\n' ..
					
					'Optional feature if not used fill in with "-"'
				)
				removeBotIndex(remove_bot_option, 
					'Incorrect Bot Format: \n' .. table.concat(bot_list_not_valid_format, ' \n') .. ' \n\n' ..
					
					'**Bot list format is wrong! Please follow the format as below:** \n' ..
					'Base format: GrowID/Mail/Token|Password|Steam Account (Required for steam platform)|Recovery (Optional)|Sms Link (Optional)|OTP Secret (Optional)|Platform: Windows, Android, MacOS, IOS, UbiConnect, AppleID, Steam|Mac (Optional)|Rid (Optional)|AAP Option (Optional) \n' ..
					'bot_list = {"GrowID|Password|-|-|-|-|Windows|-|-|-"} -> Example login format with legacy \n' ..
					'bot_list = {"Mail|Password|-|Recovery (Optional)|-|-|Windows|-|-|-"} -> Example login format with google \n' ..
					'bot_list = {"Mail|Password|-|-|-|-|UbiConnect|-|-|-"} -> Example login format with ubi-connect \n' ..
					'bot_list = {"Mail|Password|SteamUser:SteamPassword|-|-|-|Steam|-|-|-"} -> Example login format with steam \n' ..
					'bot_list = {"Mail|Password|-|-|-|-|AppleID|-|-|-"} -> Example login format with apple id \n' ..
					'bot_list = {"Token|-|-|-|-|-|Windows|Mac|Rid|-"} -> Example login format with token \n\n' ..
					
					'Optional feature if not used fill in with "-"'
				)
			end
		end
		
		if true then
			for i = 1, #chat_list do
				if chat_list[i] == "" then
					table.remove(chat_list, i)
				end
			end
			if #chat_list == 0 then
				chat_list = {
					"`0SCRIPT BY `6GROW KING SCRIPTS", 
					"Youtube: `3@GrowKSofficial", 
					"TikTok: `2@GrowKSofficial"
				}
			end
		end

		if true then
			reportBugsLink = "https://discord.gg/N8wusYSeWp"
			whAds(":pushpin: **|** Buy other scripts only at Grow King Scripts. \nReport bugs [click here!](<" .. reportBugsLink .. ">)")
			bot:getLog():append("............................................................... \n[GROW KING SCRIPTS] Script Started! \n\nBuy other scripts only at Grow King Scripts. \nReport bugs here: " .. reportBugsLink .. " \n...............................................................")
			sleep(10)
			connectBot()
		end
	end
end

bot.auto_tutorial.enabled = false
bot.auto_trash = false
bot.move_range = move_range
bot.legit_mode = showPunchAnimation()
bot.ignore_gems = ignoreGems()
validRun()
---- [ END LOGIN ] ----
]]

for _, indexData in ipairs(indexUnrunningScript) do
	bypassLogon(getBots()[indexData])
	
	getBots()[indexData]:runScript(scriptConfig1)
	sleep(200)
	getBots()[indexData]:runScript(scriptConfig2)
	sleep(200)
	getBots()[indexData]:runScript(script)
	if start_script_delay_option == "ON" and getBots()[indexData].status ~= BotStatus.online then
		sleep(start_script_delayMS)
	else
		sleep(500)
	end
end