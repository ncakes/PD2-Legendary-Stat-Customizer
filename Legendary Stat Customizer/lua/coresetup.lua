if _G.LegendStats then return end

---@class LegendStats
_G.LegendStats = {}
LegendStats.meta = {
	mod_path = ModPath,
	loc_path = ModPath .. "loc/",
	language = "en",
	menu_id = "legstats_options_menu",
	menu_callback_prefix = "legstats",
	save_file = SavePath .. "legendary_stats.json",
}

LegendStats.legend_data = ncUtils.FileIO:load_json(LegendStats.meta.mod_path .. "data/legend_data.json")
LegendStats.extra_parts = ncUtils.FileIO:load_json(LegendStats.meta.mod_path .. "data/extra_parts.json")
LegendStats.child_parts = ncUtils.FileIO:load_json(LegendStats.meta.mod_path .. "data/child_parts.json")
LegendStats.invis_parts = ncUtils.FileIO:load_json(LegendStats.meta.mod_path .. "data/invis_parts.json")

LegendStats.settings = {
	--ak74_rodina
	wpn_fps_ass_74_b_legend_hide_barrel_ext = false,
	wpn_fps_ass_74_b_legend = "orig",
	wpn_upg_ak_fg_legend = "orig",
	wpn_upg_ak_fl_legend = "orig",
	wpn_upg_ak_g_legend = "orig",
	wpn_upg_ak_s_legend = "orig",
	--ak74_rodina/akm
	wpn_fps_ass_74_b_legend_addon_akm_hide_barrel_ext = false,
	wpn_fps_ass_74_b_legend_addon_akm = "orig",
	wpn_upg_ak_fg_legend_addon_akm = "orig",
	wpn_upg_ak_fl_legend_addon_akm = "orig",
	wpn_upg_ak_g_legend_addon_akm = "orig",
	wpn_upg_ak_s_legend_addon_akm = "orig",
	--ak74_rodina/akmsu
	wpn_fps_ass_74_b_legend_addon_akmsu_hide_barrel_ext = false,
	wpn_fps_ass_74_b_legend_addon_akmsu = "orig",
	wpn_upg_ak_fg_legend_addon_akmsu = "orig",
	wpn_upg_ak_fl_legend_addon_akmsu = "orig",
	wpn_upg_ak_g_legend_addon_akmsu = "orig",
	wpn_upg_ak_s_legend_addon_akmsu = "orig",
	--ak74_rodina/rpk
	wpn_fps_ass_74_b_legend_addon_rpk_hide_barrel_ext = false,
	wpn_fps_ass_74_b_legend_addon_rpk = "orig",
	wpn_upg_ak_fg_legend_addon_rpk = "orig",
	wpn_upg_ak_fl_legend_addon_rpk = "orig",
	wpn_upg_ak_g_legend_addon_rpk = "orig",
	wpn_upg_ak_s_legend_addon_rpk = "orig",
	--ak74_rodina/saiga
	wpn_fps_ass_74_b_legend_addon_saiga_hide_barrel_ext = false,
	wpn_fps_ass_74_b_legend_addon_saiga = "orig",
	wpn_upg_ak_fg_legend_addon_saiga = "orig",
	wpn_upg_ak_fl_legend_addon_saiga = "orig",
	wpn_upg_ak_g_legend_addon_saiga = "orig",
	wpn_upg_ak_s_legend_addon_saiga = "orig",
	--boot_buck
	wpn_fps_sho_boot_b_legendary_hide_barrel_ext = false,
	wpn_fps_sho_boot_b_legendary = "orig",
	wpn_fps_sho_boot_fg_legendary = "orig",
	wpn_fps_sho_boot_o_legendary = "orig",
	wpn_fps_sho_boot_s_legendary = "orig",
	--deagle_bling
	wpn_fps_pis_deagle_b_legend_hide_barrel_ext = false,
	wpn_fps_pis_deagle_b_legend = "orig",
	--flamethrower_mk2_fire
	wpn_fps_fla_mk2_body_fierybeast = "orig",
	--judge_burn
	wpn_fps_pis_judge_b_legend_hide_barrel_ext = false,
	wpn_fps_pis_judge_b_legend = "orig",
	wpn_fps_pis_judge_g_legend = "orig",
	--ksg_same
	wpn_fps_sho_ksg_b_legendary_hide_barrel_ext = false,
	wpn_fps_sho_ksg_b_legendary = "orig",
	--m16_cola
	wpn_fps_ass_m16_b_legend_hide_barrel_ext = false,
	wpn_fps_ass_m16_b_legend = "orig",
	wpn_fps_ass_m16_fg_legend = "orig",
	wpn_fps_ass_m16_s_legend = "orig",
	--m16_cola/amcar
	wpn_fps_ass_m16_b_legend_addon_amcar_hide_barrel_ext = false,
	wpn_fps_ass_m16_b_legend_addon_amcar = "orig",
	wpn_fps_ass_m16_fg_legend_addon_amcar = "orig",
	wpn_fps_ass_m16_s_legend_addon_amcar = "orig",
	--m16_cola/new_m4
	wpn_fps_ass_m16_b_legend_addon_new_m4_hide_barrel_ext = false,
	wpn_fps_ass_m16_b_legend_addon_new_m4 = "orig",
	wpn_fps_ass_m16_fg_legend_addon_new_m4 = "orig",
	wpn_fps_ass_m16_s_legend_addon_new_m4 = "orig",
	--m16_cola/olympic
	wpn_fps_ass_m16_b_legend_addon_olympic_hide_barrel_ext = false,
	wpn_fps_ass_m16_b_legend_addon_olympic = "orig",
	wpn_fps_ass_m16_fg_legend_addon_olympic = "orig",
	wpn_fps_ass_m16_s_legend_addon_olympic = "orig",
	wpn_fps_ass_m16_s_legend_addon_x_olympic = "orig",
	--m134_bulletstorm
	wpn_fps_lmg_m134_barrel_legendary = "orig",
	wpn_fps_lmg_m134_body_upper_spikey = "orig",
	--model70_baaah
	wpn_fps_snp_model70_b_legend = "orig",
	wpn_fps_snp_model70_s_legend = "orig",
	--new_m14_lones
	wpn_fps_ass_m14_b_legendary = "orig",
	wpn_fps_ass_m14_body_lower_legendary = "orig",
	wpn_fps_ass_m14_body_legendary = "orig",
	wpn_fps_ass_m14_body_upper_legendary = "orig",
	--p90_dallas_sallad
	wpn_fps_smg_p90_b_legend_hide_barrel_ext = false,
	wpn_fps_smg_p90_b_legend = "orig",
	--par_wolf
	wpn_fps_lmg_svinet_b_standard_hide_barrel_ext = false,
	wpn_fps_lmg_svinet_b_standard = "orig",
	wpn_fps_lmg_svinet_s_legend = "orig",
	--r870_waves
	wpn_fps_shot_r870_b_legendary_hide_barrel_ext = false,
	wpn_fps_shot_r870_s_legendary_hide_grip = false,
	wpn_fps_shot_r870_b_legendary = "orig",
	wpn_fps_shot_r870_fg_legendary = "orig",
	wpn_fps_shot_r870_s_legendary = "orig",
	--r870_waves/serbu
	wpn_fps_shot_r870_b_legendary_addon_serbu_hide_barrel_ext = false,
	wpn_fps_shot_r870_s_legendary_addon_serbu_hide_grip = false,
	wpn_fps_shot_r870_b_legendary_addon_serbu = "orig",
	wpn_fps_shot_r870_fg_legendary_addon_serbu = "orig",
	wpn_fps_shot_r870_s_legendary_addon_serbu = "orig",
	--rpg7_boom
	wpn_fps_rpg7_m_grinclown = "orig",
	--serbu_lones
	wpn_fps_shot_shorty_b_legendary_hide_barrel_ext = false,
	wpn_fps_shot_shorty_s_legendary_hide_grip = false,
	wpn_fps_shot_shorty_b_legendary = "orig",
	wpn_fps_shot_shorty_fg_legendary = "orig",
	wpn_fps_shot_shorty_s_legendary = "orig",
	--serbu_lones/r870
	wpn_fps_shot_shorty_b_legendary_addon_r870_hide_barrel_ext = false,
	wpn_fps_shot_shorty_s_legendary_addon_r870_hide_grip = false,
	wpn_fps_shot_shorty_b_legendary_addon_r870 = "orig",
	wpn_fps_shot_shorty_fg_legendary_addon_r870 = "orig",
	wpn_fps_shot_shorty_s_legendary_addon_r870 = "orig",
	--tecci_grunt
	wpn_fps_ass_tecci_b_legend_hide_barrel_ext = false,
	wpn_fps_ass_tecci_b_legend = "orig",
	wpn_fps_ass_tecci_fg_legend = "orig",
	wpn_fps_ass_tecci_s_legend = "orig",
	--x_1911_ginger
	wpn_fps_pis_1911_fl_legendary = "orig",
	wpn_fps_pis_1911_g_legendary = "orig",
}
ncUtils.Settings:load(LegendStats)

