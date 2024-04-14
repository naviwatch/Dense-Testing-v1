local mod = get_mod("Dense Testing")

-- https://github.com/Aussiemon/Vermintide-2-Source-Code/blob/e2524e01cb1b545febfa4cb04753e22d44f897d8/scripts/settings/terror_events/terror_events_dlc_dwarf_interior.lua

-- I dont know what are these
TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_bell_alert_01 = {
	{
		"set_master_event_running",
		name = "dwarf_interior_bell_alert",
	},
	{
		"delay",
		duration = 2,
	},
	{
		"spawn_special",
		amount = 1,
		breed_name = {
			"skaven_gutter_runner",
			"skaven_poison_wind_globadier",
			"skaven_warpfire_thrower",
		},
	},
	{
		"spawn_special",
		amount = 1,
		breed_name = {
			"skaven_pack_master",
			"skaven_ratling_gunner",
			"skaven_ratling_gunner",
		},
	},
	{
		"delay",
		duration = 10,
	},
	{
		"flow_event",
		flow_event_name = "dwarf_interior_bell_alert_done",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_bell_alert_02 = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_bell_alert_01
TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_bell_alert_03 = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_bell_alert_01

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_bell_alert_04_dummy = {
	{
		"set_master_event_running",
		name = "dwarf_interior_bell_alert",
	},
	{
		"delay",
		duration = 10,
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_bell_alert_05_construction = {
	{
		"set_master_event_running",
		name = "dwarf_interior_bell_alert",
	},
	{
		"delay",
		duration = 10,
	},
}	

-- Assuming this is trigger spawn
TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_bell_alert_06_chasm = {
	{
		"set_master_event_running",
		name = "dwarf_interior_bell_alert",
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "bell_event_chasm_boss",
		breed_name = {
			"skaven_rat_ogre",
			"skaven_stormfiend",
		},
	},
	{
		"delay",
		duration = 10,
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_static_guards_01 = {
	{
		"spawn_at_raw",
		breed_name = "chaos_warrior",
		spawner_id = "dwarf_interior_static_guard_spawner_01",
	},
	{
		"delay",
		duration = 2,
	},
	{
		"spawn_at_raw",
		breed_name = "chaos_warrior",
		spawner_id = "dwarf_interior_static_guard_spawner_02",
	},
	{
		"delay",
		duration = 2,
	},
	{
		"spawn_at_raw",
		breed_name = "chaos_warrior",
		spawner_id = "dwarf_interior_static_guard_spawner_03",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_static_guards_02 = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_static_guards_01
TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_static_guards_03 = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_static_guards_01

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_static_guards_04 = {
	{
		"spawn_at_raw",
		breed_name = "chaos_warrior",
		spawner_id = "dwarf_interior_static_guard_spawner_04",
	},
	{
		"delay",
		duration = 2,
	},
	{
		"spawn_at_raw",
		breed_name = "chaos_warrior",
		spawner_id = "dwarf_interior_static_guard_spawner_05",
	},
	{
		"delay",
		duration = 2,
	},
	{
		"spawn_at_raw",
		breed_name = "chaos_warrior",
		spawner_id = "dwarf_interior_static_guard_spawner_06",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_static_guards_05 = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_static_guards_04

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_static_guards_04_boss = {
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "static_guards_04_boss_spawner",
		breed_name = {
			"skaven_rat_ogre",
			"skaven_stormfiend",
		},
	},
	{
		"delay",
		duration = 10,
	},
}

-- Mid event (literally)
-- Loop > interior brewery a > loop > extra spice a > loop > interior brewery a; etc
TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_start = {
	{
		"control_pacing",
		enable = false,
	},
	{
		"control_specials",
		enable = false,
	},
	{
		"control_hordes",
		enable = true,
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_a = {
	{
		"set_master_event_running",
		name = "brewery_event",
	},
	{
		"set_freeze_condition",
		max_active_enemies = 200,
	},
	{
		"event_horde",
		spawner_id = "brewery_event",
		limit_spawners = 8,
		composition_type = "dn_ratling_spam",
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "dwarf_interior_brewery_specials_01",
		breed_name = {
			"skaven_warpfire_thrower",
			"skaven_ratling_gunner",
		},
	},
	{
		"event_horde",
		spawner_id = "brewery_event",
		limit_spawners = 8,
		composition_type = "athel_wdnmd",
	},
	{
		"delay",
		duration = 30,
	},
	{
		"event_horde",
		spawner_id = "dwarf_interior_brewery_specials_01",
		limit_spawners = 8,
		composition_type = "onslaught_custom_specials_heavy_disabler",
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "dwarf_interior_brewery_specials_01",
		breed_name = {
			"skaven_warpfire_thrower",
			"skaven_ratling_gunner",
		},
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 45,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"flow_event",
		flow_event_name = "dwarf_interior_brewery_restart",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_b = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_a
TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_c = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_a

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_hard_a = {
	{
		"set_master_event_running",
		name = "brewery_event",
	},
	{
		"set_freeze_condition",
		max_active_enemies = 200,
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 5,
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "dwarf_interior_brewery_specials_01",
		breed_name = {
			"skaven_warpfire_thrower",
			"skaven_ratling_gunner",
		},
	},
	{
		"event_horde",
		spawner_id = "dwarf_interior_brewery_specials_01",
		limit_spawners = 8,
		composition_type = "athel_wdnmd",
	},
    {
        "continue_when",
		duration = 20,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"event_horde",
		composition_type = "event_extra_spice_large",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"spawn_special",
		amount = 1,
		breed_name = {
			"skaven_gutter_runner",
			"skaven_poison_wind_globadier",
			"skaven_warpfire_thrower",
		},
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_large",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 45,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"flow_event",
		flow_event_name = "dwarf_interior_brewery_post_pause_start",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_hard_b = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_hard_a
TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_hard_c = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_hard_a
TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_hard_d = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_hard_a

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_pre_pause = {
	{
		"delay",
		duration = 3,
	},
	{
		"flow_event",
		flow_event_name = "dwarf_interior_brewery_hard_start",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_post_pause = {
	{
		"delay",
		duration = 3,
	},
	{
		"flow_event",
		flow_event_name = "dwarf_interior_brewery_restart",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_finale = {
	{
		"set_master_event_running",
		name = "brewery_event",
	},
	{
		"set_freeze_condition",
		max_active_enemies = 100,
	},
	{
		"delay",
		duration = 5,
	},
	{
		"play_stinger",
		stinger_name = "enemy_horde_stinger",
	},
	{
		"event_horde",
		composition_type = "plague_monks_small",
		limit_spawners = 8,
		spawner_id = "brewery_event_finale",
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "dwarf_interior_brewery_specials_04",
		breed_name = {
			"skaven_poison_wind_globadier",
			"skaven_warpfire_thrower",
			"skaven_gutter_runner",
		},
	},
	{
		"delay",
		duration = 10,
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_large",
		limit_spawners = 8,
		spawner_id = "brewery_event_finale",
	},
	{
		"delay",
		duration = 10,
	},
	{
		"continue_when",
		duration = 40,
		condition = function (t)
			return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave", "skaven_storm_vermin_commander") < 5
		end,
	},
	{
		"flow_event",
		flow_event_name = "dwarf_interior_brewery_finale_end",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_brewery_loop = {
	{
		"set_master_event_running",
		name = "brewery_event",
	},
	{
		"set_freeze_condition",
		max_active_enemies = 200,
	},
	{
		"event_horde",
		composition_type = "dn_skaven_pursuit",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 5,
	},
	{
		"event_horde",
		composition_type = "plague_monks_small",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "dwarf_interior_brewery_specials_01",
		breed_name = {
			"skaven_pack_master",
			"skaven_ratling_gunner",
			"skaven_warpfire_thrower"
		},
	},
	{
		"spawn_special",
		amount = 2,
		breed_name = {
			"skaven_gutter_runner",
			"skaven_warpfire_thrower",
			"skaven_warpfire_thrower",
		},
	},
	{
		"event_horde",
		composition_type = "onslaught_custom_specials_heavy_disabler",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 25,
	},
    {
        "continue_when",
		duration = 60,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
        end
    },
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 5,
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "dwarf_interior_brewery_specials_01",
		breed_name = {
			"skaven_pack_master",
			"skaven_ratling_gunner",
			"skaven_warpfire_thrower"
		},
	},
	{
		"event_horde",
		composition_type = "onslaught_custom_special_denial",
		limit_spawners = 4,
		spawner_id = "brewery_event",
	},
	{
		"event_horde",
		composition_type = "onslaught_custom_specials_heavy_disabler",
		limit_spawners = 4,
		spawner_id = "brewery_event",
	},
	{
		"event_horde",
		composition_type = "storm_vermin_small",
		limit_spawners = 4,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 60,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
        end
    },
	{
		"event_horde",
		composition_type = "dn_skaven_shielded_trash",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 5,
	},
	{
		"event_horde",
		composition_type = "dn_skaven_elites",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"event_horde",
		composition_type = "athel_wdnmd",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"event_horde",
		composition_type = "onslaught_custom_specials_heavy_disabler",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"event_horde",
		composition_type = "athel_wdnmd",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 25,
	},
    {
        "continue_when",
		duration = 60,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"event_horde",
		composition_type = "dn_skaven_pursuit",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 5,
	},
	{
		"event_horde",
		composition_type = "plague_monks_small",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "dwarf_interior_brewery_specials_01",
		breed_name = {
			"skaven_pack_master",
			"skaven_ratling_gunner",
			"skaven_warpfire_thrower"
		},
	},
	{
		"event_horde",
		composition_type = "onslaught_custom_special_disabler",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"event_horde",
		composition_type = "storm_vermin_small",
		limit_spawners = 8,
		spawner_id = "brewery_event",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 45,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"flow_event",
		flow_event_name = "dwarf_interior_brewery_loop_restart",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_great_hall_tunnels = {
	{
		"set_master_event_running",
		name = "great_hall_spawn",
	},
	{
		"set_freeze_condition",
		max_active_enemies = 100,
	},
	{
		"enable_bots_in_carry_event",
	},
	{
		"event_horde",
		composition_type = "event_large",
		limit_spawners = 8,
		spawner_id = "tunnel_spawn",
	},
	{
		"delay",
		duration = 5,
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "downstairs_tunnel_gutter_loop",
		breed_name = {
			"skaven_gutter_runner",
		},
	},
	{
		"delay",
		duration = 5,
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "back_tunnel_spawn_special",
		breed_name = {
			"skaven_ratling_gunner",
		},
	},
	{
		"delay",
		duration = 5,
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		limit_spawners = 4,
		spawner_id = "tunnel_spawn",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 20,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"delay",
		duration = 5,
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_large",
		limit_spawners = 8,
		spawner_id = "tunnel_spawn",
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "downstairs_tunnel_special_loop",
		breed_name = {
			"skaven_warpfire_thrower",
			"skaven_poison_wind_globadier",
			"skaven_pack_master",
		},
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "downstairs_tunnel_special_loop",
		breed_name = {
			"skaven_warpfire_thrower",
			"skaven_poison_wind_globadier",
			"skaven_pack_master",
		},
	},
	{
		"delay",
		duration = 10,
	},
	{
		"continue_when",
		duration = 20,
		condition = function (t)
			return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander", "skaven_clan_rat_with_shield") < 3
		end,
	},
	{
		"event_horde",
		composition_type = "event_large",
		limit_spawners = 8,
		spawner_id = "tunnel_spawn",
	},
	{
		"delay",
		duration = 5,
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "downstairs_tunnel_gutter_loop",
		breed_name = {
			"skaven_gutter_runner",
		},
	},
	{
		"delay",
		duration = 5,
	},
	{
		"spawn_at_raw",
		amount = 1,
		spawner_id = "back_tunnel_spawn_special",
		breed_name = {
			"skaven_ratling_gunner",
		},
	},
	{
		"delay",
		duration = 5,
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		limit_spawners = 4,
		spawner_id = "tunnel_spawn",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 20,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"delay",
		duration = 5,
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_large",
		limit_spawners = 8,
		spawner_id = "tunnel_spawn",
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		limit_spawners = 8,
		composition_type = "onslaught_custom_specials_heavy_denial",
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		limit_spawners = 8,
		composition_type = "onslaught_custom_special_disabler",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 45,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"flow_event",
		flow_event_name = "dwarf_interior_great_hall_done",
	}
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_great_hall_extra_spice_event = {
	{
		"set_master_event_running",
		name = "great_hall_spawn",
	},
	{
		"set_freeze_condition",
		max_active_enemies = 100,
	},
	{
		"enable_bots_in_carry_event",
	},
	{
		"event_horde",
		composition_type = "event_medium",
		limit_spawners = 8,
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"delay",
		duration = 5,
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		limit_spawners = 8,
		composition_type = "onslaught_custom_specials_heavy_disabler",
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		limit_spawners = 8,
		composition_type = "onslaught_custom_specials_heavy_disabler",
	},
	{
		"event_horde",
		composition_type = "dn_skaven_pursuit",
		limit_spawners = 8,
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"delay",
		duration = 10,
	},
	{
		"continue_when",
		duration = 40,
		condition = function (t)
			return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_ratling_gunner", "skaven_warpfire_thrower", "skaven_poison_wind_globadier", "skaven_pack_master") < 1
		end,
	},
	{
		"event_horde",
		composition_type = "event_medium",
		limit_spawners = 8,
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"delay",
		duration = 5,
	},
	{
		"spawn_special",
		amount = 1,
		breed_name = {
			"skaven_ratling_gunner",
			"skaven_warpfire_thrower",
			"skaven_poison_wind_globadier",
			"skaven_pack_master",
		},
	},
	{
		"event_horde",
		composition_type = "dn_skaven_pursuit",
		limit_spawners = 8,
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"delay",
		duration = 10,
	},
	{
		"continue_when",
		duration = 40,
		condition = function (t)
			return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_ratling_gunner", "skaven_warpfire_thrower", "skaven_poison_wind_globadier", "skaven_pack_master") < 1
		end,
	},
	{
		"flow_event",
		flow_event_name = "dwarf_interior_great_hall_extra_spice_done",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_great_hall_tunnel_A_extra = {
	{
		"set_master_event_running",
		name = "great_hall_spawn",
	},
	{
		"set_freeze_condition",
		max_active_enemies = 100,
	},
	{
		"enable_bots_in_carry_event",
	},
	{
		"delay",
		duration = 10,
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		composition_type = "onslaught_custom_specials_heavy_denial",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 45,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		composition_type = "onslaught_custom_specials_heavy_denial",
	},
	{
		"delay",
		duration = 10,
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		composition_type = "onslaught_custom_specials_heavy_denial",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 45,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		composition_type = "onslaught_custom_specials_heavy_denial",
	},
	{
		"delay",
		duration = 10,
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		composition_type = "onslaught_custom_specials_heavy_denial",
	},
	{
		"delay",
		duration = 10,
	},
    {
        "continue_when",
		duration = 45,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"event_horde",
		composition_type = "event_extra_spice_medium",
		spawner_id = "great_hall_air_vent_spawners",
	},
	{
		"event_horde",
		spawner_id = "downstairs_tunnel_special_loop",
		composition_type = "onslaught_custom_specials_heavy_denial",
	},
	{
		"flow_event",
		flow_event_name = "dwarf_interior_great_hall_upstairs_tunnel_extra_done",
	},
}

TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_great_hall_tunnel_B_extra = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_great_hall_tunnel_A_extra
TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_great_hall_tunnel_C_extra = TerrorEventBlueprints.dlc_dwarf_interior.dwarf_interior_great_hall_tunnel_A_extra