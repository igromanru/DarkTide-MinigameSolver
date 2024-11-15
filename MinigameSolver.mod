return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`MinigameSolver` encountered an error loading the Darktide Mod Framework.")

		new_mod("MinigameSolver", {
			mod_script       = "MinigameSolver/scripts/MinigameSolver",
			mod_data         = "MinigameSolver/scripts/MinigameSolver_data",
			mod_localization = "MinigameSolver/scripts/MinigameSolver_localization",
		})
	end,
	packages = {},
}
