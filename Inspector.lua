ADDON_VERSION = GetAddOnMetadata("Inspector", "Version");

AddonVersion = ADDON_VERSION;

if string.find(GetBuildInfo(), "^2%.") then

ClassColor = {
	["DRUID"] = "|cffff7d0a",
	["WARRIOR"] = "|cffc79c6e",
	["SHAMAN"] = "|cff0070de",
	["PRIEST"] = "|cffffffff",
	["MAGE"] = "|cff69ccf0",
	["ROGUE"] = "|cfffff569",
	["WARLOCK"] = "|cff9482ca",
	["HUNTER"] = "|cffabd473",
	["PALADIN"] = "|cfff58cba",
	["PET"] = "|cff00ff00",
};

ClassToIndex = {
	["DRUID"] = 1,
	["WARRIOR"] = 2,
	["SHAMAN"] = 3,
	["PRIEST"] = 4,
	["MAGE"] = 5,
	["ROGUE"] = 6,
	["WARLOCK"] = 7,
	["HUNTER"] = 8,
	["PALADIN"] = 9,

	["Druid"] = 1,
	["Warrior"] = 2,
	["Shaman"] = 3,
	["Priest"] = 4,
	["Mage"] = 5,
	["Rogue"] = 6,
	["Warlock"] = 7,
	["Hunter"] = 8,
	["Paladin"] = 9,
};

RaceToIndex = {
	["Orc"] = 1,
	["Undead"] = 2,
	["Scourge"] = 2,
	["Tauren"] = 3,
	["Troll"] = 4,
	["Human"] = 5,
	["Dwarf"] = 6,
	["Gnome"] = 7,
	["NightElf"] = 8,
	["Nightelf"] = 8,
	["Night Elf"] = 8,
	["Night elf"] = 8,
	["BloodElf"] = 9,
	["Bloodelf"] = 9,
	["Blood Elf"] = 9,
	["Blood elf"] = 9,
	["Draenei"] = 10,
};

ZoneToIndex = {
	["Ahn'Qiraj"] = 1,
	["Alterac Mountains"] = 2,
	["Alterac Valley"] = 3,
	["Arathi Basin"] = 4,
	["Arathi Highlands"] = 5,
	["Ashenvale"] = 6,
	["Auberdine"] = 7,
	["Azshara"] = 8,
	["Badlands"] = 9,
	["The Barrens"] = 10,
	["Blackfathom Deeps"] = 11,
	["Blackrock Depths"] = 12,
	["Blackrock Mountain"] = 13,
	["Blackrock Spire"] = 14,
	["Lower Blackrock Spire"] = 15,
	["Upper Blackrock Spire"] = 16,
	["Blackwing Lair"] = 17,
	["Blasted Lands"] = 18,
	["Booty Bay"] = 19,
	["Burning Steppes"] = 20,
	["Darkshore"] = 21,
	["Darnassus"] = 22,
	["The Deadmines"] = 23,
	["Deadwind Pass"] = 24,
	["Deeprun Tram"] = 25,
	["Desolace"] = 26,
	["Dire Maul"] = 27,
	["Dire Maul (East)"] = 28,
	["Dire Maul (West)"] = 29,
	["Dire Maul (North)"] = 30,
	["Dun Morogh"] = 31,
	["Durotar"] = 32,
	["Duskwood"] = 33,
	["Dustwallow Marsh"] = 34,
	["Eastern Plaguelands"] = 35,
	["Elwynn Forest"] = 36,
	["Everlook"] = 37,
	["Felwood"] = 38,
	["Feralas"] = 39,
	["The Forbidding Sea"] = 40,
	["Gadgetzan"] = 41,
	["Gates of Ahn'Qiraj"] = 42,
	["Gnomeregan"] = 43,
	["The Great Sea"] = 44,
	["Grom'gol Base Camp"] = 45,
	["Hall of Legends"] = 46,
	["Hillsbrad Foothills"] = 47,
	["The Hinterlands"] = 48,
	["Hyjal"] = 49,
	["Ironforge"] = 50,
	["Loch Modan"] = 51,
	["Maraudon"] = 52,
	["Menethil Harbor"] = 53,
	["Molten Core"] = 54,
	["Moonglade"] = 55,
	["Mulgore"] = 56,
	["Naxxramas"] = 57,
	["Onyxia's Lair"] = 58,
	["Orgrimmar"] = 59,
	["Ratchet"] = 60,
	["Ragefire Chasm"] = 61,
	["Razorfen Downs"] = 62,
	["Razorfen Kraul"] = 63,
	["Redridge Mountains"] = 64,
	["Ruins of Ahn'Qiraj"] = 65,
	["Scarlet Monastery"] = 66,
	["Scholomance"] = 67,
	["Searing Gorge"] = 68,
	["Shadowfang Keep"] = 69,
	["Silithus"] = 70,
	["Silverpine Forest"] = 71,
	["The Stockade"] = 72,
	["Stonetalon Mountains"] = 73,
	["Stormwind City"] = 74,
	["Stranglethorn Vale"] = 75,
	["Stratholme"] = 76,
	["Swamp of Sorrows"] = 77,
	["Tanaris"] = 78,
	["Teldrassil"] = 79,
	["Temple of Ahn'Qiraj"] = 80,
	["The Temple of Atal'Hakkar"] = 81,
	["Theramore Isle"] = 82,
	["Thousand Needles"] = 83,
	["Thunder Bluff"] = 84,
	["Tirisfal Glades"] = 85,
	["Uldaman"] = 86,
	["Un'Goro Crater"] = 87,
	["Undercity"] = 88,
	["Wailing Caverns"] = 89,
	["Warsong Gulch"] = 90,
	["Western Plaguelands"] = 91,
	["Westfall"] = 92,
	["Wetlands"] = 93,
	["Winterspring"] = 94,
	["Zul'Farrak"] = 95,
	["Zul'Gurub"] = 96,

	--TBC Instance Zones
	["Plaguewood"] = 97,
	["Hellfire Citadel"] = 98,
	["Auchindoun"] = 99,
	["The Bone Wastes"] = 100, -- Substitute for Auchindoun, since this is what shows on the minimap.
	["Coilfang Reservoir"] = 101, -- Not used yet.

	--TBC Zones
	["Azuremyst Isle"] = 102,
	["Bloodmyst Isle"] = 103,
	["Eversong Woods"] = 104,
	["Ghostlands"] = 105,
	["The Exodar"] = 106,
	["Silvermoon City"] = 107,
	["Shadowmoon Valley"] = 108,
	["Black Temple"] = 109,
	["Terokkar Forest"] = 110,
	["Auchenai Crypts"] = 111,
	["Mana-Tombs"] = 112,
	["Shadow Labyrinth"] = 113,
	["Sethekk Halls"] = 114,
	["Hellfire Peninsula"] = 115,
	["The Dark Portal"] = 116,
	["Hellfire Ramparts"] = 117,
	["The Blood Furnace"] = 118,
	["The Shattered Halls"] = 119,
	["Magtheridon's Lair"] = 120,
	["Nagrand"] = 121,
	["Zangarmarsh"] = 122,
	["The Slave Pens"] = 123,
	["The Underbog"] = 124,
	["The Steamvault"] = 125,
	["Serpentshrine Cavern"] = 126,
	["Blade's Edge Mountains"] = 127,
	["Gruul's Lair"] = 128,
	["Netherstorm"] = 129,
	["Tempest Keep"] = 130,
	["The Mechanar"] = 131,
	["The Botanica"] = 132,
	["The Arcatraz"] = 133,
	["Eye of the Storm"] = 134,
	["Shattrath City"] = 135,
	["Karazhan"] = 136,
	["Caverns of Time"] = 137,
	["Zul'Aman"] = 138,
};

