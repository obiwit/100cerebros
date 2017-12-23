set_operating_conditions 7_slow_1200mv_85c
set_time_format -decimal_places 3 -unit ns
create_clock -name clock_50 -period 100.000 [get_ports clock_50]
derive_pll_clocks
derive_clock_uncertainty
set_false_path -from [get_ports {key[*] sw[*]}] -to [get_clocks clock_50]
set_false_path -from [get_clocks clock_50] -to [get_ports {led*[*] hex*[*]}]

