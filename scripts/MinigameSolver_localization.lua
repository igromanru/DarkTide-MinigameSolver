local mod = get_mod("MinigameSolver")

local SettingNames = mod:io_dofile("MinigameSolver/scripts/setting_names")

return {
  mod_name =
  {
    en = "Minigame Solver",
  },
  mod_description =
  {
    en = "Plays the minigames for you"
  },
  [SettingNames.DecodeSolver] = {
    en = "Solve Decode Minigame"
  },
}
