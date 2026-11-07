_G[ModPath] = _G[ModPath] or {}
if _G[ModPath][RequiredScript] then return end
_G[ModPath][RequiredScript] = true

Hooks:PostHook(WorkshopManager, "init", "LegendStats-PostHook-WorkshopManager:init", function(...)
	LegendStats:process_settings()
	LegendStats:init_menu()
end)