Hooks:Add("LocalizationManagerPostInit", "LegendStats-Hooks-LocalizationManagerPostInit", function(loc)
	ncUtils.Localization:load(loc, LegendStats)

	--Hardcode skin name, game doesn't localize it anyways
	for skin_id, skin_data in pairs(LegendStats.legend_data) do
		local submenu_id = "legstats_options_menu/" .. skin_id
		local skin_name = skin_data.name
		loc:add_localized_strings({
			[submenu_id .. "_title"] = skin_name,
			[submenu_id .. "_desc"] = loc:text("legstats_options_skin_desc_template", {skin = skin_name}),
		})
	end

	--Locomotive 12G uses two attachments called "Standard Stock"
	do
		loc:add_localized_strings({
			["legstats_bm_wp_m4_s_standard"] = "CAR-4 " .. loc:text("bm_wp_m4_s_standard"),
			["legstats_bm_wp_r870_s_solid"] = "Locomotive 12G " .. loc:text("bm_wp_r870_s_solid"),
		})
	end

	--Fallback localization for Demon / Big Kahuna attachments.
	if not _G.OSA then
		loc:add_localized_strings({
			["bm_wp_r870_b_legend"] = "Big Kahuna " .. loc:text("bm_menu_barrel"),
			["bm_wp_shorty_b_legend"] = "Demon " .. loc:text("bm_menu_barrel"),
			["bm_wp_shorty_fg_legend"] = "Demon " .. loc:text("bm_menu_foregrip"),
		})
	end
end)

