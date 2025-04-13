require("lib.functions")

data:extend(
{

	{
		type = "recipe",
		name = "yir_cw_flourit",
		category = "yir_rc_wsw", -- Workshop for Waggons
		enabled = true,
		energy_required = 3.00,
		ingredients = {			
			{ type = "item", name = "yir_frame_waggon" , amount = 1.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 1.0, },			
			{ type = "item", name = "yir_color_green" , amount = 1.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 5.0, },					
		},
		results = {
			{ type = "item", name = "yir_cw_flourit", amount = 1, },
		},	
		main_product = "yir_cw_flourit",
		order = "cw1", group = "railway_addons", subgroup = "yir_uranium_power_cargo2a",
	},

	{
		type="item-with-entity-data", name="yir_cw_flourit", icon="__z_yira_UP__/graphics/cws64_fluorite_icon.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo2a", order="cw1",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_flourit", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_flourit",
		icon = "__z_yira_UP__/graphics/cws64_fluorite_icon.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 20,
		minable = {mining_time = 1, result = "yir_cw_flourit"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.1}},
		selection_box = {{-0.7, -2.6}, {1, 1.2}},
		weight = 1000,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.5,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/cws_flourit_sheet.png",      
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
			},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
	},  

	{
		type = "recipe",
		name = "yir_cw_uranite",
		category = "yir_rc_wsw", -- Workshop for waggons
		enabled = true,
		energy_required = 3.00,
		ingredients = {			
			{ type = "item", name = "yir_frame_waggon" , amount = 1.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 1.0, },			
			{ type = "item", name = "yir_color_green" , amount = 1.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 5.0, },					
		},
		results = {
			{ type = "item", name = "yir_cw_uranite", amount = 1, },
		},
		main_product = "yir_cw_uranite",
		order = "cw2", group = "railway_addons", subgroup = "yir_uranium_power_cargo2a",
	},	

	{
		type="item-with-entity-data", name="yir_cw_uranite", icon="__z_yira_UP__/graphics/cws64_uranite-icon.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo2a", order="cw2",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_uranite", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_uranite",
		icon = "__z_yira_UP__/graphics/cws64_uranite-icon.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 20,
		minable = {mining_time = 1, result = "yir_cw_uranite"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.1}},
		selection_box = {{-0.7, -2.6}, {1, 1.2}},
		weight = 1500,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}			
		},
		vertical_selection_shift = -0.5,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/cws_uranite_sheet.png",      
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
			},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
	},  
	
	{
		type = "recipe",
		name = "yir_cw_upempty",
		category = "yir_rc_wsw", -- Workshop for waggons
		enabled = true,
		energy_required = 3.00,
		ingredients = {			
			{ type = "item", name = "yir_frame_waggon" , amount = 1.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 1.0, },			
			{ type = "item", name = "yir_color_green" , amount = 1.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 3.0, },			
		},
		results = {
			{ type = "item", name = "yir_cw_upempty", amount = 1, },
		},
		main_product = "yir_cw_upempty",
		order = "cw3", group = "railway_addons", subgroup = "yir_uranium_power_cargo2a",
	},	

	{
		type="item-with-entity-data", name="yir_cw_upempty", icon="__z_yira_UP__/graphics/cws64_empty.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo2a", order="cw3",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_upempty", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_upempty",
		icon = "__z_yira_UP__/graphics/cws64_empty.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 20,
		minable = {mining_time = 1, result = "yir_cw_upempty"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.1}},
		selection_box = {{-0.7, -2.6}, {1, 1.2}},
		weight = 600,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.5,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/cws_empty_sheet.png",      
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
			},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
	},  

	{
		type = "recipe",
		name = "yir_cw_upclosed",
		category = "yir_rc_wsw", -- Workshop for Locomotives
		enabled = true,
		energy_required = 3.00,
		ingredients = {
			{ type = "item", name = "yir_frame_waggon" , amount = 1.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 1.0, },			
			{ type = "item", name = "yir_color_green" , amount = 1.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 8.0, },			
		},
		results = {
			{ type = "item", name = "yir_cw_upclosed", amount = 1, },
		},
		main_product = "yir_cw_upclosed",
		order = "cw4", group = "railway_addons", subgroup = "yir_uranium_power_cargo2a",
	},	

	{
		type="item-with-entity-data", name="yir_cw_upclosed", icon="__z_yira_UP__/graphics/cws64_up_closed_icon.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo2a", order="cw4",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_upclosed", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_upclosed",
		icon = "__z_yira_UP__/graphics/cws64_up_closed_icon.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 20,
		minable = {mining_time = 1, result = "yir_cw_upclosed"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.1}},
		selection_box = {{-0.7, -2.6}, {1, 1.2}},
		weight = 1500,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.5,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/cws_closed_sheet.png",      
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
			},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
	},
})