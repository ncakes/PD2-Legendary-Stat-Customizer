_G[ModPath] = _G[ModPath] or {}
if _G[ModPath][RequiredScript] then return end
_G[ModPath][RequiredScript] = true

Hooks:PostHook(WeaponFactoryTweakData, "init", "LegendStats-PostHook-WeaponFactoryTweakData:init", function(self)
	local invalid_values = false
	for setting_id, value in pairs(LegendStats.settings) do
		if type(value) == "string" then
			if value ~= "orig" and value ~= "none" and not self.parts[value] then
				log("[LegendStats] invalid part_id: ", value, setting_id)
				value = "orig"
				LegendStats.settings[setting_id] = value
				invalid_values = true
			end
		end
	end
	if invalid_values then
		ncUtils.Settings:save(LegendStats)
	end
end)

--Get the stats of part_id.
--If factory_id is specified, checks the override table of the weapon first.
function WeaponFactoryTweakData:lsc_get_part_stats(part_id, factory_id)
	local part = self.parts[part_id]
	local weapon_data = factory_id and self[factory_id]
	local override = weapon_data and weapon_data.override and weapon_data.override[part_id]

	local stats = override and override.stats or part.stats
	local custom_stats = override and override.custom_stats or part.custom_stats
	return stats, custom_stats
end

function WeaponFactoryTweakData:lsc_hide_part_type(part_id, part_type, factory_id, use_factory_override)
	for _, check_part_id in ipairs(self[factory_id].uses_parts) do
		local check_type = self.parts[check_part_id] and self.parts[check_part_id].type
		if check_type == part_type then
			if not use_factory_override then
				self:_lsc_hide_part_basic(part_id, check_part_id)
			else
				self:_lsc_hide_part_factory_override(part_id, check_part_id, factory_id)
			end
		end
	end
end

function WeaponFactoryTweakData:_lsc_hide_part_basic(part_id, hide_part_id)
	self.parts[part_id].override = self.parts[part_id].override or {}
	self.parts[part_id].override[hide_part_id] = self.parts[part_id].override[hide_part_id] or {}
	self.parts[part_id].override[hide_part_id].unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
end

--Only needed if part_id is available on multiple weapons and needs per-weapon behavior.
function WeaponFactoryTweakData:_lsc_hide_part_factory_override(part_id, hide_part_id, factory_id)
	self[factory_id].override = self[factory_id].override or {}
	self[factory_id].override[part_id] = self[factory_id].override[part_id] or {}
	if not self[factory_id].override[part_id].override then
		if self.parts[part_id].override then
			self[factory_id].override[part_id].override = deep_clone(self.parts[part_id].override)
		else
			self[factory_id].override[part_id].override = {}
		end
	end

	self[factory_id].override[part_id].override[hide_part_id] = self[factory_id].override[part_id].override[hide_part_id] or {}
	self[factory_id].override[part_id].override[hide_part_id].unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
end
