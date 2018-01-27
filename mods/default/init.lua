default = {}

--Setting MapGen Aliases

--Terrain
minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_water_source", "default:water_source")
minetest.register_alias("mapgen_river_water_source", "default:water_source")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_cobble", "default:stone")
minetest.register_alias("mapgen_dirt", "default:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "default:dirt")
minetest.register_alias("mapgen_sand", "default:dirt")
minetest.register_alias("mapgen_gravel", "default:dirt")

--Flora
minetest.register_alias("mapgen_jungletree", "default:tree")
minetest.register_alias("mapgen_tree", "default:tree")
minetest.register_alias("mapgen_pine_tree", "default:tree")
minetest.register_alias("mapgen_leaves", "default:leaves")
minetest.register_alias("mapgen_apple", "default:apple")
minetest.register_alias("mapgen_jungleleaves", "default:leaves")
minetest.register_alias("mapgen_pine_needles", "default:leaves")
minetest.register_alias("mapgen_grass", "default:grass")
minetest.register_alias("mapgen_junglegrass", "default:grass")

minetest.register_on_joinplayer(function(player)
	player:set_sky("#ffcc00", "plain", false)
    player:hud_set_hotbar_itemcount(15)
    player:set_physics_override({new_move = false,  sneak_glitch = true, gravity = 0.3, speed = 2, jump = 2})
    player:override_day_night_ratio(1)    
end)

minetest.register_item(":", {
	type = "none",
	wield_image = "cracker.png",
	wield_scale = {x=0.8,y=0.8,z=2.0},
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[2]=2.00, [3]=1.00}, uses=0, maxlevel=1},
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=7.00,[2]=4.00,[3]=1.40}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=1},
	}
})

minetest.register_node("default:stone", {
	description = "Stone",
	tiles ={"medium_grey.png"},
	groups = {crumbly=3},
	drop = 'default:stone',
})

minetest.register_node("default:dirt", {
	description = "Dirt",
	tiles ={"light_orange.png"},
	groups = {crumbly=3, soil=1},
})

minetest.register_node("default:water", {
	description = "Water",
	tiles ={"dark_blue.png"},
	groups = {crumbly=3},
	walkable = false,
	pointable = true,
	paramtype = "light",
	light_source = 3,
    drawtype = "liquid",
})

minetest.register_node("default:water_source", {
	description = "Water Source",
	tiles ={"dark_blue.png"},
	groups = {crumbly=3},
	walkable = false,
	pointable = true,
	paramtype = "light",
	light_source = 3,
    drawtype = "liquid",
})

minetest.register_node("default:lava", {
	description = "Lava",
	tiles ={"red.png"},
	groups = {crumbly=3},
	walkable = false,
	pointable = true,
	paramtype = "light",
	light_source = 10,
    drawtype = "liquid",
})

minetest.register_node("default:lava_source", {
	description = "Lava Source",
	tiles ={"red.png"},
	groups = {crumbly=3},
	walkable = false,
	pointable = true,
	paramtype = "light",
	light_source = 10,
    drawtype = "liquid",
})

minetest.register_node("default:tree", {
	description = "Tree",
	tiles ={"light_blue.png"},
	groups = {crumbly=3},
})

minetest.register_node("default:leaves", {
	description = "Leaves",
	tiles ={"yellow.png"},
	groups = {crumbly=3},
})

minetest.register_node("default:apple", {
	description = "Apple",
	tiles ={"dark_green.png"},
	groups = {crumbly=3},
})

minetest.register_node("default:grass", {
	description = "Grass",
	tiles ={"medium_blue.png"},
	groups = {crumbly=3},
})
--[[
function swap_node(pos,name)
	local node = minetest.get_node(pos)
	if node.name == name then
		return
	end
	node.name = name
	minetest.swap_node(pos, node)
end
]]--
print("Micro SubGame Loaded")

-- END

