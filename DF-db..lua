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

db.name = Expansion .. " Cooking"
db.desc = "Cooking reagents found in " .. Expansion

-- Filter info
db.Filters = {
	["Meat"] = {
		uiName = Expansion .. " Meat",
		uiDesc = "Meat found in " .. Expansion,
		title = "Meat",
		items = {-- ID,	--Item name
			[197755] = true, -- Lava beetle

		}
	},
	["Vendor_Reagents"] = {
		uiName = Expansion .. " Cooking Reagents",
		uiDesc = "Reagents from cooking vendors used in " .. Expansion,
		title = "Cooking Reagents",
		items = {
			-- ID,	--Item name
			[197752] = true, -- Conveniently Packaged Ingredients

		}
	},
--[[	["Fish"] = {
		uiName = Expansion .. " Fish",
		uiDesc = "Fish found while fishing in " .. Expansion,
		title = "Fish",
		items = {
			-- ID,	--Item name
			
		}
	} 
--]]
	["Crafted"] = {
		uiName = Expansion .. " Crafted",
		uiDesc = "Crafted items found in " .. Expansion,
		title = "Crafted",
		items = {-- ID,	--Item name
			[197757] = true, -- Assorted Exotic Spices

		}
	},
}

-- now that db is populated lets pass it on.
addonTable.db = db
