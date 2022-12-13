-- AdiBags Bears Cooking - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...;

-- Get locales name
local L = addonTable.expansion;
local Expansion = L["Dragonflight"]

-- Create addon table
local db = {}

db.name = "Bears " .. Expansion .. " Cooking"
db.desc = "Cooking reagents found in " .. Expansion

-- Filter info
db.Filters = {
	["Meat"] = {
		uiName = "Bears " .. Expansion .. " Meat",
		uiDesc = "Meat found in " .. Expansion,
		title = "Meat",
		items = {
			-- ID,	--Item name
			[197741] = true, -- Maybe meat
			[197747] = true, -- Mighty Mammoth Ribs
			[197755] = true, -- Lava beetle
			[197745] = true, -- Basilisk Eggs
			[197742] = true, -- Ribbed Mollusk Meat
			[197744] = true, -- Hornswog Hunk
			[197743] = true, -- Waterfowl Filet
			[197748] = true, -- Burly Bear Haunch
			[197746] = true, -- Bruffalon Flank
		}
	},
	["Fish"] = {
		uiName = "Bears " .. Expansion .. " Fish",
		uiDesc = "Fish found while fishing in " .. Expansion,
		title = "Fish",
		items = {
			-- ID,	--Item name
			[200061] = true, -- Prismatic Leaper
			[194967] = true, -- Aileron Seamoth
			[199345] = true, -- Rimefin Tuna
			[200074] = true, -- Frosted Rimefin Tuna
			[194730] = true, -- Scalebelly Mackerel
			[199344] = true, -- Magma Thresher
			[194966] = true, -- Thousandbite Piranha
			[194970] = true, -- Islefin Dorado
			[194969] = true, -- Temporal Dragonhead
			[194968] = true, -- Cerulean Spinefish
			[199346] = true, -- Rotten Rimefin Tuna
		}
	},
	["Ore"] = {
		uiName = "Bears " .. Expansion .. " Ore",
		uiDesc = "Ore found in " .. Expansion,
		title = "Ore",
		items = {
			-- ID,	--Item name
			[197754] = true, -- Salt Deposit
		}
	},
	["Crafted"] = {
		uiName = "Bears " .. Expansion .. " Crafted",
		uiDesc = "Assorted crafted items found in " .. Expansion,
		title = "Crafted",
		items = {
			-- ID,	--Item name
			[197757] = true, -- Assorted Exotic Spices
			[197765] = true, -- Impossibly Sharp Cutting Knife
			[197756] = true, -- Pebbled Rock Salts
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