InventorySlots = {
	["Head"] = 1,
	["Neck"] = 2,
	["Shoulder"] = 3,
	["Shirt"] = 4,
	["Chest"] = 5,
	["Belt"] = 6,
	["Legs"] = 7,
	["Feet"] = 8,
	["Wrist"] = 9,
	["Gloves"] = 10,
	["Finger1"] = 11,
	["Finger2"] = 12,
	["Trinket1"] = 13,
	["Trinket2"] = 14,
	["Back"] = 15,
	["MainHand"] = 16,
	["OffHand"] = 17,
	["Ranged"] = 18,
	["Tabard"] = 19,
}

function GetTime_S()
	local currTime = GetTime();
	local currTime_S = math.floor(currTime);
	return currTime_S;
end

function RealmPlayers_Debug(_Text)
	if(Inspector_Settings["DebugMode"] == true) then
		DEFAULT_CHAT_FRAME:AddMessage(_Text);
	end
end

function Inspector_OnLoad()
	this:RegisterEvent("PLAYER_TARGET_CHANGED");
	this:RegisterEvent("INSPECT_HONOR_UPDATE");
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("WHO_LIST_UPDATE");
	this:RegisterEvent("GUILD_ROSTER_UPDATE");
	this:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
	SlashCmdList["INSPECTOR"] = RealmPlayers_Command;
	SLASH_INSPECTOR1 = "/INSPECTOR";
	CreateGameToolTip();
end

function GetActiveOnlineData(_CurrOnlineDataTime, _CurrentDate)
	if(InspectorData["OnlineData"] == nil) then
		InspectorData["OnlineData"] = {};
	end
	local onlineData = InspectorData["OnlineData"];

	if(RealmPlayers_CurrentOnlineData == nil) then
		RealmPlayers_CurrentOnlineData = {};
		RealmPlayers_CurrentOnlineData["OnlineCharacters"] = {};
		RealmPlayers_CurrentOnlineData["OnlineDataString"] = "";
		RealmPlayers_CurrentOnlineData["OnlineDataTime"] = _CurrOnlineDataTime;
		RealmPlayers_CurrentOnlineData["OnlineDataStartDateTime"] = _CurrentDate;
		table.insert(onlineData, 1, "");
	end
	local onlineDataTime = RealmPlayers_CurrentOnlineData["OnlineDataTime"];
	local charsRecorded = table.getn(RealmPlayers_CurrentOnlineData["OnlineCharacters"]);
	if(_CurrOnlineDataTime - onlineDataTime > 60 or charsRecorded > 100) then
		RealmPlayers_CurrentOnlineData["OnlineCharacters"] = {};
		RealmPlayers_CurrentOnlineData["OnlineDataString"] = "";
		RealmPlayers_CurrentOnlineData["OnlineDataTime"] = _CurrOnlineDataTime;
		RealmPlayers_CurrentOnlineData["OnlineDataStartDateTime"] = _CurrentDate;
		table.insert(onlineData, 1, "");
	end
	return onlineData, RealmPlayers_CurrentOnlineData["OnlineCharacters"], RealmPlayers_CurrentOnlineData["OnlineDataString"];
