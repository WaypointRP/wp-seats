Config = {}

-- Frameworks
-- Supported framework options are listed next to each option
-- If the framework you are using is not listed, you will need to modify the framework.lua code to work with your framework
-- Note: If using ox for any option, enable @ox_lib/init.lua in the manifest!

Config.Framework = 'qb'     -- 'qb', 'esx'
Config.Notify = 'qb'        -- 'qb', 'esx', 'ox' 
Config.Target = 'qb'        -- 'qb', 'ox'

-- This is the amount of time to wait and check that the player was able to make it into the seat
-- If the time is elapsed and they are not seated, they will be teleported into the seat
-- You can adjust the invidivual time on each seat via options.timeout
Config.SitScenarioTimeout = 6000

-- X offset moves it left/right
-- Y offset moves it forward/back
-- Z offset moves it up/down
Config.Seats = {
	-- BENCH
    { model = "prop_bench_01a", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_01b", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_01c", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_03", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_04", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_05", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_06", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_05", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_08", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_09", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_10", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_bench_11", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_fib_3b_bench", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_ld_bench01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
    { model = "prop_wait_bench_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	-- CHAIR
	{ model = "v_club_stagechair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "hei_prop_heist_off_chair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "hei_prop_hei_skid_chair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_01a", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_01b", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_03", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_04a", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_04b", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_05", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_06", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_05", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_08", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = -0.25, z = 0.0 }},
	{ model = "prop_chair_09", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chair_10", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_chateau_chair_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_clown_chair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_cs_office_chair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_direct_chair_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_direct_chair_02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_gc_chair02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_off_chair_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_off_chair_03", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_off_chair_04", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_off_chair_04b", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_off_chair_04_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_off_chair_05", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_old_deck_chair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_old_wood_chair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = -0.2 }},
	{ model = "prop_rock_chair_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_skid_chair_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = -0.1, y = 0.0, z = -0.2 }, skipTarget = true},
	{ model = "prop_skid_chair_02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = -0.1, y = 0.0, z = -0.2 }, skipTarget = true},
	{ model = "prop_skid_chair_03", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = -0.1, y = 0.0, z = -0.2 }, skipTarget = true},
	{ model = "prop_chair_08", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.1, y = 0.0, z = -0.23 }},
	{ model = "xm3_prop_xm3_folding_chair_01a", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.1, z = 0.0 }},
	{ model = "prop_sol_chair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_wheelchair_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = -0.2 }},
	{ model = "prop_wheelchair_01_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "p_armchair_01_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "p_clb_officechair_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "p_dinechair_01_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "p_ilev_p_easychair_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "p_soloffchair_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "p_yacht_chair_01_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "v_club_officechair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "v_corp_bk_chair3", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "v_corp_cd_chair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "v_corp_offchair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "v_ilev_chair02_ped", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = -0.25 }},
	{ model = "v_ilev_hd_chair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "v_ilev_p_easychair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "v_ret_gc_chair03", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_ld_farm_chair01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = { x = 0.0, y = 0.0, z = 0.0 }},
	{ model = "prop_table_04_chr", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = -0.1, z = 0.0}},
	{ model = "prop_table_05_chr", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_table_06_chr", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ilev_leath_chr", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_table_01_chr_a", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = -0.3}},
	{ model = "prop_table_01_chr_b", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_table_02_chr", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_table_03b_chr", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_table_03_chr", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_torture_ch_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ilev_fh_dineeamesa", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "ba_prop_battle_club_chair_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = -0.3}},
	{ model = "prop_stool_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.25}},
	{ model = "v_res_fa_chair01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_corp_lazychair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "p_soloffchair_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_res_tre_stool", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = -0.2}},
	{ model = "ba_prop_int_edgy_stool", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.2}},
	{ model = "v_med_cor_medstool", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.1}},
	{ model = "apa_mp_h_stn_chairarm_24", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "xm_lab_chairarm_24", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "ex_mp_h_stn_chairarm_24", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "vw_prop_casino_chair_01a", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.1, y = 0.0, z = 0.3}},
	{ model = "v_ilev_m_dinechair", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ilev_fh_kitchenstool", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ilev_tort_stool", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ilev_fh_kitchenstool", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ilev_fh_kitchenstool", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ilev_fh_kitchenstool", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ilev_fh_kitchenstool", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "hei_prop_yah_seat_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "hei_prop_yah_seat_02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "hei_prop_yah_seat_03", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_waiting_seat_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_yacht_seat_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_yacht_seat_02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_yacht_seat_03", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_hobo_seat_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_rub_couch01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "miss_rub_couch_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_ld_farm_couch01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_ld_farm_couch02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_rub_couch02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_rub_couch03", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_rub_couch04", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "sum_mp_h_yacht_armchair_04", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "p_lev_sofa_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "p_res_sofa_l_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "p_v_med_p_sofa_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "p_yacht_sofa_01_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ilev_m_sofa", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_res_tre_sofa_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_tre_sofa_mess_a_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_tre_sofa_mess_b_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_tre_sofa_mess_c_s", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_roller_car_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_roller_car_02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "v_ret_gc_chair02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = -0.2}},
	{ model = "v_serv_ct_chair02", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_ld_toilet_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = -0.2}},
	{ model = "prop_patio_lounger1", scenario = 'PROP_HUMAN_SEAT_SUNLOUNGER', offset = {x = 0.0, y = -0.2, z = -0.1}, options = {timeout = 12000}},
	{ model = "v_ret_chair_white", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "prop_ld_toilet_01", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}},
	{ model = "imp_prop_impexp_offchair_01a", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = -0.3}},
	{ model = "apa_mp_h_din_stool_04", scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.1, y = 0.0, z = 0.35}},
	
	{ model = -1507293404, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}}, -- davis pd jail bench
	{ model = -729914417, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}}, -- davis pd 2 seat bench
	{ model = -1692811878, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}}, -- davis pd chair
	{ model = 1577885496, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}}, -- davis pd chair
	{ model = 1889748069, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}}, -- davis pd office chair
	{ model = 1816935351, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}}, -- davis pd office chair
	{ model = 567446751, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}}, -- popular pd jail bench
	{ model = 1078144893, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.3}}, -- Bahama's Bar Chair
	{ model = -1015375034, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0, heading = 180.0}}, -- Fight Ring Chairs
	{ model = -1737090544, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = -0.3}}, -- Court house benches behind defendant 
	{ model = -634790943, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = -0.1, y = 0.15, z = -0.3, heading = -35.0}}, -- Ocean Medical Waiting room
	{ model = 1816935351, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}}, -- Reception chair at BCSO Hq
	{ model = -212710979, scenario = 'PROP_HUMAN_SEAT_BENCH', offset = {x = 0.0, y = 0.0, z = 0.0}}, -- Chairs in BCSO Office infront of desk
}