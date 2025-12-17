set_voltage_domain -name CORE -power vccd1 -ground vssd1
define_pdn_grid -name stdcell_grid -voltage_domains {CORE}
add_pdn_stripe -grid stdcell_grid -layer met4 -width 1.6 -pitch 40 -offset 20
add_pdn_stripe -grid stdcell_grid -layer met5 -width 1.6 -pitch 40 -offset 20
add_pdn_connect -grid stdcell_grid -layers {met4 met5}