end

function Inspector_OnEvent()
	if(event == "VARIABLES_LOADED") then
		AddonVersion = ADDON_VERSION;
		if(Inspector_Settings == nil) then
			Inspector_Settings = {};
		end
		if(Inspector_Settings["MaxDatabase"] == nil) then
			Inspector_Settings["MaxDatabase"] = 1000;
		end
		if(InspectorData == nil) then
			InspectorData = {};
		end
		RealmPlayers_Playername = UnitName("player");
		DEFAULT_CHAT_FRAME:AddMessage("Inspector (/inspector) version "..AddonVersion.." loaded!");
	elseif(event == "PLAYER_TARGET_CHANGED") then
		if(TemporarySupressTargetChange == nil) then
			PlayerChosenTarget = true;
			StartInspectingTarget();
		end
		TemporarySupressTargetChange = nil;
		local targetName = UnitName("target");
		if(targetName == nil) then targetName = "nil"; end
	elseif(event == "INSPECT_HONOR_UPDATE") then
		Inspect_Honor_Update = true;
	elseif(event == "WHO_LIST_UPDATE") then
		local currOnlineDataTime = GetTime_S();
		local currentDate = date("!%Y-%m-%d %X");
		local onlineData, onlineCharacters, onlineDataString = GetActiveOnlineData(currOnlineDataTime, currentDate);

		local numWhoResults = GetNumWhoResults();
		for i = 1, numWhoResults, 1 do
			local name, guild, level, race, class, zone, group = GetWhoInfo(i);
			if(guild == nil) then
				guild = "";
			end
			if(onlineCharacters[name] == nil) then
				onlineCharacters[name] = 1;

				if(RaceToIndex[race] ~= nil) then
					race = RaceToIndex[race];
				end
				if(ClassToIndex[class] ~= nil) then
					class = ClassToIndex[class];
				end
				if(ZoneToIndex[zone] ~= nil) then
					zone = ZoneToIndex[zone];
				end
				onlineDataString = onlineDataString .. name .. ":" .. race .. ":" .. class .. ":" .. guild .. ":" .. level .. ":" .. zone .. ",";
			end
		end
		RealmPlayers_CurrentOnlineData["OnlineDataString"] = onlineDataString;

		onlineData[1] = "" .. currOnlineDataTime .. ";" .. RealmPlayers_CurrentOnlineData["OnlineDataStartDateTime"] .. ";" .. currentDate .. ";" .. onlineDataString;

	elseif(event == "GUILD_ROSTER_UPDATE") then
		local prevShowOffline = GetGuildRosterShowOffline();
		SetGuildRosterShowOffline(1);

		local guildOnlineCount = 0;
		local guild, guildRank, guildRankIndex = GetGuildInfo("player");
		if(guild ~= nil) then
			local numGuildMembers = GetNumGuildMembers();

			local currOnlineDataTime = GetTime_S();
			local currentDate = date("!%Y-%m-%d %X");
			local onlineData, onlineCharacters, onlineDataString = GetActiveOnlineData(currOnlineDataTime, currentDate);

			for index = 1, numGuildMembers, 1 do
				local name, rank, rankIndex, level, class, zone, _, _, online, status = GetGuildRosterInfo(index);
				if(online == 1) then
					guildOnlineCount = guildOnlineCount + 1;
					if(onlineCharacters[name] == nil) then
						onlineCharacters[name] = 1;

						if(RaceToIndex[race] ~= nil) then
							race = RaceToIndex[race];
						end
						if(ClassToIndex[class] ~= nil) then
							class = ClassToIndex[class];
						end
						if(ZoneToIndex[zone] ~= nil) then
							zone = ZoneToIndex[zone];
						end
						onlineDataString = onlineDataString .. name .. ":" .. race .. ":" .. class .. ":" .. guild .. ":" .. level .. ":" .. zone .. ",";
					end
				end
			end
			RealmPlayers_CurrentOnlineData["OnlineDataString"] = onlineDataString;

			onlineData[1] = "" .. currOnlineDataTime .. ";" .. GetScribbledRealmName() .. ";" .. RealmPlayers_CurrentOnlineData["OnlineDataStartDateTime"] .. ";" .. currentDate .. ";" .. onlineDataString;
		end
		SetGuildRosterShowOffline(prevShowOffline);

	elseif(event == "UPDATE_MOUSEOVER_UNIT") then
		if(UnitExists("mouseover")) and (UnitIsPlayer("mouseover")) then
			local name = UnitName("mouseover");
			local class = UnitClass("mouseover");
			local race, raceEN = UnitRace("mouseover");
			local level = UnitLevel("mouseover");
			local guild, guildRank, guildRankIndex = GetGuildInfo("mouseover");
			if(guild == nil) then
				guild = "";
			end
			local zone = GetRealZoneText();
			if(name ~= nil and class ~= nil and raceEN ~= nil and level ~= nil and guild ~= nil and zone ~= nil) then
				local currOnlineDataTime = GetTime_S();
				local currentDate = date("!%Y-%m-%d %X");
				local onlineData, onlineCharacters, onlineDataString = GetActiveOnlineData(currOnlineDataTime, currentDate);
				if(onlineCharacters[name] == nil) then
					onlineCharacters[name] = 1;

					if(RaceToIndex[raceEN] ~= nil) then
						raceEN = RaceToIndex[raceEN];
					end
					if(ClassToIndex[class] ~= nil) then
						class = ClassToIndex[class];
					end
					if(ZoneToIndex[zone] ~= nil) then
						zone = ZoneToIndex[zone];
					end
					onlineDataString = onlineDataString .. name .. ":" .. race .. ":" .. class .. ":" .. guild .. ":" .. level .. ":" .. zone .. ",";
					RealmPlayers_CurrentOnlineData["OnlineDataString"] = onlineDataString;
					onlineData[1] = "" .. currOnlineDataTime .. ";" .. GetScribbledRealmName() .. ";" .. RealmPlayers_CurrentOnlineData["OnlineDataStartDateTime"] .. ";" .. currentDate .. ";" .. onlineDataString;

					--RealmPlayers_Debug("" .. GetTime_S() .. name .. ":" .. ":" .. raceEN .. ":" .. class .. ":" .. guild .. ":" .. level .. ":" .. zone .. ",");
				end
			end
		end
	end
