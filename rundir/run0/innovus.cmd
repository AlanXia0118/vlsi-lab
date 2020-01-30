#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Jan 29 17:35:25 2020                
#                                                     
#######################################################

#@(#)CDS: Innovus v15.23-s045_1 (64bit) 04/22/2016 12:32 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 15.23-s045_1 NR160414-1105/15_23-UB (database version 2.30, 317.6.1) {superthreading v1.26}
#@(#)CDS: AAE 15.23-s014 (64bit) 04/22/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 15.23-s022_1 () Apr 22 2016 09:38:45 ( )
#@(#)CDS: SYNTECH 15.23-s008_1 () Apr 12 2016 21:52:59 ( )
#@(#)CDS: CPE v15.23-s045
#@(#)CDS: IQRC/TQRC 15.1.4-s213 (64bit) Tue Feb  9 17:31:28 PST 2016 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_pwr_net vdd
set init_gnd_net gnd
set init_verilog ../../desdir/netlist/aes_cipher_top.v
set init_design_netlisttype Verilog
set init_design_settop 1
set init_top_cell aes_cipher_top
set init_lef_file ../../libdir/lef/tcbn65gplus_8lmT2.lef
create_library_set -name WC_LIB -timing $worst_timing_lib
create_library_set -name BC_LIB -timing $best_timing_lib
create_rc_corner -name Cmax -cap_table $worst_captbl -T 125
create_rc_corner -name Cmin -cap_table $best_captbl -T -40
create_delay_corner -name WC -library_set WC_LIB -rc_corner Cmax
create_delay_corner -name BC -library_set BC_LIB -rc_corner Cmin
create_constraint_mode -name CON -sdc_file [list $sdc]
create_analysis_view -name WC_VIEW -delay_corner WC -constraint_mode CON
create_analysis_view -name BC_VIEW -delay_corner BC -constraint_mode CON
init_design -setup WC_VIEW -hold BC_VIEW
set_interactive_constraint_modes {CON}
setDesignMode -process 65
floorPlan -site core -r 1 0.50 10.0 10.0 10.0 10.0
createPlaceBlockage -box {10 90 40 170}
createPlaceBlockage -box {45 90 75 170}
createPlaceBlockage -box {185 90 215 170}
createPlaceBlockage -box {220 90 250 170}
setDrawView fplan
gui_select -rect {-225.156 166.983 1.224 146.073}
uiSetTool move
selectObject Module u0
setObjFPlanBox Module u0 77.805 77.875 190.41 189.3705
setObjFPlanBox Module u0 77.800 78.400 179.419 190.000
setObjFPlanBox Module u0 77.800 78.400 181.237 190.000
setObjFPlanBox Module u0 77.800 84.251 181.200 190.000
setObjFPlanBox Module u0 77.800 83.800 181.200 176.984
setObjFPlanBox Module u0 77.800 83.800 181.200 174.257
setObjFPlanBox Module u0 77.800 86.978 181.200 173.800
setObjFPlanBox Module u0 77.800 84.251 181.200 173.800
deselectAll
selectObject Module us10
setObjFPlanBox Module us10 12.6845 200.92 59.1455 246.9235
setObjFPlanBox Module us10 12.600 222.442 59.000 247.600
setObjFPlanBox Module us10 12.600 209.714 59.000 247.600
setObjFPlanBox Module us10 12.6 210.709 59.0 248.509
setObjFPlanBox Module us10 12.600 215.169 59.000 249.400
deselectAll
selectObject Module us22
setObjFPlanBox Module us22 12.792 165.466 58.376 210.601
setObjFPlanBox Module us22 13.7095 164.8 59.3095 209.8
setObjFPlanBox Module us22 13.800 177.894 59.400 209.800
setObjFPlanBox Module us22 13.800 174.257 59.400 209.800
deselectAll
selectObject Module us11
setObjFPlanBox Module us11 65.5095 204.557 111.372 249.9675
setObjFPlanBox Module us11 65.600 215.169 111.400 249.400
setObjFPlanBox Module us11 64.691 215.2 110.491 249.4
deselectAll
selectObject Module us23
setObjFPlanBox Module us23 63.54 163.5595 109.9385 209.501
setObjFPlanBox Module us23 63.600 175.757 110.000 209.800
setObjFPlanBox Module us00 -182.344 101.513 -136.816 146.593
deselectAll
selectObject Module us00
setObjFPlanBox Module us00 144.7745 204.641 190.3025 249.7205
setObjFPlanBox Module us00 144.800 214.513 190.400 249.400
deselectAll
selectObject Module us12
setObjFPlanBox Module us12 144.8335 167.175 190.049 211.945
setObjFPlanBox Module us12 144.800 178.385 190.000 211.600
setObjFPlanBox Module us12 144.800 177.071 190.000 211.600
deselectAll
selectObject Module us30
setObjFPlanBox Module us30 201.8995 203.6285 247.8965 249.1725
setObjFPlanBox Module us30 201.800 215.169 247.800 249.400
deselectAll
selectObject Module us01
setObjFPlanBox Module us01 201.4695 166.5425 246.878 211.5035
setObjFPlanBox Module us01 201.400 176.414 246.800 211.600
setObjFPlanBox Module us01 201.400 177.728 246.800 211.600
deselectAll
selectObject Module us13
setObjFPlanBox Module us13 12.0385 35.1445 57.845 80.5
setObjFPlanBox Module us13 12.000 53.581 57.800 80.200
setObjFPlanBox Module us13 12.000 49.639 57.800 80.200
setObjFPlanBox Module us13 12.000 45.698 57.800 80.200
setObjFPlanBox Module us13 12.0 47.3135 57.8 81.5135
deselectAll
selectObject Module us31
setObjFPlanBox Module us31 12.082 0.0 57.881 45.348
setObjFPlanBox Module us31 12.000 12.854 57.800 46.000
setObjFPlanBox Module us31 12.0 12.2865 57.8 44.6865
setObjFPlanBox Module us31 12.000 11.800 57.800 45.041
deselectAll
selectObject Module us13
setObjFPlanBox Module us13 12.0 49.1135 57.8 83.3135
deselectAll
selectObject Module us31
setObjFPlanBox Module us31 12.0 13.7705 57.8 46.1705
setObjFPlanBox Module us31 12.000 12.198 57.800 46.000
deselectAll
selectObject Module us02
setObjFPlanBox Module us02 61.642 35.8265 107.3775 81.1115
setObjFPlanBox Module us02 60.943 35.857 106.743 80.857
setObjFPlanBox Module us02 61.000 50.953 106.800 80.200
setObjFPlanBox Module us02 62.971 52.0565 108.771 80.8565
setObjFPlanBox Module us02 63.000 42.413 108.800 80.200
setObjFPlanBox Module us02 63.000 44.384 108.800 80.200
deselectAll
selectObject Module us20
setObjFPlanBox Module us20 63.1 -4.267 108.6205 40.805
deselectAll
selectObject Module us02
setObjFPlanBox Module us02 62.343 44.857 108.143 80.857
deselectAll
selectObject Module u0
setObjFPlanBox Module u0 77.8 82.4865 181.2 172.4865
setObjFPlanBox Module u0 77.8 83.9705 181.2 173.9705
setObjFPlanBox Module u0 77.800 87.081 181.200 173.800
setObjFPlanBox Module u0 77.8 86.743 181.2 173.143
setObjFPlanBox Module u0 77.800 85.767 181.200 173.800
deselectAll
selectObject Module us02
setObjFPlanBox Module us02 62.4 46.8275 108.2 82.8275
deselectAll
selectObject Module us20
setObjFPlanBox Module us20 63.0 -0.9705 108.6 44.0295
setObjFPlanBox Module us20 62.3435 -4.255 107.9435 40.745
setObjFPlanBox Module us20 77.508 -4.255 123.108 40.745
deselectAll
selectObject Module us02
setObjFPlanBox Module us02 61.7435 47.314 107.5435 83.314
deselectAll
selectObject Module us20
setObjFPlanBox Module us20 61.835 1.0 107.435 46.0
setObjFPlanBox Module us20 61.800 1.000 113.716 46.000
setObjFPlanBox Module us20 61.800 12.198 113.800 46.000
setObjFPlanBox Module us20 61.800 14.825 113.800 46.000
deselectAll
selectObject Module us31
setObjFPlanBox Module us31 11.343 13.114 57.143 47.314
setObjFPlanBox Module us31 11.400 12.198 57.200 47.800
setObjFPlanBox Module us31 11.400 13.511 57.200 47.800
deselectAll
selectObject Module us20
setObjFPlanBox Module us20 61.1435 14.7435 113.1435 45.3435
setObjFPlanBox Module us20 61.200 15.400 111.089 46.000
deselectAll
selectObject Module us32
setObjFPlanBox Module us32 145.901 37.4415 192.643 83.723
setObjFPlanBox Module us32 146.000 47.011 192.800 83.800
setObjFPlanBox Module us32 142.7155 47.143 189.5155 83.143
deselectAll
selectObject Module us03
setObjFPlanBox Module us03 142.848 -0.301 188.52 44.921
setObjFPlanBox Module us03 142.800 13.511 188.400 46.000
setObjFPlanBox Module us03 144.7705 13.6 190.3705 46.0
setObjFPlanBox Module us03 142.619 13.600 190.400 46.000
deselectAll
selectObject Module us21
setObjFPlanBox Module us21 199.2675 40.3995 245.0105 85.692
setObjFPlanBox Module us21 198.543 40.6 244.343 85.6
setObjFPlanBox Module us21 198.600 49.639 244.400 85.600
deselectAll
selectObject Module us33
setObjFPlanBox Module us33 198.555 1.314 244.354 46.662
setObjFPlanBox Module us33 198.600 15.482 244.400 46.000
setObjFPlanBox Module us33 198.6 12.7725 244.4 43.3725
setObjFPlanBox Module us33 198.600 13.600 244.400 47.011
setObjFPlanBox Module us33 198.6 12.943 244.4 47.143
uiSetTool move
report_timing -max_paths 5 > ${design}.post_route.timing.rpt
report_power -outfile aes_cipher_top.post_route.power.rpt
summaryReport -nohtml -outfile aes_cipher_top.post_route.summary.rpt
saveDesign floorplan.enc
setPlaceMode -timingDriven true -reorderScan false -congEffort medium -modulePlan false
setOptMode -effort high -powerEffort high -leakageToDynamicRatio 0.5 -fixFanoutLoad true -restruct true -verbose true
place_opt_design
saveDesign placement.enc
report_timing -max_paths 5 > ${design}.post_route.timing.rpt
report_power -outfile aes_cipher_top.post_route.power.rpt
summaryReport -nohtml -outfile aes_cipher_top.post_route.summary.rpt
set_ccopt_property -update_io_latency false
create_ccopt_clock_tree_spec -file ../../desdir/constraints/aes_cipher_top.ccopt
ccopt_design
set_propagated_clock [all_clocks]
optDesign -postCTS -hold
saveDesign cts.enc
report_timing -max_paths 5 > ${design}.post_route.timing.rpt
report_power -outfile aes_cipher_top.post_route.power.rpt
summaryReport -nohtml -outfile aes_cipher_top.post_route.summary.rpt
setNanoRouteMode -quiet -drouteAllowMergedWireAtPin false
setNanoRouteMode -quiet -drouteFixAntenna true
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeSiEffort medium
setNanoRouteMode -quiet -routeWithSiPostRouteFix false
setNanoRouteMode -quiet -drouteAutoStop true
setNanoRouteMode -quiet -routeSelectedNetOnly false
setNanoRouteMode -quiet -drouteStartIteration default
routeDesign
setExtractRCMode -engine postRoute
extractRC
setAnalysisMode -analysisType onChipVariation -cppr both
optDesign -postRoute -setup -hold
saveDesign route.enc
report_timing -max_paths 5 > ${design}.post_route.timing.rpt
report_power -outfile aes_cipher_top.post_route.power.rpt
summaryReport -nohtml -outfile aes_cipher_top.post_route.summary.rpt
