local trainUtil = require("__yi_railway__.prototypes.z_balancing_types")

local entityData = {
	modname = "z_yira_UP",
	locomotive = {
		yir_atom_header = {filename = "atom_head_sheet",	double = true, doublesided = false, size = {3904, 8032}, sizeSh = {4016, 8192}, shift = {0.42,-1.125}},
		yir_atom_mitte  = {filename = "atom_mitte_sheet",	double = true, doublesided = false, size = {4096, 8096}, sizeSh = {4096, 8192}, shift = {0.42,-1.125}},
	},
	["cargo-wagon"] = {
		yir_cw_flourit = 	{filename = "cws_flourit_sheet", 	double = false, doublesided = true,	size = {3360, 2848}, sizeSh = {3376, 3168}, shift = {0.42,-1.125}},
		yir_cw_uranite =	{filename = "cws_uranite_sheet", 	double = false, doublesided = true,	size = {3360, 2848}, sizeSh = {3376, 3168}, shift = {0.42,-1.125}},
		yir_cw_upempty = 	{filename = "cws_empty_sheet", 		double = false, doublesided = true,	size = {3360, 2880}, sizeSh = {3376, 3168}, shift = {0.42,-1.125}},
		yir_cw_upclosed = 	{filename = "cws_closed_sheet", 	double = false, doublesided = true,	size = {3360, 2880}, sizeSh = {3376, 3168}, shift = {0.42,-1.125}},
		yir_cw_flourit_4a = {filename = "4aw_upflour_sheet", 	double = false, doublesided = true,	size = {4096, 4096}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_cw_uran_4a = 	{filename = "4aw_upuran_sheet", 	double = false, doublesided = true, size = {4096, 4096}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_cw_empty_4a = 	{filename = "4aw_upempty_sheet", 	double = false, doublesided = true,	size = {4096, 4096}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_cw_trans_4a = 	{filename = "4aw_uptrans_sheet", 	double = false, doublesided = true,	size = {4096, 4096}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_cw_4a_urana =	{filename = "4aw_cw_urana_sheet", 	double = false, doublesided = true,	size = {4080, 3984}, sizeSh = {4080, 4096}, shift = {0.42,-1.125}},
		yir_cw_4a_cellsu =	{filename = "4aw_cw_ucells_sheet",	double = false, doublesided = true,	size = {4080, 3984}, sizeSh = {4080, 4096}, shift = {0.42,-1.125}},
	},
}

local itemData = {
	large = {
		"yir_atom_header",
		"yir_atom_mitte",

		"yir_cw_flourit",
		"yir_cw_uranite",
		"yir_cw_upempty",
		"yir_cw_upclosed",

		"yir_cw_flourit_4a",
		"yir_cw_uran_4a",
		"yir_cw_empty_4a",
		"yir_cw_trans_4a",
		"yir_cw_4a_urana",
		"yir_cw_4a_cellsu",
	},
}

local types = {
	large = "metal_large",
}
trainUtil.entitySetup(entityData)
trainUtil.itemSetup(itemData, types)

local function adjustStats(name, stat)
	local lok = data.raw["locomotive"][name]

	if not lok then
		return
	end
	for k, v in pairs(trainUtil.balancingTypes.stats1[stat]) do
		lok[k] = v
	end
	for k, v in pairs(trainUtil.balancingTypes.stats2[stat]) do
		lok.energy_source[k] = v
	end
end

adjustStats("yir_atom_header", "futureU")
adjustStats("yir_atom_mitte",  "futureU")