end

function RealmPlayers_Command(arg1)
	if(string.lower(arg1) == "toggledebug") then
		if(Inspector_Settings["DebugMode"] == true) then
			Inspector_Settings["DebugMode"] = false;
		else
			Inspector_Settings["DebugMode"] = true;
		end
	elseif(string.lower(arg1) == "printinspected") then
		local playerList = "";
		local playerCount = 0;
		for i, v in pairs(InspectorData) do
			playerList = playerList..i..", ";
			playerCount = playerCount + 1;
		end
		DEFAULT_CHAT_FRAME:AddMessage("Players inspected("..playerCount.."): "..playerList);
	elseif(string.lower(arg1) == "printrecentlyinspected") then
		local currTime = GetTime();
		local playerList = "";
		local playerCount = 0;
		for i, v in pairs(InspectorData) do
			if(currTime - v.LastInspect < 120) then
				playerList = playerList..i..", ";
				playerCount = playerCount + 1;
			end
		end
		DEFAULT_CHAT_FRAME:AddMessage("Players recently inspected("..playerCount.."): "..playerList);
	elseif(string.lower(arg1) == "help") then
		Help();
	else
		Help();
	end
end

function Help()
	DEFAULT_CHAT_FRAME:AddMessage("CDM Inspector Version = "..AddonVersion);
	DEFAULT_CHAT_FRAME:AddMessage("/inspector ToggleDebug - Toggles Debug/Inspect Output");
	DEFAULT_CHAT_FRAME:AddMessage("/inspector PrintInspected - Prints the inspected players so far");
	DEFAULT_CHAT_FRAME:AddMessage("/inspector PrintRecentlyInspected - Prints the recently inspected players(within last 2 minutes)");
	DEFAULT_CHAT_FRAME:AddMessage("/inspector Help - shows all commands");
end

function GetScribbledRealmName()
	local realmName = GetRealmName();
	return string.sub(realmName, 1, 1).."#"..string.sub(realmName, 2); --Scribble realmName to avoid search-and-replace misstakes people do when changing realm and maintaining addon settings...
end

