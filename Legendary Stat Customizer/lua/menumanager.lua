_G[ModPath] = _G[ModPath] or {}
if _G[ModPath][RequiredScript] then return end
_G[ModPath][RequiredScript] = true

Hooks:PostHook(MenuManager, "init", "LegendStats-PostHook-MenuManager:init", function(self, ...)
	if self._is_start_menu then
		return
	end

	local menu = self._registered_menus and self._registered_menus.menu_pause
	local node = menu and menu.data and menu.data:get_node("blt_options")
	local item = node and node:item(LegendStats.meta.menu_id)
	if item then
		item:set_enabled(false)
	end
end)
