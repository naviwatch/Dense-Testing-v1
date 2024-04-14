local mod = get_mod("Dense Testing")

local mutator = mod:persistent_table("Dense Testing")

	------------------------------------------------
	--------------Hooks and Functions---------------
	------------------------------------------------

-- Hooks related to turning the mod on and off.
-- MISC Hooks and Helper Functions
mod:dofile("scripts/mods/Dense Testing/base/base")
mod:dofile("scripts/mods/Dense Testing/base/control")
mod:dofile("scripts/mods/Dense Testing/base/helper_functions")

-- Save existing tables
mod:dofile("scripts/mods/Dense Testing/base/save_tables")

mod:disable_all_hooks()

-- Activation and deactivation command:
mod:command("dense_onslaught_testing", "Toggle Dense Testing. Must be host and in the keep.", function() 
	mutator.toggle()
	if not mutator.active then
		mod:disable_all_hooks()
	end
end)

mutator.start = function()
	-- Variables
	mod.difficulty_level = mod:get("difficulty_level")
	if mod.difficulty_level == 1 then
		mod.gain = 0.75
	elseif mod.difficulty_level == 2 then
		mod.gain = 1
	elseif mod.difficulty_level == 3 then
		mod.gain = 1.75
	else
		mod.gain = mod:get("custom_gain")
	end
	-- Load Custom Spawners
	mod:dofile("scripts/mods/Dense Testing/base/custom_spawners")
	-- Horde Spawner Hooks
	mod:dofile("scripts/mods/Dense Testing/base/horde_spawner")
	-- Load Boss AI
	mod:dofile("scripts/mods/Dense Testing/base/lord_ai")
	-- Load Custom Breed Data
	mod:dofile("scripts/mods/Dense Testing/base/breed_data")

	------------------------------------------------
	---------------------Pacing---------------------
	------------------------------------------------

	-- Reworked BreedPacks
	mod:dofile("scripts/mods/Dense Testing/Mutator/breed_pack")
	-- Ambient Spawning Settings
	mod:dofile("scripts/mods/Dense Testing/Mutator/pack_spawning_settings")
	-- Pacing Timers
	mod:dofile("scripts/mods/Dense Testing/Mutator/pacing_settings")
	-- Intensity Settings
	mod:dofile("scripts/mods/Dense Testing/Mutator/intensity_settings")
	-- Skaven Horde Composition
	mod:dofile("scripts/mods/Dense Testing/Mutator/skaven_horde_composition")
	-- Chaos Horde Composition
	mod:dofile("scripts/mods/Dense Testing/Mutator/chaos_horde_composition")
	-- Beastmen Horde Composition
	mod:dofile("scripts/mods/Dense Testing/Mutator/beastmen_horde_composition")
	-- Special Spawn Settings
	mod:dofile("scripts/mods/Dense Testing/Mutator/specials")
	-- Monster Trigger Settings
	mod:dofile("scripts/mods/Dense Testing/Mutator/monsters")
	-- Patrol Trigger Settings
	mod:dofile("scripts/mods/Dense Testing/Mutator/patrols")

	------------------------------------------------
	---------------------Events---------------------
	------------------------------------------------
	
	-- Generic Event Horde Composition
	mod:dofile("scripts/mods/Dense Testing/Events/event_horde_composition")
	-- Righteous Stand
	mod:dofile("scripts/mods/Dense Testing/Events/righteous_stand")
	-- Convocation of Decay
	mod:dofile("scripts/mods/Dense Testing/Events/convocation_of_decay")
	-- Hunger in the Dark
	mod:dofile("scripts/mods/Dense Testing/Events/hunger_in_the_dark")
	-- Halescourge
	mod:dofile("scripts/mods/Dense Testing/Events/halescourge")
	-- Athel Yenlui
	mod:dofile("scripts/mods/Dense Testing/Events/athel_yenlui")
	-- Screaming Bell
	mod:dofile("scripts/mods/Dense Testing/Events/screaming_bell")
	-- Fort Brachshit
	mod:dofile("scripts/mods/Dense Testing/Events/fort_brachsenbrucke")
	-- Into the Nest
	mod:dofile("scripts/mods/Dense Testing/Events/into_the_nest")
	-- Against the Grain
	mod:dofile("scripts/mods/Dense Testing/Events/against_the_grain")
	--Empire in Flames
	mod:dofile("scripts/mods/Dense Testing/Events/empire_in_flames")
	-- Festering Ground
	mod:dofile("scripts/mods/Dense Testing/Events/festering_ground")
	-- Warcamp
	mod:dofile("scripts/mods/Dense Testing/Events/warcamp")
	-- Skittergate
	--mod:dofile("scripts/mods/Dense Testing/Events/skittergate")
	--]]
	-- The Pit	
	mod:dofile("scripts/mods/Dense Testing/Events/the_pit")
	-- Blightreaper
	mod:dofile("scripts/mods/Dense Testing/Events/blightreaper")
	-- Horn of Magnus
	mod:dofile("scripts/mods/Dense Testing/Events/horn_of_magnus")
	-- Garden of Morr
	mod:dofile("scripts/mods/Dense Testing/Events/garden_of_morr")
	-- Engines of War
	mod:dofile("scripts/mods/Dense Testing/Events/engines_of_war")
	-- Dark Omens
	mod:dofile("scripts/mods/Dense Testing/Events/dark_omens")
	-- Old Haunts
	mod:dofile("scripts/mods/Dense Testing/Events/old_haunts")
	-- Blood in the Darkness
	mod:dofile("scripts/mods/Dense Testing/Events/blood_in_the_darkness")
	-- Enchanter's lair
	mod:dofile("scripts/mods/Dense Testing/Events/enchanters_lair")
	-- Trail of Treachery
	--mod:dofile("scripts/mods/Dense Testing/Events/trail_of_treachery")
	-- Mission of Mercy
	mod:dofile("scripts/mods/Dense Testing/Events/mission_of_mercy")
	-- A Grudge Serve Cold
	mod:dofile("scripts/mods/Dense Testing/Events/grudge_serve_cold")
	-- Khazukan Kazakit-ha
	mod:dofile("scripts/mods/Dense Testing/Events/khazukan_kazakit-ha")

	mod:dofile("scripts/mods/Dense Testing/base/apply_breed_packs")

	mod.create_weights()
	mod:enable_all_hooks()
	mutator.active = true

end

mutator.stop = function()
	-- Execute code to reset all values modified by this mod back to default:
	mod:dofile("scripts/mods/Dense Testing/base/deactivate")
	--mod:network_send("rpc_enable_white_sv", "all", false)
	--mod:network_send("rpc_disable_white_sv", "all", true)
	mod:dofile("scripts/mods/Dense Testing/base/apply_breed_packs")
	mod.create_weights()
	mod:disable_all_hooks()
	mutator.active = false
end