local RecentlyInspected = {};
local RecentlyInspectedTime = 0;
local CurrentlyInspecting = nil;
local CurrentlyInspectingStage = 0;
PlayerChosenTarget = true;
TemporarySupressTargetChange = nil;
function StartInspectingTarget()
	if (UnitIsPlayer("target") and CanInspect("target")) then
		CurrentlyInspecting = UnitName("target");
		CurrentlyInspectingStage = 0;
	else
		local petInfo = GetPetInfo("target");
		if(petInfo ~= nil) then
			if(InspectorData[petInfo.Owner] ~= nil) then
				local petData = "";
				local petColor = "";
				if(petInfo.Type == "Companion") then
					petData = "C:"..petInfo.Name..":"..petInfo.Level;
					petColor = "|cff00ffff";
				elseif(petInfo.Type == "Pet") then
					petData = "P:"..petInfo.Name..":"..petInfo.Level;
					petColor = ClassColor["PET"];
					local creatureFamily = UnitCreatureFamily("target");
					local creatureType = UnitCreatureType("target")
					if(creatureFamily ~= nil) then
						petData = petData..":"..creatureFamily;
					end
					if(creatureType ~= nil) then
						petData = petData..":"..creatureType;
					end
				end

				--extraData
				if(petData ~= "") then
					if(InspectorData[petInfo.Owner].ExtraData == nil) then
						InspectorData[petInfo.Owner].ExtraData = petData;
						table.insert(RecentlyInspected, petColor..petInfo.Name);
					else
						if(string.find(InspectorData[petInfo.Owner].ExtraData, petData) == nil) then
							if(petInfo.Type == "Companion") then
								if(string.find(InspectorData[petInfo.Owner].ExtraData, "P:"..petInfo.Name..":"..petInfo.Level) == nil) then
									InspectorData[petInfo.Owner].ExtraData = InspectorData[petInfo.Owner].ExtraData..","..petData;
									table.insert(RecentlyInspected, petColor..petInfo.Name);
								end
							else
								InspectorData[petInfo.Owner].ExtraData = InspectorData[petInfo.Owner].ExtraData..","..petData;
								table.insert(RecentlyInspected, petColor..petInfo.Name);
							end
						end
					end
				end
				--extraData
			end
		end
	end
end

function StartAutomaticInspect()
	AutomaticInspection = true;
end

function StopAutomaticInspect()
	AutomaticInspection = nil;
end

function InspectSome(maintainTarget)
	if(maintainTarget == true) then
		if(PlayerChosenTarget == true) then
			PlayerChosenTarget = nil;
			TemporarySupressTargetChange = true;
			TargetNearestFriend();
		end
	else
		TargetNearestFriend();
	end
end


function CreateGameToolTip()
	GameToolTip = CreateFrame("GameTooltip")

	GameToolTip:SetOwner(WorldFrame, "ANCHOR_NONE")

	GameToolTip.Llines = {}
	GameToolTip.Rlines = {}
	for i=1,30 do
		GameToolTip.Llines[i] = GameToolTip:CreateFontString("$parentTextLeft"..i, nil, "GameTooltipText")
		GameToolTip.Rlines[i] = GameToolTip:CreateFontString("$parentTextRight"..i, nil, "GameTooltipText")
		GameToolTip:AddFontStrings(GameToolTip.Llines[i], GameToolTip.Rlines[i])
	end
end

function GetToolTipText()
	local leftText = {};
	local rightText = {};
	local textLines = GameToolTip:NumLines()
	for i=1, textLines do
		if GameToolTip.Llines[i] then
			if(GameToolTip.Llines[i]:GetText() ~= nil) then
				table.insert(leftText, GameToolTip.Llines[i]:GetText());
			end
			if(GameToolTip.Rlines[i]:GetText() ~= nil) then
				table.insert(rightText, GameToolTip.Rlines[i]:GetText());
			end
		end
	end

	return leftText, rightText;
end
function GetBuffText(_UnitID, _BuffID)
	if(GameToolTip == nil) then
		CreateGameToolTip();
	end
	GameToolTip:SetUnitBuff(_UnitID, _BuffID);

	return GetToolTipText();
end

function DeleteGameToolTip()
	GameToolTip:ClearLines()
	for i=1,30 do
		GameToolTip.Rlines[i]:SetText()
	end
	if not GameToolTip:IsOwned(tt) then
		GameToolTip:SetOwner(tt, "ANCHOR_NONE")
	end
end

function GetMount(_UnitID)
	for i = 1, 16 do
		local currBuff = UnitBuff(_UnitID, i);
		if(currBuff) then
			leftText, rightText = GetBuffText(_UnitID, i);
			if(table.getn(leftText) >= 2) then
				if(leftText[2] == "Increases speed by 100%."
				or leftText[2] == "Increases speed by 60%."
				or leftText[2] == "Increases flight speed by 280%."
				or leftText[2] == "Increases flight speed by 310%."
				or leftText[2] == "Slow and steady..." --Turtle mount
				) then
					return leftText[1];
				end
			end
		end
	end
	return "";
end

function GetPetInfo(_UnitID)
	if(GameToolTip == nil) then
		CreateGameToolTip();
	end
	GameToolTip:SetUnit(_UnitID);
	local data = GetToolTipText();

	if(table.getn(data) >= 3) then
		local petIdentifierIndex = string.find(data[2], "'s Pet");
		if(petIdentifierIndex == nil) then
			petIdentifierIndex = string.find(data[2], "'s Minion");
		end
		if(petIdentifierIndex == nil) then
			petIdentifierIndex = string.find(data[2], "'s Companion");
		end
		if(petIdentifierIndex) then
			local petLevel = tonumber(string.sub(data[3], 7));
			if(petLevel == nil) then
				return nil;
			end
			if(UnitCreatureFamily(_UnitID) == nil and UnitStat(_UnitID, 3) == 0) then
				--Companion
				return {Name = data[1], Owner = string.sub(data[2], 1, petIdentifierIndex - 1), Level = petLevel, Type = "Companion"};
			else
				--Pet
				return {Name = data[1], Owner = string.sub(data[2], 1, petIdentifierIndex - 1), Level = petLevel, Type = "Pet"};
			end
		end
	end
	return nil;
