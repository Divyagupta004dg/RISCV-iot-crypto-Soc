# ================= DESIGN =================
set ::env(DESIGN_NAME) top
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# ================= CLOCK ==================
set ::env(CLOCK_PORT) clk
set ::env(CLOCK_PERIOD) 20.0

# ================= FLOORPLAN =================
set ::env(FP_CORE_UTIL) 25
set ::env(FP_ASPECT_RATIO) 1
set ::env(FP_CORE_MARGIN) 10

# ================= CRITICAL FIX =================
# COMPLETELY DISABLE IO PLACEMENT
set ::env(FP_IO_MODE) 0

# ================= PLACEMENT =================
set ::env(PL_TARGET_DENSITY) 0.55

# ================= ROUTING =================
set ::env(RT_CLOCK_METAL_LAYER) met4
set ::env(GLB_RT_MAXLAYER) 5

# ================= SAFETY =================
set ::env(DIODE_ON_PORTS) 0
# ================= CLOCK ROUTING FIX =================
set ::env(PNR_SDC_FILE) $::env(DESIGN_DIR)/top.sdc
set ::env(SIGNOFF_SDC_FILE) $::env(DESIGN_DIR)/top.sdc

set ::env(RT_CLOCK_METAL_LAYER) met3
set ::env(GRT_ALLOW_CONGESTION) 1
