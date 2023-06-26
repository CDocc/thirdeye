function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 7.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- Draw a Sprite on the center of a PolyZone to hint where it's located
Config.DrawSprite = false

-- The default distance to draw the Sprite
Config.DrawDistance = 10.0

-- The color of the sprite in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.DrawColor = {255, 255, 255, 255}

-- The color of the sprite in rgb when the PolyZone is targeted, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.SuccessDrawColor = {30, 144, 255, 255}

-- The color of the outline in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 238

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {
	["EMSArmory"] = {
        name = "EMSArmory",
        coords = vector3(309.874, -568.4109, 43.28406),
        length = 1.5,
        width = 1.5,
        heading = 237.872,
        debugPoly = false,
        minZ = 42.8406,
        maxZ = 43.8406,
        options = {
            {
                type = "client",
                event = "hospital:openEMSArmory",
                icon = "fas fa-clipboard",
                label = "Open NHS Inventory",
                job = "ambulance",
            }
        },
        distance = 2.5
    },
    ["cityhall"] = {
        name = "cityhall",
        coords = vector3(-549.3317, -191.0541, 38.22308),
        length = 1.5,
        width = 1.5,
        heading = 29.33971,
        debugPoly = false,
        minZ = 37.22319,
        maxZ = 38.92319,
        options = {
            {
                type = "client",
                event = "citycenter",
                icon = "fas fa-clipboard",
                label = "Cityhall",
            }
        },
        distance = 2.5
    },
	["AmbulanceDuty"] = {
        name = "AmbulanceDuty",
        coords = vector3(311.88, -593.43, 43.28),
        length = 1,
        width = 1,
        heading = 149.32,
        debugPoly = false,
        minZ = 42.68,
        maxZ = 43.88,
        options = {
            {
                type = "server",
                event = "BJCore:ToggleDuty",
                icon = "fas fa-clipboard",
                label = "Duty",
                job = "ambulance",
            }
        },
        distance = 2.5
    },
	["PoliceDuty"] = {
        name = "PoliceDuty",
        coords = vector3(441.61, -982.21, 30.69),
        length = 3,
        width = 3,
        heading = 263.446,
        debugPoly = false,
        minZ = 30.32,
        maxZ = 31.02,
        options = {
            {
                type = "server",
                event = "BJCore:ToggleDuty",
                icon = "fas fa-clipboard",
                label = "Duty",
                job = "police",
            }
        },
        distance = 2.5
    },
    ["PoliceDutyPaleto"] = {
        name = "PoliceDutyPaleto",
        coords = vector3(-447.668, 6013.121, 32.2142),
        length = 2,
        width = 2,
        heading = 263.446,
        debugPoly = false,
        minZ = 31.32,
        maxZ = 33.02,
        options = {
            {
                type = "server",
                event = "BJCore:ToggleDuty",
                icon = "fas fa-clipboard",
                label = "Duty",
                job = "police",
            }
        },
        distance = 2.5
    },
    ["PoliceDutyDavis"] = {
        name = "PoliceDutyDavis",
        coords = vector3(381.1995, -1595.759, 30.06561),
        length = 2,
        width = 2,
        heading = 263.446,
        debugPoly = false,
        minZ = 29.32,
        maxZ = 31.02,
        options = {
            {
                type = "server",
                event = "BJCore:ToggleDuty",
                icon = "fas fa-clipboard",
                label = "Duty",
                job = "police",
            }
        },
        distance = 2.5
    },
    --vector4(381.1995, -1595.759, 30.06561, 232.9357)
    ["PoliceDutySandy"] = {
        name = "PoliceDutySandy",
        coords = vector3(1852.58, 3689.86, 34.58),
        length = 3,
        width = 3,
        heading = 26.41,
        debugPoly = false,
        minZ = 34.12,
        maxZ = 35.02,
        options = {
            {
                type = "server",
                event = "BJCore:ToggleDuty",
                icon = "fas fa-clipboard",
                label = "Duty",
                job = "police",
            }
        },
        distance = 2.5
    },
}

Config.PolyZones = {
    -- ["vehicleshop_selling"] = {
    --     name = "vehicleshop_selling",
    --     points = {
    --         vector2(-21.83814239502, -1081.2548828125),
    --         vector2(-19.58084487915, -1075.1804199219),
    --         vector2(-1.6975636482239, -1081.6516113281),
    --         vector2(-3.8894486427307, -1087.3189697266)
    --     },
    --     polyOptions = {
    --       name = "vehicleshop_selling",
    --       debugPoly = false,
    --       minZ = 26.305227279663,
    --       maxZ = 28.305227279663
    --     },
    --     options = {
    --       {
    --         type = "client",
    --         event = "ic-vehicleshop:sell_vehicle",
    --         icon = "fas fa-car",
    --         label = "Sell vehicle",
    --         flag = "inVehicle"
    --       },
    --     },
    -- },
}