Hooks:Add("MenuManagerInitialize", "LegendStats-Hooks-MenuManagerInitialize", function(menu_manager)
	ncUtils.Menu:register_default_callbacks(LegendStats)

	MenuCallbackHandler.legstats_callback_back = function(self)
		ncUtils.Settings:save(LegendStats)
		if game_state_machine:current_state_name() == "menu_main" then
			LegendStats:process_settings(LegendStats._changed_settings or {})
		end
		LegendStats._changed_settings = {}
	end

	MenuCallbackHandler.legstats_callback_multi = function(self, item)
		LegendStats.settings[item:name()] = item:value()
		LegendStats:set_display_stats(item)
		LegendStats._changed_settings = LegendStats._changed_settings or {}
		LegendStats._changed_settings[item:name()] = item:value()
	end

	--Register hooks for JSON menus
	local menu_path = LegendStats.meta.mod_path .. "menu/"
	local index = ncUtils.FileIO:load_json(menu_path .. "index.json")
	for _, menu_id in ipairs(index or {}) do
		MenuHelper:LoadFromJsonFile(
			menu_path .. menu_id .. ".json",
			LegendStats,
			LegendStats.settings
		)
	end

end)

--Initialize legendary part data.
--Save original legendary stats.
--Get the factory id for the weapon associated with each legendary attachment.
function LegendStats:_init_data()
	if self._data_initialized then
		return true
	end

	local wftd = tweak_data and tweak_data.weapon and tweak_data.weapon.factory
	local wfm = managers and managers.weapon_factory
	local dlc = managers and managers.dlc
	if not wftd or not wfm or not dlc then
		return false
	end

	self._base_part_stats = {}
	self._part_to_factory = {}

	--Process base game legendary attachments.
	--Base game legendary attachments do not have custom_stats.
	--Base game legendary attachments have value=1
	for _, data in pairs(self.legend_data) do
		for part_id, _ in pairs(data.parts) do
			self._base_part_stats[part_id] = deep_clone(wftd.parts[part_id].stats)
			--Important: first entry in weapons should be single not akimbo.
			local weapon_id = data.weapons[1]
			self._part_to_factory[part_id] = wfm:get_factory_id_by_weapon_id(weapon_id)
		end
	end

	--AOLA extended parts.
	--Normal AOLA parts don't need to be processed because they are not shown in menus.
	--They inherit stats from the base part.
	for part_id, extra_weapons in pairs(self.extra_parts) do
		for _, weapon_id in ipairs(extra_weapons) do
			local extended_part_id = part_id .. "_addon_" .. weapon_id
			self._part_to_factory[extended_part_id] = wfm:get_factory_id_by_weapon_id(weapon_id)
		end
	end

	self._data_initialized = true
	return true