end

function GrabPlayerInspectData()

	--honor etc
	UpdateCharacterHonorData("player");
	--honor etc

	--arena etc
	UpdateCharacterArenaData("player");
	--arena etc

	--playerData
	UpdateCharacterInfoData("player");
	--playerData

	--extraData
	UpdateCharacterExtraData("player");
	--extraData

	--items
	UpdateCharacterItemsData("player");
	--items
end

function UpdateCharacterHonorData(_Target)
	local characterName = UnitName(_Target);

	local todayHK, todayHonor, yesterdayHK, yesterdayHonor, lifetimeHK;
	if(_Target == "player") then
		yesterdayHK, yesterdayHonor = GetPVPYesterdayStats();
		lifetimeHK = GetPVPLifetimeStats();
		todayHK, todayHonor = GetPVPSessionStats();
	else--if(_Target == "target")
		todayHK, todayHonor, yesterdayHK, yesterdayHonor, lifetimeHK = GetInspectHonorData();
	end
	InspectorData[characterName].HonorData = ""..todayHK..":"..todayHonor..":"..yesterdayHK..":"..yesterdayHonor..":"..lifetimeHK;
end

function UpdateCharacterArenaData(_Target)
	local characterName = UnitName(_Target);

	local teamName1, teamSize1, teamRating1, teamPlayed1, teamWins1, personalPlayed1, personalRating1, bg_red1, bg_green1, bg_blue1, emblem1, emblem_red1, emblem_green1, emblem_blue1, border1, border_red1, border_green1, border_blue1;
	local teamName2, teamSize2, teamRating2, teamPlayed2, teamWins2, personalPlayed2, personalRating2, bg_red2, bg_green2, bg_blue2, emblem2, emblem_red2, emblem_green2, emblem_blue2, border2, border_red2, border_green2, border_blue2;
	local teamName3, teamSize3, teamRating3, teamPlayed3, teamWins3, personalPlayed3, personalRating3, bg_red3, bg_green3, bg_blue3, emblem3, emblem_red3, emblem_green3, emblem_blue3, border3, border_red3, border_green3, border_blue3;
	if(_Target == "player") then
		local seasonTeamPlayed1, seasonTeamWins1, seasonPlayerPlayed1, teamRank1;
		local seasonTeamPlayed2, seasonTeamWins2, seasonPlayerPlayed2, teamRank2;
		local seasonTeamPlayed3, seasonTeamWins3, seasonPlayerPlayed3, teamRank3;

		teamName1, teamSize1, teamRating1, teamPlayed1, teamWins1, seasonTeamPlayed1, seasonTeamWins1, personalPlayed1, seasonPlayerPlayed1, teamRank1, personalRating1, bg_red1, bg_green1, bg_blue1, emblem1, emblem_red1, emblem_green1, emblem_blue1, border1, border_red1, border_green1, border_blue1 = GetArenaTeam(1);
		teamName2, teamSize2, teamRating2, teamPlayed2, teamWins2, seasonTeamPlayed2, seasonTeamWins2, personalPlayed2, seasonPlayerPlayed2, teamRank2, personalRating2, bg_red2, bg_green2, bg_blue2, emblem2, emblem_red2, emblem_green2, emblem_blue2, border2, border_red2, border_green2, border_blue2 = GetArenaTeam(2);
		teamName3, teamSize3, teamRating3, teamPlayed3, teamWins3, seasonTeamPlayed3, seasonTeamWins3, personalPlayed3, seasonPlayerPlayed3, teamRank3, personalRating3, bg_red3, bg_green3, bg_blue3, emblem3, emblem_red3, emblem_green3, emblem_blue3, border3, border_red3, border_green3, border_blue3 = GetArenaTeam(3);
	else--if(_Target == "target")
		teamName1, teamSize1, teamRating1, teamPlayed1, teamWins1, personalPlayed1, personalRating1, bg_red1, bg_green1, bg_blue1, emblem1, emblem_red1, emblem_green1, emblem_blue1, border1, border_red1, border_green1, border_blue1 = GetInspectArenaTeamData(1)
		teamName2, teamSize2, teamRating2, teamPlayed2, teamWins2, personalPlayed2, personalRating2, bg_red2, bg_green2, bg_blue2, emblem2, emblem_red2, emblem_green2, emblem_blue2, border2, border_red2, border_green2, border_blue2 = GetInspectArenaTeamData(2)
		teamName3, teamSize3, teamRating3, teamPlayed3, teamWins3, personalPlayed3, personalRating3, bg_red3, bg_green3, bg_blue3, emblem3, emblem_red3, emblem_green3, emblem_blue3, border3, border_red3, border_green3, border_blue3 = GetInspectArenaTeamData(3)
	end

	local arenaStr = "";
	if(teamName1 ~= nil) then
		arenaStr = arenaStr..teamName1..":"..teamSize1..":"..teamRating1..":"..teamPlayed1..":"..teamWins1..":"..personalPlayed1..":"..personalRating1..",";
	end
	if(teamName2 ~= nil) then
		arenaStr = arenaStr..teamName2..":"..teamSize2..":"..teamRating2..":"..teamPlayed2..":"..teamWins2..":"..personalPlayed2..":"..personalRating2..",";
	end
	if(teamName3 ~= nil) then
		arenaStr = arenaStr..teamName3..":"..teamSize3..":"..teamRating3..":"..teamPlayed3..":"..teamWins3..":"..personalPlayed3..":"..personalRating3..",";
	end
	if(arenaStr ~= "") then
		InspectorData[characterName].ArenaData = arenaStr;
	end
