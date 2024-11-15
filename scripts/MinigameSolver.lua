local mod = get_mod("MinigameSolver")

local SettingNames = mod:io_dofile("MinigameSolver/scripts/setting_names")

-- mod:hook_safe(CLASS.MinigameDecodeSymbolsView, "_draw_cursor", function(self, widgets_by_name, decode_start_time, on_target, gameplay_time)
-- 	if on_target then
--         mod:debug("--- [MinigameDecodeSymbolsView._draw_cursor] ---")
--         mod:debug("--------------------")
--     end
-- end)

mod:hook_safe(CLASS.PlayerCharacterStateMinigame, "_update_input", function(self, t)
	mod:debug("--- [PlayerCharacterStateMinigame._update_input] ---")
    mod:debug("time: %f", t)
    mod:debug("_minigame_extension: %s", tostring(self._minigame_extension))
    if self._minigame_extension then
        mod:debug("_minigame: %s", tostring(self._minigame_extension._minigame))
    end
    if self._minigame_extension and self._minigame_extension._minigame and self._minigame_extension._minigame:is_on_target(t) then
        self._minigame_extension:action(self._minigame_extension._action_held ~= true, t)
    end
    mod:debug("--------------------")
end)