end

--Get additional parts for which we need to do stat swaps.
--Base AOLA parts as well as explicitly defined child parts.
--Only returns parts that actually exist.
function LegendStats:_safe_get_children(part_id)
	local children = {}
	if not _G.AOLA then
		return children
	end

	local wftd = tweak_data.weapon.factory

	--If the part is in this list, it's a base-game part.
	if self._base_part_stats[part_id] then
		local aola_part_id = part_id .. "_addon"
		if wftd.parts[aola_part_id] then
			table.insert(children, aola_part_id)
		end
	end

	--LSC-defined equivalents (AK.762 -> Golden AK.762)
	for _, child_part_id in ipairs(self.child_parts[part_id] or {}) do
		if wftd.parts[child_part_id] then
			table.insert(children, child_part_id)
		end
	end

	return children
end

--If changed_settings specified, process those specific settings only.
function LegendStats:process_settings(changed_settings)
	if not self:_init_data() then
		log("[LegendStats] process_settings() data not ready.")
		return
	end

	for k, v in pairs(changed_settings or self.settings) do
		if type(v) == "string" then
			if v ~= "orig" or changed_settings then
				self:_process_stat_swap(v, k)
			end
		elseif type(v) == "boolean" then
			for part_type, data in pairs(self.invis_parts) do
				local suffix = "_hide_" .. part_type
				if ncUtils.String:tail_match(k, suffix) then
					if v then
						local part_id = ncUtils.String:strip_suffix(k, suffix)
						self:_process_hide_part(part_id, part_type)
					end
				end
			end
		end
	end
end

--target_part_id is used it to derive the weapon factory_id.
--wftd needs this to check override tables.
function LegendStats:_get_part_stats(source_part_id, target_part_id)
	if source_part_id == "orig" then
		source_part_id = target_part_id:gsub("_addon.*$", "")
	end

	local wftd = tweak_data.weapon.factory
	if source_part_id ~= "none" then
		if not wftd.parts[source_part_id] then
			log("[LegendStats] _get_part_stats() invalid source: " .. source_part_id)
			return nil, nil
		end
	end

	--Don't need to check if target part exists in wftd.
	--We only need the target part's corresponding weapon's factory id to calculate stats.
	local target_factory_id = self._part_to_factory[target_part_id]
	if not target_factory_id then
		log("[LegendStats] _get_part_stats() missing factory_id for part: " .. target_part_id)
		return nil, nil
	end

	local stats, custom_stats
	if source_part_id == "none" then
		stats = {value = 1}
	elseif self._base_part_stats[source_part_id] then
		stats = deep_clone(self._base_part_stats[source_part_id])
	else
		stats, custom_stats = wftd:lsc_get_part_stats(source_part_id, target_factory_id)
	end
	return stats, custom_stats
