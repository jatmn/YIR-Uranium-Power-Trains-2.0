require("lib.functions")

data:extend(
	{
		--
		{
			type = "recipe",
			name = "yir_atom_header",
			category = "yir_rc_wsl", -- Workshop for Locomotives
			enabled = true,
			energy_required = 5.00,
			ingredients = {
				{type = "item", name = "yir_frame_loco_future", amount = 1.0},
				{type = "item", name = "yir_radsatz_locos", amount = 4.0},
				{type = "item", name = "yir_color_green", amount = 2.0},
				{type = "item", name = "yir_color_white", amount = 10.0},
				{type = "item", name = "yir_future_coin", amount = 40.0}
			},
			results = {
				{type = "item", name = "yir_atom_header", amount = 1}
			},
			main_product = "yir_atom_header",
			order = "lsw1",
			group = "railway_addons",
			subgroup = "yir_uranium_power_loco"
		},
		{
			type = "item",
			name = "yir_atom_header",
			icon = "__z_yira_UP__/graphics/atom_trieb_icon.png",
			group = "railway_addons",
			subgroup = "yir_uranium_power_loco",
			order = "d3",
			stack_size = 10,
			default_request_amount = 5,
			icon_size = 32,
			place_result = "yir_atom_header"
		},
		{
			type = "locomotive",
			name = "yir_atom_header",
			icon = "__z_yira_UP__/graphics/atom_trieb_icon.png",
			icon_size = 32,
			flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
			minable = {mining_time = 1, result = "yir_atom_header"},
			mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
			max_health = 800,
			corpse = "medium-remnants",
			dying_explosion = "medium-explosion",
			collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
			selection_box = {{-1, -3}, {1, 3}},
			drawing_box = {{-1, -4}, {1, 3}},
			connection_distance = 3,
			joint_distance = 4,
			weight = 2000,
			max_speed = 1.065, -- 230 km/h
			max_power = "2500kW",
			reversing_power_modifier = 0.6,
			braking_force = 20,
			friction_force = 0.00225,
			-- this is a percentage of current speed that will be subtracted
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
				smoke = {
					{
						name = "train-smoke",
						deviation = {0.3, 0.3},
						frequency = 100,
						position = {0, 0},
						starting_frame = 0,
						starting_frame_deviation = 60,
						height = 2,
						height_deviation = 0.5,
						starting_vertical_speed = 0.2,
						starting_vertical_speed_deviation = 0.1
					}
				}
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
			--back_light = rolling_stock_back_light(),
			--stand_by_light = rolling_stock_stand_by_light(),
			pictures = {
				rotated = {
				priority = "very-low",
				width = 256,
				height = 256,
				direction_count = 128,
				filenames = {
					"__z_yira_UP__/graphics/atom_head_sheet-0.png",
					"__z_yira_UP__/graphics/atom_head_sheet-1.png"
				},
				line_length = 8,
				lines_per_file = 8,
				shift = {0.42, -1.125}
			},
			},
			minimap_representation = {
				filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-minimap-representation.png",
				flags = {"icon"},
				size = {20, 40},
				scale = 0.5
			},
			selected_minimap_representation = {
				filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-selected-minimap-representation.png",
				flags = {"icon"},
				size = {20, 40},
				scale = 0.5
			},
			wheels = standard_train_wheels,
			rail_category = "regular",
			stop_trigger = {
				-- left side
				{
					type = "create-trivial-smoke",
					repeat_count = 75,
					smoke_name = "smoke-train-stop",
					initial_height = 0,
					-- smoke goes to the left
					speed = {-0.03, 0},
					speed_multiplier = 0.75,
					speed_multiplier_deviation = 1.1,
					offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
				},
				-- right side
				{
					type = "create-trivial-smoke",
					repeat_count = 75,
					smoke_name = "smoke-train-stop",
					initial_height = 0,
					-- smoke goes to the right
					speed = {0.03, 0},
					speed_multiplier = 0.75,
					speed_multiplier_deviation = 1.1,
					offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
				},
				{
					type = "play-sound",
					sound = {
						{
							filename = "__base__/sound/train-breaks.ogg",
							volume = 0.6
						}
					}
				}
			},
			drive_over_tie_trigger = yir_drive_over_tie(),
			tie_distance = 50,
			vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
			working_sound = {
				sound = {
					filename = "__base__/sound/train-engine.ogg",
					volume = 0.5
				},
				match_speed_to_activity = true
			},
			open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
			close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
			sound_minimum_speed = 0.2
		},
		{
			type = "recipe",
			name = "yir_atom_mitte",
			category = "yir_rc_wsl", -- Workshop for Locomotives
			enabled = true,
			energy_required = 5.00,
			ingredients = {
				{type = "item", name = "yir_frame_loco_future", amount = 1.0},
				{type = "item", name = "yir_radsatz_waggon", amount = 2.0},
				{type = "item", name = "yir_color_green", amount = 2.0},
				{type = "item", name = "yir_color_white", amount = 10.0},
				{type = "item", name = "yir_future_coin", amount = 50.0}
			},
			results = {
				{type = "item", name = "yir_atom_mitte", amount = 1}
			},
			main_product = "yir_atom_mitte",
			order = "lsw1",
			group = "railway_addons",
			subgroup = "yir_uranium_power_loco"
		},
		{
			type = "item",
			name = "yir_atom_mitte",
			icon = "__z_yira_UP__/graphics/atom_mitte_icon.png",
			group = "railway_addons",
			subgroup = "yir_uranium_power_loco",
			order = "d4",
			stack_size = 10,
			default_request_amount = 5,
			icon_size = 32,
			place_result = "yir_atom_mitte"
		},
		{
			type = "locomotive",
			name = "yir_atom_mitte",
			icon = "__z_yira_UP__/graphics/atom_mitte_icon.png",
			icon_size = 32,
			flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
			minable = {mining_time = 1, result = "yir_atom_mitte"},
			mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
			max_health = 3000,
			corpse = "medium-remnants",
			dying_explosion = "medium-explosion",
			collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
			selection_box = {{-1, -3}, {1, 3}},
			drawing_box = {{-1, -4}, {1, 3}},
			connection_distance = 3,
			joint_distance = 4,
			weight = 5000,
			max_speed = 1.065, -- 230 km/h
			max_power = "5000kW",
			reversing_power_modifier = 1.0,
			braking_force = 14,
			friction_force = 0.00225,
			-- this is a percentage of current speed that will be subtracted
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
				smoke = {
					{
						name = "train-smoke",
						deviation = {0.3, 0.3},
						frequency = 100,
						position = {0, 0},
						starting_frame = 0,
						starting_frame_deviation = 60,
						height = 2,
						height_deviation = 0.5,
						starting_vertical_speed = 0.2,
						starting_vertical_speed_deviation = 0.1
					}
				}
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
			--back_light = rolling_stock_back_light(),
			--stand_by_light = rolling_stock_stand_by_light(),
			pictures = {
				rotated = {
				priority = "very-low",
				width = 256,
				height = 256,
				direction_count = 128,
				filenames = {
					"__z_yira_UP__/graphics/atom_mitte_sheet-0.png",
					"__z_yira_UP__/graphics/atom_mitte_sheet-1.png"
				},
				line_length = 8,
				lines_per_file = 8,
				shift = {0.42, -1.125}
			},
			},
			minimap_representation = {
				filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-minimap-representation.png",
				flags = {"icon"},
				size = {20, 40},
				scale = 0.5
			},
			selected_minimap_representation = {
				filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-selected-minimap-representation.png",
				flags = {"icon"},
				size = {20, 40},
				scale = 0.5
			},
			wheels = standard_train_wheels,
			rail_category = "regular",
			stop_trigger = {
				-- left side
				{
					type = "create-trivial-smoke",
					repeat_count = 75,
					smoke_name = "smoke-train-stop",
					initial_height = 0,
					-- smoke goes to the left
					speed = {-0.03, 0},
					speed_multiplier = 0.75,
					speed_multiplier_deviation = 1.1,
					offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
				},
				-- right side
				{
					type = "create-trivial-smoke",
					repeat_count = 75,
					smoke_name = "smoke-train-stop",
					initial_height = 0,
					-- smoke goes to the right
					speed = {0.03, 0},
					speed_multiplier = 0.75,
					speed_multiplier_deviation = 1.1,
					offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
				},
				{
					type = "play-sound",
					sound = {
						{
							filename = "__base__/sound/train-breaks.ogg",
							volume = 0.6
						}
					}
				}
			},
			drive_over_tie_trigger = yir_drive_over_tie(),
			tie_distance = 50,
			vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
			working_sound = {
				sound = {
					filename = "__base__/sound/train-engine.ogg",
					volume = 0.5
				},
				match_speed_to_activity = true
			},
			open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
			close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
			sound_minimum_speed = 0.2
		}
	}
)