end

function UpdateCharacterExtraData(_Target)
	local characterName = UnitName(_Target);
	local mount = GetMount(_Target);
	if(mount ~= "") then
		local mountData = "M:"..mount;
		if(InspectorData[characterName].ExtraData == nil) then
			InspectorData[characterName].ExtraData = mountData;
		else
			if(string.find(InspectorData[characterName].ExtraData, mountData) == nil) then
				InspectorData[characterName].ExtraData = InspectorData[characterName].ExtraData..","..mountData;
			end
		end
	end
end

function UpdateCharacterInfoData(_Target)
	local characterName = UnitName(_Target);
	local _, race = UnitRace(_Target);
	local _, class = UnitClass(_Target);
	local sex = UnitSex(_Target);
	local level = UnitLevel(_Target);
	local guildname, guildtitle, guildrank = GetGuildInfo(_Target);
	local realmName = GetScribbledRealmName();
	if(guildname == nil) then guildname = "nil"; end
	if(guildtitle == nil) then guildtitle = "nil"; end
	if(guildrank == nil) then guildrank = 0; end
	InspectorData[characterName].PlayerData = race..":"..class..":"..guildname..":"..guildtitle..":"..guildrank..":"..sex..":"..level..":"..realmName;
end

function UpdateCharacterItemsData(_Target)
	local characterName = UnitName(_Target);

	local allItems = "";
	local allItemsList = {};
	for slotName, slotID in pairs(InventorySlots) do
		local slotItem = GetInventoryItemLink(_Target, slotID);
		if(slotItem ~= nil) then
			local _, _, rubbish1, item, rubbish2 = string.find(slotItem, "(.*)|Hitem:(.*)|h%[(.*)");
			slotItem = item;
			allItems = allItems..slotID..":"..slotItem..",";
			table.insert(allItemsList, slotID..":"..slotItem..",");--Adding the extra comma for easier algorithm later
		end
	end

	if(InspectorData[characterName].ItemsData ~= nil) then
		--if there allready exists ItemsData, lets add only new interesting data
		local startIndex, endIndex = string.find(InspectorData[characterName].ItemsData, allItems);
		if(startIndex == 1) then
			--Data allready exists in here, we are done
		elseif(startIndex ~= nil) then
			--Data allready exists in here, but not infront of everything else.
			local newItemsData = allItems..string.gsub(InspectorData[characterName].ItemsData, allItems, "");
			InspectorData[characterName].ItemsData = newItemsData;
		else
			--Data doesnt exist in here, lets add it infront of everything else
			local oldItems = InspectorData[characterName].ItemsData;
			for i, v in pairs(allItemsList) do
				oldItems = string.gsub(oldItems, v, "");--Extra comma added earlier makes this easy
			end
			InspectorData[characterName].ItemsData = allItems..oldItems;
		end
	else
		InspectorData[characterName].ItemsData = allItems;
	end
end

function UpdateCharacterTalentsData(_Target)
	local characterName = UnitName(_Target);
	local talentData = "";

	function _GetTalentPageData(_PageIndex, _IsPlayer)
		local talentData = "";
		local numTalents = GetNumTalents(_PageIndex, _IsPlayer ~= true);
		for i=1, numTalents do
			local name, iconTexture, tier, column, rank, maxRank, isExceptional, meetsPrereq = GetTalentInfo(_PageIndex, i, _IsPlayer ~= true);
			talentData = talentData..rank;
		end
		return talentData;
	end

	if(_Target == "player") then
		--local tabName, tabTexture, tabPoints, tabFileName = GetTalentTabInfo(currInspectTab, false);
		talentData = talentData.._GetTalentPageData(1, true);
		talentData = talentData.._GetTalentPageData(2, true);
		talentData = talentData.._GetTalentPageData(3, true);
	else
		talentData = talentData.._GetTalentPageData(1, false);
		talentData = talentData.._GetTalentPageData(2, false);
		talentData = talentData.._GetTalentPageData(3, false);
	end

	InspectorData[characterName].TalentsData = talentData;
end

function UpdateCharacterMetaData(_Target)
	local characterName = UnitName(_Target);
	local _, characterClass = UnitClass(_Target);
	local currTime = GetTime();

	InspectorData[characterName].LastInspect = currTime;
	local currentDate = date("!%Y-%m-%d %X");
	if(InspectorData[characterName].DateTimeUTC == nil or string.sub(currentDate, 1, -5) ~= string.sub(InspectorData[characterName].DateTimeUTC, 1, -5)) then
		RecentlyInspectedTime = currTime;
		table.insert(RecentlyInspected, ClassColor[characterClass]..characterName);
	end
	InspectorData[characterName].DateTimeUTC = currentDate;