end

function LegendStats:_process_stat_swap(source_part_id, target_part_id)
	local wftd = tweak_data.weapon.factory

	--Not an error.
	--Extended legendary attachments trip this without AOLA v2.1
	if not wftd.parts[target_part_id] then
		return
	end

	--Source part validation handled by _get_part_stats().
	local stats, custom_stats = self:_get_part_stats(source_part_id, target_part_id)
	if not stats then
		return
	end

	--BMTD caches stats.value on init.
	--New WFTD stats.value will not be used.
	local function apply_stats(part_id, stats, custom_stats)
		wftd.parts[part_id].stats = deep_clone(stats)
		if custom_stats then
			wftd.parts[part_id].custom_stats = deep_clone(custom_stats)
		else
			wftd.parts[part_id].custom_stats = nil
		end
	end

	local function set_sync_part(target_part_id, source_part_id)
		local target_data = wftd.parts[target_part_id]
		if not target_data.custom or not target_data.based_on then
			return
		end

		if not target_data.lsc_orig_based_on then
			target_data.lsc_orig_based_on = target_data.based_on
		end

		local can_sync_part = true
		local source_data = (source_part_id ~= "orig") and (source_part_id ~= "none") and wftd.parts[source_part_id]
		if not source_data then
			can_sync_part = false
		else
			if source_data.unatainable or self._base_part_stats[source_part_id] then
				can_sync_part = false
			end
			if source_data.custom then
				can_sync_part = false
			end
			if source_data.dlc and not managers.dlc:is_dlc_unlocked(source_data.dlc) then
				can_sync_part = false
			end
		end

		if can_sync_part then
			target_data.based_on = source_part_id
		else
			target_data.based_on = target_data.lsc_orig_based_on
		end
	end

	apply_stats(target_part_id, stats, custom_stats)
	set_sync_part(target_part_id, source_part_id)
	for _, child_part_id in ipairs(self:_safe_get_children(target_part_id)) do
		apply_stats(child_part_id, stats, custom_stats)
		set_sync_part(child_part_id, source_part_id)
	end
end

function LegendStats:_process_hide_part(part_id, hide_type)
	local wftd = tweak_data.weapon.factory

	--Not an error.
	--Extended legendary attachments trip this without AOLA v2.1.
	if not wftd.parts[part_id] then
		return
	end

	local hide_data = self.invis_parts[hide_type]
	if not hide_data then
		log("[LegendStats] _process_hide_part() missing hide type: " .. hide_type)
		return
	end

	local function hide_part(part_id, parent_part_id)
		--Normal AOLA parts use parent factory ids.
		--Extended AOLA parts on different weapons need to define their own factory ids.
		local factory_ids = hide_data[part_id] or (parent_part_id and hide_data[parent_part_id])
		if not factory_ids then
			log("[LegendStats] _process_hide_part() missing factory ids: " .. part_id)
			return
		end

		for _, factory_id in ipairs(factory_ids) do
			wftd:lsc_hide_part_type(part_id, hide_type, factory_id)
		end
	end

	hide_part(part_id)
	for _, child_part_id in ipairs(self:_safe_get_children(part_id)) do
		hide_part(child_part_id, part_id)
	end
end

function LegendStats:set_display_stats(item)
	if not self:_init_data() then
		log("[LegendStats] set_display_stats() data not ready.")
		return
	end

	managers.localization:add_localized_strings({
		[item:parameter("help_id")] = self:_build_stats_string(item),
	})

	local menu = managers.menu:active_menu()
	if menu and menu.renderer then
		local localize = true
		menu.renderer:set_bottom_text(item:parameter("help_id"), localize)
	end
end

