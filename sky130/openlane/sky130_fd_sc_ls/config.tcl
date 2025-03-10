set current_folder [file dirname [file normalize [info script]]]
# Technology lib

#ifdef EF_FORMAT
set ::env(LIB_SYNTH) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/lib/$::env(STD_CELL_LIBRARY)/sky130_fd_sc_ls__tt_025C_1v80.lib"
set ::env(LIB_FASTEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/lib/$::env(STD_CELL_LIBRARY)/sky130_fd_sc_ls__ff_n40C_1v95.lib"
set ::env(LIB_SLOWEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/lib/$::env(STD_CELL_LIBRARY)/sky130_fd_sc_ls__ss_100C_1v60.lib"
#else (!EF_FORMAT)
set ::env(LIB_SYNTH) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/sky130_fd_sc_ls__tt_025C_1v80.lib"
set ::env(LIB_FASTEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/sky130_fd_sc_ls__ff_n40C_1v95.lib"
set ::env(LIB_SLOWEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/sky130_fd_sc_ls__ss_100C_1v60.lib"
#endif (!EF_FORMAT)

set ::env(LIB_TYPICAL) $::env(LIB_SYNTH)

# MUX4 mapping
set ::env(SYNTH_MUX4_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/mux4_map.v"

# MUX2 mapping
set ::env(SYNTH_MUX_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/mux2_map.v"

# Placement site for core cells
# This can be found in the technology lef
set ::env(PLACE_SITE) "unit"
set ::env(PLACE_SITE_WIDTH) 0.480
set ::env(PLACE_SITE_HEIGHT) 3.330

# welltap and endcap cells
set ::env(FP_WELLTAP_CELL) "sky130_fd_sc_ls__tapvpwrvgnd_1"
set ::env(FP_ENDCAP_CELL) "sky130_fd_sc_ls__decap_4"

# defaults (can be overridden by designs):
set ::env(SYNTH_DRIVING_CELL) "sky130_fd_sc_ls__inv_2"
#capacitance : 0.017653;
set ::env(SYNTH_DRIVING_CELL_PIN) "Y"
# update these
set ::env(SYNTH_CAP_LOAD) "46.690" ; # femtofarad _inv_16 pin A cap (https://github.com/google/skywater-pdk-libs-sky130_fd_sc_ls/blob/main/cells/inv/sky130_fd_sc_ls__inv_16__tt_100C_1v80.lib.json)
set ::env(SYNTH_MIN_BUF_PORT) "sky130_fd_sc_ls__buf_2 A X"
set ::env(SYNTH_TIEHI_PORT) "sky130_fd_sc_ls__conb_1 HI"
set ::env(SYNTH_TIELO_PORT) "sky130_fd_sc_ls__conb_1 LO"

# cts defaults
set ::env(CTS_ROOT_BUFFER) sky130_fd_sc_ls__clkbuf_16
set ::env(CELL_CLK_PORT) CLK

# Placement defaults
set ::env(PL_LIB) $::env(LIB_TYPICAL)

# Fillcell insertion
set ::env(FILL_CELL) "sky130_fd_sc_ls__fill_"
set ::env(DECAP_CELL) "sky130_fd_sc_ls__decap_"
set ::env(RE_BUFFER_CELL) "sky130_fd_sc_ls__buf_4"

# Diode insertaion
set ::env(DIODE_CELL) "sky130_fd_sc_ls__diode_2"
set ::env(FAKEDIODE_CELL) "sky130_fd_sc_ls__fakediode_2"
set ::env(DIODE_CELL_PIN) "DIODE"

set ::env(CELL_PAD) 4
set ::env(CELL_PAD_EXCLUDE) "$::env(STD_CELL_LIBRARY)__tap* $::env(STD_CELL_LIBRARY)__decap* $::env(STD_CELL_LIBRARY)__fill*"

# Clk Buffers info CTS data
set ::env(ROOT_CLK_BUFFER) $::env(STD_CELL_LIBRARY)__clkbuf_16
set ::env(CLK_BUFFER) $::env(STD_CELL_LIBRARY)__clkbuf_4
set ::env(CLK_BUFFER_INPUT) A
set ::env(CLK_BUFFER_OUTPUT) X
set ::env(CTS_CLK_BUFFER_LIST) "sky130_fd_sc_ls__clkbuf_8 sky130_fd_sc_ls__clkbuf_4 sky130_fd_sc_ls__clkbuf_2"
set ::env(CTS_MAX_CAP) 1.53169
set ::env(DEFAULT_MAX_TRAN) 0.75
set ::env(FP_PDN_RAIL_WIDTH) 0.48
