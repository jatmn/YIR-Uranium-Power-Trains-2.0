functions = require("lib.functions")
local resistances = data.raw["cargo-wagon"]["cargo-wagon"].resistances

data:extend({
	{
		type = "cargo-wagon",
		name = "yir_cw_flourit",
		icon = "__z_yira_UP__/graphics/icons/cws64_fluorite_icon.png",
		icon_size = 64,
		inventory_size = 20,
		max_health = 400,
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2}, {1, 2}},
		weight = 500,
		max_speed = 1.5,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances = resistances,
		vertical_selection_shift = -0.5,
		wheels = functions.standard_train_wheels,
		working_sound = {
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_uranite",
		icon = "__z_yira_UP__/graphics/icons/cws64_uranite-icon.png",
		icon_size = 64,
		inventory_size = 20,
		max_health = 400,
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2}, {1, 2}},
		weight = 500,
		max_speed = 1.5,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances = resistances,
		vertical_selection_shift = -0.5,
		wheels = functions.standard_train_wheels,
		working_sound = {
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_upempty",
		icon = "__z_yira_UP__/graphics/icons/cws64_empty.png",
		icon_size = 64,
		inventory_size = 20,
		max_health = 400,
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2}, {1, 2}},
		weight = 500,
		max_speed = 1.5,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances = resistances,
		vertical_selection_shift = -0.5,
		wheels = functions.standard_train_wheels,
		working_sound = {
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_upclosed",
		icon = "__z_yira_UP__/graphics/icons/cws64_up_closed_icon.png",
		icon_size = 64,
		inventory_size = 20,
		max_health = 400,
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2}, {1, 2}},
		weight = 500,
		max_speed = 1.5,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances = resistances,
		vertical_selection_shift = -0.5,
		wheels = functions.standard_train_wheels,
		working_sound = {
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
	},
})