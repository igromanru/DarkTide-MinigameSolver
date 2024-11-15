local mod = get_mod("MinigameSolver")

local SettingNames = mod:io_dofile("MinigameSolver/scripts/setting_names")

local decode_on_taget = false

local cooldown = 0.0
function mod.update(dt)
    if cooldown > 0 then
        cooldown = cooldown - dt
    end
end

mod:hook_safe(CLASS.MinigameDecodeSymbolsView, "_draw_cursor", function(self, widgets_by_name, decode_start_time, on_target, gameplay_time)
	mod:debug("--- [MinigameDecodeSymbolsView._draw_cursor] ---")
    decode_on_taget = on_target
    mod:debug("--------------------")
end)

mod:hook("InputService", "_get", function(func, self, action_name)
    if cooldown <= 0 and decode_on_taget and action_name == "action_one_hold" then
        cooldown = 0.05
        decode_on_taget = false
        return true 
    end
    return func(self, action_name)
end)

