functions = require("lib.functions")

data:extend({
	{
		type = "locomotive",
		name = "yir_atom_header",
		icon = "__z_yira_UP__/graphics/icons/atom_trieb_icon.png",
		icon_size = 64,
		mined_sound = {filename = "__core__/sound/deconstruct-metal-large.ogg"},
		max_health = 2000,
		corpse = "big-remnants",
		dying_explosion = "massive-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		connection_distance = 3,
		joint_distance = 4,
		weight = 3000,
		max_speed = 1.065,
		max_power = "2500kW",
		reversing_power_modifier = 0.6,
		braking_force = 20,
		friction_force = 0.00225,
		air_resistance = 0.00225,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 8,
		resistances = {
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact", decrease = 50, percent = 60}
		},
		energy_source = {
			type = "burner",
			fuel_categories = {"nuclear"},
			effectivity = 5,
			fuel_inventory_size = 1,
		},
		front_light = {
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -18},
				size = 3,
				intensity = 1
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -18},
				size = 3,
				intensity = 1
			}
		},
	},
	{
		type = "locomotive",
		name = "yir_atom_mitte",
		icon = "__z_yira_UP__/graphics/icons/atom_mitte_icon.png",
		icon_size = 64,
		mined_sound = {filename = "__core__/sound/deconstruct-metal-large.ogg"},
		max_health = 2000,
		corpse = "big-remnants",
		dying_explosion = "massive-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		connection_distance = 3,
		joint_distance = 4,
		weight = 3000,
		max_speed = 1.065,
		max_power = "5000kW",
		reversing_power_modifier = 1.0,
		braking_force = 14,
		friction_force = 0.00225,
		air_resistance = 0.00225,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 5,
		resistances = {
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact", decrease = 50, percent = 60}
		},
		energy_source = {
			type = "burner",
			fuel_categories = {"nuclear"},
			effectivity = 5,
			fuel_inventory_size = 2,
		},
		front_light = {
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -18},
				size = 2,
				intensity = 0.8
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -18},
				size = 2,
				intensity = 0.8
			}
		},
	}
})
