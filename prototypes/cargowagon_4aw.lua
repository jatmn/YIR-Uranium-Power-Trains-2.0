data:extend(
{


	{
		type = "recipe",
		name = "yir_cw_flourit_4a_recipe",
		category = "yir_rc_wsw", -- Workshop for Locomotives
		enabled = "true",
		energy_required = 3.00,
		ingredients = {			
			{ type = "item", name = "yir_frame_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_color_green" , amount = 2.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 8.0, },					
		},
		results = {
			{ type = "item", name = "yir_cw_flourit_4a", amount = 1, },
		},		
		order = "cw5", group = "railway_addons", subgroup = "yir_uranium_power_cargo4a",
	},	

	{
		type="item-with-entity-data", name="yir_cw_flourit_4a", icon="__z_yira_UP__/graphics/cws64_fluorite_icon.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo4a", order="cw5",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_flourit_4a", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_flourit_4a",
		icon = "__z_yira_UP__/graphics/cws64_fluorite_icon.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_flourit_4a"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",		
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},		
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/4aw_upflour_sheet.png",      
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = drive_over_tie(),
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
		name = "yir_cw_uran_4a_recipe",
		category = "yir_rc_wsw", -- Workshop for Locomotives
		enabled = "true",
		energy_required = 3.00,
		ingredients = {			
			{ type = "item", name = "yir_frame_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_color_green" , amount = 2.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 8.0, },					
		},
		results = {
			{ type = "item", name = "yir_cw_uran_4a", amount = 1, },
		},		
		order = "cw6", group = "railway_addons", subgroup = "yir_uranium_power_cargo4a",
	},	

	{
		type="item-with-entity-data", name="yir_cw_uran_4a", icon="__z_yira_UP__/graphics/cws64_uranite-icon.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo4a", order="cw6",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_uran_4a", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_uran_4a",
		icon = "__z_yira_UP__/graphics/cws64_uranite-icon.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_uran_4a"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",		
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},		
		connection_distance = 3, joint_distance = 4,
		weight = 3000,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/4aw_upuran_sheet.png",      
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = drive_over_tie(),
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
		name = "yir_cw_empty_4a_recipe",
		category = "yir_rc_wsw", -- Workshop for Locomotives
		enabled = "true",
		energy_required = 3.00,
		ingredients = {			
			{ type = "item", name = "yir_frame_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_color_green" , amount = 2.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 8.0, },					
		},
		results = {
			{ type = "item", name = "yir_cw_empty_4a", amount = 1, },
		},		
		order = "cw7", group = "railway_addons", subgroup = "yir_uranium_power_cargo4a",
	},	

	{
		type="item-with-entity-data", name="yir_cw_empty_4a", icon="__z_yira_UP__/graphics/cws64_empty.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo4a", order="cw7",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_empty_4a", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_empty_4a",
		icon = "__z_yira_UP__/graphics/cws64_empty.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_empty_4a"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",		
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},		
		connection_distance = 3, joint_distance = 4,
		weight = 1200,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/4aw_upempty_sheet.png",      
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = drive_over_tie(),
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
		name = "yir_cw_trans_4a_recipe",
		category = "yir_rc_wsw", -- Workshop for Locomotives
		enabled = "true",
		energy_required = 3.00,
		ingredients = {			
			{ type = "item", name = "yir_frame_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_color_green" , amount = 2.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 10.0, },					
		},
		results = {
			{ type = "item", name = "yir_cw_trans_4a", amount = 1, },
		},		
		order = "cw8", group = "railway_addons", subgroup = "yir_uranium_power_cargo4a",
	},	

	{
		type="item-with-entity-data", name="yir_cw_trans_4a", icon="__z_yira_UP__/graphics/cws64_up_closed_icon.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo4a", order="cw8",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_trans_4a", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_trans_4a",
		icon = "__z_yira_UP__/graphics/cws64_up_closed_icon.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_trans_4a"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",		
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},		
		connection_distance = 3, joint_distance = 4,
		weight = 2500,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/4aw_uptrans_sheet.png",      
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = drive_over_tie(),
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

		
	-- vanilla Uran
	{
		type = "recipe",
		name = "yir_cw_4a_urana_recipe",
		category = "yir_rc_wsw", -- Workshop for Locomotives
		enabled = "true",
		energy_required = 3.00,
		ingredients = {			
			{ type = "item", name = "yir_frame_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_color_green" , amount = 2.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 5.0, },					
		},
		results = {
			{ type = "item", name = "yir_cw_4a_urana", amount = 1, },
		},		
		order = "cw9a", group = "railway_addons", subgroup = "yir_uranium_power_cargo4a",
	},	

	{
		type="item-with-entity-data", name="yir_cw_4a_urana", icon="__z_yira_UP__/graphics/4aw_cw_urana_icon.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo4a", order="cw9a",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_4a_urana", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_4a_urana",
		icon = "__z_yira_UP__/graphics/4aw_cw_urana_icon.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_4a_urana"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",		
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},		
		connection_distance = 3, joint_distance = 4,
		weight = 2500,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.5,
		air_resistance = 0.05,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			priority = "very-low",
			width = 512,
			height = 512,
			scale = 0.5,
			back_equals_front = true,
			direction_count = 64,
			filenames = {
				"__z_yira_UP__/graphics/4aw_cw_urana_sheet-0.png",      
				"__z_yira_UP__/graphics/4aw_cw_urana_sheet-1.png",      
				"__z_yira_UP__/graphics/4aw_cw_urana_sheet-2.png",      
				"__z_yira_UP__/graphics/4aw_cw_urana_sheet-3.png",      
			},			
			line_length = 4,
			lines_per_file = 4,
			shift = {0.42, -1.125}
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = drive_over_tie(),
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

	-- vanilla uran-cells
	{
		type = "recipe",
		name = "yir_cw_4a_cellsu_recipe",
		category = "yir_rc_wsw", -- Workshop for Locomotives
		enabled = "true",
		energy_required = 3.00,
		ingredients = {			
			{ type = "item", name = "yir_frame_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_radsatz_waggon" , amount = 2.0, },			
			{ type = "item", name = "yir_color_green" , amount = 2.0, },			
			{ type = "item", name = "yir_future_coin" , amount = 5.0, },					
		},
		results = {
			{ type = "item", name = "yir_cw_4a_cellsu", amount = 1, },
		},		
		order = "cw9b", group = "railway_addons", subgroup = "yir_uranium_power_cargo4a",
	},	

	{
		type="item-with-entity-data", name="yir_cw_4a_cellsu", icon="__z_yira_UP__/graphics/4aw_cw_ucells_icon.png", 
		group="railway_addons", subgroup="yir_uranium_power_cargo4a", order="cw9b",  
		stack_size = 10, default_request_amount = 5, icon_size = 32,
		place_result="yir_cw_4a_cellsu", 
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_4a_cellsu",
		icon = "__z_yira_UP__/graphics/4aw_cw_ucells_icon.png",icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_4a_cellsu"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",		
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},		
		connection_distance = 3, joint_distance = 4,
		weight = 2500,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.5,
		air_resistance = 0.05,
		energy_per_hit_point = 5,    
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30 },
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		--back_light = rolling_stock_back_light(),
		--stand_by_light = rolling_stock_stand_by_light(),
		pictures =
		{
			priority = "very-low",
			width = 512,
			height = 512,
			scale = 0.5,
			back_equals_front = true,
			direction_count = 64,
			filenames = {
				"__z_yira_UP__/graphics/4aw_cw_ucells_sheet-0.png",      
				"__z_yira_UP__/graphics/4aw_cw_ucells_sheet-1.png",      
				"__z_yira_UP__/graphics/4aw_cw_ucells_sheet-2.png",      
				"__z_yira_UP__/graphics/4aw_cw_ucells_sheet-3.png",      
			},
			line_length = 4,
			lines_per_file = 4,
			shift = {0.42, -1.125}
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = drive_over_tie(),
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