function LegendStats:_build_stats_string(item)
	local target_part_id = item:name()
	local source_part_id = item:value()
	if source_part_id == "none" then
		return managers.localization:text("legstats_choice_none")
	end

	if source_part_id == "orig" then
		for _, option in ipairs(item:options()) do
			local parameters = option:parameters()
			if parameters.value == "orig" then
				if parameters.text_id == "legstats_choice_orig_none" then
					return managers.localization:text("legstats_choice_none")
				end
				break
			end
		end
	end

	local stats = self:_get_part_stats(source_part_id, target_part_id)
	if not stats then
		return "ERROR"
	end

	local parsed_stats = {}

	if stats.extra_ammo and stats.extra_ammo ~= 0 then
		table.insert(parsed_stats,
			string.format(
				"%s %+d",
				managers.localization:text("bm_menu_magazine"),
				stats.extra_ammo * 2
			)
		)
	end

	if stats.total_ammo_mod and stats.total_ammo_mod ~= 0 then
		local wfm = managers.weapon_factory
		local target_factory_id = self._part_to_factory[target_part_id]
		local target_weapon_id = wfm:get_weapon_id_by_factory_id(target_factory_id)
		local ammo_change = math.round(
			stats.total_ammo_mod * 0.05 * tweak_data.weapon[target_weapon_id].AMMO_MAX
		)
		table.insert(parsed_stats,
			string.format(
				"%s %+d",
				managers.localization:text("bm_menu_totalammo"),
				ammo_change
			)
		)
	end

	if stats.damage and stats.damage ~= 0 then
		table.insert(parsed_stats,
			string.format(
				"%s %+d",
				managers.localization:text("bm_menu_damage"),
				stats.damage
			)
		)
	end

	if stats.spread and stats.spread ~= 0 then
		table.insert(parsed_stats,
			string.format(
				"%s %+d",
				managers.localization:text("bm_menu_spread"),
				stats.spread * 4
			)
		)
	end

	if stats.recoil and stats.recoil ~= 0 then
		table.insert(parsed_stats,
			string.format(
				"%s %+d",
				managers.localization:text("bm_menu_recoil"),
				stats.recoil * 4
			)
		)
	end

	if stats.concealment and stats.concealment ~= 0 then
		table.insert(parsed_stats,
			string.format(
				"%s %+d",
				managers.localization:text("bm_menu_concealment"),
				stats.concealment
			)
		)
	end

	return table.concat(parsed_stats, ", ")
end

function LegendStats:init_menu()
	if not self:_init_data() then
		log("[LegendStats] init_menu() data not ready.")
		return
	end

	local extended_menus = {
		"legstats_options_menu/m16_cola/amcar",
		"legstats_options_menu/m16_cola/new_m4",
		"legstats_options_menu/m16_cola/olympic",
		"legstats_options_menu/r870_waves/serbu",
		"legstats_options_menu/serbu_lones/r870",
		"legstats_options_menu/ak74_rodina/akm",
		"legstats_options_menu/ak74_rodina/akmsu",
		"legstats_options_menu/ak74_rodina/rpk",
		"legstats_options_menu/ak74_rodina/saiga"
	}
	local wftd = tweak_data.weapon.factory
	local extended_parts_available = wftd.parts.wpn_fps_ass_74_b_legend_addon_akm ~= nil

	--Set stat strings. Disable multiple choice options with only one selection.
	local visited = {}
	local function update_menu(menu_id)
		if visited[menu_id] then
			return
		end
		visited[menu_id] = true

		local menu = MenuHelper:GetMenu(menu_id)
		if menu then
			for _, item in ipairs(menu:items()) do
				local next_node = item:parameter("next_node")
				if next_node then
					update_menu(next_node)
					if not extended_parts_available and table.contains(extended_menus, next_node) then
						item:set_enabled(false)
					end
				else
					if item:type() == "multi_choice" then
						if #item:options() == 1 then
							item:set_enabled(false)
						end
						self:set_display_stats(item)
					end
				end
			end
		end
	end

	update_menu(self.meta.menu_id)
end
