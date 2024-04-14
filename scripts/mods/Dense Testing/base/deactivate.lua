local mod = get_mod("Dense Testing")
local mutator = mod:persistent_table("Dense Testing")

    PackSpawningSettings = table.clone(mod.OriginalPackSpawningSettings)
	RoamingSettings = table.clone(mod.OriginalRoamingSettings)
	PacingSettings = table.clone(mod.OriginalPacingSettings)
	IntensitySettings = table.clone(mod.OriginalIntensitySettings)
	RecycleSettings = table.clone(mod.OriginalRecycleSettings)
	HordeCompositions = table.clone(mod.OriginalHordeCompositions)
	HordeCompositionsPacing = table.clone(mod.OriginalHordeCompositionsPacing)
	HordeSettings = table.clone(mod.OriginalHordeSettings)
	SpecialsSettings = table.clone(mod.OriginalSpecialsSettings)
	GenericTerrorEvents = table.clone(mod.OriginalGenericTerrorEvents)
	TerrorEventBlueprints = table.clone(mod.OriginalTerrorEventBlueprints)
	BossSettings = table.clone(mod.OriginalBossSettings)
	PatrolFormationSettings = table.clone(mod.OriginalPatrolFormationSettings)
	mod:dofile("scripts/settings/conflict_settings")