Config.TargetBones = {
	["trunk"] = {
        bones = {
            'boot'
        },
        options = {
            {
                type = "client",
                event = "gameplay:getintrunk",
                icon = "fas fa-person-booth",
                label = "Get in Trunk",
            },
        },
        distance = 2.5
    },
	["keys"] = {
        bones = {
            'bodyshell',
			'chassis'
        },
        options = {
            {
                type = "client",
                event = "keys:giveKey",
                icon = "fas fa-key",
                label = "Give Keys",
            },
            {
                type = "client",
                event = "police:client:PutPlayerInVehicle",
                icon = "fas fa-user-plus",
                label = "Seat in Vehicle",
            },
            {
                type = "client",
                event = "police:client:SetPlayerOutVehicle",
                icon = "fas fa-user-minus",
                label = "Take out Vehicle",
            },
            {
                type = "client",
                event = "police:client:depot",
                icon = "fas fa-truck-moving",
                label = "Impound Vehicle",
                job = "police",
            },
            {
                type = "client",
                event = "FlipVehicle",
                label = 'Flip Vehicle',
                icon = 'fas fa-chevron-circle-up',
            },
        },
        distance = 2.5
    },
}

Config.TargetModels = {
	["atms"] = {
        models = {
            `prop_atm_01`,
            `prop_atm_02`,
            `prop_atm_03`,
            `prop_fleeca_atm`
        },
        options = {
            {
                type = "command",
                event = "atm",
                parameters = {},
                debugPoly = false,
                icon = "fab fa-cc-visa",
                label = "Use ATM",
            },
        },
        distance = 2.5
    },
    ["vending"] = {
        models = {
            `prop_vend_soda_02`,
            `prop_vend_soda_01`,
            `prop_vend_snak_01`,
        },
        options = {
            {
                type = "client",
                event = "inventory:checkForVending",
                parameters = {},
                icon = "fas fa-candy-cane",
                label = "Vending",

            },
        },
        distance = 2.5
    },
    ["vendingcoffee"] = {
        models = {
            `prop_vend_coffe_01`,
        },
        options = {
            {
                type = "client",
                event = "inventory:checkForVendingCoffee",
                parameters = {},
                icon = "fas fa-coffee",
                label = "Coffee Machine",

            },
        },
        distance = 2.5
    },
    ["FuelerJob"] = { --aircon:sellScrapMenu chop:sellScrapMenu
        models = {
            `s_m_m_dockwork_01`,
        },
        options = {
            {
                type = "client",
                event = "fueler:client:toggleFuelRun",
                parameters = {},
                icon = "fas fa-comments",
                label = "Fueler Job",

            },
        },
        distance = 2.5
    },
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {

}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCheck() return true end
local function CitizenCheck() return true end

CreateThread(function()
	local state = GetResourceState('core')
	if state ~= 'missing' then
		if state ~= 'started' then
			local timeout = 0
			repeat
				timeout += 1
				Wait(0)
			until GetResourceState('core') == 'started' or timeout > 100
		end
		Config.Standalone = false
	end
	if Config.Standalone then
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	else
		local BJCore = exports['core']:GetCoreObject()
		local PlayerData = BJCore.Functions.GetPlayerData()

		ItemCheck = function(items)
			local isTable = type(items) == 'table'
			local isArray = isTable and table.type(items) == 'array' or false
			local finalcount = 0
			local count = 0
			if isTable then for _ in pairs(items) do finalcount += 1 end end
			for _, v in pairs(PlayerData.items) do
				if isTable then
					if isArray then -- Table expected in this format {'itemName1', 'itemName2', 'etc'}
						for _, item in pairs(items) do
							if v and v.name == item then
								count += 1
							end
						end
					else -- Table expected in this format {['itemName'] = amount}
						local itemAmount = items[v.name]
						if itemAmount and v and v.amount >= itemAmount then
							count += 1
						end
					end
					if count == finalcount then -- This is to make sure it checks all items in the table instead of only one of the items
						return true
					end
				else -- When items is a string
					if v and v.name == items then
						return true
					end
				end
			end
			return false
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('BJCore:Client:OnPlayerLoaded', function()
			isLoggedIn = true
			PlayerData = BJCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('BJCore:Client:OnPlayerUnload', function()
			isLoggedIn = false
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('BJCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('BJCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('BJCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCheck(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end
