local mod = get_mod("MinigameSolver")

local SettingNames = mod:io_dofile("MinigameSolver/scripts/setting_names")

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	allow_rehooking = true,
	options = {
		widgets =
		{
			{
				setting_id = SettingNames.DecodeSolver,
				type = "checkbox",
				default_value = true
			},
		},
	},
}