end

function InspectDone(success)
	CurrentlyInspecting = nil;
	CurrentlyInspectingStage = 0;
	if(PlayerChosenTarget == nil) then
		TargetLastTarget();
	end
	if(AutomaticInspection == true) then
		DEFAULT_CHAT_FRAME:AddMessage("Trying to change target");
		TargetNearestFriend();
		NextInspectTryTime = GetTime() + 1;
	end
end

RealmPlayers_HasBeenWarnedOnce = false;
RealmPlayers_Playername = "Unknown";
Inspector_Settings = {["DebugMode"] = true,["MaxDatabase"] = 1000};
InspectorData = {};
local NextInspectTryTime = 0;
local AutomaticInspection = nil;
function Inspector_OnUpdate()
	local currTime = GetTime();
	if(CurrentlyInspecting ~= nil) then
		local affectingCombat = UnitAffectingCombat("player");
		local inspectionFrequency = 5;
		if(affectingCombat == true) then
			inspectionFrequency = 240;
		end
		if(InspectorData[CurrentlyInspecting] == nil or currTime - InspectorData[CurrentlyInspecting].LastInspect > inspectionFrequency or currTime < InspectorData[CurrentlyInspecting].LastInspect or Inspect_Honor_Update == true) then --3600) then
			if(UnitName("target") ~= CurrentlyInspecting) then
				InspectDone();
				return;
			end
			if(CurrentlyInspectingStage == 0) then
				if(UnitName("target") == UnitName("player")) then
					CurrentlyInspectingStage = 2;
				elseif(CheckInteractDistance("target", 1)) then
					if (CanInspect("target") ) then
						NotifyInspect("target");
						CurrentlyInspectingStage = 1;
					end
				end
			end
			if(CurrentlyInspectingStage < 1) then
				InspectDone();
				return;
			end
			if(CurrentlyInspectingStage == 1) then
				if ( not HasInspectHonorData() ) then
					GetInspectArenaTeamData(1);
					GetInspectArenaTeamData(2);
					GetInspectArenaTeamData(3);
					RequestInspectHonorData();
				else--if(HasInspectHonorData()) then
					CurrentlyInspectingStage = 2;
				end
			end
			if(CurrentlyInspectingStage == 2) then
				if(InspectorData[CurrentlyInspecting] == nil) then
					if(Inspector_Settings["MaxDatabase"] < table.getn(InspectorData)) then
						if(RealmPlayers_HasBeenWarnedOnce == false) then
							DEFAULT_CHAT_FRAME:AddMessage("Inspector database now has "..table.getn(InspectorData).." players, this is more than specified in the settings, addon will not collect anymore data unless setting \"MaxDatabase\" is set to a higher value or database is uploaded/cleaned");
							RealmPlayers_HasBeenWarnedOnce = true;
						end
						InspectDone();
						return;
					end
					InspectorData[CurrentlyInspecting] = {};
					InspectorData[CurrentlyInspecting].LastInspect = 0;
				end
				Inspect_Honor_Update = false;
				if(UnitName("target") == UnitName("player")) then
					UpdateCharacterHonorData("player");
					UpdateCharacterArenaData("player");
					UpdateCharacterInfoData("player");
					UpdateCharacterExtraData("player");
					UpdateCharacterItemsData("player");
					UpdateCharacterTalentsData("player");
					UpdateCharacterMetaData("player");
				else
					UpdateCharacterHonorData("target");
					UpdateCharacterArenaData("target");
					UpdateCharacterInfoData("target");
					UpdateCharacterExtraData("target");
					UpdateCharacterItemsData("target");
					UpdateCharacterTalentsData("target");
					UpdateCharacterMetaData("target");
				end
				InspectDone(true);
			end
		else
			InspectDone();
		end
	else
		if(currTime > NextInspectTryTime) then
			if(AutomaticInspection == true) then
				TargetNearestFriend();
			end
			StartInspectingTarget();
			NextInspectTryTime = currTime + 1;
		end
	end
	if(currTime - RecentlyInspectedTime > 1 and table.getn(RecentlyInspected) > 0) then
		if(table.getn(RecentlyInspected) == 1) then
			RealmPlayers_Debug("Successfully inspected "..RecentlyInspected[1]);
		else
			local playerList = "";
			local playerCount = 0;
			for i, v in pairs(RecentlyInspected) do
				playerList = playerList..v.." ";
				playerCount = playerCount + 1;
			end
			RealmPlayers_Debug("Successfully inspected("..playerCount.."): "..playerList);
		end
		RecentlyInspected = {};
	end
end

else--if not string.find(GetBuildInfo(), "^2%.") then
	DEFAULT_CHAT_FRAME:AddMessage("ERROR! Inspector does not work on this WoW version! Only works on World of Warcraft TBC!");

	function Inspector_OnLoad()

	end
	function Inspector_OnEvent()

	end
	function Inspector_OnUpdate()

	end
end--if string.find(GetBuildInfo(), "^2%.") then
