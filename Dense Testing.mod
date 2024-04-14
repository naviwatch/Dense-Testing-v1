return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Dense Testing` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("Dense Testing", {
			mod_script       = "scripts/mods/Dense Testing/Dense Testing",
			mod_data         = "scripts/mods/Dense Testing/Dense Testing_data",
			mod_localization = "scripts/mods/Dense Testing/Dense Testing_localization",
		})
	end,
	packages = {
		"resource_packages/Dense Testing/Dense Testing",
	},
}
