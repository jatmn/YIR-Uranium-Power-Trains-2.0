local function addTechEffect(tech, name)
    table.insert(tech.effects, {type = "unlock-recipe", recipe = name})
end

local locos = {
    "yir_atom_header",
    "yir_atom_mitte",
}
local wagonsSmall = {
    "yir_cw_flourit",
    "yir_cw_uranite",
    "yir_cw_upempty",
    "yir_cw_upclosed",
}
local wagonsBig = {
    "yir_cw_flourit_4a",
    "yir_cw_uran_4a",
    "yir_cw_empty_4a",
    "yir_cw_trans_4a",
    "yir_cw_4a_urana",
    "yir_cw_4a_cellsu",
}

local tech = data.raw["technology"]["yir_railway_future"]
if tech ~= nil then
    for _, name in pairs(locos) do
        addTechEffect(tech, name)
    end
end

tech = data.raw["technology"]["yir_railway_wagon"]
if tech ~= nil then
    for _, name in pairs(wagonsSmall) do
        addTechEffect(tech, name)
    end
end

tech = data.raw["technology"]["yir_railway_wagon_better"]
if tech ~= nil then
    for _, name in pairs(wagonsBig) do
        addTechEffect(tech, name)
    end
end
